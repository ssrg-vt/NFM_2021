	.section	.text
	.align	16
	#Procedure 0x4017f0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_26
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
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
	mov	esi, OFFSET FLAT:label_18
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
	mov	esi, OFFSET FLAT:label_25
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
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
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
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_22
	mov	ecx, OFFSET FLAT:label_11
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_15
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_15
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_15:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_11
	mov	ecx, OFFSET FLAT:label_12
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_12
	mov	ecx, OFFSET FLAT:label_28
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_26:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
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
	#Procedure 0x401a50

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r15, rsi
	mov	ebx, edi
	mov	dword ptr [rsp + 0x30], 0
	mov	qword ptr [rsp + 0x40], 0
	mov	dword ptr [rsp + 0x34], 0
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_76
	call	setlocale
	mov	edi, OFFSET FLAT:label_82
	mov	esi, OFFSET FLAT:label_143
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_82
	call	textdomain
	mov	edi, 3
	call	hard_locale
	mov	byte ptr [rip + hard_LC_COLLATE],  al
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	edi, OFFSET FLAT:free_spareline
	call	atexit
	mov	byte ptr [rip + print_pairables],  1
	mov	byte ptr [rip + seen_unpairable],  0
	mov	byte ptr [rip + label_54],  0
	mov	byte ptr [rip + issued_disorder_warning],  0
	mov	dword ptr [rip + check_input_order],  0
	mov	edx, OFFSET FLAT:label_87
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r15
	call	getopt_long
	cmp	eax, -1
	je	.label_107
	lea	r14, [rsp]
	jmp	.label_95
.label_64:
	xor	eax, eax
	cmp	cl, 0x32
	sete	al
	inc	dword ptr [rsp + rax*4 + 0x40]
	inc	eax
	mov	dword ptr [rsp + 0x1c], eax
	jmp	.label_94
	nop	word ptr cs:[rax + rax]
.label_95:
	mov	dword ptr [rsp + 0x1c], 0
	lea	ecx, [rax - 1]
	cmp	ecx, 0x81
	ja	.label_127
	jmp	qword ptr [(rcx * 8) + label_134]
.label_741:
	mov	rdi, qword ptr [rip + optarg]
	lea	rsi, [rsp + 0x60]
	lea	rdx, [rsp + 0x40]
	lea	rcx, [rsp + 0x34]
	lea	r8, [rsp + 0x30]
	lea	r9, [rsp + 0x1c]
	call	add_file_name
	mov	eax, dword ptr [rsp + 0x1c]
	jmp	.label_94
.label_742:
	mov	r12, qword ptr [rip + optarg]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_76
	mov	rdi, r12
	mov	rcx, r14
	call	xstrtoul
	cmp	eax, 1
	jne	.label_158
	mov	qword ptr [rsp], -1
	mov	rbp, -1
	jmp	.label_172
.label_743:
	mov	r12, qword ptr [rip + optarg]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_76
	mov	rdi, r12
	mov	rcx, r14
	call	xstrtoul
	cmp	eax, 1
	jne	.label_170
	mov	qword ptr [rsp], -1
	mov	rbp, -1
	jmp	.label_171
.label_745:
	mov	rdi, qword ptr [rip + empty_filler]
	test	rdi, rdi
	je	.label_32
	mov	rbp, qword ptr [rip + optarg]
	mov	rsi, rbp
	call	strcmp
	test	eax, eax
	je	.label_46
	jmp	.label_48
.label_746:
	mov	byte ptr [rip + ignore_case],  1
	jmp	.label_52
.label_747:
	mov	r13, qword ptr [rip + optarg]
	movzx	ecx, byte ptr [r13]
	mov	eax, ecx
	add	al, 0xcf
	cmp	al, 1
	ja	.label_58
	cmp	byte ptr [r13 + 1], 0
	jne	.label_58
	movsxd	rax, dword ptr [rip + optind]
	mov	rax, qword ptr [r15 + rax*8 - 8]
	add	rax, 2
	cmp	r13, rax
	je	.label_64
.label_58:
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_76
	mov	rdi, r13
	mov	rcx, r14
	call	xstrtoul
	cmp	eax, 1
	jne	.label_77
	mov	qword ptr [rsp], -1
	mov	r12, -1
	jmp	.label_80
.label_748:
	mov	rbp, qword ptr [rip + optarg]
	mov	esi, OFFSET FLAT:label_84
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_89
	mov	rdi, rbp
	call	add_field_list
	mov	dword ptr [rsp + 0x1c], 3
	mov	eax, 3
	jmp	.label_94
.label_749:
	mov	rax, qword ptr [rip + optarg]
	movzx	edx, byte ptr [rax]
	mov	cl, 0xa
	test	dl, dl
	je	.label_99
	movzx	ecx, byte ptr [rax + 1]
	test	cl, cl
	je	.label_102
	cmp	dl, 0x5c
	jne	.label_63
	cmp	cl, 0x30
	jne	.label_63
	cmp	byte ptr [rax + 2], 0
	jne	.label_63
	xor	ecx, ecx
	jmp	.label_99
.label_750:
	mov	byte ptr [rip + print_pairables],  0
.label_744:
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_76
	mov	rcx, r14
	call	xstrtoul
	test	eax, eax
	jne	.label_128
	mov	rax, qword ptr [rsp]
	lea	rcx, [rax - 1]
	cmp	rcx, 2
	jae	.label_128
	cmp	rax, 1
	jne	.label_136
	mov	byte ptr [rip + print_unpairables_1],  1
	jmp	.label_52
.label_751:
	mov	byte ptr [rip + eolchar],  1
	jmp	.label_52
.label_752:
	mov	dword ptr [rip + check_input_order],  1
	jmp	.label_52
.label_753:
	mov	dword ptr [rip + check_input_order],  2
	jmp	.label_52
.label_754:
	mov	byte ptr [rip + join_header_lines],  1
	jmp	.label_52
.label_136:
	mov	byte ptr [rip + print_unpairables_2],  1
	jmp	.label_52
.label_158:
	test	eax, eax
	jne	.label_159
	mov	rbp, qword ptr [rsp]
	test	rbp, rbp
	je	.label_159
.label_172:
	lea	rax, [rbp - 1]
	mov	r12, qword ptr [rip + join_field_1]
	cmp	r12, -1
	je	.label_162
	cmp	r12, rax
	jne	.label_38
.label_162:
	mov	qword ptr [rip + join_field_1],  rax
	jmp	.label_52
.label_170:
	test	eax, eax
	jne	.label_159
	mov	rbp, qword ptr [rsp]
	test	rbp, rbp
	je	.label_159
.label_171:
	lea	rax, [rbp - 1]
	mov	r12, qword ptr [rip + join_field_2]
	cmp	r12, -1
	je	.label_36
	cmp	r12, rax
	je	.label_36
	jmp	.label_38
.label_77:
	test	eax, eax
	jne	.label_41
	mov	r12, qword ptr [rsp]
	test	r12, r12
	je	.label_41
.label_80:
	lea	rax, [r12 - 1]
	mov	rbp, qword ptr [rip + join_field_1]
	cmp	rbp, -1
	je	.label_109
	cmp	rbp, rax
	jne	.label_60
.label_109:
	mov	qword ptr [rip + join_field_1],  rax
	mov	rbp, qword ptr [rip + join_field_2]
	cmp	rbp, -1
	je	.label_36
	cmp	rbp, rax
	jne	.label_60
.label_36:
	mov	qword ptr [rip + join_field_2],  rax
	jmp	.label_52
.label_32:
	mov	rbp, qword ptr [rip + optarg]
.label_46:
	mov	qword ptr [rip + empty_filler],  rbp
	jmp	.label_52
.label_89:
	mov	byte ptr [rip + autoformat],  1
	jmp	.label_52
.label_102:
	mov	cl, dl
.label_99:
	mov	edx, dword ptr [rip + tab]
	test	edx, edx
	movzx	eax, cl
	js	.label_79
	cmp	edx, eax
	jne	.label_81
.label_79:
	mov	dword ptr [rip + tab],  eax
	nop	word ptr cs:[rax + rax]
.label_52:
	xor	eax, eax
.label_94:
	mov	dword ptr [rsp + 0x30], eax
	mov	edx, OFFSET FLAT:label_87
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r15
	call	getopt_long
	cmp	eax, -1
	jne	.label_95
.label_107:
	mov	dword ptr [rsp + 0x30], 0
	mov	eax, dword ptr [rip + optind]
	cmp	eax, ebx
	jge	.label_97
	lea	r13, [rsp + 0x40]
	lea	rbp, [rsp + 0x34]
	lea	r12, [rsp + 0x30]
	lea	r14, [rsp + 0x1c]
	nop	dword ptr [rax]
.label_112:
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	cdqe	
	mov	rdi, qword ptr [r15 + rax*8]
	lea	rsi, [rsp + 0x60]
	mov	rdx, r13
	mov	rcx, rbp
	mov	r8, r12
	mov	r9, r14
	call	add_file_name
	mov	eax, dword ptr [rip + optind]
	cmp	eax, ebx
	jl	.label_112
.label_97:
	mov	ebp, ebx
	mov	eax, dword ptr [rsp + 0x34]
	cmp	eax, 2
	jne	.label_117
	cmp	dword ptr [rsp + 0x40], 0
	je	.label_126
	mov	rbx, qword ptr [rip + join_field_1]
	mov	ebp, 1
	lea	rax, [rbx + 1]
	cmp	rax, 2
	jae	.label_130
	mov	qword ptr [rip + join_field_1],  0
	mov	ebx, 1
	mov	rbp, qword ptr [rip + join_field_2]
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jae	.label_137
	mov	qword ptr [rip + join_field_2],  0
.label_126:
	cmp	dword ptr [rsp + 0x44], 0
	mov	rbx, qword ptr [rip + join_field_1]
	je	.label_150
	mov	ebp, 2
	cmp	rbx, 1
	je	.label_155
	cmp	rbx, -1
	jne	.label_130
.label_155:
	mov	qword ptr [rip + join_field_1],  1
	mov	ebx, 2
	mov	rbp, qword ptr [rip + join_field_2]
	cmp	rbp, 1
	je	.label_160
	cmp	rbp, -1
	jne	.label_137
.label_160:
	mov	qword ptr [rip + join_field_2],  1
	jmp	.label_166
.label_150:
	cmp	rbx, -1
	jne	.label_140
	mov	qword ptr [rip + join_field_1],  0
.label_140:
	cmp	qword ptr [rip + join_field_2],  -1
	jne	.label_166
	mov	qword ptr [rip + join_field_2],  0
.label_166:
	mov	rdi, qword ptr [rip + g_names]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_34
	cmp	byte ptr [rdi + 1], 0
	je	.label_39
.label_34:
	mov	esi, OFFSET FLAT:label_45
	call	fopen_safer
	mov	r13, rax
.label_90:
	test	r13, r13
	je	.label_51
	mov	rdi, qword ptr [rip + label_56]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_57
	cmp	byte ptr [rdi + 1], 0
	je	.label_61
.label_57:
	mov	esi, OFFSET FLAT:label_45
	call	fopen_safer
	mov	rbx, rax
.label_96:
	test	rbx, rbx
	je	.label_67
	cmp	r13, rbx
	je	.label_71
	mov	esi, 2
	mov	rdi, r13
	call	fadvise
	mov	esi, 2
	mov	rdi, rbx
	call	fadvise
	xor	edi, edi
	mov	esi, 0x80
	call	xrealloc
	mov	r14, rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14 + 0x70], xmm0
	movups	xmmword ptr [r14 + 0x60], xmm0
	movups	xmmword ptr [r14 + 0x50], xmm0
	movups	xmmword ptr [r14 + 0x40], xmm0
	movups	xmmword ptr [r14 + 0x30], xmm0
	movups	xmmword ptr [r14 + 0x20], xmm0
	movups	xmmword ptr [r14 + 0x10], xmm0
	movups	xmmword ptr [r14], xmm0
	mov	edx, 1
	mov	rdi, r13
	mov	rsi, r14
	call	get_line
	mov	ebp, eax
	xor	edi, edi
	mov	esi, 0x80
	call	xrealloc
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x70], xmm0
	movups	xmmword ptr [rax + 0x60], xmm0
	movups	xmmword ptr [rax + 0x50], xmm0
	movups	xmmword ptr [rax + 0x40], xmm0
	movups	xmmword ptr [rax + 0x30], xmm0
	movups	xmmword ptr [rax + 0x20], xmm0
	movups	xmmword ptr [rax + 0x10], xmm0
	movups	xmmword ptr [rax], xmm0
	movzx	r15d, bpl
	mov	rbp, rax
	mov	edx, 2
	mov	qword ptr [rsp + 0x28], rbx
	mov	rdi, rbx
	mov	rsi, rbp
	call	get_line
	movzx	r12d, al
	cmp	byte ptr [rip + autoformat],  1
	jne	.label_86
	xor	eax, eax
	test	r15, r15
	je	.label_114
	mov	rax, qword ptr [r14]
	mov	rax, qword ptr [rax + 0x18]
.label_114:
	mov	qword ptr [rip + autocount_1],  rax
	xor	eax, eax
	test	r12, r12
	je	.label_122
	mov	rax, qword ptr [rbp]
	mov	rax, qword ptr [rax + 0x18]
.label_122:
	mov	qword ptr [rip + autocount_2],  rax
.label_86:
	cmp	byte ptr [rip + join_header_lines],  1
	mov	qword ptr [rsp + 0x38], r13
	jne	.label_133
	test	r15, r15
	je	.label_138
	mov	rdi, qword ptr [r14]
	test	r12, r12
	jne	.label_111
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rip + prevline],  xmm0
	mov	edx, 1
	mov	rdi, r13
	mov	rsi, r14
	call	get_line
	movzx	eax, al
	jmp	.label_151
.label_133:
	mov	rax, r15
.label_151:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x28]
	jmp	.label_153
.label_138:
	mov	edi, OFFSET FLAT:uni_blank
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	r13d, 0x10
	test	r12, r12
	je	.label_168
.label_111:
	mov	rsi, qword ptr [rbp]
	call	prjoin
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rip + prevline],  xmm0
	xor	r13d, r13d
	test	r15, r15
	mov	r12, qword ptr [rsp + 0x28]
	je	.label_163
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, r14
	call	get_line
	movzx	r13d, al
.label_163:
	mov	edx, 2
	mov	rdi, r12
	mov	rsi, rbp
	call	get_line
	movzx	ebx, al
	mov	rax, r13
.label_153:
	mov	r13d, 0x10
	mov	qword ptr [rsp + 0x10], rax
	test	rax, rax
	je	.label_43
	test	rbx, rbx
	je	.label_43
	mov	eax, 0x10
	mov	qword ptr [rsp + 8], rax
	mov	r13d, 0x10
	nop	dword ptr [rax]
.label_35:
	mov	rdi, qword ptr [r14]
	mov	rsi, qword ptr [rbp]
	mov	rdx, qword ptr [rip + join_field_1]
	mov	rcx, qword ptr [rip + join_field_2]
	call	keycmp
	test	eax, eax
	js	.label_66
	je	.label_70
	cmp	byte ptr [rip + print_unpairables_2],  1
	jne	.label_72
	mov	rsi, qword ptr [rbp]
	mov	edi, OFFSET FLAT:uni_blank
	call	prjoin
.label_72:
	mov	r15, r14
	cmp	qword ptr [rsp + 8], 0
	je	.label_74
	mov	r12, rbp
	jmp	.label_78
	nop	
.label_74:
	test	rbp, rbp
	mov	rbx, rbp
	mov	ebp, 8
	mov	eax, 0x80
	cmove	rbp, rax
	mov	rdi, rbx
	mov	rsi, rbp
	call	xrealloc
	mov	r14, rax
	test	rbx, rbx
	mov	qword ptr [r14], 0
	mov	r12, r14
	mov	eax, 1
	mov	qword ptr [rsp + 8], rax
	jne	.label_78
	mov	rdi, r14
	add	rdi, 8
	add	rbp, -8
	xor	esi, esi
	mov	rdx, rbp
	call	memset
	mov	r12, r14
	mov	eax, 0x10
	mov	qword ptr [rsp + 8], rax
	nop	dword ptr [rax]
.label_78:
	mov	edx, 2
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, r12
	call	get_line
	movzx	ebx, al
	mov	byte ptr [rip + seen_unpairable],  1
	test	bl, bl
	mov	r14, r15
	mov	rbp, r12
	jne	.label_35
	jmp	.label_108
.label_66:
	cmp	byte ptr [rip + print_unpairables_1],  1
	mov	r12, qword ptr [rsp + 0x28]
	jne	.label_110
	mov	rdi, qword ptr [r14]
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
.label_110:
	test	r13, r13
	jne	.label_124
	mov	esi, 8
	mov	rdi, r14
	call	xrealloc
	mov	r14, rax
	mov	qword ptr [r14], 0
	mov	r13d, 1
.label_124:
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, r14
	call	get_line
	movzx	eax, al
	mov	byte ptr [rip + seen_unpairable],  1
	jmp	.label_142
.label_70:
	mov	qword ptr [rsp + 0x48], rbx
	mov	qword ptr [rsp + 0x20], rbp
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r12, rcx
	movabs	rax, 0x1fffffffffffffff
	xor	r12, rax
	inc	r12
	lea	rbx, [rcx*8 + 8]
	mov	r15, r13
	mov	rbp, rcx
	mov	r13, qword ptr [rsp + 0x38]
	nop	word ptr cs:[rax + rax]
.label_123:
	mov	qword ptr [rsp + 0x50], rbp
	cmp	rbp, r15
	jne	.label_75
	mov	rbp, r13
	mov	rdi, r14
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	r15, rax
	jae	.label_44
	mov	r13, r15
	shr	r15, 1
	lea	r14, [r13 + r15 + 1]
	lea	rsi, [r14*8]
	call	xrealloc
	cmp	r13, r14
	jae	.label_31
	lea	rcx, [r13 + 1]
	mov	qword ptr [rax + r13*8], 0
	cmp	rcx, r14
	jae	.label_31
	mov	rdi, rax
	add	rdi, rbx
	add	r13, r15
	add	r13, r12
	shl	r13, 3
	xor	esi, esi
	mov	rdx, r13
	mov	r13, rax
	call	memset
	mov	r15, r14
	mov	r14, r13
	jmp	.label_50
	nop	word ptr cs:[rax + rax]
.label_31:
	mov	r15, r14
	mov	r14, rax
.label_50:
	mov	r13, rbp
.label_75:
	lea	rsi, [r14 + rbx - 8]
	mov	edx, 1
	mov	rdi, r13
	call	get_line
	mov	cl, 1
	test	al, al
	je	.label_164
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbp, [rax + 1]
	mov	rdi, qword ptr [r14 + rax*8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax]
	mov	rdx, qword ptr [rip + join_field_1]
	mov	rcx, qword ptr [rip + join_field_2]
	call	keycmp
	dec	r12
	add	rbx, 8
	test	eax, eax
	je	.label_123
	xor	ecx, ecx
.label_164:
	mov	dword ptr [rsp + 0x5c], ecx
	mov	r13, r15
	mov	qword ptr [rsp + 0x10], r14
	mov	rbx, qword ptr [rsp + 0x48]
	mov	r14, rbx
	movabs	rax, 0x1fffffffffffffff
	xor	r14, rax
	lea	r12, [rbx*8 + 8]
	mov	rbp, qword ptr [rsp + 0x20]
	nop	dword ptr [rax + rax]
.label_129:
	mov	r15, rbx
	cmp	r15, qword ptr [rsp + 8]
	jne	.label_139
	mov	rdi, rbp
	test	rbp, rbp
	je	.label_120
	mov	rbp, qword ptr [rsp + 8]
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rbp, rax
	jae	.label_44
	mov	rax, rbp
	shr	rax, 1
	lea	rbx, [rbp + rax + 1]
	jmp	.label_104
.label_120:
	mov	rbp, qword ptr [rsp + 8]
	test	rbp, rbp
	mov	ebx, 0x10
	cmovne	rbx, rbp
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_106
.label_104:
	lea	rsi, [rbx*8]
	call	xrealloc
	cmp	rbp, rbx
	jae	.label_121
	mov	qword ptr [rax + rbp*8], 0
	inc	rbp
	cmp	rbp, rbx
	jae	.label_121
	mov	rdi, rax
	add	rdi, r12
	lea	rdx, [r14 + rbx]
	shl	rdx, 3
	xor	esi, esi
	mov	rbp, rax
	call	memset
	mov	qword ptr [rsp + 8], rbx
	jmp	.label_139
	nop	word ptr [rax + rax]
.label_121:
	mov	qword ptr [rsp + 8], rbx
	mov	rbp, rax
.label_139:
	lea	rsi, [rbp + r12 - 8]
	mov	edx, 2
	mov	rdi, qword ptr [rsp + 0x28]
	call	get_line
	mov	dil, 1
	test	al, al
	je	.label_152
	lea	rbx, [r15 + 1]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp + r15*8]
	mov	rdx, qword ptr [rip + join_field_1]
	mov	rcx, qword ptr [rip + join_field_2]
	call	keycmp
	dec	r14
	add	r12, 8
	test	eax, eax
	je	.label_129
	xor	edi, edi
.label_152:
	mov	rsi, qword ptr [rsp + 0x50]
	test	rsi, rsi
	je	.label_83
	test	byte ptr [rip + print_pairables],  1
	mov	r14, qword ptr [rsp + 0x10]
	je	.label_101
	test	r15, r15
	mov	eax, 0
	je	.label_53
	mov	dword ptr [rsp + 0x48], edi
	mov	qword ptr [rsp + 0x20], rbp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_149:
	xor	ebp, ebp
	mov	r12, qword ptr [rsp + 0x20]
	nop	word ptr [rax + rax]
.label_42:
	mov	rdi, qword ptr [r14 + rbx*8]
	mov	rsi, qword ptr [r12 + rbp*8]
	call	prjoin
	inc	rbp
	cmp	r15, rbp
	jne	.label_42
	inc	rbx
	mov	rsi, qword ptr [rsp + 0x50]
	cmp	rbx, rsi
	jne	.label_149
	mov	rax, r15
	mov	rbp, qword ptr [rsp + 0x20]
	mov	edi, dword ptr [rsp + 0x48]
	jmp	.label_53
.label_83:
	mov	rax, r15
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_53
.label_101:
	mov	rax, r15
.label_53:
	mov	ecx, dword ptr [rsp + 0x5c]
	test	cl, cl
	mov	ecx, 0
	mov	qword ptr [rsp + 0x10], rcx
	jne	.label_59
	mov	rcx, qword ptr [r14]
	mov	rdx, qword ptr [r14 + rsi*8]
	mov	qword ptr [r14], rdx
	mov	qword ptr [r14 + rsi*8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x10], rcx
.label_59:
	test	dil, dil
	mov	r12, qword ptr [rsp + 0x28]
	jne	.label_115
	mov	rcx, qword ptr [rbp]
	mov	rdx, qword ptr [rbp + rax*8]
	mov	qword ptr [rbp], rdx
	mov	qword ptr [rbp + rax*8], rcx
	mov	ebx, 1
	mov	rax, qword ptr [rsp + 0x10]
.label_142:
	mov	qword ptr [rsp + 0x10], rax
	test	rax, rax
	je	.label_62
	test	rbx, rbx
	jne	.label_35
	jmp	.label_62
.label_43:
	mov	eax, 0x10
	mov	qword ptr [rsp + 8], rax
	jmp	.label_62
.label_39:
	mov	r13, qword ptr [rip + stdin]
	jmp	.label_90
.label_61:
	mov	rbx, qword ptr [rip + stdin]
	jmp	.label_96
.label_168:
	mov	eax, 0x10
	mov	qword ptr [rsp + 8], rax
	xor	ebx, ebx
.label_108:
	mov	r12, qword ptr [rsp + 0x28]
.label_62:
	mov	r15, rbx
	mov	qword ptr [rsp], 0
	cmp	dword ptr [rip + check_input_order],  2
	mov	qword ptr [rsp + 0x20], rbp
	jne	.label_100
	xor	ebx, ebx
	jmp	.label_40
.label_100:
	cmp	byte ptr [rip + issued_disorder_warning],  0
	sete	al
	cmp	byte ptr [rip + label_54],  0
	sete	bl
	or	bl, al
.label_40:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_69
	mov	al, byte ptr [rip + print_unpairables_1]
	mov	ecx, ebx
	or	cl, al
	xor	cl, 1
	test	cl, 1
	jne	.label_69
	test	al, 1
	je	.label_146
	mov	rdi, qword ptr [r14]
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
.label_146:
	test	r15, r15
	je	.label_132
	mov	byte ptr [rip + seen_unpairable],  1
.label_132:
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x38]
	call	get_line
	test	al, al
	je	.label_69
	lea	rbp, [rsp]
	nop	dword ptr [rax + rax]
.label_161:
	cmp	byte ptr [rip + print_unpairables_1],  1
	jne	.label_145
	mov	rdi, qword ptr [rsp]
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
.label_145:
	cmp	byte ptr [rip + issued_disorder_warning],  0
	je	.label_103
	cmp	byte ptr [rip + print_unpairables_1],  1
	jne	.label_69
.label_103:
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	call	get_line
	test	al, al
	jne	.label_161
.label_69:
	test	r15, r15
	je	.label_37
	mov	al, byte ptr [rip + print_unpairables_2]
	or	bl, al
	xor	bl, 1
	test	bl, 1
	jne	.label_37
	test	al, 1
	je	.label_167
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax]
	mov	edi, OFFSET FLAT:uni_blank
	call	prjoin
.label_167:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_156
	mov	byte ptr [rip + seen_unpairable],  1
.label_156:
	lea	rsi, [rsp]
	mov	edx, 2
	mov	rdi, r12
	call	get_line
	test	al, al
	je	.label_37
	lea	rbp, [rsp]
	nop	word ptr [rax + rax]
.label_65:
	cmp	byte ptr [rip + print_unpairables_2],  1
	jne	.label_105
	mov	rsi, qword ptr [rsp]
	mov	edi, OFFSET FLAT:uni_blank
	call	prjoin
.label_105:
	cmp	byte ptr [rip + label_54],  0
	je	.label_55
	cmp	byte ptr [rip + print_unpairables_2],  1
	jne	.label_37
.label_55:
	mov	edx, 2
	mov	rdi, r12
	mov	rsi, rbp
	call	get_line
	test	al, al
	jne	.label_65
.label_37:
	mov	rbp, qword ptr [rsp]
	test	rbp, rbp
	je	.label_68
	mov	rdi, qword ptr [rbp + 0x28]
	call	free
	mov	qword ptr [rbp + 0x28], 0
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
.label_68:
	mov	rdi, rbp
	call	free
	test	r13, r13
	je	.label_49
	mov	rbx, r14
.label_93:
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	mov	edi, 0
	je	.label_47
	mov	rdi, qword ptr [rbp + 0x28]
	call	free
	mov	qword ptr [rbp + 0x28], 0
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	qword ptr [rbp + 0x10], 0
	mov	rdi, qword ptr [rbx]
.label_47:
	call	free
	add	rbx, 8
	dec	r13
	jne	.label_93
.label_49:
	mov	rdi, r14
	call	free
	mov	r14, qword ptr [rsp + 8]
	test	r14, r14
	mov	r15, qword ptr [rsp + 0x38]
	je	.label_98
	mov	rbx, qword ptr [rsp + 0x20]
	nop	dword ptr [rax]
.label_113:
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	mov	edi, 0
	je	.label_116
	mov	rdi, qword ptr [rbp + 0x28]
	call	free
	mov	qword ptr [rbp + 0x28], 0
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	qword ptr [rbp + 0x10], 0
	mov	rdi, qword ptr [rbx]
.label_116:
	call	free
	add	rbx, 8
	dec	r14
	jne	.label_113
.label_98:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rdi, r15
	call	rpl_fclose
	test	eax, eax
	jne	.label_51
	mov	rdi, r12
	call	rpl_fclose
	test	eax, eax
	jne	.label_67
	mov	al, byte ptr [rip + label_54]
	or	al, byte ptr [rip + issued_disorder_warning]
	jne	.label_135
	xor	eax, eax
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_115:
	xor	ebx, ebx
	jmp	.label_62
.label_127:
	cmp	eax, 0xffffff7d
	je	.label_147
	cmp	eax, 0xffffff7e
	jne	.label_148
	xor	edi, edi
	call	usage
.label_148:
	mov	edi, 1
	call	usage
.label_128:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
.label_119:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
.label_88:
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_147:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_12
	mov	edx, OFFSET FLAT:label_22
	mov	r8d, OFFSET FLAT:label_165
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_44:
	call	xalloc_die
.label_38:
	inc	r12
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r12
	mov	r8, rbp
	call	error
.label_60:
	inc	rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	mov	r8, r12
	call	error
.label_51:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx, qword ptr [rip + g_names]
	jmp	.label_73
.label_67:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx, qword ptr [rip + label_56]
.label_73:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_141
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_159:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r12
	jmp	.label_88
.label_81:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
	jmp	.label_92
.label_106:
	call	xalloc_die
.label_130:
	inc	rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_137:
	inc	rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_63:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	jmp	.label_119
.label_117:
	xor	edi, edi
	test	eax, eax
	jne	.label_125
	mov	esi, OFFSET FLAT:label_131
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
.label_71:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_144
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_135:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_154
	jmp	.label_92
.label_48:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_157
.label_92:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_41:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r13
	jmp	.label_88
.label_125:
	mov	esi, OFFSET FLAT:label_169
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, ebp
	mov	rdi, qword ptr [r15 + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x402c20

	.globl free_spareline
	.type free_spareline, @function
free_spareline:
	push	rbx
	mov	rbx, qword ptr [rip + spareline]
	test	rbx, rbx
	je	.label_173
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	qword ptr [rbx + 0x10], 0
	mov	rdi, qword ptr [rip + spareline]
	call	free
.label_173:
	mov	rbx, qword ptr [rip + label_174]
	test	rbx, rbx
	je	.label_175
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	qword ptr [rbx + 0x10], 0
	mov	rdi, qword ptr [rip + label_174]
	pop	rbx
	jmp	free
.label_175:
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ca0

	.globl add_field_list
	.type add_field_list, @function
add_field_list:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdi
	movabs	r13, 0x100100000201
	lea	r14, [rsp]
	nop	dword ptr [rax]
.label_180:
	mov	r12, r15
	mov	rax, r12
	nop	word ptr cs:[rax + rax]
.label_182:
	movzx	ecx, byte ptr [rax]
	inc	rax
	cmp	rcx, 0x2c
	ja	.label_182
	bt	r13, rcx
	jae	.label_182
	cmp	rax, 1
	je	.label_185
	test	cl, cl
	mov	r15d, 0
	je	.label_186
	mov	byte ptr [rax - 1], 0
	mov	r15, rax
	jmp	.label_186
	nop	dword ptr [rax + rax]
.label_185:
	xor	r15d, r15d
.label_186:
	movsx	ebx, byte ptr [r12]
	lea	eax, [rbx - 0x31]
	cmp	eax, 2
	jae	.label_176
	cmp	byte ptr [r12 + 1], 0x2e
	jne	.label_184
	add	r12, 2
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_76
	mov	rdi, r12
	mov	rcx, r14
	call	xstrtoul
	cmp	eax, 1
	jne	.label_188
	mov	qword ptr [rsp], -1
	mov	rbp, -1
	jmp	.label_189
	nop	
.label_176:
	cmp	ebx, 0x30
	jne	.label_179
	xor	ebx, ebx
	cmp	byte ptr [r12 + 1], 0
	mov	ebp, 0
	je	.label_183
	jmp	.label_184
	nop	word ptr cs:[rax + rax]
.label_188:
	test	eax, eax
	jne	.label_187
	mov	rbp, qword ptr [rsp]
	test	rbp, rbp
	je	.label_187
.label_189:
	add	ebx, -0x30
	dec	rbp
.label_183:
	mov	edi, 0x18
	call	xmalloc
	mov	dword ptr [rax], ebx
	mov	qword ptr [rax + 8], rbp
	mov	qword ptr [rax + 0x10], 0
	mov	rcx, qword ptr [rip + outlist_end]
	mov	qword ptr [rcx + 0x10], rax
	mov	qword ptr [rip + outlist_end],  rax
	test	r15, r15
	jne	.label_180
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_179:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_177
	jmp	.label_178
.label_184:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_181
	jmp	.label_178
.label_187:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
.label_178:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e10

	.globl add_file_name
	.type add_file_name, @function
add_file_name:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r9
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rsi
	mov	r15, rdi
	mov	eax, dword ptr [r13]
	cmp	eax, 2
	jne	.label_191
	mov	ebp, dword ptr [rbx]
	xor	eax, eax
	test	ebp, ebp
	sete	al
	mov	ecx, dword ptr [rbx + rax*4]
	cmp	rcx, 3
	ja	.label_194
	mov	rdi, qword ptr [(rax * 8) + g_names]
	jmp	qword ptr [(rcx * 8) + label_192]
.label_758:
	dec	dword ptr [rdx]
	lea	rcx, [rsp + 8]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_76
	mov	qword ptr [rsp + 0x10], rdi
	call	xstrtoul
	cmp	eax, 1
	jne	.label_201
	mov	qword ptr [rsp + 8], -1
	mov	rcx, -1
	jmp	.label_190
.label_759:
	dec	dword ptr [rdx + 4]
	lea	rcx, [rsp + 8]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_76
	mov	qword ptr [rsp + 0x10], rdi
	call	xstrtoul
	cmp	eax, 1
	jne	.label_200
	mov	qword ptr [rsp + 8], -1
	mov	rcx, -1
	jmp	.label_202
.label_760:
	call	add_field_list
	jmp	.label_194
.label_200:
	test	eax, eax
	jne	.label_195
	mov	rcx, qword ptr [rsp + 8]
	test	rcx, rcx
	je	.label_195
.label_202:
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rip + join_field_2]
	cmp	rdx, -1
	je	.label_198
	cmp	rdx, rax
	jne	.label_199
.label_198:
	mov	qword ptr [rip + join_field_2],  rax
	jmp	.label_194
.label_201:
	test	eax, eax
	jne	.label_195
	mov	rcx, qword ptr [rsp + 8]
	test	rcx, rcx
	je	.label_195
.label_190:
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rip + join_field_1]
	cmp	rdx, -1
	je	.label_197
	cmp	rdx, rax
	jne	.label_199
.label_197:
	mov	qword ptr [rip + join_field_1],  rax
.label_194:
	mov	eax, 1
	test	ebp, ebp
	je	.label_191
	mov	ecx, dword ptr [rbx + 4]
	mov	dword ptr [rbx], ecx
	mov	rcx, qword ptr [rip + label_56]
	mov	qword ptr [rip + g_names],  rcx
.label_191:
	mov	ecx, dword ptr [r12]
	cdqe	
	mov	dword ptr [rbx + rax*4], ecx
	mov	qword ptr [(rax * 8) + g_names],  r15
	inc	eax
	mov	dword ptr [r13], eax
	cmp	dword ptr [r12], 3
	jne	.label_196
	mov	dword ptr [r14], 3
.label_196:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_757:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_193
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_199:
	inc	rdx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	rbp, rdx
	mov	edx, 5
	mov	rbx, rcx
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_195:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0x10]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403040

	.globl prjoin
	.type prjoin, @function
prjoin:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r12, rdi
	mov	rbp, qword ptr [rip + label_203]
	test	rbp, rbp
	je	.label_204
	mov	eax, dword ptr [rip + tab]
	mov	ecx, OFFSET FLAT:uni_blank
	cmp	r12, rcx
	mov	ecx, OFFSET FLAT:join_field_2
	mov	r13d, OFFSET FLAT:join_field_1
	cmove	r13, rcx
	mov	rbx, r12
	cmove	rbx, r14
	test	eax, eax
	movsx	edx, al
	mov	ecx, 0x20
	cmovns	ecx, edx
	mov	r15b, 0x20
	js	.label_209
	mov	r15d, eax
.label_209:
	movzx	eax, cl
	mov	dword ptr [rsp + 4], eax
	jmp	.label_206
	nop	word ptr cs:[rax + rax]
.label_213:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r15b
.label_206:
	mov	ecx, dword ptr [rbp]
	cmp	ecx, 1
	mov	rax, r14
	cmove	rax, r12
	lea	rdx, [rbp + 8]
	test	ecx, ecx
	cmove	rdx, r13
	cmove	rax, rbx
	mov	rcx, qword ptr [rdx]
	cmp	qword ptr [rax + 0x18], rcx
	jbe	.label_208
	mov	rax, qword ptr [rax + 0x28]
	shl	rcx, 4
	mov	rdx, qword ptr [rax + rcx + 8]
	test	rdx, rdx
	je	.label_208
	mov	rdi, qword ptr [rax + rcx]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
	jmp	.label_205
	nop	dword ptr [rax + rax]
.label_208:
	mov	rdi, qword ptr [rip + empty_filler]
	test	rdi, rdi
	je	.label_205
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_205:
	mov	rbp, qword ptr [rbp + 0x10]
	test	rbp, rbp
	je	.label_211
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_213
	mov	esi, dword ptr [rsp + 4]
	call	__overflow
	jmp	.label_206
.label_204:
	mov	eax, OFFSET FLAT:uni_blank
	cmp	r12, rax
	mov	rax, r12
	cmove	rax, r14
	mov	ecx, OFFSET FLAT:join_field_2
	mov	edx, OFFSET FLAT:join_field_1
	cmove	rdx, rcx
	mov	rcx, qword ptr [rdx]
	cmp	qword ptr [rax + 0x18], rcx
	jbe	.label_207
	mov	rax, qword ptr [rax + 0x28]
	shl	rcx, 4
	mov	rdx, qword ptr [rax + rcx + 8]
	test	rdx, rdx
	je	.label_207
	mov	rdi, qword ptr [rax + rcx]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	call	fwrite_unlocked
	jmp	.label_210
.label_207:
	mov	rdi, qword ptr [rip + empty_filler]
	test	rdi, rdi
	je	.label_210
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_210:
	mov	rsi, qword ptr [rip + join_field_1]
	mov	rdx, qword ptr [rip + autocount_1]
	mov	rdi, r12
	call	prfields
	mov	rsi, qword ptr [rip + join_field_2]
	mov	rdx, qword ptr [rip + autocount_2]
	mov	rdi, r14
	call	prfields
.label_211:
	mov	al, byte ptr [rip + eolchar]
	xor	ecx, ecx
	test	al, al
	mov	esi, 0xa
	cmovne	esi, ecx
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_212
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_212:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403240

	.globl keycmp
	.type keycmp, @function
keycmp:
	push	r14
	push	rbx
	push	rax
	mov	rax, rdi
	xor	edi, edi
	cmp	qword ptr [rax + 0x18], rdx
	mov	r14d, 0
	jbe	.label_214
	mov	rax, qword ptr [rax + 0x28]
	shl	rdx, 4
	mov	rdi, qword ptr [rax + rdx]
	mov	r14, qword ptr [rax + rdx + 8]
.label_214:
	xor	r8d, r8d
	cmp	qword ptr [rsi + 0x18], rcx
	mov	ebx, 0
	jbe	.label_216
	mov	rax, qword ptr [rsi + 0x28]
	shl	rcx, 4
	mov	r8, qword ptr [rax + rcx]
	mov	rbx, qword ptr [rax + rcx + 8]
.label_216:
	test	r14, r14
	je	.label_215
	mov	eax, 1
	test	rbx, rbx
	je	.label_217
	cmp	byte ptr [rip + ignore_case],  1
	jne	.label_220
	cmp	r14, rbx
	mov	rdx, rbx
	cmovb	rdx, r14
	mov	rsi, r8
	call	memcasecmp
	jmp	.label_218
.label_215:
	neg	rbx
	sbb	eax, eax
	jmp	.label_217
.label_220:
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	je	.label_219
	mov	rsi, r14
	mov	rdx, r8
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	xmemcoll
.label_219:
	cmp	r14, rbx
	mov	rdx, rbx
	cmovb	rdx, r14
	mov	rsi, r8
	call	memcmp
.label_218:
	test	eax, eax
	jne	.label_217
	xor	ecx, ecx
	cmp	r14, rbx
	setne	cl
	mov	eax, 0xffffffff
	cmovae	eax, ecx
.label_217:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403310

	.globl get_line
	.type get_line, @function
get_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	ebx, edx
	mov	rbp, rsi
	mov	r14, rdi
	mov	r12, qword ptr [rbp]
	movsxd	r13, ebx
	cmp	r12, qword ptr [(r13 * 8) + label_223]
	jne	.label_224
	mov	rax, qword ptr [(r13 * 8) + label_230]
	mov	qword ptr [(r13 * 8) + label_230],  r12
	mov	qword ptr [rbp], rax
	mov	r12, rax
.label_224:
	test	r12, r12
	je	.label_237
	mov	qword ptr [r12 + 0x18], 0
	jmp	.label_238
.label_237:
	mov	edi, 1
	mov	esi, 0x30
	call	xcalloc
	mov	r12, rax
	mov	qword ptr [rbp], r12
.label_238:
	mov	al, byte ptr [rip + eolchar]
	test	al, al
	jne	.label_245
	mov	al, 0xa
	jmp	.label_246
.label_245:
	xor	eax, eax
.label_246:
	movzx	edx, al
	mov	rdi, r12
	mov	rsi, r14
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_250
	mov	dword ptr [rsp + 0x1c], ebx
	inc	qword ptr [(r13 * 8) + label_252]
	mov	rbp, qword ptr [r12 + 8]
	mov	r14, qword ptr [r12 + 0x10]
	lea	rax, [r14 + rbp - 1]
	mov	qword ptr [rsp + 0x10], rax
	cmp	r14, rax
	je	.label_227
	mov	r15d, dword ptr [rip + tab]
	test	r15d, r15d
	js	.label_259
	cmp	r15d, 0xa
	je	.label_259
	mov	rdx, qword ptr [rsp + 0x10]
	sub	rdx, r14
	mov	rdi, r14
	mov	esi, r15d
	call	memchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_226
	mov	rbp, qword ptr [r12 + 0x18]
	nop	word ptr cs:[rax + rax]
.label_267:
	mov	rsi, qword ptr [r12 + 0x20]
	cmp	rbp, rsi
	jae	.label_241
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_225
	nop	word ptr cs:[rax + rax]
.label_241:
	mov	rdi, qword ptr [r12 + 0x28]
	test	rdi, rdi
	je	.label_228
	movabs	rax, 0x555555555555555
	cmp	rsi, rax
	jae	.label_231
	mov	rax, rsi
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	jmp	.label_236
.label_228:
	test	rsi, rsi
	mov	eax, 8
	cmove	rsi, rax
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_240
.label_236:
	mov	qword ptr [r12 + 0x20], rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [r12 + 0x28], rax
	mov	rbp, qword ptr [r12 + 0x18]
	mov	r15d, dword ptr [rip + tab]
.label_225:
	mov	rcx, rbx
	sub	rcx, r14
	mov	rdx, rbp
	shl	rdx, 4
	mov	qword ptr [rax + rdx], r14
	mov	qword ptr [rax + rdx + 8], rcx
	inc	rbp
	mov	qword ptr [r12 + 0x18], rbp
	mov	r14, rbx
	inc	r14
	mov	rdx, qword ptr [rsp + 0x10]
	sub	rdx, r14
	mov	rdi, r14
	mov	esi, r15d
	call	memchr
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_267
	jmp	.label_226
.label_250:
	test	byte ptr [r14], 0x20
	jne	.label_264
	test	r12, r12
	je	.label_266
	mov	rdi, qword ptr [r12 + 0x28]
	call	free
	mov	qword ptr [r12 + 0x28], 0
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	xor	eax, eax
	jmp	.label_222
.label_259:
	test	r15d, r15d
	jns	.label_226
	lea	rbx, [r14 + rbp]
	call	__ctype_b_loc
	mov	r8, rax
	mov	rax, qword ptr [r8]
	dec	rbp
	nop	word ptr [rax + rax]
.label_239:
	movzx	ecx, byte ptr [r14]
	cmp	rcx, 0xa
	je	.label_233
	movzx	ecx, word ptr [rax + rcx*2]
	and	ecx, 1
	test	cx, cx
	je	.label_235
.label_233:
	inc	r14
	dec	rbp
	jne	.label_239
	jmp	.label_227
.label_266:
	xor	eax, eax
	jmp	.label_222
.label_235:
	mov	qword ptr [rsp + 0x20], r13
	jmp	.label_242
.label_262:
	add	r14, -2
.label_242:
	lea	r15, [r14 + 2]
	nop	dword ptr [rax]
.label_251:
	mov	r13b, 1
	cmp	rbx, r15
	je	.label_247
	movzx	ecx, byte ptr [r15 - 1]
	inc	r15
	cmp	rcx, 0xa
	je	.label_248
	movzx	ecx, word ptr [rax + rcx*2]
	and	ecx, 1
	test	cx, cx
	je	.label_251
.label_248:
	add	r15, -2
	xor	r13d, r13d
	jmp	.label_254
.label_247:
	mov	r15, qword ptr [rsp + 0x10]
.label_254:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rsi, qword ptr [r12 + 0x20]
	cmp	rcx, rsi
	jae	.label_255
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_258
.label_255:
	mov	rdi, qword ptr [r12 + 0x28]
	test	rdi, rdi
	je	.label_260
	movabs	rax, 0x555555555555555
	cmp	rsi, rax
	jae	.label_231
	mov	rbp, r8
	mov	rax, rsi
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	jmp	.label_265
.label_260:
	mov	rbp, r8
	test	rsi, rsi
	mov	eax, 8
	cmove	rsi, rax
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_268
.label_265:
	mov	qword ptr [r12 + 0x20], rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [r12 + 0x28], rax
	mov	rcx, qword ptr [r12 + 0x18]
	mov	r8, rbp
.label_258:
	mov	rdx, r15
	sub	rdx, r14
	mov	rsi, rcx
	shl	rsi, 4
	mov	qword ptr [rax + rsi], r14
	mov	qword ptr [rax + rsi + 8], rdx
	inc	rcx
	mov	qword ptr [r12 + 0x18], rcx
	test	r13b, r13b
	mov	r13, qword ptr [rsp + 0x20]
	jne	.label_227
	add	r15, 2
	mov	r14, r15
	nop	word ptr cs:[rax + rax]
.label_243:
	cmp	rbx, r14
	je	.label_244
	movzx	ecx, byte ptr [r14 - 1]
	inc	r14
	cmp	rcx, 0xa
	je	.label_243
	mov	rax, qword ptr [r8]
	movzx	ecx, word ptr [rax + rcx*2]
	and	ecx, 1
	test	cx, cx
	jne	.label_243
	jmp	.label_262
.label_244:
	mov	r14, qword ptr [rsp + 0x10]
.label_226:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rax, qword ptr [r12 + 0x20]
	cmp	rcx, rax
	jae	.label_253
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_221
.label_253:
	mov	rdi, qword ptr [r12 + 0x28]
	test	rdi, rdi
	je	.label_256
	movabs	rcx, 0x555555555555555
	cmp	rax, rcx
	jae	.label_231
	mov	rcx, rax
	shr	rcx, 1
	lea	rsi, [rax + rcx + 1]
	jmp	.label_261
.label_256:
	test	rax, rax
	mov	esi, 8
	cmovne	rsi, rax
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_263
.label_261:
	mov	qword ptr [r12 + 0x20], rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [r12 + 0x28], rax
	mov	rcx, qword ptr [r12 + 0x18]
.label_221:
	mov	rsi, qword ptr [rsp + 0x10]
	sub	rsi, r14
	mov	rdx, rcx
	shl	rdx, 4
	mov	qword ptr [rax + rdx], r14
	mov	qword ptr [rax + rdx + 8], rsi
	inc	rcx
	mov	qword ptr [r12 + 0x18], rcx
.label_227:
	mov	rdi, qword ptr [(r13 * 8) + label_223]
	test	rdi, rdi
	je	.label_229
	mov	eax, dword ptr [rip + check_input_order]
	cmp	eax, 1
	je	.label_234
	cmp	eax, 2
	je	.label_229
	cmp	byte ptr [rip + seen_unpairable],  1
	jne	.label_229
.label_234:
	cmp	byte ptr [r13 + seen_unpairable],  0
	jne	.label_229
	cmp	dword ptr [rsp + 0x1c], 1
	mov	eax, OFFSET FLAT:join_field_1
	mov	ecx, OFFSET FLAT:join_field_2
	cmove	rcx, rax
	mov	rdx, qword ptr [rcx]
	mov	rsi, r12
	mov	rcx, rdx
	call	keycmp
	test	eax, eax
	jle	.label_229
	mov	rax, qword ptr [r12 + 8]
	xor	ebp, ebp
	test	rax, rax
	je	.label_249
	lea	rbp, [rax - 1]
	mov	rcx, qword ptr [r12 + 0x10]
	cmp	byte ptr [rcx + rax - 1], 0xa
	cmovne	rbp, rax
.label_249:
	xor	ebx, ebx
	cmp	dword ptr [rip + check_input_order],  1
	sete	bl
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_257
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbp, 0x7fffffff
	mov	rcx, qword ptr [(r13 * 8) + ignore_case]
	mov	r8, qword ptr [(r13 * 8) + label_252]
	mov	r9d, 0x7fffffff
	cmovbe	r9d, ebp
	mov	rax, qword ptr [r12 + 0x10]
	mov	qword ptr [rsp], rax
	mov	esi, 0
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	byte ptr [r13 + seen_unpairable],  1
.label_229:
	mov	qword ptr [(r13 * 8) + label_223],  r12
	mov	al, 1
.label_222:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_231:
	call	xalloc_die
.label_240:
	call	xalloc_die
.label_264:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_232
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_263:
	call	xalloc_die
.label_268:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x403870

	.globl prfield
	.type prfield, @function
prfield:
	cmp	qword ptr [rsi + 0x18], rdi
	jbe	.label_269
	mov	rax, qword ptr [rsi + 0x28]
	shl	rdi, 4
	mov	rdx, qword ptr [rax + rdi + 8]
	test	rdx, rdx
	je	.label_271
	mov	rdi, qword ptr [rax + rdi]
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	jmp	fwrite_unlocked
.label_269:
	mov	rdi, qword ptr [rip + empty_filler]
	test	rdi, rdi
	je	.label_270
	mov	rsi, qword ptr [rip + stdout]
	jmp	fputs_unlocked
.label_271:
	mov	rdi, qword ptr [rip + empty_filler]
	test	rdi, rdi
	je	.label_270
	mov	rsi, qword ptr [rip + stdout]
	jmp	fputs_unlocked
.label_270:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4038d0

	.globl prfields
	.type prfields, @function
prfields:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	al, byte ptr [rip + autoformat]
	test	al, al
	jne	.label_278
	mov	r14, qword ptr [r15 + 0x18]
.label_278:
	mov	eax, dword ptr [rip + tab]
	test	eax, eax
	mov	r13b, 0x20
	js	.label_279
	mov	r13d, eax
.label_279:
	test	rbx, rbx
	je	.label_273
	test	r14, r14
	je	.label_273
	movzx	r12d, r13b
	xor	ebp, ebp
	jmp	.label_275
	nop	word ptr cs:[rax + rax]
.label_274:
	cmp	rbp, r14
	jb	.label_275
	jmp	.label_273
.label_272:
	mov	esi, r12d
	call	__overflow
	jmp	.label_280
	nop	word ptr cs:[rax + rax]
.label_275:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_272
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r13b
.label_280:
	mov	rdi, rbp
	mov	rsi, r15
	call	prfield
	inc	rbp
	cmp	rbp, rbx
	jb	.label_274
.label_273:
	inc	rbx
	cmp	rbx, r14
	jae	.label_277
	movsx	ebp, r13b
	nop	dword ptr [rax + rax]
.label_276:
	mov	edi, ebp
	call	putchar_unlocked
	mov	rdi, rbx
	mov	rsi, r15
	call	prfield
	inc	rbx
	cmp	r14, rbx
	jne	.label_276
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4039b0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039c0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039d0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_286
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_283
	cmp	dword ptr [rbp], 0x20
	jne	.label_283
.label_286:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_282
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_283:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_281
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_141
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_282:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_281:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_285
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
	#Procedure 0x403a90
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403aa0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_287
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_287:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ac0

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	call	fopen
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_288
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_292
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_289
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_290
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_288
.label_290:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_291
.label_292:
	mov	rax, rbx
	jmp	.label_288
.label_289:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_291:
	xor	eax, eax
.label_288:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b50

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_294
	cmp	byte ptr [rax], 0x43
	jne	.label_296
	cmp	byte ptr [rax + 1], 0
	je	.label_293
.label_296:
	mov	esi, OFFSET FLAT:label_295
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_294
.label_293:
	xor	ebx, ebx
.label_294:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b90
	.globl initbuffer
	.type initbuffer, @function
initbuffer:

	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 0x10], 0
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403ba0
	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rsi
	mov	r14, rdi
	xor	eax, eax
	test	byte ptr [r13], 0x10
	jne	.label_297
	mov	r15, qword ptr [r14 + 0x10]
	mov	r12, qword ptr [r14]
	add	r12, r15
	mov	rbx, r15
	nop	dword ptr [rax + rax]
.label_299:
	mov	rax, qword ptr [r13 + 8]
	cmp	rax, qword ptr [r13 + 0x10]
	jae	.label_301
	lea	rcx, [rax + 1]
	mov	qword ptr [r13 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_300:
	cmp	rbx, r12
	jne	.label_298
	mov	rbx, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, r14
	call	x2realloc
	mov	r15, rax
	add	rbx, r15
	mov	qword ptr [r14 + 0x10], r15
	mov	r12, r15
	add	r12, qword ptr [r14]
.label_298:
	mov	byte ptr [rbx], bpl
	inc	rbx
	cmp	ebp, 0xa
	jne	.label_299
	jmp	.label_302
.label_301:
	mov	rdi, r13
	call	__uflow
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_300
	cmp	rbx, r15
	mov	eax, 0
	je	.label_297
	test	byte ptr [r13], 0x20
	jne	.label_297
	mov	ebp, 0xa
	cmp	byte ptr [rbx - 1], 0xa
	jne	.label_300
.label_302:
	sub	rbx, r15
	mov	qword ptr [r14 + 8], rbx
	mov	rax, r14
.label_297:
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
	#Procedure 0x403c60

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
	jne	.label_303
	mov	r12, qword ptr [r15 + 0x10]
	mov	r14, qword ptr [r15]
	add	r14, r12
	mov	dword ptr [rsp + 4], edx
	movsx	edx, dl
	mov	r13, r12
	mov	dword ptr [rsp], edx
	nop	word ptr cs:[rax + rax]
.label_308:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_305
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_306:
	cmp	r13, r14
	jne	.label_307
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
.label_307:
	mov	byte ptr [r13], bl
	inc	r13
	cmp	ebx, edx
	jne	.label_308
	jmp	.label_304
.label_305:
	mov	rdi, rbp
	call	__uflow
	mov	edx, dword ptr [rsp]
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_306
	cmp	r13, r12
	mov	ecx, dword ptr [rsp + 4]
	mov	eax, 0
	je	.label_303
	test	byte ptr [rbp], 0x20
	jne	.label_303
	cmp	byte ptr [r13 - 1], cl
	mov	ebx, edx
	jne	.label_306
.label_304:
	sub	r13, r12
	mov	qword ptr [r15 + 8], r13
	mov	rax, r15
.label_303:
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
	.align	16
	#Procedure 0x403d30
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d40

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
	je	.label_309
	call	__ctype_toupper_loc
	mov	rcx, qword ptr [rax]
	xor	edx, edx
	nop	
.label_310:
	movzx	eax, byte ptr [r15 + rdx]
	mov	eax, dword ptr [rcx + rax*4]
	movzx	esi, byte ptr [r14 + rdx]
	sub	eax, dword ptr [rcx + rsi*4]
	jne	.label_309
	inc	rdx
	xor	eax, eax
	cmp	rdx, rbx
	jb	.label_310
.label_309:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d90

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_314
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_313
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_311
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_313
	mov	esi, OFFSET FLAT:label_316
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_312
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_312:
	mov	rbx, r14
.label_313:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_314:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_315
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e40
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
	#Procedure 0x403e80
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
	#Procedure 0x403e90
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
	#Procedure 0x403ea0
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
	#Procedure 0x403ee0
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
	#Procedure 0x403f00
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_317
	test	rdx, rdx
	je	.label_317
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_317:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f30
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
	#Procedure 0x403fb0

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
	jmp	.label_367
	nop	
.label_365:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_341
	or	al, dl
	jne	.label_341
	test	dil, 1
	jne	.label_363
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_341
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_367
	jmp	.label_341
.label_632:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_413
	test	rbp, rbp
	je	.label_377
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_377:
	mov	r14d, 1
	jmp	.label_380
.label_633:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_382
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_324
.label_413:
	xor	r14d, r14d
.label_380:
	mov	eax, OFFSET FLAT:label_382
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_393
	nop	
.label_367:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_401
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_407]
.label_634:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_414
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_348
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_635:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_330
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_330
	xor	r14d, r14d
	nop	
.label_378:
	cmp	r14, rbp
	jae	.label_433
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_433:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_378
.label_330:
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
	jmp	.label_324
.label_627:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_324
.label_630:
	mov	al, 1
.label_628:
	mov	r12b, 1
.label_631:
	test	r12b, 1
	mov	cl, 1
	je	.label_331
	mov	ecx, eax
.label_331:
	mov	al, cl
.label_629:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_333
	test	rbp, rbp
	je	.label_340
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_340:
	mov	r14d, 1
	jmp	.label_428
.label_333:
	xor	r14d, r14d
.label_428:
	mov	ecx, OFFSET FLAT:label_348
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_393:
	mov	sil, r12b
.label_324:
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
	jmp	.label_354
	nop	word ptr cs:[rax + rax]
.label_323:
	inc	r12
.label_354:
	cmp	r11, -1
	je	.label_388
	cmp	r12, r11
	jne	.label_390
	jmp	.label_392
	nop	word ptr cs:[rax + rax]
.label_388:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_371
.label_390:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_402
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_405
	cmp	r11, -1
	jne	.label_405
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_405:
	cmp	rbx, r11
	jbe	.label_418
.label_402:
	xor	esi, esi
.label_387:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_419
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_422]
.label_666:
	test	r12, r12
	jne	.label_376
	jmp	.label_426
	nop	word ptr cs:[rax + rax]
.label_418:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_435
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_387
	jmp	.label_318
.label_435:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_387
.label_670:
	xor	eax, eax
	cmp	r11, -1
	je	.label_321
	test	r12, r12
	jne	.label_327
	cmp	r11, 1
	je	.label_426
	xor	r13d, r13d
	jmp	.label_342
.label_659:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_335
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_318
	cmp	r8d, 2
	jne	.label_344
	mov	eax, r9d
	and	al, 1
	jne	.label_344
	cmp	r14, rbp
	jae	.label_349
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_349:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_351
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_351:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_358
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_358:
	add	r14, 3
	mov	r9b, 1
.label_344:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_362
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_362:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_361
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_361
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_361
	cmp	r14, rbp
	jae	.label_381
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_381:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_406
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_406:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_342
.label_660:
	mov	bl, 0x62
	jmp	.label_356
.label_661:
	mov	cl, 0x74
	jmp	.label_383
.label_662:
	mov	bl, 0x76
	jmp	.label_356
.label_663:
	mov	bl, 0x66
	jmp	.label_356
.label_664:
	mov	cl, 0x72
	jmp	.label_383
.label_667:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_398
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_350
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
	jae	.label_408
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_408:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_420
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_420:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_424
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_424:
	add	r14, 3
	xor	r9d, r9d
.label_398:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_342
.label_668:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_429
	cmp	r8d, 2
	jne	.label_376
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_376
	jmp	.label_350
.label_669:
	cmp	r8d, 2
	jne	.label_439
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_350
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_425
.label_419:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_443
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_332
.label_321:
	test	r12, r12
	jne	.label_347
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_347
.label_426:
	mov	dl, 1
.label_665:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_350
	xor	eax, eax
	mov	r13b, dl
.label_342:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_355
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_359
	jmp	.label_360
	nop	word ptr cs:[rax + rax]
.label_355:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_360
.label_359:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_364
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_369
	nop	dword ptr [rax]
.label_360:
	test	sil, sil
.label_369:
	mov	ebx, r15d
	je	.label_372
	jmp	.label_375
.label_364:
	mov	ebx, r15d
	jmp	.label_375
.label_335:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_323
	xor	r15d, r15d
	jmp	.label_376
.label_439:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_383
	xor	eax, eax
	mov	r15b, 0x5c
.label_425:
	xor	r13d, r13d
	jmp	.label_372
.label_383:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_350
.label_356:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_342
	nop	
.label_375:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_318
	cmp	r8d, 2
	jne	.label_399
	mov	eax, r9d
	and	al, 1
	jne	.label_399
	cmp	r14, rbp
	jae	.label_404
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_404:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_409
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_409:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_412
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_412:
	add	r14, 3
	mov	r9b, 1
.label_399:
	cmp	r14, rbp
	jae	.label_368
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_368:
	inc	r14
	jmp	.label_389
.label_443:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_423
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_423:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_442
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_431:
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
	je	.label_319
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_444
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_346
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_338
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_329:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_345
	bt	rsi, rdx
	jb	.label_350
.label_345:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_329
.label_338:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_328
	xor	r13d, r13d
.label_328:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_431
	jmp	.label_326
.label_361:
	xor	r13d, r13d
	jmp	.label_342
.label_347:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_342
.label_429:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_376
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_376
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_376
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_386
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_337
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_395
	cmp	r14, rbp
	jae	.label_396
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_396:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_403
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_403:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_427
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_427:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_370
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_370:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_337:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_342
.label_376:
	xor	eax, eax
.label_327:
	xor	r13d, r13d
	jmp	.label_342
.label_442:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_320:
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
	je	.label_436
	cmp	rbp, -1
	je	.label_438
	cmp	rbp, -2
	je	.label_319
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_441
	xor	r13d, r13d
.label_441:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_320
	jmp	.label_326
.label_319:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_336
	lea	rax, [r10 + r12]
.label_400:
	cmp	byte ptr [rax + rsi], 0
	je	.label_336
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_400
.label_336:
	mov	qword ptr [rsp + 0x40], rsi
.label_444:
	xor	r13d, r13d
	jmp	.label_346
.label_438:
	xor	r13d, r13d
.label_436:
	mov	r10, qword ptr [rsp + 0x28]
.label_346:
	mov	r12, qword ptr [rsp + 0x40]
.label_326:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_332:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_322
	test	al, al
	je	.label_322
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_342
.label_322:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_366
	nop	word ptr [rax + rax]
.label_325:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_366:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_374
	test	sil, 1
	je	.label_385
	cmp	r14, rbp
	jae	.label_379
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_379:
	inc	r14
	xor	esi, esi
	jmp	.label_385
	nop	word ptr cs:[rax + rax]
.label_374:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_318
	cmp	r8d, 2
	jne	.label_353
	mov	eax, r9d
	and	al, 1
	jne	.label_353
	cmp	r14, rbp
	jae	.label_394
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_394:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_397
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_397:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_391
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_391:
	add	r14, 3
	mov	r9b, 1
.label_353:
	cmp	r14, rbp
	jae	.label_410
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_410:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_416
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_416:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_421
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_421:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_385:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_372
	test	r9b, 1
	je	.label_430
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_357
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_434
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_434:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_440
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_440:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_430
	nop	word ptr cs:[rax + rax]
.label_357:
	mov	rbx, rcx
.label_430:
	cmp	r14, rbp
	jae	.label_325
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_325
	nop	
.label_372:
	test	r9b, 1
	je	.label_334
	and	al, 1
	jne	.label_334
	cmp	r14, rbp
	jae	.label_339
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_339:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_384
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_384:
	add	r14, 2
	xor	r9d, r9d
.label_334:
	mov	ebx, r15d
.label_389:
	cmp	r14, rbp
	jae	.label_352
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_352:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_323
.label_386:
	xor	r13d, r13d
	jmp	.label_342
	nop	word ptr cs:[rax + rax]
.label_392:
	mov	rcx, r12
.label_371:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_365
	or	al, dl
	jne	.label_365
	mov	r11, rcx
	jmp	.label_318
.label_350:
	mov	eax, 2
.label_437:
	mov	qword ptr [rsp + 0x38], rax
.label_318:
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
.label_373:
	mov	r14, rax
.label_432:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_341:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_411
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_343
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_343
	inc	rdx
	nop	dword ptr [rax + rax]
.label_417:
	cmp	r14, rbp
	jae	.label_415
	mov	byte ptr [rcx + r14], al
.label_415:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_417
	jmp	.label_343
.label_363:
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
	jmp	.label_373
.label_411:
	mov	rcx, qword ptr [rsp + 0x10]
.label_343:
	cmp	r14, rbp
	jae	.label_432
	mov	byte ptr [rcx + r14], 0
	jmp	.label_432
.label_395:
	mov	eax, 5
	jmp	.label_437
.label_401:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404de0
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
	#Procedure 0x404eb0
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
	je	.label_445
	mov	qword ptr [rax], rbx
.label_445:
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
	#Procedure 0x404fa0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_446
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_449:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_449
.label_446:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_450
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_448], OFFSET FLAT:slot0
.label_450:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_447
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_447:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405040
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405050

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
	js	.label_454
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_457
	cmp	r12d, 0x7fffffff
	je	.label_452
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
	jne	.label_455
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_455:
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
.label_457:
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
	jbe	.label_453
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_456
.label_453:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_451
	mov	rdi, r14
	call	free
.label_451:
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
.label_456:
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
.label_454:
	call	abort
.label_452:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405210
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405220
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
	#Procedure 0x405240
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
	#Procedure 0x405260
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
	je	.label_458
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
.label_458:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4052d0

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
	je	.label_459
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
.label_459:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405340

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
	je	.label_460
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
.label_460:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053b0
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
	je	.label_461
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
.label_461:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405420
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_462]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_463]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_464]
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
	#Procedure 0x405490
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_462]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_463]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_464]
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
	#Procedure 0x405500

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_462]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_463]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_464]
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
	#Procedure 0x405560
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_462]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_463]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_464]
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
	#Procedure 0x4055c0

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
	je	.label_465
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
.label_465:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405660
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_462]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_463]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_464]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_466
	test	rdx, rdx
	je	.label_466
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_466:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4056d0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_462]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_463]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_464]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_467
	test	rdx, rdx
	je	.label_467
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_467:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405740
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_462]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_463]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_464]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_468
	test	rsi, rsi
	je	.label_468
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_468:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4057b0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_462]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_463]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_464]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_469
	test	rsi, rsi
	je	.label_469
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
.label_469:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405820
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405830
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
	#Procedure 0x405850
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405870

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
	#Procedure 0x405890

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
	jne	.label_474
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_478
	cmp	ecx, 0x55
	jne	.label_470
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_470
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_470
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_470
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_470
	cmp	byte ptr [rax + 5], 0
	jne	.label_470
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_476
	mov	eax, OFFSET FLAT:label_477
	jmp	.label_473
.label_478:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_470
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_470
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_470
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_470
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_470
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_470
	cmp	byte ptr [rax + 7], 0
	je	.label_475
.label_470:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_382
	mov	eax, OFFSET FLAT:label_348
.label_473:
	cmove	rax, rcx
.label_474:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_475:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_471
	mov	eax, OFFSET FLAT:label_472
	jmp	.label_473
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405960

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	16
	#Procedure 0x405970

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
	je	.label_494
	mov	edx, OFFSET FLAT:label_484
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_491
.label_494:
	mov	edx, OFFSET FLAT:label_492
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_491:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_497
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
	mov	esi, OFFSET FLAT:label_493
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_480
	jmp	qword ptr [(r12 * 8) + label_481]
.label_694:
	add	rsp, 8
	jmp	.label_479
.label_480:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_488
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
	jmp	.label_479
.label_695:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_489
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
.label_696:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_496
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
.label_697:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_486
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
.label_698:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_482
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
	jmp	.label_479
.label_699:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_485
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
	jmp	.label_479
.label_700:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_483
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
	jmp	.label_479
.label_701:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_487
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
	jmp	.label_479
.label_703:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_490
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
	jmp	.label_479
.label_702:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_495
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
.label_479:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405cd0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_498:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_498
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d00

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_499
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_501
.label_499:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_501:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_502
	cmp	r10d, 0x29
	jae	.label_511
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_500
.label_511:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_500:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_502
	cmp	r10d, 0x29
	jae	.label_509
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_510
.label_509:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_510:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_502
	cmp	r10d, 0x29
	jae	.label_507
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_508
.label_507:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_508:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_502
	cmp	r10d, 0x29
	jae	.label_505
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_506
.label_505:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_506:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_502
	cmp	r10d, 0x29
	jae	.label_503
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_504
.label_503:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_504:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_502
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_502
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_502
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_502
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_502:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ef0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_512
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_512:
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
	#Procedure 0x405f80
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_513
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_514
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_516
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_22
	mov	ecx, OFFSET FLAT:label_11
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_515
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406000
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_517
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_518
	test	rax, rax
	je	.label_517
.label_518:
	pop	rbx
	ret	
.label_517:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406040

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_519
	test	rax, rax
	je	.label_520
.label_519:
	pop	rbx
	ret	
.label_520:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406060
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_521
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_522
	test	rbx, rbx
	jne	.label_522
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_522:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_523
	test	rax, rax
	je	.label_521
.label_523:
	pop	rbx
	ret	
.label_521:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060b0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_524
	test	rbx, rbx
	jne	.label_524
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_524:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_526
	test	rax, rax
	je	.label_525
.label_526:
	pop	rbx
	ret	
.label_525:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4060e0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_527
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_530
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_528
.label_527:
	test	rcx, rcx
	jne	.label_533
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_533:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_529
.label_528:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_532
	test	rbx, rbx
	jne	.label_532
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_532:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_531
	test	rax, rax
	je	.label_530
.label_531:
	pop	rbx
	ret	
.label_530:
	call	xalloc_die
.label_529:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406180
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_534
	test	rax, rax
	je	.label_535
.label_534:
	pop	rbx
	ret	
.label_535:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061a0

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_536
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_539
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_540
	call	free
	xor	eax, eax
	jmp	.label_537
.label_536:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_538
	mov	qword ptr [rsi], rbx
.label_540:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_537
	test	rax, rax
	je	.label_538
.label_537:
	pop	rbx
	ret	
.label_538:
	call	xalloc_die
.label_539:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406210
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
	je	.label_542
	test	r14, r14
	je	.label_541
.label_542:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_541:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406250

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_543
	call	rpl_calloc
	test	rax, rax
	je	.label_543
	pop	rcx
	ret	
.label_543:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406280

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
	je	.label_544
	test	r15, r15
	je	.label_545
.label_544:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_545:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4062c0
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
	je	.label_547
	test	r15, r15
	je	.label_546
.label_547:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_546:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406310

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_548
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_141
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406340

	.globl xmemcoll
	.type xmemcoll, @function
xmemcoll:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rcx
	mov	r12, rdx
	mov	r14, rsi
	mov	r15, rdi
	call	memcoll
	mov	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	test	ebx, ebx
	je	.label_549
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_550
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_551
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	eax, dword ptr [rip + exit_failure]
	mov	dword ptr [rsp + 4], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_552
	mov	edx, 5
	call	dcgettext
	mov	rbx, r13
	mov	r13, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r15
	mov	rcx, r14
	call	quotearg_n_style_mem
	mov	r14, rax
	mov	edi, 1
	mov	esi, 8
	mov	rdx, r12
	mov	rcx, rbx
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, dword ptr [rsp + 4]
	mov	rdx, r13
	mov	rcx, r14
	mov	r8, rbx
	call	error
.label_549:
	mov	eax, ebp
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
	#Procedure 0x406430
	.globl xmemcoll0
	.type xmemcoll0, @function
xmemcoll0:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r15, rdx
	mov	rbp, rsi
	mov	r12, rdi
	call	memcoll0
	mov	r13d, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	test	ebx, ebx
	je	.label_553
	dec	rbp
	dec	r14
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_550
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_551
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	eax, dword ptr [rip + exit_failure]
	mov	dword ptr [rsp + 4], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_552
	mov	edx, 5
	call	dcgettext
	mov	rbx, r15
	mov	r15d, r13d
	mov	r13, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r12
	mov	rcx, rbp
	call	quotearg_n_style_mem
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 8
	mov	rdx, rbx
	mov	rcx, r14
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, dword ptr [rsp + 4]
	mov	rdx, r13
	mov	r13d, r15d
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_553:
	mov	eax, r13d
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
	#Procedure 0x406530

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
	jae	.label_564
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_554:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_554
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_556
	mov	rdi, rbx
	mov	edx, r12d
	mov	qword ptr [rsp + 8], rsi
	call	strtoul
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	r12, qword ptr [rax]
	cmp	r12, rbx
	je	.label_569
	mov	eax, dword ptr [r15]
	xor	ebx, ebx
	test	eax, eax
	je	.label_572
	cmp	eax, 0x22
	jne	.label_556
	mov	ebx, 1
.label_572:
	test	r14, r14
	jne	.label_574
	jmp	.label_559
.label_569:
	test	r14, r14
	je	.label_556
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_556
	mov	rdi, r14
	call	strchr
	xor	ebx, ebx
	mov	ebp, 1
	test	rax, rax
	je	.label_556
.label_574:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_559
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_563
	mov	r15d, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_558
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_558
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_558
	movsx	eax, byte ptr [r12 + 1]
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_561
	cmp	eax, 0x44
	je	.label_561
	cmp	eax, 0x69
	jne	.label_558
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	r15, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_558
.label_561:
	mov	r15d, 2
	mov	esi, 0x3e8
.label_558:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_563
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_571]
.label_709:
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
	jmp	.label_573
.label_563:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	jmp	.label_560
.label_710:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_565
.label_711:
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
	jmp	.label_573
.label_713:
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
	jmp	.label_573
.label_707:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x36
	setne	al
	shl	rbp, 0xa
	jmp	.label_555
.label_708:
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
.label_573:
	and	dl, 1
	movzx	eax, dl
	jmp	.label_562
.label_712:
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
	jmp	.label_562
.label_714:
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
	jmp	.label_570
.label_715:
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
.label_570:
	movzx	eax, dl
.label_565:
	and	eax, 1
.label_562:
	mov	rbp, rsi
.label_557:
	or	eax, ebx
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rcx
	lea	ebx, [rax + 2]
	cmp	byte ptr [r12 + r15], 0
	cmove	ebx, eax
.label_559:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_560:
	mov	r13d, ebx
.label_556:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_716:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x37
	setne	al
	shl	rbp, 9
.label_555:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	rbp, rdx
	jmp	.label_557
.label_717:
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_557
.label_564:
	mov	edi, OFFSET FLAT:label_566
	mov	esi, OFFSET FLAT:label_567
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_568
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406b50

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_575
	test	rsi, rsi
	mov	ecx, 1
	je	.label_576
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_576
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_575:
	mov	ecx, 1
.label_576:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ba0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_577
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_578
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_577
.label_578:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_577
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_579
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_579:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_577:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c20

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_585
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_585:
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
	ja	.label_589
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_587
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_596
	test	esi, esi
	jne	.label_589
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_590
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_592
.label_589:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_591
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_596
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_598
.label_587:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_581
.label_596:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_582
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_583
.label_582:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_583:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_584:
	call	fcntl
.label_581:
	mov	ebp, eax
.label_580:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_598:
	cmp	eax, 6
	jne	.label_591
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_594
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_595
.label_591:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_597
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_600
.label_590:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_592:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_584
.label_594:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_595:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_588
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_593
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_593
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_580
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_599
.label_593:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_580
.label_597:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_600:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_581
.label_588:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_599:
	test	al, al
	je	.label_580
	test	ebp, ebp
	js	.label_580
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_586
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_580
.label_586:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_580
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ec0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_601
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_601
	test	byte ptr [rbx + 1], 1
	je	.label_601
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_601:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f00

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
	jne	.label_602
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_602
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_603
.label_602:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_603:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_604
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_604:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406f70

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
	je	.label_605
	cmp	r15, -2
	jb	.label_605
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_605
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_605:
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
	#Procedure 0x406fd0

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
	jne	.label_607
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_606
	test	cl, cl
	jne	.label_606
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_606
.label_607:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_606
	call	__errno_location
	mov	dword ptr [rax], 0
.label_606:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407030

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_76
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_608
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407060

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
	jne	.label_609
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	je	.label_613
.label_609:
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
.label_611:
	mov	dword ptr [rbx], 0
	mov	rdi, r14
	mov	rsi, rbp
	call	strcoll
	test	eax, eax
	jne	.label_610
	mov	rdi, r14
	call	strlen
	mov	r12, rax
	inc	r12
	mov	rdi, rbp
	call	strlen
	inc	rax
	sub	r15, rax
	sub	r13, r12
	je	.label_612
	add	rbp, rax
	add	r14, r12
	mov	eax, 1
	test	r15, r15
	jne	.label_611
	jmp	.label_610
.label_612:
	neg	r15
	sbb	eax, eax
.label_610:
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	mov	bl, byte ptr [rsp + 7]
	mov	byte ptr [rdx + rcx], bl
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	bl, byte ptr [rsp + 6]
	mov	byte ptr [rdx + rcx], bl
	jmp	.label_614
.label_613:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_614:
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
	#Procedure 0x407170

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
	jne	.label_617
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	call	memcmp
	test	eax, eax
	je	.label_618
.label_617:
	call	__errno_location
	mov	r13, rax
	nop	word ptr cs:[rax + rax]
.label_616:
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rsi, r12
	call	strcoll
	test	eax, eax
	jne	.label_615
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	rdi, r12
	call	strlen
	inc	rax
	sub	r14, rax
	sub	r15, rbp
	je	.label_619
	add	r12, rax
	add	rbx, rbp
	mov	eax, 1
	test	r14, r14
	jne	.label_616
	jmp	.label_615
.label_619:
	neg	r14
	sbb	eax, eax
	jmp	.label_615
.label_618:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_615:
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
	.align	16
	#Procedure 0x407220

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
