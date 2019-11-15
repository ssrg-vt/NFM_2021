	.section	.text
	.align	32
	#Procedure 0x4017e0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_27
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
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
	mov	esi, OFFSET FLAT:label_32
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
	mov	esi, OFFSET FLAT:label_33
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
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
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
	mov	esi, OFFSET FLAT:label_16
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
	mov	esi, OFFSET FLAT:label_21
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
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_22
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_10
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_10
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_10:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	mov	ecx, OFFSET FLAT:label_18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_18
	mov	ecx, OFFSET FLAT:label_28
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_27:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
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
	#Procedure 0x401ac0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	r14, rsi
	mov	ebp, edi
	mov	edi, OFFSET FLAT:label_83
	call	getenv
	mov	r12, rax
	mov	eax, OFFSET FLAT:label_87
	movq	xmm0, rax
	pshufd	xmm0, xmm0, 0x44
	movdqa	xmmword ptr [rsp + 0x50], xmm0
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_40
	call	setlocale
	mov	edi, OFFSET FLAT:label_92
	mov	esi, OFFSET FLAT:label_93
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_92
	call	textdomain
	mov	edi, 3
	call	hard_locale
	mov	byte ptr [rip + hard_LC_COLLATE],  al
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [rip + skip_chars],  0
	mov	qword ptr [rip + skip_fields],  0
	mov	qword ptr [rip + check_chars],  -1
	mov	byte ptr [rip + output_first_repeated],  1
	mov	byte ptr [rip + output_unique],  1
	mov	byte ptr [rip + output_later_repeated],  0
	mov	byte ptr [rip + countmode],  1
	mov	dword ptr [rip + delimit_groups],  0
	mov	bl, 0xa
	xor	ecx, ecx
	mov	dword ptr [rsp + 0x18], 0
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_52
	nop	word ptr cs:[rax + rax]
.label_59:
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	mov	rax, qword ptr [r14 + rax*8]
	mov	ecx, r13d
	inc	r13d
	mov	qword ptr [rsp + rcx*8 + 0x50], rax
	mov	ecx, edx
	mov	bl, r15b
.label_52:
	mov	r15d, ebx
	test	r12, r12
	setne	al
	test	r13d, r13d
	setne	dl
	cmp	ecx, -1
	je	.label_82
	and	al, dl
	mov	edx, ecx
	jne	.label_133
	xor	ebx, ebx
	mov	edx, OFFSET FLAT:label_135
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	lea	esi, [rax + 1]
	cmp	esi, 0x81
	ja	.label_35
	mov	ecx, 0x7a
	mov	edx, 0xffffffff
	jmp	qword ptr [(rsi * 8) + label_42]
.label_503:
	cmp	dword ptr [rsp + 0x18], 2
	jne	.label_45
	mov	qword ptr [rip + skip_fields],  0
	xor	ecx, ecx
	jmp	.label_46
	nop	word ptr cs:[rax + rax]
.label_82:
	mov	edx, ecx
.label_133:
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, ebp
	jge	.label_55
	cmp	r13d, 2
	jne	.label_59
	jmp	.label_62
.label_45:
	mov	rcx, qword ptr [rip + skip_fields]
	movabs	rdx, 0x1999999999999999
	cmp	rcx, rdx
	ja	.label_54
.label_46:
	lea	rdx, [rcx + rcx*4]
	movsxd	rsi, eax
	lea	rdx, [rsi + rdx*2 - 0x30]
	cmp	rdx, rcx
	jae	.label_66
.label_54:
	mov	qword ptr [rip + skip_fields],  -1
	jmp	.label_98
.label_66:
	mov	qword ptr [rip + skip_fields],  rdx
.label_98:
	mov	dword ptr [rsp + 0x18], 1
	mov	ecx, eax
	mov	bl, r15b
	jmp	.label_52
.label_502:
	mov	rax, qword ptr [rip + optarg]
	cmp	byte ptr [rax], 0x2b
	jne	.label_79
	call	posix2_version
	add	eax, 0xfffcf250
	cmp	eax, 0x2b9
	jb	.label_79
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_40
	lea	rcx, [rsp + 0x38]
	call	xstrtoul
	test	eax, eax
	je	.label_88
.label_79:
	cmp	r13d, 2
	je	.label_91
	mov	rax, qword ptr [rip + optarg]
	mov	ecx, r13d
	inc	r13d
	mov	qword ptr [rsp + rcx*8 + 0x50], rax
.label_36:
	mov	ecx, 1
	mov	bl, r15b
	jmp	.label_52
.label_504:
	mov	byte ptr [rip + output_unique],  0
	mov	byte ptr [rip + output_later_repeated],  1
	mov	rsi, qword ptr [rip + optarg]
	xor	eax, eax
	test	rsi, rsi
	je	.label_95
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_100
	mov	edx, OFFSET FLAT:delimit_method_string
	mov	ecx, OFFSET FLAT:delimit_method_map
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + delimit_method_map]
.label_95:
	mov	dword ptr [rip + delimit_groups],  eax
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	mov	ecx, 0x44
	mov	bl, r15b
	jmp	.label_52
.label_505:
	mov	byte ptr [rip + countmode],  0
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	mov	ecx, 0x63
	mov	bl, r15b
	jmp	.label_52
.label_506:
	mov	byte ptr [rip + output_unique],  0
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	mov	ecx, 0x64
	mov	bl, r15b
	jmp	.label_52
.label_507:
	mov	rbx, qword ptr [rip + optarg]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_40
	mov	rdi, rbx
	lea	rcx, [rsp + 0x38]
	call	xstrtoul
	cmp	eax, 2
	jae	.label_127
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rip + skip_fields],  rax
	mov	dword ptr [rsp + 0x18], 2
	mov	ecx, 0x66
	mov	bl, r15b
	jmp	.label_52
.label_508:
	mov	byte ptr [rip + ignore_case],  1
	mov	ecx, 0x69
	mov	bl, r15b
	jmp	.label_52
.label_509:
	mov	rbx, qword ptr [rip + optarg]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_40
	mov	rdi, rbx
	lea	rcx, [rsp + 0x38]
	call	xstrtoul
	cmp	eax, 2
	jae	.label_50
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rip + skip_chars],  rax
	mov	ecx, 0x73
	mov	bl, r15b
	jmp	.label_52
.label_510:
	mov	byte ptr [rip + output_first_repeated],  0
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	mov	ecx, 0x75
	mov	bl, r15b
	jmp	.label_52
.label_511:
	mov	rbx, qword ptr [rip + optarg]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_40
	mov	rdi, rbx
	lea	rcx, [rsp + 0x38]
	call	xstrtoul
	cmp	eax, 2
	jae	.label_70
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rip + check_chars],  rax
	mov	ecx, 0x77
	mov	bl, r15b
	jmp	.label_52
.label_512:
	mov	rsi, qword ptr [rip + optarg]
	test	rsi, rsi
	je	.label_103
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_81
	mov	edx, OFFSET FLAT:grouping_method_string
	mov	ecx, OFFSET FLAT:grouping_method_map
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + grouping_method_map]
	mov	dword ptr [rip + grouping],  eax
	jmp	.label_85
.label_103:
	mov	dword ptr [rip + grouping],  3
.label_85:
	mov	ecx, 0x80
	mov	bl, r15b
	jmp	.label_52
.label_88:
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rip + skip_chars],  rax
	jmp	.label_36
.label_55:
	mov	ecx, dword ptr [rip + grouping]
	mov	rax, qword ptr [rsp + 0x10]
	test	al, al
	je	.label_94
	test	ecx, ecx
	jne	.label_96
.label_94:
	mov	al, byte ptr [rip + countmode]
	test	ecx, ecx
	je	.label_97
	mov	ecx, eax
	xor	cl, 1
	test	cl, 1
	jne	.label_99
.label_97:
	test	al, 1
	jne	.label_114
	cmp	byte ptr [rip + output_later_repeated],  1
	je	.label_104
.label_114:
	mov	rbp, qword ptr [rsp + 0x50]
	mov	rbx, qword ptr [rsp + 0x58]
	cmp	byte ptr [rbp], 0x2d
	jne	.label_106
	cmp	byte ptr [rbp + 1], 0
	je	.label_109
.label_106:
	mov	rdx, qword ptr [rip + stdin]
	mov	esi, OFFSET FLAT:label_110
	mov	rdi, rbp
	call	freopen_safer
	test	rax, rax
	je	.label_113
.label_109:
	cmp	byte ptr [rbx], 0x2d
	jne	.label_115
	cmp	byte ptr [rbx + 1], 0
	je	.label_116
.label_115:
	mov	rdx, qword ptr [rip + stdout]
	mov	esi, OFFSET FLAT:label_124
	mov	rdi, rbx
	call	freopen_safer
	test	rax, rax
	je	.label_123
.label_116:
	mov	qword ptr [rsp + 0x68], rbp
	mov	rdi, qword ptr [rip + stdin]
	mov	esi, 2
	call	fadvise
	lea	rbp, [rsp + 0x38]
	mov	rdi, rbp
	call	initbuffer
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	initbuffer
	cmp	byte ptr [rip + output_unique],  1
	jne	.label_130
	cmp	byte ptr [rip + output_first_repeated],  1
	jne	.label_130
	test	byte ptr [rip + countmode],  1
	je	.label_130
	movzx	eax, r15b
	mov	dword ptr [rsp + 8], eax
	lea	rbp, [rsp + 0x38]
	mov	dword ptr [rsp + 0x20], 0
	movsx	eax, r15b
	mov	dword ptr [rsp + 0x10], eax
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_137
.label_130:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rsi, qword ptr [rip + stdin]
	movsx	edx, r15b
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	mov	dword ptr [rsp + 0x18], edx
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_53
	mov	rdi, rbx
	call	find_field
	mov	r14, rax
	mov	r13, qword ptr [rsp + 0x78]
	dec	r13
	sub	r13, r14
	add	r13, qword ptr [rsp + 0x80]
	movzx	eax, r15b
	mov	dword ptr [rsp + 0x34], eax
	mov	al, 1
	xor	ebp, ebp
	jmp	.label_58
	nop	word ptr cs:[rax + rax]
.label_76:
	test	bl, bl
	mov	eax, 0
	cmovne	rbp, rax
	mov	eax, ecx
	mov	rbx, r12
.label_58:
	mov	r12, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x10], r13
	mov	qword ptr [rsp + 0x28], r14
	mov	dword ptr [rsp + 8], eax
	and	al, 1
	mov	byte ptr [rsp + 0xf], al
	jmp	.label_39
.label_69:
	mov	esi, dword ptr [rsp + 0x34]
	call	__overflow
	jmp	.label_119
	nop	
.label_39:
	mov	rsi, qword ptr [rip + stdin]
	test	byte ptr [rsi], 0x10
	jne	.label_68
	mov	rdi, r12
	mov	edx, dword ptr [rsp + 0x18]
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_86
	mov	rdi, r12
	call	find_field
	mov	r14, rax
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	sub	rcx, r14
	lea	r13, [rax + rcx - 1]
	mov	rcx, qword ptr [rip + check_chars]
	cmp	rcx, r13
	mov	rdx, r13
	cmovb	rdx, rcx
	mov	rax, qword ptr [rsp + 0x10]
	cmp	rcx, rax
	cmovae	rcx, rax
	cmp	byte ptr [rip + ignore_case],  1
	jne	.label_89
	mov	al, 1
	cmp	rdx, rcx
	jne	.label_90
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x28]
	call	memcasecmp
	jmp	.label_101
	nop	
.label_89:
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	je	.label_84
	mov	rdi, r14
	mov	rsi, rdx
	mov	rdx, qword ptr [rsp + 0x28]
	call	xmemcoll
	jmp	.label_101
.label_84:
	mov	al, 1
	cmp	rdx, rcx
	jne	.label_90
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x28]
	call	memcmp
	nop	
.label_101:
	test	eax, eax
	setne	al
.label_90:
	movzx	ecx, al
	xor	rcx, 1
	add	rbp, rcx
	xor	ecx, ecx
	cmp	rbp, -1
	sete	cl
	sub	rbp, rcx
	mov	ecx, dword ptr [rip + delimit_groups]
	test	ecx, ecx
	je	.label_112
	test	al, al
	jne	.label_117
	cmp	rbp, 1
	jne	.label_119
	cmp	ecx, 1
	je	.label_121
	cmp	ecx, 2
	jne	.label_119
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_119
.label_121:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_69
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r15b
	jmp	.label_119
	nop	word ptr cs:[rax + rax]
.label_112:
	mov	bl, 1
	test	al, al
	jne	.label_132
.label_119:
	cmp	byte ptr [rip + output_later_repeated],  1
	jne	.label_39
	xor	ebx, ebx
.label_132:
	mov	ecx, dword ptr [rsp + 8]
	jmp	.label_136
.label_117:
	test	rbp, rbp
	mov	ecx, dword ptr [rsp + 8]
	je	.label_138
	xor	ecx, ecx
.label_138:
	mov	bl, 1
.label_136:
	test	rbp, rbp
	je	.label_38
	test	bl, bl
	je	.label_41
	mov	al, byte ptr [rip + output_first_repeated]
	jmp	.label_64
.label_38:
	mov	al, byte ptr [rip + output_unique]
.label_64:
	test	al, al
	je	.label_76
	jmp	.label_61
.label_41:
	cmp	byte ptr [rip + output_later_repeated],  1
	jne	.label_76
.label_61:
	mov	dword ptr [rsp + 8], ecx
	mov	al, byte ptr [rip + countmode]
	test	al, al
	jne	.label_105
	lea	rdx, [rbp + 1]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_56
	xor	eax, eax
	call	__printf_chk
.label_105:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
	mov	ecx, dword ptr [rsp + 8]
	jmp	.label_76
.label_86:
	mov	rax, qword ptr [rip + stdin]
	test	byte ptr [rax], 0x20
	jne	.label_53
.label_68:
	test	rbp, rbp
	je	.label_73
	cmp	byte ptr [rip + output_first_repeated],  1
	je	.label_74
	jmp	.label_53
.label_73:
	mov	al, byte ptr [rip + output_unique]
	test	al, al
	je	.label_53
.label_74:
	mov	al, byte ptr [rip + countmode]
	test	al, al
	jne	.label_80
	inc	rbp
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_56
	xor	eax, eax
	mov	rdx, rbp
	call	__printf_chk
.label_80:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
	jmp	.label_53
.label_65:
	mov	rdx, qword ptr [rbp + 8]
	mov	rdi, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
	mov	al, 1
	mov	dword ptr [rsp + 0x20], eax
	mov	r12, r14
	mov	qword ptr [rsp + 0x28], rbx
	mov	rbx, rbp
	mov	rbp, qword ptr [rsp + 0x18]
.label_137:
	mov	qword ptr [rsp + 0x18], rbx
	jmp	.label_63
.label_77:
	mov	esi, dword ptr [rsp + 8]
	call	__overflow
	mov	eax, dword ptr [rip + grouping]
	jmp	.label_37
	nop	
.label_63:
	mov	rsi, qword ptr [rip + stdin]
	test	byte ptr [rsi], 0x10
	jne	.label_47
	mov	rdi, rbp
	mov	edx, dword ptr [rsp + 0x10]
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_47
	mov	rdi, rbp
	call	find_field
	mov	rbx, rax
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rbp + 0x10]
	sub	rcx, rbx
	lea	r14, [rax + rcx - 1]
	mov	r13b, 1
	mov	rax, qword ptr [rsp + 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_111
	mov	rcx, qword ptr [rip + check_chars]
	cmp	rcx, r14
	mov	rdx, r14
	cmovb	rdx, rcx
	cmp	rcx, r12
	cmovae	rcx, r12
	cmp	byte ptr [rip + ignore_case],  1
	jne	.label_134
	cmp	rdx, rcx
	jne	.label_111
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x28]
	call	memcasecmp
	jmp	.label_71
	nop	word ptr cs:[rax + rax]
.label_134:
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	je	.label_128
	mov	rdi, rbx
	mov	rsi, rdx
	mov	rdx, qword ptr [rsp + 0x28]
	call	xmemcoll
	jmp	.label_71
.label_128:
	cmp	rdx, rcx
	jne	.label_111
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x28]
	call	memcmp
	nop	dword ptr [rax]
.label_71:
	test	eax, eax
	setne	r13b
.label_111:
	mov	eax, dword ptr [rip + grouping]
	test	r13b, r13b
	je	.label_37
	test	eax, eax
	je	.label_37
	cmp	eax, 1
	je	.label_43
	cmp	eax, 4
	je	.label_43
	mov	ecx, dword ptr [rsp + 0x20]
	test	cl, cl
	je	.label_37
	mov	ecx, eax
	or	ecx, 1
	cmp	ecx, 3
	jne	.label_37
	nop	word ptr cs:[rax + rax]
.label_43:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_77
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], r15b
.label_37:
	test	eax, eax
	setne	al
	or	r13b, al
	cmp	r13b, 1
	jne	.label_63
	jmp	.label_65
.label_47:
	mov	eax, dword ptr [rip + grouping]
	cmp	eax, 4
	je	.label_67
	cmp	eax, 2
	jne	.label_53
.label_67:
	mov	eax, dword ptr [rsp + 0x20]
	test	al, al
	je	.label_53
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_72
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r15b
.label_53:
	mov	rdi, qword ptr [rip + stdin]
	test	byte ptr [rdi], 0x20
	jne	.label_78
	call	rpl_fclose
	test	eax, eax
	jne	.label_78
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	xor	eax, eax
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_72:
	mov	esi, dword ptr [rsp + 8]
	call	__overflow
	jmp	.label_53
.label_62:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r14 + rax*8]
.label_44:
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_35:
	cmp	eax, 0xffffff7d
	je	.label_102
	cmp	eax, 0xffffff7e
	jne	.label_120
	xor	edi, edi
	call	usage
.label_120:
	mov	edi, 1
	call	usage
.label_102:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_18
	mov	edx, OFFSET FLAT:label_22
	mov	r8d, OFFSET FLAT:label_107
	mov	r9d, OFFSET FLAT:label_108
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_78:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x68]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_127:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
	jmp	.label_126
.label_50:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
	jmp	.label_126
.label_70:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_131
.label_126:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 1
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_122
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_91:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	jmp	.label_44
.label_96:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	jmp	.label_49
.label_99:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
	jmp	.label_49
.label_113:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_60
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_123:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_60
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_104:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
.label_49:
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
	.align	32
	#Procedure 0x4026d0

	.globl find_field
	.type find_field, @function
find_field:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r15, qword ptr [rdi + 8]
	mov	r14, qword ptr [rdi + 0x10]
	xor	ebx, ebx
	dec	r15
	je	.label_141
	mov	r12, qword ptr [rip + skip_fields]
	test	r12, r12
	je	.label_141
	xor	ebx, ebx
	xor	r13d, r13d
	jmp	.label_144
	nop	dword ptr [rax + rax]
.label_142:
	inc	rbx
.label_144:
	cmp	rbx, r15
	jae	.label_139
	movzx	edi, byte ptr [r14 + rbx]
	call	field_sep
	test	al, al
	jne	.label_142
	jmp	.label_139
	nop	dword ptr [rax + rax]
.label_140:
	inc	rbx
.label_139:
	cmp	rbx, r15
	jae	.label_143
	movzx	edi, byte ptr [r14 + rbx]
	call	field_sep
	test	al, al
	je	.label_140
.label_143:
	cmp	r15, rbx
	jbe	.label_141
	inc	r13
	cmp	r13, r12
	jb	.label_144
.label_141:
	mov	rax, qword ptr [rip + skip_chars]
	sub	r15, rbx
	cmp	rax, r15
	cmovb	r15, rax
	add	r15, rbx
	add	r14, r15
	mov	rax, r14
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402770

	.globl field_sep
	.type field_sep, @function
field_sep:
	push	rbx
	mov	ebx, edi
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	cmp	bl, 0xa
	sete	cl
	mov	al, byte ptr [rax + rbx*2]
	and	al, 1
	or	al, cl
	pop	rbx
	ret	
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402790

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027a0

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
	je	.label_151
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_145:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_149
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_147
	cmp	qword ptr [rsp + 8], -1
	je	.label_148
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_150
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_149
.label_150:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_149
.label_148:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_149:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_145
	jmp	.label_146
.label_151:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_146:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_147:
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
	#Procedure 0x4028a0

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
	je	.label_152
	mov	esi, OFFSET FLAT:label_153
	jmp	.label_154
.label_152:
	mov	esi, OFFSET FLAT:label_155
.label_154:
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
	#Procedure 0x402910

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
	mov	r12, rsi
	mov	rbp, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_160
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_157
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_162:
	test	r15, r15
	je	.label_156
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_161
.label_156:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_158
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_164
	nop	word ptr cs:[rax + rax]
.label_161:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_163
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_164:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_162
.label_157:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_159
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_159:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a40

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
	jns	.label_165
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
.label_165:
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
	#Procedure 0x402ab0
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
	je	.label_166
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_167:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_166
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_167
.label_166:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b20
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b30
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b40

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_172
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_169
	cmp	dword ptr [rbp], 0x20
	jne	.label_169
.label_172:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_171
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_169:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_168
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_170
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_60
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_171:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_170:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_122
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
	#Procedure 0x402c00
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c10

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_173
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_173:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402c30

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	call	fileno
	xor	r12d, r12d
	test	eax, eax
	je	.label_179
	cmp	eax, 1
	je	.label_182
	cmp	eax, 2
	je	.label_184
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_184:
	mov	r15b, r12b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r12b
	jmp	.label_177
.label_179:
	xor	r15d, r15d
	xor	r13d, r13d
	jmp	.label_181
.label_182:
	xor	r15d, r15d
.label_177:
	xor	r13d, r13d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_185
	mov	edi, OFFSET FLAT:label_178
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_185
	mov	r13b, 1
	jmp	.label_187
.label_185:
	test	r12b, r12b
	je	.label_176
	mov	edi, OFFSET FLAT:label_178
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_174
.label_176:
	test	r15b, r15b
	je	.label_181
	mov	edi, OFFSET FLAT:label_178
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 2
	jne	.label_187
.label_181:
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_175
.label_174:
	mov	r12b, 1
.label_187:
	xor	r14d, r14d
	test	eax, eax
	js	.label_175
	mov	edi, eax
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_175:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	r15b, r15b
	je	.label_186
	mov	edi, 2
	call	close
.label_186:
	test	r12b, r12b
	je	.label_188
	mov	edi, 1
	call	close
.label_188:
	test	r13b, r13b
	je	.label_180
	xor	edi, edi
	call	close
.label_180:
	test	r14, r14
	jne	.label_183
	mov	dword ptr [rbx], ebp
.label_183:
	mov	rax, r14
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
	#Procedure 0x402d80

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_190
	cmp	byte ptr [rax], 0x43
	jne	.label_192
	cmp	byte ptr [rax + 1], 0
	je	.label_189
.label_192:
	mov	esi, OFFSET FLAT:label_191
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_190
.label_189:
	xor	ebx, ebx
.label_190:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402dc0

	.globl initbuffer
	.type initbuffer, @function
initbuffer:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 0x10], 0
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402dd0
	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:

	mov	edx, 0xa
	jmp	readlinebuffer_delim
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402de0

	.globl readlinebuffer_delim
	.type readlinebuffer_delim, @function
readlinebuffer_delim:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rsi
	mov	r15, rdi
	xor	eax, eax
	test	byte ptr [rbp], 0x10
	jne	.label_193
	mov	r12, qword ptr [r15 + 0x10]
	mov	r14, qword ptr [r15]
	add	r14, r12
	mov	dword ptr [rsp + 4], edx
	movsx	edx, dl
	mov	r13, r12
	mov	dword ptr [rsp], edx
	nop	word ptr cs:[rax + rax]
.label_198:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_197
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_195:
	cmp	r13, r14
	jne	.label_196
	mov	r13, qword ptr [r15]
	mov	rdi, r12
	mov	rsi, r15
	call	x2realloc
	mov	edx, dword ptr [rsp]
	mov	r12, rax
	add	r13, r12
	mov	qword ptr [r15 + 0x10], r12
	mov	r14, r12
	add	r14, qword ptr [r15]
.label_196:
	mov	byte ptr [r13], bl
	inc	r13
	cmp	ebx, edx
	jne	.label_198
	jmp	.label_194
.label_197:
	mov	rdi, rbp
	call	__uflow
	mov	edx, dword ptr [rsp]
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_195
	cmp	r13, r12
	mov	ecx, dword ptr [rsp + 4]
	mov	eax, 0
	je	.label_193
	test	byte ptr [rbp], 0x20
	jne	.label_193
	cmp	byte ptr [r13 - 1], cl
	mov	ebx, edx
	jne	.label_195
.label_194:
	sub	r13, r12
	mov	qword ptr [r15 + 8], r13
	mov	rax, r15
.label_193:
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
	.align	32
	#Procedure 0x402eb0
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402ec0

	.globl memcasecmp
	.type memcasecmp, @function
memcasecmp:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	xor	eax, eax
	test	rbx, rbx
	je	.label_199
	call	__ctype_toupper_loc
	mov	rcx, qword ptr [rax]
	xor	edx, edx
	nop	
.label_200:
	movzx	eax, byte ptr [r15 + rdx]
	mov	eax, dword ptr [rcx + rax*4]
	movzx	esi, byte ptr [r14 + rdx]
	sub	eax, dword ptr [rcx + rsi*4]
	jne	.label_199
	inc	rdx
	xor	eax, eax
	cmp	rdx, rbx
	jb	.label_200
.label_199:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f10

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rax
	mov	edi, OFFSET FLAT:label_201
	call	getenv
	mov	ecx, 0x31069
	test	rax, rax
	je	.label_202
	mov	ecx, 0x31069
	cmp	byte ptr [rax], 0
	je	.label_202
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rax
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	mov	ecx, 0x31069
	cmove	rcx, rax
.label_202:
	cmp	rcx, 0x7fffffff
	mov	edx, 0x7fffffff
	cmovl	edx, ecx
	cmp	rcx, -0x80000000
	mov	eax, 0x80000000
	cmovge	eax, edx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f70

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_205
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_207
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_203
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_207
	mov	esi, OFFSET FLAT:label_208
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_204
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_204:
	mov	rbx, r14
.label_207:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_205:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_206
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403020
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
	#Procedure 0x403060
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
	#Procedure 0x403070
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
	#Procedure 0x403080
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
	#Procedure 0x4030c0
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
	#Procedure 0x4030e0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_209
	test	rdx, rdx
	je	.label_209
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_209:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403110
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
	.align	32
	#Procedure 0x403190

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
.label_231:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_229
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_236]
.label_574:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_243
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_248
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_575:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_232
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_232
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_273:
	cmp	r14, r11
	jae	.label_274
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_274:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_273
.label_232:
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
	jmp	.label_283
.label_567:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_283
.label_570:
	mov	al, 1
.label_568:
	mov	r12b, 1
.label_571:
	test	r12b, 1
	mov	cl, 1
	je	.label_294
	mov	ecx, eax
.label_294:
	mov	al, cl
.label_569:
	test	r12b, 1
	jne	.label_291
	test	r11, r11
	je	.label_292
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_292:
	mov	r14d, 1
	jmp	.label_295
.label_291:
	xor	r14d, r14d
.label_295:
	mov	ecx, OFFSET FLAT:label_248
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_283
.label_572:
	test	r12b, 1
	jne	.label_306
	test	r11, r11
	je	.label_309
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_309:
	mov	r14d, 1
	jmp	.label_313
.label_573:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_314
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_283
.label_306:
	xor	r14d, r14d
.label_313:
	mov	eax, OFFSET FLAT:label_314
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_283:
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
	jmp	.label_330
	nop	dword ptr [rax]
.label_275:
	inc	rsi
.label_330:
	cmp	rbp, -1
	je	.label_253
	cmp	rsi, rbp
	jne	.label_289
	jmp	.label_255
	nop	word ptr cs:[rax + rax]
.label_253:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_259
.label_289:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_223
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_239
	cmp	rbp, -1
	jne	.label_239
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
.label_239:
	cmp	rbx, rbp
	jbe	.label_280
.label_223:
	xor	r8d, r8d
.label_254:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_282
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_285]
.label_526:
	test	rsi, rsi
	jne	.label_222
	jmp	.label_288
	nop	word ptr cs:[rax + rax]
.label_280:
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
	jne	.label_298
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_254
	jmp	.label_211
.label_298:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_254
.label_530:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_246
	test	rsi, rsi
	jne	.label_321
	cmp	rbp, 1
	je	.label_288
	xor	r13d, r13d
	jmp	.label_228
.label_519:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_327
	cmp	byte ptr [rsp + 6], 0
	jne	.label_305
	cmp	r12d, 2
	jne	.label_210
	mov	eax, r9d
	and	al, 1
	jne	.label_210
	cmp	r14, r11
	jae	.label_213
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_213:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_219
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_219:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_277
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_277:
	add	r14, 3
	mov	r9b, 1
.label_210:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_308
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_308:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_240
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_240
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_240
	cmp	r14, r11
	jae	.label_234
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_234:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_324
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_324:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_228
.label_520:
	mov	bl, 0x62
	jmp	.label_263
.label_521:
	mov	cl, 0x74
	jmp	.label_266
.label_522:
	mov	bl, 0x76
	jmp	.label_263
.label_523:
	mov	bl, 0x66
	jmp	.label_263
.label_524:
	mov	cl, 0x72
	jmp	.label_266
.label_527:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_271
	cmp	byte ptr [rsp + 6], 0
	jne	.label_241
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
	jae	.label_278
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_278:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_287
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_287:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_290
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_290:
	add	r14, 3
	xor	r9d, r9d
.label_271:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_228
.label_528:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_296
	cmp	r12d, 2
	jne	.label_222
	cmp	byte ptr [rsp + 6], 0
	je	.label_222
	jmp	.label_241
.label_529:
	cmp	r12d, 2
	jne	.label_307
	cmp	byte ptr [rsp + 6], 0
	jne	.label_241
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_264
.label_282:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_318
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
.label_217:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_225
	test	r8b, r8b
	je	.label_225
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_228
.label_246:
	test	rsi, rsi
	jne	.label_233
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_233
.label_288:
	mov	dl, 1
.label_525:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_241
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_228:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_247
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_265
	jmp	.label_252
	nop	word ptr cs:[rax + rax]
.label_247:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_252
.label_265:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_257
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_264
	jmp	.label_269
	nop	dword ptr [rax]
.label_252:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_269
	jmp	.label_264
.label_257:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_269
.label_327:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_275
	xor	r15d, r15d
	jmp	.label_222
.label_307:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_266
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_264
.label_266:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_241
.label_263:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_228
	nop	word ptr cs:[rax + rax]
.label_269:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_305
	cmp	r12d, 2
	jne	.label_293
	mov	eax, r9d
	and	al, 1
	jne	.label_293
	cmp	r14, r11
	jae	.label_218
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_218:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_299
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_299:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_272
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_272:
	add	r14, 3
	mov	r9b, 1
.label_293:
	cmp	r14, r11
	jae	.label_311
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_311:
	inc	r14
	jmp	.label_315
.label_318:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_319
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_319:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_270:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_216
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_221
	cmp	rbp, -2
	je	.label_227
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_303
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_310:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_260
	bt	rsi, rdx
	jb	.label_251
.label_260:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_310
.label_303:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_328
	xor	r13d, r13d
.label_328:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_270
	jmp	.label_217
.label_240:
	xor	r13d, r13d
	jmp	.label_228
.label_233:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_228
.label_296:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_222
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_222
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_222
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_244
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_267
	cmp	byte ptr [rsp + 6], 0
	jne	.label_320
	cmp	r14, r11
	jae	.label_304
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_304:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_238
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_238:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_297
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_297:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_214
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_214:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_228
.label_222:
	xor	eax, eax
.label_321:
	xor	r13d, r13d
	jmp	.label_228
.label_225:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_317
	nop	word ptr cs:[rax + rax]
.label_276:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_317:
	test	r8b, r8b
	je	.label_322
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_323
	cmp	r14, r11
	jae	.label_325
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_325:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_323
	nop	dword ptr [rax]
.label_322:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_211
	cmp	r12d, 2
	jne	.label_215
	mov	eax, r9d
	and	al, 1
	jne	.label_215
	cmp	r14, r11
	jae	.label_220
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_220:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_249
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_249:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_230
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_230:
	add	r14, 3
	mov	r9b, 1
.label_215:
	cmp	r14, r11
	jae	.label_329
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_329:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_235
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_235:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_250
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_250:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_323:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_264
	test	r9b, 1
	je	.label_261
	mov	ebx, eax
	and	bl, 1
	jne	.label_261
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_268
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_268:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_237
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_237:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_261:
	cmp	r14, r11
	jae	.label_276
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_276
	nop	word ptr cs:[rax + rax]
.label_264:
	test	r9b, 1
	je	.label_284
	and	al, 1
	jne	.label_284
	cmp	r14, r11
	jae	.label_286
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_286:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_279
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_279:
	add	r14, 2
	xor	r9d, r9d
.label_284:
	mov	ebx, r15d
.label_315:
	cmp	r14, r11
	jae	.label_212
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_212:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_275
.label_221:
	xor	r13d, r13d
.label_216:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_217
.label_227:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_302
	mov	rsi, qword ptr [rsp + 0x58]
.label_316:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_312
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_316
	xor	r13d, r13d
	jmp	.label_217
.label_302:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_217
.label_312:
	xor	r13d, r13d
	jmp	.label_217
.label_244:
	xor	r13d, r13d
	jmp	.label_228
.label_267:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_228
	nop	dword ptr [rax + rax]
.label_255:
	mov	rcx, rsi
.label_259:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_326
	or	al, dl
	je	.label_331
.label_326:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_224
	or	al, dl
	jne	.label_224
	test	r10b, 1
	jne	.label_226
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_224
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_231
.label_224:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_242
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_245
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_245
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_258:
	cmp	r14, r11
	jae	.label_256
	mov	byte ptr [rcx + r14], al
.label_256:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_258
	jmp	.label_245
.label_305:
	mov	qword ptr [rsp + 0x20], rbp
.label_211:
	mov	rdx, rdi
	jmp	.label_262
.label_241:
	mov	qword ptr [rsp + 0x20], rbp
.label_251:
	mov	rdx, rdi
	mov	eax, 2
.label_281:
	mov	qword ptr [rsp + 0x38], rax
.label_262:
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
.label_300:
	mov	r14, rax
.label_301:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_331:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_262
.label_226:
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
	jmp	.label_300
.label_242:
	mov	rcx, qword ptr [rsp + 8]
.label_245:
	cmp	r14, r11
	jae	.label_301
	mov	byte ptr [rcx + r14], 0
	jmp	.label_301
.label_320:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_281
.label_229:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fa0
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
	.align	32
	#Procedure 0x404070
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
	je	.label_332
	mov	qword ptr [rax], rbx
.label_332:
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
	#Procedure 0x404160
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_333
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_335:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_335
.label_333:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_337
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_336], OFFSET FLAT:slot0
.label_337:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_334
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_334:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404200
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x404210

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
	js	.label_341
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_344
	cmp	r12d, 0x7fffffff
	je	.label_339
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
	jne	.label_342
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_342:
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
.label_344:
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
	jbe	.label_340
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_343
.label_340:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_338
	mov	rdi, r14
	call	free
.label_338:
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
.label_343:
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
.label_341:
	call	abort
.label_339:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4043d0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043e0
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
	#Procedure 0x404400
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
	#Procedure 0x404420

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
	je	.label_345
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
.label_345:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404490

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
	je	.label_346
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
.label_346:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404500

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
	je	.label_347
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
.label_347:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404570
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
	je	.label_348
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
.label_348:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045e0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_349]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_350]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_351]
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
	.align	32
	#Procedure 0x404650
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_349]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_350]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_351]
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
	.align	32
	#Procedure 0x4046c0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_349]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_350]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_351]
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
	#Procedure 0x404720
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_349]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_350]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_351]
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
	#Procedure 0x404780

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
	je	.label_352
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
.label_352:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404820
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_349]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_350]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_351]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_353
	test	rdx, rdx
	je	.label_353
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_353:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x404890
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_349]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_350]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_351]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_354
	test	rdx, rdx
	je	.label_354
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_354:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404900
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_349]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_350]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_351]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_355
	test	rsi, rsi
	je	.label_355
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_355:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404970
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_349]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_350]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_351]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_356
	test	rsi, rsi
	je	.label_356
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
.label_356:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4049e0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049f0
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
	#Procedure 0x404a10

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a30

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
	#Procedure 0x404a50

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
	jne	.label_361
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_365
	cmp	ecx, 0x55
	jne	.label_357
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_357
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_357
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_357
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_357
	cmp	byte ptr [rax + 5], 0
	jne	.label_357
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_363
	mov	eax, OFFSET FLAT:label_364
	jmp	.label_360
.label_365:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_357
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_357
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_357
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_357
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_357
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_357
	cmp	byte ptr [rax + 7], 0
	je	.label_362
.label_357:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_314
	mov	eax, OFFSET FLAT:label_248
.label_360:
	cmove	rax, rcx
.label_361:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_362:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_358
	mov	eax, OFFSET FLAT:label_359
	jmp	.label_360
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b20

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
	je	.label_378
	mov	edx, OFFSET FLAT:label_369
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_375
.label_378:
	mov	edx, OFFSET FLAT:label_376
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_375:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_380
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
	mov	esi, OFFSET FLAT:label_377
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_381
	jmp	qword ptr [(r12 * 8) + label_382]
.label_577:
	add	rsp, 8
	jmp	.label_368
.label_381:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_372
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
	jmp	.label_368
.label_578:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_367
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
.label_579:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_373
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
.label_580:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
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
.label_581:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_384
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
	jmp	.label_368
.label_582:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_383
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
	jmp	.label_368
.label_583:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_366
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
	jmp	.label_368
.label_584:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_371
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
	jmp	.label_368
.label_586:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_374
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
	jmp	.label_368
.label_585:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_379
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
.label_368:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e80
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_385:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_385
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404eb0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_396
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_398
.label_396:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_398:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_386
	cmp	r10d, 0x29
	jae	.label_395
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_397
.label_395:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_397:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_386
	cmp	r10d, 0x29
	jae	.label_393
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_394
.label_393:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_394:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_386
	cmp	r10d, 0x29
	jae	.label_391
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_392
.label_391:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_392:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_386
	cmp	r10d, 0x29
	jae	.label_389
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_390
.label_389:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_390:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_386
	cmp	r10d, 0x29
	jae	.label_387
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_388
.label_387:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_388:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_386
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_386
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_386
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_386
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_386:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050a0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_399
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_399:
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
	#Procedure 0x405130
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_400
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_401
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_403
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_22
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_402
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051b0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_404
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_405
	test	rax, rax
	je	.label_404
.label_405:
	pop	rbx
	ret	
.label_404:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051f0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_406
	test	rax, rax
	je	.label_407
.label_406:
	pop	rbx
	ret	
.label_407:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405210
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_408
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_409
	test	rbx, rbx
	jne	.label_409
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_409:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_410
	test	rax, rax
	je	.label_408
.label_410:
	pop	rbx
	ret	
.label_408:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405260

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_411
	test	rbx, rbx
	jne	.label_411
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_411:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_413
	test	rax, rax
	je	.label_412
.label_413:
	pop	rbx
	ret	
.label_412:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405290
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_417
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_419
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_414
.label_417:
	test	rcx, rcx
	jne	.label_420
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_420:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_415
.label_414:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_416
	test	rbx, rbx
	jne	.label_416
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_416:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_418
	test	rax, rax
	je	.label_419
.label_418:
	pop	rbx
	ret	
.label_419:
	call	xalloc_die
.label_415:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405330
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_421
	test	rax, rax
	je	.label_422
.label_421:
	pop	rbx
	ret	
.label_422:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405350

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_425
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_427
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_424
	call	free
	xor	eax, eax
	jmp	.label_426
.label_425:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_423
	mov	qword ptr [rsi], rbx
.label_424:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_426
	test	rax, rax
	je	.label_423
.label_426:
	pop	rbx
	ret	
.label_423:
	call	xalloc_die
.label_427:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053c0
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
	je	.label_429
	test	r14, r14
	je	.label_428
.label_429:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_428:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405400
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_430
	call	rpl_calloc
	test	rax, rax
	je	.label_430
	pop	rcx
	ret	
.label_430:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405430

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
	je	.label_431
	test	r15, r15
	je	.label_432
.label_431:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_432:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405470
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
	je	.label_434
	test	r15, r15
	je	.label_433
.label_434:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_433:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054c0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_435
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_60
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4054f0

	.globl xmemcoll
	.type xmemcoll, @function
xmemcoll:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	rbx, rdi
	call	memcoll
	mov	ebp, eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	test	edi, edi
	je	.label_436
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, r14
	call	collate_error
.label_436:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405540

	.globl collate_error
	.type collate_error, @function
collate_error:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], r8
	mov	rbx, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	ebp, edi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_437
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_438
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	r14d, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_439
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r13
	mov	rcx, r12
	call	quotearg_n_style_mem
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 8
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp]
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, r14d
	mov	rdx, r15
	mov	rcx, rbp
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405610
	.globl xmemcoll0
	.type xmemcoll0, @function
xmemcoll0:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	call	memcoll0
	mov	ebp, eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	test	edi, edi
	je	.label_440
	dec	rbx
	dec	r15
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8, r15
	call	collate_error
.label_440:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405660

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
	jae	.label_453
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_448:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_448
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_441
	mov	rdi, rbx
	mov	edx, r12d
	mov	qword ptr [rsp + 8], rsi
	call	strtoul
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	r12, qword ptr [rax]
	cmp	r12, rbx
	je	.label_458
	mov	eax, dword ptr [r15]
	xor	ebx, ebx
	test	eax, eax
	je	.label_461
	cmp	eax, 0x22
	jne	.label_441
	mov	ebx, 1
.label_461:
	test	r14, r14
	jne	.label_443
	jmp	.label_444
.label_458:
	test	r14, r14
	je	.label_441
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_441
	mov	rdi, r14
	call	strchr
	xor	ebx, ebx
	mov	ebp, 1
	test	rax, rax
	je	.label_441
.label_443:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_444
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_452
	mov	r15d, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_445
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_445
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_445
	movsx	eax, byte ptr [r12 + 1]
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_446
	cmp	eax, 0x44
	je	.label_446
	cmp	eax, 0x69
	jne	.label_445
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	r15, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_445
.label_446:
	mov	r15d, 2
	mov	esi, 0x3e8
.label_445:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_452
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_460]
.label_591:
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
	jmp	.label_442
.label_452:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	jmp	.label_450
.label_592:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_454
.label_593:
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
	jmp	.label_442
.label_595:
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
	jmp	.label_442
.label_589:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x36
	setne	al
	shl	rbp, 0xa
	jmp	.label_449
.label_590:
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
.label_442:
	and	dl, 1
	movzx	eax, dl
	jmp	.label_451
.label_594:
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
	jmp	.label_451
.label_596:
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
	jmp	.label_459
.label_597:
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
.label_459:
	movzx	eax, dl
.label_454:
	and	eax, 1
.label_451:
	mov	rbp, rsi
.label_447:
	or	eax, ebx
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rcx
	lea	ebx, [rax + 2]
	cmp	byte ptr [r12 + r15], 0
	cmove	ebx, eax
.label_444:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_450:
	mov	r13d, ebx
.label_441:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_598:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x37
	setne	al
	shl	rbp, 9
.label_449:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	rbp, rdx
	jmp	.label_447
.label_599:
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_447
.label_453:
	mov	edi, OFFSET FLAT:label_455
	mov	esi, OFFSET FLAT:label_456
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_457
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c80

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_462
	test	rsi, rsi
	mov	ecx, 1
	je	.label_463
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_463
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_462:
	mov	ecx, 1
.label_463:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cd0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_464
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_466
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_464
.label_466:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_464
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_465
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_465:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_464:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d50

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_467
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_467
	test	byte ptr [rbx + 1], 1
	je	.label_467
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_467:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d90

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	call	freopen
	mov	rbx, rax
	test	r15, r15
	je	.label_469
	test	rbx, rbx
	je	.label_469
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_469
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_469
	mov	edi, OFFSET FLAT:label_178
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_468
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_469
.label_468:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	freopen
.label_469:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e30

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
	jne	.label_470
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_470
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_471
.label_470:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_471:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_472
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_472:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405ea0

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
	je	.label_473
	cmp	r15, -2
	jb	.label_473
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_473
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_473:
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
	#Procedure 0x405f00

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
	jne	.label_475
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_474
	test	cl, cl
	jne	.label_474
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_474
.label_475:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_474
	call	__errno_location
	mov	dword ptr [rax], 0
.label_474:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405f60

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
	mov	eax, OFFSET FLAT:label_476
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f90

	.globl memcoll
	.type memcoll, @function
memcoll:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	cmp	rbp, rbx
	jne	.label_478
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	je	.label_482
.label_478:
	mov	al, byte ptr [r12 + rbp]
	mov	byte ptr [rsp + 7], al
	mov	al, byte ptr [r14 + rbx]
	mov	byte ptr [rsp + 6], al
	mov	byte ptr [r12 + rbp], 0
	mov	byte ptr [r14 + rbx], 0
	mov	qword ptr [rsp + 0x10], rbp
	lea	r13, [rbp + 1]
	mov	qword ptr [rsp + 0x20], rbx
	lea	r15, [rbx + 1]
	call	__errno_location
	mov	rbx, rax
	mov	qword ptr [rsp + 0x18], r14
	mov	rbp, r14
	mov	qword ptr [rsp + 8], r12
	mov	r14, r12
	nop	dword ptr [rax]
.label_479:
	mov	dword ptr [rbx], 0
	mov	rdi, r14
	mov	rsi, rbp
	call	strcoll
	test	eax, eax
	jne	.label_477
	mov	rdi, r14
	call	strlen
	mov	r12, rax
	inc	r12
	mov	rdi, rbp
	call	strlen
	inc	rax
	sub	r15, rax
	sub	r13, r12
	je	.label_480
	add	rbp, rax
	add	r14, r12
	mov	eax, 1
	test	r15, r15
	jne	.label_479
	jmp	.label_477
.label_480:
	neg	r15
	sbb	eax, eax
.label_477:
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	mov	bl, byte ptr [rsp + 7]
	mov	byte ptr [rdx + rcx], bl
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	bl, byte ptr [rsp + 6]
	mov	byte ptr [rdx + rcx], bl
	jmp	.label_481
.label_482:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_481:
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
	#Procedure 0x4060a0

	.globl memcoll0
	.type memcoll0, @function
memcoll0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	rbx, rdi
	cmp	r15, r14
	jne	.label_483
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	call	memcmp
	test	eax, eax
	je	.label_485
.label_483:
	call	__errno_location
	mov	r13, rax
	nop	word ptr cs:[rax + rax]
.label_487:
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rsi, r12
	call	strcoll
	test	eax, eax
	jne	.label_484
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	rdi, r12
	call	strlen
	inc	rax
	sub	r14, rax
	sub	r15, rbp
	je	.label_486
	add	r12, rax
	add	rbx, rbp
	mov	eax, 1
	test	r14, r14
	jne	.label_487
	jmp	.label_484
.label_486:
	neg	r14
	sbb	eax, eax
	jmp	.label_484
.label_485:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_484:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section .text
	.align	32
	#Procedure 0x406150

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
