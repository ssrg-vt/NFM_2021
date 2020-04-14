	.section	.text
	.align	32
	#Procedure 0x401740

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
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
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
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.11
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.11
	mov	ecx, OFFSET FLAT:.str.45
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
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
	#Procedure 0x4019a0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	rbx, rsi
	mov	ebp, edi
	mov	dword ptr [rsp + 0x68], 0
	mov	qword ptr [rsp + 0x58], 0
	mov	dword ptr [rsp + 0x54], 0
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.13
	mov	esi, OFFSET FLAT:.str.14
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.13
	call	textdomain
	mov	edi, 3
	call	hard_locale
	mov	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  al
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	edi, OFFSET FLAT:free_spareline
	call	atexit
	mov	byte ptr [byte ptr [rip + print_pairables]],  1
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  0
	mov	byte ptr [byte ptr [rip + label_19]],  0
	mov	byte ptr [byte ptr [rip + issued_disorder_warning]],  0
	mov	dword ptr [dword ptr [rip + check_input_order]],  0
	mov	edx, OFFSET FLAT:.str.15
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, -1
	je	.label_32
	lea	r13, [rsp + 0x68]
	lea	r14, [rsp + 0x6c]
	jmp	.label_36
.label_52:
	movzx	eax, al
	cmp	eax, 0x32
	sete	al
	movzx	eax, al
	inc	dword ptr [rsp + rax*4 + 0x58]
	inc	eax
	mov	dword ptr [rsp + 0x6c], eax
	jmp	.label_39
	nop	dword ptr [rax]
.label_36:
	mov	dword ptr [rsp + 0x6c], 0
	cmp	eax, 0x6e
	jg	.label_42
	cmp	eax, 0x30
	jle	.label_46
	lea	ecx, [rax - 0x61]
	cmp	ecx, 9
	ja	.label_51
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_56]]
.label_579:
	mov	r15, rbx
	mov	ebx, ebp
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	test	rdi, rdi
	je	.label_59
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	rsi, rbp
	call	strcmp
	test	eax, eax
	je	.label_69
	jmp	.label_70
	nop	word ptr [rax + rax]
.label_42:
	lea	ecx, [rax - 0x74]
	cmp	ecx, 0xe
	ja	.label_76
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_80]]
.label_598:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	dl, byte ptr [rax]
	mov	cl, 0xa
	test	dl, dl
	je	.label_81
	mov	cl, byte ptr [rax + 1]
	test	cl, cl
	je	.label_89
	movzx	edx, dl
	cmp	edx, 0x5c
	jne	.label_91
	movzx	ecx, cl
	cmp	ecx, 0x30
	jne	.label_91
	cmp	byte ptr [rax + 2], 0
	jne	.label_91
	xor	ecx, ecx
	jmp	.label_81
	nop	word ptr [rax + rax]
.label_46:
	cmp	eax, 1
	jne	.label_102
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsp + 0x60]
	lea	rdx, [rsp + 0x58]
	lea	rcx, [rsp + 0x54]
	mov	r8, r13
	mov	r9, r14
	call	add_file_name
	mov	eax, dword ptr [rsp + 0x6c]
	jmp	.label_39
.label_51:
	cmp	eax, 0x31
	je	.label_114
	cmp	eax, 0x32
	jne	.label_77
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	string_to_join_field
	mov	r15, rax
	jmp	.label_119
.label_76:
	cmp	eax, 0x6f
	jne	.label_77
	mov	r15, rbx
	mov	ebx, ebp
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	esi, OFFSET FLAT:.str.18_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_125
	mov	rdi, rbp
	call	add_field_list
	mov	dword ptr [rsp + 0x6c], 3
	mov	eax, 3
	jmp	.label_128
.label_599:
	mov	byte ptr [byte ptr [rip + print_pairables]],  0
.label_578:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	lea	rcx, [rsp + 0x70]
	call	xstrtoul
	test	eax, eax
	jne	.label_15
	mov	rax, qword ptr [rsp + 0x70]
	lea	rcx, [rax - 1]
	cmp	rcx, 2
	jae	.label_15
	cmp	rax, 1
	jne	.label_100
	mov	byte ptr [byte ptr [rip + print_unpairables_1]],  1
	jmp	.label_24
.label_600:
	mov	byte ptr [byte ptr [rip + eolchar]],  1
	jmp	.label_24
.label_601:
	mov	dword ptr [dword ptr [rip + check_input_order]],  1
	jmp	.label_24
.label_602:
	mov	dword ptr [dword ptr [rip + check_input_order]],  2
	jmp	.label_24
.label_603:
	mov	byte ptr [byte ptr [rip + join_header_lines]],  1
	jmp	.label_24
.label_100:
	mov	byte ptr [byte ptr [rip + print_unpairables_2]],  1
	jmp	.label_24
.label_580:
	mov	byte ptr [byte ptr [rip + ignore_case]],  1
	jmp	.label_24
.label_581:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	al, byte ptr [rdi]
	mov	cl, al
	add	cl, 0xcf
	movzx	ecx, cl
	cmp	ecx, 1
	ja	.label_41
	cmp	byte ptr [rdi + 1], 0
	jne	.label_41
	movsxd	rcx,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rbx + rcx*8 - 8]
	add	rcx, 2
	cmp	rdi, rcx
	je	.label_52
.label_41:
	call	string_to_join_field
	mov	r15, rax
	mov	r12,  qword ptr [word ptr [rip + join_field_1]]
	cmp	r12, -1
	je	.label_65
	cmp	r12, r15
	jne	.label_67
.label_65:
	mov	qword ptr [word ptr [rip + join_field_1]],  r15
.label_119:
	mov	r12,  qword ptr [word ptr [rip + join_field_2]]
	cmp	r12, -1
	je	.label_71
	cmp	r12, r15
	jne	.label_67
.label_71:
	mov	qword ptr [word ptr [rip + join_field_2]],  r15
	jmp	.label_24
.label_114:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	string_to_join_field
	mov	r15, rax
	mov	r12,  qword ptr [word ptr [rip + join_field_1]]
	cmp	r12, -1
	je	.label_86
	cmp	r12, r15
	jne	.label_67
.label_86:
	mov	qword ptr [word ptr [rip + join_field_1]],  r15
	jmp	.label_24
.label_125:
	mov	byte ptr [byte ptr [rip + autoformat]],  1
	jmp	.label_94
.label_59:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
.label_69:
	mov	qword ptr [word ptr [rip + empty_filler]],  rbp
.label_94:
	xor	eax, eax
.label_128:
	mov	ebp, ebx
	mov	rbx, r15
	jmp	.label_39
.label_89:
	mov	cl, dl
.label_81:
	mov	edx,  dword ptr [dword ptr [rip + tab]]
	test	edx, edx
	movzx	eax, cl
	js	.label_105
	cmp	edx, eax
	jne	.label_107
.label_105:
	mov	dword ptr [dword ptr [rip + tab]],  eax
	nop	word ptr cs:[rax + rax]
.label_24:
	xor	eax, eax
.label_39:
	mov	dword ptr [rsp + 0x68], eax
	mov	edx, OFFSET FLAT:.str.15
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, -1
	jne	.label_36
.label_32:
	mov	dword ptr [rsp + 0x68], 0
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebp
	jge	.label_120
	lea	r12, [rsp + 0x58]
	lea	r14, [rsp + 0x54]
	lea	r15, [rsp + 0x68]
	lea	r13, [rsp + 0x6c]
	nop	dword ptr [rax]
.label_133:
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	cdqe	
	mov	rdi, qword ptr [rbx + rax*8]
	lea	rsi, [rsp + 0x60]
	mov	rdx, r12
	mov	rcx, r14
	mov	r8, r15
	mov	r9, r13
	call	add_file_name
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebp
	jl	.label_133
.label_120:
	mov	eax, dword ptr [rsp + 0x54]
	cmp	eax, 2
	jne	.label_135
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_11
	mov	rbx,  qword ptr [word ptr [rip + join_field_1]]
	mov	ebp, 1
	lea	rax, [rbx + 1]
	cmp	rax, 2
	jae	.label_16
	mov	qword ptr [word ptr [rip + join_field_1]],  0
	mov	ebx, 1
	mov	rbp,  qword ptr [word ptr [rip + join_field_2]]
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jae	.label_84
	mov	qword ptr [word ptr [rip + join_field_2]],  0
.label_11:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbx,  qword ptr [word ptr [rip + join_field_1]]
	je	.label_22
	mov	ebp, 2
	cmp	rbx, 1
	je	.label_37
	cmp	rbx, -1
	jne	.label_16
.label_37:
	mov	qword ptr [word ptr [rip + join_field_1]],  1
	mov	ebx, 2
	mov	rbp,  qword ptr [word ptr [rip + join_field_2]]
	cmp	rbp, 1
	je	.label_40
	cmp	rbp, -1
	jne	.label_84
.label_40:
	mov	qword ptr [word ptr [rip + join_field_2]],  1
	jmp	.label_64
.label_22:
	cmp	rbx, -1
	jne	.label_57
	mov	qword ptr [word ptr [rip + join_field_1]],  0
.label_57:
	cmp	qword ptr [word ptr [rip + join_field_2]],  -1
	jne	.label_64
	mov	qword ptr [word ptr [rip + join_field_2]],  0
.label_64:
	mov	rdi,  qword ptr [word ptr [rip + g_names]]
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	jne	.label_68
	cmp	byte ptr [rdi + 1], 0
	je	.label_73
.label_68:
	mov	esi, OFFSET FLAT:.str.27
	call	fopen_safer
	mov	rbp, rax
	jmp	.label_126
.label_73:
	mov	rbp,  qword ptr [word ptr [rip + stdin]]
.label_126:
	mov	qword ptr [rsp + 0x30], rbp
	test	rbp, rbp
	je	.label_82
	mov	rdi,  qword ptr [word ptr [rip + label_87]]
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	jne	.label_88
	cmp	byte ptr [rdi + 1], 0
	je	.label_66
.label_88:
	mov	esi, OFFSET FLAT:.str.27
	call	fopen_safer
	mov	r13, rax
	jmp	.label_93
.label_66:
	mov	r13,  qword ptr [word ptr [rip + stdin]]
.label_93:
	mov	qword ptr [rsp + 0x10], r13
	test	r13, r13
	je	.label_49
	cmp	rbp, r13
	je	.label_101
	mov	esi, 2
	mov	rdi, rbp
	call	fadvise
	mov	esi, 2
	mov	rdi, r13
	call	fadvise
	xor	edi, edi
	mov	esi, 0x80
	call	xrealloc
	mov	r12, rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x70], xmm0
	movups	xmmword ptr [r12 + 0x60], xmm0
	movups	xmmword ptr [r12 + 0x50], xmm0
	movups	xmmword ptr [r12 + 0x40], xmm0
	movups	xmmword ptr [r12 + 0x30], xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	movups	xmmword ptr [r12 + 0x10], xmm0
	movups	xmmword ptr [r12], xmm0
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, r12
	call	get_line
	mov	bl, al
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
	movzx	ebx, bl
	mov	edx, 2
	mov	rdi, r13
	mov	rsi, r14
	call	get_line
	movzx	r15d, al
	movzx	eax,  byte ptr [byte ptr [rip + autoformat]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_12
	xor	eax, eax
	test	rbx, rbx
	je	.label_20
	mov	rax, qword ptr [r12]
	mov	rax, qword ptr [rax + 0x18]
.label_20:
	mov	qword ptr [word ptr [rip + autocount_1]],  rax
	xor	eax, eax
	test	r15, r15
	je	.label_23
	mov	rax, qword ptr [r14]
	mov	rax, qword ptr [rax + 0x18]
.label_23:
	mov	qword ptr [word ptr [rip + autocount_2]],  rax
.label_12:
	movzx	eax,  byte ptr [byte ptr [rip + join_header_lines]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_28
	test	rbx, rbx
	je	.label_31
	mov	rdi, qword ptr [r12]
	test	r15, r15
	jne	.label_34
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
	xorps	xmm0, xmm0
	movaps	xmmword ptr [word ptr [rip + prevline]],  xmm0
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, r12
	call	get_line
	movzx	edx, al
	jmp	.label_43
.label_28:
	mov	rdx, rbx
	jmp	.label_43
.label_31:
	mov	edi, OFFSET FLAT:uni_blank
	xor	edx, edx
	test	r15, r15
	je	.label_44
.label_34:
	mov	rsi, qword ptr [r14]
	call	prjoin
	xorps	xmm0, xmm0
	movaps	xmmword ptr [word ptr [rip + prevline]],  xmm0
	xor	eax, eax
	test	rbx, rbx
	je	.label_54
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, r12
	call	get_line
	movzx	eax, al
.label_54:
	mov	rbx, rax
	mov	edx, 2
	mov	rdi, r13
	mov	rsi, r14
	call	get_line
	mov	rdx, rbx
	movzx	r15d, al
.label_43:
	mov	eax, 0x10
	mov	qword ptr [rsp + 0x48], rax
	mov	rcx, rbp
	test	rdx, rdx
	je	.label_75
	mov	qword ptr [rsp + 0x30], rcx
	mov	rbp, r15
	mov	eax, 0x10
	test	rbp, rbp
	je	.label_109
	mov	qword ptr [rsp + 0x18], rax
.label_121:
	mov	qword ptr [rsp + 0x40], rdx
	nop	word ptr cs:[rax + rax]
.label_132:
	mov	rdi, qword ptr [r12]
	mov	rsi, qword ptr [r14]
	mov	rdx,  qword ptr [word ptr [rip + join_field_1]]
	mov	rcx,  qword ptr [word ptr [rip + join_field_2]]
	call	keycmp
	test	eax, eax
	js	.label_99
	mov	qword ptr [rsp + 0x20], rbp
	jle	.label_104
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_2]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_106
	mov	rsi, qword ptr [r14]
	mov	edi, OFFSET FLAT:uni_blank
	call	prjoin
.label_106:
	cmp	qword ptr [rsp + 0x48], 0
	jne	.label_112
	test	r14, r14
	mov	ebp, 8
	mov	eax, 0x80
	cmove	rbp, rax
	mov	rdi, r14
	mov	rsi, rbp
	call	xrealloc
	mov	rbx, rax
	test	r14, r14
	mov	qword ptr [rbx], 0
	mov	r14, rbx
	mov	eax, 1
	mov	qword ptr [rsp + 0x48], rax
	jne	.label_112
	mov	rdi, rbx
	add	rdi, 8
	add	rbp, -8
	xor	esi, esi
	mov	rdx, rbp
	call	memset
	mov	r14, rbx
	mov	eax, 0x10
	mov	qword ptr [rsp + 0x48], rax
	nop	dword ptr [rax + rax]
.label_112:
	mov	edx, 2
	mov	rdi, r13
	mov	rsi, r14
	call	get_line
	movzx	ebp, al
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
	test	bpl, bpl
	jne	.label_132
	jmp	.label_9
	nop	dword ptr [rax + rax]
.label_99:
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_1]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_14
	mov	rdi, qword ptr [r12]
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
.label_14:
	mov	rax, qword ptr [rsp + 0x18]
	mov	r15, r14
	test	rax, rax
	jne	.label_127
	mov	esi, 8
	mov	rdi, r12
	call	xrealloc
	mov	r12, rax
	mov	qword ptr [r12], 0
	mov	eax, 1
	mov	qword ptr [rsp + 0x18], rax
.label_127:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	edx, 1
	mov	rsi, r12
	mov	rbx, rdi
	call	get_line
	movzx	edx, al
	mov	rcx, rbx
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
	jmp	.label_30
	nop	word ptr cs:[rax + rax]
.label_104:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rbx, rcx
	movabs	rax, 0x1fffffffffffffff
	xor	rbx, rax
	inc	rbx
	lea	rbp, [rcx*8 + 8]
.label_111:
	mov	qword ptr [rsp + 0x38], rcx
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rcx, rax
	jne	.label_55
	mov	qword ptr [rsp + 0x40], r14
	movabs	rcx, 0xaaaaaaaaaaaaaaa
	cmp	rax, rcx
	jae	.label_113
	mov	r15, rax
	shr	r15, 1
	lea	r13, [rax + r15 + 1]
	lea	rsi, [r13*8]
	mov	rdi, r12
	mov	r14, rax
	call	xrealloc
	mov	r12, rax
	cmp	r14, r13
	jae	.label_123
	lea	rax, [r14 + 1]
	mov	qword ptr [r12 + r14*8], 0
	cmp	rax, r13
	jae	.label_123
	add	r14, r15
	add	r14, rbx
	shl	r14, 3
	mov	rdi, r12
	add	rdi, rbp
	xor	esi, esi
	mov	rdx, r14
	call	memset
.label_123:
	mov	qword ptr [rsp + 0x18], r13
	mov	r13, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x40]
.label_55:
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [r12 + rbp - 8]
	mov	qword ptr [rsp + 8], rsi
	mov	edx, 1
	call	get_line
	test	al, al
	je	.label_129
	mov	rax, qword ptr [rsp + 0x38]
	lea	r15, [rax + 1]
	mov	rdi, qword ptr [r12 + rax*8]
	mov	rsi, qword ptr [r14]
	mov	rdx,  qword ptr [word ptr [rip + join_field_1]]
	mov	rcx,  qword ptr [word ptr [rip + join_field_2]]
	call	keycmp
	mov	rcx, r15
	dec	rbx
	add	rbp, 8
	test	eax, eax
	je	.label_111
	mov	qword ptr [rsp + 0x10], r13
	mov	qword ptr [rsp + 0x28], r12
	mov	qword ptr [rsp + 0x40], r14
	mov	dword ptr [rsp + 4], 0
	jmp	.label_116
.label_129:
	mov	qword ptr [rsp + 0x10], r13
	mov	qword ptr [rsp + 0x28], r12
	mov	qword ptr [rsp + 0x40], r14
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
.label_116:
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r15, rbp
	movabs	rax, 0x1fffffffffffffff
	xor	r15, rax
	lea	r13, [rbp*8 + 8]
	nop	word ptr cs:[rax + rax]
.label_62:
	mov	r12, rbp
	cmp	r12, qword ptr [rsp + 0x48]
	jne	.label_108
	mov	rdi, qword ptr [rsp + 0x40]
	test	rdi, rdi
	je	.label_130
	mov	rbp, qword ptr [rsp + 0x48]
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rbp, rax
	jae	.label_122
	mov	rax, rbp
	shr	rax, 1
	lea	rbx, [rbp + rax + 1]
	jmp	.label_27
	nop	dword ptr [rax]
.label_108:
	mov	r14, qword ptr [rsp + 0x40]
	jmp	.label_29
.label_130:
	mov	rbp, qword ptr [rsp + 0x48]
	test	rbp, rbp
	mov	ebx, 0x10
	cmovne	rbx, rbp
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_21
.label_27:
	lea	rsi, [rbx*8]
	call	xrealloc
	mov	r14, rax
	cmp	rbp, rbx
	jae	.label_63
	mov	qword ptr [r14 + rbp*8], 0
	inc	rbp
	cmp	rbp, rbx
	jae	.label_63
	lea	rdx, [r15 + rbx]
	shl	rdx, 3
	mov	rdi, r14
	add	rdi, r13
	xor	esi, esi
	call	memset
.label_63:
	mov	qword ptr [rsp + 0x48], rbx
.label_29:
	mov	rbx, r14
	lea	r14, [rbx + r13 - 8]
	mov	edx, 2
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	call	get_line
	test	al, al
	je	.label_47
	lea	rbp, [r12 + 1]
	mov	rax, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbx + r12*8]
	mov	qword ptr [rsp + 0x40], rbx
	mov	rdx,  qword ptr [word ptr [rip + join_field_1]]
	mov	rcx,  qword ptr [word ptr [rip + join_field_2]]
	call	keycmp
	dec	r15
	add	r13, 8
	test	eax, eax
	je	.label_62
	mov	dword ptr [rsp + 0x20], 0
	jmp	.label_58
.label_47:
	mov	qword ptr [rsp + 0x40], rbx
	mov	al, 1
	mov	dword ptr [rsp + 0x20], eax
.label_58:
	cmp	qword ptr [rsp + 0x38], 0
	je	.label_78
	test	byte ptr [byte ptr [rip + print_pairables]],  1
	je	.label_78
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_98:
	test	r12, r12
	mov	r13, qword ptr [rsp + 0x28]
	je	.label_85
	mov	rbp, qword ptr [rsp + 0x40]
	mov	r15, r12
	nop	word ptr cs:[rax + rax]
.label_131:
	mov	rdi, qword ptr [r13 + rbx*8]
	mov	rsi, qword ptr [rbp]
	call	prjoin
	add	rbp, 8
	dec	r15
	jne	.label_131
.label_85:
	inc	rbx
	cmp	rbx, qword ptr [rsp + 0x38]
	jne	.label_98
.label_78:
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	mov	edx, 0
	jne	.label_103
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rdx]
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rdx], rcx
	mov	qword ptr [rsi], rax
	mov	edx, 1
.label_103:
	mov	eax, dword ptr [rsp + 0x20]
	test	al, al
	mov	r13, qword ptr [rsp + 0x10]
	jne	.label_79
	mov	r12, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [r12]
	mov	rcx, qword ptr [r14]
	mov	qword ptr [r12], rcx
	mov	r15, r12
	mov	qword ptr [r14], rax
	mov	ebp, 1
	mov	rax, qword ptr [rsp + 0x30]
	mov	r12, qword ptr [rsp + 0x28]
	mov	rcx, rax
.label_30:
	test	rdx, rdx
	je	.label_13
	test	rbp, rbp
	mov	r14, r15
	jne	.label_121
	jmp	.label_50
.label_9:
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x40]
	jmp	.label_50
.label_75:
	mov	eax, 0x10
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, r15
	jmp	.label_50
.label_109:
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_50
.label_44:
	mov	eax, 0x10
	mov	qword ptr [rsp + 0x18], rax
	mov	rcx, rbp
	xor	ebp, ebp
	mov	eax, 0x10
	mov	qword ptr [rsp + 0x48], rax
.label_50:
	mov	r15, rbp
	mov	qword ptr [rsp + 0x70], 0
	cmp	dword ptr [dword ptr [rip + check_input_order]],  2
	jne	.label_10
	xor	ebp, ebp
	jmp	.label_18
.label_10:
	cmp	byte ptr [byte ptr [rip + issued_disorder_warning]],  0
	sete	al
	cmp	byte ptr [byte ptr [rip + label_19]],  0
	sete	bpl
	or	bpl, al
.label_18:
	mov	qword ptr [rsp + 0x30], rcx
	test	rdx, rdx
	mov	qword ptr [rsp + 0x40], rdx
	je	.label_25
	mov	al,  byte ptr [byte ptr [rip + print_unpairables_1]]
	mov	cl, bpl
	or	cl, al
	xor	cl, 1
	test	cl, 1
	jne	.label_25
	test	al, 1
	je	.label_33
	mov	rdi, qword ptr [r12]
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
.label_33:
	test	r15, r15
	je	.label_38
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
.label_38:
	lea	rsi, [rsp + 0x70]
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x30]
	call	get_line
	test	al, al
	je	.label_25
	lea	rbx, [rsp + 0x70]
	nop	word ptr [rax + rax]
.label_72:
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_1]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_48
	mov	rdi, qword ptr [rsp + 0x70]
	mov	esi, OFFSET FLAT:uni_blank
	call	prjoin
.label_48:
	cmp	byte ptr [byte ptr [rip + issued_disorder_warning]],  0
	je	.label_60
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_1]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_25
.label_60:
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, rbx
	call	get_line
	test	al, al
	jne	.label_72
.label_25:
	test	r15, r15
	je	.label_45
	mov	al,  byte ptr [byte ptr [rip + print_unpairables_2]]
	or	bpl, al
	xor	bpl, 1
	test	bpl, 1
	jne	.label_45
	test	al, 1
	je	.label_83
	mov	rsi, qword ptr [r14]
	mov	edi, OFFSET FLAT:uni_blank
	call	prjoin
.label_83:
	cmp	qword ptr [rsp + 0x40], 0
	je	.label_90
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
.label_90:
	lea	rsi, [rsp + 0x70]
	mov	edx, 2
	mov	rdi, r13
	call	get_line
	test	al, al
	je	.label_45
	lea	rbp, [rsp + 0x70]
	nop	word ptr [rax + rax]
.label_117:
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_2]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_92
	mov	rsi, qword ptr [rsp + 0x70]
	mov	edi, OFFSET FLAT:uni_blank
	call	prjoin
.label_92:
	cmp	byte ptr [byte ptr [rip + label_19]],  0
	je	.label_110
	movzx	eax,  byte ptr [byte ptr [rip + print_unpairables_2]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_45
.label_110:
	mov	edx, 2
	mov	rdi, r13
	mov	rsi, rbp
	call	get_line
	test	al, al
	jne	.label_117
.label_45:
	mov	rbx, qword ptr [rsp + 0x70]
	test	rbx, rbx
	je	.label_118
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
.label_118:
	mov	rdi, rbx
	call	free
	mov	r15, qword ptr [rsp + 0x18]
	test	r15, r15
	je	.label_124
	mov	rbx, r12
	nop	word ptr cs:[rax + rax]
.label_17:
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	mov	edi, 0
	je	.label_97
	mov	rdi, qword ptr [rbp + 0x28]
	call	free
	mov	qword ptr [rbp + 0x28], 0
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	qword ptr [rbp + 0x10], 0
	mov	rdi, qword ptr [rbx]
.label_97:
	call	free
	add	rbx, 8
	dec	r15
	jne	.label_17
.label_124:
	mov	rdi, r12
	call	free
	mov	r12, qword ptr [rsp + 0x48]
	test	r12, r12
	je	.label_134
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_96:
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	mov	edi, 0
	je	.label_26
	mov	rdi, qword ptr [rbp + 0x28]
	call	free
	mov	qword ptr [rbp + 0x28], 0
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	qword ptr [rbp + 0x10], 0
	mov	rdi, qword ptr [rbx]
.label_26:
	call	free
	add	rbx, 8
	dec	r12
	jne	.label_96
.label_134:
	mov	rdi, r14
	call	free
	mov	rdi, qword ptr [rsp + 0x30]
	call	rpl_fclose
	test	eax, eax
	jne	.label_82
	mov	rdi, r13
	call	rpl_fclose
	test	eax, eax
	jne	.label_49
	mov	al,  byte ptr [byte ptr [rip + label_19]]
	or	al,  byte ptr [byte ptr [rip + issued_disorder_warning]]
	jne	.label_53
	xor	eax, eax
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_13:
	mov	r14, r15
	jmp	.label_50
.label_79:
	xor	ebp, ebp
	mov	rcx, qword ptr [rsp + 0x30]
	mov	r14, qword ptr [rsp + 0x40]
	mov	r12, qword ptr [rsp + 0x28]
	jmp	.label_50
.label_102:
	cmp	eax, 0xffffff7d
	je	.label_74
	cmp	eax, 0xffffff7e
	jne	.label_77
	xor	edi, edi
	call	usage
.label_74:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.23
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_77:
	mov	edi, 1
	call	usage
.label_15:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	jmp	.label_95
.label_67:
	inc	r12
	inc	r15
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r12
	mov	r8, r15
	call	error
.label_113:
	call	xalloc_die
.label_122:
	call	xalloc_die
.label_82:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + g_names]]
	jmp	.label_115
.label_49:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + label_87]]
.label_115:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_107:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	jmp	.label_61
.label_21:
	call	xalloc_die
.label_16:
	inc	rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
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
.label_84:
	inc	rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
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
.label_91:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
.label_95:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_135:
	xor	edi, edi
	test	eax, eax
	jne	.label_35
	mov	esi, OFFSET FLAT:.str.24
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
.label_101:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_53:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	jmp	.label_61
.label_70:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_0
.label_61:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_35:
	mov	esi, OFFSET FLAT:.str.25
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402b30

	.globl free_spareline
	.type free_spareline, @function
free_spareline:
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + spareline]]
	test	rbx, rbx
	je	.label_136
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	qword ptr [rbx + 0x10], 0
	mov	rdi,  qword ptr [word ptr [rip + spareline]]
	call	free
.label_136:
	mov	rbx,  qword ptr [word ptr [rip + label_137]]
	test	rbx, rbx
	je	.label_138
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	qword ptr [rbx + 0x10], 0
	mov	rdi,  qword ptr [word ptr [rip + label_137]]
	pop	rbx
	jmp	free
.label_138:
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bb0

	.globl string_to_join_field
	.type string_to_join_field, @function
string_to_join_field:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	call	xstrtoul
	cmp	eax, 1
	jne	.label_141
	mov	qword ptr [rsp], -1
	mov	rax, -1
	jmp	.label_139
.label_141:
	test	eax, eax
	jne	.label_140
	mov	rax, qword ptr [rsp]
	test	rax, rax
	je	.label_140
.label_139:
	dec	rax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_140:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c30

	.globl add_field_list
	.type add_field_list, @function
add_field_list:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	nop	dword ptr [rax + rax]
.label_152:
	mov	r15, r14
	mov	rdx, r15
	nop	word ptr cs:[rax + rax]
.label_150:
	mov	rax, rdx
	mov	cl, byte ptr [rax]
	mov	dl, cl
	or	dl, 0x20
	movzx	edx, dl
	cmp	edx, 0x20
	je	.label_145
	movzx	esi, cl
	cmp	esi, 0x2c
	je	.label_145
	lea	rdx, [rax + 1]
	cmp	esi, 9
	jne	.label_150
.label_145:
	test	rax, rax
	je	.label_149
	test	cl, cl
	mov	r14d, 0
	je	.label_142
	mov	byte ptr [rax], 0
	inc	rax
	mov	r14, rax
	jmp	.label_142
	nop	dword ptr [rax]
.label_149:
	xor	r14d, r14d
.label_142:
	movsx	ebx, byte ptr [r15]
	lea	eax, [rbx - 0x31]
	cmp	eax, 2
	jae	.label_146
	movzx	eax, byte ptr [r15 + 1]
	cmp	eax, 0x2e
	jne	.label_147
	add	ebx, -0x30
	add	r15, 2
	mov	rdi, r15
	call	string_to_join_field
	mov	r12, rax
	cmp	ebx, 2
	je	.label_143
	mov	eax, ebx
	or	eax, 1
	cmp	eax, 1
	je	.label_143
	jmp	.label_144
	nop	word ptr cs:[rax + rax]
.label_146:
	cmp	ebx, 0x30
	jne	.label_148
	xor	r12d, r12d
	cmp	byte ptr [r15 + 1], 0
	mov	ebx, 0
	jne	.label_147
.label_143:
	mov	edi, 0x18
	call	xmalloc
	mov	dword ptr [rax], ebx
	mov	qword ptr [rax + 8], r12
	mov	qword ptr [rax + 0x10], 0
	mov	rcx,  qword ptr [word ptr [rip + outlist_end]]
	mov	qword ptr [rcx + 0x10], rax
	mov	qword ptr [word ptr [rip + outlist_end]],  rax
	test	r14, r14
	jne	.label_152
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_148:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	jmp	.label_151
.label_147:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
.label_151:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_144:
	mov	edi, OFFSET FLAT:.str.57
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 0x333
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.add_field
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d90

	.globl add_file_name
	.type add_file_name, @function
add_file_name:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rsi
	mov	r15, rdi
	mov	eax, dword ptr [r13]
	cmp	eax, 2
	jne	.label_153
	mov	ebp, dword ptr [rbx]
	test	ebp, ebp
	sete	al
	movzx	eax, al
	mov	ecx, dword ptr [rbx + rax*4]
	cmp	rcx, 3
	ja	.label_156
	mov	rdi,  qword ptr [word ptr [+ (rax * 8) + g_names]]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_155]]
.label_605:
	dec	dword ptr [rdx]
	call	string_to_join_field
	mov	rcx,  qword ptr [word ptr [rip + join_field_1]]
	cmp	rcx, -1
	je	.label_158
	cmp	rcx, rax
	jne	.label_157
.label_158:
	mov	qword ptr [word ptr [rip + join_field_1]],  rax
	jmp	.label_156
.label_606:
	dec	dword ptr [rdx + 4]
	call	string_to_join_field
	mov	rcx,  qword ptr [word ptr [rip + join_field_2]]
	cmp	rcx, -1
	je	.label_159
	cmp	rcx, rax
	jne	.label_157
.label_159:
	mov	qword ptr [word ptr [rip + join_field_2]],  rax
	jmp	.label_156
.label_607:
	call	add_field_list
.label_156:
	mov	eax, 1
	test	ebp, ebp
	je	.label_153
	mov	ecx, dword ptr [rbx + 4]
	mov	dword ptr [rbx], ecx
	mov	rcx,  qword ptr [word ptr [rip + label_87]]
	mov	qword ptr [word ptr [rip + g_names]],  rcx
.label_153:
	mov	ecx, dword ptr [r12]
	cdqe	
	mov	dword ptr [rbx + rax*4], ecx
	mov	qword ptr [word ptr [+ (rax * 8) + g_names]],  r15
	inc	eax
	mov	dword ptr [r13], eax
	cmp	dword ptr [r12], 3
	jne	.label_154
	mov	dword ptr [r14], 3
.label_154:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_604:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
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
.label_157:
	inc	rcx
	inc	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	mov	rbx, rax
	mov	rbp, rcx
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x402ef0

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
	mov	rbp,  qword ptr [word ptr [rip + label_169]]
	test	rbp, rbp
	je	.label_170
	mov	eax,  dword ptr [dword ptr [rip + tab]]
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
	js	.label_164
	mov	r15b, al
.label_164:
	movzx	eax, cl
	mov	dword ptr [rsp + 4], eax
	jmp	.label_161
	nop	word ptr cs:[rax + rax]
.label_168:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r15b
.label_161:
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
	jbe	.label_163
	mov	rax, qword ptr [rax + 0x28]
	shl	rcx, 4
	mov	rdx, qword ptr [rax + rcx + 8]
	test	rdx, rdx
	je	.label_163
	mov	rdi, qword ptr [rax + rcx]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	call	fwrite_unlocked
	jmp	.label_160
	nop	dword ptr [rax + rax]
.label_163:
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	test	rdi, rdi
	je	.label_160
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_160:
	mov	rbp, qword ptr [rbp + 0x10]
	test	rbp, rbp
	je	.label_166
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_168
	mov	esi, dword ptr [rsp + 4]
	call	__overflow
	jmp	.label_161
.label_170:
	mov	eax, OFFSET FLAT:uni_blank
	cmp	r12, rax
	mov	rax, r12
	cmove	rax, r14
	mov	ecx, OFFSET FLAT:join_field_2
	mov	edx, OFFSET FLAT:join_field_1
	cmove	rdx, rcx
	mov	rcx, qword ptr [rdx]
	cmp	qword ptr [rax + 0x18], rcx
	jbe	.label_162
	mov	rax, qword ptr [rax + 0x28]
	shl	rcx, 4
	mov	rdx, qword ptr [rax + rcx + 8]
	test	rdx, rdx
	je	.label_162
	mov	rdi, qword ptr [rax + rcx]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	call	fwrite_unlocked
	jmp	.label_165
.label_162:
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	test	rdi, rdi
	je	.label_165
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_165:
	mov	rsi,  qword ptr [word ptr [rip + join_field_1]]
	mov	rdx,  qword ptr [word ptr [rip + autocount_1]]
	mov	rdi, r12
	call	prfields
	mov	rsi,  qword ptr [word ptr [rip + join_field_2]]
	mov	rdx,  qword ptr [word ptr [rip + autocount_2]]
	mov	rdi, r14
	call	prfields
.label_166:
	mov	al,  byte ptr [byte ptr [rip + eolchar]]
	xor	ecx, ecx
	and	al, 1
	mov	esi, 0xa
	cmovne	esi, ecx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_167
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
.label_167:
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
	.align	32
	#Procedure 0x4030f0

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
	jbe	.label_173
	mov	rax, qword ptr [rax + 0x28]
	shl	rdx, 4
	mov	rdi, qword ptr [rax + rdx]
	mov	r14, qword ptr [rax + rdx + 8]
.label_173:
	xor	r8d, r8d
	cmp	qword ptr [rsi + 0x18], rcx
	mov	ebx, 0
	jbe	.label_175
	mov	rax, qword ptr [rsi + 0x28]
	shl	rcx, 4
	mov	r8, qword ptr [rax + rcx]
	mov	rbx, qword ptr [rax + rcx + 8]
.label_175:
	test	r14, r14
	je	.label_174
	mov	eax, 1
	test	rbx, rbx
	je	.label_171
	movzx	eax,  byte ptr [byte ptr [rip + ignore_case]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_176
	cmp	r14, rbx
	mov	rdx, rbx
	cmovb	rdx, r14
	mov	rsi, r8
	call	memcasecmp
	jmp	.label_177
.label_174:
	neg	rbx
	sbb	eax, eax
	jmp	.label_171
.label_176:
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	je	.label_172
	mov	rsi, r14
	mov	rdx, r8
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	xmemcoll
.label_172:
	cmp	r14, rbx
	mov	rdx, rbx
	cmovb	rdx, r14
	mov	rsi, r8
	call	memcmp
.label_177:
	test	eax, eax
	jne	.label_171
	cmp	r14, rbx
	setne	al
	movzx	ecx, al
	mov	eax, 0xffffffff
	cmovae	eax, ecx
.label_171:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031c0

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
	mov	rbp, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbp]
	movsxd	r13, edx
	cmp	r12,  qword ptr [word ptr [+ (r13 * 8) + label_217]]
	jne	.label_218
	mov	rax,  qword ptr [word ptr [+ (r13 * 8) + label_200]]
	mov	qword ptr [word ptr [+ (r13 * 8) + label_200]],  r12
	mov	qword ptr [rbp], rax
	mov	r12, rax
.label_218:
	test	r12, r12
	je	.label_224
	mov	dword ptr [rsp + 0x1c], edx
	mov	qword ptr [r12 + 0x18], 0
	jmp	.label_178
.label_224:
	mov	dword ptr [rsp + 0x1c], edx
	mov	edi, 1
	mov	esi, 0x30
	call	xcalloc
	mov	r12, rax
	mov	qword ptr [rbp], r12
.label_178:
	mov	al,  byte ptr [byte ptr [rip + eolchar]]
	and	al, 1
	jne	.label_186
	mov	al, 0xa
	jmp	.label_188
.label_186:
	xor	eax, eax
.label_188:
	movzx	edx, al
	mov	rdi, r12
	mov	rsi, rbx
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_216
	inc	qword ptr [word ptr [+ (r13 * 8) + label_208]]
	mov	rbp, qword ptr [r12 + 8]
	mov	r14, qword ptr [r12 + 0x10]
	lea	rax, [r14 + rbp - 1]
	mov	qword ptr [rsp + 0x20], rax
	cmp	r14, rax
	je	.label_181
	mov	r15d,  dword ptr [dword ptr [rip + tab]]
	test	r15d, r15d
	js	.label_209
	cmp	r15d, 0xa
	je	.label_209
	mov	rdx, qword ptr [rsp + 0x20]
	sub	rdx, r14
	mov	rdi, r14
	mov	esi, r15d
	call	memchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_210
	mov	rbp, qword ptr [r12 + 0x18]
	nop	word ptr cs:[rax + rax]
.label_206:
	mov	rsi, qword ptr [r12 + 0x20]
	cmp	rbp, rsi
	jae	.label_207
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_219
	nop	word ptr cs:[rax + rax]
.label_207:
	mov	rdi, qword ptr [r12 + 0x28]
	test	rdi, rdi
	je	.label_220
	movabs	rax, 0x555555555555555
	cmp	rsi, rax
	jae	.label_205
	mov	rax, rsi
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	jmp	.label_225
.label_220:
	test	rsi, rsi
	mov	eax, 8
	cmove	rsi, rax
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_180
.label_225:
	mov	qword ptr [r12 + 0x20], rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [r12 + 0x28], rax
	mov	rbp, qword ptr [r12 + 0x18]
	mov	r15d,  dword ptr [dword ptr [rip + tab]]
.label_219:
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
	mov	rdx, qword ptr [rsp + 0x20]
	sub	rdx, r14
	mov	rdi, r14
	mov	esi, r15d
	call	memchr
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_206
	jmp	.label_210
.label_216:
	test	byte ptr [rbx], 0x20
	jne	.label_212
	test	r12, r12
	je	.label_214
	mov	rdi, qword ptr [r12 + 0x28]
	call	free
	mov	qword ptr [r12 + 0x28], 0
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	xor	eax, eax
	jmp	.label_183
.label_209:
	test	r15d, r15d
	jns	.label_210
	call	__ctype_b_loc
	mov	r8, rax
	mov	rax, qword ptr [r8]
	lea	rcx, [rbp - 1]
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_179:
	movzx	edx, byte ptr [rbx]
	cmp	rdx, 0xa
	je	.label_221
	movzx	edx, word ptr [rax + rdx*2]
	and	edx, 1
	test	dx, dx
	je	.label_223
.label_221:
	inc	rbx
	dec	rcx
	jne	.label_179
	jmp	.label_181
.label_214:
	xor	eax, eax
	jmp	.label_183
.label_223:
	mov	qword ptr [rsp + 0x10], r13
	add	r14, rbp
	jmp	.label_185
.label_189:
	dec	rbx
.label_185:
	lea	r15, [rbx + 2]
	nop	word ptr [rax + rax]
.label_194:
	mov	r13b, 1
	cmp	r14, r15
	je	.label_187
	movzx	ecx, byte ptr [r15 - 1]
	inc	r15
	cmp	rcx, 0xa
	je	.label_190
	movzx	ecx, word ptr [rax + rcx*2]
	and	ecx, 1
	test	cx, cx
	je	.label_194
.label_190:
	add	r15, -2
	xor	r13d, r13d
	jmp	.label_197
.label_187:
	mov	r15, qword ptr [rsp + 0x20]
.label_197:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rsi, qword ptr [r12 + 0x20]
	cmp	rcx, rsi
	jae	.label_192
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_201
.label_192:
	mov	rdi, qword ptr [r12 + 0x28]
	test	rdi, rdi
	je	.label_204
	movabs	rax, 0x555555555555555
	cmp	rsi, rax
	jae	.label_199
	mov	rbp, r8
	mov	rax, rsi
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	jmp	.label_203
.label_204:
	mov	rbp, r8
	test	rsi, rsi
	mov	eax, 8
	cmove	rsi, rax
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_215
.label_203:
	mov	qword ptr [r12 + 0x20], rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [r12 + 0x28], rax
	mov	rcx, qword ptr [r12 + 0x18]
	mov	r8, rbp
.label_201:
	mov	rdx, r15
	sub	rdx, rbx
	mov	rsi, rcx
	shl	rsi, 4
	mov	qword ptr [rax + rsi], rbx
	mov	qword ptr [rax + rsi + 8], rdx
	inc	rcx
	mov	qword ptr [r12 + 0x18], rcx
	test	r13b, r13b
	mov	r13, qword ptr [rsp + 0x10]
	jne	.label_181
	add	r15, 2
.label_184:
	mov	rbx, r15
	cmp	r14, rbx
	je	.label_211
	movzx	ecx, byte ptr [rbx - 1]
	lea	r15, [rbx + 1]
	cmp	rcx, 0xa
	je	.label_184
	mov	rax, qword ptr [r8]
	movzx	ecx, word ptr [rax + rcx*2]
	and	ecx, 1
	test	cx, cx
	jne	.label_184
	jmp	.label_189
.label_211:
	mov	r14, qword ptr [rsp + 0x20]
.label_210:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rax, qword ptr [r12 + 0x20]
	cmp	rcx, rax
	jae	.label_191
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_195
.label_191:
	mov	rdi, qword ptr [r12 + 0x28]
	test	rdi, rdi
	je	.label_198
	movabs	rcx, 0x555555555555555
	cmp	rax, rcx
	jae	.label_199
	mov	rcx, rax
	shr	rcx, 1
	lea	rsi, [rax + rcx + 1]
	jmp	.label_202
.label_198:
	test	rax, rax
	mov	esi, 8
	cmovne	rsi, rax
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_213
.label_202:
	mov	qword ptr [r12 + 0x20], rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [r12 + 0x28], rax
	mov	rcx, qword ptr [r12 + 0x18]
.label_195:
	mov	rsi, qword ptr [rsp + 0x20]
	sub	rsi, r14
	mov	rdx, rcx
	shl	rdx, 4
	mov	qword ptr [rax + rdx], r14
	mov	qword ptr [rax + rdx + 8], rsi
	inc	rcx
	mov	qword ptr [r12 + 0x18], rcx
.label_181:
	mov	rdi,  qword ptr [word ptr [+ (r13 * 8) + label_217]]
	test	rdi, rdi
	je	.label_182
	mov	eax,  dword ptr [dword ptr [rip + check_input_order]]
	cmp	eax, 1
	je	.label_222
	cmp	eax, 2
	je	.label_182
	movzx	eax,  byte ptr [byte ptr [rip + seen_unpairable]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_182
.label_222:
	cmp	byte ptr [byte ptr [r13 + seen_unpairable]],  0
	jne	.label_182
	cmp	dword ptr [rsp + 0x1c], 1
	mov	eax, OFFSET FLAT:join_field_1
	mov	ecx, OFFSET FLAT:join_field_2
	cmove	rcx, rax
	mov	rdx, qword ptr [rcx]
	mov	rsi, r12
	mov	rcx, rdx
	call	keycmp
	test	eax, eax
	jle	.label_182
	mov	rax, qword ptr [r12 + 8]
	xor	ebx, ebx
	test	rax, rax
	je	.label_193
	mov	rcx, qword ptr [r12 + 0x10]
	movzx	ecx, byte ptr [rcx + rax - 1]
	cmp	ecx, 0xa
	jne	.label_196
	dec	rax
.label_196:
	mov	rbx, rax
.label_193:
	cmp	dword ptr [dword ptr [rip + check_input_order]],  1
	sete	bpl
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, 0x7fffffff
	movzx	edi, bpl
	mov	rcx,  qword ptr [word ptr [+ (r13 * 8) + ignore_case]]
	mov	r8,  qword ptr [word ptr [+ (r13 * 8) + label_208]]
	mov	r9d, 0x7fffffff
	cmovbe	r9d, ebx
	mov	rax, qword ptr [r12 + 0x10]
	mov	qword ptr [rsp], rax
	mov	esi, 0
	xor	eax, eax
	call	error
	mov	byte ptr [byte ptr [r13 + seen_unpairable]],  1
.label_182:
	mov	qword ptr [word ptr [+ (r13 * 8) + label_217]],  r12
	mov	al, 1
.label_183:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_205:
	call	xalloc_die
.label_180:
	call	xalloc_die
.label_212:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_199:
	call	xalloc_die
.label_213:
	call	xalloc_die
.label_215:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403730

	.globl prfield
	.type prfield, @function
prfield:
	cmp	qword ptr [rsi + 0x18], rdi
	jbe	.label_226
	mov	rax, qword ptr [rsi + 0x28]
	shl	rdi, 4
	mov	rdx, qword ptr [rax + rdi + 8]
	test	rdx, rdx
	je	.label_228
	mov	rdi, qword ptr [rax + rdi]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	jmp	fwrite_unlocked
.label_226:
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	test	rdi, rdi
	je	.label_227
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	jmp	fputs_unlocked
.label_228:
	mov	rdi,  qword ptr [word ptr [rip + empty_filler]]
	test	rdi, rdi
	je	.label_227
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	jmp	fputs_unlocked
.label_227:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403790

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
	mov	al,  byte ptr [byte ptr [rip + autoformat]]
	and	al, 1
	jne	.label_232
	mov	r14, qword ptr [r15 + 0x18]
.label_232:
	mov	eax,  dword ptr [dword ptr [rip + tab]]
	test	eax, eax
	mov	r13b, 0x20
	js	.label_233
	mov	r13b, al
.label_233:
	test	rbx, rbx
	je	.label_230
	test	r14, r14
	je	.label_230
	movsx	r12d, r13b
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_234:
	mov	edi, r12d
	call	putchar_unlocked
	mov	rdi, rbp
	mov	rsi, r15
	call	prfield
	inc	rbp
	cmp	rbp, rbx
	jae	.label_230
	cmp	rbp, r14
	jb	.label_234
.label_230:
	inc	rbx
	cmp	rbx, r14
	jae	.label_229
	movsx	ebp, r13b
	nop	dword ptr [rax]
.label_231:
	mov	edi, ebp
	call	putchar_unlocked
	mov	rdi, rbx
	mov	rsi, r15
	call	prfield
	inc	rbx
	cmp	r14, rbx
	jne	.label_231
.label_229:
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
	.align	32
	#Procedure 0x403840
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403850
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403860

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_238
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_235
	cmp	dword ptr [rbp], 0x20
	jne	.label_235
.label_238:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_237
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_235:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_236
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_237:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_236:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403920
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403930

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_239
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_239:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403950

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
	je	.label_241
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_243
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_244
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_240
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_241
.label_240:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_242
.label_243:
	mov	rax, rbx
	jmp	.label_241
.label_244:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_242:
	xor	eax, eax
.label_241:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039e0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_246
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_247
	cmp	byte ptr [rax + 1], 0
	je	.label_245
.label_247:
	mov	esi, OFFSET FLAT:.str.1_1
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_246
.label_245:
	xor	ebx, ebx
.label_246:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x403a20
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
	#Procedure 0x403a30
	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:

	mov	edx, 0xa
	jmp	readlinebuffer_delim
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a40

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
	jne	.label_248
	mov	r12, qword ptr [r15 + 0x10]
	mov	r14, qword ptr [r15]
	add	r14, r12
	movsx	eax, dl
	mov	dword ptr [rsp + 4], eax
	mov	dword ptr [rsp], edx
	mov	r13, r12
	nop	word ptr cs:[rax + rax]
.label_252:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_249
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_250:
	cmp	r13, r14
	jne	.label_251
	mov	r13, qword ptr [r15]
	mov	rdi, r12
	mov	rsi, r15
	call	x2realloc
	mov	r12, rax
	add	r13, r12
	mov	qword ptr [r15 + 0x10], r12
	mov	r14, r12
	add	r14, qword ptr [r15]
.label_251:
	mov	byte ptr [r13], bl
	inc	r13
	cmp	ebx, dword ptr [rsp + 4]
	jne	.label_252
	jmp	.label_253
.label_249:
	mov	rdi, rbp
	call	__uflow
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_250
	cmp	r13, r12
	mov	ecx, dword ptr [rsp]
	mov	eax, 0
	je	.label_248
	test	byte ptr [rbp], 0x20
	jne	.label_248
	mov	eax, ecx
	movzx	eax, al
	movzx	ecx, byte ptr [r13 - 1]
	cmp	ecx, eax
	mov	ebx, dword ptr [rsp + 4]
	jne	.label_250
.label_253:
	sub	r13, r12
	mov	qword ptr [r15 + 8], r13
	mov	rax, r15
.label_248:
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
	#Procedure 0x403b20
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403b30

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
	je	.label_254
	call	__ctype_toupper_loc
	mov	rcx, qword ptr [rax]
	xor	edx, edx
	nop	
.label_255:
	movzx	eax, byte ptr [r15 + rdx]
	mov	eax, dword ptr [rcx + rax*4]
	movzx	esi, byte ptr [r14 + rdx]
	sub	eax, dword ptr [rcx + rsi*4]
	jne	.label_254
	inc	rdx
	xor	eax, eax
	cmp	rdx, rbx
	jb	.label_255
.label_254:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403b80

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_256
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_257
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_257
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_258
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_258:
	mov	rbx, r14
.label_257:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_256:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_3
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c30
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
	#Procedure 0x403c70
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
	#Procedure 0x403c80
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
	#Procedure 0x403c90
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
	#Procedure 0x403cd0
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
	#Procedure 0x403cf0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_259
	test	rdx, rdx
	je	.label_259
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_259:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d20
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
	#Procedure 0x403da0

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
.label_352:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_282
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_288]]
.label_557:
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_558:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_310
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_310
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_335:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_326
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_326:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_335
.label_310:
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
	jmp	.label_263
.label_550:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_263
.label_553:
	mov	al, 1
.label_551:
	mov	r12b, 1
.label_554:
	test	r12b, 1
	mov	cl, 1
	je	.label_362
	mov	cl, al
.label_362:
	mov	al, cl
.label_552:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_365
	test	r10, r10
	je	.label_368
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_369
.label_365:
	xor	ecx, ecx
	jmp	.label_369
.label_555:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_375
	test	r10, r10
	je	.label_380
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_287
.label_556:
	mov	dil, 1
	mov	r9d, 5
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_263
.label_368:
	mov	ecx, 1
.label_369:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_263
.label_375:
	xor	eax, eax
	jmp	.label_287
.label_380:
	mov	eax, 1
.label_287:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_263:
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
	jmp	.label_300
.label_276:
	inc	rdi
.label_300:
	cmp	rbp, -1
	je	.label_339
	cmp	rdi, rbp
	jne	.label_343
	jmp	.label_345
	nop	word ptr cs:[rax + rax]
.label_339:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_350
.label_343:
	test	r12b, r12b
	je	.label_354
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_356
	cmp	rbp, -1
	jne	.label_356
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
.label_356:
	cmp	rbx, rbp
	jbe	.label_373
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_325
	nop	word ptr [rax + rax]
.label_354:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_325
.label_373:
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
	jne	.label_275
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_325
	jmp	.label_262
.label_275:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_325:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_316
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_305]]
.label_591:
	test	rdi, rdi
	jne	.label_284
	jmp	.label_312
.label_595:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_313
	test	rdi, rdi
	jne	.label_317
	cmp	rbp, 1
	je	.label_312
	xor	r13d, r13d
	jmp	.label_274
.label_584:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_320
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_262
	cmp	r9d, 2
	jne	.label_328
	mov	al, r14b
	and	al, 1
	jne	.label_331
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_334
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_334:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_341
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_341:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_279
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_279:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_358
.label_585:
	mov	bl, 0x62
	jmp	.label_261
.label_586:
	mov	cl, 0x74
	jmp	.label_323
.label_587:
	mov	bl, 0x76
	jmp	.label_261
.label_588:
	mov	bl, 0x66
	jmp	.label_261
.label_589:
	mov	cl, 0x72
	jmp	.label_323
.label_592:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_366
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_370
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
	jae	.label_327
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_327:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_271
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_271:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_359
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_359:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_366:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_274
.label_593:
	cmp	r9d, 5
	je	.label_289
	cmp	r9d, 2
	jne	.label_284
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_284
	jmp	.label_296
.label_594:
	cmp	r9d, 2
	jne	.label_298
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_301
	jmp	.label_306
.label_316:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_307
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
.label_283:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_322
	test	cl, cl
	je	.label_322
	xor	eax, eax
	jmp	.label_274
.label_313:
	test	rdi, rdi
	jne	.label_338
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_338
.label_312:
	mov	dl, 1
.label_590:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_342
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_274
.label_320:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_276
	jmp	.label_284
.label_298:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_323
.label_301:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_278
.label_323:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_360
.label_261:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_274
	jmp	.label_281
.label_307:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_363
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_363:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_311:
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
	je	.label_270
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_273
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_277
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_265
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_297:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_292
	bt	rsi, rdx
	jb	.label_294
.label_292:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_297
.label_265:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_347
	xor	r13d, r13d
.label_347:
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
	je	.label_311
	jmp	.label_283
.label_338:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_274
.label_289:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_284
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_284
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_284
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_332
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_336
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_267
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_346
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_346:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_353
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_353:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_361
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_361:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_382
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_382:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_274
.label_284:
	xor	eax, eax
	xor	r13d, r13d
.label_274:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_377
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_379
	jmp	.label_260
	nop	word ptr [rax + rax]
.label_377:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_260
.label_379:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_264
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_272
	nop	word ptr cs:[rax + rax]
.label_260:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_272:
	mov	bl, r15b
	je	.label_278
	jmp	.label_281
.label_264:
	mov	bl, r15b
.label_281:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_262
	cmp	r9d, 2
	jne	.label_285
	mov	al, r14b
	and	al, 1
	jne	.label_285
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_304
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_304:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_351
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_351:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_303
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_303:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_285:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_314
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_314:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_364
.label_317:
	xor	r13d, r13d
	jmp	.label_274
.label_322:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_324
	nop	word ptr [rax + rax]
.label_318:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_324:
	test	cl, cl
	je	.label_337
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_329
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_340
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_340:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_329
	nop	word ptr [rax + rax]
.label_337:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_262
	cmp	r9d, 2
	jne	.label_357
	mov	al, r14b
	and	al, 1
	jne	.label_357
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_291
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_291:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_266
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_266:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_293
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_293:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_357:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_384
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_384:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_269
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_269:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_344
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_344:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_329:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_278
	test	r14b, 1
	je	.label_295
	mov	bl, al
	and	bl, 1
	jne	.label_295
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_286
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_286:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_308
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_308:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_295:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_318
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_318
	nop	dword ptr [rax]
.label_278:
	test	r14b, 1
	je	.label_333
	and	al, 1
	jne	.label_333
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_321
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_321:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_309
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_309:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_333:
	mov	bl, r15b
.label_364:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_349
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_349:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_276
.label_328:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_358
.label_331:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_358:
	cmp	rcx, r10
	jae	.label_367
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_367:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_372
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_378
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_381
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_383
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_383:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_268
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_268:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_274
.label_372:
	xor	r13d, r13d
	jmp	.label_274
.label_378:
	xor	r13d, r13d
	jmp	.label_274
.label_381:
	xor	r13d, r13d
	jmp	.label_274
.label_273:
	xor	r13d, r13d
.label_270:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_283
.label_277:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_290
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_374:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_299
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_374
	xor	r13d, r13d
	jmp	.label_283
.label_290:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_283
.label_299:
	xor	r13d, r13d
	jmp	.label_283
.label_332:
	xor	r13d, r13d
	jmp	.label_274
.label_336:
	xor	r13d, r13d
	jmp	.label_274
	nop	dword ptr [rax]
.label_345:
	mov	r13, rdi
.label_350:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_319
	or	al, dl
	je	.label_280
.label_319:
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
	je	.label_330
	or	al, dl
	jne	.label_330
	test	r8b, 1
	jne	.label_348
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_330
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_352
.label_330:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_315
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_315
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_315
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_371:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_355
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_355:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_371
.label_315:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_376
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_376
.label_342:
	mov	r9d, 2
	jmp	.label_262
.label_294:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_262
.label_280:
	mov	rbp, r13
	jmp	.label_262
.label_360:
	mov	r9d, 2
.label_262:
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
.label_302:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_376:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_348:
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
	jmp	.label_302
.label_370:
	mov	r9d, 2
	jmp	.label_262
.label_306:
	mov	r9d, 2
	jmp	.label_262
.label_296:
	mov	r9d, 2
	jmp	.label_262
.label_267:
	mov	r9d, 5
	jmp	.label_262
.label_282:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404f30
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
	#Procedure 0x405000
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
	je	.label_385
	mov	qword ptr [rax], rbx
.label_385:
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
	#Procedure 0x405100
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_386
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_388:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_388
.label_386:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_390
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_389]], OFFSET FLAT:slot0
.label_390:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_387
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_387:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051a0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4051b0

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
	js	.label_391
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_396
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_392
.label_396:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_395
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
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_394
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_394:
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
	mov	r14, qword ptr [rsp + 0x38]
.label_392:
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
	ja	.label_397
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_393
	mov	rdi, rbx
	call	free
.label_393:
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
.label_397:
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
.label_391:
	call	abort
.label_395:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405380
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405390
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
	#Procedure 0x4053b0
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
	#Procedure 0x4053d0
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
	je	.label_398
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
.label_398:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x405440

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
	je	.label_399
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
.label_399:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054b0

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
	je	.label_400
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
.label_400:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405520
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
	je	.label_401
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
.label_401:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405590
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_402]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_403]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_404]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x405600
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_402]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_403]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_404]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x405670

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_402]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_403]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_404]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x4056d0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_402]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_403]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_404]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x405730

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
	je	.label_405
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
.label_405:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4057e0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_402]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_403]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_404]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_406
	test	rdx, rdx
	je	.label_406
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_406:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x405850
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_402]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_403]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_404]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_407
	test	rdx, rdx
	je	.label_407
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_407:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058c0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_402]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_403]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_404]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_408
	test	rsi, rsi
	je	.label_408
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_408:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405930
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_402]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_403]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_404]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_409
	test	rsi, rsi
	je	.label_409
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
.label_409:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4059a0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059b0
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
	#Procedure 0x4059d0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059f0

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
	#Procedure 0x405a10

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
	jne	.label_412
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_413
	cmp	ecx, 0x55
	jne	.label_410
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_410
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_410
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_410
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_410
	cmp	byte ptr [rax + 5], 0
	jne	.label_410
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_412
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_412
.label_413:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_410
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_410
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_410
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_410
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_410
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_410
	cmp	byte ptr [rax + 7], 0
	je	.label_411
.label_410:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12
	cmove	rax, rcx
.label_412:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_411:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_412
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_412
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b00

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	32
	#Procedure 0x405b10

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
	je	.label_417
	mov	edx, OFFSET FLAT:.str_4
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_416
.label_417:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_416:
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
	ja	.label_422
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_423]]
.label_627:
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
.label_422:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_421
.label_628:
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
.label_629:
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
.label_630:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_414
.label_631:
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
	jmp	.label_419
.label_632:
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
	jmp	.label_415
.label_633:
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
.label_415:
	mov	qword ptr [rsp + 0x10], rdi
.label_419:
	mov	qword ptr [rsp + 8], rsi
.label_414:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_420
.label_635:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
.label_421:
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
	jmp	.label_418
.label_634:
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
.label_418:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_420:
	call	__fprintf_chk
.label_626:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e00
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_424:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_424
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e30
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_427:
	cmp	r10d, 0x28
	ja	.label_425
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_426
	nop	word ptr cs:[rax + rax]
.label_425:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_426:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_428
	inc	r9
	cmp	r9, 0xa
	jb	.label_427
.label_428:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405e90

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_429
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_429:
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
.label_433:
	cmp	r8d, 0x28
	ja	.label_430
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_432
	nop	
.label_430:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_432:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_431
	inc	r9
	cmp	r9, 0xa
	jb	.label_433
.label_431:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f90
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
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x406010
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_434
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_435
	test	rax, rax
	je	.label_434
.label_435:
	pop	rbx
	ret	
.label_434:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406050

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_436
	test	rax, rax
	je	.label_437
.label_436:
	pop	rbx
	ret	
.label_437:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406070
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_438
	imul	rbx, rsi
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
	je	.label_440
	test	rax, rax
	je	.label_438
.label_440:
	pop	rbx
	ret	
.label_438:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060c0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_441
	test	rbx, rbx
	jne	.label_441
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_441:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_443
	test	rax, rax
	je	.label_442
.label_443:
	pop	rbx
	ret	
.label_442:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4060f0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_448
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_449
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_444
.label_448:
	test	rcx, rcx
	jne	.label_450
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_450:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_446
.label_444:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_445
	test	rbx, rbx
	jne	.label_445
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_445:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_447
	test	rax, rax
	je	.label_449
.label_447:
	pop	rbx
	ret	
.label_449:
	call	xalloc_die
.label_446:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406190
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_451
	test	rax, rax
	je	.label_452
.label_451:
	pop	rbx
	ret	
.label_452:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061b0

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_455
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_457
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_454
	call	free
	xor	eax, eax
	jmp	.label_456
.label_455:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_453
	mov	qword ptr [rsi], rbx
.label_454:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_456
	test	rax, rax
	je	.label_453
.label_456:
	pop	rbx
	ret	
.label_453:
	call	xalloc_die
.label_457:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406220
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
	je	.label_459
	test	r14, r14
	je	.label_458
.label_459:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_458:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406260

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_460
	call	rpl_calloc
	test	rax, rax
	je	.label_460
	pop	rcx
	ret	
.label_460:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406290

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
	je	.label_461
	test	r15, r15
	je	.label_462
.label_461:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_462:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4062d0
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
	je	.label_464
	test	r15, r15
	je	.label_463
.label_464:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_463:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406320

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
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
	#Procedure 0x406350

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
	je	.label_465
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, r14
	call	collate_error
.label_465:
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
	#Procedure 0x4063a0

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
	mov	esi, OFFSET FLAT:.str_5
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
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
	#Procedure 0x406470
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
	je	.label_466
	dec	rbx
	dec	r15
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8, r15
	call	collate_error
.label_466:
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
	#Procedure 0x4064c0

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
	jae	.label_479
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_471:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_471
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	r13d, 4
	cmp	eax, 0x2d
	je	.label_468
	mov	rdi, rbx
	mov	edx, r12d
	mov	rbp, rsi
	call	strtoul
	mov	rcx, rbp
	mov	rbp, rax
	mov	r12, qword ptr [rcx]
	cmp	r12, rbx
	je	.label_482
	mov	eax, dword ptr [r15]
	xor	ebx, ebx
	test	eax, eax
	je	.label_485
	cmp	eax, 0x22
	jne	.label_468
	mov	ebx, 1
.label_485:
	test	r14, r14
	jne	.label_488
	jmp	.label_476
.label_482:
	test	r14, r14
	je	.label_468
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_468
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	ebx, ebx
	mov	ebp, 1
	test	rax, rax
	je	.label_468
.label_488:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_476
	mov	qword ptr [rsp], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_467
	mov	r15d, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_469
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_469
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_469
	movsx	eax, byte ptr [r12 + 1]
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_472
	cmp	eax, 0x44
	je	.label_472
	cmp	eax, 0x69
	jne	.label_469
	movzx	eax, byte ptr [r12 + 2]
	cmp	eax, 0x42
	mov	r15d, 3
	je	.label_477
	mov	r15d, 1
.label_477:
	mov	esi, 0x400
	jmp	.label_469
.label_472:
	mov	r15d, 2
	mov	esi, 0x3e8
.label_469:
	cmp	r13d, 0x59
	jg	.label_486
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_480
	jmp	qword ptr [word ptr [+ (rax * 8) + label_491]]
.label_567:
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_489
.label_486:
	cmp	r13d, 0x73
	jg	.label_478
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_470
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_487]]
.label_577:
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_489:
	cmp	rax, 1
	sbb	rax, rax
	not	rax
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_474
.label_480:
	cmp	r13d, 0x54
	je	.label_473
	cmp	r13d, 0x59
	jne	.label_467
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
	jmp	.label_483
.label_478:
	cmp	r13d, 0x74
	je	.label_473
	cmp	r13d, 0x77
	jne	.label_467
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_474
.label_569:
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
	jmp	.label_484
.label_570:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	and	eax, 1
	jmp	.label_475
.label_571:
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
	jmp	.label_484
.label_473:
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
	jmp	.label_484
.label_470:
	cmp	r13d, 0x5a
	jne	.label_467
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
.label_483:
	movzx	eax, dl
	and	eax, 1
	jmp	.label_475
.label_467:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	jmp	.label_481
.label_568:
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
.label_484:
	and	dl, 1
	movzx	eax, dl
.label_475:
	mov	rbp, rsi
.label_474:
	or	eax, ebx
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp]
	mov	qword ptr [rdx], rcx
	cmp	byte ptr [r12 + r15], 0
	je	.label_490
	or	eax, 2
.label_490:
	mov	ebx, eax
.label_476:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
.label_481:
	mov	r13d, ebx
.label_468:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_572:
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
	jmp	.label_475
.label_479:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406b50

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_492
	test	rsi, rsi
	mov	ecx, 1
	je	.label_493
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_493
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_492:
	mov	ecx, 1
.label_493:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
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
	js	.label_494
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_495
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_494
.label_495:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_494
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_496
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_496:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_494:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
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
	je	.label_505
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_505:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_510
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_500
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_497
	test	esi, esi
	jne	.label_510
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_511
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_512
.label_510:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_514
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_497
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_499
.label_500:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_507
.label_497:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_504
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_506
.label_504:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_506:
	mov	edx, dword ptr [rax]
.label_513:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
.label_507:
	mov	ebp, eax
.label_502:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_499:
	cmp	eax, 6
	jne	.label_514
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_516
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_498
.label_514:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_503
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_515
.label_511:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_512:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	jmp	.label_513
.label_516:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_498:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_517
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_501
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_501
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_502
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	al, 1
	jmp	.label_509
.label_501:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_502
.label_503:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_515:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_507
.label_517:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_509:
	test	al, al
	je	.label_502
	test	ebp, ebp
	js	.label_502
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_508
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_502
.label_508:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_502
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f00

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_518
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_518
	test	byte ptr [rbx + 1], 1
	je	.label_518
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_518:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406f40

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
	jne	.label_519
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_519
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_520
.label_519:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_520:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_521
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_521:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406fb0

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
	je	.label_522
	cmp	r15, -2
	jb	.label_522
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_522
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_522:
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
	#Procedure 0x407010

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
	jne	.label_524
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_523
	test	cl, cl
	jne	.label_523
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_523
.label_524:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_523
	call	__errno_location
	mov	dword ptr [rax], 0
.label_523:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407070

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
	je	.label_525
	mov	rax, rcx
.label_525:
	add	rsp, 8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4070a0

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
	jne	.label_526
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	je	.label_528
.label_526:
	mov	al, byte ptr [r12 + rbp]
	mov	byte ptr [rsp + 7], al
	mov	al, byte ptr [r14 + rbx]
	mov	byte ptr [rsp + 6], al
	mov	byte ptr [r12 + rbp], 0
	mov	byte ptr [r14 + rbx], 0
	lea	r13, [rbp + 1]
	mov	qword ptr [rsp + 0x10], rbp
	lea	r15, [rbx + 1]
	mov	qword ptr [rsp + 0x20], rbx
	call	__errno_location
	mov	rbx, rax
	mov	rbp, r14
	mov	qword ptr [rsp + 0x18], r14
	mov	r14, r12
	mov	qword ptr [rsp + 8], r12
	nop	dword ptr [rax]
.label_531:
	mov	dword ptr [rbx], 0
	mov	rdi, r14
	mov	rsi, rbp
	call	strcoll
	test	eax, eax
	jne	.label_529
	mov	rdi, r14
	call	strlen
	mov	r12, rax
	inc	r12
	mov	rdi, rbp
	call	strlen
	inc	rax
	sub	r13, r12
	je	.label_527
	add	rbp, rax
	add	r14, r12
	sub	r15, rax
	mov	eax, 1
	jne	.label_531
	jmp	.label_529
.label_527:
	xor	ecx, ecx
	cmp	r15, rax
	mov	eax, 0xffffffff
	cmove	eax, ecx
.label_529:
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	mov	bl, byte ptr [rsp + 7]
	mov	byte ptr [rdx + rcx], bl
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	bl, byte ptr [rsp + 6]
	mov	byte ptr [rdx + rcx], bl
	jmp	.label_530
.label_528:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_530:
	add	rsp, 0x28
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
	#Procedure 0x4071c0

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
	jne	.label_532
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	call	memcmp
	test	eax, eax
	je	.label_534
.label_532:
	call	__errno_location
	mov	r13, rax
	nop	word ptr cs:[rax + rax]
.label_536:
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rsi, r12
	call	strcoll
	test	eax, eax
	jne	.label_533
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	rdi, r12
	call	strlen
	inc	rax
	sub	r15, rbp
	je	.label_535
	add	r12, rax
	add	rbx, rbp
	sub	r14, rax
	mov	eax, 1
	jne	.label_536
	jmp	.label_533
.label_535:
	xor	ecx, ecx
	cmp	r14, rax
	mov	eax, 0xffffffff
	cmove	eax, ecx
	jmp	.label_533
.label_534:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_533:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section .text
	.align	32
	#Procedure 0x407280

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