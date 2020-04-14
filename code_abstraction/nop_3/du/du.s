	.section	.text
	.align	32
	#Procedure 0x402500

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
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
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
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.12
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
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
	mov	esi, OFFSET FLAT:.str.69
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.13
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.72
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.13
	mov	ecx, OFFSET FLAT:.str.73
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027f0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x168
	mov	r15, rsi
	mov	r12d, edi
	mov	eax, OFFSET FLAT:.str_3
	movq	xmm0, rax
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.16
	mov	esi, OFFSET FLAT:.str.17_0
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.16
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	call	new_exclude
	mov	qword ptr [word ptr [rip + exclude]],  rax
	mov	edi, OFFSET FLAT:.str.18_0
	call	getenv
	mov	esi, OFFSET FLAT:human_output_opts
	mov	edx, OFFSET FLAT:output_block_size
	mov	rdi, rax
	call	human_options
	mov	al, 1
	mov	qword ptr [rsp + 0x58], rax
	mov	dword ptr [rsp + 0x3c], 8
	mov	dword ptr [rsp + 0x98], 0x10
	xor	ebp, ebp
	lea	r13, [rsp + 0xb8]
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x90], rax
	jmp	.label_27
	nop	word ptr cs:[rax + rax]
.label_13:
	mov	bpl, cl
.label_27:
	mov	dword ptr [rsp + 0xb8], 0xffffffff
	mov	edx, OFFSET FLAT:.str.19
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, r12d
	mov	rsi, r15
	mov	r8, r13
	call	getopt_long
	cmp	eax, 0x72
	jg	.label_42
	cmp	eax, 0x4f
	jle	.label_43
	lea	ecx, [rax - 0x58]
	cmp	ecx, 0x15
	ja	.label_47
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_48]]
.label_3539:
	mov	rsi,  qword ptr [word ptr [rip + exclude]]
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	mov	edi, OFFSET FLAT:add_exclude
	mov	ecx, 0x10000000
	mov	r8d, 0xa
	call	add_exclude_file
	test	eax, eax
	je	.label_15
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, r14d
	call	error
	jmp	.label_15
	nop	word ptr cs:[rax + rax]
.label_42:
	add	eax, -0x73
	cmp	eax, 0x14
	ja	.label_65
	mov	cl, 1
	jmp	qword ptr [word ptr [+ (rax * 8) + label_67]]
.label_3556:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:opt_threshold
	mov	r8d, OFFSET FLAT:.str.21
	call	xstrtoimax
	test	eax, eax
	jne	.label_71
	cmp	qword ptr [word ptr [rip + opt_threshold]],  0
	jne	.label_15
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2d
	mov	cl, bpl
	jne	.label_13
	jmp	.label_76
	nop	word ptr cs:[rax + rax]
.label_43:
	cmp	eax, 0x43
	jg	.label_129
	cmp	eax, 0x2f
	jle	.label_77
	cmp	eax, 0x30
	je	.label_80
	cmp	eax, 0x42
	jne	.label_65
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, OFFSET FLAT:human_output_opts
	mov	edx, OFFSET FLAT:output_block_size
	call	human_options
	test	eax, eax
	mov	cl, bpl
	je	.label_13
	jmp	.label_85
.label_129:
	cmp	eax, 0x44
	je	.label_87
	cmp	eax, 0x48
	je	.label_87
	cmp	eax, 0x4c
	jne	.label_65
	mov	dword ptr [rsp + 0x98], 2
	jmp	.label_15
.label_87:
	mov	dword ptr [rsp + 0x98], 0x11
	jmp	.label_15
.label_47:
	cmp	eax, 0x50
	je	.label_92
	cmp	eax, 0x53
	jne	.label_65
	mov	byte ptr [byte ptr [rip + opt_separate_dirs]],  1
	jmp	.label_15
.label_77:
	cmp	eax, -1
	je	.label_98
	cmp	eax, 0xffffff7d
	je	.label_100
	cmp	eax, 0xffffff7e
	je	.label_102
.label_65:
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_15
.label_80:
	mov	byte ptr [byte ptr [rip + opt_nul_terminate_output]],  1
	jmp	.label_15
.label_3557:
	or	dword ptr [rsp + 0x3c], 0x40
	jmp	.label_15
.label_3558:
	mov	byte ptr [byte ptr [rip + apparent_size]],  1
	jmp	.label_15
.label_3559:
	mov	rdi,  qword ptr [word ptr [rip + exclude]]
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edx, 0x10000000
	call	add_exclude
	jmp	.label_15
.label_3560:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x50], rax
	jmp	.label_15
.label_3561:
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0x90
	mov	qword ptr [word ptr [rip + output_block_size]],  1
	jmp	.label_15
.label_3562:
	mov	byte ptr [byte ptr [rip + opt_time]],  1
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	xor	eax, eax
	test	rsi, rsi
	je	.label_116
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.24
	mov	edx, OFFSET FLAT:time_args
	mov	ecx, OFFSET FLAT:time_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + time_types]]
.label_116:
	mov	dword ptr [dword ptr [rip + time_type]],  eax
	mov	edi, OFFSET FLAT:.str_2
	call	getenv
	mov	rdi, rax
	call	tzalloc
	mov	qword ptr [word ptr [rip + localtz]],  rax
	jmp	.label_15
.label_3563:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + time_style]],  rax
	jmp	.label_15
.label_3564:
	mov	byte ptr [byte ptr [rip + opt_inodes]],  1
	jmp	.label_15
.label_3540:
	mov	byte ptr [byte ptr [rip + opt_all]],  1
	jmp	.label_15
.label_3541:
	mov	byte ptr [byte ptr [rip + apparent_size]],  1
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0
	mov	qword ptr [word ptr [rip + output_block_size]],  1
	jmp	.label_15
.label_3542:
	mov	byte ptr [byte ptr [rip + print_grand_total]],  1
	jmp	.label_15
.label_3543:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	lea	rcx, [rsp + 0xd8]
	call	xstrtoul
	test	eax, eax
	je	.label_134
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_15
.label_3544:
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0xb0
	mov	qword ptr [word ptr [rip + output_block_size]],  1
	jmp	.label_15
.label_3545:
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0
	mov	qword ptr [word ptr [rip + output_block_size]],  0x400
	jmp	.label_15
.label_3546:
	mov	byte ptr [byte ptr [rip + opt_count_all]],  1
	jmp	.label_15
.label_3547:
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0
	mov	qword ptr [word ptr [rip + output_block_size]],  0x100000
	jmp	.label_15
.label_92:
	mov	dword ptr [rsp + 0x98], 0x10
	jmp	.label_15
.label_134:
	mov	rax, qword ptr [rsp + 0xd8]
	mov	qword ptr [word ptr [rip + max_depth]],  rax
	mov	al, 1
	mov	qword ptr [rsp + 0x90], rax
	nop	word ptr cs:[rax + rax]
.label_15:
	mov	cl, bpl
	jmp	.label_13
.label_98:
	mov	rax, qword ptr [rsp + 0x58]
	test	al, 1
	je	.label_33
	and	bpl, 1
	je	.label_34
	mov	al,  byte ptr [byte ptr [rip + opt_all]]
	xor	al, 1
	test	al, 1
	je	.label_35
.label_34:
	test	bpl, bpl
	je	.label_37
	mov	rbp, qword ptr [rsp + 0x90]
	and	bpl, 1
	mov	rbx,  qword ptr [word ptr [rip + max_depth]]
	je	.label_45
	test	rbx, rbx
	jne	.label_45
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	rbx,  qword ptr [word ptr [rip + max_depth]]
.label_45:
	test	bpl, bpl
	je	.label_51
	test	rbx, rbx
	jne	.label_53
.label_51:
	mov	qword ptr [word ptr [rip + max_depth]],  0
.label_37:
	movzx	eax,  byte ptr [byte ptr [rip + opt_inodes]]
	and	eax, 1
	cmp	eax, 1
	mov	ebx, dword ptr [rsp + 0x3c]
	jne	.label_57
	movzx	eax,  byte ptr [byte ptr [rip + apparent_size]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_58
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_58:
	mov	qword ptr [word ptr [rip + output_block_size]],  1
.label_57:
	movzx	eax,  byte ptr [byte ptr [rip + opt_time]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_66
	mov	rbp,  qword ptr [word ptr [rip + time_style]]
	test	rbp, rbp
	jne	.label_69
	mov	edi, OFFSET FLAT:.str.35
	call	getenv
	mov	rbp, rax
	mov	qword ptr [word ptr [rip + time_style]],  rbp
	test	rbp, rbp
	je	.label_89
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_89
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2b
	jne	.label_75
	mov	esi, 0xa
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	je	.label_69
	mov	byte ptr [rax], 0
	jmp	.label_69
	nop	dword ptr [rax + rax]
.label_83:
	add	rbp, 6
	mov	qword ptr [word ptr [rip + time_style]],  rbp
.label_75:
	mov	esi, OFFSET FLAT:main.posix_prefix
	mov	edx, 6
	mov	rdi, rbp
	call	strncmp
	test	eax, eax
	je	.label_83
	jmp	.label_69
.label_89:
	mov	qword ptr [word ptr [rip + time_style]], OFFSET FLAT:.str.37
	mov	ebp, OFFSET FLAT:.str.37
.label_69:
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2b
	jne	.label_86
	inc	rbp
	mov	qword ptr [word ptr [rip + time_format]],  rbp
	jmp	.label_66
.label_86:
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.38
	mov	edx, OFFSET FLAT:time_style_args
	mov	ecx, OFFSET FLAT:time_style_types
	mov	r8d, 4
	mov	rsi, rbp
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + time_style_types]]
	cmp	eax, 2
	je	.label_93
	cmp	eax, 1
	je	.label_95
	test	eax, eax
	jne	.label_66
	mov	qword ptr [word ptr [rip + time_format]], OFFSET FLAT:.str.39
	jmp	.label_66
.label_93:
	mov	qword ptr [word ptr [rip + time_format]], OFFSET FLAT:.str.2_0
	jmp	.label_66
.label_95:
	mov	qword ptr [word ptr [rip + time_format]], OFFSET FLAT:.str.40
.label_66:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	qword ptr [rsp + 0x50], 0
	je	.label_104
	cmp	eax, r12d
	jl	.label_105
	mov	r15, qword ptr [rsp + 0x50]
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2d
	mov	r12, qword ptr [rsp + 0x58]
	jne	.label_106
	cmp	byte ptr [r15 + 1], 0
	je	.label_108
.label_106:
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	mov	esi, OFFSET FLAT:.str.1_0
	mov	rdi, r15
	call	freopen_safer
	test	rax, rax
	je	.label_110
.label_108:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	argv_iter_init_stream
	mov	r14, rax
	mov	al, 1
	jmp	.label_113
.label_104:
	cmp	eax, r12d
	lea	rax, [r15 + rax*8]
	lea	rdi, [rsp + 0xa0]
	cmovl	rdi, rax
	call	argv_iter_init_argv
	mov	r14, rax
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	cmp	eax, r12d
	setl	cl
	cmp	dword ptr [rsp + 0x98], 2
	sete	al
	or	al, cl
	mov	r15, qword ptr [rsp + 0x50]
	mov	r12, qword ptr [rsp + 0x58]
.label_113:
	mov	qword ptr [rsp + 0x30], r14
	mov	byte ptr [byte ptr [rip + hash_all]],  al
	test	r14, r14
	je	.label_20
	call	di_set_alloc
	mov	qword ptr [word ptr [rip + di_files]],  rax
	test	rax, rax
	je	.label_20
	mov	al,  byte ptr [byte ptr [rip + opt_count_all]]
	and	al, 1
	mov	ecx, ebx
	or	ecx, 0x100
	cmp	byte ptr [byte ptr [rip + hash_all]],  0
	cmove	ebx, ecx
	test	al, al
	cmovne	ebx, ecx
	lea	rsi, [rsp + 0x9c]
	mov	rdi, r14
	call	argv_iter
	mov	rbp, rax
	test	rbp, rbp
	je	.label_128
	or	ebx, dword ptr [rsp + 0x98]
	mov	dword ptr [rsp + 0x3c], ebx
	jmp	.label_96
.label_54:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
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
	mov	al, 1
	jmp	.label_9
	nop	
.label_96:
	test	r15, r15
	je	.label_133
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2d
	jne	.label_136
	cmp	byte ptr [r15 + 1], 0
	je	.label_137
	xor	eax, eax
	jmp	.label_9
	nop	dword ptr [rax]
.label_133:
	xor	eax, eax
	jmp	.label_9
	nop	word ptr cs:[rax + rax]
.label_136:
	xor	eax, eax
.label_9:
	mov	cl, byte ptr [rbp]
.label_135:
	test	cl, cl
	je	.label_14
	test	al, al
	je	.label_16
	xor	r12d, r12d
	jmp	.label_17
	nop	dword ptr [rax]
.label_14:
	test	r15, r15
	je	.label_18
	mov	rdi, r14
	call	argv_iter_n_args
	mov	r13, r14
	mov	r14, rax
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str.53
	xor	eax, eax
	mov	rcx, rbp
	mov	r8, r14
	mov	r14, r13
	mov	r9, rbx
	call	error
	jmp	.label_17
	nop	word ptr cs:[rax + rax]
.label_16:
	mov	qword ptr [rsp + 0x58], r12
	mov	qword ptr [rsp + 0x50], r15
	mov	qword ptr [word ptr [rip + main.temp_argv]],  rbp
	mov	edi, OFFSET FLAT:main.temp_argv
	xor	edx, edx
	mov	esi, dword ptr [rsp + 0x3c]
	call	xfts_open
	mov	rbx, rax
	mov	qword ptr [rsp + 0x88], rbx
	mov	rdi, rbx
	call	rpl_fts_read
	mov	r15, rax
	mov	r12b, 1
	test	r15, r15
	je	.label_41
	mov	r13b, 1
	jmp	.label_44
.label_18:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	call	error
	jmp	.label_17
.label_137:
	movzx	ecx, byte ptr [rbp]
	cmp	ecx, 0x2d
	jne	.label_52
	cmp	byte ptr [rbp + 1], 0
	je	.label_54
	xor	eax, eax
	jmp	.label_9
.label_52:
	xor	eax, eax
	jmp	.label_135
.label_109:
	mov	rdi, rbx
	mov	rsi, r15
	call	cycle_warning_required
	test	al, al
	je	.label_10
	mov	byte ptr [rsp + 0x98], r13b
	mov	r14, qword ptr [r15]
	cmp	qword ptr [word ptr [rip + di_mnt]],  0
	jne	.label_25
	call	di_set_alloc
	mov	qword ptr [word ptr [rip + di_mnt]],  rax
	test	rax, rax
	je	.label_32
	xor	edi, edi
	call	read_file_system_list
	mov	r13, rax
	test	r13, r13
	je	.label_25
	nop	dword ptr [rax + rax]
.label_79:
	test	byte ptr [r13 + 0x28], 3
	jne	.label_70
	mov	rsi, qword ptr [r13 + 8]
	mov	edi, 1
	lea	rdx, [rsp + 0xd8]
	call	__xstat
	test	eax, eax
	jne	.label_70
	mov	rdi,  qword ptr [word ptr [rip + di_mnt]]
	mov	rsi, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0xe0]
	call	di_set_insert
	test	eax, eax
	js	.label_32
	nop	word ptr cs:[rax + rax]
.label_70:
	mov	rbp, qword ptr [r13 + 0x30]
	mov	rdi, r13
	call	free_mount_entry
	test	rbp, rbp
	mov	r13, rbp
	jne	.label_79
.label_25:
	cmp	r14, r15
	mov	r13b, byte ptr [rsp + 0x98]
	je	.label_81
	nop	word ptr cs:[rax + rax]
.label_72:
	mov	rdi,  qword ptr [word ptr [rip + di_mnt]]
	mov	rsi, qword ptr [r15 + 0x78]
	mov	rdx, qword ptr [r15 + 0x80]
	call	di_set_lookup
	test	eax, eax
	jg	.label_10
	mov	r15, qword ptr [r15 + 8]
	test	r15, r15
	je	.label_81
	cmp	r15, r14
	jne	.label_72
.label_81:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.110
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x90]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_130
	nop	word ptr cs:[rax + rax]
.label_44:
	mov	rbp, qword ptr [r15 + 0x38]
	movzx	r14d, word ptr [r15 + 0x70]
	cmp	r14d, 6
	je	.label_101
	movzx	eax, r14w
	cmp	eax, 4
	jne	.label_103
	mov	ebx, dword ptr [r15 + 0x40]
	mov	r12d, r14d
	mov	r14, rbp
	mov	qword ptr [rsp + 0x90], r14
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.107
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	mov	r14d, r12d
	xor	r12d, r12d
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_36
	nop	dword ptr [rax + rax]
.label_101:
	mov	qword ptr [rsp + 0x90], rbp
	mov	r12b, 1
.label_36:
	movzx	eax,  byte ptr [byte ptr [rip + apparent_size]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_115
	mov	rax, qword ptr [r15 + 0xa8]
	test	rax, rax
	mov	ebp, 0
	cmovns	rbp, rax
	jmp	.label_117
	nop	
.label_115:
	mov	rbp, qword ptr [r15 + 0xb8]
	shl	rbp, 9
.label_117:
	mov	eax,  dword ptr [dword ptr [rip + time_type]]
	cmp	eax, 2
	je	.label_121
	test	eax, eax
	jne	.label_122
	mov	byte ptr [rsp + 0x98], r13b
	lea	rax, [r15 + 0xd0]
	lea	rcx, [r15 + 0xd8]
	jmp	.label_22
	nop	dword ptr [rax]
.label_103:
	mov	rdi,  qword ptr [word ptr [rip + exclude]]
	mov	rsi, rbp
	call	excluded_file_name
	test	al, al
	jne	.label_94
	mov	qword ptr [rsp + 0x90], rbp
	cmp	r14d, 0xb
	jne	.label_126
	mov	edx, 1
	mov	rdi, rbx
	mov	rsi, r15
	call	rpl_fts_set
	mov	rdi, rbx
	call	rpl_fts_read
	cmp	rax, r15
	jne	.label_82
	movzx	r14d, word ptr [r15 + 0x70]
.label_126:
	cmp	r14d, 0xd
	je	.label_131
	cmp	r14d, 0xa
	jne	.label_88
.label_131:
	mov	r14d, dword ptr [r15 + 0x40]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.109
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x90]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
.label_130:
	mov	rdx, rbp
	call	error
	jmp	.label_10
	nop	
.label_121:
	mov	byte ptr [rsp + 0x98], r13b
	lea	rax, [r15 + 0xc0]
	lea	rcx, [r15 + 0xc8]
	jmp	.label_22
	nop	dword ptr [rax + rax]
.label_122:
	mov	byte ptr [rsp + 0x98], r13b
	lea	rax, [r15 + 0xe0]
	lea	rcx, [r15 + 0xe8]
.label_22:
	mov	r13, qword ptr [rax]
	mov	rbx, qword ptr [rcx]
	mov	r15, qword ptr [r15 + 0x58]
	mov	qword ptr [rsp + 0xb8], rbp
	mov	qword ptr [rsp + 0xc0], 1
	mov	qword ptr [rsp + 0xc8], r13
	mov	qword ptr [rsp + 0xd0], rbx
	mov	rsi,  qword ptr [word ptr [rip + process_file.n_alloc]]
	test	rsi, rsi
	je	.label_19
	mov	rdx,  qword ptr [word ptr [rip + prev_level]]
	cmp	r15, rdx
	mov	rax, rbp
	mov	r9d, 1
	je	.label_21
	jbe	.label_30
	cmp	rsi, r15
	ja	.label_31
	mov	rax, r15
	shr	rax, 0x38
	jne	.label_32
	mov	rdi,  qword ptr [word ptr [rip + process_file.dulvl]]
	mov	rsi, r15
	shl	rsi, 7
	call	xrealloc
	mov	qword ptr [word ptr [rip + process_file.dulvl]],  rax
	lea	rax, [r15 + r15]
	mov	qword ptr [word ptr [rip + process_file.n_alloc]],  rax
	mov	rdx,  qword ptr [word ptr [rip + prev_level]]
.label_31:
	lea	rsi, [rdx + 1]
	cmp	rsi, r15
	mov	rax, rbp
	mov	r9d, 1
	ja	.label_21
	mov	rax,  qword ptr [word ptr [rip + process_file.dulvl]]
	shl	rdx, 6
	lea	rax, [rax + rdx + 0x40]
	xorps	xmm0, xmm0
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_46]]
	nop	word ptr cs:[rax + rax]
.label_107:
	movups	xmmword ptr [rax], xmm0
	movups	xmmword ptr [rax + 0x10], xmm1
	movups	xmmword ptr [rax + 0x20], xmm0
	movups	xmmword ptr [rax + 0x30], xmm1
	inc	rsi
	add	rax, 0x40
	cmp	rsi, r15
	jbe	.label_107
	jmp	.label_56
	nop	dword ptr [rax]
.label_19:
	lea	rdi, [r15 + 0xa]
	mov	qword ptr [word ptr [rip + process_file.n_alloc]],  rdi
	mov	esi, 0x40
	call	xcalloc
	mov	qword ptr [word ptr [rip + process_file.dulvl]],  rax
.label_56:
	mov	rax, rbp
	mov	r9d, 1
	jmp	.label_21
.label_30:
	mov	qword ptr [rsp + 0x80], rbx
	lea	rax, [rdx - 1]
	cmp	r15, rax
	jne	.label_62
	mov	rsi,  qword ptr [word ptr [rip + process_file.dulvl]]
	shl	rdx, 6
	mov	rdi, qword ptr [rsi + rdx]
	lea	rax, [rdi + rbp]
	cmp	rbp, rax
	mov	rcx, -1
	cmova	rax, rcx
	mov	qword ptr [rsp + 0xb8], rax
	mov	r8, qword ptr [rsi + rdx + 8]
	lea	r9, [r8 + 1]
	mov	qword ptr [rsp + 0xc0], r9
	lea	r10, [rsi + rdx + 0x10]
	mov	rcx, qword ptr [rsi + rdx + 0x10]
	mov	qword ptr [rsp + 0x78], rcx
	mov	r11, qword ptr [rsi + rdx + 0x18]
	cmp	r13, rcx
	jl	.label_64
	jg	.label_73
	mov	rcx, qword ptr [rsp + 0x80]
	cmp	ecx, r11d
	jns	.label_73
.label_64:
	movups	xmm0, xmmword ptr [r10]
	lea	rcx, [rsp + 0xc8]
	movups	xmmword ptr [rcx], xmm0
.label_73:
	mov	bl,  byte ptr [byte ptr [rip + opt_separate_dirs]]
	and	bl, 1
	jne	.label_61
	mov	rbx, qword ptr [rsi + rdx + 0x20]
	add	rbx, rax
	cmp	rax, rbx
	mov	rax, rbx
	mov	rcx, -1
	cmova	rax, rcx
	mov	qword ptr [rsp + 0xb8], rax
	add	r9, qword ptr [rsi + rdx + 0x28]
	mov	qword ptr [rsp + 0xc0], r9
	mov	rbx, qword ptr [rsi + rdx + 0x30]
	cmp	qword ptr [rsp + 0xc8], rbx
	jl	.label_78
	jg	.label_61
	mov	rcx, qword ptr [rsp + 0xd0]
	mov	rbx, qword ptr [rsi + rdx + 0x38]
	cmp	ecx, ebx
	js	.label_78
.label_61:
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x60], r10
	jmp	.label_90
.label_88:
	test	byte ptr [rbx + 0x48], 0x40
	je	.label_91
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_91
	mov	rax, qword ptr [rbx + 0x18]
	cmp	rax, qword ptr [r15 + 0x78]
	jne	.label_94
.label_91:
	mov	al,  byte ptr [byte ptr [rip + opt_count_all]]
	and	al, 1
	jne	.label_97
	cmp	byte ptr [byte ptr [rip + hash_all]],  0
	jne	.label_119
	mov	eax, dword ptr [r15 + 0x90]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x4000
	je	.label_97
	cmp	qword ptr [r15 + 0x88], 2
	jb	.label_97
.label_119:
	mov	rdi,  qword ptr [word ptr [rip + di_files]]
	mov	rsi, qword ptr [r15 + 0x78]
	mov	rdx, qword ptr [r15 + 0x80]
	call	di_set_insert
	test	eax, eax
	js	.label_32
	je	.label_94
.label_97:
	mov	r12b, 1
	cmp	r14d, 1
	je	.label_10
	cmp	r14d, 2
	je	.label_109
	cmp	r14d, 7
	jne	.label_36
	mov	ebx, dword ptr [r15 + 0x40]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x90]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebx
	call	error
	mov	r14d, 7
	jmp	.label_36
.label_94:
	mov	r12b, 1
	cmp	r14d, 1
	jne	.label_10
	mov	edx, 4
	mov	rdi, rbx
	mov	rsi, r15
	call	rpl_fts_set
	mov	rdi, rbx
	call	rpl_fts_read
	cmp	rax, r15
	je	.label_10
	jmp	.label_123
.label_78:
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x60], r10
	lea	rbx, [rsi + rdx + 0x30]
	movups	xmm0, xmmword ptr [rbx]
	lea	rcx, [rsp + 0xc8]
	movups	xmmword ptr [rcx], xmm0
.label_90:
	mov	rbx, r15
	shl	rbx, 6
	lea	rcx, [rsi + rbx + 0x20]
	mov	qword ptr [rsp + 0x70], rcx
	mov	rcx, qword ptr [rsi + rbx + 0x20]
	add	rdi, rcx
	cmp	rcx, rdi
	mov	rcx, -1
	cmova	rdi, rcx
	mov	qword ptr [rsi + rbx + 0x20], rdi
	lea	rcx, [rsi + rbx + 0x28]
	mov	qword ptr [rsp + 0x68], rcx
	add	r8, qword ptr [rsi + rbx + 0x28]
	mov	qword ptr [rsi + rbx + 0x28], r8
	lea	r11, [rsi + rbx + 0x30]
	mov	r10, qword ptr [rsi + rbx + 0x30]
	cmp	r10, qword ptr [rsp + 0x78]
	jl	.label_125
	mov	qword ptr [rsp + 0x40], r11
	mov	rcx, qword ptr [rsi + rbx + 0x38]
	jle	.label_127
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_132
.label_127:
	mov	qword ptr [rsp + 0x78], rcx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r11, qword ptr [rsp + 0x78]
	cmp	r11d, ecx
	mov	rcx, qword ptr [rsp + 0x78]
	mov	r11, qword ptr [rsp + 0x40]
	jns	.label_132
.label_125:
	lea	rbx, [rsi + rbx + 0x38]
	mov	rcx, qword ptr [rsp + 0x60]
	movups	xmm0, xmmword ptr [rcx]
	movups	xmmword ptr [r11], xmm0
	mov	r10, qword ptr [r11]
	mov	rcx, qword ptr [rbx]
.label_132:
	mov	qword ptr [rsp + 0x78], rcx
	mov	rbx, qword ptr [rsi + rdx + 0x20]
	add	rbx, rdi
	cmp	rdi, rbx
	mov	rdi, -1
	cmova	rbx, rdi
	mov	rcx, qword ptr [rsp + 0x70]
	mov	qword ptr [rcx], rbx
	add	r8, qword ptr [rsi + rdx + 0x28]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	qword ptr [rcx], r8
	cmp	r10, qword ptr [rsi + rdx + 0x30]
	mov	rbx, qword ptr [rsp + 0x80]
	jl	.label_11
	jg	.label_21
	mov	rcx, qword ptr [rsi + rdx + 0x38]
	mov	rdi, qword ptr [rsp + 0x78]
	cmp	edi, ecx
	jns	.label_21
.label_11:
	lea	rcx, [rsi + rdx + 0x30]
	movups	xmm0, xmmword ptr [rcx]
	movups	xmmword ptr [r11], xmm0
	nop	
.label_21:
	mov	qword ptr [word ptr [rip + prev_level]],  r15
	or	r14d, 2
	cmp	r14d, 6
	jne	.label_24
	test	byte ptr [byte ptr [rip + opt_separate_dirs]],  1
	jne	.label_28
.label_24:
	mov	rdx,  qword ptr [word ptr [rip + process_file.dulvl]]
	mov	rsi, r15
	shl	rsi, 6
	mov	rcx, qword ptr [rdx + rsi]
	lea	rdi, [rcx + rbp]
	cmp	rcx, rdi
	mov	rcx, -1
	cmova	rdi, rcx
	mov	qword ptr [rdx + rsi], rdi
	inc	qword ptr [rdx + rsi + 8]
	cmp	qword ptr [rdx + rsi + 0x10], r13
	jl	.label_29
	jg	.label_28
	mov	rcx, qword ptr [rdx + rsi + 0x18]
	cmp	ecx, ebx
	jns	.label_28
	nop	dword ptr [rax]
.label_29:
	lea	rcx, [rdx + rsi + 0x10]
	lea	rdx, [rdx + rsi + 0x18]
	mov	qword ptr [rcx], r13
	mov	qword ptr [rdx], rbx
.label_28:
	mov	rcx,  qword ptr [word ptr [rip + tot_dui]]
	add	rbp, rcx
	cmp	rcx, rbp
	mov	rcx, -1
	cmova	rbp, rcx
	mov	qword ptr [word ptr [rip + tot_dui]],  rbp
	inc	qword ptr [word ptr [rip + label_38]]
	cmp	qword ptr [word ptr [rip + label_39]],  r13
	jl	.label_40
	jg	.label_50
	mov	rcx,  qword ptr [word ptr [rip + label_49]]
	cmp	ecx, ebx
	jns	.label_50
	nop	dword ptr [rax]
.label_40:
	mov	qword ptr [word ptr [rip + label_39]],  r13
	mov	qword ptr [word ptr [rip + label_49]],  rbx
.label_50:
	cmp	r14d, 6
	mov	rdx,  qword ptr [word ptr [rip + max_depth]]
	mov	rbx, qword ptr [rsp + 0x88]
	mov	r13b, byte ptr [rsp + 0x98]
	jne	.label_55
	cmp	r15, rdx
	jbe	.label_26
.label_55:
	movzx	ecx,  byte ptr [byte ptr [rip + opt_all]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_59
	test	r15, r15
	je	.label_26
	cmp	r15, rdx
	ja	.label_60
	jmp	.label_26
.label_59:
	test	r15, r15
	jne	.label_60
.label_26:
	mov	cl,  byte ptr [byte ptr [rip + opt_inodes]]
	and	cl, 1
	cmovne	rax, r9
	mov	rcx,  qword ptr [word ptr [rip + opt_threshold]]
	test	rcx, rcx
	js	.label_63
	cmp	rax, rcx
	jb	.label_60
	jmp	.label_68
.label_63:
	neg	rcx
	cmp	rax, rcx
	ja	.label_60
.label_68:
	lea	rdi, [rsp + 0xb8]
	mov	rsi, qword ptr [rsp + 0x90]
	call	print_size
.label_60:
	test	r12b, r12b
	setne	r12b
.label_10:
	and	r12b, r13b
	mov	rdi, rbx
	call	rpl_fts_read
	mov	r15, rax
	test	r15, r15
	mov	r13b, r12b
	jne	.label_44
.label_41:
	call	__errno_location
	mov	r13, rax
	mov	ebp, dword ptr [r13]
	test	ebp, ebp
	mov	r15, qword ptr [rsp + 0x50]
	je	.label_74
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.105
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdx, qword ptr [rbx + 0x20]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	call	error
.label_74:
	mov	qword ptr [word ptr [rip + prev_level]],  0
	mov	rdi, rbx
	call	rpl_fts_close
	test	eax, eax
	je	.label_84
	mov	ebx, dword ptr [r13]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.106
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_84:
	mov	rax, qword ptr [rsp + 0x58]
	and	al, r12b
	mov	r12, rax
	mov	r14, qword ptr [rsp + 0x30]
.label_17:
	mov	rdi, r14
	lea	rsi, [rsp + 0x9c]
	call	argv_iter
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_96
.label_128:
	mov	eax, dword ptr [rsp + 0x9c]
	cmp	eax, 2
	je	.label_99
	cmp	eax, 4
	jne	.label_124
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_99:
	mov	rdi, r14
	call	argv_iter_free
	mov	rdi,  qword ptr [word ptr [rip + di_files]]
	call	di_set_free
	mov	rdi,  qword ptr [word ptr [rip + di_mnt]]
	test	rdi, rdi
	je	.label_111
	call	di_set_free
.label_111:
	test	r15, r15
	je	.label_112
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	test	byte ptr [rdi], 0x20
	jne	.label_114
	call	rpl_fclose
	test	r12b, 1
	je	.label_112
	test	eax, eax
	je	.label_112
	jmp	.label_118
.label_114:
	test	r12b, 1
	jne	.label_118
.label_112:
	movzx	eax,  byte ptr [byte ptr [rip + print_grand_total]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_120
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	mov	edx, 5
	call	dcgettext
	mov	edi, OFFSET FLAT:tot_dui
	mov	rsi, rax
	call	print_size
.label_120:
	not	r12b
	and	r12b, 1
	movzx	eax, r12b
	add	rsp, 0x168
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_100:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp + 0x10], 0
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str.30
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.29
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.27
	mov	r9d, OFFSET FLAT:.str.28
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_102:
	xor	edi, edi
	call	usage
.label_62:
	mov	edi, OFFSET FLAT:.str.111
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 0x27d
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.process_file
	call	__assert_fail
.label_123:
	mov	edi, OFFSET FLAT:.str.108
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 0x22f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.process_file
	call	__assert_fail
.label_82:
	mov	edi, OFFSET FLAT:.str.108
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 0x20e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.process_file
	call	__assert_fail
.label_32:
	call	xalloc_die
.label_85:
	mov	esi, dword ptr [rsp + 0xb8]
	mov	r8,  qword ptr [word ptr [rip + optarg]]
	mov	edx, 0x42
	jmp	.label_12
.label_33:
	mov	edi, 1
	call	usage
.label_35:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
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
.label_124:
	cmp	eax, 3
	jne	.label_23
.label_20:
	call	xalloc_die
.label_71:
	mov	esi, dword ptr [rsp + 0xb8]
	mov	r8,  qword ptr [word ptr [rip + optarg]]
	mov	edx, 0x74
.label_12:
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	call	xstrtol_fatal
.label_105:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r15 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.43
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, 1
	call	usage
.label_118:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_110:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_53:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_23:
	mov	edi, OFFSET FLAT:.str.49
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 0x438
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_76:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x403de0

	.globl print_size
	.type print_size, @function
print_size:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x2c8
	mov	r14, rsi
	mov	rbx, rdi
	mov	al,  byte ptr [byte ptr [rip + opt_inodes]]
	and	al, 1
	lea	rcx, [rbx + 8]
	test	al, al
	cmove	rcx, rbx
	mov	rdi, qword ptr [rcx]
	cmp	rdi, -1
	je	.label_140
	mov	edx,  dword ptr [dword ptr [rip + human_output_opts]]
	mov	r8,  qword ptr [word ptr [rip + output_block_size]]
	lea	rsi, [rsp]
	mov	ecx, 1
	call	human_readable
	jmp	.label_141
.label_140:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.113
	mov	edx, 5
	call	dcgettext
.label_141:
	mov	rdi, rax
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	movzx	eax,  byte ptr [byte ptr [rip + opt_time]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_138
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_139
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 9
.label_143:
	mov	r12,  qword ptr [word ptr [rip + time_format]]
	mov	r15,  qword ptr [word ptr [rip + localtz]]
	movups	xmm0, xmmword ptr [rbx + 0x10]
	movaps	xmmword ptr [rsp + 0x2b0], xmm0
	lea	rsi, [rsp + 0x2b0]
	lea	rdx, [rsp]
	mov	rdi, r15
	call	localtime_rz
	test	rax, rax
	je	.label_142
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	r8d, dword ptr [rsp + 0x2b8]
	lea	rdx, [rsp]
	mov	rsi, r12
	mov	rcx, r15
	call	fprintftime
	jmp	.label_138
.label_142:
	mov	rdi, qword ptr [rsp + 0x2b0]
	lea	rsi, [rsp + 0x290]
	call	imaxtostr
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.114
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	call	error
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rbx
	call	fputs_unlocked
.label_138:
	mov	al,  byte ptr [byte ptr [rip + opt_nul_terminate_output]]
	xor	edx, edx
	and	al, 1
	mov	ecx, 0xa
	cmovne	ecx, edx
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.112
	xor	eax, eax
	mov	rdx, r14
	call	__printf_chk
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	fflush_unlocked
	add	rsp, 0x2c8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_139:
	mov	esi, 9
	call	__overflow
	jmp	.label_143
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f80

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f90

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
	mov	qword ptr [rsp + 0x20], rbp
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_147
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_144:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_145
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_149
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_150
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_146
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_145
.label_146:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_145
.label_150:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_145:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_144
	jmp	.label_148
.label_147:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_148:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_149:
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
	#Procedure 0x404090
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
	je	.label_151
	mov	esi, OFFSET FLAT:.str.1_1
	jmp	.label_152
.label_151:
	mov	esi, OFFSET FLAT:.str_4
.label_152:
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
	#Procedure 0x404100

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
	mov	rbx, rdi
	mov	qword ptr [rsp], rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbx]
	test	rbx, rbx
	je	.label_157
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_154:
	test	r15, r15
	je	.label_156
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_153
.label_156:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_0
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_155
	nop	word ptr cs:[rax + rax]
.label_153:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_155:
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_154
.label_157:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_158
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
.label_158:
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
	#Procedure 0x404230

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_159
	mov	qword ptr [rsp + 0x10], rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_160
	mov	esi, OFFSET FLAT:.str.1_1
	jmp	.label_161
.label_160:
	mov	esi, OFFSET FLAT:.str_4
.label_161:
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r14
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 0x10]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	rbx
	mov	rax, -1
.label_159:
	add	rsp, 0x18
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
	#Procedure 0x4042f0
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
	je	.label_162
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_163:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_162
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_163
.label_162:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404360

	.globl argv_iter_init_argv
	.type argv_iter_init_argv, @function
argv_iter_init_argv:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x30
	call	malloc
	xor	ecx, ecx
	test	rax, rax
	je	.label_164
	mov	qword ptr [rax], 0
	mov	qword ptr [rax + 0x20], rbx
	mov	qword ptr [rax + 0x28], rbx
	mov	rcx, rax
.label_164:
	mov	rax, rcx
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404390

	.globl argv_iter_init_stream
	.type argv_iter_init_stream, @function
argv_iter_init_stream:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x30
	call	malloc
	xor	ecx, ecx
	test	rax, rax
	je	.label_165
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x18], xmm0
	movups	xmmword ptr [rax + 8], xmm0
	mov	rcx, rax
.label_165:
	mov	rax, rcx
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043c0

	.globl argv_iter
	.type argv_iter, @function
argv_iter:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	je	.label_166
	lea	rdi, [rbx + 0x10]
	lea	rsi, [rbx + 0x18]
	xor	edx, edx
	call	getdelim
	test	rax, rax
	js	.label_168
	mov	dword ptr [r14], 1
	inc	qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_167
.label_166:
	mov	rax, qword ptr [rbx + 0x28]
	cmp	qword ptr [rax], 0
	je	.label_169
	mov	dword ptr [r14], 1
	mov	rax, qword ptr [rbx + 0x28]
	lea	rcx, [rax + 8]
	mov	qword ptr [rbx + 0x28], rcx
	mov	rax, qword ptr [rax]
	jmp	.label_167
.label_168:
	mov	rdi, qword ptr [rbx]
	call	feof
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	eax, [rax + rax + 2]
	mov	dword ptr [r14], eax
	xor	eax, eax
	jmp	.label_167
.label_169:
	mov	dword ptr [r14], 2
	xor	eax, eax
.label_167:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404450

	.globl argv_iter_n_args
	.type argv_iter_n_args, @function
argv_iter_n_args:
	cmp	qword ptr [rdi], 0
	je	.label_170
	mov	rax, qword ptr [rdi + 8]
	ret	
.label_170:
	mov	rax, qword ptr [rdi + 0x28]
	sub	rax, qword ptr [rdi + 0x20]
	sar	rax, 3
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404470

	.globl argv_iter_free
	.type argv_iter_free, @function
argv_iter_free:
	push	rbx
	mov	rbx, rdi
	cmp	qword ptr [rbx], 0
	je	.label_171
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
.label_171:
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404490
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044a0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044b0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_175
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_174
	cmp	dword ptr [rbp], 0x20
	jne	.label_174
.label_175:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_173
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_174:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_5
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_172
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_173:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_172:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_2
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x404570

	.globl di_set_alloc
	.type di_set_alloc, @function
di_set_alloc:
	push	rbx
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_176
	mov	edi, 0xb
	xor	esi, esi
	mov	edx, OFFSET FLAT:di_ent_hash
	mov	ecx, OFFSET FLAT:di_ent_compare
	mov	r8d, OFFSET FLAT:di_ent_free
	call	hash_initialize
	mov	qword ptr [rbx], rax
	test	rax, rax
	je	.label_177
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 8], xmm0
	jmp	.label_176
.label_177:
	mov	rdi, rbx
	call	free
	xor	ebx, ebx
.label_176:
	mov	rax, rbx
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4045c0

	.globl di_ent_hash
	.type di_ent_hash, @function
di_ent_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4045d0

	.globl di_ent_compare
	.type di_ent_compare, @function
di_ent_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045e0

	.globl di_ent_free
	.type di_ent_free, @function
di_ent_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 8]
	call	hash_free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404600

	.globl di_set_free
	.type di_set_free, @function
di_set_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	hash_free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404630

	.globl di_set_insert
	.type di_set_insert, @function
di_set_insert:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r12 + 0x10]
	test	rbx, rbx
	je	.label_183
	cmp	qword ptr [rbx], r15
	jne	.label_181
	mov	r15, qword ptr [rbx + 8]
	jmp	.label_179
.label_183:
	mov	edi, 0x10
	call	malloc
	mov	rbx, rax
	mov	qword ptr [r12 + 0x10], rbx
	test	rbx, rbx
	je	.label_178
.label_181:
	mov	qword ptr [rbx], r15
	mov	rdi, qword ptr [r12]
	mov	rsi, rbx
	call	hash_insert
	test	rax, rax
	je	.label_178
	cmp	rax, rbx
	je	.label_180
	mov	r15, qword ptr [rax + 8]
	jmp	.label_182
.label_180:
	mov	qword ptr [r12 + 0x10], 0
	mov	edi, 0x3fd
	xor	esi, esi
	mov	edx, OFFSET FLAT:di_ino_hash
	xor	ecx, ecx
	xor	r8d, r8d
	call	hash_initialize
	mov	r15, rax
.label_182:
	mov	qword ptr [rbx + 8], r15
.label_179:
	test	r15, r15
	je	.label_178
	movabs	rax, 0x7ffffffffffffffe
	lea	rcx, [r14 - 1]
	cmp	rcx, rax
	jb	.label_185
	mov	rdi, qword ptr [r12 + 8]
	test	rdi, rdi
	jne	.label_184
	inc	rax
	mov	rdi, rax
	call	ino_map_alloc
	mov	rdi, rax
	mov	qword ptr [r12 + 8], rdi
	test	rdi, rdi
	je	.label_178
.label_184:
	mov	rsi, r14
	call	ino_map_insert
	mov	r14, rax
	cmp	r14, -1
	je	.label_178
.label_185:
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	hash_insert_if_absent
.label_178:
	mov	eax, 0xffffffff
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404730

	.globl di_set_lookup
	.type di_set_lookup, @function
di_set_lookup:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbp, rsi
	mov	r15, rdi
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	je	.label_193
	cmp	qword ptr [rbx], rbp
	jne	.label_187
	mov	r12, qword ptr [rbx + 8]
	jmp	.label_189
.label_193:
	mov	edi, 0x10
	call	malloc
	mov	rbx, rax
	mov	qword ptr [r15 + 0x10], rbx
	mov	r13d, 0xffffffff
	test	rbx, rbx
	je	.label_186
.label_187:
	mov	qword ptr [rbx], rbp
	mov	rdi, qword ptr [r15]
	mov	rsi, rbx
	call	hash_insert
	mov	r13d, 0xffffffff
	test	rax, rax
	je	.label_186
	cmp	rax, rbx
	je	.label_190
	mov	r12, qword ptr [rax + 8]
	jmp	.label_191
.label_190:
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x3fd
	xor	esi, esi
	mov	edx, OFFSET FLAT:di_ino_hash
	xor	ecx, ecx
	xor	r8d, r8d
	call	hash_initialize
	mov	r12, rax
.label_191:
	mov	qword ptr [rbx + 8], r12
.label_189:
	mov	r13d, 0xffffffff
	test	r12, r12
	je	.label_186
	movabs	rdi, 0x7ffffffffffffffe
	lea	rax, [r14 - 1]
	cmp	rax, rdi
	jb	.label_188
	mov	rax, qword ptr [r15 + 8]
	test	rax, rax
	jne	.label_192
	inc	rdi
	call	ino_map_alloc
	mov	qword ptr [r15 + 8], rax
	test	rax, rax
	je	.label_186
.label_192:
	mov	rdi, rax
	mov	rsi, r14
	call	ino_map_insert
	mov	r14, rax
	cmp	r14, -1
	je	.label_186
.label_188:
	mov	rdi, r12
	mov	rsi, r14
	call	hash_lookup
	test	rax, rax
	setne	al
	movzx	r13d, al
.label_186:
	mov	eax, r13d
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
	#Procedure 0x404840

	.globl di_ino_hash
	.type di_ino_hash, @function
di_ino_hash:
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404850
	.globl exclude_add_pattern_buffer
	.type exclude_add_pattern_buffer, @function
exclude_add_pattern_buffer:

	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	edi, 0x10
	call	xmalloc
	mov	qword ptr [rax + 8], r14
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 8], rax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404880
	.globl fnmatch_pattern_has_wildcards
	.type fnmatch_pattern_has_wildcards, @function
fnmatch_pattern_has_wildcards:

	mov	eax, esi
	and	eax, 0x8000000
	mov	r8d, esi
	and	r8d, 2
	and	esi, 0x20
	jmp	.label_194
.label_197:
	movzx	ecx, dl
	add	rdi, rcx
	nop	dword ptr [rax]
.label_194:
	movsx	edx, byte ptr [rdi]
	inc	rdi
	cmp	edx, 0x3e
	jg	.label_201
	cmp	edx, 0x29
	jg	.label_203
	lea	ecx, [rdx - 0x28]
	cmp	ecx, 2
	jb	.label_199
	cmp	edx, 0x21
	je	.label_204
	test	edx, edx
	jne	.label_194
	jmp	.label_195
	nop	word ptr cs:[rax + rax]
.label_201:
	cmp	edx, 0x5b
	jg	.label_198
	cmp	edx, 0x40
	je	.label_204
	cmp	edx, 0x3f
	je	.label_200
	cmp	edx, 0x5b
	jne	.label_194
	jmp	.label_200
	nop	word ptr [rax + rax]
.label_203:
	cmp	edx, 0x2b
	je	.label_204
	cmp	edx, 0x2e
	je	.label_199
	cmp	edx, 0x2a
	jne	.label_194
	jmp	.label_200
	nop	word ptr cs:[rax + rax]
.label_198:
	cmp	edx, 0x5c
	je	.label_202
	cmp	edx, 0x7d
	je	.label_199
	cmp	edx, 0x7b
	jne	.label_194
	nop	
.label_199:
	test	eax, eax
	je	.label_194
	jmp	.label_200
.label_204:
	test	esi, esi
	je	.label_194
	movzx	ecx, byte ptr [rdi]
	cmp	ecx, 0x28
	jne	.label_194
	jmp	.label_200
.label_202:
	test	eax, eax
	jne	.label_194
	test	r8d, r8d
	jne	.label_196
	cmp	byte ptr [rdi], 0
	setne	dl
	jmp	.label_197
.label_196:
	xor	edx, edx
	jmp	.label_197
.label_200:
	mov	al, 1
	ret	
.label_195:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404970

	.globl new_exclude
	.type new_exclude, @function
new_exclude:
	mov	edi, 0x10
	jmp	xzalloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404980
	.globl free_exclude
	.type free_exclude, @function
free_exclude:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	jmp	.label_205
	nop	word ptr cs:[rax + rax]
.label_206:
	mov	rdi, r12
	call	free
.label_205:
	test	r15, r15
	je	.label_208
	mov	r12, r15
	mov	r15, qword ptr [r12]
	mov	eax, dword ptr [r12 + 8]
	test	eax, eax
	je	.label_210
	cmp	eax, 1
	jne	.label_206
	mov	rax, qword ptr [r12 + 0x20]
	test	rax, rax
	je	.label_207
	mov	ebx, 8
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_213:
	mov	rdi, qword ptr [r12 + 0x10]
	test	byte ptr [rdi + rbx - 5], 8
	je	.label_212
	add	rdi, rbx
	call	rpl_regfree
	mov	rax, qword ptr [r12 + 0x20]
.label_212:
	inc	r13
	add	rbx, 0x48
	cmp	r13, rax
	jb	.label_213
.label_207:
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	jmp	.label_206
	nop	word ptr cs:[rax + rax]
.label_210:
	mov	rdi, qword ptr [r12 + 0x10]
	call	hash_free
	jmp	.label_206
.label_208:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_209
	nop	dword ptr [rax + rax]
.label_211:
	mov	r15, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, rbx
	call	free
	test	r15, r15
	mov	rbx, r15
	jne	.label_211
.label_209:
	mov	rdi, r14
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404a70
	.globl exclude_fnmatch
	.type exclude_fnmatch, @function
exclude_fnmatch:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15d, edx
	mov	rbx, rsi
	mov	r14, rdi
	mov	eax, OFFSET FLAT:fnmatch
	mov	ebp, OFFSET FLAT:fnmatch_no_wildcards
	test	r15d, 0x10000000
	cmovne	rbp, rax
	call	rbp
	mov	ecx, eax
	test	ecx, ecx
	sete	al
	test	r15d, 0x40000000
	jne	.label_215
	mov	dl, byte ptr [rbx]
	test	ecx, ecx
	setne	cl
	test	dl, dl
	je	.label_215
	test	cl, cl
	je	.label_215
	inc	rbx
	nop	dword ptr [rax]
.label_216:
	movzx	ecx, dl
	cmp	ecx, 0x2f
	jne	.label_214
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x2f
	je	.label_214
	mov	rdi, r14
	mov	rsi, rbx
	mov	edx, r15d
	call	rbp
	test	eax, eax
	sete	al
.label_214:
	test	al, 1
	jne	.label_215
	mov	dl, byte ptr [rbx]
	inc	rbx
	test	dl, dl
	jne	.label_216
.label_215:
	and	al, 1
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b00

	.globl fnmatch_no_wildcards
	.type fnmatch_no_wildcards, @function
fnmatch_no_wildcards:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	eax, edx
	and	eax, 0x10
	test	dl, 8
	jne	.label_217
	mov	rdi, r15
	mov	rsi, r14
	add	rsp, 8
	test	eax, eax
	je	.label_221
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	mbscasecmp
.label_217:
	test	eax, eax
	je	.label_220
	mov	rdi, r14
	call	xstrdup
	mov	r14, rax
	mov	esi, 0x2f
	mov	rdi, r14
	jmp	.label_224
	nop	dword ptr [rax]
.label_222:
	mov	byte ptr [rbx], 0x2f
	inc	rbx
	mov	esi, 0x2f
	mov	rdi, rbx
.label_224:
	call	strchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_218
	mov	byte ptr [rbx], 0
	mov	rdi, r15
	mov	rsi, r14
	call	mbscasecmp
	mov	ebp, eax
	test	ebp, ebp
	jg	.label_222
	jmp	.label_223
.label_221:
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcmp
.label_220:
	mov	rdi, r15
	call	strlen
	mov	rbx, rax
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	strncmp
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_219
	movsx	eax, byte ptr [r14 + rbx]
	xor	ebp, ebp
	cmp	eax, 0x2f
	cmovne	ebp, eax
	jmp	.label_219
.label_218:
	mov	rdi, r15
	mov	rsi, r14
	call	mbscasecmp
	mov	ebp, eax
.label_223:
	mov	rdi, r14
	call	free
.label_219:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404be0

	.globl excluded_file_name
	.type excluded_file_name, @function
excluded_file_name:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, rsi
	mov	qword ptr [rsp + 0x30], r14
	mov	rax, qword ptr [rdi]
	test	rax, rax
	je	.label_243
	lea	rcx, [r14 + 1]
	mov	qword ptr [rsp + 0x10], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x28], rcx
.label_230:
	mov	r15, rax
	mov	r13, qword ptr [r15 + 8]
	test	r13d, r13d
	je	.label_229
	mov	rbx, qword ptr [r15 + 0x20]
	mov	qword ptr [rsp + 0x20], rbx
	test	rbx, rbx
	je	.label_241
	mov	rbp, qword ptr [r15 + 0x10]
	mov	qword ptr [rsp + 0x18], rbp
	mov	qword ptr [rsp + 8], r15
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_233:
	lea	rax, [r13 + r13*8]
	mov	r12d, dword ptr [rbp + rax*8]
	test	r12d, 0x8000000
	lea	rdi, [rbp + rax*8 + 8]
	jne	.label_242
	mov	rbp, qword ptr [rdi]
	test	r12d, 0x10000000
	mov	r15d, OFFSET FLAT:fnmatch_no_wildcards
	mov	eax, OFFSET FLAT:fnmatch
	cmovne	r15, rax
	mov	rdi, rbp
	mov	rsi, r14
	mov	edx, r12d
	call	r15
	test	eax, eax
	sete	cl
	test	r12d, 0x40000000
	jne	.label_228
	mov	dl, byte ptr [r14]
	test	eax, eax
	setne	al
	test	dl, dl
	je	.label_228
	test	al, al
	mov	rbx, qword ptr [rsp + 0x10]
	je	.label_228
	nop	word ptr cs:[rax + rax]
.label_245:
	movzx	eax, dl
	cmp	eax, 0x2f
	jne	.label_225
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2f
	je	.label_225
	mov	rdi, rbp
	mov	rsi, rbx
	mov	edx, r12d
	call	r15
	test	eax, eax
	sete	cl
.label_225:
	test	cl, 1
	jne	.label_228
	mov	dl, byte ptr [rbx]
	inc	rbx
	test	dl, dl
	jne	.label_245
	nop	
.label_228:
	xor	r12d, r12d
	test	cl, 1
	mov	r14, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_247
	jmp	.label_226
	nop	dword ptr [rax]
.label_242:
	xor	r12d, r12d
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, r14
	call	rpl_regexec
	test	eax, eax
	je	.label_232
.label_247:
	inc	r13
	cmp	r13, rbx
	jb	.label_233
	jmp	.label_237
	nop	dword ptr [rax + rax]
.label_229:
	mov	rbp, qword ptr [rsp + 0x28]
	test	rbp, rbp
	je	.label_238
	shr	r13, 0x20
	jmp	.label_240
.label_238:
	mov	rdi, r14
	call	strlen
	lea	rdi, [rax + 1]
	call	xmalloc
	mov	rbp, rax
	mov	r13d, dword ptr [r15 + 0xc]
.label_240:
	mov	qword ptr [rsp + 0x30], r14
	mov	qword ptr [rsp + 0x28], rbp
	mov	rbx, qword ptr [r15 + 0x10]
	mov	qword ptr [rsp + 8], r15
	mov	ecx, r13d
	and	ecx, 8
	mov	dword ptr [rsp + 0x20], ecx
	and	r13d, 0x40000000
.label_227:
	mov	rdi, rbp
	mov	rsi, r14
	call	strcpy
	mov	rdi, rbx
	mov	rsi, rbp
	call	hash_lookup
	xor	r12d, r12d
	test	rax, rax
	jne	.label_246
	cmp	dword ptr [rsp + 0x20], 0
	mov	r15, qword ptr [rsp + 0x28]
	je	.label_234
	nop	word ptr [rax + rax]
.label_239:
	mov	esi, 0x2f
	mov	rdi, r15
	call	strrchr
	test	rax, rax
	je	.label_234
	mov	byte ptr [rax], 0
	mov	rdi, rbx
	mov	rsi, r15
	call	hash_lookup
	test	rax, rax
	je	.label_239
	jmp	.label_244
	nop	word ptr [rax + rax]
.label_234:
	test	r13d, r13d
	jne	.label_231
	mov	esi, 0x2f
	mov	rdi, r14
	call	strchr
	test	rax, rax
	lea	r14, [rax + 1]
	mov	rbp, qword ptr [rsp + 0x28]
	jne	.label_227
.label_231:
	mov	r14, qword ptr [rsp + 0x30]
.label_237:
	mov	r15, qword ptr [rsp + 8]
.label_241:
	mov	rax, qword ptr [r15]
	mov	r12d, 1
	test	rax, rax
	jne	.label_230
	jmp	.label_235
.label_243:
	xor	eax, eax
	jmp	.label_236
.label_244:
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_235
.label_226:
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_235
.label_232:
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_235
.label_246:
	mov	r15, qword ptr [rsp + 8]
.label_235:
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	eax, dword ptr [r15 + 0xc]
	shr	eax, 0x1d
	not	eax
	and	eax, 1
	cmp	r12d, eax
	setne	al
.label_236:
	add	rsp, 0x38
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
	#Procedure 0x404e80

	.globl add_exclude
	.type add_exclude, @function
add_exclude:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13d, edx
	mov	r14, rdi
	test	r13d, 0x18000000
	je	.label_248
	mov	ebp, r13d
	and	ebp, 0x8000000
	mov	eax, r13d
	and	eax, 2
	mov	ecx, r13d
	and	ecx, 0x20
	mov	rdx, rsi
	jmp	.label_256
.label_252:
	movzx	edi, dil
	add	rdx, rdi
	nop	word ptr cs:[rax + rax]
.label_256:
	movsx	ebx, byte ptr [rdx]
	inc	rdx
	cmp	ebx, 0x3e
	jg	.label_276
	cmp	ebx, 0x29
	jg	.label_262
	lea	edi, [rbx - 0x28]
	cmp	edi, 2
	jb	.label_263
	cmp	ebx, 0x21
	je	.label_251
	test	ebx, ebx
	jne	.label_256
	jmp	.label_248
	nop	word ptr cs:[rax + rax]
.label_276:
	cmp	ebx, 0x5b
	jg	.label_249
	cmp	ebx, 0x40
	je	.label_251
	cmp	ebx, 0x3f
	je	.label_253
	cmp	ebx, 0x5b
	jne	.label_256
	jmp	.label_253
	nop	word ptr [rax + rax]
.label_262:
	cmp	ebx, 0x2b
	je	.label_251
	cmp	ebx, 0x2e
	je	.label_263
	cmp	ebx, 0x2a
	jne	.label_256
	jmp	.label_253
	nop	word ptr cs:[rax + rax]
.label_249:
	cmp	ebx, 0x5c
	je	.label_268
	cmp	ebx, 0x7d
	je	.label_263
	cmp	ebx, 0x7b
	jne	.label_256
	nop	
.label_263:
	test	ebp, ebp
	je	.label_256
	jmp	.label_253
.label_251:
	test	ecx, ecx
	je	.label_256
	movzx	edi, byte ptr [rdx]
	cmp	edi, 0x28
	jne	.label_256
	jmp	.label_253
.label_268:
	test	ebp, ebp
	jne	.label_256
	test	eax, eax
	jne	.label_279
	cmp	byte ptr [rdx], 0
	setne	dil
	jmp	.label_252
.label_279:
	xor	edi, edi
	jmp	.label_252
.label_253:
	mov	qword ptr [rsp + 0x10], rsi
	mov	rbx, qword ptr [r14]
	test	rbx, rbx
	je	.label_254
	mov	rax, qword ptr [rbx + 8]
	cmp	eax, 1
	jne	.label_254
	shr	rax, 0x20
	xor	eax, r13d
	test	eax, 0x20000000
	je	.label_275
.label_254:
	mov	edi, 0x28
	call	xzalloc
	mov	rbx, rax
	mov	dword ptr [rbx + 8], 1
	mov	dword ptr [rbx + 0xc], r13d
	mov	rax, qword ptr [r14]
	mov	qword ptr [rbx], rax
	mov	qword ptr [r14], rbx
.label_275:
	mov	rax, qword ptr [rbx + 0x20]
	cmp	rax, qword ptr [rbx + 0x18]
	jne	.label_274
	mov	rdi, qword ptr [rbx + 0x10]
	test	rdi, rdi
	je	.label_271
	movabs	rcx, 0x12f684bda12f684
	cmp	rax, rcx
	jae	.label_260
	mov	rcx, rax
	shr	rcx, 1
	lea	rcx, [rax + rcx + 1]
	jmp	.label_250
.label_248:
	mov	rbx, qword ptr [r14]
	test	rbx, rbx
	je	.label_255
	mov	rax, qword ptr [rbx + 8]
	test	eax, eax
	jne	.label_255
	shr	rax, 0x20
	xor	eax, r13d
	test	eax, 0x60000018
	je	.label_261
.label_255:
	mov	edi, 0x28
	mov	rbp, rsi
	call	xzalloc
	mov	rbx, rax
	mov	dword ptr [rbx + 8], 0
	mov	dword ptr [rbx + 0xc], r13d
	mov	eax, r13d
	and	eax, 0x10
	shr	eax, 4
	mov	eax, OFFSET FLAT:string_hasher_ci
	mov	edx, OFFSET FLAT:string_hasher
	cmovne	rdx, rax
	mov	eax, OFFSET FLAT:string_compare_ci
	mov	ecx, OFFSET FLAT:string_compare
	cmovne	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	r8d, OFFSET FLAT:string_free
	call	hash_initialize
	mov	rsi, rbp
	mov	qword ptr [rbx + 0x10], rax
	mov	rax, qword ptr [r14]
	mov	qword ptr [rbx], rax
	mov	qword ptr [r14], rbx
.label_261:
	mov	rdi, rsi
	call	xstrdup
	mov	rbp, rax
	and	r13d, 0x10000002
	cmp	r13d, 0x10000000
	jne	.label_258
	mov	rax, rbp
	mov	rcx, rbp
.label_272:
	movzx	edx, byte ptr [rcx]
	cmp	edx, 0x5c
	jne	.label_264
	cmp	byte ptr [rcx + 1], 0
	setne	sil
	movzx	edx, sil
	mov	dl, byte ptr [rcx + rdx]
	jmp	.label_266
	nop	dword ptr [rax]
.label_264:
	xor	esi, esi
.label_266:
	movzx	esi, sil
	lea	rcx, [rcx + rsi + 1]
	mov	byte ptr [rax], dl
	inc	rax
	test	dl, dl
	jne	.label_272
.label_258:
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rsi, rbp
	call	hash_insert
	cmp	rax, rbp
	je	.label_259
	mov	rdi, rbp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_274:
	mov	r12, qword ptr [rbx + 0x10]
	jmp	.label_267
.label_271:
	test	rax, rax
	mov	ecx, 1
	cmovne	rcx, rax
	movabs	rax, 0x1c71c71c71c71c8
	cmp	rcx, rax
	jae	.label_257
.label_250:
	mov	qword ptr [rbx + 0x18], rcx
	shl	rcx, 3
	lea	rsi, [rcx + rcx*8]
	call	xrealloc
	mov	r12, rax
	mov	qword ptr [rbx + 0x10], r12
	mov	rax, qword ptr [rbx + 0x20]
.label_267:
	lea	r15, [rax + 1]
	test	ebp, ebp
	mov	qword ptr [rbx + 0x20], r15
	lea	rbp, [rax + rax*8]
	mov	dword ptr [r12 + rbp*8], r13d
	mov	rdx, qword ptr [rsp + 0x10]
	jne	.label_269
	test	r13d, 0x4000000
	je	.label_277
	mov	rdi, rdx
	call	xstrdup
	mov	rbx, rax
	mov	edi, 0x10
	call	xmalloc
	mov	rdx, rbx
	mov	qword ptr [rax + 8], rdx
	mov	rcx, qword ptr [r14 + 8]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 8], rax
.label_277:
	mov	qword ptr [r12 + rbp*8 + 8], rdx
	jmp	.label_259
.label_269:
	mov	r14d, r13d
	shr	r14d, 3
	and	r14d, 2
	or	r14d, 9
	test	r13b, 8
	jne	.label_273
	lea	rdi, [r12 + rbp*8 + 8]
	mov	rsi, rdx
	mov	edx, r14d
	call	rpl_regcomp
	mov	ebp, eax
	jmp	.label_270
.label_273:
	mov	qword ptr [rsp + 8], rbp
	mov	rdi, rdx
	mov	rbp, rdx
	call	strlen
	mov	rcx, rbp
	mov	rbp, rax
	inc	rbp
	nop	dword ptr [rax + rax]
.label_278:
	cmp	rbp, 1
	je	.label_265
	movzx	eax, byte ptr [rcx + rbp - 2]
	dec	rbp
	cmp	eax, 0x2f
	je	.label_278
	lea	rdi, [rbp + 7]
	mov	r15, rcx
	call	xmalloc
	mov	r13, rax
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [r13 + rbp + 6], 0
	mov	word ptr [r13 + rbp + 4], 0x3f29
	mov	dword ptr [r13 + rbp], 0x2a2e2f28
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [r12 + rax*8 + 8]
	mov	rsi, r13
	mov	edx, r14d
	call	rpl_regcomp
	mov	ebp, eax
	mov	rdi, r13
	call	free
.label_270:
	test	ebp, ebp
	je	.label_259
	mov	r15, qword ptr [rbx + 0x20]
.label_265:
	dec	r15
	mov	qword ptr [rbx + 0x20], r15
.label_259:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_260:
	call	xalloc_die
.label_257:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x405280

	.globl add_exclude_fp
	.type add_exclude_fp, @function
add_exclude_fp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x18], r9
	mov	dword ptr [rsp], r8d
	mov	dword ptr [rsp + 0x14], ecx
	mov	r12, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x20], 0
	xor	r13d, r13d
	lea	rbx, [rsp + 0x20]
	xor	ebp, ebp
	jmp	.label_280
	nop	dword ptr [rax + rax]
.label_289:
	mov	byte ptr [rbp + r13], r15b
	inc	r13
.label_280:
	mov	rax, qword ptr [r12 + 8]
	cmp	rax, qword ptr [r12 + 0x10]
	jae	.label_282
	lea	rcx, [rax + 1]
	mov	qword ptr [r12 + 8], rcx
	movzx	r15d, byte ptr [rax]
.label_287:
	cmp	r13, qword ptr [rsp + 0x20]
	jne	.label_289
	mov	rdi, rbp
	mov	rsi, rbx
	call	x2realloc
	mov	rbp, rax
	jmp	.label_289
.label_282:
	mov	rdi, r12
	call	__uflow
	mov	r15d, eax
	cmp	r15d, -1
	jne	.label_287
	xor	eax, eax
	test	byte ptr [r12], 0x20
	je	.label_283
	call	__errno_location
	mov	eax, dword ptr [rax]
.label_283:
	mov	dword ptr [rsp + 4], eax
	lea	rsi, [r13 + 1]
	mov	rdi, rbp
	call	xrealloc
	mov	rbp, rax
	lea	rbx, [rbp + r13]
	mov	r12d, dword ptr [rsp]
	mov	byte ptr [rbp + r13], r12b
	test	r13, r13
	je	.label_291
	movzx	eax, byte ptr [r13 + rbp - 1]
	movzx	ecx, r12b
	cmp	eax, ecx
	setne	al
	jmp	.label_293
.label_291:
	xor	eax, eax
.label_293:
	movzx	r15d, al
	add	rbx, r15
	mov	edi, 0x10
	call	xmalloc
	mov	qword ptr [rax + 8], rbp
	mov	rcx, qword ptr [r14 + 8]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 8], rax
	cmp	rbp, rbx
	jae	.label_290
	movzx	r12d, r12b
	add	r13, r15
	mov	r15, rbp
	add	r15, r13
	mov	rbx, rbp
	nop	dword ptr [rax + rax]
.label_288:
	movzx	eax, byte ptr [rbp]
	cmp	eax, r12d
	jne	.label_284
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + r12*2 + 1], 0x20
	mov	rcx, rbp
	mov	rdx, rbp
	je	.label_292
	nop	
.label_285:
	cmp	rbx, rcx
	je	.label_281
	movzx	esi, byte ptr [rcx - 1]
	mov	rdx, rcx
	dec	rcx
	test	byte ptr [rax + rsi*2 + 1], 0x20
	jne	.label_285
.label_292:
	mov	byte ptr [rdx], 0
	mov	rdi, r14
	mov	rsi, rbx
	mov	edx, dword ptr [rsp + 0x14]
	mov	rcx, qword ptr [rsp + 0x18]
	call	qword ptr [rsp + 8]
.label_281:
	inc	rbp
	mov	rbx, rbp
	jmp	.label_286
	nop	word ptr cs:[rax + rax]
.label_284:
	inc	rbp
.label_286:
	cmp	rbp, r15
	jne	.label_288
.label_290:
	call	__errno_location
	mov	ecx, dword ptr [rsp + 4]
	mov	dword ptr [rax], ecx
	neg	ecx
	sbb	eax, eax
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
	#Procedure 0x405420

	.globl add_exclude_file
	.type add_exclude_file, @function
add_exclude_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, r8d
	mov	r14d, ecx
	mov	r15, rsi
	mov	qword ptr [rsp], rdi
	movzx	eax, byte ptr [rdx]
	cmp	eax, 0x2d
	jne	.label_294
	cmp	byte ptr [rdx + 1], 0
	je	.label_296
.label_294:
	mov	esi, OFFSET FLAT:.str.1_0
	mov	rdi, rdx
	call	fopen
	mov	rbx, rax
	mov	eax, 0xffffffff
	test	rbx, rbx
	je	.label_295
	movsx	r8d, bpl
	lea	r9, [rsp]
	mov	edi, OFFSET FLAT:call_addfn
	mov	rsi, r15
	mov	rdx, rbx
	mov	ecx, r14d
	call	add_exclude_fp
	mov	ebp, eax
	mov	rdi, rbx
	call	rpl_fclose
	cmp	eax, 1
	sbb	eax, eax
	not	eax
	or	ebp, eax
	mov	eax, ebp
	jmp	.label_295
.label_296:
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	movsx	r8d, bpl
	lea	r9, [rsp]
	mov	edi, OFFSET FLAT:call_addfn
	mov	rsi, r15
	mov	ecx, r14d
	call	add_exclude_fp
.label_295:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054c0

	.globl call_addfn
	.type call_addfn, @function
call_addfn:
	mov	rax, qword ptr [rcx]
	jmp	rax
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054d0

	.globl string_hasher_ci
	.type string_hasher_ci, @function
string_hasher_ci:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	byte ptr [rsp], 0
	mov	qword ptr [rsp + 4], 0
	mov	byte ptr [rsp + 0xc], 0
	lea	rdi, [rsp]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdi, rax
	shr	rdi, 0x20
	xor	ebx, ebx
	test	al, al
	je	.label_301
	test	edi, edi
	je	.label_300
.label_301:
	xor	ebx, ebx
	lea	r15, [rsp]
	nop	dword ptr [rax + rax]
.label_298:
	test	al, al
	je	.label_297
	call	towlower
	mov	rcx, qword ptr [rsp + 0x10]
	jmp	.label_299
.label_297:
	mov	rcx, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rcx]
.label_299:
	mov	rdx, rbx
	shl	rdx, 5
	sub	rdx, rbx
	cdqe	
	add	rax, rdx
	xor	edx, edx
	div	r14
	add	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x10], rcx
	mov	byte ptr [rsp + 0xc], 0
	mov	rbx, rdx
	mov	rdi, r15
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdi, rax
	shr	rdi, 0x20
	test	al, al
	je	.label_298
	test	edi, edi
	jne	.label_298
.label_300:
	mov	rax, rbx
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405590

	.globl string_hasher
	.type string_hasher, @function
string_hasher:
	jmp	hash_string
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055a0

	.globl string_compare_ci
	.type string_compare_ci, @function
string_compare_ci:
	push	rax
	call	mbscasecmp
	test	eax, eax
	sete	al
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4055b0

	.globl string_compare
	.type string_compare, @function
string_compare:
	push	rax
	call	strcmp
	test	eax, eax
	sete	al
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4055c0

	.globl string_free
	.type string_free, @function
string_free:
	jmp	free
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055d0

	.globl fprintftime
	.type fprintftime, @function
fprintftime:
	sub	rsp, 0x18
	mov	dword ptr [rsp + 8], r8d
	mov	qword ptr [rsp], rcx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	r9d, 0xffffffff
	call	__strftime_internal
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405600

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4a8
	mov	dword ptr [rsp + 0x3c], r8d
	mov	dword ptr [rsp + 0x54], ecx
	mov	qword ptr [rsp + 0x58], rdx
	mov	r13, rsi
	mov	r14, rdi
	mov	qword ptr [rsp + 0x68], r14
	mov	eax, dword ptr [rdx + 8]
	mov	rcx, qword ptr [rdx + 0x30]
	test	rcx, rcx
	mov	edx, OFFSET FLAT:.str_0
	cmovne	rdx, rcx
	mov	qword ptr [rsp + 0x28], rdx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	edx, 0xc
	cmovne	edx, eax
	cmp	eax, 0xc
	cmovg	edx, ecx
	mov	dword ptr [rsp + 0x24], edx
	mov	al, byte ptr [r13]
	test	al, al
	mov	r15d, 0
	je	.label_331
	lea	rcx, [rsp + 0x490]
	mov	rdx, -0x17
	sub	rdx, rcx
	mov	qword ptr [rsp + 0x18], rdx
	xor	r15d, r15d
	jmp	.label_328
.label_409:
	mov	r14d, 3
	jmp	.label_413
	nop	word ptr cs:[rax + rax]
.label_328:
	movzx	ecx, al
	xor	r12d, r12d
	cmp	ecx, 0x25
	jne	.label_416
	mov	eax, dword ptr [rsp + 0x54]
	mov	r11b, al
	xor	ebp, ebp
	movabs	rdi, 0x1000000000002500
	jmp	.label_418
	nop	word ptr cs:[rax + rax]
.label_416:
	test	r9d, r9d
	mov	ecx, r9d
	mov	edx, 0
	cmovs	ecx, edx
	movsxd	rbx, ecx
	cmp	ebx, 1
	mov	edx, 1
	cmovbe	rbx, rdx
	mov	rdx, r15
	not	rdx
	cmp	rbx, rdx
	jae	.label_326
	test	r14, r14
	je	.label_428
	cmp	ecx, 2
	jb	.label_429
	cmp	r9d, 1
	je	.label_429
	movsxd	rbp, r9d
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_434:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_434
	mov	al, byte ptr [r13]
.label_429:
	movsx	edi, al
	mov	rsi, r14
	call	fputc
.label_428:
	add	r15, rbx
	jmp	.label_312
	nop	dword ptr [rax]
.label_444:
	mov	r12b, 1
	mov	al, r11b
	jmp	.label_418
	nop	dword ptr [rax + rax]
.label_443:
	inc	r13
	mov	ebp, edx
.label_447:
	mov	cl, byte ptr [r13]
	movsx	edx, cl
	lea	esi, [rdx - 0x23]
	cmp	esi, 0x3c
	ja	.label_439
	bt	rdi, rsi
	jb	.label_443
	mov	al, 1
	test	rsi, rsi
	je	.label_444
	cmp	rsi, 0x3b
	jne	.label_439
.label_418:
	mov	r11b, al
	inc	r13
	jmp	.label_447
	nop	
.label_439:
	add	edx, -0x30
	xor	eax, eax
	cmp	edx, 9
	ja	.label_381
	nop	word ptr [rax + rax]
.label_459:
	mov	r9d, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_452
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	jne	.label_396
	lea	edx, [rcx - 0x30]
	cmp	edx, 7
	jg	.label_452
.label_396:
	lea	eax, [rax + rax*4]
	lea	r9d, [rcx + rax*2 - 0x30]
.label_452:
	movsx	ecx, byte ptr [r13 + 1]
	inc	r13
	mov	eax, ecx
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, r9d
	jb	.label_459
.label_381:
	movsx	r10d, cl
	cmp	r10d, 0x4f
	je	.label_464
	cmp	r10d, 0x45
	jne	.label_465
.label_464:
	mov	cl, byte ptr [r13 + 1]
	inc	r13
	jmp	.label_466
.label_465:
	xor	r10d, r10d
.label_466:
	movsx	r8d, cl
	xor	edx, edx
	mov	esi, 1
	lea	ebx, [r8 - 0x25]
	cmp	ebx, 0x55
	ja	.label_467
	mov	qword ptr [rsp + 0x78], r15
	mov	r15d, OFFSET FLAT:.str.3_1
	mov	dword ptr [rsp + 0x70], r9d
	mov	r9b, 0x72
	mov	r14d, 0xffffffff
	xor	eax, eax
	xor	edi, edi
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_308]]
.label_3408:
	cmp	r10d, 0x45
	je	.label_306
	mov	qword ptr [rsp + 0x60], r11
	mov	rsi, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [rsi + 0x14]
	mov	r9d, dword ptr [rsi + 0x18]
	mov	eax, edx
	sar	eax, 0x1f
	and	eax, 0x190
	lea	r11d, [rdx + rax - 0x64]
	mov	ebx, dword ptr [rsi + 0x1c]
	lea	eax, [rbx + 0x17e]
	sub	eax, r9d
	movsxd	rdi, eax
	imul	rax, rdi, -0x6db6db6d
	shr	rax, 0x20
	add	eax, edi
	mov	esi, eax
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	lea	esi, [rax*8]
	sub	esi, eax
	sub	edi, esi
	lea	r12d, [rbx + 3]
	sub	r12d, edi
	js	.label_318
	mov	edi, 0x16d
	test	r11b, 3
	jne	.label_336
	movsxd	rsi, r11d
	imul	rsi, rsi, 0x51eb851f
	mov	rdi, rsi
	sar	rdi, 0x25
	mov	r14, rsi
	shr	r14, 0x3f
	add	edi, r14d
	imul	edi, edi, 0x64
	sar	rsi, 0x27
	add	esi, r14d
	imul	esi, esi, 0x190
	cmp	r11d, esi
	sete	al
	movzx	eax, al
	add	eax, 0x16d
	cmp	r11d, edi
	mov	edi, 0x16e
	cmove	edi, eax
.label_336:
	sub	ebx, edi
	lea	eax, [rbx + 0x17e]
	sub	eax, r9d
	cdqe	
	imul	rsi, rax, -0x6db6db6d
	shr	rsi, 0x20
	add	esi, eax
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 2
	add	esi, edi
	lea	edi, [rsi*8]
	sub	edi, esi
	sub	eax, edi
	add	ebx, 3
	sub	ebx, eax
	cmovns	r12d, ebx
	shr	ebx, 0x1f
	xor	ebx, 1
	jmp	.label_347
	nop	
.label_361:
	inc	rsi
.label_3402:
	movzx	eax, byte ptr [r13 + rsi]
	cmp	eax, 0x3a
	je	.label_361
	movzx	eax, al
	cmp	eax, 0x7a
	jne	.label_306
	add	r13, rsi
	mov	rdx, rsi
.label_3439:
	mov	r9, qword ptr [rsp + 0x58]
	cmp	dword ptr [r9 + 0x20], 0
	js	.label_366
	mov	rdi, rdx
	mov	r8d, dword ptr [r9 + 0x28]
	mov	r15b, 1
	test	r8d, r8d
	js	.label_309
	test	r8d, r8d
	je	.label_374
	xor	r15d, r15d
	jmp	.label_309
.label_3422:
	test	r12b, r12b
	je	.label_378
	mov	r11b, 1
.label_378:
	xor	eax, eax
	cmp	r10d, 0x45
	je	.label_306
	mov	r9b, cl
	jmp	.label_368
.label_467:
	test	r8d, r8d
	jne	.label_380
	mov	qword ptr [rsp + 0x78], r15
	mov	dword ptr [rsp + 0x70], r9d
	dec	r13
	jmp	.label_306
.label_3401:
	test	r10d, r10d
	jne	.label_306
	xor	eax, eax
	mov	edx, dword ptr [rsp + 0x70]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r14d, 1
	cmova	r14, rcx
	mov	rcx, qword ptr [rsp + 0x78]
	not	rcx
	cmp	r14, rcx
	jae	.label_326
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_337
	cmp	eax, 2
	mov	r12, qword ptr [rsp + 0x68]
	jb	.label_315
	movsxd	rbx, edx
	lea	r15, [rbx - 1]
	cmp	ebp, 0x30
	je	.label_394
	cmp	ebp, 0x2b
	jne	.label_398
.label_394:
	test	r15, r15
	je	.label_315
	dec	rbx
.label_402:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbx
	jne	.label_402
	jmp	.label_315
.label_3403:
	test	r10d, r10d
	jne	.label_306
	test	r12b, r12b
	je	.label_405
	mov	r11b, 1
.label_405:
	xor	eax, eax
	mov	r9b, 0x41
	jmp	.label_368
.label_3404:
	cmp	r10d, 0x45
	je	.label_306
	test	r12b, r12b
	je	.label_410
	mov	r11b, 1
.label_410:
	xor	eax, eax
	mov	r9b, 0x42
	jmp	.label_368
.label_3405:
	cmp	r10d, 0x45
	jne	.label_412
	xor	eax, eax
	mov	r9b, 0x43
	jmp	.label_368
.label_3406:
	test	r10d, r10d
	jne	.label_306
	mov	r15d, OFFSET FLAT:.str.1_3
	jmp	.label_390
.label_3407:
	test	r10d, r10d
	jne	.label_306
	test	ebp, ebp
	mov	ecx, dword ptr [rsp + 0x70]
	jne	.label_417
	test	ecx, ecx
	jns	.label_417
	mov	r15d, OFFSET FLAT:.str.2_0
	mov	ebp, 0x2b
	mov	r14d, 4
	jmp	.label_390
.label_3409:
	cmp	r10d, 0x45
	je	.label_306
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 8]
	jmp	.label_360
.label_3410:
	cmp	r10d, 0x45
	je	.label_306
	mov	r14d, 2
	mov	eax, dword ptr [rsp + 0x24]
	mov	edx, eax
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_319
.label_3411:
	cmp	r10d, 0x45
	je	.label_306
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 4]
	jmp	.label_360
.label_3412:
	cmp	r10d, 0x45
	je	.label_306
	mov	edi, dword ptr [rsp + 0x70]
	cmp	edi, -1
	je	.label_435
	cmp	edi, 8
	jg	.label_436
	mov	esi, 9
	sub	esi, edi
	mov	eax, 8
	sub	eax, edi
	test	sil, 3
	mov	edx, dword ptr [rsp + 0x4e8]
	mov	ebx, edi
	je	.label_437
	and	esi, 3
	neg	esi
	mov	edx, dword ptr [rsp + 0x4e8]
	mov	ebx, edi
	nop	
.label_441:
	movsxd	rdx, edx
	imul	rdx, rdx, 0x66666667
	mov	rdi, rdx
	shr	rdi, 0x3f
	sar	rdx, 0x22
	add	edx, edi
	inc	ebx
	inc	esi
	jne	.label_441
.label_437:
	cmp	eax, 3
	mov	r9, qword ptr [rsp + 0x58]
	jb	.label_448
	mov	eax, 9
	sub	eax, ebx
	nop	
.label_453:
	movsxd	rdx, edx
	imul	rdx, rdx, 0x68db8bad
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x2c
	add	edx, esi
	add	eax, -4
	jne	.label_453
.label_448:
	mov	eax, dword ptr [rsp + 0x70]
	mov	r14d, eax
	jmp	.label_319
.label_3413:
	mov	dil, 1
.label_3431:
	xor	edx, edx
	test	r12b, r12b
	je	.label_460
	mov	r11d, 0
.label_460:
	je	.label_463
	mov	dil, 1
.label_463:
	mov	r9b, 0x70
	mov	al, dil
	jmp	.label_449
.label_3414:
	cmp	r10d, 0x45
	je	.label_306
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9]
	jmp	.label_360
.label_3415:
	mov	r15d, OFFSET FLAT:.str.4_1
.label_390:
	test	r11b, r11b
	mov	qword ptr [rsp + 0x60], r11
	setne	al
	mov	ecx, dword ptr [rsp + 0x4e8]
	mov	dword ptr [rsp + 8], ecx
	mov	rcx, qword ptr [rsp + 0x4e0]
	mov	qword ptr [rsp], rcx
	movzx	ecx, al
	xor	ebx, ebx
	xor	edi, edi
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x58]
	mov	r8d, ebp
	mov	r9d, r14d
	call	__strftime_internal
	mov	esi, dword ptr [rsp + 0x70]
	test	esi, esi
	cmovns	ebx, esi
	movsxd	rcx, ebx
	cmp	rax, rcx
	mov	rdi, rax
	cmovb	rdi, rcx
	mov	rdx, qword ptr [rsp + 0x78]
	not	rdx
	cmp	rdi, rdx
	jae	.label_326
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_325
	mov	dword ptr [rsp + 0x40], r14d
	mov	qword ptr [rsp + 0x48], rdi
	cmp	rax, rcx
	mov	r12, qword ptr [rsp + 0x68]
	jae	.label_329
	movsxd	rcx, esi
	mov	r14, rcx
	sub	r14, rax
	cmp	ebp, 0x30
	je	.label_332
	cmp	ebp, 0x2b
	jne	.label_451
.label_332:
	xor	ebx, ebx
	cmp	rcx, rax
	je	.label_329
	nop	
.label_341:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	inc	rbx
	cmp	rbx, r14
	jb	.label_341
	jmp	.label_329
.label_3416:
	cmp	r10d, 0x45
	je	.label_306
	mov	r9, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [r9 + 0x1c]
	add	eax, 7
	sub	eax, dword ptr [r9 + 0x18]
	movsxd	rdx, eax
	jmp	.label_344
.label_3417:
	cmp	r10d, 0x45
	je	.label_306
	mov	r9, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [r9 + 0x18]
	mov	edx, dword ptr [r9 + 0x1c]
	lea	esi, [rax + 6]
	movsxd	rsi, esi
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	lea	eax, [rdi + rax + 6]
	mov	edi, eax
	shr	edi, 0x1f
	sar	eax, 2
	add	eax, edi
	lea	edi, [rax*8]
	sub	edi, eax
	sub	esi, edi
	add	edx, 7
	sub	edx, esi
	movsxd	rdx, edx
.label_344:
	imul	rax, rdx, -0x6db6db6d
	shr	rax, 0x20
	add	edx, eax
	mov	eax, edx
	shr	eax, 0x1f
	sar	edx, 2
	add	edx, eax
	jmp	.label_360
.label_3418:
	cmp	r10d, 0x4f
	je	.label_306
	xor	eax, eax
	mov	r9b, 0x58
	jmp	.label_368
.label_3419:
	cmp	r10d, 0x45
	je	.label_370
	cmp	r10d, 0x4f
	je	.label_306
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 0x14]
	cmp	edx, 0xfffff894
	setl	r15b
	add	edx, 0x76c
	mov	r14d, 4
	jmp	.label_376
.label_3420:
	mov	qword ptr [rsp + 0x60], r11
	mov	rdi, qword ptr [rsp + 0x28]
	call	strlen
	mov	rbx, rax
	xor	eax, eax
	mov	edx, dword ptr [rsp + 0x70]
	test	edx, edx
	cmovns	eax, edx
	cdqe	
	cmp	rbx, rax
	mov	rsi, rbx
	cmovb	rsi, rax
	mov	rcx, qword ptr [rsp + 0x78]
	not	rcx
	cmp	rsi, rcx
	jae	.label_326
	mov	qword ptr [rsp + 0x48], rsi
	mov	r14, qword ptr [rsp + 0x68]
	test	r14, r14
	je	.label_348
	cmp	rbx, rax
	jae	.label_364
	movsxd	rax, edx
	mov	r15, rax
	sub	r15, rbx
	cmp	ebp, 0x30
	je	.label_391
	cmp	ebp, 0x2b
	jne	.label_393
.label_391:
	xor	ebp, ebp
	cmp	rax, rbx
	je	.label_364
	nop	word ptr cs:[rax + rax]
.label_401:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_401
	jmp	.label_364
.label_3421:
	test	r10d, r10d
	jne	.label_306
	test	r12b, r12b
	je	.label_404
	mov	r11b, 1
.label_404:
	xor	eax, eax
	mov	r9b, 0x61
	jmp	.label_368
.label_3423:
	cmp	r10d, 0x4f
	je	.label_306
	xor	eax, eax
	mov	r9b, 0x63
	jmp	.label_368
.label_3424:
	cmp	r10d, 0x45
	je	.label_306
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 0xc]
	jmp	.label_360
.label_3425:
	cmp	r10d, 0x45
	je	.label_306
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 0xc]
	jmp	.label_414
.label_3426:
	cmp	r10d, 0x45
	je	.label_306
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 0x1c]
	cmp	edx, -1
	setl	r15b
	inc	edx
	mov	r14d, 3
	jmp	.label_415
.label_3427:
	cmp	r10d, 0x45
	je	.label_306
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 8]
	jmp	.label_414
.label_3428:
	cmp	r10d, 0x45
	mov	eax, dword ptr [rsp + 0x24]
	mov	edx, eax
	mov	r9, qword ptr [rsp + 0x58]
	je	.label_306
.label_414:
	test	ebp, ebp
	mov	eax, 0x5f
	cmove	ebp, eax
.label_360:
	mov	r14d, 2
	jmp	.label_319
.label_3429:
	cmp	r10d, 0x45
	je	.label_306
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 0x10]
	cmp	edx, -1
	setl	r15b
	inc	edx
	mov	r14d, 2
	jmp	.label_415
.label_3430:
	xor	eax, eax
	mov	edx, dword ptr [rsp + 0x70]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r14d, 1
	cmova	r14, rcx
	mov	rcx, qword ptr [rsp + 0x78]
	not	rcx
	cmp	r14, rcx
	jae	.label_326
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_337
	cmp	eax, 2
	mov	r12, qword ptr [rsp + 0x68]
	jb	.label_399
	movsxd	rbx, edx
	lea	r15, [rbx - 1]
	cmp	ebp, 0x30
	je	.label_324
	cmp	ebp, 0x2b
	jne	.label_442
.label_324:
	test	r15, r15
	je	.label_399
	dec	rbx
	nop	word ptr [rax + rax]
.label_384:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbx
	jne	.label_384
	jmp	.label_399
.label_3432:
	mov	r9, qword ptr [rsp + 0x58]
	imul	edx, dword ptr [r9 + 0x10], 0xb
	sar	edx, 5
	inc	edx
	mov	r14d, 1
	xor	ebx, ebx
	xor	r8d, r8d
	xor	r15d, r15d
	jmp	.label_334
.label_3433:
	mov	qword ptr [rsp + 0x60], r11
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0xb0], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0x90], xmm1
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsp + 0x80]
	mov	rdi, qword ptr [rsp + 0x4e0]
	call	mktime_z
	mov	rcx, rax
	mov	r15, rcx
	shr	r15, 0x3f
	lea	r12, [rsp + 0x4a7]
	nop	dword ptr [rax]
.label_317:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebx, ecx
	sub	ebx, edi
	add	rdx, rax
	mov	eax, ebx
	neg	eax
	test	r15, r15
	cmove	eax, ebx
	add	eax, 0x30
	mov	byte ptr [r12 - 1], al
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_317
	mov	r14d, 1
	xor	r8d, r8d
	mov	r11, qword ptr [rsp + 0x60]
	mov	r9d, dword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	jmp	.label_330
.label_3434:
	xor	eax, eax
	mov	edx, dword ptr [rsp + 0x70]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r14d, 1
	cmova	r14, rcx
	mov	rcx, qword ptr [rsp + 0x78]
	not	rcx
	cmp	r14, rcx
	jae	.label_326
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_337
	cmp	eax, 2
	mov	r12, qword ptr [rsp + 0x68]
	jb	.label_342
	movsxd	rbx, edx
	lea	r15, [rbx - 1]
	cmp	ebp, 0x30
	je	.label_346
	cmp	ebp, 0x2b
	jne	.label_377
.label_346:
	test	r15, r15
	je	.label_342
	dec	rbx
.label_353:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbx
	jne	.label_353
	jmp	.label_342
.label_3435:
	mov	r9, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [r9 + 0x18]
	lea	edx, [rax + 6]
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	lea	eax, [rsi + rax + 6]
	mov	esi, eax
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	lea	esi, [rax*8]
	sub	esi, eax
	sub	edx, esi
	inc	edx
	mov	r14d, 1
	jmp	.label_319
.label_3436:
	cmp	r10d, 0x45
	je	.label_306
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 0x18]
	mov	r14d, 1
	jmp	.label_319
.label_3437:
	cmp	r10d, 0x4f
	je	.label_306
	xor	eax, eax
	mov	r9b, 0x78
	jmp	.label_368
.label_3438:
	cmp	r10d, 0x45
	jne	.label_379
	xor	eax, eax
	mov	r9b, 0x79
	jmp	.label_368
.label_380:
	mov	qword ptr [rsp + 0x78], r15
	mov	dword ptr [rsp + 0x70], r9d
	jmp	.label_306
.label_318:
	dec	r11d
	mov	r14d, 0x16d
	test	r11b, 3
	jne	.label_382
	movsxd	rax, r11d
	imul	rax, rax, 0x51eb851f
	mov	rsi, rax
	sar	rsi, 0x25
	mov	rdi, rax
	shr	rdi, 0x3f
	add	esi, edi
	imul	esi, esi, 0x64
	sar	rax, 0x27
	add	eax, edi
	imul	eax, eax, 0x190
	cmp	r11d, eax
	sete	al
	movzx	edi, al
	add	edi, 0x16d
	cmp	r11d, esi
	mov	r14d, 0x16e
	cmove	r14d, edi
.label_382:
	lea	esi, [r14 + rbx + 0x17e]
	sub	esi, r9d
	movsxd	rsi, esi
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	add	edi, esi
	mov	eax, edi
	shr	eax, 0x1f
	sar	edi, 2
	add	edi, eax
	lea	eax, [rdi*8]
	sub	eax, edi
	sub	esi, eax
	lea	r12d, [r14 + rbx + 3]
	sub	r12d, esi
	mov	ebx, 0xffffffff
.label_347:
	cmp	r8d, 0x47
	mov	r11, qword ptr [rsp + 0x60]
	je	.label_373
	cmp	r8d, 0x67
	jne	.label_406
	movsxd	rax, edx
	imul	rax, rax, 0x51eb851f
	mov	rdi, rdx
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x25
	add	eax, edx
	imul	eax, eax, 0x64
	mov	edx, edi
	sub	edx, eax
	add	edx, ebx
	movsxd	rdx, edx
	imul	rax, rdx, 0x51eb851f
	mov	rsi, rax
	shr	rsi, 0x3f
	sar	rax, 0x25
	add	eax, esi
	imul	eax, eax, 0x64
	sub	edx, eax
	mov	r14d, 2
	mov	r9, qword ptr [rsp + 0x58]
	js	.label_408
	xor	r15d, r15d
	jmp	.label_376
.label_366:
	mov	r14, qword ptr [rsp + 0x68]
	mov	r15, qword ptr [rsp + 0x78]
	jmp	.label_312
.label_412:
	mov	r9, qword ptr [rsp + 0x58]
	movsxd	rax, dword ptr [r9 + 0x14]
	cmp	rax, -0x76c
	setl	r15b
	setg	bl
	imul	rdx, rax, 0x51eb851f
	mov	rdi, rdx
	shr	rdi, 0x3f
	sar	rdx, 0x25
	add	edx, edi
	imul	edi, edx, 0x64
	cmp	eax, edi
	sets	al
	and	al, bl
	movzx	eax, al
	sub	edx, eax
	add	edx, 0x13
	mov	r14d, 2
	jmp	.label_376
.label_379:
	mov	r9, qword ptr [rsp + 0x58]
	movsxd	rax, dword ptr [r9 + 0x14]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	esi, edx, 0x64
	mov	edx, eax
	mov	r14d, 2
	sub	edx, esi
	js	.label_430
	xor	r15d, r15d
	jmp	.label_376
.label_373:
	mov	eax, 0xfffff894
	sub	eax, ebx
	cmp	edx, eax
	setl	r15b
	lea	edx, [rbx + rdx + 0x76c]
	mov	r14d, 4
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_376
.label_406:
	movsxd	rax, r12d
	imul	rdx, rax, -0x6db6db6d
	shr	rdx, 0x20
	add	eax, edx
	mov	edx, eax
	sar	edx, 2
	shr	eax, 0x1f
	lea	edx, [rdx + rax + 1]
	mov	r14d, 2
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_319
.label_370:
	xor	eax, eax
	mov	r9b, 0x59
.label_368:
	xor	edx, edx
	jmp	.label_449
.label_451:
	xor	ebx, ebx
	cmp	rcx, rax
	je	.label_329
	nop	
.label_456:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	inc	rbx
	cmp	rbx, r14
	jb	.label_456
.label_329:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4e8]
	mov	dword ptr [rsp + 8], ecx
	mov	rcx, qword ptr [rsp + 0x4e0]
	mov	qword ptr [rsp], rcx
	movzx	ecx, al
	mov	rdi, r12
	mov	qword ptr [rsp + 0x68], r12
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x58]
	mov	r8d, ebp
	mov	r9d, dword ptr [rsp + 0x40]
	call	__strftime_internal
	mov	rdi, qword ptr [rsp + 0x48]
.label_325:
	mov	r15, qword ptr [rsp + 0x78]
	add	r15, rdi
	mov	r14, qword ptr [rsp + 0x68]
	jmp	.label_312
.label_374:
	mov	rax, qword ptr [rsp + 0x28]
	movzx	edx, byte ptr [rax]
	cmp	edx, 0x2d
	sete	r15b
.label_309:
	mov	r14, rdi
	cmp	r14, 3
	ja	.label_306
	movsxd	rdx, r8d
	imul	rdi, rdx, -0x77777777
	shr	rdi, 0x20
	add	edi, r8d
	mov	ebx, edi
	shr	ebx, 0x1f
	sar	edi, 5
	add	edi, ebx
	imul	rdx, rdx, -0x6e5d4c3b
	shr	rdx, 0x20
	add	edx, r8d
	mov	ebx, edx
	shr	ebx, 0x1f
	sar	edx, 0xb
	add	edx, ebx
	movsxd	rbx, edi
	imul	rdi, rbx, -0x77777777
	shr	rdi, 0x20
	add	edi, ebx
	mov	eax, edi
	shr	eax, 0x1f
	sar	edi, 5
	add	edi, eax
	imul	eax, edi, 0x3c
	imul	edi, ebx, 0x3c
	sub	ebx, eax
	sub	r8d, edi
	jmp	qword ptr [word ptr [+ (r14 * 8) + label_314]]
.label_3483:
	imul	edx, edx, 0x64
	add	edx, ebx
	mov	r14d, 5
.label_413:
	mov	r8b, 1
	xor	ebx, ebx
	jmp	.label_334
.label_306:
	mov	qword ptr [rsp + 0x60], r11
	lea	rbx, [r13 + 1]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_313:
	inc	r12
	movzx	eax, byte ptr [rbx - 1]
	dec	rbx
	cmp	eax, 0x25
	jne	.label_313
	mov	edx, dword ptr [rsp + 0x70]
	test	edx, edx
	mov	eax, edx
	mov	ecx, 0
	cmovs	eax, ecx
	cmp	r12d, eax
	mov	ecx, eax
	cmova	ecx, r12d
	movsxd	rsi, ecx
	mov	rcx, qword ptr [rsp + 0x78]
	not	rcx
	cmp	rsi, rcx
	jae	.label_326
	mov	qword ptr [rsp + 0x48], rsi
	mov	r14, qword ptr [rsp + 0x68]
	test	r14, r14
	je	.label_348
	movsxd	rcx, r12d
	mov	qword ptr [rsp + 0x40], rcx
	cmp	r12d, eax
	mov	r15, r14
	jae	.label_351
	movsxd	r14, edx
	sub	r14, qword ptr [rsp + 0x40]
	cmp	ebp, 0x30
	je	.label_354
	cmp	ebp, 0x2b
	jne	.label_356
.label_354:
	cmp	edx, r12d
	mov	ebp, 0
	je	.label_351
	nop	dword ptr [rax + rax]
.label_363:
	mov	edi, 0x30
	mov	rsi, r15
	call	fputc
	inc	rbp
	cmp	rbp, r14
	jb	.label_363
	jmp	.label_351
.label_356:
	cmp	edx, r12d
	mov	ebp, 0
	je	.label_351
	nop	word ptr cs:[rax + rax]
.label_371:
	mov	edi, 0x20
	mov	rsi, r15
	call	fputc
	inc	rbp
	cmp	rbp, r14
	jb	.label_371
.label_351:
	mov	r14, r15
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	jne	.label_425
	mov	edx, 1
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x40]
.label_407:
	mov	rcx, r14
	call	fwrite
	jmp	.label_348
.label_425:
	call	__ctype_toupper_loc
	mov	r15, rax
	movsxd	rbp, r12d
	neg	rbp
	nop	word ptr cs:[rax + rax]
.label_387:
	movzx	eax, byte ptr [rbx]
	mov	rcx, qword ptr [r15]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r14
	call	fputc
	inc	rbx
	inc	rbp
	jne	.label_387
.label_348:
	mov	r15, qword ptr [rsp + 0x78]
	add	r15, qword ptr [rsp + 0x48]
	jmp	.label_312
.label_417:
	xor	eax, eax
	mov	r14d, ecx
	add	r14d, -6
	cmovs	r14d, eax
	mov	r15d, OFFSET FLAT:.str.2_0
	jmp	.label_390
.label_435:
	mov	r14d, 9
	mov	eax, dword ptr [rsp + 0x4e8]
	mov	edx, eax
	mov	dword ptr [rsp + 0x70], 9
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_319
.label_408:
	mov	eax, 0xfffff894
	sub	eax, ebx
	mov	esi, edx
	neg	esi
	add	edx, 0x64
	cmp	edi, eax
	jmp	.label_397
.label_430:
	mov	esi, edx
	neg	esi
	add	edx, 0x64
	cmp	eax, 0xfffff894
.label_397:
	cmovl	edx, esi
	xor	r15d, r15d
.label_376:
	test	ebp, ebp
	cmove	ebp, dword ptr [rsp + 0x3c]
	xor	ebx, ebx
	cmp	ebp, 0x2b
	mov	r8d, 0
	jne	.label_334
	cmp	r14d, 2
	mov	eax, 0x63
	mov	edi, 0x270f
	cmove	edi, eax
	cmp	edi, edx
	setb	dil
	cmp	r14d, dword ptr [rsp + 0x70]
	setl	r8b
	or	r8b, dil
	jmp	.label_334
.label_3486:
	test	r8d, r8d
	je	.label_411
.label_3485:
	imul	edx, edx, 0x2710
	imul	eax, ebx, 0x64
	add	edx, r8d
	add	edx, eax
	mov	r14d, 9
	mov	r8b, 1
	mov	ebx, 0x14
	jmp	.label_334
.label_436:
	mov	eax, dword ptr [rsp + 0x4e8]
	mov	edx, eax
	mov	r14d, edi
	mov	r9, qword ptr [rsp + 0x58]
.label_319:
	mov	r15d, edx
	shr	r15d, 0x1f
.label_415:
	xor	ebx, ebx
	xor	r8d, r8d
.label_334:
	mov	qword ptr [rsp + 0x58], r9
	cmp	r10d, 0x4f
	jne	.label_420
	test	r15b, r15b
	jne	.label_420
	xor	eax, eax
	mov	r9b, cl
	mov	rdx, r14
.label_449:
	mov	dword ptr [rsp + 0x48], eax
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x60], r11
	mov	word ptr [rsp + 0x48b], 0x2520
	test	r10d, r10d
	lea	rcx, [rsp + 0x48d]
	je	.label_423
	mov	byte ptr [rsp + 0x48d], r10b
	lea	rcx, [rsp + 0x48e]
.label_423:
	mov	byte ptr [rcx], r9b
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0x80]
	lea	rdx, [rsp + 0x48b]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x58]
	call	strftime
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x68]
	je	.label_433
	lea	rdi, [rax - 1]
	xor	ecx, ecx
	mov	edx, dword ptr [rsp + 0x70]
	test	edx, edx
	cmovns	ecx, edx
	movsxd	rsi, ecx
	cmp	rdi, rsi
	mov	r15, rdi
	cmovb	r15, rsi
	mov	rcx, qword ptr [rsp + 0x78]
	not	rcx
	cmp	r15, rcx
	jae	.label_326
	mov	qword ptr [rsp + 0x30], rax
	test	r14, r14
	mov	r12, r14
	je	.label_321
	cmp	rdi, rsi
	mov	qword ptr [rsp + 0x40], rdi
	setae	al
	test	ebx, ebx
	jne	.label_305
	test	al, al
	jne	.label_305
	movsxd	rax, edx
	mov	rbx, rax
	mov	rcx, qword ptr [rsp + 0x40]
	sub	rbx, rcx
	cmp	ebp, 0x30
	je	.label_450
	cmp	ebp, 0x2b
	jne	.label_455
.label_450:
	xor	ebp, ebp
	cmp	rax, rcx
	je	.label_305
	nop	dword ptr [rax]
.label_461:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	inc	rbp
	cmp	rbp, rbx
	jb	.label_461
	jmp	.label_305
.label_420:
	mov	eax, edx
	neg	eax
	test	r15b, r15b
	cmove	eax, edx
	lea	r12, [rsp + 0x4a7]
	mov	r9d, dword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	nop	word ptr cs:[rax + rax]
.label_307:
	test	bl, 1
	je	.label_302
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_302:
	sar	ebx, 1
	mov	edi, eax
	mov	edx, 0xcccccccd
	imul	rdx, rdi
	shr	rdx, 0x23
	lea	edi, [rdx + rdx]
	lea	edi, [rdi + rdi*4]
	mov	ecx, eax
	sub	ecx, edi
	or	ecx, 0x30
	mov	byte ptr [r12 - 1], cl
	dec	r12
	cmp	eax, 9
	mov	eax, edx
	ja	.label_307
	test	ebx, ebx
	mov	eax, edx
	jne	.label_307
.label_330:
	cmp	r14d, r9d
	cmovl	r14d, r9d
	test	r8b, r8b
	je	.label_424
	mov	r8b, 0x2b
.label_424:
	test	r15b, r15b
	mov	bl, 0x2d
	jne	.label_320
	mov	bl, r8b
.label_320:
	cmp	ebp, 0x2d
	jne	.label_322
	test	bl, bl
	mov	rdi, r14
	je	.label_323
	mov	qword ptr [rsp + 0x60], r11
	xor	eax, eax
	test	r9d, r9d
	cmovns	eax, r9d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r14d, 1
	cmova	r14, rcx
	mov	rcx, rsi
	mov	qword ptr [rsp + 0x78], rsi
	not	rcx
	cmp	r14, rcx
	jae	.label_326
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_338
	mov	byte ptr [rsp + 0x40], bl
	mov	dword ptr [rsp + 0x70], r9d
	cmp	eax, 2
	setb	al
	test	edi, edi
	mov	qword ptr [rsp + 0x48], rdi
	mov	r15, qword ptr [rsp + 0x68]
	jne	.label_339
	test	al, al
	jne	.label_339
	cmp	dword ptr [rsp + 0x70], 1
	je	.label_339
	movsxd	rbx, dword ptr [rsp + 0x70]
	dec	rbx
	nop	dword ptr [rax + rax]
.label_431:
	mov	edi, 0x20
	mov	rsi, r15
	call	fputc
	dec	rbx
	jne	.label_431
.label_339:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, r15
	call	fputc
	mov	r9d, dword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rsp + 0x48]
.label_338:
	mov	rsi, qword ptr [rsp + 0x78]
	add	rsi, r14
	jmp	.label_352
.label_433:
	mov	r15, qword ptr [rsp + 0x78]
	jmp	.label_312
.label_322:
	mov	rdi, r14
	movsxd	rax, edi
	mov	rcx, r12
	lea	rdx, [rsp + 0x4a7]
	sub	rcx, rdx
	mov	dl, bl
	neg	dl
	sbb	rdx, rdx
	add	rdx, rcx
	add	rdx, rax
	test	edx, edx
	jle	.label_358
	mov	qword ptr [rsp + 0x60], r11
	cmp	ebp, 0x5f
	jne	.label_365
	mov	rax, rsi
	mov	qword ptr [rsp + 0x78], rax
	movsxd	r15, edx
	not	rax
	cmp	r15, rax
	jae	.label_326
	mov	qword ptr [rsp + 0x30], rdx
	mov	byte ptr [rsp + 0x40], bl
	mov	qword ptr [rsp + 0x48], rdi
	mov	dword ptr [rsp + 0x70], r9d
	mov	rbx, qword ptr [rsp + 0x68]
	test	rbx, rbx
	je	.label_372
	test	r15, r15
	mov	r14d, 0
	je	.label_372
	nop	word ptr cs:[rax + rax]
.label_383:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	inc	r14
	cmp	r14, r15
	jb	.label_383
.label_372:
	mov	rax, qword ptr [rsp + 0x78]
	add	rax, r15
	mov	rsi, rax
	mov	eax, dword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x30]
	sub	eax, ecx
	mov	edx, 0
	cmovg	edx, eax
	mov	al, byte ptr [rsp + 0x40]
	test	al, al
	je	.label_385
	xor	eax, eax
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, rsi
	mov	qword ptr [rsp + 0x78], rsi
	not	rcx
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x48]
	jae	.label_326
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_395
	mov	qword ptr [rsp + 0x30], rbx
	mov	qword ptr [rsp + 0x70], rdx
	cmp	eax, 2
	setb	al
	test	edi, edi
	mov	r14, qword ptr [rsp + 0x68]
	jne	.label_355
	test	al, al
	jne	.label_355
	mov	rax, qword ptr [rsp + 0x70]
	movsxd	r15, eax
	xor	ebx, ebx
	dec	r15
	je	.label_355
	nop	word ptr cs:[rax + rax]
.label_403:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	inc	rbx
	cmp	rbx, r15
	jb	.label_403
.label_355:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, r14
	call	fputc
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rbx, qword ptr [rsp + 0x30]
.label_395:
	mov	rsi, qword ptr [rsp + 0x78]
	add	rsi, rbx
	mov	r9d, edx
	jmp	.label_352
.label_323:
	mov	qword ptr [rsp + 0x60], r11
	jmp	.label_352
.label_358:
	mov	qword ptr [rsp + 0x60], r11
	test	bl, bl
	je	.label_352
	xor	eax, eax
	test	r9d, r9d
	cmovns	eax, r9d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, rsi
	mov	r15, rsi
	not	rcx
	cmp	rdx, rcx
	jae	.label_326
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_349
	mov	qword ptr [rsp + 0x30], rdx
	mov	byte ptr [rsp + 0x40], bl
	mov	dword ptr [rsp + 0x70], r9d
	cmp	eax, 2
	setb	al
	test	edi, edi
	mov	qword ptr [rsp + 0x48], rdi
	mov	rsi, qword ptr [rsp + 0x68]
	jne	.label_362
	test	al, al
	jne	.label_362
	mov	rax, rsi
	movsxd	rbx, dword ptr [rsp + 0x70]
	lea	r14, [rbx - 1]
	cmp	ebp, 0x30
	je	.label_422
	cmp	ebp, 0x2b
	jne	.label_419
.label_422:
	test	r14, r14
	mov	rsi, rax
	je	.label_362
	dec	rbx
	nop	word ptr cs:[rax + rax]
.label_438:
	mov	edi, 0x30
	mov	r14, rsi
	call	fputc
	mov	rsi, r14
	dec	rbx
	jne	.label_438
	jmp	.label_362
.label_365:
	mov	rcx, rsi
	mov	qword ptr [rsp + 0x78], rsi
	not	rcx
	cmp	rax, rcx
	jae	.label_326
	test	bl, bl
	je	.label_440
	xor	eax, eax
	test	r9d, r9d
	cmovns	eax, r9d
	movsxd	r8, eax
	cmp	r8d, 1
	mov	esi, 1
	cmova	rsi, r8
	cmp	rsi, rcx
	jae	.label_326
	mov	r14, qword ptr [rsp + 0x68]
	test	r14, r14
	je	.label_310
	mov	qword ptr [rsp + 0x70], rsi
	mov	qword ptr [rsp + 0x30], rdx
	mov	byte ptr [rsp + 0x40], bl
	cmp	eax, 2
	setb	al
	test	edi, edi
	mov	qword ptr [rsp + 0x48], rdi
	jne	.label_303
	test	al, al
	jne	.label_303
	movsxd	rbx, r9d
	lea	r15, [rbx - 1]
	cmp	ebp, 0x30
	je	.label_462
	cmp	ebp, 0x2b
	jne	.label_432
.label_462:
	test	r15, r15
	je	.label_303
	dec	rbx
.label_468:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	dec	rbx
	jne	.label_468
	jmp	.label_303
.label_455:
	xor	ebp, ebp
	cmp	rax, rcx
	je	.label_305
	nop	
.label_311:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	inc	rbp
	cmp	rbp, rbx
	jb	.label_311
.label_305:
	mov	eax, dword ptr [rsp + 0x48]
	test	al, 1
	jne	.label_457
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	mov	rsi, qword ptr [rsp + 0x40]
	jne	.label_316
	mov	edx, 1
	lea	rdi, [rsp + 0x81]
	mov	rcx, r12
	call	fwrite
	jmp	.label_321
.label_457:
	cmp	qword ptr [rsp + 0x40], 0
	je	.label_321
	call	__ctype_tolower_loc
	mov	r14, rax
	mov	ebx, 1
	sub	rbx, qword ptr [rsp + 0x30]
	lea	rbp, [rsp + 0x81]
	nop	dword ptr [rax + rax]
.label_335:
	movzx	eax, byte ptr [rbp]
	mov	rcx, qword ptr [r14]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r12
	call	fputc
	inc	rbp
	inc	rbx
	jne	.label_335
	jmp	.label_321
.label_316:
	test	rsi, rsi
	je	.label_321
	call	__ctype_toupper_loc
	mov	r14, rax
	mov	ebx, 1
	sub	rbx, qword ptr [rsp + 0x30]
	lea	rbp, [rsp + 0x81]
	nop	dword ptr [rax + rax]
.label_343:
	movzx	eax, byte ptr [rbp]
	mov	rcx, qword ptr [r14]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r12
	call	fputc
	inc	rbp
	inc	rbx
	jne	.label_343
.label_321:
	mov	rax, qword ptr [rsp + 0x78]
	add	rax, r15
	mov	r15, rax
	mov	r14, r12
	jmp	.label_312
.label_385:
	mov	r9d, edx
	mov	rdi, qword ptr [rsp + 0x48]
	jmp	.label_352
.label_440:
	mov	r14, qword ptr [rsp + 0x68]
	mov	rcx, qword ptr [rsp + 0x78]
	jmp	.label_350
.label_393:
	xor	ebp, ebp
	cmp	rax, rbx
	je	.label_364
.label_357:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_357
.label_364:
	test	r12b, r12b
	je	.label_359
	test	rbx, rbx
	je	.label_348
	call	__ctype_tolower_loc
	mov	r15, rax
	mov	rbp, qword ptr [rsp + 0x28]
.label_367:
	movzx	eax, byte ptr [rbp]
	mov	rcx, qword ptr [r15]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r14
	call	fputc
	inc	rbp
	dec	rbx
	jne	.label_367
	jmp	.label_348
.label_359:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	je	.label_369
	test	rbx, rbx
	je	.label_348
	call	__ctype_toupper_loc
	mov	r15, rax
	mov	rbp, qword ptr [rsp + 0x28]
	nop	word ptr cs:[rax + rax]
.label_327:
	movzx	eax, byte ptr [rbp]
	mov	rcx, qword ptr [r15]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r14
	call	fputc
	inc	rbp
	dec	rbx
	jne	.label_327
	jmp	.label_348
.label_442:
	test	r15, r15
	je	.label_399
	nop	word ptr cs:[rax + rax]
.label_388:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	r15
	jne	.label_388
.label_399:
	mov	edi, 0xa
	jmp	.label_389
.label_377:
	test	r15, r15
	je	.label_342
	nop	word ptr cs:[rax + rax]
.label_392:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	r15
	jne	.label_392
.label_342:
	mov	edi, 9
	jmp	.label_389
.label_419:
	test	r14, r14
	mov	rsi, rax
	je	.label_362
.label_400:
	mov	edi, 0x20
	mov	rbx, rsi
	call	fputc
	mov	rsi, rbx
	dec	r14
	jne	.label_400
.label_362:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x68], rsi
	call	fputc
	mov	r9d, dword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x30]
.label_349:
	mov	rsi, r15
	add	rsi, rdx
	jmp	.label_352
.label_369:
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, rbx
	jmp	.label_407
.label_411:
	test	ebx, ebx
	je	.label_409
.label_3484:
	imul	edx, edx, 0x64
	add	edx, ebx
	mov	r14d, 6
	mov	r8b, 1
	mov	ebx, 4
	jmp	.label_334
.label_432:
	test	r15, r15
	je	.label_303
.label_446:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	r15
	jne	.label_446
.label_303:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, r14
	call	fputc
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x70]
.label_310:
	mov	rcx, qword ptr [rsp + 0x78]
	add	rcx, rsi
.label_350:
	test	r14, r14
	mov	rax, r14
	movsxd	r14, edx
	je	.label_421
	mov	qword ptr [rsp + 0x48], rdi
	mov	qword ptr [rsp + 0x78], rcx
	xor	ebx, ebx
	test	r14, r14
	mov	r15, rax
	je	.label_386
	nop	
.label_426:
	mov	edi, 0x30
	mov	rsi, r15
	call	fputc
	inc	rbx
	cmp	rbx, r14
	jb	.label_426
	mov	rbx, r14
	jmp	.label_386
.label_421:
	mov	qword ptr [rsp + 0x48], rdi
	mov	qword ptr [rsp + 0x78], rcx
	mov	rbx, r14
	mov	r15, rax
.label_386:
	mov	qword ptr [rsp + 0x68], r15
	mov	rsi, qword ptr [rsp + 0x78]
	add	rsi, rbx
	xor	r9d, r9d
	mov	rdi, qword ptr [rsp + 0x48]
.label_352:
	mov	qword ptr [rsp + 0x78], rsi
	lea	rbx, [rsp + 0x4a7]
	sub	rbx, r12
	xor	eax, eax
	test	r9d, r9d
	cmovns	eax, r9d
	cdqe	
	cmp	rbx, rax
	mov	rdx, rbx
	cmovb	rdx, rax
	mov	rcx, rsi
	not	rcx
	cmp	rdx, rcx
	jae	.label_326
	mov	qword ptr [rsp + 0x70], rdx
	mov	r14, qword ptr [rsp + 0x68]
	test	r14, r14
	je	.label_427
	cmp	rbx, rax
	setae	al
	test	edi, edi
	jne	.label_345
	test	al, al
	jne	.label_345
	movsxd	rax, r9d
	mov	r15, rax
	sub	r15, rbx
	cmp	ebp, 0x30
	je	.label_340
	cmp	ebp, 0x2b
	jne	.label_445
.label_340:
	xor	ebp, ebp
	cmp	rax, rbx
	je	.label_345
	nop	
.label_454:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_454
	jmp	.label_345
.label_445:
	xor	ebp, ebp
	cmp	rax, rbx
	je	.label_345
	nop	
.label_333:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_333
.label_345:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	je	.label_458
	lea	rax, [rsp + 0x4a7]
	cmp	rax, r12
	je	.label_427
	call	__ctype_toupper_loc
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x18]
	lea	rbp, [rax + r12]
	nop	dword ptr [rax]
.label_304:
	movzx	eax, byte ptr [r12]
	mov	rcx, qword ptr [rbx]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r14
	call	fputc
	inc	r12
	inc	rbp
	jne	.label_304
	jmp	.label_427
.label_458:
	mov	edx, 1
	mov	rdi, r12
	mov	rsi, rbx
	mov	rcx, r14
	call	fwrite
.label_427:
	mov	r15, qword ptr [rsp + 0x78]
	add	r15, qword ptr [rsp + 0x70]
	jmp	.label_312
.label_398:
	test	r15, r15
	je	.label_315
.label_375:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	r15
	jne	.label_375
.label_315:
	movsx	edi, byte ptr [r13]
.label_389:
	mov	rsi, r12
	mov	qword ptr [rsp + 0x68], r12
	call	fputc
.label_337:
	mov	r15, qword ptr [rsp + 0x78]
	add	r15, r14
	mov	r14, qword ptr [rsp + 0x68]
	nop	word ptr cs:[rax + rax]
.label_312:
	mov	al, byte ptr [r13 + 1]
	inc	r13
	mov	r9d, 0xffffffff
	test	al, al
	jne	.label_328
	jmp	.label_331
.label_326:
	xor	r15d, r15d
.label_331:
	mov	rax, r15
	add	rsp, 0x4a8
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
	#Procedure 0x4070a0

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
	je	.label_481
	cmp	eax, 1
	je	.label_469
	cmp	eax, 2
	je	.label_471
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_471:
	mov	r15b, r12b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r12b
	jmp	.label_479
.label_481:
	xor	r15d, r15d
	xor	r13d, r13d
	jmp	.label_472
.label_469:
	xor	r15d, r15d
.label_479:
	xor	r13d, r13d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_473
	mov	edi, OFFSET FLAT:.str_6
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_473
	mov	r13b, 1
	jmp	.label_475
.label_473:
	test	r12b, r12b
	je	.label_478
	mov	edi, OFFSET FLAT:.str_6
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_475
.label_478:
	test	r15b, r15b
	je	.label_472
	mov	edi, OFFSET FLAT:.str_6
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 2
	jne	.label_475
.label_472:
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_477
.label_475:
	xor	r14d, r14d
	test	eax, eax
	js	.label_477
	mov	edi, eax
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_477:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	r15b, r15b
	je	.label_474
	mov	edi, 2
	call	close
.label_474:
	test	r12b, r12b
	je	.label_476
	mov	edi, 1
	call	close
.label_476:
	test	r13b, r13b
	je	.label_480
	xor	edi, edi
	call	close
.label_480:
	test	r14, r14
	jne	.label_470
	mov	dword ptr [rbx], ebp
.label_470:
	mov	rax, r14
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
	#Procedure 0x4071e0
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4071f0
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407200
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407210
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdx
	jae	.label_482
	mov	rdi, rcx
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	eax, eax
	bt	rdi, 4
	jb	.label_484
	xor	eax, eax
	cmp	qword ptr [rcx], 0
	je	.label_490
	mov	rdi, rcx
	nop	word ptr cs:[rax + rax]
.label_483:
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	test	rdi, rdi
	jne	.label_483
.label_490:
	add	rcx, 0x10
.label_484:
	test	rsi, rsi
	je	.label_482
	nop	word ptr cs:[rax + rax]
.label_487:
	cmp	qword ptr [rcx], 0
	mov	esi, 0
	mov	rdi, rcx
	je	.label_488
	nop	
.label_489:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_489
	cmp	rsi, rax
	cmova	rax, rsi
.label_488:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_486
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
.label_485:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_485
	cmp	rsi, rax
	cmova	rax, rsi
.label_486:
	add	rcx, 0x20
	cmp	rcx, rdx
	jb	.label_487
.label_482:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4072c0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rcx, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	edx, edx
	cmp	rcx, r9
	mov	esi, 0
	jae	.label_491
	mov	rax, rcx
	not	rax
	add	rax, r9
	mov	r8, rax
	shr	r8, 4
	xor	edx, edx
	bt	rax, 4
	jb	.label_496
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	je	.label_502
	mov	esi, 1
	mov	rax, rcx
.label_492:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_492
	jmp	.label_493
.label_496:
	xor	esi, esi
	jmp	.label_494
.label_502:
	xor	esi, esi
.label_493:
	add	rcx, 0x10
.label_494:
	test	r8, r8
	je	.label_491
	nop	dword ptr [rax]
.label_497:
	cmp	qword ptr [rcx], 0
	mov	rax, rcx
	je	.label_498
	nop	dword ptr [rax]
.label_499:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_499
	inc	rsi
.label_498:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_503
	lea	rax, [rcx + 0x10]
	nop	word ptr [rax + rax]
.label_495:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_495
	inc	rsi
.label_503:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_497
.label_491:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_500
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 0x20]
	je	.label_501
.label_500:
	xor	eax, eax
.label_501:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407380
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
	mov	rdx, qword ptr [rdi + 8]
	xor	ebx, ebx
	cmp	rax, rdx
	jae	.label_504
	mov	rdi, rax
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	ebx, ebx
	bt	rdi, 4
	jb	.label_511
	xor	ebx, ebx
	cmp	qword ptr [rax], 0
	je	.label_505
	mov	rdi, rax
	nop	dword ptr [rax]
.label_507:
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	test	rdi, rdi
	jne	.label_507
.label_505:
	add	rax, 0x10
.label_511:
	test	rsi, rsi
	je	.label_504
	nop	word ptr cs:[rax + rax]
.label_506:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rdi, rax
	je	.label_515
	nop	
.label_512:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_512
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_515:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_514
	lea	rdi, [rax + 0x10]
	xor	esi, esi
.label_513:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_513
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_514:
	add	rax, 0x20
	cmp	rax, rdx
	jb	.label_506
.label_504:
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_7
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_4
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_508]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_509]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_510]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_2
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_2
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074f0

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
	jae	.label_519
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_516
	add	rbx, rax
	je	.label_516
	cmp	rsi, r12
	je	.label_518
	xor	r15d, r15d
	nop	
.label_517:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_520
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_516
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_517
.label_518:
	mov	r15, r12
	jmp	.label_516
.label_520:
	mov	r15, qword ptr [rbx]
.label_516:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_519:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407570
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_521
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_524
	nop	word ptr cs:[rax + rax]
.label_523:
	add	rcx, 0x10
.label_524:
	cmp	rcx, rdx
	jae	.label_522
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_523
.label_521:
	ret	
.label_522:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4075b0
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
	jae	.label_527
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_528:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_525
	test	rdx, rdx
	jne	.label_528
	jmp	.label_526
.label_525:
	test	rdx, rdx
	je	.label_526
	mov	rax, qword ptr [rdx]
	jmp	.label_529
.label_526:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_530:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_529
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_530
.label_529:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_527:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407640
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	jmp	.label_531
	nop	dword ptr [rax + rax]
.label_534:
	add	r9, 0x10
.label_531:
	cmp	r9, r8
	jae	.label_532
	cmp	qword ptr [r9], 0
	je	.label_534
	test	r9, r9
	mov	r10, r9
	je	.label_534
	nop	word ptr [rax + rax]
.label_533:
	cmp	rax, rdx
	jae	.label_532
	mov	rcx, qword ptr [r10]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r10, qword ptr [r10 + 8]
	test	r10, r10
	jne	.label_533
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_534
.label_532:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407690
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
	jmp	.label_539
	nop	word ptr cs:[rax + rax]
.label_538:
	add	r13, 0x10
.label_539:
	cmp	r13, rax
	jae	.label_536
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_538
	test	r13, r13
	je	.label_538
	mov	rsi, r14
	call	r15
	test	al, al
	mov	rbp, r13
	je	.label_536
	nop	word ptr cs:[rax + rax]
.label_537:
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_535
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_537
	jmp	.label_536
	nop	dword ptr [rax]
.label_535:
	mov	rax, qword ptr [r12 + 8]
	jmp	.label_538
.label_536:
	mov	rax, rbx
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
	#Procedure 0x407730

	.globl hash_string
	.type hash_string, @function
hash_string:
	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_540
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_541:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	mov	al, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_541
.label_540:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407770
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_542]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407790

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
	je	.label_545
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_550
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_555]]
	jbe	.label_544
	movss	xmm1,  dword ptr [dword ptr [rip + label_558]]
	ucomiss	xmm1, xmm0
	jbe	.label_544
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_549]]
	jbe	.label_544
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_544
	addss	xmm1,  dword ptr [dword ptr [rip + label_555]]
	ucomiss	xmm0, xmm1
	jbe	.label_544
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_543]]
	ucomiss	xmm2, xmm0
	jb	.label_544
	ucomiss	xmm0, xmm1
	jbe	.label_544
.label_550:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_557
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_554
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_556
.label_554:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_556:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_547]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_548]]
	jae	.label_544
.label_557:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_546
	nop	
.label_551:
	add	rbx, 2
.label_546:
	cmp	rbx, -1
	je	.label_544
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_553
	nop	word ptr cs:[rax + rax]
.label_552:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_553
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_552
.label_553:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_551
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_544
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_544
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_544
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
	jmp	.label_545
.label_544:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_545:
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
	#Procedure 0x4079b0

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
	.align	32
	#Procedure 0x4079c0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4079d0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_561
	nop	word ptr cs:[rax + rax]
.label_564:
	add	r14, 0x10
.label_561:
	cmp	r14, rax
	jae	.label_563
	cmp	qword ptr [r14], 0
	je	.label_564
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_565
	nop	word ptr cs:[rax + rax]
.label_560:
	test	cl, 1
	je	.label_559
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_559:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_560
.label_565:
	test	cl, cl
	je	.label_562
	mov	rdi, qword ptr [r14]
	call	rax
.label_562:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_564
.label_563:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a80

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_566
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_566
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_572
	nop	
.label_570:
	add	r15, 0x10
.label_572:
	cmp	r15, rax
	jae	.label_566
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_570
	test	r15, r15
	je	.label_570
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_576
.label_569:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_576:
	test	rbx, rbx
	jne	.label_569
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_570
.label_566:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_567
	nop	
.label_571:
	add	r15, 0x10
.label_567:
	cmp	r15, rax
	jae	.label_574
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_571
	nop	word ptr cs:[rax + rax]
.label_568:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_568
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_571
.label_574:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_573
.label_575:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_575
.label_573:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b50

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
	jne	.label_587
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_593
	cvtsi2ss	xmm0, rsi
	jmp	.label_592
.label_593:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_592:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_547]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_548]]
	jae	.label_579
.label_587:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_578
	nop	dword ptr [rax + rax]
.label_589:
	add	rbx, 2
.label_578:
	cmp	rbx, -1
	je	.label_579
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_584
	nop	word ptr cs:[rax + rax]
.label_581:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_584
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_581
.label_584:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_589
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_579
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_580
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_579
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
	je	.label_595
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_580
.label_595:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_588
	nop	
.label_582:
	add	r12, 0x10
.label_588:
	cmp	r12, r15
	jae	.label_577
	cmp	qword ptr [r12], 0
	je	.label_582
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_585
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_583:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_594
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_590
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_586
	nop	word ptr [rax + rax]
.label_590:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_586:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_583
.label_585:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_582
.label_577:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_591
	mov	rdi, qword ptr [rsp]
	call	free
.label_579:
	xor	ebp, ebp
.label_580:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_594:
	call	abort
.label_591:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407de0

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
	mov	dword ptr [rsp + 4], edx
	mov	r12, rsi
	mov	rbp, rdi
	mov	r14, qword ptr [r12]
	mov	al, 1
	cmp	r14, qword ptr [r12 + 8]
	jae	.label_596
	nop	word ptr cs:[rax + rax]
.label_601:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_600
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_602
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_598:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_608
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_605
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_604
	nop	dword ptr [rax]
.label_605:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_604:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_598
	mov	r13, qword ptr [r14]
.label_602:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_600
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_606
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_609
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_599
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_597
.label_609:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_603
.label_599:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_607
.label_597:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_603:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_600:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_601
	mov	al, 1
.label_596:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_607:
	xor	eax, eax
	jmp	.label_596
.label_608:
	call	abort
.label_606:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f50

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
	je	.label_629
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_629
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_614
	cmp	rsi, r14
	je	.label_620
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_622
	mov	rax, qword ptr [r12]
	jmp	.label_624
.label_620:
	mov	rax, r14
	jmp	.label_625
.label_622:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_614
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr cs:[rax + rax]
.label_635:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_633
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_632
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_635
	jmp	.label_614
.label_633:
	mov	rax, r14
	jmp	.label_624
.label_632:
	mov	rax, qword ptr [rbp]
.label_624:
	test	rax, rax
	je	.label_614
.label_625:
	xor	ebp, ebp
	test	r15, r15
	je	.label_613
	mov	qword ptr [r15], rax
	jmp	.label_613
.label_614:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_618
	cvtsi2ss	xmm1, rax
	jmp	.label_623
.label_618:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_623:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_640
	cvtsi2ss	xmm0, rcx
	jmp	.label_630
.label_640:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_630:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_615
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_638
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_555]]
	jbe	.label_610
	movss	xmm3,  dword ptr [dword ptr [rip + label_558]]
	ucomiss	xmm3, xmm2
	jbe	.label_610
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_549]]
	jbe	.label_610
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_610
	addss	xmm3,  dword ptr [dword ptr [rip + label_555]]
	ucomiss	xmm2, xmm3
	jbe	.label_610
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_543]]
	ucomiss	xmm5, xmm4
	jb	.label_610
	ucomiss	xmm4, xmm3
	ja	.label_616
.label_610:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2,  dword ptr [dword ptr [rip + label_631]]
	jmp	.label_616
.label_638:
	mov	eax, OFFSET FLAT:default_tuning
.label_616:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_615
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_617
	mulss	xmm0, xmm2
.label_617:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_548]]
	jae	.label_613
	movss	xmm1,  dword ptr [dword ptr [rip + label_547]]
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
	je	.label_613
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_629
	mov	r15, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [r15 + rbp]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_615
	cmp	rsi, r14
	mov	rax, r14
	je	.label_619
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_621
	mov	rax, qword ptr [r12]
	jmp	.label_619
.label_621:
	mov	rax, qword ptr [r15 + rbp + 8]
	test	rax, rax
	je	.label_615
	lea	rbp, [r15 + rbp + 8]
.label_628:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_627
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_626
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_628
	jmp	.label_615
.label_627:
	mov	rax, r14
	jmp	.label_619
.label_626:
	mov	rax, qword ptr [rbp]
.label_619:
	test	rax, rax
	jne	.label_634
.label_615:
	cmp	qword ptr [r12], 0
	je	.label_636
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_637
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_639
.label_636:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_611]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_612
.label_637:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_613
.label_639:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_612:
	mov	ebp, 1
.label_613:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_629:
	call	abort
.label_634:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408270

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
	je	.label_641
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_641:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4082a0

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
	jae	.label_649
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_644
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_655
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_658
	mov	r14, qword ptr [r13]
.label_655:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_657
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_642
.label_658:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_644
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_653:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_650
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_652
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_653
	jmp	.label_644
.label_657:
	mov	qword ptr [r13], 0
	jmp	.label_642
.label_650:
	mov	rcx, rax
	jmp	.label_660
.label_652:
	mov	r14, qword ptr [rcx]
.label_660:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_642:
	xor	r12d, r12d
	test	r14, r14
	je	.label_644
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_643
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_648
	cvtsi2ss	xmm1, rax
	jmp	.label_651
.label_648:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_651:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_654
	cvtsi2ss	xmm0, rcx
	jmp	.label_659
.label_654:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_659:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_643
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_645
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_555]]
	jbe	.label_647
	movss	xmm4,  dword ptr [dword ptr [rip + label_558]]
	ucomiss	xmm4, xmm3
	jbe	.label_647
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_647
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_549]]
	jbe	.label_647
	movss	xmm4,  dword ptr [dword ptr [rip + label_555]]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_647
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_543]]
	ucomiss	xmm5, xmm3
	jb	.label_647
	ucomiss	xmm3, xmm4
	ja	.label_661
.label_647:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_661
.label_645:
	mov	eax, OFFSET FLAT:default_tuning
.label_661:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_643
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_646
	mulss	xmm0, dword ptr [rax + 8]
.label_646:
	movss	xmm1,  dword ptr [dword ptr [rip + label_547]]
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
	jne	.label_643
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_656
	nop	
.label_662:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_662
.label_656:
	mov	qword ptr [r15 + 0x48], 0
.label_643:
	mov	r12, r14
.label_644:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_649:
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408530

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r12, r8
	mov	r13, rcx
	mov	r14d, edx
	mov	r15, rsi
	mov	qword ptr [rsp + 0x58], r15
	mov	qword ptr [rsp + 0x50], rdi
	mov	eax, r14d
	and	eax, 3
	mov	dword ptr [rsp + 0x44], eax
	mov	eax, r14d
	and	eax, 0x20
	mov	dword ptr [rsp + 0x64], eax
	mov	eax, 0x400
	mov	ecx, 0x3e8
	cmovne	ecx, eax
	mov	dword ptr [rsp + 0x40], ecx
	call	localeconv
	mov	rbx, rax
	mov	rbp, qword ptr [rbx]
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rax - 1]
	cmp	rcx, 0x10
	mov	ecx, 1
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	eax, OFFSET FLAT:.str_3
	cmovb	rax, rbp
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rsp + 0x28], rax
	mov	rdi, rbp
	call	strlen
	mov	rsi, r12
	cmp	rax, 0x11
	mov	eax, OFFSET FLAT:.str_0
	cmovb	rax, rbp
	mov	qword ptr [rsp + 0x68], rax
	lea	rbx, [r15 + 0x287]
	cmp	rsi, r13
	jbe	.label_710
	test	r13, r13
	mov	r8d, r14d
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_687
	xor	edx, edx
	mov	rax, rsi
	div	r13
	test	rdx, rdx
	jne	.label_687
	xor	edx, edx
	mov	rax, rsi
	div	r13
	mov	rbp, rsi
	mov	rsi, rax
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	r15, rax
	add	rdx, rdx
	lea	rax, [rdx + rdx*4]
	xor	edx, edx
	div	rsi
	mov	rcx, rax
	add	rdx, rdx
	setne	al
	cmp	rsi, rdx
	sbb	edi, edi
	and	edi, 1
	or	edi, 2
	cmp	rdx, rsi
	mov	rsi, rbp
	movzx	ebp, al
	cmovae	ebp, edi
	jmp	.label_665
.label_710:
	xor	edx, edx
	mov	rax, r13
	div	rsi
	test	rdx, rdx
	mov	r8d, r14d
	mov	rdi, qword ptr [rsp + 0x50]
	jne	.label_687
	xor	ebp, ebp
	xor	edx, edx
	mov	rax, r13
	div	rsi
	mov	rcx, rax
	mov	r15, rcx
	imul	r15, rdi
	xor	edx, edx
	mov	rax, r15
	div	rcx
	cmp	rax, rdi
	mov	ecx, 0
	jne	.label_687
.label_665:
	mov	qword ptr [rsp + 0x30], rbx
	mov	r14d, r8d
	and	r14d, 0x10
	mov	r13d, 0xffffffff
	je	.label_697
	mov	ebx, dword ptr [rsp + 0x40]
	mov	edi, ebx
	xor	r13d, r13d
	cmp	rdi, r15
	jbe	.label_702
	mov	r12, qword ptr [rsp + 0x30]
	jmp	.label_706
.label_687:
	mov	qword ptr [rsp + 0xe8], rsi
	test	rsi, rsi
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0xe8]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_684]]
	mov	qword ptr [rsp + 0xf0], rdi
	test	rdi, rdi
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0xf0]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_684]]
	mov	qword ptr [rsp + 0xf8], r13
	test	r13, r13
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0xf8]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_684]]
	fdivrp	st(2)
	fmulp	st(1)
	test	r8b, 0x10
	jne	.label_695
	mov	ecx, dword ptr [rsp + 0x44]
	cmp	ecx, 1
	je	.label_674
	fld	xword ptr [word ptr [rip + label_677]]
	fucomip	st(1)
	mov	r15, qword ptr [rsp + 0x58]
	jbe	.label_678
	mov	qword ptr [rsp + 0x48], rsi
	mov	dword ptr [rsp + 0x50], r8d
	fld	dword ptr [dword ptr [rip + label_547]]
	fld	st(1)
	fsub	st(1)
	fnstcw	word ptr [rsp + 0x7e]
	mov	ax, word ptr [rsp + 0x7e]
	mov	word ptr [rsp + 0x7e], 0xc7f
	fldcw	word ptr [rsp + 0x7e]
	mov	word ptr [rsp + 0x7e], ax
	fistp	qword ptr [rsp + 0x88]
	fldcw	word ptr [rsp + 0x7e]
	fnstcw	word ptr [rsp + 0x7c]
	mov	ax, word ptr [rsp + 0x7c]
	mov	word ptr [rsp + 0x7c], 0xc7f
	fldcw	word ptr [rsp + 0x7c]
	mov	word ptr [rsp + 0x7c], ax
	fld	st(1)
	fistp	qword ptr [rsp + 0x80]
	fldcw	word ptr [rsp + 0x7c]
	movabs	rax, 0x8000000000000000
	xor	rax, qword ptr [rsp + 0x88]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	cmovb	rax, qword ptr [rsp + 0x80]
	test	ecx, ecx
	sete	cl
	mov	qword ptr [rsp + 0x90], rax
	test	rax, rax
	setns	dl
	movzx	edx, dl
	fild	qword ptr [rsp + 0x90]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_684]]
	fucomip	st(1)
	fstp	st(0)
	setp	dl
	mov	rsi, rbx
	setne	bl
	or	bl, dl
	and	bl, cl
	movzx	ecx, bl
	mov	rbx, rsi
	add	rcx, rax
	mov	qword ptr [rsp + 0x98], rcx
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0x98]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_684]]
	jmp	.label_685
.label_695:
	mov	qword ptr [rsp + 0x48], rsi
	mov	eax, dword ptr [rsp + 0x40]
	mov	eax, eax
	mov	qword ptr [rsp + 0xe0], rax
	fld1	
	xor	r13d, r13d
	fild	qword ptr [rsp + 0xe0]
	fldz	
	nop	dword ptr [rax + rax]
.label_689:
	fstp	st(0)
	fmul	st(1), st(0)
	inc	r13d
	fld	st(0)
	fmul	st(2)
	cmp	r13d, 7
	jg	.label_686
	fxch	st(3)
	fucomi	st(3)
	fstp	st(3)
	fldz	
	jae	.label_689
.label_686:
	fstp	st(1)
	fstp	st(0)
	mov	dword ptr [rsp + 0x50], r8d
	fdivp	st(1)
	mov	r14d, dword ptr [rsp + 0x44]
	cmp	r14d, 1
	fld	st(0)
	mov	r15, qword ptr [rsp + 0x58]
	mov	ebp, dword ptr [rsp + 0x64]
	je	.label_690
	fstp	st(0)
	fld	xword ptr [word ptr [rip + label_677]]
	fucomip	st(1)
	fld	st(0)
	jbe	.label_690
	fstp	st(0)
	fld	dword ptr [dword ptr [rip + label_547]]
	fld	st(1)
	fsub	st(1)
	fnstcw	word ptr [rsp + 0x7a]
	mov	ax, word ptr [rsp + 0x7a]
	mov	word ptr [rsp + 0x7a], 0xc7f
	fldcw	word ptr [rsp + 0x7a]
	mov	word ptr [rsp + 0x7a], ax
	fistp	qword ptr [rsp + 0xc8]
	fldcw	word ptr [rsp + 0x7a]
	fnstcw	word ptr [rsp + 0x78]
	mov	ax, word ptr [rsp + 0x78]
	mov	word ptr [rsp + 0x78], 0xc7f
	fldcw	word ptr [rsp + 0x78]
	mov	word ptr [rsp + 0x78], ax
	fld	st(1)
	fistp	qword ptr [rsp + 0xc0]
	fldcw	word ptr [rsp + 0x78]
	movabs	rax, 0x8000000000000000
	xor	rax, qword ptr [rsp + 0xc8]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	cmovb	rax, qword ptr [rsp + 0xc0]
	test	r14d, r14d
	sete	cl
	mov	qword ptr [rsp + 0xd0], rax
	test	rax, rax
	setns	dl
	movzx	edx, dl
	fild	qword ptr [rsp + 0xd0]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_684]]
	fucomip	st(1)
	setp	dl
	mov	rsi, rbx
	setne	bl
	or	bl, dl
	and	bl, cl
	movzx	ecx, bl
	mov	rbx, rsi
	add	rcx, rax
	mov	qword ptr [rsp + 0xd8], rcx
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0xd8]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_684]]
.label_690:
	fxch	st(1)
	fstp	xword ptr [rsp + 0x30]
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.3_3
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	mov	ecx, ebp
	shr	ecx, 5
	xor	ecx, 1
	or	rcx, 2
	mov	rdx, qword ptr [rsp + 0x20]
	add	rcx, rdx
	cmp	rcx, rax
	jb	.label_701
	inc	rdx
	mov	ecx, dword ptr [rsp + 0x50]
	test	cl, 8
	jne	.label_683
	mov	r14, rdx
	jmp	.label_669
.label_697:
	mov	r12, qword ptr [rsp + 0x30]
	jmp	.label_706
.label_674:
	mov	qword ptr [rsp + 0x48], rsi
	mov	dword ptr [rsp + 0x50], r8d
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_685
.label_678:
	mov	qword ptr [rsp + 0x48], rsi
	mov	dword ptr [rsp + 0x50], r8d
.label_685:
	fstp	xword ptr [rsp]
	xor	r14d, r14d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.2_3
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	mov	r13d, 0xffffffff
	jmp	.label_669
.label_683:
	movzx	ecx, byte ptr [rax + r15 - 1]
	cmp	ecx, 0x30
	jne	.label_671
.label_701:
	fld	xword ptr [rsp + 0x30]
	fmul	dword ptr [dword ptr [rip + label_672]]
	cmp	r14d, 1
	je	.label_676
	fld	xword ptr [word ptr [rip + label_677]]
	fucomip	st(1)
	jbe	.label_676
	fld	dword ptr [dword ptr [rip + label_547]]
	fld	st(1)
	fsub	st(1)
	fnstcw	word ptr [rsp + 0x76]
	mov	ax, word ptr [rsp + 0x76]
	mov	word ptr [rsp + 0x76], 0xc7f
	fldcw	word ptr [rsp + 0x76]
	mov	word ptr [rsp + 0x76], ax
	fistp	qword ptr [rsp + 0xa8]
	fldcw	word ptr [rsp + 0x76]
	fnstcw	word ptr [rsp + 0x74]
	mov	ax, word ptr [rsp + 0x74]
	mov	word ptr [rsp + 0x74], 0xc7f
	fldcw	word ptr [rsp + 0x74]
	mov	word ptr [rsp + 0x74], ax
	fld	st(1)
	fistp	qword ptr [rsp + 0xa0]
	fldcw	word ptr [rsp + 0x74]
	movabs	rax, 0x8000000000000000
	xor	rax, qword ptr [rsp + 0xa8]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	cmovb	rax, qword ptr [rsp + 0xa0]
	test	r14d, r14d
	sete	cl
	mov	qword ptr [rsp + 0xb0], rax
	test	rax, rax
	setns	dl
	movzx	edx, dl
	fild	qword ptr [rsp + 0xb0]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_684]]
	fucomip	st(1)
	fstp	st(0)
	setp	dl
	mov	rsi, rbx
	setne	bl
	or	bl, dl
	and	bl, cl
	movzx	ecx, bl
	mov	rbx, rsi
	add	rcx, rax
	mov	qword ptr [rsp + 0xb8], rcx
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0xb8]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_684]]
.label_676:
	fdiv	dword ptr [dword ptr [rip + label_672]]
	fstp	xword ptr [rsp]
	xor	r14d, r14d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.2_3
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	jmp	.label_669
.label_702:
	mov	qword ptr [rsp + 0x48], rsi
	nop	dword ptr [rax + rax]
.label_712:
	xor	edx, edx
	mov	rax, r15
	div	rdi
	lea	edx, [rdx + rdx*4]
	lea	ecx, [rcx + rdx*2]
	mov	esi, ebp
	sar	esi, 1
	xor	edx, edx
	mov	r15, rax
	mov	eax, ecx
	div	ebx
	lea	edx, [rsi + rdx*2]
	cmp	edx, ebx
	mov	ecx, eax
	jae	.label_688
	add	edx, ebp
	setne	al
	movzx	ebp, al
	jmp	.label_694
	nop	
.label_688:
	add	edx, ebp
	cmp	ebx, edx
	sbb	ebp, ebp
	and	ebp, 1
	or	ebp, 2
.label_694:
	inc	r13d
	cmp	r13d, 7
	jg	.label_700
	cmp	rdi, r15
	jbe	.label_712
.label_700:
	cmp	r15, 9
	ja	.label_703
	mov	eax, dword ptr [rsp + 0x44]
	cmp	eax, 1
	mov	rdx, qword ptr [rsp + 0x58]
	jne	.label_704
	mov	eax, ecx
	and	eax, 1
	add	eax, ebp
	cmp	eax, 2
	ja	.label_707
	jmp	.label_663
.label_671:
	mov	r14, rdx
.label_669:
	mov	qword ptr [rsp + 0x58], r15
	mov	rbp, rbx
	sub	rbp, rax
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rax
	call	memmove
	mov	r12, rbx
	sub	r12, r14
	mov	r8d, dword ptr [rsp + 0x50]
	mov	edi, dword ptr [rsp + 0x64]
	jmp	.label_713
.label_703:
	mov	r12, qword ptr [rsp + 0x30]
	jmp	.label_708
.label_704:
	test	eax, eax
	jne	.label_663
	test	ebp, ebp
	je	.label_663
.label_707:
	inc	ecx
	xor	ebp, ebp
	cmp	ecx, 0xa
	jne	.label_663
	inc	r15
	xor	ecx, ecx
	cmp	r15, 9
	mov	ebp, 0
	ja	.label_668
.label_663:
	test	r8b, 8
	je	.label_673
	test	ecx, ecx
	jne	.label_673
	mov	r12, qword ptr [rsp + 0x30]
	jmp	.label_675
.label_673:
	add	ecx, 0x30
	lea	r12, [rdx + 0x286]
	mov	byte ptr [rdx + 0x286], cl
	mov	rdx, qword ptr [rsp + 0x20]
	sub	r12, rdx
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x18]
	mov	ebx, r8d
	call	memcpy
	mov	r8d, ebx
	xor	ebp, ebp
.label_675:
	xor	ecx, ecx
.label_708:
	mov	rsi, qword ptr [rsp + 0x48]
.label_706:
	mov	eax, dword ptr [rsp + 0x44]
	test	eax, eax
	je	.label_691
	cmp	eax, 1
	jne	.label_693
	movsxd	rax, ebp
	mov	edx, r15d
	and	edx, 1
	add	rdx, rax
	setne	al
	movzx	eax, al
	add	eax, ecx
	cmp	eax, 5
	jle	.label_693
	jmp	.label_698
.label_691:
	add	ecx, ebp
	jle	.label_693
.label_698:
	inc	r15
	mov	eax, dword ptr [rsp + 0x40]
	cmp	r13d, 7
	jg	.label_693
	test	r14d, r14d
	je	.label_693
	cmp	r15, rax
	jne	.label_693
	mov	qword ptr [rsp + 0x48], rsi
	inc	r13d
	mov	r15d, 1
	test	r8b, 8
	jne	.label_670
	mov	byte ptr [r12 - 1], 0x30
	dec	r12
	mov	rdx, qword ptr [rsp + 0x20]
	sub	r12, rdx
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x18]
	mov	ebx, r8d
	call	memcpy
	mov	r8d, ebx
	mov	r15d, 1
	jmp	.label_670
.label_693:
	mov	qword ptr [rsp + 0x48], rsi
.label_670:
	mov	rbx, qword ptr [rsp + 0x30]
	mov	edi, dword ptr [rsp + 0x64]
	movabs	rcx, 0xcccccccccccccccd
	mov	rbp, r12
	nop	dword ptr [rax + rax]
.label_666:
	mov	rax, r15
	mul	rcx
	mov	eax, edx
	shr	eax, 2
	and	eax, 0x3ffffffe
	lea	eax, [rax + rax*4]
	mov	esi, r15d
	sub	esi, eax
	or	sil, 0x30
	mov	byte ptr [rbp - 1], sil
	dec	rbp
	shr	rdx, 3
	cmp	r15, 9
	mov	r15, rdx
	ja	.label_666
.label_713:
	test	r8b, 4
	jne	.label_680
	mov	r12, rbp
	mov	rsi, qword ptr [rsp + 0x48]
	jmp	.label_681
.label_680:
	mov	dword ptr [rsp + 0x44], r13d
	mov	dword ptr [rsp + 0x50], r8d
	mov	qword ptr [rsp + 0x30], rbx
	mov	dword ptr [rsp + 0x64], edi
	mov	rbx, r12
	sub	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x68]
	call	strlen
	mov	r14, rax
	lea	rdi, [rsp + 0x100]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	mov	r15, r14
	neg	r15
	mov	rbp, -1
	mov	r13, qword ptr [rsp + 0x28]
	jmp	.label_696
.label_714:
	add	r12, r15
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, r14
	call	memcpy
.label_696:
	movzx	eax, byte ptr [r13]
	test	rax, rax
	je	.label_705
	cmp	eax, 0x7f
	cmovae	rax, rbx
	inc	r13
	mov	rbp, rax
.label_705:
	cmp	rbx, rbp
	cmovb	rbp, rbx
	sub	r12, rbp
	mov	rax, rbx
	sub	rax, rbp
	lea	rsi, [rsp + rax + 0x100]
	mov	rdi, r12
	mov	rdx, rbp
	call	memcpy
	sub	rbx, rbp
	jne	.label_714
	mov	edi, dword ptr [rsp + 0x64]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r8d, dword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	r13d, dword ptr [rsp + 0x44]
.label_681:
	test	r8b, r8b
	jns	.label_664
	test	r13d, r13d
	jns	.label_667
	xor	r13d, r13d
	cmp	rsi, 2
	jb	.label_667
	mov	eax, dword ptr [rsp + 0x40]
	xor	ecx, ecx
	mov	edx, 1
	nop	dword ptr [rax]
.label_679:
	mov	r13d, 8
	cmp	ecx, 7
	je	.label_667
	inc	ecx
	imul	rdx, rax
	cmp	rdx, rsi
	mov	r13d, ecx
	jb	.label_679
.label_667:
	mov	eax, r8d
	and	eax, 0x100
	test	r8b, 0x40
	je	.label_682
	mov	ecx, r13d
	or	ecx, eax
	je	.label_682
	mov	rbx, qword ptr [rsp + 0x58]
	mov	byte ptr [rbx + 0x287], 0x20
	add	rbx, 0x288
.label_682:
	test	r13d, r13d
	je	.label_692
	test	edi, edi
	jne	.label_709
	mov	cl, 0x6b
	cmp	r13d, 1
	je	.label_711
.label_709:
	movsxd	rcx, r13d
	mov	cl,  byte ptr [byte ptr [rcx + power_letter]]
.label_711:
	mov	byte ptr [rbx], cl
	inc	rbx
.label_692:
	test	eax, eax
	je	.label_664
	test	edi, edi
	je	.label_699
	test	r13d, r13d
	je	.label_699
	mov	byte ptr [rbx], 0x69
	inc	rbx
.label_699:
	mov	byte ptr [rbx], 0x42
	inc	rbx
.label_664:
	mov	byte ptr [rbx], 0
	mov	rax, r12
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_668:
	xor	ebp, ebp
	mov	r12, qword ptr [rsp + 0x30]
	mov	r15d, 0xa
	jmp	.label_708
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ee0

	.globl human_options
	.type human_options, @function
human_options:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	test	rdi, rdi
	jne	.label_720
	mov	edi, OFFSET FLAT:.str.4_2
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	jne	.label_720
	mov	edi, OFFSET FLAT:.str.5_0
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	je	.label_717
.label_720:
	movzx	eax, byte ptr [rdi]
	lea	rbx, [rdi + 1]
	cmp	eax, 0x27
	sete	al
	cmovne	rbx, rdi
	movzx	ebp, al
	shl	ebp, 2
	mov	esi, OFFSET FLAT:block_size_args
	mov	edx, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	mov	rdi, rbx
	call	argmatch
	test	eax, eax
	js	.label_716
	cdqe	
	or	ebp,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	mov	qword ptr [r15], 1
.label_722:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_719
.label_716:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	r8d, OFFSET FLAT:.str.6_0
	mov	rdi, rbx
	mov	rcx, r15
	call	xstrtoumax
	test	eax, eax
	je	.label_723
	mov	dword ptr [r14], 0
.label_719:
	cmp	qword ptr [r15], 0
	jne	.label_715
	mov	edi, OFFSET FLAT:.str.9_0
	call	getenv
	test	rax, rax
	mov	eax, 0x200
	mov	ecx, 0x400
	cmovne	rcx, rax
	mov	qword ptr [r15], rcx
	mov	eax, 4
.label_715:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_723:
	mov	al, byte ptr [rbx]
	add	al, 0xd0
	movzx	eax, al
	cmp	eax, 0xa
	jb	.label_722
	mov	rax, qword ptr [rsp]
	nop	dword ptr [rax]
.label_724:
	cmp	rax, rbx
	je	.label_718
	mov	cl, byte ptr [rbx + 1]
	inc	rbx
	add	cl, 0xd0
	movzx	ecx, cl
	cmp	ecx, 0xa
	jae	.label_724
	jmp	.label_722
.label_717:
	mov	edi, OFFSET FLAT:.str.9_0
	call	getenv
	test	rax, rax
	mov	eax, 0x200
	mov	ecx, 0x400
	cmovne	rcx, rax
	mov	qword ptr [r15], rcx
	xor	ebp, ebp
	jmp	.label_722
.label_718:
	mov	ecx, ebp
	or	ecx, 0x80
	or	ebp, 0x180
	movzx	edx, byte ptr [rax - 1]
	cmp	edx, 0x42
	cmove	ecx, ebp
	jne	.label_721
	movzx	eax, byte ptr [rax - 2]
	cmp	eax, 0x69
	jne	.label_722
.label_721:
	or	ecx, 0x20
	mov	ebp, ecx
	jmp	.label_722
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409050

	.globl ino_map_alloc
	.type ino_map_alloc, @function
ino_map_alloc:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_725
	mov	edi, 0x3fd
	xor	esi, esi
	mov	edx, OFFSET FLAT:ino_hash
	mov	ecx, OFFSET FLAT:ino_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx], rax
	test	rax, rax
	je	.label_726
	mov	qword ptr [rbx + 8], r14
	mov	qword ptr [rbx + 0x10], 0
	jmp	.label_725
.label_726:
	mov	rdi, rbx
	call	free
	xor	ebx, ebx
.label_725:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090b0

	.globl ino_hash
	.type ino_hash, @function
ino_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4090c0

	.globl ino_compare
	.type ino_compare, @function
ino_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4090d0
	.globl ino_map_free
	.type ino_map_free, @function
ino_map_free:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	hash_free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	
	.section	.text
	.align	32
	#Procedure 0x4090f0

	.globl ino_map_insert
	.type ino_map_insert, @function
ino_map_insert:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x10]
	test	rbx, rbx
	je	.label_730
	cmp	qword ptr [rbx], r15
	jne	.label_727
	mov	rax, qword ptr [rbx + 8]
	jmp	.label_728
.label_730:
	mov	edi, 0x10
	call	malloc
	mov	rbx, rax
	mov	qword ptr [r14 + 0x10], rbx
	mov	rax, -1
	test	rbx, rbx
	je	.label_728
.label_727:
	mov	qword ptr [rbx], r15
	mov	rdi, qword ptr [r14]
	mov	rsi, rbx
	call	hash_insert
	mov	rcx, rax
	mov	rax, -1
	test	rcx, rcx
	je	.label_728
	cmp	rcx, rbx
	je	.label_731
	mov	rax, qword ptr [rcx + 8]
	jmp	.label_729
.label_731:
	mov	qword ptr [r14 + 0x10], 0
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
.label_729:
	mov	qword ptr [rbx + 8], rax
.label_728:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409180

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_732
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_733:
	mov	rax, rcx
	imul	r8
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_733
	jmp	.label_735
.label_732:
	add	rsi, 0x15
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_734:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	sub	eax, edi
	mov	byte ptr [rsi - 2], al
	add	rdx, r10
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_734
	mov	byte ptr [rsi - 2], 0x2d
	add	rsi, -2
.label_735:
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409240

	.globl mbscasecmp
	.type mbscasecmp, @function
mbscasecmp:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x80
	mov	r14, rsi
	mov	rbx, rdi
	xor	r12d, r12d
	cmp	rbx, r14
	je	.label_738
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_749
	mov	qword ptr [rsp + 0x50], rbx
	mov	byte ptr [rsp + 0x40], 0
	mov	qword ptr [rsp + 0x44], 0
	mov	byte ptr [rsp + 0x4c], 0
	mov	qword ptr [rsp + 0x10], r14
	mov	byte ptr [rsp], 0
	mov	qword ptr [rsp + 4], 0
	mov	byte ptr [rsp + 0xc], 0
	lea	rdi, [rsp + 0x40]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	je	.label_751
	shr	rax, 0x20
	je	.label_744
.label_751:
	lea	r14, [rsp]
	lea	r15, [rsp + 0x40]
	nop	word ptr cs:[rax + rax]
.label_737:
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	je	.label_747
	mov	rcx, rax
	shr	rcx, 0x20
	je	.label_744
.label_747:
	mov	rdi, qword ptr [rsp + 0x60]
	test	dil, dil
	je	.label_750
	mov	r12d, 0xffffffff
	test	al, al
	je	.label_738
	shr	rdi, 0x20
	call	towlower
	mov	r12d, eax
	mov	edi, dword ptr [rsp + 0x24]
	call	towlower
	sub	r12d, eax
	jmp	.label_740
.label_750:
	mov	r12d, 1
	test	al, al
	jne	.label_738
	mov	rdx, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rdx, rax
	jne	.label_742
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	call	memcmp
	mov	r12d, eax
.label_740:
	test	r12d, r12d
	jne	.label_738
	mov	rax, qword ptr [rsp + 0x58]
	add	qword ptr [rsp + 0x50], rax
	mov	byte ptr [rsp + 0x4c], 0
	mov	rax, qword ptr [rsp + 0x18]
	add	qword ptr [rsp + 0x10], rax
	mov	byte ptr [rsp + 0xc], 0
	mov	rdi, r15
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	je	.label_737
	shr	rax, 0x20
	jne	.label_737
.label_744:
	lea	rdi, [rsp + 0x40]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	mov	r12d, 1
	je	.label_738
	shr	rax, 0x20
	jne	.label_738
	lea	rdi, [rsp]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	sete	cl
	shr	rax, 0x20
	setne	al
	or	al, cl
	movzx	r12d, al
	shl	r12d, 0x1f
	sar	r12d, 0x1f
	jmp	.label_738
.label_749:
	call	__ctype_b_loc
	mov	r15, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_745:
	movzx	r12d, byte ptr [rbx]
	test	byte ptr [r15 + r12*2 + 1], 1
	je	.label_736
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	movzx	r12d, byte ptr [rax + r12*4]
.label_736:
	movzx	r13d, byte ptr [r14]
	test	byte ptr [r15 + r13*2 + 1], 1
	je	.label_739
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	movzx	r13d, byte ptr [rax + r13*4]
.label_739:
	test	r12d, r12d
	je	.label_743
	inc	rbx
	inc	r14
	cmp	r12d, r13d
	je	.label_745
	jmp	.label_746
.label_743:
	xor	r12d, r12d
.label_746:
	sub	r12d, r13d
.label_738:
	mov	eax, r12d
	add	rsp, 0x80
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_742:
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	jae	.label_748
	call	memcmp
	test	eax, eax
	setg	al
	jmp	.label_741
.label_748:
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	setns	al
.label_741:
	movzx	eax, al
	lea	r12d, [rax + rax - 1]
	jmp	.label_738
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409490

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xc], 0
	jne	.label_754
	cmp	byte ptr [rbx], 0
	mov	r15, qword ptr [rbx + 0x10]
	je	.label_757
	lea	r14, [rbx + 4]
	jmp	.label_760
.label_757:
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx,  dword ptr [dword ptr [+ (rcx * 4) + is_basic_table]]
	bt	ecx, eax
	jae	.label_762
	mov	qword ptr [rbx + 0x18], 1
	movsx	eax, byte ptr [r15]
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_752
.label_762:
	lea	r14, [rbx + 4]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_761
	mov	byte ptr [rbx], 1
.label_760:
	lea	r12, [rbx + 0x24]
	call	__ctype_get_mb_cur_max
	mov	rdi, r15
	mov	rsi, rax
	call	strnlen1
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rax
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x18], rax
	cmp	rax, -2
	je	.label_756
	test	rax, rax
	je	.label_759
	cmp	rax, -1
	jne	.label_753
	mov	qword ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_752
.label_756:
	mov	rdi, qword ptr [rbx + 0x10]
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_752
.label_759:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_755
	cmp	dword ptr [r12], 0
	jne	.label_758
.label_753:
	mov	byte ptr [rbx + 0x20], 1
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_752
	mov	byte ptr [rbx], 0
.label_752:
	mov	byte ptr [rbx + 0xc], 1
.label_754:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_755:
	mov	edi, OFFSET FLAT:.str.2_4
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_758:
	mov	edi, OFFSET FLAT:.str.3_4
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_761:
	mov	edi, OFFSET FLAT:.str_8
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x96
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4095e0
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4095f0
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	al, byte ptr [rbx]
	test	al, al
	mov	byte ptr [r14], al
	je	.label_763
	mov	rax, qword ptr [rbx + 4]
	mov	qword ptr [r14 + 4], rax
	jmp	.label_764
.label_763:
	mov	qword ptr [r14 + 4], 0
.label_764:
	mov	al, byte ptr [rbx + 0xc]
	mov	byte ptr [r14 + 0xc], al
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rax, [rbx + 0x28]
	cmp	rsi, rax
	jne	.label_765
	lea	r15, [r14 + 0x28]
	mov	rdx, qword ptr [rbx + 0x18]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_765:
	mov	qword ptr [r14 + 0x10], rsi
	mov	rax, qword ptr [rbx + 0x18]
	mov	qword ptr [r14 + 0x18], rax
	mov	rax, qword ptr [rbx + 0x20]
	test	al, al
	mov	byte ptr [r14 + 0x20], al
	je	.label_766
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x24], eax
.label_766:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409670

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_769
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_767
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_767
	mov	esi, OFFSET FLAT:.str.2_5
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_768
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_768:
	mov	rbx, r14
.label_767:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_769:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_9
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409720
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
	#Procedure 0x409760
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
	#Procedure 0x409770
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
	#Procedure 0x409780
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
	#Procedure 0x4097c0
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
	#Procedure 0x4097e0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_770
	test	rdx, rdx
	je	.label_770
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_770:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409810
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
	#Procedure 0x409890

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
.label_798:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_856
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_860]]
.label_3521:
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
.label_3522:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_882
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_882
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_782:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_771
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_771:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_782
.label_882:
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
	jmp	.label_793
.label_3514:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_793
.label_3517:
	mov	al, 1
.label_3515:
	mov	r12b, 1
.label_3518:
	test	r12b, 1
	mov	cl, 1
	je	.label_812
	mov	cl, al
.label_812:
	mov	al, cl
.label_3516:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_817
	test	r10, r10
	je	.label_821
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_819
.label_817:
	xor	ecx, ecx
	jmp	.label_819
.label_3519:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_826
	test	r10, r10
	je	.label_835
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_837
.label_3520:
	mov	dil, 1
	mov	r9d, 5
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_793
.label_821:
	mov	ecx, 1
.label_819:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_793
.label_826:
	xor	eax, eax
	jmp	.label_837
.label_835:
	mov	eax, 1
.label_837:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_793:
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
	jmp	.label_861
.label_809:
	inc	rdi
.label_861:
	cmp	rbp, -1
	je	.label_787
	cmp	rdi, rbp
	jne	.label_789
	jmp	.label_790
	nop	word ptr cs:[rax + rax]
.label_787:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_795
.label_789:
	test	r12b, r12b
	je	.label_800
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_802
	cmp	rbp, -1
	jne	.label_802
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
.label_802:
	cmp	rbx, rbp
	jbe	.label_825
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_828
	nop	word ptr [rax + rax]
.label_800:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_828
.label_825:
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
	jne	.label_850
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_828
	jmp	.label_775
.label_850:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_828:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_889
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_878]]
.label_3534:
	test	rdi, rdi
	jne	.label_797
	jmp	.label_884
.label_3538:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_885
	test	rdi, rdi
	jne	.label_888
	cmp	rbp, 1
	je	.label_884
	xor	r13d, r13d
	jmp	.label_781
.label_3527:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_892
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_775
	cmp	r9d, 2
	jne	.label_773
	mov	al, r14b
	and	al, 1
	jne	.label_776
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_780
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_780:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_855
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_855:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_893
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_893:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_804
.label_3528:
	mov	bl, 0x62
	jmp	.label_810
.label_3529:
	mov	cl, 0x74
	jmp	.label_791
.label_3530:
	mov	bl, 0x76
	jmp	.label_810
.label_3531:
	mov	bl, 0x66
	jmp	.label_810
.label_3532:
	mov	cl, 0x72
	jmp	.label_791
.label_3535:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_818
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_822
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
	jae	.label_829
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_829:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_846
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_846:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_849
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_849:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_818:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_781
.label_3536:
	cmp	r9d, 5
	je	.label_796
	cmp	r9d, 2
	jne	.label_797
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_797
	jmp	.label_868
.label_3537:
	cmp	r9d, 2
	jne	.label_871
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_874
	jmp	.label_879
.label_889:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_880
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
.label_811:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_779
	test	cl, cl
	je	.label_779
	xor	eax, eax
	jmp	.label_781
.label_885:
	test	rdi, rdi
	jne	.label_785
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_785
.label_884:
	mov	dl, 1
.label_3533:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_857
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_781
.label_892:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_809
	jmp	.label_797
.label_871:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_791
.label_874:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_803
.label_791:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_805
.label_810:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_781
	jmp	.label_813
.label_880:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_815
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_815:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_883:
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
	je	.label_845
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_848
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_852
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_862
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_869:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_864
	bt	rsi, rdx
	jb	.label_866
.label_864:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_869
.label_862:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_877
	xor	r13d, r13d
.label_877:
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
	je	.label_883
	jmp	.label_811
.label_785:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_781
.label_796:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_797
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_797
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_797
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_777
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_783
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_851
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_870
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_870:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_799
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_799:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_807
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_807:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_873
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_873:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_781
.label_797:
	xor	eax, eax
	xor	r13d, r13d
.label_781:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_832
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_834
	jmp	.label_838
	nop	word ptr [rax + rax]
.label_832:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_838
.label_834:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_841
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_847
	nop	word ptr cs:[rax + rax]
.label_838:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_847:
	mov	bl, r15b
	je	.label_803
	jmp	.label_813
.label_841:
	mov	bl, r15b
.label_813:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_775
	cmp	r9d, 2
	jne	.label_859
	mov	al, r14b
	and	al, 1
	jne	.label_859
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_794
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_794:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_842
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_842:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_876
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_876:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_859:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_886
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_886:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_858
.label_888:
	xor	r13d, r13d
	jmp	.label_781
.label_779:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_895
	nop	word ptr [rax + rax]
.label_890:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_895:
	test	cl, cl
	je	.label_784
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_786
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_788
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_788:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_786
	nop	word ptr [rax + rax]
.label_784:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_775
	cmp	r9d, 2
	jne	.label_808
	mov	al, r14b
	and	al, 1
	jne	.label_808
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_854
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_854:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_894
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_894:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_827
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_827:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_808:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_840
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_840:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_844
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_844:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_831
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_831:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_786:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_803
	test	r14b, 1
	je	.label_867
	mov	bl, al
	and	bl, 1
	jne	.label_867
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_853
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_853:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_881
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_881:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_867:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_890
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_890
	nop	dword ptr [rax]
.label_803:
	test	r14b, 1
	je	.label_778
	and	al, 1
	jne	.label_778
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_814
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_814:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_887
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_887:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_778:
	mov	bl, r15b
.label_858:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_801
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_801:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_809
.label_773:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_804
.label_776:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_804:
	cmp	rcx, r10
	jae	.label_820
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_820:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_824
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_833
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_836
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_839
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_839:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_843
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_843:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_781
.label_824:
	xor	r13d, r13d
	jmp	.label_781
.label_833:
	xor	r13d, r13d
	jmp	.label_781
.label_836:
	xor	r13d, r13d
	jmp	.label_781
.label_848:
	xor	r13d, r13d
.label_845:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_811
.label_852:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_863
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_865:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_872
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_865
	xor	r13d, r13d
	jmp	.label_811
.label_863:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_811
.label_872:
	xor	r13d, r13d
	jmp	.label_811
.label_777:
	xor	r13d, r13d
	jmp	.label_781
.label_783:
	xor	r13d, r13d
	jmp	.label_781
	nop	dword ptr [rax]
.label_790:
	mov	r13, rdi
.label_795:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_891
	or	al, dl
	je	.label_772
.label_891:
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
	je	.label_774
	or	al, dl
	jne	.label_774
	test	r8b, 1
	jne	.label_792
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_774
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_798
.label_774:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_806
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_806
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_806
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_823:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_816
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_816:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_823
.label_806:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_830
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_830
.label_857:
	mov	r9d, 2
	jmp	.label_775
.label_866:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_775
.label_772:
	mov	rbp, r13
	jmp	.label_775
.label_805:
	mov	r9d, 2
.label_775:
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
.label_875:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_830:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_792:
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
	jmp	.label_875
.label_822:
	mov	r9d, 2
	jmp	.label_775
.label_879:
	mov	r9d, 2
	jmp	.label_775
.label_868:
	mov	r9d, 2
	jmp	.label_775
.label_851:
	mov	r9d, 5
	jmp	.label_775
.label_856:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40aa20
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
	#Procedure 0x40aaf0
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
	je	.label_896
	mov	qword ptr [rax], rbx
.label_896:
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
	#Procedure 0x40abf0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_897
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_900:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_900
.label_897:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_901
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_898]], OFFSET FLAT:slot0
.label_901:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_899
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_899:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ac90
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x40aca0

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
	js	.label_902
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_905
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_908
.label_905:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_904
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
	jne	.label_903
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_903:
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
.label_908:
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
	ja	.label_907
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_906
	mov	rdi, rbx
	call	free
.label_906:
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
.label_907:
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
.label_902:
	call	abort
.label_904:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ae70
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ae80
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
	#Procedure 0x40aea0
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
	#Procedure 0x40aec0

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
	je	.label_909
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
.label_909:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40af30
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
	je	.label_910
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
.label_910:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40afa0

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
	je	.label_911
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
.label_911:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b010
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
	je	.label_912
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
.label_912:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b080
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_913]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_914]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_915]]
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
	#Procedure 0x40b0f0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_913]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_914]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_915]]
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
	#Procedure 0x40b160

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_913]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_914]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_915]]
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
	#Procedure 0x40b1c0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_913]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_914]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_915]]
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
	#Procedure 0x40b220

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
	je	.label_916
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
.label_916:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b2d0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_913]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_914]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_915]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_917
	test	rdx, rdx
	je	.label_917
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_917:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b340
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_913]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_914]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_915]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_918
	test	rdx, rdx
	je	.label_918
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_918:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b3b0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_913]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_914]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_915]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_919
	test	rsi, rsi
	je	.label_919
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_919:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40b420
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_913]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_914]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_915]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_920
	test	rsi, rsi
	je	.label_920
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
.label_920:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b490
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b4a0
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
	#Procedure 0x40b4c0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b4e0

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
	#Procedure 0x40b500

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
	jne	.label_922
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_923
	cmp	ecx, 0x55
	jne	.label_921
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_921
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_921
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_921
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_921
	cmp	byte ptr [rax + 5], 0
	jne	.label_921
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_922
	mov	eax, OFFSET FLAT:.str.15
	jmp	.label_922
.label_923:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_921
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_921
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_921
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_921
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_921
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_921
	cmp	byte ptr [rax + 7], 0
	je	.label_924
.label_921:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_922:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_924:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_922
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_922
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b5f0

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	xor	esi, esi
	mov	rdx, r14
	call	memchr
	mov	ecx, 1
	sub	rcx, rbx
	add	rcx, rax
	test	rax, rax
	cmove	rcx, r14
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b630

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
	je	.label_931
	mov	edx, OFFSET FLAT:.str_10
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_930
.label_931:
	mov	edx, OFFSET FLAT:.str.1_7
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_930:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_6
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
	mov	esi, OFFSET FLAT:.str.3_5
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_926
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_927]]
.label_3362:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_3
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
.label_926:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_925
.label_3363:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_1
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
.label_3364:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_1
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
.label_3365:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_932
.label_3366:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_934
.label_3367:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_929
.label_3368:
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
.label_929:
	mov	qword ptr [rsp + 0x10], rdi
.label_934:
	mov	qword ptr [rsp + 8], rsi
.label_932:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_933
.label_3370:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_925:
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
	jmp	.label_928
.label_3369:
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
.label_928:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_933:
	call	__fprintf_chk
.label_3361:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b920
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_935:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_935
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b950
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_938:
	cmp	r10d, 0x28
	ja	.label_936
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_937
	nop	word ptr cs:[rax + rax]
.label_936:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_937:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_939
	inc	r9
	cmp	r9, 0xa
	jb	.label_938
.label_939:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b9b0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_940
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_940:
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
.label_942:
	cmp	r8d, 0x28
	ja	.label_941
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_944
	nop	
.label_941:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_944:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_943
	inc	r9
	cmp	r9, 0xa
	jb	.label_942
.label_943:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bab0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_0
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
	mov	esi, OFFSET FLAT:.str.19_0
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
	#Procedure 0x40bb30
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_945
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_946
	test	rax, rax
	je	.label_945
.label_946:
	pop	rbx
	ret	
.label_945:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bb70

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_947
	test	rax, rax
	je	.label_948
.label_947:
	pop	rbx
	ret	
.label_948:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bb90
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_949
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_950
	test	rbx, rbx
	jne	.label_950
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_950:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_951
	test	rax, rax
	je	.label_949
.label_951:
	pop	rbx
	ret	
.label_949:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bbe0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_952
	test	rbx, rbx
	jne	.label_952
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_952:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_954
	test	rax, rax
	je	.label_953
.label_954:
	pop	rbx
	ret	
.label_953:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40bc10
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_959
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_960
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_955
.label_959:
	test	rcx, rcx
	jne	.label_961
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_961:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_957
.label_955:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_956
	test	rbx, rbx
	jne	.label_956
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_956:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_958
	test	rax, rax
	je	.label_960
.label_958:
	pop	rbx
	ret	
.label_960:
	call	xalloc_die
.label_957:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bcb0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_962
	test	rax, rax
	je	.label_963
.label_962:
	pop	rbx
	ret	
.label_963:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bcd0

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_966
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_968
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_965
	call	free
	xor	eax, eax
	jmp	.label_967
.label_966:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_964
	mov	qword ptr [rsi], rbx
.label_965:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_967
	test	rax, rax
	je	.label_964
.label_967:
	pop	rbx
	ret	
.label_964:
	call	xalloc_die
.label_968:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bd40

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
	je	.label_970
	test	r14, r14
	je	.label_969
.label_970:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_969:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bd80

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_971
	call	rpl_calloc
	test	rax, rax
	je	.label_971
	pop	rcx
	ret	
.label_971:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bdb0

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
	je	.label_972
	test	r15, r15
	je	.label_973
.label_972:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_973:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bdf0

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
	je	.label_975
	test	r15, r15
	je	.label_974
.label_975:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_974:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40be40

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_8
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
	#Procedure 0x40be70

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_977
	pop	rcx
	ret	
.label_977:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_976
	mov	edi, OFFSET FLAT:.str_11
	mov	esi, OFFSET FLAT:.str.1_9
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	call	__assert_fail
.label_976:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40beb0

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_978
	cmp	ecx, 0x11
	jne	.label_979
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_978:
	ret	
.label_979:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40bed0

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	ebp, edx
	mov	r12, rdi
	cmp	ebp, 0x25
	jae	.label_1033
	test	rsi, rsi
	lea	rbx, [rsp + 0x20]
	cmovne	rbx, rsi
	mov	qword ptr [rsp + 0x10], rbx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	xor	r13d, r13d
	xor	ecx, ecx
	mov	rdi, r12
	mov	rsi, rbx
	mov	edx, ebp
	call	__strtol_internal
	mov	rbp, rax
	mov	rcx, qword ptr [rbx]
	cmp	rcx, r12
	je	.label_993
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_994
	mov	r13d, 4
	cmp	eax, 0x22
	jne	.label_981
	mov	r13d, 1
.label_994:
	test	r14, r14
	je	.label_1003
	mov	r12d, r13d
	jmp	.label_982
.label_993:
	mov	r13d, 4
	test	r14, r14
	je	.label_981
	mov	r15, rcx
	movsx	esi, byte ptr [r12]
	test	esi, esi
	je	.label_981
	mov	rdi, r14
	call	strchr
	xor	r12d, r12d
	mov	ebp, 1
	test	rax, rax
	mov	rcx, r15
	je	.label_981
.label_982:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_1019
	mov	qword ptr [rsp + 8], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_987
	mov	r15d, 1
	mov	r8d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1002
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_1002
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	r8d, 0x400
	test	rax, rax
	je	.label_1002
	mov	rax, qword ptr [rsp + 8]
	movsx	eax, byte ptr [rax + 1]
	mov	r15d, 1
	mov	r8d, 0x400
	cmp	eax, 0x42
	je	.label_984
	cmp	eax, 0x44
	je	.label_984
	cmp	eax, 0x69
	jne	.label_1002
	mov	rax, qword ptr [rsp + 8]
	movzx	eax, byte ptr [rax + 2]
	cmp	eax, 0x42
	mov	r15d, 3
	je	.label_995
	mov	r15d, 1
.label_995:
	mov	r8d, 0x400
	jmp	.label_1002
.label_1003:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	jmp	.label_981
.label_1019:
	mov	r13, rbp
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_1006
.label_984:
	mov	r15d, 2
	mov	r8d, 0x3e8
.label_1002:
	movabs	r9, 0x7fffffffffffffff
	cmp	r13d, 0x59
	jg	.label_1010
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_1014
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1015]]
.label_3371:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	jl	.label_1018
	mov	r13, rbp
	shl	r13, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_1022
.label_1010:
	cmp	r13d, 0x73
	jg	.label_1026
	lea	eax, [r13 - 0x62]
	cmp	eax, 0xb
	ja	.label_1028
	xor	ebx, ebx
	mov	r13, rbp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1031]]
.label_3550:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	jl	.label_1018
	mov	r13, rbp
	shl	r13, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_1022
.label_1014:
	cmp	r13d, 0x54
	je	.label_985
	cmp	r13d, 0x59
	jne	.label_987
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_990
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_990:
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_1005
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	edi, al
.label_1005:
	or	edi, ebx
	cmp	rsi, r10
	mov	r11d, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_1012
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_1012:
	or	ebx, edi
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_1025
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_1025:
	or	r11d, ebx
	cmp	rsi, r10
	mov	r14d, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_1008
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_1008:
	or	ebx, r11d
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_1034
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r14d, al
.label_1034:
	or	r14d, ebx
	cmp	rsi, r10
	mov	ebx, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_996
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_996:
	or	edi, r14d
	cmp	rcx, r10
	jl	.label_1000
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_1000:
	or	ebx, edi
	jmp	.label_989
.label_1026:
	cmp	r13d, 0x74
	je	.label_985
	cmp	r13d, 0x77
	jne	.label_987
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_1021
.label_1018:
	inc	r9
	mov	ebx, 1
	mov	r13, r9
	jmp	.label_989
.label_3373:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	r10d, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_1027
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_1027:
	cmp	rcx, rdi
	mov	rsi, r13
	jl	.label_980
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r10d, al
.label_980:
	or	r10d, ebx
	cmp	rsi, rdi
	mov	ebx, 1
	jl	.label_992
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_992:
	or	ebx, r10d
	jmp	.label_989
.label_3374:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	cmp	rbp, rax
	mov	ebx, 1
	jl	.label_989
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	cmp	rax, rbp
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
	jmp	.label_989
.label_3375:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ebx, 1
	mov	rcx, r13
	mov	r10d, 1
	jl	.label_1017
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	r10d, al
.label_1017:
	cmp	rcx, rdi
	jl	.label_1030
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_1030:
	or	ebx, r10d
	jmp	.label_989
.label_985:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	r11d, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_1032
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_1032:
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_998
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_998:
	or	r11d, edi
	cmp	rsi, r10
	mov	ebx, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_1007
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_1007:
	or	edi, r11d
	cmp	rcx, r10
	jl	.label_1004
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_1004:
	or	ebx, edi
	jmp	.label_989
.label_1028:
	cmp	r13d, 0x5a
	jne	.label_987
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_1016
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_1016:
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_1038
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	edi, al
.label_1038:
	or	edi, ebx
	cmp	rsi, r10
	mov	r11d, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_991
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_991:
	or	ebx, edi
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_1001
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_1001:
	or	r11d, ebx
	cmp	rsi, r10
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_1020
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	movzx	ebx, al
.label_1020:
	or	ebx, r11d
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_1024
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	edi, al
.label_1024:
	or	edi, ebx
	cmp	rsi, r10
	mov	ebx, 1
	jl	.label_1035
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_1035:
	or	ebx, edi
	jmp	.label_989
.label_987:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	or	r12d, 2
	mov	r13d, r12d
	jmp	.label_981
.label_3372:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	r14d, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_988
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_988:
	cmp	rcx, r10
	mov	rbx, r13
	jl	.label_986
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbx, rcx
	imul	rbx, r8
	cmp	rax, rcx
	setl	al
	cmovl	rbx, r9
	movzx	r14d, al
.label_986:
	or	r14d, edi
	cmp	rbx, r10
	mov	r11d, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_1011
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r9
	movzx	ecx, al
.label_1011:
	or	ecx, r14d
	cmp	rsi, r10
	mov	rdi, r13
	jl	.label_1023
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rsi
	imul	rdi, r8
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r9
	movzx	r11d, al
.label_1023:
	or	r11d, ecx
	cmp	rdi, r10
	mov	ebx, 1
	mov	rsi, r13
	mov	r14d, 1
	jl	.label_1037
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rdi
	imul	rsi, r8
	cmp	rax, rdi
	setl	al
	cmovl	rsi, r9
	movzx	r14d, al
.label_1037:
	or	r14d, r11d
	cmp	rsi, r10
	jl	.label_983
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_983:
	or	ebx, r14d
	jmp	.label_989
.label_3376:
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	r14d, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_997
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_997:
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_1009
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	cmovl	rsi, r9
	movzx	r14d, al
.label_1009:
	or	r14d, edi
	cmp	rsi, r10
	mov	r11d, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_1013
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbx, rsi
	imul	rbx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rbx, r9
	movzx	edi, al
.label_1013:
	or	edi, r14d
	cmp	rbx, r10
	mov	rsi, r13
	jl	.label_1029
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_1029:
	or	r11d, edi
	cmp	rsi, r10
	mov	ebx, 1
	jl	.label_1036
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_1036:
	or	ebx, r11d
	jmp	.label_989
.label_1021:
	lea	r13, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_1022:
	cmp	rbp, rax
	setg	al
	cmovg	r13, r9
	movzx	ebx, al
.label_989:
	or	ebx, r12d
	mov	rdx, qword ptr [rsp + 8]
	lea	rax, [rdx + r15]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	cmp	byte ptr [rdx + r15], 0
	je	.label_999
	or	ebx, 2
.label_999:
	mov	rax, qword ptr [rsp + 0x18]
	mov	r12d, ebx
.label_1006:
	mov	qword ptr [rax], r13
	mov	r13d, r12d
.label_981:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1033:
	mov	edi, OFFSET FLAT:.str_12
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40c890

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
	jae	.label_1041
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_1060:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_1060
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	r13d, 4
	cmp	eax, 0x2d
	je	.label_1050
	mov	rdi, rbx
	mov	edx, r12d
	mov	rbp, rsi
	call	strtoul
	mov	rcx, rbp
	mov	rbp, rax
	mov	r12, qword ptr [rcx]
	cmp	r12, rbx
	je	.label_1045
	mov	eax, dword ptr [r15]
	xor	ebx, ebx
	test	eax, eax
	je	.label_1048
	cmp	eax, 0x22
	jne	.label_1050
	mov	ebx, 1
.label_1048:
	test	r14, r14
	jne	.label_1063
	jmp	.label_1057
.label_1045:
	test	r14, r14
	je	.label_1050
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_1050
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	ebx, ebx
	mov	ebp, 1
	test	rax, rax
	je	.label_1050
.label_1063:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_1057
	mov	qword ptr [rsp], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_1043
	mov	r15d, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1044
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_1044
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_1044
	movsx	eax, byte ptr [r12 + 1]
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_1061
	cmp	eax, 0x44
	je	.label_1061
	cmp	eax, 0x69
	jne	.label_1044
	movzx	eax, byte ptr [r12 + 2]
	cmp	eax, 0x42
	mov	r15d, 3
	je	.label_1039
	mov	r15d, 1
.label_1039:
	mov	esi, 0x400
	jmp	.label_1044
.label_1061:
	mov	r15d, 2
	mov	esi, 0x3e8
.label_1044:
	cmp	r13d, 0x59
	jg	.label_1049
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_1046
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1054]]
.label_3353:
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_1055
.label_1049:
	cmp	r13d, 0x73
	jg	.label_1053
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_1059
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1062]]
.label_3441:
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_1055:
	cmp	rax, 1
	sbb	rax, rax
	not	rax
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_1040
.label_1046:
	cmp	r13d, 0x54
	je	.label_1052
	cmp	r13d, 0x59
	jne	.label_1043
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
	jmp	.label_1058
.label_1053:
	cmp	r13d, 0x74
	je	.label_1052
	cmp	r13d, 0x77
	jne	.label_1043
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_1040
.label_3355:
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
	jmp	.label_1047
.label_3356:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	and	eax, 1
	jmp	.label_1051
.label_3357:
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
	jmp	.label_1047
.label_1052:
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
	jmp	.label_1047
.label_1059:
	cmp	r13d, 0x5a
	jne	.label_1043
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
.label_1058:
	movzx	eax, dl
	and	eax, 1
	jmp	.label_1051
.label_1043:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	jmp	.label_1042
.label_3354:
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
.label_1047:
	and	dl, 1
	movzx	eax, dl
.label_1051:
	mov	rbp, rsi
.label_1040:
	or	eax, ebx
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp]
	mov	qword ptr [rdx], rcx
	cmp	byte ptr [r12 + r15], 0
	je	.label_1056
	or	eax, 2
.label_1056:
	mov	ebx, eax
.label_1057:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
.label_1042:
	mov	r13d, ebx
.label_1050:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_3358:
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
	jmp	.label_1051
.label_1041:
	mov	edi, OFFSET FLAT:.str_12
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cf20

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, r8
	mov	eax, esi
	mov	ebp,  dword ptr [dword ptr [rip + exit_failure]]
	dec	edi
	cmp	edi, 4
	jae	.label_1064
	movsxd	rsi, edi
	mov	rsi,  qword ptr [word ptr [+ (rsi * 8) + label_1065]]
	cdqe	
	test	eax, eax
	jns	.label_1066
	lea	r14, [rsp + 6]
	mov	ebx, OFFSET FLAT:.str_13
	sub	rbx, rax
	mov	byte ptr [rsp + 6], dl
	mov	byte ptr [rsp + 7], 0
	jmp	.label_1067
.label_1066:
	shl	rax, 5
	mov	r14, qword ptr [rcx + rax]
	mov	ebx, OFFSET FLAT:.str_13
.label_1067:
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rcx
	mov	rcx, rbx
	mov	r8, r14
	mov	r9, r15
	call	error
.label_1064:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cfa0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
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
	jae	.label_1074
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_1093:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_1093
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	r13d, 4
	cmp	eax, 0x2d
	je	.label_1071
	mov	dword ptr [rsp + 4], 0
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rbp, rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	rcx, rbp
	mov	rbp, rax
	mov	r12, qword ptr [rcx]
	cmp	r12, rbx
	je	.label_1082
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_1083
	cmp	eax, 0x22
	jne	.label_1071
	mov	dword ptr [rsp + 4], 1
.label_1083:
	test	r14, r14
	jne	.label_1087
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_1071
.label_1082:
	test	r14, r14
	je	.label_1071
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_1071
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_1071
.label_1087:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_1076
	mov	r15, rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_1069
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1068
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_1068
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_1068
	movsx	eax, byte ptr [r12 + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_1072
	cmp	eax, 0x44
	je	.label_1072
	cmp	eax, 0x69
	jne	.label_1068
	movzx	eax, byte ptr [r12 + 2]
	cmp	eax, 0x42
	mov	ecx, 3
	je	.label_1078
	mov	ecx, 1
.label_1078:
	mov	esi, 0x400
	jmp	.label_1068
.label_1076:
	mov	rax, qword ptr [rsp + 8]
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_1086
.label_1072:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_1068:
	cmp	r13d, 0x59
	jg	.label_1085
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_1092
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1079]]
.label_3460:
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_1094
.label_1085:
	cmp	r13d, 0x73
	jg	.label_1070
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_1073
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1084]]
.label_3471:
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_1094:
	cmp	rax, 1
	sbb	rax, rax
	not	rax
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_1081
.label_1092:
	cmp	r13d, 0x54
	je	.label_1077
	cmp	r13d, 0x59
	jne	.label_1069
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_1089
.label_1070:
	cmp	r13d, 0x74
	je	.label_1077
	cmp	r13d, 0x77
	jne	.label_1069
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rdx, -1
	cmovns	rdx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_1081
.label_3462:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_1090
.label_3463:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	and	eax, 1
	jmp	.label_1080
.label_3464:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_1088
.label_1077:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, r9
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bl, bl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_1075
.label_1073:
	cmp	r13d, 0x5a
	jne	.label_1069
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, bl
.label_1089:
	movzx	eax, dl
	and	eax, 1
	jmp	.label_1080
.label_1069:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	mov	r13d, eax
	jmp	.label_1071
.label_3461:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	jmp	.label_1088
.label_3465:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
.label_1075:
	or	dl, r10b
.label_1090:
	or	dl, bl
.label_1088:
	and	dl, 1
	movzx	eax, dl
.label_1080:
	mov	rbp, rsi
.label_1081:
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	cmp	byte ptr [r12 + rcx], 0
	je	.label_1091
	or	eax, 2
.label_1091:
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 8]
.label_1086:
	mov	qword ptr [rax], rbp
.label_1071:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1074:
	mov	edi, OFFSET FLAT:.str_12
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d650

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1095
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1096
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1096
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1095:
	mov	ecx, 1
.label_1096:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d6a0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1097
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1098
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1097
.label_1098:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1097
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1099
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_1099:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1097:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d720

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1100
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1100
	test	byte ptr [rbx + 1], 1
	je	.label_1100
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_1100:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d760

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
	je	.label_1101
	test	rbx, rbx
	je	.label_1101
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_1101
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_1101
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_1102
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_1101
.label_1102:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	freopen
.label_1101:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d800

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
	jne	.label_1103
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1103
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1104
.label_1103:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1104:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1105
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1105:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d870

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
	mov	r13, rdx
	mov	r15d, esi
	mov	r12, rdi
	cmp	r15d, 0x1000
	jae	.label_1120
	mov	eax, r15d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_1120
	test	r15b, 0x12
	je	.label_1120
	mov	edi, 0x80
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1127
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x40], r13
	mov	eax, r15d
	and	eax, 0xfffffdfb
	or	eax, 4
	test	r15b, 2
	cmove	eax, r15d
	mov	dword ptr [rbx + 0x48], eax
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	mov	rdi, qword ptr [r12]
	mov	ebp, 1
	test	rdi, rdi
	je	.label_1133
	mov	r14, rbx
	lea	rbx, [r12 + 8]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1111:
	call	strlen
	cmp	rax, rbp
	cmova	rbp, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_1111
	inc	rbp
	mov	rbx, r14
.label_1133:
	cmp	rbp, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rbp
	add	rsi, 0x100
	mov	qword ptr [rbx + 0x30], rsi
	xor	edi, edi
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1130
	mov	r14d, r15d
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rsp + 0x18], rbx
	mov	r15, qword ptr [r12]
	mov	qword ptr [rsp + 0x30], r12
	xor	r12d, r12d
	test	r15, r15
	je	.label_1123
	mov	edi, 0x110
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1131
	mov	byte ptr [r12 + 0x108], 0
	mov	qword ptr [r12 + 0x60], 0
	mov	rax, qword ptr [rsp + 0x18]
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
.label_1123:
	mov	byte ptr [rsp + 0x17], 1
	test	r13, r13
	je	.label_1107
	mov	rax, qword ptr [rsp + 0x18]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0x17], al
.label_1107:
	xor	ebp, ebp
	test	r15, r15
	je	.label_1109
	mov	qword ptr [rsp + 8], r12
	mov	ebx, r14d
	and	ebx, 0x800
	mov	dword ptr [rsp + 4], ebx
	xor	ebp, ebp
	xor	r12d, r12d
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_1132:
	mov	qword ptr [rsp + 0x28], rbp
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	test	ebx, ebx
	jne	.label_1115
	cmp	rbp, 3
	jb	.label_1117
	cmp	rbp, 2
	jb	.label_1119
	movzx	eax, byte ptr [rbp + r15 - 1]
	cmp	eax, 0x2f
	jne	.label_1139
	mov	qword ptr [rsp + 0x20], r12
.label_1125:
	movzx	eax, byte ptr [r15 + rbp - 2]
	cmp	eax, 0x2f
	jne	.label_1122
	dec	rbp
	cmp	rbp, 1
	ja	.label_1125
	jmp	.label_1122
.label_1115:
	mov	qword ptr [rsp + 0x20], r12
	jmp	.label_1122
.label_1117:
	mov	qword ptr [rsp + 0x20], r12
	jmp	.label_1122
.label_1119:
	mov	qword ptr [rsp + 0x20], r12
	jmp	.label_1122
.label_1139:
	mov	qword ptr [rsp + 0x20], r12
.label_1122:
	mov	rbx, r13
	lea	rdi, [rbp + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1128
	mov	r13, r12
	add	r13, 0x108
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [r12 + rbp + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	qword ptr [r12 + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], 0
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x30], r13
	mov	r15, qword ptr [rsp + 0x28]
	test	r15, r15
	setne	al
	and	al, byte ptr [rsp + 0x17]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_1138
	mov	word ptr [r12 + 0x70], 0xb
	mov	qword ptr [r12 + 0xa8], 2
	jmp	.label_1116
	nop	dword ptr [rax + rax]
.label_1138:
	xor	edx, edx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
.label_1116:
	mov	r13, rbx
	test	r13, r13
	je	.label_1126
	mov	rbp, r12
	mov	qword ptr [r12 + 0x10], r15
	mov	r12, qword ptr [rsp + 0x20]
	jmp	.label_1121
.label_1126:
	mov	qword ptr [r12 + 0x10], 0
	test	r15, r15
	mov	rbp, r12
	je	.label_1121
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], r12
	mov	rbp, r15
.label_1121:
	inc	r14
	mov	rax, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp + 0x30], rax
	test	r15, r15
	mov	ebx, dword ptr [rsp + 4]
	jne	.label_1132
	test	r13, r13
	mov	rdi, qword ptr [rsp + 0x18]
	je	.label_1137
	cmp	r14, 2
	mov	r12, qword ptr [rsp + 8]
	jb	.label_1109
	mov	rsi, rbp
	mov	rdx, r14
	call	fts_sort
	mov	rbp, rax
	jmp	.label_1109
.label_1120:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
.label_1127:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1130:
	mov	rdi, qword ptr [rbx + 0x20]
	jmp	.label_1110
.label_1128:
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r12, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_1106
.label_1131:
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_1112
.label_1137:
	mov	r12, qword ptr [rsp + 8]
.label_1109:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	je	.label_1134
	mov	byte ptr [rax + 0x108], 0
	mov	qword ptr [rax + 0x60], 0
	mov	rbx, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + 0x50], rbx
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rax + 0x38], rcx
	mov	dword ptr [rax + 0x40], 0
	mov	qword ptr [rax + 0x18], 0
	mov	word ptr [rax + 0x72], 0
	mov	word ptr [rax + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x20], xmm0
	mov	qword ptr [rbx], rax
	mov	qword ptr [rax + 0x10], rbp
	mov	word ptr [rax + 0x70], 9
	mov	qword ptr [rax + 0x58], 1
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_1118
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_1136
	jmp	.label_1106
.label_1134:
	mov	rbx, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx], 0
	jmp	.label_1106
.label_1118:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_1106
	mov	rdi, rax
	call	cycle_check_init
.label_1136:
	mov	eax, dword ptr [rbx + 0x48]
	test	ax, 0x204
	jne	.label_1129
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_1108
	mov	edi, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_1113
.label_1106:
	mov	r14, rbx
	test	rbp, rbp
	je	.label_1114
	nop	
.label_1124:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	je	.label_1135
	call	closedir
.label_1135:
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_1124
.label_1114:
	mov	rdi, r12
	call	free
	mov	rbx, r14
	mov	rbp, qword ptr [rbx + 0x20]
.label_1112:
	mov	rdi, rbp
.label_1110:
	call	free
	mov	rdi, rbx
	call	free
	xor	eax, eax
	jmp	.label_1127
.label_1108:
	mov	edi, dword ptr [rbx + 0x2c]
	mov	esi, OFFSET FLAT:.str_3
	xor	eax, eax
	call	openat_safer
.label_1113:
	mov	dword ptr [rbx + 0x28], eax
	test	eax, eax
	jns	.label_1129
	or	byte ptr [rbx + 0x48], 4
.label_1129:
	mov	rdi, rbx
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, rbx
	jmp	.label_1127
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ddd0

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	eax, dword ptr [r15 + 0x48]
	cmp	qword ptr [r14 + 0x58], 0
	jne	.label_1143
	test	al, 1
	je	.label_1143
	mov	dl, 1
.label_1143:
	lea	rbx, [r14 + 0x78]
	test	dl, dl
	jne	.label_1148
	and	eax, 2
	jne	.label_1148
	mov	esi, dword ptr [r15 + 0x2c]
	mov	rdx, qword ptr [r14 + 0x30]
	mov	edi, 1
	mov	r8d, 0x100
	mov	rcx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_1144
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_1146
.label_1148:
	mov	rsi, qword ptr [r14 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	je	.label_1144
	call	__errno_location
	mov	r15, rax
	mov	eax, dword ptr [r15]
	cmp	eax, 2
	jne	.label_1146
	mov	rsi, qword ptr [r14 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	je	.label_1145
	mov	eax, dword ptr [r15]
.label_1146:
	mov	dword ptr [r14 + 0x40], eax
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
.label_1142:
	movzx	eax, ax
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1144:
	mov	ecx, 0xf000
	and	ecx, dword ptr [r14 + 0x90]
	mov	ax, 0xc
	cmp	ecx, 0xa000
	je	.label_1142
	cmp	ecx, 0x8000
	je	.label_1149
	cmp	ecx, 0x4000
	jne	.label_1141
	mov	rax, qword ptr [r14 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_1147
	cmp	qword ptr [r14 + 0x58], 0
	jle	.label_1147
	mov	ecx, dword ptr [r15 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_1147:
	mov	qword ptr [r14 + 0x68], rcx
	mov	ecx, dword ptr [r14 + 0x108]
	mov	ax, 1
	movzx	edx, cl
	cmp	edx, 0x2e
	jne	.label_1142
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_1140
	movzx	edx, dl
	cmp	edx, 0x2e
	jne	.label_1142
	test	ecx, 0xff0000
	jne	.label_1142
.label_1140:
	mov	ax, 1
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_1142
	mov	ax, 5
	jmp	.label_1142
.label_1149:
	mov	ax, 8
	jmp	.label_1142
.label_1141:
	mov	ax, 3
	jmp	.label_1142
.label_1145:
	mov	dword ptr [r15], 0
	mov	ax, 0xd
	jmp	.label_1142
	nop	
	.section	.text
	.align	32
	#Procedure 0x40df70

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
	jae	.label_1157
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_1153
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	call	realloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_1153
	mov	qword ptr [r13], rdi
	jmp	.label_1152
.label_1157:
	mov	rdi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	mov	r13, r12
.label_1152:
	test	rbx, rbx
	je	.label_1160
	nop	dword ptr [rax]
.label_1156:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_1156
	mov	rdi, qword ptr [r13]
.label_1160:
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r15
	call	qsort
	mov	r9, qword ptr [r13]
	mov	rbx, qword ptr [r9]
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_1150
	mov	rcx, qword ptr [r9 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, r14
	add	rcx, -2
	je	.label_1155
	lea	rdx, [r9 + 8]
	lea	edi, [r14 + 2]
	lea	r8, [r14 - 3]
	test	dil, 3
	je	.label_1158
	lea	edi, [r14 + 2]
	and	edi, 3
	neg	rdi
	nop	dword ptr [rax]
.label_1154:
	mov	rsi, qword ptr [rdx]
	mov	rax, qword ptr [rdx + 8]
	lea	rdx, [rdx + 8]
	mov	qword ptr [rsi + 0x10], rax
	dec	rcx
	inc	rdi
	jne	.label_1154
.label_1158:
	cmp	r8, 3
	jb	.label_1155
	nop	dword ptr [rax]
.label_1151:
	mov	rax, qword ptr [rdx]
	mov	rsi, qword ptr [rdx + 8]
	mov	qword ptr [rax + 0x10], rsi
	mov	rax, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rdx + 0x10]
	mov	qword ptr [rax + 0x10], rsi
	mov	rax, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x10], rsi
	mov	rax, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rdx + 0x20]
	lea	rdx, [rdx + 0x20]
	mov	qword ptr [rax + 0x10], rsi
	add	rcx, -4
	jne	.label_1151
.label_1155:
	mov	rcx, qword ptr [r9 + r14*8 - 8]
.label_1150:
	mov	qword ptr [rcx + 0x10], 0
	jmp	.label_1159
.label_1153:
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
.label_1159:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e0f0

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_1178
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_1175
	nop	word ptr cs:[rax + rax]
.label_1172:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_1164
	mov	rbx, qword ptr [rdi + 8]
.label_1164:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_1172
	jmp	.label_1167
.label_1175:
	mov	rbx, rdi
.label_1167:
	mov	rdi, rbx
	call	free
.label_1178:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_1170
	nop	word ptr cs:[rax + rax]
.label_1176:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1173
	call	closedir
.label_1173:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_1176
.label_1170:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_1162
	xor	ebp, ebp
	test	al, 4
	jne	.label_1169
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_1166
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_1166:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebp, ebp
	je	.label_1168
	jmp	.label_1169
.label_1162:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebp, ebp
	test	edi, edi
	js	.label_1169
	call	close
.label_1168:
	test	eax, eax
	je	.label_1169
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_1169:
	lea	rbx, [r14 + 0x60]
	jmp	.label_1174
	nop	dword ptr [rax + rax]
.label_1179:
	mov	edi, eax
	call	close
.label_1174:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_1177
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_1179
	jmp	.label_1174
.label_1177:
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_1161
	call	hash_free
.label_1161:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_1163
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_1165
	call	hash_free
	jmp	.label_1165
.label_1163:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_1165:
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebp, ebp
	je	.label_1171
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_1171:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e260

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	xor	r15d, r15d
	test	r12, r12
	je	.label_1191
	mov	eax, dword ptr [r14 + 0x48]
	xor	r15d, r15d
	test	ah, 0x20
	jne	.label_1191
	movzx	ecx, word ptr [r12 + 0x74]
	mov	word ptr [r12 + 0x74], 3
	cmp	ecx, 1
	je	.label_1220
	movzx	edx, cx
	cmp	edx, 2
	jne	.label_1224
	mov	ecx, dword ptr [r12 + 0x70]
	mov	esi, ecx
	and	esi, 0xfffe
	cmp	esi, 0xc
	jne	.label_1226
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_1229
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_1232
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_1234
	mov	edi, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_1183
.label_1220:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	r15, r12
	jmp	.label_1191
.label_1224:
	lea	r13, [r12 + 0x70]
	mov	ecx, dword ptr [r12 + 0x70]
	jmp	.label_1195
.label_1226:
	lea	r13, [r12 + 0x70]
.label_1195:
	movzx	esi, cx
	cmp	esi, 1
	jne	.label_1200
	cmp	edx, 4
	je	.label_1201
	test	al, 0x40
	je	.label_1235
	mov	rdx, qword ptr [r12 + 0x78]
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_1201
.label_1235:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_1208
	test	ah, 0x10
	jne	.label_1212
	mov	rcx, qword ptr [r12 + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, r12
	call	fts_safe_changedir
	test	eax, eax
	je	.label_1209
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	or	byte ptr [r12 + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_1223
	nop	word ptr cs:[rax + rax]
.label_1200:
	mov	r15, qword ptr [r12 + 0x10]
	test	r15, r15
	je	.label_1216
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1230
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	r12, r15
	je	.label_1200
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_1214
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_1190
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_1190
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_1184
	mov	edi, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_1231
.label_1207:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_1223:
	test	rax, rax
	jne	.label_1207
	jmp	.label_1209
.label_1201:
	test	ecx, 0x20000
	je	.label_1211
	mov	edi, dword ptr [r12 + 0x44]
	call	close
.label_1211:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_1215
	nop	dword ptr [rax]
.label_1186:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1221
	call	closedir
.label_1221:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_1186
	mov	qword ptr [r14 + 8], 0
.label_1215:
	mov	word ptr [r12 + 0x70], 6
.label_1199:
	mov	rdi, r14
	mov	rsi, r12
	call	leave_dir
	mov	r15, r12
	jmp	.label_1191
.label_1216:
	mov	r15, qword ptr [r12 + 8]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_1237
	mov	qword ptr [r14], r15
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_1180
	mov	rdi, r12
	call	free
	jmp	.label_1214
.label_1229:
	mov	r15, r12
	jmp	.label_1188
.label_1230:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_1194
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	r15d, r15d
	jmp	.label_1191
.label_1232:
	mov	r15, r12
	jmp	.label_1188
.label_1194:
	test	ax, 0x102
	je	.label_1202
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_1193
	call	hash_free
	jmp	.label_1193
.label_1212:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr cs:[rax + rax]
.label_1222:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1197
	call	closedir
.label_1197:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_1222
	mov	qword ptr [r14 + 8], 0
.label_1208:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_1228
.label_1209:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_1214
.label_1228:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_1191
	cmp	dword ptr [r12 + 0x40], 0
	je	.label_1199
	movzx	eax, word ptr [r13]
	cmp	eax, 4
	je	.label_1199
	mov	word ptr [r13], 7
	jmp	.label_1199
.label_1234:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:.str_3
	xor	eax, eax
	call	openat_safer
.label_1183:
	mov	dword ptr [r12 + 0x44], eax
	test	eax, eax
	js	.label_1185
	or	byte ptr [r12 + 0x72], 2
	mov	r15, r12
	jmp	.label_1188
.label_1180:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_1191
	mov	r15, qword ptr [r12 + 8]
.label_1237:
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_1203
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_1205
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1206
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_1213
	test	al, 1
	jne	.label_1217
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_7
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_1225
.label_1203:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_1191
.label_1185:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	mov	word ptr [r12 + 0x70], 7
	mov	r15, r12
	jmp	.label_1188
.label_1202:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_1193:
	mov	rdx, qword ptr [r15 + 0x60]
	mov	qword ptr [r15 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r12, [r15 + 0x108]
	inc	rdx
	mov	rsi, r12
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r12
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1189
	cmp	rbx, r12
	jne	.label_1192
	cmp	byte ptr [r15 + 0x109], 0
	je	.label_1189
.label_1192:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r12
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r15 + 0x60], r13
.label_1189:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	mov	qword ptr [r15 + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_1187
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_1188
.label_1187:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	je	.label_1188
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_1188
.label_1206:
	mov	rdi, r14
	call	restore_initial_cwd
.label_1225:
	test	eax, eax
	je	.label_1217
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_1217
.label_1213:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rbx, [r15 + 0x44]
	test	al, 4
	jne	.label_1181
	test	ah, 2
	mov	ebp, dword ptr [r15 + 0x44]
	jne	.label_1233
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_1181
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_1181
.label_1184:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:.str_3
	xor	eax, eax
	call	openat_safer
.label_1231:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_1196
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_1190
.label_1196:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_1190:
	mov	word ptr [r15 + 0x74], 3
.label_1214:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	movzx	edx, byte ptr [rdx + rcx - 1]
	cmp	edx, 0x2f
	jne	.label_1204
	dec	rcx
.label_1204:
	lea	rdi, [rax + rcx + 1]
	mov	byte ptr [rax + rcx], 0x2f
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	inc	rdx
	call	memmove
.label_1188:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_1218
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_1182
	cmp	rax, 2
	jne	.label_1205
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_1227
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_1227
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	je	.label_1182
	cmp	rax, 0x58465342
	je	.label_1182
.label_1227:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_1218
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1182
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_1182
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_1182:
	movzx	eax, word ptr [r15 + 0x70]
.label_1218:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_1191
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_1198
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_1198:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_1191
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_1191
.label_1233:
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, ebp
	jne	.label_1210
	cmp	esi, -0x64
	jne	.label_1205
.label_1210:
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_1236
	mov	edi, eax
	call	close
.label_1236:
	mov	dword ptr [r14 + 0x2c], ebp
.label_1181:
	mov	edi, dword ptr [rbx]
	call	close
.label_1217:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_1219
	mov	eax, dword ptr [r15 + 0x40]
	cmp	eax, 0
	setne	cl
	movzx	ecx, cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_1219
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_1219:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_1191:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1205:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e9f0

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_1239
	movups	xmm0, xmmword ptr [rsi + 0x78]
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_1240
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_1239:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1238
	cmp	qword ptr [rax + 0x58], 0
	js	.label_1238
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_1240
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_1238
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_1238
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_1238:
	add	rsp, 0x18
	ret	
.label_1240:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ea80

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
	mov	r15, rdi
	test	rbx, rbx
	je	.label_1241
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_1249
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_1249
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_1249:
	test	eax, eax
	sete	r14b
	jmp	.label_1251
.label_1241:
	xor	r14d, r14d
.label_1251:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	jne	.label_1256
	test	r13d, r13d
	jns	.label_1257
	mov	cl, r14b
	xor	cl, 1
	jne	.label_1258
	mov	qword ptr [rsp], rsi
	and	eax, 0x200
	je	.label_1244
	lea	rbp, [r15 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_1244
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
	jmp	.label_1244
.label_1256:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_1242
	and	eax, 0x200
	je	.label_1242
	mov	edi, r13d
	call	close
	jmp	.label_1242
.label_1257:
	mov	qword ptr [rsp], rsi
	jmp	.label_1244
.label_1258:
	mov	qword ptr [rsp], rsi
.label_1244:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_1252
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_1255
	xor	eax, eax
	mov	rdi, rbx
	mov	esi, edx
	call	open_safer
	jmp	.label_1260
.label_1255:
	mov	edi, dword ptr [r15 + 0x2c]
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
.label_1260:
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_1242
.label_1252:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	jne	.label_1247
	test	rbx, rbx
	je	.label_1248
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x2e
	jne	.label_1248
	movzx	ecx, byte ptr [rbx + 1]
	cmp	ecx, 0x2e
	jne	.label_1248
	cmp	byte ptr [rbx + 2], 0
	jne	.label_1248
.label_1247:
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, r12d
	call	__fxstat
	test	eax, eax
	jne	.label_1253
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_1254
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_1254
	mov	eax, dword ptr [r15 + 0x48]
.label_1248:
	test	ah, 2
	jne	.label_1259
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_1261
.label_1259:
	mov	esi, dword ptr [r15 + 0x2c]
	cmp	esi, r12d
	jne	.label_1262
	cmp	esi, -0x64
	jne	.label_1243
.label_1262:
	test	r14b, r14b
	je	.label_1245
	test	al, 4
	jne	.label_1246
	test	esi, esi
	js	.label_1246
	mov	edi, esi
	jmp	.label_1250
.label_1254:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_1253:
	mov	ebp, 0xffffffff
.label_1261:
	test	r13d, r13d
	jns	.label_1242
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_1242
.label_1245:
	lea	rdi, [r15 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_1246
	mov	edi, eax
.label_1250:
	call	close
.label_1246:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_1242:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1243:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ec80

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r15d, esi
	mov	r13, rdi
	mov	qword ptr [rsp + 0x78], r13
	mov	r12, qword ptr [r13]
	mov	qword ptr [rsp + 0x60], r12
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	je	.label_1284
	mov	qword ptr [rsp + 0x48], rdi
	call	dirfd
	mov	dword ptr [rsp + 0xa4], eax
	test	eax, eax
	js	.label_1295
	mov	qword ptr [rsp + 0x40], -1
	cmp	qword ptr [r13 + 0x40], 0
	jne	.label_1299
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x40], rax
.label_1299:
	lea	rax, [r13 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	lea	rax, [r13 + 0x48]
	mov	qword ptr [rsp + 0x90], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
	jmp	.label_1326
.label_1284:
	mov	qword ptr [rsp + 0x48], rdi
	mov	eax, dword ptr [r13 + 0x48]
	mov	ecx, eax
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	cmp	ecx, 0x200
	jne	.label_1309
	mov	edi, dword ptr [r13 + 0x2c]
.label_1309:
	mov	rsi, qword ptr [r12 + 0x30]
	xor	edx, edx
	test	al, 0x10
	je	.label_1313
	test	al, 1
	je	.label_1316
	cmp	qword ptr [r12 + 0x58], 0
	je	.label_1313
.label_1316:
	mov	edx, 0x20000
.label_1313:
	lea	rcx, [rsp + 0xa4]
	call	opendirat
	mov	qword ptr [r12 + 0x18], rax
	test	rax, rax
	je	.label_1323
	lea	rcx, [r13 + 0x48]
	movzx	eax, word ptr [r12 + 0x70]
	cmp	eax, 0xb
	jne	.label_1325
	mov	qword ptr [rsp + 0x90], rcx
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_1331
.label_1295:
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
.label_1323:
	xor	ebx, ebx
	cmp	r15d, 3
	jne	.label_1273
	mov	word ptr [r12 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	xor	ebx, ebx
	jmp	.label_1273
.label_1325:
	test	byte ptr [rcx + 1], 1
	mov	qword ptr [rsp + 0x90], rcx
	je	.label_1331
	mov	rdi, r13
	mov	rsi, r12
	call	leave_dir
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, r12
	call	fts_stat
	mov	rdi, r13
	mov	rsi, r12
	call	enter_dir
	test	al, al
	je	.label_1341
.label_1331:
	mov	qword ptr [rsp + 0x40], -1
	cmp	qword ptr [r13 + 0x40], 0
	jne	.label_1342
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x40], rax
.label_1342:
	lea	rax, [r13 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	cmp	r15d, 2
	je	.label_1267
	mov	rax, qword ptr [rsp + 0x90]
	mov	eax, dword ptr [rax]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_1269
	cmp	qword ptr [r12 + 0x88], 2
	jne	.label_1269
	mov	esi, dword ptr [rsp + 0xa4]
	mov	rdi, r12
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_1275
	cmp	rax, 0x9fa0
	je	.label_1269
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_1269
	cmp	rax, 0x5346414f
	je	.label_1269
	jmp	.label_1267
.label_1341:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	ebx, ebx
	jmp	.label_1273
.label_1275:
	test	rax, rax
	je	.label_1269
	cmp	rax, 0x6969
	jne	.label_1267
.label_1269:
	cmp	r15d, 3
	sete	bl
	mov	r14b, 1
	jmp	.label_1287
.label_1267:
	cmp	r15d, 3
	sete	bl
	mov	r14d, 0
	jne	.label_1289
.label_1287:
	mov	dword ptr [rsp + 0x24], r15d
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax + 1], 2
	mov	ebp, dword ptr [rsp + 0xa4]
	je	.label_1292
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebp
	call	rpl_fcntl
	mov	ebp, eax
	mov	dword ptr [rsp + 0xa4], ebp
.label_1292:
	test	ebp, ebp
	js	.label_1303
	xor	ecx, ecx
	mov	rdi, r13
	mov	rsi, r12
	mov	edx, ebp
	call	fts_safe_changedir
	test	eax, eax
	je	.label_1334
.label_1303:
	and	bl, r14b
	movzx	eax, bl
	cmp	eax, 1
	jne	.label_1307
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
.label_1307:
	or	byte ptr [r12 + 0x72], 1
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	mov	rax, qword ptr [rsp + 0x90]
	mov	eax, dword ptr [rax]
	test	ah, 2
	je	.label_1312
	mov	edi, dword ptr [rsp + 0xa4]
	test	edi, edi
	js	.label_1312
	call	close
.label_1312:
	mov	qword ptr [r12 + 0x18], 0
	mov	dword ptr [rsp + 0x1c], 0
	jmp	.label_1321
.label_1289:
	mov	dword ptr [rsp + 0x1c], 0
	jmp	.label_1326
.label_1334:
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
.label_1321:
	mov	r15d, dword ptr [rsp + 0x24]
.label_1326:
	mov	rax, qword ptr [r12 + 0x38]
	mov	rdx, qword ptr [r12 + 0x48]
	movzx	eax, byte ptr [rax + rdx - 1]
	cmp	eax, 0x2f
	jne	.label_1328
	dec	rdx
.label_1328:
	mov	dword ptr [rsp + 0x24], r15d
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax], 4
	je	.label_1332
	mov	rax, qword ptr [r13 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x68], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_1332:
	lea	rax, [rdx + 1]
	mov	qword ptr [rsp + 0x80], rax
	mov	rcx, qword ptr [r13 + 0x30]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x70], rcx
	mov	rax, qword ptr [r12 + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x28], rax
	add	rdx, 0x102
	mov	qword ptr [rsp + 0x10], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	mov	dword ptr [rsp + 0x20], 0
	xor	eax, eax
	xor	ebp, ebp
	xor	r15d, r15d
.label_1319:
	mov	rbx, qword ptr [r12 + 0x18]
	test	rbx, rbx
	je	.label_1279
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x88], rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x98], rax
	mov	rbp, qword ptr [rsp + 0x90]
	nop	dword ptr [rax]
.label_1285:
	mov	rax, qword ptr [rsp + 0x98]
	mov	dword ptr [rax], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_1274
	mov	r13, r14
	add	r13, 0x13
	test	byte ptr [rbp], 0x20
	jne	.label_1277
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x2e
	jne	.label_1277
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	eax, 0x2e
	je	.label_1338
	test	al, al
	je	.label_1281
	jmp	.label_1277
	nop	dword ptr [rax]
.label_1338:
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_1277
.label_1281:
	mov	rbx, qword ptr [r12 + 0x18]
	test	rbx, rbx
	jne	.label_1285
	jmp	.label_1288
	nop	word ptr cs:[rax + rax]
.label_1277:
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1296
	mov	rdi, r12
	add	rdi, 0x108
	mov	qword ptr [rsp + 0x38], rdi
	mov	rsi, r13
	mov	rdx, rbx
	call	memcpy
	mov	byte ptr [r12 + rbx + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbx
	mov	rbp, qword ptr [rsp + 0x78]
	mov	qword ptr [r12 + 0x50], rbp
	mov	r13, qword ptr [rbp + 0x20]
	mov	qword ptr [r12 + 0x38], r13
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	rax, qword ptr [rsp + 0x70]
	cmp	rbx, rax
	jae	.label_1304
	mov	rdx, qword ptr [rsp + 0x80]
	jmp	.label_1317
	nop	word ptr cs:[rax + rax]
.label_1304:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rax + rbx]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_1324
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	test	rax, rax
	je	.label_1329
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	je	.label_1330
	mov	rdx, qword ptr [rsp + 0x80]
	add	rax, rdx
	mov	rcx, qword ptr [rsp + 0x90]
	test	byte ptr [rcx], 4
	mov	rcx, qword ptr [rsp + 0x68]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x68], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1294
.label_1330:
	mov	rdx, qword ptr [rsp + 0x80]
.label_1294:
	mov	rax, qword ptr [rbp + 0x30]
	sub	rax, rdx
.label_1317:
	add	rbx, rdx
	jb	.label_1336
	mov	qword ptr [rsp + 0x70], rax
	mov	qword ptr [rsp + 0x80], rdx
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [r12 + 0x58], rax
	mov	r13, rbp
	mov	rax, qword ptr [r13]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbx
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 0x80], rax
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax], 4
	jne	.label_1337
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_1264
	nop	word ptr cs:[rax + rax]
.label_1337:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x38]
	call	memmove
.label_1264:
	mov	rax, qword ptr [rsp + 0x90]
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rax], 0
	je	.label_1263
	mov	eax, edx
	and	eax, 0x400
	jne	.label_1263
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	rbp, qword ptr [rsp + 0x88]
	jmp	.label_1280
	nop	dword ptr [rax]
.label_1263:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	mov	edx, 0
	jne	.label_1290
	cmp	ecx, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
.label_1290:
	mov	word ptr [r12 + 0x70], 0xb
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	rbp, qword ptr [rsp + 0x88]
	ja	.label_1283
	mov	eax,  dword ptr [dword ptr [+ (rcx * 4) + label_1322]]
.label_1283:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	qword ptr [r12 + 0xa8], rax
.label_1280:
	mov	qword ptr [r12 + 0x10], 0
	test	r15, r15
	mov	rax, r12
	je	.label_1302
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, r15
.label_1302:
	mov	r15, rax
	cmp	rbp, 0x2710
	jne	.label_1270
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rax], 0
	jne	.label_1270
	mov	esi, dword ptr [rsp + 0xa4]
	mov	rdi, qword ptr [rsp + 0x60]
	call	filesystem_type
	mov	dword ptr [rsp + 0x20], 0
	cmp	rax, 0x6969
	je	.label_1270
	cmp	rax, 0x1021994
	je	.label_1270
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_1270
	mov	al, 1
	mov	dword ptr [rsp + 0x20], eax
	nop	dword ptr [rax]
.label_1270:
	inc	rbp
	cmp	qword ptr [rsp + 0x40], rbp
	mov	rax, r12
	mov	r12, qword ptr [rsp + 0x60]
	ja	.label_1319
	jmp	.label_1279
.label_1274:
	mov	rax, qword ptr [rsp + 0x98]
	mov	eax, dword ptr [rax]
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x88]
	je	.label_1327
	mov	dword ptr [r12 + 0x40], eax
	mov	rax, qword ptr [rsp + 0x48]
	or	rax, rbp
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r12 + 0x70], cx
.label_1327:
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	mov	r13, qword ptr [rsp + 0x78]
	je	.label_1279
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	jmp	.label_1279
.label_1288:
	mov	r13, qword ptr [rsp + 0x78]
	mov	rbp, qword ptr [rsp + 0x88]
.label_1279:
	mov	rax, qword ptr [rsp + 0x30]
	test	al, 1
	je	.label_1266
	mov	rcx, qword ptr [r13 + 8]
	mov	rax, qword ptr [r13 + 0x20]
	jmp	.label_1310
.label_1340:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_1310:
	test	rcx, rcx
	je	.label_1339
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_1340
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_1340
.label_1339:
	cmp	qword ptr [r15 + 0x58], 0
	js	.label_1266
	mov	rcx, r15
	nop	word ptr cs:[rax + rax]
.label_1276:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_1297
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
.label_1297:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_1272
	mov	rdx, qword ptr [rcx + 8]
.label_1272:
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	jns	.label_1276
.label_1266:
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax], 4
	je	.label_1278
	mov	rax, qword ptr [rsp + 0x68]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rsp + 0x80]
	cmp	rdx, qword ptr [r13 + 0x30]
	cmove	rcx, rax
	test	rbp, rbp
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_1278:
	cmp	qword ptr [rsp + 0x48], 0
	jne	.label_1286
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	je	.label_1286
	cmp	dword ptr [rsp + 0x24], 1
	je	.label_1291
	test	rbp, rbp
	jne	.label_1286
.label_1291:
	cmp	qword ptr [r12 + 0x58], 0
	je	.label_1293
	mov	rsi, qword ptr [r12 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_7
	mov	rdi, r13
	call	fts_safe_changedir
	jmp	.label_1300
.label_1293:
	mov	rdi, r13
	call	restore_initial_cwd
.label_1300:
	test	eax, eax
	je	.label_1286
	mov	word ptr [r12 + 0x70], 7
	mov	rax, qword ptr [rsp + 0x90]
	or	byte ptr [rax + 1], 0x20
	xor	ebx, ebx
	test	r15, r15
	je	.label_1273
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1311:
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_1308
	call	closedir
.label_1308:
	mov	rdi, r15
	call	free
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_1311
	jmp	.label_1273
.label_1286:
	test	rbp, rbp
	je	.label_1314
	mov	eax, dword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_1315
	cmp	rbp, 2
	jb	.label_1318
	mov	rax, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_1320
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, rbp
	call	fts_sort
	mov	rbx, rax
	jmp	.label_1273
.label_1314:
	cmp	dword ptr [rsp + 0x24], 3
	jne	.label_1305
	movzx	eax, word ptr [r12 + 0x70]
	cmp	eax, 4
	je	.label_1305
	movzx	eax, ax
	cmp	eax, 7
	je	.label_1305
	mov	word ptr [r12 + 0x70], 6
.label_1305:
	xor	ebx, ebx
	test	r15, r15
	je	.label_1273
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1335:
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_1333
	call	closedir
.label_1333:
	mov	rdi, r15
	call	free
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_1335
	jmp	.label_1273
.label_1315:
	mov	rdx, rbp
	mov	r14, qword ptr [rsp + 0x58]
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:fts_compare_ino
	mov	rdi, r13
	mov	rsi, r15
	call	fts_sort
	mov	rbx, rax
	mov	qword ptr [r14], 0
	jmp	.label_1273
.label_1318:
	mov	rbx, r15
	jmp	.label_1273
.label_1320:
	mov	rbx, r15
	jmp	.label_1273
.label_1336:
	mov	rdi, r12
	call	free
	test	r15, r15
	je	.label_1265
	nop	dword ptr [rax]
.label_1271:
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_1268
	call	closedir
.label_1268:
	mov	rdi, r15
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_1271
.label_1265:
	mov	rbx, qword ptr [rsp + 0x60]
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	mov	rax, qword ptr [rsp + 0x90]
	or	byte ptr [rax + 1], 0x20
	mov	rax, qword ptr [rsp + 0x98]
	mov	dword ptr [rax], 0x24
	xor	ebx, ebx
	jmp	.label_1273
.label_1324:
	mov	rdi, r13
	call	free
	mov	qword ptr [rbp + 0x20], 0
	mov	rax, qword ptr [rsp + 0x98]
	mov	dword ptr [rax], 0x24
	jmp	.label_1282
.label_1329:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	qword ptr [rbp + 0x20], 0
.label_1282:
	mov	qword ptr [rsp + 8], r12
	mov	rbp, qword ptr [rsp + 0x90]
.label_1296:
	mov	rax, qword ptr [rsp + 0x98]
	mov	r14d, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 8]
	call	free
	test	r15, r15
	mov	r12, qword ptr [rsp + 0x60]
	je	.label_1298
	nop	dword ptr [rax]
.label_1306:
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_1301
	call	closedir
.label_1301:
	mov	rdi, r15
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_1306
.label_1298:
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x70], 7
	or	byte ptr [rbp + 1], 0x20
	mov	rax, qword ptr [rsp + 0x98]
	mov	dword ptr [rax], r14d
	xor	ebx, ebx
.label_1273:
	mov	rax, rbx
	add	rsp, 0xa8
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
	#Procedure 0x40f740

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_1343
	test	ah, 2
	jne	.label_1346
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_1344
.label_1343:
	xor	eax, eax
	jmp	.label_1344
.label_1346:
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_1348
	mov	edi, eax
	call	close
.label_1348:
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	xor	eax, eax
.label_1344:
	movzx	ebp, al
	add	rbx, 0x60
	jmp	.label_1347
	nop	
.label_1345:
	mov	edi, eax
	call	close
.label_1347:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_1349
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_1345
	jmp	.label_1347
.label_1349:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f7c0

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
	je	.label_1350
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1351
	movups	xmm0, xmmword ptr [r14 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_1353
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_1354
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_1352
.label_1350:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_1353
	mov	qword ptr [r14], r14
.label_1352:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_1353
.label_1351:
	xor	ebp, ebp
	jmp	.label_1353
.label_1354:
	xor	ebp, ebp
.label_1353:
	mov	al, bpl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f860

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_1355
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_1355:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f890
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
	jne	.label_1368
	mov	r15, qword ptr [r13]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_1364
	movzx	ecx, word ptr [r15 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_1362
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_1364
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_1364
.label_1368:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_1364
.label_1362:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	je	.label_1357
	nop	dword ptr [rax]
.label_1372:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1366
	call	closedir
.label_1366:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_1372
.label_1357:
	mov	ebx, 1
	cmp	r12d, 0x1000
	jne	.label_1369
	or	byte ptr [r13 + 0x49], 0x10
	mov	ebx, 2
.label_1369:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_1361
	mov	rax, qword ptr [r15 + 0x30]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	je	.label_1361
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	jne	.label_1361
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_1367
	mov	edi, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_1359
.label_1361:
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
.label_1364:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1367:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	esi, OFFSET FLAT:.str_3
	xor	eax, eax
	call	openat_safer
.label_1359:
	mov	r15d, eax
	test	r15d, r15d
	js	.label_1370
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r13 + 0x49], 2
	jne	.label_1360
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_1365
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_1364
.label_1370:
	mov	qword ptr [r13 + 8], 0
	xor	eax, eax
	jmp	.label_1364
.label_1360:
	mov	esi, dword ptr [r13 + 0x2c]
	cmp	esi, r15d
	jne	.label_1371
	cmp	esi, -0x64
	jne	.label_1358
.label_1371:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_1363
	mov	edi, eax
	call	close
.label_1363:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_1356
.label_1365:
	mov	edi, r15d
	call	close
.label_1356:
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_1364
.label_1358:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fa40

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
	#Procedure 0x40fa50

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_1373
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_1373:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fa70

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	r15d, esi
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x50]
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 2
	je	.label_1377
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_1378
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
	je	.label_1379
.label_1378:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_1375
	mov	rax, qword ptr [rax + 8]
	jmp	.label_1377
.label_1375:
	mov	r12b, 1
	mov	r14, rbp
.label_1379:
	xor	eax, eax
	test	r15d, r15d
	js	.label_1377
	lea	rsi, [rsp + 0x10]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1377
	test	r12b, r12b
	je	.label_1376
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1376
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_1374
	cmp	rax, rbp
	je	.label_1376
	call	abort
.label_1374:
	mov	rdi, rbp
	call	free
.label_1376:
	mov	rax, qword ptr [rsp + 0x10]
.label_1377:
	add	rsp, 0x88
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
	#Procedure 0x40fb80

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
	#Procedure 0x40fb90

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
	#Procedure 0x40fba0

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
	#Procedure 0x40fbd0

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
	je	.label_1380
	cmp	r15, -2
	jb	.label_1380
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_1380
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_1380:
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
	#Procedure 0x40fc30

	.globl read_file_system_list
	.type read_file_system_list, @function
read_file_system_list:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	edi, OFFSET FLAT:.str_14
	mov	esi, OFFSET FLAT:.str.1_0
	call	fopen
	mov	r15, rax
	mov	qword ptr [rsp + 0x20], r15
	test	r15, r15
	je	.label_1392
	mov	qword ptr [rsp + 0x68], 0
	mov	qword ptr [rsp + 0x60], 0
	lea	rdi, [rsp + 0x68]
	lea	rsi, [rsp + 0x60]
	mov	edx, 0xa
	mov	rcx, r15
	call	__getdelim
	cmp	rax, -1
	je	.label_1396
	lea	rax, [rsp + 0x70]
	mov	qword ptr [rsp + 0x28], rax
	lea	rbx, [rsp + 0x37]
	lea	r14, [rsp + 0x50]
	lea	r12, [rsp + 0x54]
	lea	r13, [rsp + 0x5c]
	nop	
.label_1382:
	mov	rdi, qword ptr [rsp + 0x68]
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp], r12
	mov	esi, OFFSET FLAT:.str.2_8
	xor	eax, eax
	mov	rdx, r13
	lea	rcx, [rsp + 0x58]
	lea	r8, [rsp + 0x3c]
	lea	r9, [rsp + 0x38]
	call	sscanf
	or	eax, 4
	cmp	eax, 7
	jne	.label_1381
	movsxd	rdi, dword ptr [rsp + 0x50]
	add	rdi, qword ptr [rsp + 0x68]
	mov	esi, OFFSET FLAT:.str.3_6
	call	strstr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1381
	mov	qword ptr [rsp], rbx
	mov	esi, OFFSET FLAT:.str.4_4
	xor	eax, eax
	mov	rdi, rbp
	lea	rdx, [rsp + 0x4c]
	lea	rcx, [rsp + 0x48]
	lea	r8, [rsp + 0x44]
	lea	r9, [rsp + 0x40]
	call	sscanf
	or	eax, 4
	cmp	eax, 5
	jne	.label_1381
	movsxd	rax, dword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rsp + 0x48]
	mov	byte ptr [rbp + rax], 0
	movsxd	rax, dword ptr [rsp + 0x40]
	mov	byte ptr [rbp + rax], 0
	movsxd	rdi, dword ptr [rsp + 0x44]
	add	rdi, rbp
	call	unescape_tab
	movsxd	rdi, dword ptr [rsp + 0x54]
	add	rdi, qword ptr [rsp + 0x68]
	call	unescape_tab
	movsxd	rdi, dword ptr [rsp + 0x3c]
	add	rdi, qword ptr [rsp + 0x68]
	call	unescape_tab
	mov	edi, 0x38
	call	xmalloc
	mov	r13, rax
	movsxd	rdi, dword ptr [rsp + 0x44]
	add	rdi, rbp
	call	xstrdup
	mov	qword ptr [r13], rax
	movsxd	rdi, dword ptr [rsp + 0x54]
	add	rdi, qword ptr [rsp + 0x68]
	call	xstrdup
	mov	qword ptr [r13 + 8], rax
	movsxd	rdi, dword ptr [rsp + 0x3c]
	add	rdi, qword ptr [rsp + 0x68]
	call	xstrdup
	mov	qword ptr [r13 + 0x10], rax
	movsxd	rdi, dword ptr [rsp + 0x4c]
	add	rdi, rbp
	call	xstrdup
	mov	rbp, rax
	mov	qword ptr [r13 + 0x18], rbp
	mov	r12b, byte ptr [r13 + 0x28]
	or	r12b, 4
	mov	byte ptr [r13 + 0x28], r12b
	mov	eax, dword ptr [rsp + 0x5c]
	mov	ecx, dword ptr [rsp + 0x58]
	movzx	edx, cl
	mov	esi, eax
	shl	esi, 8
	and	esi, 0xfff00
	or	esi, edx
	and	ecx, 0xffffff00
	shl	rcx, 0xc
	and	eax, 0xfffff000
	shl	rax, 0x20
	or	rax, rcx
	or	rax, rsi
	mov	qword ptr [r13 + 0x20], rax
	mov	esi, OFFSET FLAT:.str.5_2
	mov	rdi, rbp
	call	strcmp
	mov	r14b, 1
	test	eax, eax
	mov	al, 1
	je	.label_1389
	mov	esi, OFFSET FLAT:.str.6_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1389
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1389
	mov	esi, OFFSET FLAT:.str.8_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1389
	mov	esi, OFFSET FLAT:.str.9_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1389
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1389
	mov	esi, OFFSET FLAT:.str.11_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1389
	mov	esi, OFFSET FLAT:.str.12_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1389
	mov	esi, OFFSET FLAT:.str.13_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1389
	mov	esi, OFFSET FLAT:.str.14_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1389
	mov	esi, OFFSET FLAT:.str.15_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1389
	mov	esi, OFFSET FLAT:.str.16_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1389
	mov	esi, OFFSET FLAT:.str.17_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	sete	al
	nop	dword ptr [rax]
.label_1389:
	and	r12b, 0xfe
	or	r12b, al
	mov	byte ptr [r13 + 0x28], r12b
	mov	r15, qword ptr [r13]
	mov	esi, 0x3a
	mov	rdi, r15
	call	strchr
	test	rax, rax
	mov	rbx, qword ptr [rsp + 0x28]
	jne	.label_1394
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2f
	jne	.label_1395
	movzx	eax, byte ptr [r15 + 1]
	cmp	eax, 0x2f
	jne	.label_1395
	mov	esi, OFFSET FLAT:.str.18_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_1394
	mov	esi, OFFSET FLAT:.str.19_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_1394
.label_1395:
	mov	edi, OFFSET FLAT:.str.20_0
	mov	rsi, r15
	call	strcmp
	test	eax, eax
	sete	r14b
.label_1394:
	add	r14b, r14b
	and	r12b, 0xfd
	or	r12b, r14b
	mov	byte ptr [r13 + 0x28], r12b
	mov	qword ptr [rbx], r13
	add	r13, 0x30
	mov	qword ptr [rsp + 0x28], r13
	mov	r15, qword ptr [rsp + 0x20]
	lea	rbx, [rsp + 0x37]
	lea	r14, [rsp + 0x50]
	lea	r12, [rsp + 0x54]
	lea	r13, [rsp + 0x5c]
.label_1381:
	mov	edx, 0xa
	lea	rdi, [rsp + 0x68]
	lea	rsi, [rsp + 0x60]
.label_3445:
	mov	rcx, r15
	call	__getdelim
	cmp	rax, -1
	jne	.label_1382
	jmp	.label_1387
.label_1392:
	mov	edi, OFFSET FLAT:.str.21_0
	mov	esi, OFFSET FLAT:.str.1_0
	call	setmntent
	mov	r14, rax
	mov	qword ptr [rsp + 0x28], r14
	xor	eax, eax
	test	r14, r14
	je	.label_1390
	lea	r13, [rsp + 0x70]
	mov	rdi, r14
	call	getmntent
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1391
	nop	word ptr cs:[rax + rax]
.label_1397:
	mov	esi, OFFSET FLAT:.str.22_0
	mov	rdi, rbp
	call	hasmntopt
	mov	qword ptr [rsp + 0x20], rax
	mov	edi, 0x38
	call	xmalloc
	mov	rbx, rax
	mov	rdi, qword ptr [rbp]
	call	xstrdup
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbp + 8]
	call	xstrdup
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x10], 0
	mov	rdi, qword ptr [rbp + 0x10]
	call	xstrdup
	mov	r12, rax
	mov	qword ptr [rbx + 0x18], r12
	mov	r14b, byte ptr [rbx + 0x28]
	or	r14b, 4
	mov	byte ptr [rbx + 0x28], r14b
	mov	esi, OFFSET FLAT:.str.5_2
	mov	rdi, r12
	call	strcmp
	mov	r15b, 1
	test	eax, eax
	mov	bpl, 1
	je	.label_1388
	mov	esi, OFFSET FLAT:.str.6_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_1388
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_1388
	mov	esi, OFFSET FLAT:.str.8_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_1388
	mov	esi, OFFSET FLAT:.str.9_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_1388
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_1388
	mov	esi, OFFSET FLAT:.str.11_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_1388
	mov	esi, OFFSET FLAT:.str.12_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_1388
	mov	esi, OFFSET FLAT:.str.13_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_1388
	mov	esi, OFFSET FLAT:.str.14_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_1388
	mov	esi, OFFSET FLAT:.str.15_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_1388
	mov	esi, OFFSET FLAT:.str.16_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_1388
	cmp	qword ptr [rsp + 0x20], 0
	sete	bpl
	mov	esi, OFFSET FLAT:.str.17_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1388
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_1388:
	and	r14b, 0xfe
	or	r14b, bpl
	mov	byte ptr [rbx + 0x28], r14b
	mov	rbp, qword ptr [rbx]
	mov	esi, 0x3a
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	jne	.label_1383
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2f
	jne	.label_1386
	movzx	eax, byte ptr [rbp + 1]
	cmp	eax, 0x2f
	jne	.label_1386
	mov	esi, OFFSET FLAT:.str.18_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1383
	mov	esi, OFFSET FLAT:.str.19_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1383
	nop	word ptr cs:[rax + rax]
.label_1386:
	mov	edi, OFFSET FLAT:.str.20_0
	mov	rsi, rbp
	call	strcmp
	test	eax, eax
	sete	r15b
.label_1383:
	add	r15b, r15b
	and	r14b, 0xfd
	or	r14b, r15b
	mov	byte ptr [rbx + 0x28], r14b
	mov	qword ptr [rbx + 0x20], -1
	mov	qword ptr [r13], rbx
	add	rbx, 0x30
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdi, r14
	call	getmntent
	mov	rbp, rax
	test	rbp, rbp
	mov	r13, rbx
	jne	.label_1397
	jmp	.label_1398
.label_1396:
	lea	rax, [rsp + 0x70]
	mov	qword ptr [rsp + 0x28], rax
.label_1387:
	mov	rdi, qword ptr [rsp + 0x68]
	call	free
	test	byte ptr [r15], 0x20
	jne	.label_1399
	mov	rdi, r15
	call	rpl_fclose
	cmp	eax, -1
	mov	rbx, qword ptr [rsp + 0x28]
	jne	.label_1400
	jmp	.label_1385
.label_1399:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, r15
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
	mov	rbx, qword ptr [rsp + 0x28]
	jmp	.label_1385
.label_1391:
	mov	rbx, r13
.label_1398:
	mov	rdi, r14
	call	endmntent
	test	eax, eax
	je	.label_1385
.label_1400:
	mov	qword ptr [rbx], 0
	mov	rax, qword ptr [rsp + 0x70]
	jmp	.label_1390
.label_1385:
	call	__errno_location
	mov	r15, rax
	mov	r14d, dword ptr [r15]
	mov	qword ptr [rbx], 0
	mov	rbx, qword ptr [rsp + 0x70]
	test	rbx, rbx
	je	.label_1384
	nop	word ptr cs:[rax + rax]
.label_1393:
	mov	rdi, qword ptr [rbx]
	mov	rbp, qword ptr [rbx + 0x30]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	test	byte ptr [rbx + 0x28], 4
	je	.label_1401
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
.label_1401:
	mov	rdi, rbx
	call	free
	mov	qword ptr [rsp + 0x70], rbp
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_1393
.label_1384:
	mov	dword ptr [r15], r14d
	xor	eax, eax
.label_1390:
	add	rsp, 0x78
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
	#Procedure 0x410390

	.globl unescape_tab
	.type unescape_tab, @function
unescape_tab:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	strlen
	xor	ecx, ecx
	inc	rax
	je	.label_1404
	mov	rdx, r14
	nop	word ptr [rax + rax]
.label_1403:
	mov	r9b, byte ptr [r14 + rcx]
	lea	rsi, [rcx + 4]
	cmp	rsi, rax
	jae	.label_1402
	movzx	esi, r9b
	cmp	esi, 0x5c
	jne	.label_1402
	mov	sil, byte ptr [rcx + r14 + 1]
	mov	bl, sil
	and	bl, 0xfc
	movzx	edi, bl
	cmp	edi, 0x30
	jne	.label_1402
	mov	dil, byte ptr [rcx + r14 + 2]
	mov	bl, dil
	and	bl, 0xf8
	movzx	ebx, bl
	cmp	ebx, 0x30
	jne	.label_1402
	mov	r8b, byte ptr [r14 + rcx + 3]
	mov	bl, r8b
	and	bl, 0xf8
	movzx	ebx, bl
	cmp	ebx, 0x30
	jne	.label_1402
	add	rcx, 3
	shl	sil, 6
	shl	dil, 3
	add	dil, sil
	add	dil, r8b
	add	dil, 0x50
	mov	byte ptr [rdx], dil
	jmp	.label_1405
	nop	word ptr [rax + rax]
.label_1402:
	mov	byte ptr [rdx], r9b
.label_1405:
	inc	rcx
	inc	rdx
	cmp	rcx, rax
	jb	.label_1403
.label_1404:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410440

	.globl free_mount_entry
	.type free_mount_entry, @function
free_mount_entry:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	test	byte ptr [rbx + 0x28], 4
	je	.label_1406
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
.label_1406:
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410480
	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:

	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	al, byte ptr [rdx + 0x38]
	shr	rcx, 0x15
	and	cl, 0x10
	and	al, 0x6f
	or	al, cl
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	rdi, rdx
	mov	rdx, r8
	call	re_compile_internal
	test	eax, eax
	je	.label_1407
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
.label_1407:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4104e0

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	qword ptr [rsp + 0x18], rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	dword ptr [rsp + 0xcc], 0
	mov	al, byte ptr [r15 + 0x38]
	mov	qword ptr [r15 + 0x18], rcx
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x30], 0
	and	al, 0x90
	mov	byte ptr [r15 + 0x38], al
	mov	r12, qword ptr [r15]
	cmp	qword ptr [r15 + 8], 0xe7
	jbe	.label_1441
.label_1409:
	mov	qword ptr [r15 + 0x10], 0xe8
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r12 + 0xd0], xmm0
	movdqu	xmmword ptr [r12 + 0xc0], xmm0
	movdqu	xmmword ptr [r12 + 0xb0], xmm0
	movdqu	xmmword ptr [r12 + 0xa0], xmm0
	movdqu	xmmword ptr [r12 + 0x90], xmm0
	movdqu	xmmword ptr [r12 + 0x80], xmm0
	movdqu	xmmword ptr [r12 + 0x70], xmm0
	movdqu	xmmword ptr [r12 + 0x60], xmm0
	movdqu	xmmword ptr [r12 + 0x50], xmm0
	movdqu	xmmword ptr [r12 + 0x40], xmm0
	movdqu	xmmword ptr [r12 + 0x30], xmm0
	movdqu	xmmword ptr [r12 + 0x20], xmm0
	movdqu	xmmword ptr [r12 + 0x10], xmm0
	movdqu	xmmword ptr [r12], xmm0
	mov	qword ptr [r12 + 0xe0], 0
	mov	dword ptr [r12 + 0x80], 0xf
	movabs	rax, 0x555555555555554
	cmp	r13, rax
	ja	.label_1456
	lea	rdi, [r13 + 1]
	mov	qword ptr [rsp + 0x20], rdi
	mov	qword ptr [r12 + 8], rdi
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	word ptr cs:[rax + rax]
.label_1488:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, r13
	jbe	.label_1488
	mov	edi, 0x18
	mov	rsi, rbx
	call	rpl_calloc
	mov	qword ptr [r12 + 0x40], rax
	dec	rbx
	mov	qword ptr [r12 + 0x88], rbx
	call	__ctype_get_mb_cur_max
	mov	dword ptr [r12 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x75
	jne	.label_1501
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x74
	jne	.label_1501
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x66
	jne	.label_1501
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	sete	cl
	movzx	ecx, cl
	movzx	edx, byte ptr [rax + rcx + 3]
	cmp	edx, 0x38
	jne	.label_1501
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_1501
	or	byte ptr [r12 + 0xb0], 4
.label_1501:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rcx, rax
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_1514
	test	al, 4
	jne	.label_1523
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	xor	ebx, ebx
	test	rax, rax
	je	.label_1456
	xor	ebp, ebp
	nop	
.label_1522:
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_1476
	mov	edx, 1
	mov	cl, bl
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_1476:
	cmp	ebx, 0x7f
	ja	.label_1533
	cmp	ebx, eax
	je	.label_1533
	or	byte ptr [r12 + 0xb0], 8
.label_1533:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1522
	mov	qword ptr [rsp + 0x28], r15
	xor	ebx, ebx
.label_1543:
	lea	r15, [rbp + 0x40]
	mov	edi, r15d
	call	btowc
	cmp	eax, -1
	je	.label_1544
	mov	edx, 1
	mov	cl, bpl
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 8], rdx
.label_1544:
	cmp	r15d, eax
	je	.label_1413
	or	byte ptr [r12 + 0xb0], 8
.label_1413:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1543
	xor	ebp, ebp
	mov	r15, qword ptr [rsp + 0x28]
	nop	word ptr cs:[rax + rax]
.label_1556:
	lea	edi, [rbx + 0x80]
	call	btowc
	cmp	eax, -1
	je	.label_1459
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x10], rax
.label_1459:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1556
	nop	dword ptr [rax]
.label_1561:
	lea	edi, [rbp + 0xc0]
	call	btowc
	cmp	eax, -1
	je	.label_1412
	mov	eax, 1
	mov	cl, bpl
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_1412:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1561
	jmp	.label_1514
.label_1523:
	mov	qword ptr [word ptr [r12 + 120]], OFFSET FLAT:utf8_sb_map
.label_1514:
	cmp	qword ptr [r12], 0
	je	.label_1456
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_1456
	mov	dword ptr [rsp + 0xcc], 0
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0x18]
	and	ecx, 0x400000
	mov	qword ptr [rsp + 0x10], rcx
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xb0], xmm0
	movdqa	xmmword ptr [rsp + 0xa0], xmm0
	movdqa	xmmword ptr [rsp + 0x90], xmm0
	movdqa	xmmword ptr [rsp + 0x80], xmm0
	movdqa	xmmword ptr [rsp + 0x70], xmm0
	movdqa	xmmword ptr [rsp + 0x60], xmm0
	movdqa	xmmword ptr [rsp + 0x50], xmm0
	movdqa	xmmword ptr [rsp + 0x40], xmm0
	movdqa	xmmword ptr [rsp + 0x30], xmm0
	mov	qword ptr [rsp + 0xc0], 0
	mov	qword ptr [rsp + 0x30], r14
	mov	qword ptr [rsp + 0x88], r13
	mov	qword ptr [rsp + 0x80], r13
	mov	qword ptr [rsp + 0xa8], rbx
	mov	rax, rcx
	shr	rax, 0x16
	mov	byte ptr [rsp + 0xb8], al
	mov	rax, rcx
	or	rax, rbx
	setne	bpl
	setne	byte ptr [rsp + 0xbb]
	mov	edx, dword ptr [r12 + 0xb4]
	mov	dword ptr [rsp + 0xc0], edx
	mov	al, byte ptr [r12 + 0xb0]
	shr	al, 2
	and	al, 1
	mov	byte ptr [rsp + 0xb9], al
	mov	rcx, qword ptr [r12 + 0xb0]
	mov	al, cl
	shr	al, 3
	and	al, 1
	mov	byte ptr [rsp + 0xba], al
	mov	qword ptr [rsp + 0x98], r13
	mov	qword ptr [rsp + 0x90], r13
	xor	eax, eax
	test	r13, r13
	jle	.label_1564
	cmp	edx, 2
	jl	.label_1446
	mov	qword ptr [rsp + 0x28], r15
	mov	r15d, 0xc
	mov	rax, qword ptr [rsp + 0x20]
	movabs	rcx, 0x1fffffffffffffff
	cmp	rax, rcx
	ja	.label_1447
	lea	rsi, [rax*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_1447
	mov	qword ptr [rsp + 0x40], rax
	mov	r15, qword ptr [rsp + 0x28]
.label_1446:
	xor	eax, eax
	test	bpl, bpl
	je	.label_1461
	mov	qword ptr [rsp + 0x28], r15
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x20]
	call	realloc
	mov	r15d, 0xc
	test	rax, rax
	je	.label_1447
	mov	qword ptr [rsp + 0x38], rax
	mov	r15, qword ptr [rsp + 0x28]
.label_1461:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x70], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	jmp	.label_1440
.label_1456:
	mov	dword ptr [rsp + 0xcc], 0xc
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, 0xc
	jmp	.label_1468
.label_1564:
	shr	rcx, 0x20
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rdx
.label_1440:
	test	bpl, bpl
	cmove	rax, r14
	mov	qword ptr [rsp + 0x38], rax
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_1474
	cmp	ecx, 2
	jl	.label_1478
	mov	qword ptr [rsp + 0x28], r15
	lea	rdi, [rsp + 0x30]
	call	build_wcs_upper_buffer
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_1447
	lea	r14, [rsp + 0x30]
.label_1421:
	cmp	qword ptr [rsp + 0x68], r13
	jge	.label_1486
	mov	rbp, qword ptr [rsp + 0x70]
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x60]
	cmp	rbp, rax
	jg	.label_1486
	lea	rbx, [rbp + rbp]
	cmp	dword ptr [rsp + 0xc0], 2
	jl	.label_1493
	mov	r15d, 0xc
	movabs	rax, 0x1fffffffffffffff
	cmp	rbx, rax
	ja	.label_1447
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_1447
	mov	qword ptr [rsp + 0x40], rax
	mov	rdi, qword ptr [rsp + 0x48]
	test	rdi, rdi
	je	.label_1493
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_1447
	mov	qword ptr [rsp + 0x48], rax
.label_1493:
	cmp	byte ptr [rsp + 0xbb], 0
	je	.label_1511
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, rbx
	call	realloc
	mov	r15d, 0xc
	test	rax, rax
	je	.label_1447
	mov	qword ptr [rsp + 0x38], rax
.label_1511:
	mov	qword ptr [rsp + 0x70], rbx
	mov	rdi, r14
	call	build_wcs_upper_buffer
	mov	r15d, eax
	test	r15d, r15d
	je	.label_1421
.label_1447:
	mov	dword ptr [rsp + 0xcc], r15d
	jmp	.label_1455
.label_1474:
	cmp	ecx, 2
	jl	.label_1527
	mov	qword ptr [rsp + 0x28], r15
	lea	rdi, [rsp + 0x30]
	call	build_wcs_buffer
	jmp	.label_1486
.label_1478:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax, r13
	cmovg	rax, r13
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	jle	.label_1528
	xor	eax, eax
	mov	ebp, 1
	jmp	.label_1532
	nop	word ptr cs:[rax + rax]
.label_1417:
	mov	r14, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0xa8]
	inc	rbp
.label_1532:
	add	r14, rax
	mov	al, byte ptr [rbp + r14 - 1]
	movzx	ecx, al
	test	rbx, rbx
	jne	.label_1537
.label_1547:
	movzx	ebx, al
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_1539
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1539:
	mov	rax, qword ptr [rsp + 0x38]
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r13
	jl	.label_1417
	jmp	.label_1545
.label_1537:
	mov	al, byte ptr [rbx + rcx]
	jmp	.label_1547
.label_1527:
	test	rbx, rbx
	je	.label_1550
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	rcx, r13
	cmovg	rcx, r13
	mov	rdi, rcx
	xor	ecx, ecx
	test	rdi, rdi
	jle	.label_1552
	movzx	ecx, byte ptr [r14]
	mov	cl, byte ptr [rbx + rcx]
	mov	byte ptr [rax], cl
	mov	ecx, 1
	cmp	rdi, 2
	jl	.label_1552
	nop	dword ptr [rax + rax]
.label_1557:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x38]
	add	rax, qword ptr [rsp + 0x58]
	movzx	eax, byte ptr [rcx + rax]
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	al, byte ptr [rsi + rax]
	mov	byte ptr [rdx + rcx], al
	inc	rcx
	cmp	rcx, rdi
	jl	.label_1557
	mov	rcx, rdi
.label_1552:
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x68], rcx
	jmp	.label_1486
.label_1441:
	mov	esi, 0xe8
	mov	rdi, r12
	call	realloc
	mov	r12, rax
	mov	eax, 0xc
	test	r12, r12
	je	.label_1468
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_1409
.label_1545:
	mov	rax, r13
.label_1528:
	mov	qword ptr [rsp + 0x28], r15
	jmp	.label_1410
.label_1550:
	mov	qword ptr [rsp + 0x28], r15
	mov	rax, qword ptr [rsp + 0x20]
.label_1410:
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x68], rax
.label_1486:
	mov	dword ptr [rsp + 0xcc], 0
	mov	r15, qword ptr [rsp + 0x28]
	mov	qword ptr [r15 + 0x30], 0
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rdx, rbp
	or	rdx, 0x800000
	lea	r14, [rsp + 0xd0]
	lea	r13, [rsp + 0x30]
	mov	rdi, r14
	mov	rsi, r13
	call	peek_token
	cdqe	
	add	qword ptr [rsp + 0x78], rax
	lea	r9, [rsp + 0xcc]
	xor	r8d, r8d
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbp
	call	parse_reg_exp
	mov	r14, rax
	test	r14, r14
	jne	.label_1431
	mov	eax, dword ptr [rsp + 0xcc]
	test	eax, eax
	jne	.label_1432
.label_1431:
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_1435
	mov	rax, qword ptr [rbx + 0x70]
.label_1469:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 2
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1467:
	test	r14, r14
	mov	rcx, rbp
	je	.label_1449
	mov	ecx, dword ptr [rbx + 0x80]
	cmp	ecx, 0xf
	je	.label_1450
	mov	rax, qword ptr [rbx + 0x70]
.label_1484:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbx + 0x80], edx
	movsxd	rdx, ecx
	shl	rdx, 6
	lea	rcx, [rax + rdx + 8]
	mov	qword ptr [rax + rdx + 8], 0
	mov	qword ptr [rax + rdx + 0x10], r14
	mov	qword ptr [rax + rdx + 0x18], rbp
	mov	dword ptr [rax + rdx + 0x38], 0x10
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rdx + 0x20], xmm0
	mov	qword ptr [rax + rdx + 0x40], -1
	mov	qword ptr [r14], rcx
	test	rbp, rbp
	je	.label_1452
	mov	qword ptr [rbp], rcx
.label_1449:
	test	rbp, rbp
	je	.label_1452
	test	rcx, rcx
	je	.label_1452
	mov	qword ptr [r12 + 0x68], rcx
	mov	r15, qword ptr [r15]
	mov	rdi, qword ptr [r15 + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + 0x18], rax
	mov	rdi, qword ptr [r15 + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + 0x20], rax
	mov	rax, qword ptr [r15 + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [r15 + 0x28], rax
	mov	rax, qword ptr [r15 + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [r15 + 0x30], rax
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_1480
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_1555
	test	rax, rax
	je	.label_1483
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	je	.label_1485
	mov	rax, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rax + 0x30]
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [r15 + 0xe0], rax
	test	rax, rax
	je	.label_1492
	test	rbx, rbx
	je	.label_1495
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	cmp	rcx, 1
	mov	edx, 1
	cmova	rdx, rcx
	xor	edi, edi
	cmp	rdx, 4
	jb	.label_1497
	xor	edi, edi
	mov	rsi, rdx
	and	rsi, 0xfffffffffffffffc
	je	.label_1497
	cmp	rcx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	add	rbp, -4
	mov	rbx, rbp
	shr	rbx, 2
	xor	edi, edi
	bt	rbp, 2
	jb	.label_1506
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rax], xmm0
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_1513]]
	movdqu	xmmword ptr [rax + 0x10], xmm0
	mov	edi, 4
.label_1506:
	test	rbx, rbx
	je	.label_1519
	mov	ebp, 1
	movq	xmm0, rbp
	pslldq	xmm0, 8
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_1513]]
.label_1526:
	movq	xmm2, rdi
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	lea	rbp, [rdi + 4]
	movq	xmm2, rbp
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdi*8 + 0x20], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x30], xmm2
	add	rdi, 8
	cmp	rdi, rsi
	jne	.label_1526
.label_1519:
	cmp	rdx, rsi
	mov	rdi, rsi
	je	.label_1495
	nop	dword ptr [rax + rax]
.label_1497:
	mov	qword ptr [rax + rdi*8], rdi
	inc	rdi
	cmp	rdi, rcx
	jb	.label_1497
.label_1495:
	mov	rbx, qword ptr [r15 + 0x68]
	mov	rdi, r15
	mov	rsi, rbx
	call	optimize_subexps
	test	eax, eax
	jne	.label_1448
.label_1553:
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	mov	eax, 0
	jne	.label_1429
	nop	dword ptr [rax]
.label_1548:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	je	.label_1542
	test	rbp, rbp
	jne	.label_1429
.label_1542:
	mov	rbx, qword ptr [rax]
	test	rbx, rbx
	jne	.label_1548
	jmp	.label_1448
.label_1429:
	mov	rdi, r15
	mov	rsi, rbp
	call	optimize_subexps
	test	eax, eax
	mov	rbx, rbp
	je	.label_1553
.label_1448:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax + 0x30]
	xor	ecx, ecx
	test	rax, rax
	je	.label_1535
	mov	rdx, qword ptr [r15 + 0xe0]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_1558:
	cmp	rcx, qword ptr [rdx + rcx*8]
	jne	.label_1535
	inc	rcx
	cmp	rcx, rax
	jb	.label_1558
.label_1535:
	lea	r14, [r15 + 0x68]
	cmp	rcx, rax
	jne	.label_1560
	mov	rdi, qword ptr [r15 + 0xe0]
	call	free
	mov	qword ptr [r15 + 0xe0], 0
	jmp	.label_1560
.label_1480:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_1455
.label_1555:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_1455
.label_1492:
	lea	r14, [r15 + 0x68]
.label_1560:
	mov	rax, qword ptr [r14]
	lea	rbx, [rsp + 0xd0]
	nop	word ptr cs:[rax + rax]
.label_1411:
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	jne	.label_1411
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	mov	edx, 0
	jne	.label_1411
	jmp	.label_1414
	nop	dword ptr [rax]
.label_1437:
	mov	rdx, qword ptr [rcx + 8]
	mov	rbp, rcx
.label_1414:
	mov	dword ptr [rsp + 0xd0], 0
	test	rdx, rdx
	je	.label_1418
	movzx	eax, byte ptr [rdx + 0x30]
	cmp	eax, 0x11
	jne	.label_1418
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x28]
	call	lower_subexp
	mov	qword ptr [rbp + 8], rax
	test	rax, rax
	je	.label_1418
	mov	qword ptr [rax], rbp
	nop	dword ptr [rax]
.label_1418:
	mov	rdx, qword ptr [rbp + 0x10]
	test	rdx, rdx
	je	.label_1425
	movzx	eax, byte ptr [rdx + 0x30]
	cmp	eax, 0x11
	jne	.label_1425
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x28]
	call	lower_subexp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1425
	mov	qword ptr [rax], rbp
	nop	dword ptr [rax + rax]
.label_1425:
	mov	eax, dword ptr [rsp + 0xd0]
	test	eax, eax
	jne	.label_1433
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_1436
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	je	.label_1437
	test	rax, rax
	je	.label_1437
	jmp	.label_1411
.label_1436:
	mov	rax, qword ptr [r14]
	mov	ebx, 0xfffc00ff
.label_1443:
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	jne	.label_1443
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	jne	.label_1443
.label_1465:
	movzx	eax, byte ptr [rbp + 0x30]
	cmp	eax, 0x10
	jne	.label_1445
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbp + 0x18], rcx
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp + 0x38], rax
	jmp	.label_1457
.label_1445:
	mov	qword ptr [rbp + 0x18], rbp
	mov	rsi, qword ptr [rbp + 0x28]
	mov	rdx, qword ptr [rbp + 0x30]
	mov	rdi, r15
	call	re_dfa_add_node
	mov	qword ptr [rbp + 0x38], rax
	cmp	rax, -1
	je	.label_1453
	movzx	ecx, byte ptr [rbp + 0x30]
	cmp	ecx, 0xc
	jne	.label_1457
	mov	ecx, dword ptr [rbp + 0x28]
	mov	rdx, qword ptr [r15]
	shl	rax, 4
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	and	esi, ebx
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_1457:
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_1463
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	mov	rbp, rcx
	je	.label_1465
	test	rax, rax
	mov	rbp, rcx
	je	.label_1465
	jmp	.label_1443
.label_1435:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_1467
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1469
.label_1463:
	mov	rbx, qword ptr [r14]
	movzx	eax, byte ptr [rbx + 0x30]
	cmp	eax, 0x10
	je	.label_1472
	cmp	eax, 0xb
	jne	.label_1475
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rax + 0x20], rbx
	jmp	.label_1477
.label_1453:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_1455
.label_1450:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1452
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1484
.label_1452:
	mov	dword ptr [rsp + 0xcc], 0xc
.label_1432:
	mov	qword ptr [r12 + 0x68], 0
	jmp	.label_1491
.label_1472:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rdx
	jmp	.label_1494
.label_1475:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_1498
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1498:
	mov	rcx, qword ptr [rbx + 0x10]
	test	rcx, rcx
	je	.label_1477
.label_1494:
	mov	rdx, qword ptr [rbx + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_1477:
	mov	rdx, rbx
	jmp	.label_1504
.label_1518:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x20], rsi
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	mov	rdx, rcx
.label_1504:
	xor	esi, esi
	test	rax, rax
	mov	rcx, rax
	jne	.label_1510
	nop	
.label_1515:
	mov	rax, rsi
	mov	rsi, rdx
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	rcx, rax
	je	.label_1464
	test	rcx, rcx
	jne	.label_1510
.label_1464:
	mov	rdx, qword ptr [rsi]
	test	rdx, rdx
	jne	.label_1515
	jmp	.label_1517
.label_1510:
	movzx	eax, byte ptr [rcx + 0x30]
	cmp	eax, 0x10
	je	.label_1518
	cmp	eax, 0xb
	jne	.label_1521
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x20], rcx
	mov	rdx, rcx
	jmp	.label_1504
.label_1521:
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	je	.label_1524
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rax + 0x20], rdx
.label_1524:
	mov	rsi, qword ptr [rcx + 0x10]
	test	rsi, rsi
	mov	rdx, rcx
	je	.label_1504
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, rcx
	jmp	.label_1504
.label_1517:
	mov	rdi, r15
	mov	rsi, rbx
	call	link_nfa_nodes
	test	eax, eax
	jne	.label_1433
.label_1540:
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	mov	eax, 0
	jne	.label_1531
	nop	word ptr cs:[rax + rax]
.label_1536:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	je	.label_1534
	test	rbp, rbp
	jne	.label_1531
.label_1534:
	mov	rbx, qword ptr [rax]
	test	rbx, rbx
	jne	.label_1536
	jmp	.label_1538
.label_1531:
	mov	rdi, r15
	mov	rsi, rbp
	call	link_nfa_nodes
	test	eax, eax
	mov	rbx, rbp
	je	.label_1540
	jmp	.label_1433
.label_1538:
	xor	eax, eax
	lea	r14, [rsp + 0xd0]
	xor	r13d, r13d
	jmp	.label_1541
	nop	word ptr cs:[rax + rax]
.label_1529:
	inc	rbp
	mov	rax, rbp
.label_1541:
	cmp	rax, qword ptr [r15 + 0x10]
	jne	.label_1549
	xor	ebp, ebp
	test	r13b, 1
	mov	r13d, 0
	jne	.label_1551
	jmp	.label_1554
.label_1549:
	mov	rbp, rax
.label_1551:
	mov	rax, qword ptr [r15 + 0x30]
	lea	rbx, [rbp + rbp*2]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_1529
	mov	ecx, 1
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_1433
	mov	rax, qword ptr [r15 + 0x30]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_1529
	mov	rdi, qword ptr [rsp + 0xe0]
	call	free
	mov	r13b, 1
	jmp	.label_1529
.label_1433:
	mov	dword ptr [rsp + 0xcc], eax
.label_1455:
	mov	r15, qword ptr [rsp + 0x28]
.label_1491:
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_1562
.label_1563:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_1563
.label_1562:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	cmp	byte ptr [rsp + 0xbb], 0
	je	.label_1416
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
.label_1416:
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
.label_1508:
	mov	eax, dword ptr [rsp + 0xcc]
.label_1468:
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1554:
	mov	rcx, qword ptr [rsp + 0x28]
	test	byte ptr [rcx + 0x38], 0x10
	jne	.label_1424
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rcx + 0x30], 0
	je	.label_1424
	test	byte ptr [r15 + 0xb0], 1
	jne	.label_1427
.label_1424:
	cmp	qword ptr [r15 + 0x98], 0
	je	.label_1430
.label_1427:
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [r15 + 0x38], rax
	test	rax, rax
	je	.label_1434
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_1430
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [r15 + 0x10]
	mov	ecx, 1
	mov	edx, 0x18
	cmp	rax, 1
	jbe	.label_1438
.label_1473:
	mov	rax, qword ptr [r15 + 0x38]
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r15 + 0x10]
	add	rdx, 0x18
	cmp	rcx, rax
	jb	.label_1473
.label_1438:
	test	rax, rax
	je	.label_1430
	mov	r8, qword ptr [r15 + 0x30]
	xor	r10d, r10d
.label_1479:
	mov	qword ptr [rsp + 0x18], r10
	lea	r9, [r10 + r10*2]
	mov	qword ptr [rsp + 0x20], r9
	cmp	qword ptr [r8 + r9*8 + 8], 0
	jle	.label_1451
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	qword ptr [rsp + 8], rdi
	xor	ebx, ebx
.label_1507:
	mov	r13, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [rdi + rbx*8]
	lea	rbp, [rax + rax*2]
	mov	rax, qword ptr [r13 + rbp*8]
	lea	r14, [r13 + rbp*8 + 8]
	mov	rdx, qword ptr [r13 + rbp*8 + 8]
	cmp	rax, rdx
	jne	.label_1462
	lea	rcx, [r13 + rbp*8]
	lea	rdx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1489
	lea	rcx, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rcx], rax
	mov	rdx, qword ptr [r14]
	mov	r8, qword ptr [r15 + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_1466
.label_1462:
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_1466:
	lea	rsi, [rdx + 1]
	mov	qword ptr [r14], rsi
	mov	qword ptr [rax + rdx*8], r10
	inc	rbx
	cmp	rbx, qword ptr [r8 + r9*8 + 8]
	jl	.label_1507
	mov	rax, qword ptr [r15 + 0x10]
.label_1451:
	inc	r10
	cmp	r10, rax
	jb	.label_1479
.label_1430:
	mov	dword ptr [rsp + 0xcc], 0
	cmp	qword ptr [rsp + 0x10], 0
	jne	.label_1482
	mov	al, byte ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 4
	je	.label_1482
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rcx + 0x28], 0
	jne	.label_1482
	mov	rdx, qword ptr [r12 + 0x10]
	test	rdx, rdx
	je	.label_1490
	mov	rbx, qword ptr [r12]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	mov	rcx, rbx
	xor	r10d, r10d
	xor	ebp, ebp
.label_1516:
	movzx	esi, byte ptr [rcx + 8]
	dec	esi
	cmp	esi, 0xb
	ja	.label_1499
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_1503]]
.label_3307:
	cmp	byte ptr [rcx], 0
	mov	sil, 1
	js	.label_1496
	mov	sil, r10b
.label_1496:
	mov	r10b, sil
	jmp	.label_1505
.label_3308:
	mov	rsi, qword ptr [rcx]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_1482
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_1505
	jmp	.label_1482
.label_3309:
	mov	r9b, 1
	jmp	.label_1505
.label_3310:
	mov	esi, dword ptr [rcx]
	lea	edi, [rsi - 0x10]
	cmp	edi, 0x30
	ja	.label_1512
	bt	r8, rdi
	jb	.label_1505
.label_1512:
	cmp	esi, 0x80
	jne	.label_1482
.label_1505:
	inc	rbp
	add	rcx, 0x10
	cmp	rbp, rdx
	jb	.label_1516
	mov	cl, r9b
	and	cl, 1
	or	r10b, r9b
	xor	edx, edx
	mov	esi, 8
	test	r10b, 1
	je	.label_1520
	jmp	.label_1525
.label_1483:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_1455
.label_1485:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_1455
.label_1509:
	add	rsi, 0x10
	mov	rbx, qword ptr [r12]
.label_1525:
	mov	eax, dword ptr [rbx + rsi]
	movzx	edi, al
	cmp	edi, 5
	je	.label_1471
	cmp	edi, 1
	jne	.label_1530
	cmp	byte ptr [rbx + rsi - 8], 0
	jns	.label_1530
	and	eax, 0xffdfffff
	jmp	.label_1502
.label_1471:
	and	eax, 0xffffff00
	or	eax, 7
.label_1502:
	mov	dword ptr [rbx + rsi], eax
.label_1530:
	inc	rdx
	cmp	rdx, qword ptr [r12 + 0x10]
	jb	.label_1509
	mov	al, byte ptr [r12 + 0xb0]
	jmp	.label_1520
.label_1489:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_1455
.label_1490:
	xor	ecx, ecx
.label_1520:
	mov	dword ptr [r12 + 0xb4], 1
	cmp	qword ptr [r12 + 0x98], 0
	setg	dl
	or	dl, cl
	add	dl, dl
	and	al, 0xf9
	or	al, dl
	mov	byte ptr [r12 + 0xb0], al
.label_1482:
	mov	rax, qword ptr [r12 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [r12 + 0x90], rax
	mov	rbx, qword ptr [r12 + 0x30]
	lea	r13, [rax + rax*2]
	mov	r15, qword ptr [rbx + r13*8 + 8]
	mov	qword ptr [rsp + 0xd8], r15
	mov	r14, qword ptr [rbx + r13*8 + 8]
	test	r14, r14
	jle	.label_1546
	mov	qword ptr [rsp + 0xd0], r15
	lea	rdi, [r15*8]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0xe0], rbp
	test	rbp, rbp
	je	.label_1559
	mov	rsi, qword ptr [rbx + r13*8 + 0x10]
	shl	r14, 3
	mov	rdi, rbp
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0xf4], 0
	test	r15, r15
	jle	.label_1444
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	jle	.label_1444
	xor	eax, eax
	lea	r14, [rsp + 0xd0]
	jmp	.label_1408
.label_1442:
	mov	rbp, qword ptr [rsp + 0xe0]
.label_1408:
	mov	r8, qword ptr [rbp + rax*8]
	mov	rdx, qword ptr [r12]
	mov	rsi, r8
	shl	rsi, 4
	movzx	ecx, byte ptr [rdx + rsi + 8]
	cmp	ecx, 4
	jne	.label_1422
	test	r15, r15
	mov	edi, 0
	jle	.label_1415
	add	rsi, rdx
	xor	edi, edi
.label_1420:
	mov	rcx, qword ptr [rbp + rdi*8]
	shl	rcx, 4
	movzx	ebx, byte ptr [rdx + rcx + 8]
	cmp	ebx, 9
	jne	.label_1419
	mov	rcx, qword ptr [rdx + rcx]
	cmp	rcx, qword ptr [rsi]
	je	.label_1415
.label_1419:
	inc	rdi
	cmp	rdi, r15
	jl	.label_1420
.label_1415:
	cmp	rdi, r15
	je	.label_1422
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	test	r15, r15
	jle	.label_1423
	mov	rsi, r15
	dec	rsi
	mov	edx, 0
	je	.label_1426
.label_1428:
	lea	rdi, [rdx + rsi]
	shr	rdi, 1
	cmp	qword ptr [rbp + rdi*8], rcx
	lea	rbx, [rdi + 1]
	cmovl	rdx, rbx
	cmovge	rsi, rdi
	cmp	rdx, rsi
	jb	.label_1428
.label_1426:
	cmp	rdx, -1
	je	.label_1423
	cmp	qword ptr [rbp + rdx*8], rcx
	je	.label_1422
.label_1423:
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1439
	mov	r15, qword ptr [rsp + 0xd8]
	xor	eax, eax
.label_1422:
	inc	rax
	cmp	rax, r15
	jl	.label_1442
	jmp	.label_1444
.label_1546:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xd0], xmm0
	mov	qword ptr [rsp + 0xe0], 0
	mov	dword ptr [rsp + 0xf4], 0
.label_1444:
	lea	rdi, [rsp + 0xf4]
	lea	rdx, [rsp + 0xd0]
	xor	ecx, ecx
	mov	rsi, r12
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x48], rax
	test	rax, rax
	je	.label_1454
	cmp	byte ptr [rax + 0x68], 0
	js	.label_1458
	mov	qword ptr [r12 + 0x60], rax
	mov	qword ptr [r12 + 0x58], rax
	mov	qword ptr [r12 + 0x50], rax
	jmp	.label_1460
.label_1458:
	lea	rbx, [rsp + 0xf4]
	lea	rbp, [rsp + 0xd0]
	mov	ecx, 1
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x50], rax
	mov	ecx, 2
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x58], rax
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x60], rax
	cmp	qword ptr [r12 + 0x50], 0
	je	.label_1470
	test	rax, rax
	je	.label_1470
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	je	.label_1470
.label_1460:
	mov	rdi, qword ptr [rsp + 0xe0]
	call	free
	xor	eax, eax
.label_1439:
	mov	dword ptr [rsp + 0xcc], eax
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [r14]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_1481
.label_1487:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_1487
.label_1481:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	cmp	byte ptr [rsp + 0xbb], 0
	je	.label_1500
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
.label_1500:
	xor	eax, eax
	cmp	dword ptr [rsp + 0xcc], 0
	je	.label_1468
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	jmp	.label_1508
.label_1470:
	mov	eax, dword ptr [rsp + 0xf4]
	jmp	.label_1439
.label_1434:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0xcc], eax
	jmp	.label_1455
.label_1454:
	mov	eax, dword ptr [rsp + 0xf4]
	jmp	.label_1439
.label_1559:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xd0], xmm0
	mov	dword ptr [rsp + 0xf4], 0xc
	mov	eax, 0xc
	jmp	.label_1439
.label_1499:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411ae0
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  rdi
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x411af0

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 0x20]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0xf0], xmm0
	movups	xmmword ptr [rbx + 0xe0], xmm0
	movups	xmmword ptr [rbx + 0xd0], xmm0
	movups	xmmword ptr [rbx + 0xc0], xmm0
	movups	xmmword ptr [rbx + 0xb0], xmm0
	movups	xmmword ptr [rbx + 0xa0], xmm0
	movups	xmmword ptr [rbx + 0x90], xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rsi, qword ptr [r15 + 0x48]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
	mov	rsi, qword ptr [r15 + 0x50]
	cmp	rax, rsi
	je	.label_1566
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_1566:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rax, rsi
	je	.label_1565
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_1565:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	rax, rsi
	je	.label_1567
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_1567:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411bc0

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x148
	mov	r15, rdx
	mov	qword ptr [rsp + 0x18], rsi
	mov	r13, rdi
	mov	qword ptr [rsp + 0x10], r13
	mov	rax, qword ptr [r13]
	cmp	dword ptr [rax + 0xb4], 1
	jne	.label_1595
	mov	qword ptr [rsp + 0x28], rax
	mov	r14b, byte ptr [r13 + 0x1a]
	and	r14b, 0x40
	shr	r14b, 6
	jmp	.label_1603
.label_1595:
	mov	qword ptr [rsp + 0x28], rax
	xor	r14d, r14d
.label_1603:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_1568
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1594:
	mov	rax, qword ptr [rsi + 0x18]
	mov	rbp, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	r12, rbp
	shl	r12, 4
	lea	rcx, [rax + r12]
	movzx	ebx, byte ptr [rax + r12 + 8]
	cmp	ebx, 1
	je	.label_1596
	mov	qword ptr [rsp + 0x20], rdx
	cmp	ebx, 6
	je	.label_1576
	cmp	ebx, 3
	jne	.label_1579
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1590:
	bt	rbp, rbx
	jae	.label_1581
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_1581
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x180
	jae	.label_1602
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4]
	jmp	.label_1588
.label_1602:
	mov	eax, ebx
.label_1588:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1581:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1590
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 8]
	xor	ebx, ebx
	nop	
.label_1605:
	bt	rbp, rbx
	jae	.label_1586
	mov	byte ptr [r15 + rbx + 0x40], 1
	test	r14b, r14b
	je	.label_1586
	lea	eax, [rbx + 0xc0]
	cmp	eax, 0x180
	jae	.label_1598
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x100]
	jmp	.label_1600
.label_1598:
	lea	rax, [rbx + 0x40]
.label_1600:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1586:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1605
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x10]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1580:
	bt	rbp, rbx
	jae	.label_1570
	mov	byte ptr [r15 + rbx + 0x80], 1
	test	r14b, r14b
	je	.label_1570
	lea	eax, [rbx + 0x100]
	cmp	eax, 0x180
	jae	.label_1571
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x200]
	jmp	.label_1591
.label_1571:
	lea	rax, [rbx + 0x80]
.label_1591:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1570:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1580
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x18]
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1583:
	bt	rbp, rbx
	jae	.label_1587
	mov	byte ptr [r15 + rbx + 0xc0], 1
	test	r14b, r14b
	je	.label_1587
	lea	eax, [rbx + 0x140]
	cmp	eax, 0x180
	jae	.label_1589
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x300]
	jmp	.label_1592
.label_1589:
	lea	rax, [rbx + 0xc0]
.label_1592:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1587:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1583
	jmp	.label_1572
	nop	
.label_1576:
	mov	r12, qword ptr [rcx]
	mov	rax, qword ptr [rsp + 0x28]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1597
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_1601
	test	byte ptr [r12 + 0x20], 1
	jne	.label_1601
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_1597
.label_1601:
	mov	byte ptr [rsp + 0x138], 0
	lea	rbx, [rsp + 0x30]
	lea	rbp, [rsp + 0x138]
	nop	word ptr cs:[rax + rax]
.label_1577:
	mov	qword ptr [rsp + 0x30], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbp
	mov	rcx, rbx
	call	rpl_mbrtowc
	movzx	ecx, byte ptr [rsp + 0x138]
	cmp	rax, -2
	jne	.label_1574
	mov	byte ptr [r15 + rcx], 1
.label_1574:
	inc	cl
	mov	byte ptr [rsp + 0x138], cl
	jne	.label_1577
	jmp	.label_1572
	nop	
.label_1596:
	mov	qword ptr [rsp + 0x20], rdx
	movzx	ebx, byte ptr [rcx]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_1573
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_1582
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1582:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_1573:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_1572
	mov	rax, qword ptr [rsp + 0x28]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_1572
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rcx]
	mov	al, byte ptr [rax + r12]
	mov	byte ptr [rsp + 0x30], al
	mov	rdx, rcx
	inc	rbp
	cmp	rbp, qword ptr [rdx + 0x10]
	lea	r13, [rsp + 0x31]
	mov	esi, 0x2000ff
	jae	.label_1593
	add	r12, 0x18
	lea	r13, [rsp + 0x31]
	nop	
.label_1604:
	mov	rax, qword ptr [rdx]
	mov	ecx, dword ptr [rax + r12]
	and	ecx, esi
	cmp	ecx, 0x200001
	jne	.label_1593
	mov	al, byte ptr [rax + r12 - 8]
	mov	byte ptr [r13], al
	inc	r13
	inc	rbp
	add	r12, 0x10
	cmp	rbp, qword ptr [rdx + 0x10]
	jb	.label_1604
.label_1593:
	mov	qword ptr [rsp + 0x28], rdx
	mov	qword ptr [rsp + 0x138], 0
	lea	rbp, [rsp + 0x30]
	sub	r13, rbp
	lea	rdi, [rsp + 0x144]
	mov	rsi, rbp
	mov	rdx, r13
	lea	rbx, [rsp + 0x138]
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_1575
	mov	edi, dword ptr [rsp + 0x144]
	call	towlower
	mov	rdi, rbp
	mov	esi, eax
	mov	rdx, rbx
	call	wcrtomb
	cmp	rax, -1
	je	.label_1575
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_1575:
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_1572
	nop	dword ptr [rax]
.label_1579:
	cmp	ebx, 2
	je	.label_1585
	mov	eax, ebx
	or	eax, 2
	cmp	eax, 7
	jne	.label_1572
	jmp	.label_1585
.label_1597:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_1572
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1578:
	mov	qword ptr [rsp + 0x138], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x138]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1599
	movzx	ebx, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_1599
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_1584
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1584:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_1599:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_1569
	mov	rax, qword ptr [rsp + 0x28]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_1569
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp + 0x138]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1569
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	
.label_1569:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_1578
	nop	
.label_1572:
	mov	rdx, qword ptr [rsp + 0x20]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x18]
	cmp	rdx, qword ptr [rsi + 0x10]
	jl	.label_1594
.label_1568:
	add	rsp, 0x148
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1585:
	mov	esi, 1
	mov	edx, 0x100
	mov	rdi, r15
	call	memset
	cmp	ebx, 2
	jne	.label_1568
	or	byte ptr [r13 + 0x38], 1
	jmp	.label_1568
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4120b0

	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x100
	call	malloc
	mov	qword ptr [r15 + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_1608
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_1606
	mov	al, byte ptr [r15 + 0x38]
	and	al, 0x7f
	jmp	.label_1607
.label_1606:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_1607:
	mov	byte ptr [r15 + 0x38], al
	add	ebp, ebp
	and	bpl, 0x10
	and	al, 0xef
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	mov	qword ptr [r15 + 0x28], 0
	mov	rdi, r14
	call	strlen
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	mov	rcx, rbx
	call	re_compile_internal
	cmp	eax, 0x10
	mov	ebx, 8
	cmovne	ebx, eax
	test	ebx, ebx
	jne	.label_1609
	mov	rdi, r15
	call	rpl_re_compile_fastmap
	xor	ebx, ebx
.label_1608:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1609:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_1608
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4121a0
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_1610
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_1612
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_1613
.label_1611:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_1612:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1613:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_1611
.label_1610:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412220

	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_1614
	call	free_dfa_content
.label_1614:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412260

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rax, qword ptr [r14]
	test	rax, rax
	je	.label_1624
	xor	ebx, ebx
	mov	r12d, 8
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1624
	mov	ebp, 0x400ff
	jmp	.label_1615
	nop	dword ptr [rax]
.label_1632:
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_1615:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	je	.label_1617
	cmp	ecx, 6
	jne	.label_1620
	mov	r15, qword ptr [rax + r12 - 8]
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	jmp	.label_1627
	nop	word ptr cs:[rax + rax]
.label_1617:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_1627:
	call	free
.label_1620:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_1632
.label_1624:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1631
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1628:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_1619
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1619:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1622
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1622:
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.label_1625
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1625:
	inc	rbp
	add	rbx, 0x18
	cmp	rbp, qword ptr [r14 + 0x10]
	jb	.label_1628
	jmp	.label_1630
.label_1631:
	lea	r13, [r14 + 0x28]
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_1630:
	mov	rdi, qword ptr [r13]
	call	free
	mov	rdi, qword ptr [r12]
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, qword ptr [r14 + 0x40]
	test	rdi, rdi
	je	.label_1616
	xor	r15d, r15d
	jmp	.label_1618
.label_1629:
	mov	rdi, qword ptr [r14 + 0x40]
.label_1618:
	lea	rax, [r15 + r15*2]
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	jle	.label_1621
	lea	rbx, [rdi + rax*8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1626:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	cmp	rbp, qword ptr [rbx]
	jl	.label_1626
.label_1621:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_1629
	mov	rdi, qword ptr [r14 + 0x40]
.label_1616:
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_1623
	call	free
.label_1623:
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412430

	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	ebp, r8d
	mov	r12, rcx
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, 2
	cmp	ebp, 7
	ja	.label_1633
	test	bpl, 4
	jne	.label_1635
	mov	rdi, r14
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_1634
.label_1635:
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
.label_1634:
	test	byte ptr [rbx + 0x38], 0x10
	jne	.label_1637
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp], r15
	jmp	.label_1636
.label_1637:
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp], 0
.label_1636:
	mov	rdi, rbx
	mov	rsi, r14
	mov	r8, rdx
	mov	r9, rdx
	call	re_search_internal
	test	eax, eax
	setne	al
	movzx	eax, al
.label_1633:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4124d0

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x258
	mov	r13, r9
	mov	rbp, rcx
	mov	r9, qword ptr [rsp + 0x290]
	mov	r11, qword ptr [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x1e0], xmm0
	movaps	xmmword ptr [rsp + 0x1d0], xmm0
	movaps	xmmword ptr [rsp + 0x1c0], xmm0
	movaps	xmmword ptr [rsp + 0x1b0], xmm0
	movaps	xmmword ptr [rsp + 0x1a0], xmm0
	movaps	xmmword ptr [rsp + 0x190], xmm0
	movaps	xmmword ptr [rsp + 0x180], xmm0
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	movaps	xmmword ptr [rsp + 0x140], xmm0
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	mov	qword ptr [rsp + 0x188], r11
	mov	rax, qword ptr [rdi + 0x20]
	xor	r12d, r12d
	test	rax, rax
	je	.label_1684
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	movzx	ecx, cl
	xor	ebx, ebx
	cmp	ecx, 8
	cmovne	rax, rbx
	cmp	rbp, r8
	cmove	rax, rbx
	mov	r12, rax
.label_1684:
	mov	rax, qword ptr [rdi + 0x30]
	lea	r14, [r9 - 1]
	mov	rcx, r14
	sub	rcx, rax
	xor	ebx, ebx
	cmp	rax, r9
	cmovb	rbx, rcx
	mov	eax, 1
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_1730
	mov	r15, qword ptr [r11 + 0x48]
	test	r15, r15
	je	.label_1730
	mov	rcx, qword ptr [r11 + 0x50]
	test	rcx, rcx
	je	.label_1730
	mov	r10, qword ptr [r11 + 0x58]
	test	r10, r10
	je	.label_1739
	cmp	qword ptr [r11 + 0x60], 0
	je	.label_1739
	mov	rax, r13
	mov	r13, qword ptr [rdi + 0x28]
	mov	qword ptr [rsp + 0xd0], r13
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_1742
	mov	rcx, r8
	mov	r13, rax
	jmp	.label_1650
.label_1739:
	mov	eax, 1
	jmp	.label_1730
.label_1742:
	cmp	qword ptr [rcx + 0x10], 0
	mov	r13, rax
	je	.label_1748
	mov	rcx, r8
.label_1650:
	mov	qword ptr [rsp + 0xb0], rcx
	mov	qword ptr [rsp + 0xd8], r12
	mov	qword ptr [rsp + 0x68], r14
	mov	al, 1
	cmp	rbx, r9
	mov	qword ptr [rsp + 0xa0], rbx
	jne	.label_1750
	cmp	qword ptr [r11 + 0x98], 0
	setne	al
.label_1750:
	mov	byte ptr [rsp + 0xbe], al
	mov	r12, qword ptr [r11 + 0x10]
	inc	r12
	mov	rcx, qword ptr [rdi + 0x18]
	movsxd	rax, dword ptr [r11 + 0xb4]
	cmp	rax, r12
	cmovge	r12, rax
	lea	rbx, [rdx + 1]
	cmp	rbx, r12
	cmovle	r12, rbx
	mov	qword ptr [rsp + 0xf0], rsi
	mov	qword ptr [rsp + 0x148], rdx
	mov	qword ptr [rsp + 0x140], rdx
	mov	rbx, qword ptr [rsp + 0xd0]
	mov	qword ptr [rsp + 0x168], rbx
	shr	rcx, 0x16
	and	cl, 1
	mov	byte ptr [rsp + 0x178], cl
	test	rbx, rbx
	setne	bl
	or	bl, cl
	mov	byte ptr [rsp + 0x17b], bl
	mov	dword ptr [rsp + 0x180], eax
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 2
	and	cl, 1
	mov	byte ptr [rsp + 0x179], cl
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 3
	and	cl, 1
	cmp	rax, 2
	mov	byte ptr [rsp + 0x17a], cl
	mov	qword ptr [rsp + 0x158], rdx
	mov	qword ptr [rsp + 0x150], rdx
	jl	.label_1755
	mov	qword ptr [rsp + 0xe8], r11
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	mov	ecx, 0xc
	cmp	r12, rax
	ja	.label_1646
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0xe0], rdx
	mov	r14, rdi
	lea	rsi, [r12*4]
	xor	edi, edi
	call	realloc
	mov	ecx, 0xc
	test	rax, rax
	je	.label_1646
	mov	qword ptr [rsp + 0x100], rax
	mov	r11, qword ptr [rsp + 0xe8]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xc0]
.label_1755:
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0xe0], rdx
	test	bl, bl
	je	.label_1820
	mov	r14, rdi
	mov	qword ptr [rsp + 0xe8], r11
	xor	edi, edi
	mov	rsi, r12
	call	realloc
	mov	ecx, 0xc
	test	rax, rax
	je	.label_1646
	mov	qword ptr [rsp + 0xf8], rax
	mov	r11, qword ptr [rsp + 0xe8]
	mov	rdi, r14
.label_1820:
	mov	edx, dword ptr [rsp + 0x2a0]
	mov	qword ptr [rsp + 0x130], r12
	lea	rax, [r11 + 0xb8]
	mov	qword ptr [rsp + 0x170], rax
	mov	rax, qword ptr [r11 + 0xb0]
	mov	cl, al
	shr	cl, 4
	and	cl, 1
	mov	byte ptr [rsp + 0x17e], cl
	xor	ecx, ecx
	test	bl, bl
	jne	.label_1817
	shr	rax, 0x20
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	qword ptr [rsp + 0xf8], rcx
	xor	ecx, ecx
	cmp	eax, 1
	cmovle	rcx, qword ptr [rsp + 0xe0]
.label_1817:
	mov	qword ptr [rsp + 0x120], rcx
	mov	qword ptr [rsp + 0x128], rcx
	mov	qword ptr [rsp + 0x158], r13
	mov	qword ptr [rsp + 0x150], r13
	mov	al, byte ptr [rdi + 0x38]
	mov	qword ptr [rsp + 0x80], rdi
	shr	al, 7
	mov	byte ptr [rsp + 0x17d], al
	mov	rbx, qword ptr [r11 + 0x98]
	mov	qword ptr [rsp + 0xe8], r11
	lea	r14, [rbx + rbx]
	mov	dword ptr [rsp + 0x190], edx
	mov	qword ptr [rsp + 0x198], -1
	test	rbx, rbx
	jle	.label_1649
	mov	ecx, 0xc
	movabs	rax, 0x666666666666666
	cmp	r14, rax
	ja	.label_1646
	shl	rbx, 4
	lea	rdi, [rbx + rbx*4]
	call	malloc
	mov	r13, rax
	mov	qword ptr [rsp + 0x1c8], r13
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0x1e8], rax
	test	r13, r13
	je	.label_1681
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1646
.label_1649:
	mov	rax, qword ptr [rsp + 0x290]
	mov	rcx, rax
	mov	rax, qword ptr [rsp + 0xa0]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x58], rcx
	mov	qword ptr [rsp + 0x1c0], r14
	mov	dword ptr [rsp + 0x1d0], 1
	mov	qword ptr [rsp + 0x1e0], r14
	cmp	rcx, 1
	mov	rax, qword ptr [rsp + 0xe8]
	ja	.label_1651
	mov	rdi, qword ptr [rax + 0xb0]
	test	dil, 2
	jne	.label_1651
	shr	rdi, 0x20
	mov	qword ptr [rsp + 0x1a8], 0
	jmp	.label_1707
.label_1651:
	mov	ecx, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	r12, rax
	ja	.label_1646
	lea	rdi, [r12*8 + 8]
	call	malloc
	mov	ecx, 0xc
	mov	qword ptr [rsp + 0x1a8], rax
	test	rax, rax
	je	.label_1646
	mov	rax, qword ptr [rsp + 0xe8]
	mov	edi, dword ptr [rax + 0xb4]
.label_1707:
	mov	r13, qword ptr [rsp + 0xd8]
	mov	qword ptr [rsp + 0xc8], rdi
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0x1f8], rbp
	mov	eax, dword ptr [rsp + 0x2a0]
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0x160], eax
	mov	rbx, qword ptr [rsp + 0xb0]
	cmp	rbx, rbp
	mov	rax, rbp
	cmovle	rax, rbx
	mov	qword ptr [rsp + 0x78], rax
	mov	r8, rax
	mov	r14, rbx
	cmovl	r14, rbp
	mov	qword ptr [rsp + 0x70], r14
	mov	edx, 8
	test	r13, r13
	je	.label_1726
	cmp	edi, 1
	je	.label_1819
	mov	ecx, 0x400000
	xor	eax, eax
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rdx, qword ptr [rsp + 0x80]
	jne	.label_1743
	and	rcx, qword ptr [rdx + 0x18]
	jne	.label_1743
.label_1819:
	mov	eax, 4
.label_1743:
	cmp	qword ptr [rsp + 0xd0], 0
	setne	cl
	cmp	rbp, rbx
	setle	dl
	movzx	ecx, cl
	movzx	edx, dl
	lea	edx, [rcx + rdx*2]
	or	edx, eax
.label_1726:
	mov	qword ptr [rsp + 0xc8], rdi
	xor	eax, eax
	cmp	rbp, rbx
	setle	byte ptr [rsp + 0xbf]
	lea	rcx, [rsp + 0x1f8]
	cmovg	rcx, rax
	mov	qword ptr [rsp + 0x88], rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	cmp	rbx, rbp
	mov	eax, 1
	mov	rcx, -1
	cmovge	rcx, rax
	mov	qword ptr [rsp + 0xd8], rcx
	add	edx, -4
	mov	qword ptr [rsp + 0xb0], rdx
	mov	rbx, r8
	jmp	.label_1641
.label_1693:
	mov	r12, qword ptr [rsp + 0xc8]
	cmp	r12d, 1
	je	.label_1763
	mov	rax, qword ptr [rsp + 0x120]
	test	rax, rax
	je	.label_1763
	mov	rax, qword ptr [rsp + 0x100]
	cmp	dword ptr [rax], -1
	je	.label_1769
.label_1763:
	mov	dword ptr [rsp + 0x1d0], 0
	lea	rax, [rsp + 0x1b0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	r15, qword ptr [rsp + 0x188]
	mov	r14, qword ptr [rsp + 0x138]
	mov	dword ptr [rsp + 0x254], 0
	mov	rbx, qword ptr [r15 + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	js	.label_1773
	mov	r12b, byte ptr [rsp + 0xbe]
	jmp	.label_1643
.label_1773:
	test	r14, r14
	jle	.label_1788
	lea	rax, [r14 - 1]
	cmp	qword ptr [rsp + 0x148], rax
	je	.label_1790
	cmp	dword ptr [rsp + 0x180], 2
	mov	r12b, byte ptr [rsp + 0xbe]
	jl	.label_1793
	mov	rax, qword ptr [rsp + 0x100]
	mov	rcx, r14
	nop	dword ptr [rax]
.label_1800:
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	cmp	ebp, -1
	jne	.label_1798
	dec	rcx
	jg	.label_1800
	mov	ecx, dword ptr [rsp + 0x160]
	jmp	.label_1801
.label_1793:
	mov	rcx, qword ptr [rsp + 0xf8]
	mov	rdx, qword ptr [rsp + 0x170]
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	bt	rcx, rax
	jb	.label_1654
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_1643
	jmp	.label_1809
.label_1798:
	cmp	byte ptr [rsp + 0x17e], 0
	jne	.label_1810
.label_1655:
	cmp	ebp, 0xa
	jne	.label_1643
.label_1809:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x17d], 0
	jne	.label_1801
	xor	ecx, ecx
	jmp	.label_1801
.label_1788:
	mov	ecx, dword ptr [rsp + 0x160]
	mov	r12b, byte ptr [rsp + 0xbe]
	jmp	.label_1801
.label_1790:
	mov	ecx, dword ptr [rsp + 0x190]
	and	ecx, 2
	xor	ecx, 0xa
	mov	r12b, byte ptr [rsp + 0xbe]
.label_1801:
	test	cl, 1
	jne	.label_1654
	test	ecx, ecx
	je	.label_1643
	mov	eax, ecx
	and	eax, 4
	sete	sil
	mov	edx, ecx
	and	edx, 2
	je	.label_1642
	test	sil, sil
	jne	.label_1642
	mov	rbx, qword ptr [r15 + 0x60]
	jmp	.label_1643
.label_1642:
	test	edx, edx
	jne	.label_1644
	test	eax, eax
	je	.label_1643
	mov	rdx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x254]
	mov	rsi, r15
	call	re_acquire_state_context
	mov	rbx, rax
	jmp	.label_1643
.label_1644:
	mov	rbx, qword ptr [r15 + 0x58]
	jmp	.label_1643
.label_1810:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	je	.label_1654
	test	eax, eax
	je	.label_1655
.label_1654:
	mov	rbx, qword ptr [r15 + 0x50]
.label_1643:
	mov	cl, byte ptr [rsp + 0xbf]
	test	rbx, rbx
	je	.label_1657
	mov	rax, qword ptr [rsp + 0x1a8]
	test	rax, rax
	mov	dl, cl
	mov	dword ptr [rsp + 0x90], edx
	je	.label_1658
	mov	qword ptr [rax + r14*8], rbx
	cmp	qword ptr [r15 + 0x98], 0
	mov	al, cl
	mov	dword ptr [rsp + 0x90], eax
	jne	.label_1665
.label_1658:
	mov	byte ptr [rsp + 0xbf], cl
	mov	cl, byte ptr [rbx + 0x68]
	mov	r15, -1
	test	cl, 0x10
	mov	eax, 0
	jne	.label_1671
.label_1682:
	mov	rbp, qword ptr [rsp + 0x138]
	mov	rcx, qword ptr [rsp + 0x88]
.label_1679:
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0xa8], r14
	cmp	qword ptr [rsp + 0x158], rbp
	jle	.label_1638
	test	rax, rax
	sete	al
	or	al, r12b
	mov	byte ptr [rsp + 0x57], al
	mov	r14, rbx
	jmp	.label_1676
.label_1785:
	mov	qword ptr [rsp + 0x40], r15
	cmp	qword ptr [r14 + 0x10], 0
	jle	.label_1691
	mov	rsi, qword ptr [rsp + 0x188]
	mov	qword ptr [rsp + 0x30], rsi
	xor	r15d, r15d
	jmp	.label_1695
.label_1797:
	mov	rax, qword ptr [rsp + 0x138]
	test	rax, rax
	jle	.label_1700
	lea	rdx, [rax - 1]
	mov	ecx, 0xa
	cmp	qword ptr [rsp + 0x148], rdx
	je	.label_1705
	cmp	dword ptr [rsp + 0x180], 2
	jl	.label_1709
	mov	rcx, qword ptr [rsp + 0x100]
.label_1713:
	mov	ebx, dword ptr [rcx + rax*4 - 4]
	cmp	ebx, -1
	jne	.label_1712
	dec	rax
	jg	.label_1713
	mov	ecx, dword ptr [rsp + 0x160]
	jmp	.label_1705
.label_1656:
	cmp	r14, rbx
	je	.label_1741
	mov	dword ptr [rsp + 0x90], 0
.label_1741:
	mov	r14, qword ptr [rsp + 0xa8]
	cmove	r14, qword ptr [rsp + 0x98]
	jmp	.label_1721
.label_1709:
	mov	rax, qword ptr [rsp + 0xf8]
	mov	rcx, qword ptr [rsp + 0x170]
	movzx	eax, byte ptr [rax + rdx]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_1705
	xor	ecx, ecx
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_1705
	jmp	.label_1737
.label_1712:
	cmp	byte ptr [rsp + 0x17e], 0
	jne	.label_1738
.label_1764:
	xor	ecx, ecx
	cmp	ebx, 0xa
	jne	.label_1705
.label_1737:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x17d], 0
	jne	.label_1705
	xor	ecx, ecx
	jmp	.label_1705
.label_1808:
	mov	dword ptr [rsp + 0x2c], eax
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rsi
	mov	edi, ebx
	call	iswalnum
	xor	edx, edx
	cmp	ebx, 0x5f
	mov	edi, 1
	je	.label_1674
	test	eax, eax
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rsp + 0x2c]
	je	.label_1688
	jmp	.label_1716
.label_1683:
	mov	edi, ebx
	call	iswalnum
	cmp	ebx, 0x5f
	mov	ecx, 1
	je	.label_1759
	test	eax, eax
	lea	rdi, [rsp + 0x238]
	je	.label_1794
	jmp	.label_1699
.label_1674:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rsp + 0x2c]
	jmp	.label_1716
.label_1759:
	lea	rdi, [rsp + 0x238]
	jmp	.label_1699
.label_1695:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rsi]
	mov	rcx, rbp
	shl	rcx, 4
	mov	eax, dword ptr [rax + rcx + 8]
	test	eax, 0x100000
	je	.label_1745
	mov	r12d, eax
	shr	r12d, 8
	test	r12w, 0x3ff
	mov	rcx, qword ptr [rsp + 0x138]
	je	.label_1766
	test	rcx, rcx
	js	.label_1673
	cmp	qword ptr [rsp + 0x148], rcx
	je	.label_1774
	mov	r8d, eax
	cmp	dword ptr [rsp + 0x180], 2
	jl	.label_1777
	mov	rax, qword ptr [rsp + 0x100]
	lea	rdx, [rcx + 1]
.label_1783:
	mov	ebx, dword ptr [rax + rdx*4 - 4]
	cmp	ebx, -1
	jne	.label_1781
	dec	rdx
	test	rdx, rdx
	jg	.label_1783
	mov	edi, dword ptr [rsp + 0x160]
	jmp	.label_1690
.label_1777:
	mov	rax, qword ptr [rsp + 0xf8]
	mov	rdi, qword ptr [rsp + 0x170]
	movzx	eax, byte ptr [rax + rcx]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rdi + rdx*8]
	xor	edi, edi
	bt	rdx, rax
	jae	.label_1786
	mov	edi, 1
	xor	edx, edx
	mov	eax, r8d
	jmp	.label_1716
.label_1781:
	cmp	byte ptr [rsp + 0x17e], 0
	mov	eax, r8d
	jne	.label_1808
.label_1688:
	mov	r8d, eax
	xor	edi, edi
	cmp	ebx, 0xa
	je	.label_1799
	jmp	.label_1690
.label_1786:
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_1690
.label_1799:
	mov	edi, 2
	cmp	byte ptr [rsp + 0x17d], 0
	jne	.label_1690
	xor	edi, edi
	jmp	.label_1690
.label_1673:
	mov	r8d, eax
	mov	edi, dword ptr [rsp + 0x160]
	jmp	.label_1690
.label_1774:
	mov	r8d, eax
	mov	edi, dword ptr [rsp + 0x190]
	and	edi, 2
	xor	edi, 0xa
.label_1690:
	mov	eax, edi
	and	eax, 1
	sete	dl
	test	r12b, 4
	je	.label_1806
	test	eax, eax
	mov	eax, r8d
	je	.label_1745
	jmp	.label_1716
.label_1806:
	mov	eax, r8d
.label_1716:
	test	ah, 8
	je	.label_1813
	test	dl, dl
	je	.label_1745
.label_1813:
	test	ah, 0x20
	je	.label_1815
	mov	eax, edi
	and	eax, 2
	je	.label_1745
.label_1815:
	test	r12b, r12b
	jns	.label_1766
	and	edi, 8
	je	.label_1745
.label_1766:
	mov	rbx, rsi
	mov	rdi, rbx
	mov	rsi, rbp
	lea	rdx, [rsp + 0xf0]
	call	check_node_accept_bytes
	mov	rsi, rbx
	test	eax, eax
	je	.label_1745
	movsxd	r12, eax
	add	r12, qword ptr [rsp + 0x138]
	mov	ecx, dword ptr [rsp + 0x1d0]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	dword ptr [rsp + 0x1d0], ecx
	mov	rbx, qword ptr [rsp + 0x1b0]
	mov	rcx, qword ptr [rsp + 0x130]
	mov	rax, qword ptr [rsp + 0x148]
	cmp	rcx, r12
	jg	.label_1639
	cmp	rcx, rax
	jl	.label_1717
.label_1639:
	mov	rcx, qword ptr [rsp + 0x120]
	cmp	rcx, r12
	jg	.label_1653
	cmp	rcx, rax
	jge	.label_1653
.label_1717:
	lea	esi, [r12 + 1]
	lea	rdi, [rsp + 0xf0]
	call	extend_buffers
	test	eax, eax
	jne	.label_1659
.label_1653:
	mov	rdx, r12
	sub	rdx, rbx
	jle	.label_1661
	mov	rax, qword ptr [rsp + 0x1a8]
	lea	rdi, [rax + rbx*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	qword ptr [rsp + 0x1b0], r12
.label_1661:
	mov	dword ptr [rsp + 0x238], 0
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rax + rbp*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [rcx + 0x30]
	mov	rax, qword ptr [rsp + 0x1a8]
	mov	rbx, qword ptr [rax + r12*8]
	mov	rbp, rcx
	test	rbx, rbx
	je	.label_1672
	mov	rsi, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x200]
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x238], eax
	test	eax, eax
	je	.label_1708
	jmp	.label_1722
.label_1672:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x210], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x200], xmm0
.label_1708:
	mov	qword ptr [rsp + 0x38], rbx
	test	r12, r12
	jle	.label_1803
	lea	rax, [r12 - 1]
	cmp	qword ptr [rsp + 0x148], rax
	lea	rdi, [rsp + 0x238]
	je	.label_1744
	cmp	dword ptr [rsp + 0x180], 2
	jl	.label_1706
	mov	rax, qword ptr [rsp + 0x100]
	mov	rcx, r12
.label_1818:
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	cmp	ebx, -1
	jne	.label_1710
	dec	rcx
	jg	.label_1818
	mov	ecx, dword ptr [rsp + 0x160]
	jmp	.label_1699
.label_1706:
	mov	rcx, qword ptr [rsp + 0xf8]
	mov	rdx, qword ptr [rsp + 0x170]
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_1699
	xor	ecx, ecx
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_1699
	jmp	.label_1725
.label_1710:
	cmp	byte ptr [rsp + 0x17e], 0
	jne	.label_1683
.label_1794:
	xor	ecx, ecx
	cmp	ebx, 0xa
	jne	.label_1699
.label_1725:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x17d], 0
	jne	.label_1699
	xor	ecx, ecx
	jmp	.label_1699
.label_1803:
	mov	ecx, dword ptr [rsp + 0x160]
	lea	rdi, [rsp + 0x238]
	jmp	.label_1699
.label_1744:
	mov	ecx, dword ptr [rsp + 0x190]
	and	ecx, 2
	xor	ecx, 0xa
.label_1699:
	mov	rsi, rbp
	lea	rdx, [rsp + 0x200]
	call	re_acquire_state_context
	cmp	qword ptr [rsp + 0x38], 0
	mov	rcx, qword ptr [rsp + 0x1a8]
	mov	qword ptr [rcx + r12*8], rax
	je	.label_1740
	mov	rdi, qword ptr [rsp + 0x210]
	call	free
.label_1740:
	mov	rax, qword ptr [rsp + 0x1a8]
	cmp	qword ptr [rax + r12*8], 0
	mov	rsi, rbp
	jne	.label_1745
	mov	eax, dword ptr [rsp + 0x238]
	test	eax, eax
	jne	.label_1722
.label_1745:
	inc	r15
	cmp	r15, qword ptr [r14 + 0x10]
	jl	.label_1695
.label_1691:
	mov	dword ptr [rsp + 0x254], 0
	mov	r12b, byte ptr [rsp + 0xbe]
	mov	r15, qword ptr [rsp + 0x40]
	jmp	.label_1751
.label_1700:
	mov	ecx, dword ptr [rsp + 0x160]
.label_1705:
	and	ecx, 1
	shl	rcx, 8
	or	rcx, rbp
	mov	rbx, qword ptr [r15 + rcx*8]
	mov	r15, qword ptr [rsp + 0x40]
	jmp	.label_1666
.label_1659:
	mov	dword ptr [rsp + 0x238], eax
.label_1722:
	mov	dword ptr [rsp + 0x254], eax
	xor	ebx, ebx
	mov	r12b, byte ptr [rsp + 0xbe]
	mov	r15, qword ptr [rsp + 0x40]
	jmp	.label_1666
.label_1738:
	mov	edi, ebx
	call	iswalnum
	cmp	ebx, 0x5f
	mov	ecx, 1
	je	.label_1705
	test	eax, eax
	je	.label_1764
	jmp	.label_1705
.label_1676:
	lea	rdx, [rbp + 1]
	mov	qword ptr [rsp + 0x98], rdx
	mov	rcx, qword ptr [rsp + 0x130]
	mov	rax, qword ptr [rsp + 0x148]
	cmp	rdx, rcx
	jl	.label_1767
	cmp	rcx, rax
	jl	.label_1685
.label_1767:
	mov	rcx, qword ptr [rsp + 0x120]
	cmp	qword ptr [rsp + 0x98], rcx
	jl	.label_1776
	cmp	rcx, rax
	jge	.label_1776
.label_1685:
	add	ebp, 2
	lea	rdi, [rsp + 0xf0]
	mov	esi, ebp
	call	extend_buffers
	mov	dword ptr [rsp + 0x254], eax
	test	eax, eax
	jne	.label_1782
.label_1776:
	test	byte ptr [r14 + 0x68], 0x20
	jne	.label_1785
.label_1751:
	mov	rax, qword ptr [rsp + 0x138]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x138], rcx
	mov	rcx, qword ptr [rsp + 0xf8]
	movzx	ebp, byte ptr [rcx + rax]
.label_1802:
	mov	rax, qword ptr [r14 + 0x58]
	test	rax, rax
	jne	.label_1795
	mov	qword ptr [rsp + 0x40], r15
	mov	r15, qword ptr [r14 + 0x60]
	test	r15, r15
	jne	.label_1797
	mov	rdi, qword ptr [rsp + 0x188]
	mov	rsi, r14
	call	build_trtable
	test	al, al
	mov	r15, qword ptr [rsp + 0x40]
	jne	.label_1802
	mov	dword ptr [rsp + 0x254], 0xc
	xor	ebx, ebx
	jmp	.label_1666
.label_1795:
	mov	rbx, qword ptr [rax + rbp*8]
.label_1666:
	cmp	qword ptr [rsp + 0x1a8], 0
	je	.label_1805
	lea	rdi, [rsp + 0x254]
	lea	rsi, [rsp + 0xf0]
	mov	rdx, rbx
	call	merge_state_with_log
	mov	rbx, rax
.label_1805:
	test	rbx, rbx
	jne	.label_1811
	cmp	dword ptr [rsp + 0x254], 0
	jne	.label_1681
	mov	rax, qword ptr [rsp + 0x1a8]
	test	rax, rax
	setne	cl
	and	cl, byte ptr [rsp + 0x57]
	movzx	ecx, cl
	cmp	ecx, 1
	je	.label_1754
	jmp	.label_1638
.label_1652:
	mov	rax, qword ptr [rsp + 0x1a8]
.label_1754:
	mov	rdx, qword ptr [rsp + 0x138]
	mov	rcx, qword ptr [rsp + 0x1b0]
	nop	word ptr cs:[rax + rax]
.label_1768:
	cmp	rdx, rcx
	jge	.label_1638
	lea	rsi, [rdx + 1]
	mov	qword ptr [rsp + 0x138], rsi
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	je	.label_1768
	xor	edx, edx
	lea	rdi, [rsp + 0x254]
	lea	rsi, [rsp + 0xf0]
	call	merge_state_with_log
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_1645
	mov	eax, dword ptr [rsp + 0x254]
	test	eax, eax
	je	.label_1652
.label_1645:
	test	rbx, rbx
	je	.label_1638
.label_1811:
	mov	eax, dword ptr [rsp + 0x90]
	test	al, 1
	jne	.label_1656
	mov	r14, qword ptr [rsp + 0xa8]
.label_1721:
	mov	al, byte ptr [rbx + 0x68]
	test	al, 0x10
	jne	.label_1660
	mov	qword ptr [rsp + 0xa8], r14
	mov	rbp, qword ptr [rsp + 0x138]
	jmp	.label_1663
.label_1660:
	mov	rbp, qword ptr [rsp + 0x138]
	test	al, al
	jns	.label_1668
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbx
	mov	rdx, rbp
	call	check_halt_state_context
	test	rax, rax
	jne	.label_1668
	mov	qword ptr [rsp + 0xa8], r14
.label_1663:
	cmp	qword ptr [rsp + 0x158], rbp
	mov	r14, rbx
	jg	.label_1676
	jmp	.label_1638
.label_1668:
	test	r12b, r12b
	mov	r15, rbp
	mov	eax, 1
	mov	ecx, 0
	jne	.label_1679
	jmp	.label_1686
.label_1638:
	mov	rcx, qword ptr [rsp + 0x60]
	test	rcx, rcx
	je	.label_1701
	mov	rax, qword ptr [rsp + 0xa8]
	add	qword ptr [rcx], rax
	mov	rbp, r15
	jmp	.label_1686
.label_1701:
	mov	rbp, r15
.label_1686:
	mov	byte ptr [rsp + 0xbe], r12b
	cmp	rbp, -1
	mov	r12, qword ptr [rsp + 0xc8]
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x70]
	je	.label_1692
	mov	ecx, 0xc
	cmp	rbp, -2
	je	.label_1646
	cmp	qword ptr [rsp + 0x58], 1
	seta	al
	mov	qword ptr [rsp + 0x198], rbp
	mov	rcx, qword ptr [rsp + 0x80]
	test	byte ptr [rcx + 0x38], 0x10
	sete	bl
	and	bl, al
	je	.label_1704
	mov	rax, qword ptr [rsp + 0x1a8]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0xf0]
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x1a0], rax
	mov	r12, qword ptr [rsp + 0xe8]
	jmp	.label_1715
.label_1704:
	mov	r12, qword ptr [rsp + 0xe8]
	cmp	qword ptr [r12 + 0x98], 0
	je	.label_1720
	mov	rax, qword ptr [rsp + 0x1a8]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0xf0]
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x1a0], rax
	test	bl, 1
	je	.label_1733
.label_1715:
	test	byte ptr [r12 + 0xb0], 1
	jne	.label_1735
.label_1733:
	cmp	qword ptr [r12 + 0x98], 0
	je	.label_1720
.label_1735:
	mov	qword ptr [rsp + 0xe8], r12
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbp, rax
	ja	.label_1681
	mov	r14, qword ptr [rsp + 0x188]
	mov	rax, qword ptr [rsp + 0x1a0]
	mov	qword ptr [rsp + 0x98], rax
	lea	r12, [rbp*8 + 8]
	mov	rdi, r12
	call	malloc
	test	rax, rax
	mov	rbx, rax
	mov	r15d, 0
	je	.label_1746
	cmp	qword ptr [r14 + 0x98], 0
	je	.label_1749
	mov	qword ptr [rsp + 0x90], r14
	mov	rdi, r12
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_1753
	xor	esi, esi
	mov	rdi, r15
	mov	rdx, r12
	call	memset
	mov	r12, rbx
	mov	qword ptr [rsp + 0xa8], r12
	mov	qword ptr [rsp + 0x200], r12
	mov	qword ptr [rsp + 0x208], r15
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x210], rax
	mov	qword ptr [rsp + 0x218], rbp
	lea	rax, [rsp + 0x220]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0xf0]
	lea	rsi, [rsp + 0x200]
	call	sift_states_backward
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x70]
	jne	.label_1771
.label_1814:
	mov	rsi, qword ptr [r12]
	test	rsi, rsi
	jne	.label_1689
	cmp	qword ptr [r15], 0
	mov	esi, 0
	jne	.label_1689
	mov	r12, r15
	test	rbp, rbp
	jle	.label_1779
	mov	rax, qword ptr [rsp + 0x1a8]
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_1791:
	mov	rsi, qword ptr [rax + rbp*8]
	test	rsi, rsi
	je	.label_1756
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_1789
.label_1756:
	lea	rcx, [rbp - 1]
	inc	rbp
	cmp	rbp, 2
	mov	rbp, rcx
	jge	.label_1791
	jmp	.label_1779
.label_1789:
	lea	r15, [rsp + 0xf0]
	mov	rdi, r15
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x98], rax
	lea	rdx, [rbp*8 + 8]
	xor	esi, esi
	mov	rdi, r12
	call	memset
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	qword ptr [rsp + 0x200], rcx
	mov	qword ptr [rsp + 0x208], r12
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x210], rax
	mov	qword ptr [rsp + 0x218], rbp
	lea	rax, [rsp + 0x220]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, r15
	mov	r15, r12
	mov	r12, rcx
	lea	rsi, [rsp + 0x200]
	call	sift_states_backward
	test	eax, eax
	je	.label_1814
	mov	r12, r15
	jmp	.label_1697
.label_1749:
	mov	qword ptr [rsp + 0xa8], rbx
	mov	qword ptr [rsp + 0x200], rbx
	mov	qword ptr [rsp + 0x208], 0
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x210], rax
	mov	qword ptr [rsp + 0x218], rbp
	lea	rax, [rsp + 0x220]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0xf0]
	lea	rsi, [rsp + 0x200]
	call	sift_states_backward
	test	eax, eax
	mov	r12d, 0
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x70]
	jne	.label_1697
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	qword ptr [rax], 0
	mov	r12d, 0
	jne	.label_1728
.label_1779:
	mov	rdi, qword ptr [rsp + 0xa8]
	call	free
	mov	rdi, r12
	call	free
	mov	r12, qword ptr [rsp + 0xc8]
.label_1692:
	lea	rdi, [rsp + 0xf0]
	call	match_ctx_clean
.label_1769:
	mov	rbp, qword ptr [rsp + 0x1f8]
	add	rbp, qword ptr [rsp + 0xd8]
	mov	qword ptr [rsp + 0x1f8], rbp
	cmp	rbp, rbx
	mov	ecx, 1
	jl	.label_1646
	mov	qword ptr [rsp + 0xc8], r12
	cmp	r14, rbp
	jge	.label_1641
	jmp	.label_1646
.label_1671:
	test	cl, cl
	js	.label_1669
	test	r12b, r12b
	mov	r15, r14
	mov	eax, 1
	jne	.label_1682
	mov	rbp, r14
	jmp	.label_1686
.label_1665:
	mov	byte ptr [rsp + 0xbf], cl
	lea	rbp, [rbx + 8]
	xor	edx, edx
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbp
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 0x254], eax
	test	eax, eax
	jne	.label_1694
	test	byte ptr [rbx + 0x68], 0x40
	je	.label_1698
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbp
	call	transit_state_bkref
	mov	dword ptr [rsp + 0x254], eax
	test	eax, eax
	jne	.label_1703
.label_1698:
	mov	dword ptr [rsp + 0x90], 0
	mov	cl, byte ptr [rsp + 0xbf]
	jmp	.label_1658
.label_1669:
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbx
	mov	rdx, r14
	call	check_halt_state_context
	cmp	rax, 1
	sbb	r15, r15
	test	rax, rax
	sete	cl
	setne	al
	movzx	eax, al
	or	cl, r12b
	je	.label_1714
	or	r15, r14
	jmp	.label_1682
.label_1714:
	mov	rbp, r14
	jmp	.label_1686
.label_1689:
	mov	qword ptr [rsp + 0xa8], r12
	test	rbp, rbp
	js	.label_1723
	xor	r12d, r12d
	jmp	.label_1724
.label_1758:
	mov	rax, qword ptr [rsp + 0xa8]
	mov	rsi, qword ptr [rax + r12*8 + 8]
	inc	r12
.label_1724:
	mov	rdx, qword ptr [r15 + r12*8]
	test	rsi, rsi
	je	.label_1732
	test	rdx, rdx
	je	.label_1734
	add	rsi, 8
	add	rdx, 8
	lea	rbx, [rsp + 0x238]
	mov	rdi, rbx
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x254], eax
	test	eax, eax
	jne	.label_1680
	lea	rdi, [rsp + 0x254]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, rbx
	call	re_acquire_state
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x248]
	call	free
	mov	eax, dword ptr [rsp + 0x254]
	test	eax, eax
	je	.label_1734
	jmp	.label_1680
.label_1732:
	mov	rax, qword ptr [rsp + 0xa8]
	mov	qword ptr [rax + r12*8], rdx
.label_1734:
	cmp	r12, rbp
	jl	.label_1758
.label_1723:
	xor	eax, eax
.label_1680:
	mov	rdi, r15
	mov	ebx, eax
	call	free
	mov	eax, ebx
	test	eax, eax
	mov	r12d, 0
	mov	r14, qword ptr [rsp + 0x70]
	mov	rbx, qword ptr [rsp + 0x78]
	je	.label_1728
	jmp	.label_1697
.label_1771:
	mov	qword ptr [rsp + 0xa8], r12
	mov	r12, r15
.label_1697:
	mov	r15, rbx
	mov	rdi, qword ptr [rsp + 0xa8]
	mov	ebp, eax
	call	free
	mov	rdi, r12
	call	free
	test	ebp, ebp
	mov	eax, ebp
	mov	r12, qword ptr [rsp + 0xe8]
	je	.label_1720
	mov	ecx, eax
	cmp	ecx, 1
	mov	r12, qword ptr [rsp + 0xc8]
	mov	rbx, r15
	je	.label_1692
	jmp	.label_1646
.label_1694:
	movsxd	rbp, eax
	jmp	.label_1686
.label_1703:
	movsxd	rbp, eax
	jmp	.label_1686
.label_1641:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	eax, 4
	ja	.label_1770
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1772]]
.label_3523:
	cmp	rbp, rbx
	mov	rax, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0xd0]
	jl	.label_1775
	nop	word ptr cs:[rax + rax]
.label_1792:
	xor	eax, eax
	cmp	rbp, rcx
	jge	.label_1784
	movzx	eax, byte ptr [rdx + rbp]
.label_1784:
	test	rsi, rsi
	je	.label_1752
	movzx	eax, byte ptr [rsi + rax]
.label_1752:
	cmp	byte ptr [r13 + rax], 0
	jne	.label_1787
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x1f8], rax
	cmp	rbp, rbx
	mov	rbp, rax
	jg	.label_1792
	jmp	.label_1775
.label_1770:
	mov	rax, qword ptr [rsp + 0x118]
	jmp	.label_1796
	nop	word ptr cs:[rax + rax]
.label_1821:
	add	rbp, qword ptr [rsp + 0xd8]
	mov	qword ptr [rsp + 0x1f8], rbp
	cmp	rbp, rbx
	mov	ecx, 1
	jl	.label_1646
	cmp	rbp, r14
	jle	.label_1796
	jmp	.label_1646
.label_1761:
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x2a0]
	call	re_string_reconstruct
	mov	ecx, eax
	test	ecx, ecx
	jne	.label_1646
	mov	rbp, qword ptr [rsp + 0x1f8]
	mov	rax, qword ptr [rsp + 0x118]
	mov	rcx, rbp
	sub	rcx, rax
	jmp	.label_1727
	nop	word ptr cs:[rax + rax]
.label_1796:
	mov	rcx, rbp
	sub	rcx, rax
	cmp	rcx, qword ptr [rsp + 0x128]
	jae	.label_1761
.label_1727:
	mov	rdx, qword ptr [rsp + 0xe0]
	cmp	rbp, rdx
	mov	edx, 0
	jge	.label_1816
	mov	rdx, qword ptr [rsp + 0xf8]
	movzx	edx, byte ptr [rdx + rcx]
.label_1816:
	cmp	byte ptr [r13 + rdx], 0
	je	.label_1821
	jmp	.label_1667
.label_3524:
	cmp	rbp, r14
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rdx, qword ptr [rsp + 0xd0]
	jge	.label_1647
	nop	word ptr cs:[rax + rax]
.label_1648:
	movzx	eax, byte ptr [rcx + rbp]
	cmp	byte ptr [r13 + rax], 0
	jne	.label_1647
	inc	rbp
	mov	qword ptr [rsp + 0x1f8], rbp
	cmp	rbp, r14
	jl	.label_1648
	jmp	.label_1647
.label_3525:
	cmp	rbp, r14
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rdx, qword ptr [rsp + 0xd0]
	jge	.label_1647
	nop	word ptr cs:[rax + rax]
.label_1662:
	movzx	eax, byte ptr [rcx + rbp]
	movzx	eax, byte ptr [rdx + rax]
	cmp	byte ptr [r13 + rax], 0
	jne	.label_1647
	inc	rbp
	mov	qword ptr [rsp + 0x1f8], rbp
	cmp	rbp, r14
	jl	.label_1662
.label_1647:
	mov	qword ptr [rsp + 0xd0], rdx
	mov	qword ptr [rsp + 0xc0], rcx
	cmp	rbp, r14
	jne	.label_1667
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0xe0]
	cmp	r14, rcx
	mov	rcx, qword ptr [rsp + 0xc0]
	jge	.label_1670
	movzx	eax, byte ptr [rcx + r14]
.label_1670:
	mov	rcx, qword ptr [rsp + 0xd0]
	test	rcx, rcx
	je	.label_1677
	movzx	eax, byte ptr [rcx + rax]
.label_1677:
	mov	ecx, 1
	cmp	byte ptr [r13 + rax], 0
	mov	rbp, r14
	jne	.label_1667
	jmp	.label_1646
.label_1787:
	mov	rax, rbp
.label_1775:
	mov	ecx, 1
	cmp	rax, rbx
	mov	rbp, rax
	jl	.label_1646
.label_1667:
	lea	rdi, [rsp + 0xf0]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x2a0]
	call	re_string_reconstruct
	mov	ecx, eax
	test	ecx, ecx
	je	.label_1693
	jmp	.label_1646
.label_1782:
	cmp	eax, 0xc
	jne	.label_1696
.label_1681:
	mov	ecx, 0xc
.label_1646:
	mov	ebx, ecx
	mov	rdi, qword ptr [rsp + 0x1a8]
	call	free
	mov	rax, qword ptr [rsp + 0xe8]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1702
	lea	rdi, [rsp + 0xf0]
	call	match_ctx_clean
	mov	rdi, qword ptr [rsp + 0x1e8]
	call	free
	mov	rdi, qword ptr [rsp + 0x1c8]
	call	free
.label_1702:
	mov	rdi, qword ptr [rsp + 0x100]
	call	free
	mov	rdi, qword ptr [rsp + 0x108]
	call	free
	cmp	byte ptr [rsp + 0x17b], 0
	je	.label_1718
	mov	rdi, qword ptr [rsp + 0xf8]
	call	free
.label_1718:
	mov	eax, ebx
.label_1730:
	add	rsp, 0x258
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1748:
	cmp	qword ptr [r10 + 0x10], 0
	je	.label_1729
	cmp	byte ptr [rdi + 0x38], 0
	js	.label_1731
.label_1729:
	xor	ecx, ecx
	test	rbp, rbp
	je	.label_1747
	test	r8, r8
	mov	ebp, 0
	mov	eax, 1
	jne	.label_1730
	jmp	.label_1650
.label_1657:
	cmp	dword ptr [rsp + 0x254], 0xc
	je	.label_1681
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.22_1
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_1731:
	mov	rcx, r8
	jmp	.label_1650
.label_1747:
	xor	ebp, ebp
	jmp	.label_1650
.label_1728:
	mov	rdi, qword ptr [rsp + 0x1a8]
	call	free
	mov	rax, qword ptr [rsp + 0xa8]
	mov	qword ptr [rsp + 0x1a8], rax
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x1a0], rax
	mov	qword ptr [rsp + 0x198], rbp
	mov	r12, qword ptr [rsp + 0xe8]
.label_1720:
	mov	qword ptr [rsp + 0xe8], r12
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x290]
	cmp	qword ptr [rsp + 0xa0], rax
	mov	r14, qword ptr [rsp + 0x298]
	je	.label_1646
	cmp	qword ptr [rsp + 0x58], 2
	jb	.label_1757
	mov	rsi, qword ptr [rsp + 0x290]
	lea	edx, [rsi + 7]
	mov	rdi, qword ptr [rsp + 0xa0]
	sub	edx, edi
	lea	rax, [rsi - 2]
	sub	rax, rdi
	mov	ecx, 1
	test	dl, 7
	je	.label_1760
	lea	rdx, [r14 + 0x10]
	lea	esi, [rsi + 7]
	sub	esi, edi
	and	esi, 7
	xor	edi, edi
.label_1765:
	mov	rcx, rdi
	mov	qword ptr [rdx + 8], -1
	mov	qword ptr [rdx], -1
	lea	rdi, [rcx + 1]
	add	rdx, 0x10
	cmp	rsi, rdi
	jne	.label_1765
	add	rcx, 2
.label_1760:
	cmp	rax, 7
	jb	.label_1757
	mov	rax, qword ptr [rsp + 0x58]
	sub	rax, rcx
	shl	rcx, 4
	lea	rcx, [rcx + r14 + 0x70]
.label_1778:
	mov	qword ptr [rcx - 0x68], -1
	mov	qword ptr [rcx - 0x70], -1
	mov	qword ptr [rcx - 0x58], -1
	mov	qword ptr [rcx - 0x60], -1
	mov	qword ptr [rcx - 0x48], -1
	mov	qword ptr [rcx - 0x50], -1
	mov	qword ptr [rcx - 0x38], -1
	mov	qword ptr [rcx - 0x40], -1
	mov	qword ptr [rcx - 0x28], -1
	mov	qword ptr [rcx - 0x30], -1
	mov	qword ptr [rcx - 0x18], -1
	mov	qword ptr [rcx - 0x20], -1
	mov	qword ptr [rcx - 8], -1
	mov	qword ptr [rcx - 0x10], -1
	mov	qword ptr [rcx + 8], -1
	mov	qword ptr [rcx], -1
	add	rcx, 0x80
	add	rax, -8
	jne	.label_1778
.label_1757:
	mov	qword ptr [r14], 0
	mov	rax, qword ptr [rsp + 0x198]
	mov	qword ptr [r14 + 8], rax
	cmp	qword ptr [rsp + 0x58], 2
	jb	.label_1804
	mov	rax, qword ptr [rsp + 0x80]
	mov	al, byte ptr [rax + 0x38]
	and	al, 0x10
	jne	.label_1804
	mov	rax, qword ptr [rsp + 0xe8]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_1807
	xor	eax, eax
	jmp	.label_1812
.label_1753:
	mov	rax, rbx
	mov	qword ptr [rsp + 0x48], rax
.label_1746:
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_1681
.label_1807:
	cmp	qword ptr [rax + 0x98], 0
	setg	al
.label_1812:
	mov	rdi, qword ptr [rsp + 0x80]
	movzx	r8d, al
	lea	rsi, [rsp + 0xf0]
	mov	rdx, qword ptr [rsp + 0x58]
	mov	rcx, r14
	call	set_regs
	mov	ecx, eax
	test	ecx, ecx
	jne	.label_1646
.label_1804:
	mov	r10b, byte ptr [rsp + 0x17c]
	mov	r8, qword ptr [rsp + 0x108]
	lea	rdx, [r14 + 8]
	xor	ecx, ecx
	mov	r9, qword ptr [rsp + 0xa0]
	mov	rax, qword ptr [rsp + 0x290]
	lea	r11, [rsp + 0x128]
	jmp	.label_1640
.label_1780:
	mov	rbx, qword ptr [rsp + 0x120]
	cmp	rdi, rbx
	lea	rdi, [r8 + rdi*8]
	cmove	rdi, r11
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rdx - 8], rdi
	mov	rsi, rcx
	shl	rsi, 4
	lea	rbp, [r14 + rsi + 8]
	mov	rsi, qword ptr [rdx]
	cmp	rsi, rbx
	lea	rsi, [r8 + rsi*8]
	cmove	rsi, r11
	mov	rbx, qword ptr [rsi]
	mov	qword ptr [rdx], rbx
	jmp	.label_1711
.label_1640:
	mov	rdi, qword ptr [rdx - 8]
	cmp	rdi, -1
	je	.label_1664
	test	r10b, r10b
	jne	.label_1780
	mov	rbx, qword ptr [rdx]
	mov	rbp, rdx
.label_1711:
	mov	rsi, qword ptr [rsp + 0x1f8]
	add	rdi, rsi
	mov	qword ptr [rdx - 8], rdi
	add	rbx, rsi
	mov	qword ptr [rbp], rbx
.label_1664:
	inc	rcx
	add	rdx, 0x10
	dec	rax
	cmp	r9, rax
	jne	.label_1640
	test	r9, r9
	mov	rdi, qword ptr [rsp + 0xe8]
	jle	.label_1675
	lea	rcx, [r9 - 1]
	xor	eax, eax
	test	r9b, 3
	je	.label_1678
	mov	rdx, qword ptr [rsp + 0x58]
	shl	rdx, 4
	add	rdx, r14
	mov	esi, r9d
	and	esi, 3
	xor	eax, eax
.label_1687:
	inc	rax
	mov	qword ptr [rdx + 8], -1
	mov	qword ptr [rdx], -1
	add	rdx, 0x10
	cmp	rsi, rax
	jne	.label_1687
.label_1678:
	cmp	rcx, 3
	jb	.label_1675
	mov	rcx, r9
	sub	rcx, rax
	mov	rdx, qword ptr [rsp + 0x58]
	shl	rdx, 4
	add	rdx, r14
	shl	rax, 4
	add	rax, rdx
	xor	edx, edx
.label_1762:
	mov	qword ptr [rax + rdx + 8], -1
	mov	qword ptr [rax + rdx], -1
	mov	qword ptr [rax + rdx + 0x18], -1
	mov	qword ptr [rax + rdx + 0x10], -1
	mov	qword ptr [rax + rdx + 0x28], -1
	mov	qword ptr [rax + rdx + 0x20], -1
	mov	qword ptr [rax + rdx + 0x38], -1
	mov	qword ptr [rax + rdx + 0x30], -1
	add	rdx, 0x40
	add	rcx, -4
	jne	.label_1762
.label_1675:
	mov	rax, qword ptr [rdi + 0xe0]
	xor	ecx, ecx
	test	rax, rax
	je	.label_1646
	cmp	qword ptr [rsp + 0x58], 2
	jb	.label_1646
	sub	qword ptr [rsp + 0x68], r9
	lea	rdi, [r14 + 0x18]
	xor	edx, edx
.label_1736:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_1719
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x10]
	mov	qword ptr [rdi - 8], rsi
	mov	rsi, qword ptr [rsp + 0xe8]
	mov	rsi, qword ptr [rsi + 0xe0]
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x18]
	mov	qword ptr [rdi], rsi
.label_1719:
	inc	rdx
	add	rdi, 0x10
	xor	ecx, ecx
	cmp	qword ptr [rsp + 0x68], rdx
	jne	.label_1736
	jmp	.label_1646
.label_1696:
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.22_1
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414200
	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:

	sub	rsp, 0x18
	mov	qword ptr [rsp], r8
	mov	dword ptr [rsp + 8], 1
	xor	r8d, r8d
	mov	r9, rdx
	call	re_search_stub
	add	rsp, 0x18
	ret	
	.section	.text
	.align	32
	#Procedure 0x414220

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdi
	test	rcx, rcx
	mov	r14, -1
	js	.label_1827
	mov	qword ptr [rsp + 0x30], rsi
	mov	qword ptr [rsp + 0x38], r9
	cmp	rcx, rdx
	jg	.label_1827
	mov	r14, qword ptr [rsp + 0x80]
	xor	r12d, r12d
	add	r8, rcx
	cmovns	r12, r8
	cmp	r8, rdx
	cmovg	r12, rdx
	movzx	r13d, byte ptr [rbx + 0x38]
	cmp	r12, rcx
	mov	al, r13b
	jle	.label_1824
	test	r13b, 8
	mov	al, r13b
	jne	.label_1824
	mov	rax, qword ptr [rbx + 0x20]
	test	rax, rax
	mov	al, r13b
	je	.label_1824
	mov	rdi, rbx
	mov	rbp, rcx
	mov	r15, rdx
	call	rpl_re_compile_fastmap
	mov	rdx, r15
	mov	rcx, rbp
	mov	al, byte ptr [rbx + 0x38]
.label_1824:
	xor	esi, esi
	test	r14, r14
	mov	ebp, 1
	je	.label_1832
	mov	qword ptr [rsp + 0x40], rdx
	mov	r15, rcx
	mov	cl, al
	and	cl, 0x10
	jne	.label_1833
	and	al, 6
	movzx	eax, al
	cmp	eax, 4
	jne	.label_1825
	mov	rax, qword ptr [r14]
	mov	rbp, qword ptr [rbx + 0x30]
	cmp	rax, rbp
	ja	.label_1839
	xor	ecx, ecx
	test	rax, rax
	cmovle	r14, rcx
	mov	ebp, 1
	cmovg	rbp, rax
	jmp	.label_1841
.label_1832:
	mov	qword ptr [rsp + 0x40], rdx
	mov	r15, rcx
	jmp	.label_1833
.label_1825:
	mov	rbp, qword ptr [rbx + 0x30]
.label_1839:
	inc	rbp
.label_1841:
	mov	rsi, r14
.label_1833:
	mov	qword ptr [rsp + 0x28], rsi
	mov	rdi, rbp
	shl	rdi, 4
	call	malloc
	mov	rdi, rbx
	mov	r14, -2
	test	rax, rax
	mov	rdx, qword ptr [rsp + 0x40]
	je	.label_1827
	mov	cl, r13b
	shr	cl, 5
	and	cl, 1
	and	r13d, 0x40
	movzx	ecx, cl
	shr	r13d, 5
	or	r13d, ecx
	mov	dword ptr [rsp + 0x10], r13d
	mov	qword ptr [rsp + 8], rax
	mov	r13, rax
	mov	qword ptr [rsp], rbp
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, r15
	mov	r8, r12
	mov	r14, rdi
	mov	r9, qword ptr [rsp + 0x38]
	call	re_search_internal
	test	eax, eax
	je	.label_1847
	cmp	eax, 1
	sete	al
	movzx	r14d, al
	or	r14, 0xfffffffffffffffe
	mov	rdi, r13
	jmp	.label_1834
.label_1847:
	mov	qword ptr [rsp + 0x40], r15
	mov	r12, qword ptr [rsp + 0x28]
	test	r12, r12
	mov	rdi, r13
	je	.label_1823
	mov	r8, r14
	mov	al, byte ptr [r8 + 0x38]
	shr	al, 1
	and	al, 3
	movzx	eax, al
	cmp	eax, 2
	je	.label_1829
	lea	rbx, [rbp + 1]
	cmp	eax, 1
	je	.label_1835
	mov	r13, r12
	mov	qword ptr [rsp + 0x38], rdi
	mov	r15, r8
	test	eax, eax
	jne	.label_1837
	lea	r12, [rbx*8]
	mov	rdi, r12
	call	malloc
	mov	r14, rax
	mov	rax, r13
	mov	qword ptr [rax + 8], r14
	xor	r13d, r13d
	test	r14, r14
	je	.label_1831
	mov	rdi, r12
	mov	r12, rax
	call	malloc
	mov	qword ptr [r12 + 0x10], rax
	test	rax, rax
	je	.label_1848
	mov	qword ptr [r12], rbx
	mov	r14d, 1
	mov	r8, r15
	mov	rdi, qword ptr [rsp + 0x38]
	jmp	.label_1826
.label_1829:
	mov	rbx, qword ptr [r12]
	mov	r14d, 2
	cmp	rbx, rbp
	jae	.label_1826
	mov	edi, OFFSET FLAT:.str.24_0
	mov	esi, OFFSET FLAT:.str.22_1
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_1835:
	mov	r15, rdi
	mov	rax, qword ptr [r12]
	mov	r14d, 1
	cmp	rbx, rax
	ja	.label_1838
	mov	rbx, rax
	mov	rdi, r15
.label_1826:
	test	rbp, rbp
	jle	.label_1845
	mov	rdx, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	xor	esi, esi
	test	bpl, 1
	je	.label_1849
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rdi + 8]
	mov	qword ptr [rcx], rax
	mov	esi, 1
.label_1849:
	cmp	rbp, 1
	je	.label_1842
	mov	rax, rbp
	sub	rax, rsi
	lea	rcx, [rcx + rsi*8 + 8]
	lea	rdx, [rdx + rsi*8 + 8]
	shl	rsi, 4
	lea	rsi, [rsi + rdi + 0x18]
	nop	
.label_1836:
	mov	rbx, qword ptr [rsi - 0x18]
	mov	qword ptr [rdx - 8], rbx
	mov	rbx, qword ptr [rsi - 0x10]
	mov	qword ptr [rcx - 8], rbx
	mov	rbx, qword ptr [rsi - 8]
	mov	qword ptr [rdx], rbx
	mov	rbx, qword ptr [rsi]
	mov	qword ptr [rcx], rbx
	add	rcx, 0x10
	add	rsi, 0x20
	add	rdx, 0x10
	add	rax, -2
	jne	.label_1836
.label_1842:
	mov	rbx, qword ptr [r12]
	jmp	.label_1844
.label_1845:
	xor	ebp, ebp
.label_1844:
	cmp	rbp, rbx
	jae	.label_1846
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1822:
	mov	qword ptr [rcx + rbp*8], -1
	mov	qword ptr [rax + rbp*8], -1
	inc	rbp
	cmp	rbp, qword ptr [r12]
	jb	.label_1822
.label_1846:
	mov	r13d, r14d
.label_1843:
	mov	al, byte ptr [r8 + 0x38]
	add	r13b, r13b
	and	al, 0xf9
	mov	cl, r13b
	and	cl, 6
	or	cl, al
	and	r13b, 6
	mov	byte ptr [r8 + 0x38], cl
	mov	r14, -2
	je	.label_1834
.label_1823:
	mov	al, byte ptr [rsp + 0x88]
	mov	r14, qword ptr [rdi]
	test	al, al
	je	.label_1834
	mov	rax, qword ptr [rsp + 0x40]
	cmp	r14, rax
	jne	.label_1840
	mov	r14, qword ptr [rdi + 8]
	sub	r14, rax
.label_1834:
	call	free
.label_1827:
	mov	rax, r14
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1838:
	mov	qword ptr [rsp + 0x38], r8
	mov	rdi, qword ptr [r12 + 8]
	lea	rsi, [rbx*8]
	mov	qword ptr [rsp + 0x30], rsi
	call	realloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_1828
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	call	realloc
	test	rax, rax
	je	.label_1830
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [r12 + 8], rcx
	mov	qword ptr [r12 + 0x10], rax
	mov	qword ptr [r12], rbx
	mov	r8, qword ptr [rsp + 0x38]
	mov	rdi, r15
	jmp	.label_1826
.label_1848:
	mov	rdi, r14
	call	free
.label_1831:
	mov	r8, r15
	mov	rdi, qword ptr [rsp + 0x38]
	jmp	.label_1843
.label_1830:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1828:
	mov	r8, qword ptr [rsp + 0x38]
	mov	rdi, r15
	jmp	.label_1843
.label_1837:
	mov	edi, OFFSET FLAT:.str.23
	mov	esi, OFFSET FLAT:.str.22_1
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_1840:
	mov	edi, OFFSET FLAT:.str.21_1
	mov	esi, OFFSET FLAT:.str.22_1
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414640
	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:

	sub	rsp, 0x18
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp + 8], 0
	mov	r9, rdx
	call	re_search_stub
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414660
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x68]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_1850
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_1853
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_1850
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1852
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	jle	.label_1855
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_1850
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	mov	r13, rax
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x68]
	mov	r9, r13
	mov	r13, r12
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_1852
.label_1853:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_1851
.label_1850:
	mov	rax, -2
	jmp	.label_1854
.label_1851:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_1852
.label_1855:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
.label_1852:
	mov	rax, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp], rax
	mov	dword ptr [rsp + 8], 1
	xor	r8d, r8d
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_1854:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414790
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_1858
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_1861
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_1858
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1857
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	jle	.label_1859
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_1858
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	mov	r13, rax
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x70]
	mov	r9, r13
	mov	r13, r12
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_1857
.label_1861:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_1860
.label_1858:
	mov	rax, -2
	jmp	.label_1856
.label_1860:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_1857
.label_1859:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
.label_1857:
	mov	rax, qword ptr [rsp + 0x68]
	mov	r8, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp], rax
	mov	dword ptr [rsp + 8], 0
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_1856:
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
	#Procedure 0x4148d0
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	mov	r9b, al
	or	r9b, 2
	test	rdx, rdx
	je	.label_1862
	mov	al, r9b
.label_1862:
	cmove	r8, rdx
	cmove	rcx, rdx
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 0x10], r8
	mov	qword ptr [rsi + 8], rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414900

	.globl free_state
	.type free_state, @function
free_state:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x30]
	call	free
	mov	rdi, qword ptr [rbx + 0x48]
	call	free
	mov	rax, qword ptr [rbx + 0x50]
	lea	rcx, [rbx + 8]
	cmp	rax, rcx
	je	.label_1863
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_1863:
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x60]
	call	free
	mov	rdi, qword ptr [rbx + 0x58]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414960

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1864
	mov	rax, r14
	shr	rax, 0x3d
	mov	ebp, 0xc
	jne	.label_1865
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [r14*4]
	call	realloc
	test	rax, rax
	je	.label_1865
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1864
	lea	rsi, [r14*8]
	call	realloc
	test	rax, rax
	je	.label_1865
	mov	qword ptr [rbx + 0x18], rax
.label_1864:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1866
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_1865
	mov	qword ptr [rbx + 8], rax
.label_1866:
	mov	qword ptr [rbx + 0x40], r14
	xor	ebp, ebp
.label_1865:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4149f0

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r12, rdi
	mov	r15, qword ptr [r12 + 0x30]
	mov	r13, qword ptr [r12 + 0x40]
	mov	rax, qword ptr [r12 + 0x58]
	cmp	r13, rax
	cmovg	r13, rax
	cmp	byte ptr [r12 + 0x8a], 0
	jne	.label_1878
	cmp	qword ptr [r12 + 0x78], 0
	jne	.label_1878
	cmp	byte ptr [r12 + 0x8c], 0
	je	.label_1879
.label_1878:
	mov	rbx, qword ptr [r12 + 0x38]
	jmp	.label_1881
.label_1879:
	cmp	r13, r15
	jle	.label_1885
	lea	rax, [r12 + 0x78]
	mov	qword ptr [rsp + 0x10], rax
	lea	r14, [r12 + 0x20]
	jmp	.label_1868
.label_1894:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_1919
	cmp	rbp, -2
	jne	.label_1896
	mov	rax, qword ptr [r12 + 0x40]
	cmp	rax, qword ptr [r12 + 0x58]
	jl	.label_1896
.label_1919:
	mov	rax, qword ptr [r12 + 0x28]
	add	rax, r15
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	mov	rcx, qword ptr [r12 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	rbp, -1
	je	.label_1899
.label_1911:
	mov	rax, r15
	jmp	.label_1905
.label_1899:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
	jmp	.label_1911
	nop	word ptr [rax + rax]
.label_1868:
	mov	qword ptr [rsp + 0x20], r13
	mov	rbp, qword ptr [r12]
	mov	rbx, qword ptr [r12 + 0x28]
	lea	rax, [rbx + r15]
	movzx	r13d, byte ptr [rbp + rax]
	test	r13b, r13b
	js	.label_1915
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_1915
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + r13*4]
	mov	rcx, qword ptr [r12 + 8]
	mov	byte ptr [rcx + r15], al
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	mov	rax, r15
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_1905
	nop	word ptr cs:[rax + rax]
.label_1915:
	mov	r13, qword ptr [rsp + 0x20]
	mov	rdx, r13
	sub	rdx, r15
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 0x70], rax
	add	rbp, rbx
	add	rbp, r15
	lea	rdi, [rsp + 0x2c]
	mov	rsi, rbp
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rax, [rbp - 1]
	cmp	rax, -4
	ja	.label_1894
	mov	edi, dword ptr [rsp + 0x2c]
	call	towupper
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 0x2c]
	jne	.label_1898
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, qword ptr [r12]
	add	rsi, qword ptr [r12 + 0x28]
	add	rsi, r15
	mov	rdx, rbp
	call	memcpy
	jmp	.label_1906
.label_1898:
	mov	esi, ebx
	mov	dword ptr [rsp + 0x18], esi
	mov	rbx, rbp
	lea	rbp, [rsp + 0x30]
	mov	rdi, rbp
	lea	rdx, [rsp + 0x70]
	call	wcrtomb
	cmp	rbx, rax
	jne	.label_1913
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	mov	rbp, rbx
	mov	ebx, dword ptr [rsp + 0x18]
.label_1906:
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	cmp	rax, rbx
	jge	.label_1905
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rax + r15*4 + 4]
	lea	rdx, [rbp*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_1905:
	cmp	r13, rax
	mov	r15, rax
	jg	.label_1868
	jmp	.label_1874
.label_1913:
	mov	rbx, r15
	mov	rcx, qword ptr [rsp + 0x10]
	jmp	.label_1875
.label_1896:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
.label_1885:
	mov	rax, r15
.label_1874:
	mov	qword ptr [r12 + 0x30], rax
	mov	qword ptr [r12 + 0x38], rax
	jmp	.label_1880
.label_1881:
	cmp	r15, r13
	jge	.label_1883
	lea	r14, [r12 + 0x20]
	lea	rcx, [r12 + 0x78]
.label_1875:
	mov	rdx, r13
	sub	rdx, r15
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rcx]
	test	rax, rax
	jne	.label_1891
	mov	rbp, qword ptr [r12]
	add	rbp, qword ptr [r12 + 0x28]
	add	rbp, rbx
.label_1882:
	lea	rdi, [rsp + 0x28]
	mov	rsi, rbp
	mov	rcx, r14
	mov	qword ptr [rsp + 0x18], r14
	call	rpl_mbrtowc
	mov	r14, rax
	lea	rax, [r14 - 1]
	cmp	rax, -4
	ja	.label_1903
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x20], r13
	mov	edi, dword ptr [rsp + 0x28]
	call	towupper
	mov	r13d, eax
	cmp	r13d, dword ptr [rsp + 0x28]
	je	.label_1910
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x70]
	mov	esi, r13d
	call	wcrtomb
	mov	r8, rax
	mov	rcx, r8
	sub	rcx, r14
	jne	.label_1920
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	jmp	.label_1923
.label_1891:
	lea	rbp, [rsp + 0x30]
	movsxd	rcx, dword ptr [r12 + 0x90]
	test	rcx, rcx
	jle	.label_1882
	mov	r8, rbx
	xor	esi, esi
	nop	dword ptr [rax]
.label_1876:
	cmp	rsi, rdx
	jge	.label_1871
	mov	rdi, qword ptr [r12]
	add	rdi, qword ptr [r12 + 0x28]
	add	rdi, r8
	movzx	edi, byte ptr [rsi + rdi]
	mov	bl, byte ptr [rax + rdi]
	mov	byte ptr [rsp + rsi + 0x30], bl
	inc	rsi
	cmp	rsi, rcx
	jl	.label_1876
	mov	rbx, r8
	jmp	.label_1882
.label_1903:
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_1886
	cmp	r14, -2
	jne	.label_1889
	mov	rax, qword ptr [r12 + 0x40]
	cmp	rax, qword ptr [r12 + 0x58]
	jl	.label_1889
.label_1886:
	mov	rax, qword ptr [r12 + 0x28]
	add	rax, rbx
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_1895
.label_1922:
	movzx	eax, al
	mov	rcx, qword ptr [r12 + 8]
	mov	byte ptr [rcx + r15], al
	cmp	byte ptr [r12 + 0x8c], 0
	jne	.label_1900
.label_1924:
	inc	rbx
	mov	rcx, qword ptr [r12 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r14, -1
	je	.label_1907
.label_1925:
	mov	rbp, r15
	jmp	.label_1881
.label_1920:
	cmp	r8, -1
	je	.label_1910
	lea	rbp, [r8 + r15]
	mov	rdi, qword ptr [r12 + 0x40]
	cmp	rbp, rdi
	jbe	.label_1917
.label_1889:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rcx], rax
.label_1883:
	mov	qword ptr [r12 + 0x30], r15
	mov	qword ptr [r12 + 0x38], rbx
.label_1880:
	xor	eax, eax
.label_1867:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1910:
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_1923:
	mov	rdx, r14
	call	memcpy
	cmp	byte ptr [r12 + 0x8c], 0
	je	.label_1870
	mov	rax, qword ptr [r12 + 0x18]
	xor	esi, esi
	cmp	r14, 4
	jb	.label_1877
	xor	esi, esi
	mov	rcx, r14
	and	rcx, 0xfffffffffffffffc
	je	.label_1877
	movq	xmm0, rbx
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [r14 - 4]
	mov	rsi, rdi
	shr	rsi, 2
	xor	edx, edx
	bt	rdi, 2
	jb	.label_1884
	mov	edx, 1
	movq	xmm1, rdx
	pslldq	xmm1, 8
	paddq	xmm1, xmm0
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_1513]]
	paddq	xmm2, xmm0
	movdqu	xmmword ptr [rax + r15*8], xmm1
	movdqu	xmmword ptr [rax + r15*8 + 0x10], xmm2
	mov	edx, 4
.label_1884:
	test	rsi, rsi
	je	.label_1904
	lea	rsi, [rax + r15*8 + 0x30]
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_1513]]
	nop	word ptr cs:[rax + rax]
.label_1918:
	movq	xmm3, rdx
	pshufd	xmm3, xmm3, 0x44
	paddq	xmm3, xmm0
	movdqa	xmm4, xmm3
	paddq	xmm4, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rsi + rdx*8 - 0x30], xmm4
	movdqu	xmmword ptr [rsi + rdx*8 - 0x20], xmm3
	lea	rdi, [rdx + 4]
	movq	xmm3, rdi
	pshufd	xmm3, xmm3, 0x44
	paddq	xmm3, xmm0
	movdqa	xmm4, xmm3
	paddq	xmm4, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rsi + rdx*8 - 0x10], xmm4
	movdqu	xmmword ptr [rsi + rdx*8], xmm3
	add	rdx, 8
	cmp	rdx, rcx
	jne	.label_1918
.label_1904:
	cmp	r14, rcx
	mov	rsi, rcx
	je	.label_1870
.label_1877:
	mov	rcx, r14
	sub	rcx, rsi
	lea	rdx, [rsi + rbx]
	add	rsi, r15
	lea	rax, [rax + rsi*8]
	nop	word ptr cs:[rax + rax]
.label_1901:
	mov	qword ptr [rax], rdx
	inc	rdx
	add	rax, 8
	dec	rcx
	jne	.label_1901
.label_1870:
	add	rbx, r14
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], r13d
	lea	rbp, [r14 + r15]
	inc	r15
	cmp	r15, rbp
	jge	.label_1892
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	r13, qword ptr [rsp + 0x20]
	mov	r15, rbp
	jmp	.label_1881
.label_1892:
	mov	rbp, r15
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_1881
.label_1871:
	mov	rbx, r8
	jmp	.label_1882
.label_1917:
	mov	rax, qword ptr [r12 + 0x18]
	test	rax, rax
	jne	.label_1908
	shl	rdi, 3
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x20], r8
	call	malloc
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r12 + 0x18], rax
	test	rax, rax
	je	.label_1916
.label_1908:
	mov	qword ptr [rsp + 8], rcx
	cmp	byte ptr [r12 + 0x8c], 0
	jne	.label_1921
	test	r15, r15
	je	.label_1890
	xor	edx, edx
	cmp	r15, 4
	jb	.label_1869
	xor	edx, edx
	mov	rcx, r15
	and	rcx, 0xfffffffffffffffc
	je	.label_1869
	lea	rdi, [r15 - 4]
	mov	rsi, rdi
	shr	rsi, 2
	xor	edx, edx
	bt	rdi, 2
	jb	.label_1872
	mov	edx, 1
	movq	xmm0, rdx
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rax], xmm0
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_1513]]
	movdqu	xmmword ptr [rax + 0x10], xmm0
	mov	edx, 4
.label_1872:
	test	rsi, rsi
	je	.label_1914
	mov	esi, 1
	movq	xmm0, rsi
	pslldq	xmm0, 8
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_1513]]
.label_1897:
	movq	xmm2, rdx
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdx*8], xmm3
	movdqu	xmmword ptr [rax + rdx*8 + 0x10], xmm2
	lea	rsi, [rdx + 4]
	movq	xmm2, rsi
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdx*8 + 0x20], xmm3
	movdqu	xmmword ptr [rax + rdx*8 + 0x30], xmm2
	add	rdx, 8
	cmp	rdx, rcx
	jne	.label_1897
.label_1914:
	cmp	r15, rcx
	mov	rdx, rcx
	je	.label_1890
.label_1869:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_1869
.label_1890:
	mov	byte ptr [r12 + 0x8c], 1
.label_1921:
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	mov	rdx, r8
	mov	qword ptr [rsp + 0x20], r8
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], r13d
	mov	rax, qword ptr [r12 + 0x18]
	mov	qword ptr [rax + r15*8], rbx
	cmp	rdi, 2
	mov	r11, qword ptr [rsp + 0x10]
	jb	.label_1893
	mov	r9, qword ptr [r12 + 0x10]
	mov	r8, qword ptr [r12 + 0x18]
	lea	r10, [rdi - 1]
	mov	eax, 1
	cmp	r10, 4
	jb	.label_1873
	mov	rcx, r10
	and	rcx, 0xfffffffffffffffc
	mov	r13, r10
	and	r13, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_1873
	mov	rax, rcx
	or	rax, 1
	movq	xmm0, r14
	pshufd	xmm3, xmm0, 0x44
	movq	xmm1, r11
	mov	rdi, r11
	pshufd	xmm11, xmm1, 0x44
	movq	xmm2, rbx
	mov	r11, rbx
	pshufd	xmm12, xmm2, 0x44
	lea	rcx, [r8 + r15*8 + 0x18]
	lea	rdx, [r9 + r15*4 + 0xc]
	xor	esi, esi
	mov	ebx, 1
	movq	xmm10, rbx
	pslldq	xmm10, 8
	movdqa	xmm8,  xmmword ptr [word ptr [rip + label_1513]]
	movdqa	xmm9,  xmmword ptr [word ptr [rip + label_1887]]
	pxor	xmm3, xmm9
	pshufd	xmm6,  xmmword ptr [word ptr [rip + label_1888]],  0xe8
.label_1912:
	lea	rbx, [rsi + 1]
	movq	xmm4, rbx
	pshufd	xmm7, xmm4, 0x44
	movdqa	xmm5, xmm7
	paddq	xmm5, xmm10
	paddq	xmm7, xmm8
	movdqa	xmm4, xmm5
	pxor	xmm4, xmm9
	movdqa	xmm0, xmm3
	pcmpgtd	xmm0, xmm4
	pshufd	xmm1, xmm0, 0xa0
	pcmpeqd	xmm4, xmm3
	pshufd	xmm4, xmm4, 0xf5
	pand	xmm4, xmm1
	pshufd	xmm0, xmm0, 0xf5
	por	xmm0, xmm4
	movdqa	xmm1, xmm7
	pxor	xmm1, xmm9
	movdqa	xmm4, xmm3
	pcmpgtd	xmm4, xmm1
	pshufd	xmm2, xmm4, 0xa0
	pcmpeqd	xmm1, xmm3
	pshufd	xmm1, xmm1, 0xf5
	pand	xmm1, xmm2
	pshufd	xmm2, xmm4, 0xf5
	por	xmm2, xmm1
	pand	xmm5, xmm0
	pandn	xmm0, xmm11
	por	xmm0, xmm5
	pand	xmm7, xmm2
	pandn	xmm2, xmm11
	por	xmm2, xmm7
	paddq	xmm0, xmm12
	paddq	xmm2, xmm12
	movdqu	xmmword ptr [rcx + rsi*8 - 0x10], xmm0
	movdqu	xmmword ptr [rcx + rsi*8], xmm2
	movq	qword ptr [rdx + rsi*4 - 8], xmm6
	movq	qword ptr [rdx + rsi*4], xmm6
	add	rsi, 4
	cmp	r13, rsi
	jne	.label_1912
	cmp	r10, r13
	mov	rbx, r11
	mov	r11, rdi
	mov	rdi, qword ptr [rsp + 0x20]
	je	.label_1893
.label_1873:
	lea	rcx, [r9 + r15*4]
	lea	rdx, [r8 + r15*8]
.label_1902:
	cmp	rax, r14
	mov	rsi, r11
	cmovb	rsi, rax
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	inc	rax
	cmp	rdi, rax
	jne	.label_1902
.label_1893:
	mov	rax, qword ptr [r12 + 0x58]
	mov	rcx, qword ptr [rsp + 8]
	add	rax, rcx
	mov	qword ptr [r12 + 0x58], rax
	cmp	qword ptr [r12 + 0x60], rbx
	jle	.label_1909
	add	qword ptr [r12 + 0x68], rcx
.label_1909:
	mov	r13, qword ptr [r12 + 0x40]
	cmp	r13, rax
	cmovg	r13, rax
	add	rbx, r14
	mov	r15, rbp
	jmp	.label_1881
.label_1895:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_1922
.label_1900:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	qword ptr [rcx + r15*8], rbx
	jmp	.label_1924
.label_1907:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_1925
.label_1916:
	mov	eax, 0xc
	jmp	.label_1867
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x415310

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	rbx, rdi
	mov	r13, qword ptr [rbx + 0x30]
	mov	r12, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, r13
	jle	.label_1938
	lea	r14, [rbx + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_1935
	nop	dword ptr [rax + rax]
.label_1928:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [rbx]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rax, qword ptr [rbx + 0x78]
	test	rax, rax
	jne	.label_1932
.label_1930:
	mov	qword ptr [r14], rbp
	mov	eax, 1
	jmp	.label_1934
.label_1936:
	mov	ecx, dword ptr [rsp + 0xc]
	nop	dword ptr [rax]
.label_1934:
	mov	rdx, qword ptr [rbx + 0x10]
	mov	dword ptr [rdx + r13*4], ecx
	lea	rbp, [rax + r13]
	lea	rcx, [r13 + 1]
	cmp	rcx, rbp
	jge	.label_1927
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rdi, [rcx + r13*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_1927:
	cmp	r12, rcx
	mov	r13, rcx
	jg	.label_1935
	jmp	.label_1937
.label_1926:
	cmp	dword ptr [rbx + 0x90], 0
	mov	eax, 0
	lea	rsi, [rsp + 0x10]
	jle	.label_1929
	nop	dword ptr [rax + rax]
.label_1933:
	cmp	rax, rdx
	jge	.label_1931
	mov	rcx, qword ptr [rbx]
	mov	rsi, qword ptr [rbx + 0x78]
	add	rcx, qword ptr [rbx + 0x28]
	add	rcx, r13
	movzx	ecx, byte ptr [rax + rcx]
	mov	cl, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [rbx + 8]
	add	rsi, r13
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	movsxd	rcx, dword ptr [rbx + 0x90]
	cmp	rax, rcx
	jl	.label_1933
	lea	rsi, [rsp + 0x10]
	jmp	.label_1929
.label_1932:
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	jmp	.label_1930
.label_1931:
	lea	rsi, [rsp + 0x10]
	jmp	.label_1929
	nop	word ptr cs:[rax + rax]
.label_1935:
	mov	rdx, r12
	sub	rdx, r13
	mov	rbp, qword ptr [rbx + 0x20]
	cmp	qword ptr [rbx + 0x78], 0
	jne	.label_1926
	mov	rsi, qword ptr [rbx]
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r13
.label_1929:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_1928
	cmp	rax, -2
	jne	.label_1936
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	jge	.label_1928
	mov	qword ptr [r14], rbp
.label_1938:
	mov	rcx, r13
.label_1937:
	mov	qword ptr [rbx + 0x30], rcx
	mov	qword ptr [rbx + 0x38], rcx
	add	rsp, 0x58
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
	#Procedure 0x4154b0

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	r12, rdi
	mov	r14, qword ptr [rsi]
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp], rax
	call	parse_branch
	mov	rbx, rax
	xor	ebp, ebp
	test	rbx, rbx
	jne	.label_1955
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax]
	test	eax, eax
	jne	.label_1941
.label_1955:
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0xa
	jne	.label_1940
	mov	rax, qword ptr [rsp + 0x10]
	or	rax, 0x800000
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1944
.label_1939:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1946
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1949
	nop	word ptr cs:[rax + rax]
.label_1944:
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [r12 + 0x48], rax
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	ecx, 8
	cmp	ecx, 0xa
	mov	r15d, 0
	je	.label_1942
	cmp	qword ptr [rsp + 0x28], 0
	je	.label_1943
	cmp	eax, 9
	mov	r15d, 0
	je	.label_1942
.label_1943:
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r14 + 0xa8], rax
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, rbp
	call	parse_branch
	mov	r15, rax
	test	r15, r15
	jne	.label_1952
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_1954
.label_1952:
	mov	rax, qword ptr [rsp + 0x20]
	or	qword ptr [r14 + 0xa8], rax
	nop	word ptr [rax + rax]
.label_1942:
	mov	ecx, dword ptr [r14 + 0x80]
	cmp	ecx, 0xf
	je	.label_1939
	mov	rax, qword ptr [r14 + 0x70]
.label_1949:
	lea	edx, [rcx + 1]
	mov	dword ptr [r14 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_1945
	mov	qword ptr [rbx], rbp
.label_1945:
	test	r15, r15
	je	.label_1953
	mov	qword ptr [r15], rbp
.label_1953:
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0xa
	mov	rbx, rbp
	je	.label_1944
	jmp	.label_1941
.label_1940:
	mov	rbp, rbx
.label_1941:
	mov	rax, rbp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1954:
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_1941
	mov	r14d, 0x400ff
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1947:
	mov	r15, rbx
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jne	.label_1947
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_1947
	nop	word ptr cs:[rax + rax]
.label_1948:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1950
	cmp	eax, 6
	jne	.label_1951
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1956
	nop	dword ptr [rax]
.label_1950:
	mov	rdi, qword ptr [r15 + 0x28]
.label_1956:
	call	free
.label_1951:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1941
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	mov	r15, rax
	je	.label_1948
	test	rbx, rbx
	mov	r15, rax
	je	.label_1948
	jmp	.label_1947
.label_1946:
	mov	rax, qword ptr [rsp + 0x18]
	mov	dword ptr [rax], 0xc
	xor	ebp, ebp
	jmp	.label_1941
	.section	.text
	.align	32
	#Procedure 0x415740

	.globl peek_token
	.type peek_token, @function
peek_token:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbp, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_1970
	mov	r13, rdx
	mov	rcx, qword ptr [rbp + 8]
	movzx	r12d, byte ptr [rcx + rax]
	mov	byte ptr [r15], r12b
	mov	ebx, dword ptr [r15 + 8]
	mov	eax, ebx
	and	eax, 0xff9fffff
	mov	dword ptr [r15 + 8], eax
	mov	edx, dword ptr [rbp + 0x90]
	cmp	edx, 2
	jl	.label_1971
	mov	rax, qword ptr [rbp + 0x48]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_1971
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1982
.label_1971:
	cmp	r12d, 0x5c
	jne	.label_1985
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rax, [rcx + 1]
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1986
	cmp	byte ptr [rbp + 0x8b], 0
	jne	.label_1990
.label_1978:
	mov	rcx, qword ptr [rbp + 8]
	mov	r14b, byte ptr [rcx + rax]
.label_1988:
	mov	byte ptr [r15], r14b
	and	ebx, 0xff9fff00
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1992
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebp, dword ptr [rax + rcx*4 + 4]
	mov	edi, ebp
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	jmp	.label_1957
.label_1970:
	mov	byte ptr [r15 + 8], 2
	xor	r14d, r14d
	jmp	.label_1959
.label_1985:
	and	ebx, 0xff9fff00
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1968
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebx, dword ptr [rax + rcx*4]
	mov	edi, ebx
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebx, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	jmp	.label_1972
.label_1986:
	and	ebx, 0xff9fff00
	or	ebx, 0x24
	jmp	.label_1980
.label_1968:
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r12*2]
	cmp	r12d, 0x5f
	sete	cl
	movzx	ecx, cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, ebx
.label_1972:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	cmp	r12d, 0x3e
	jg	.label_1987
	lea	ecx, [r12 - 0x24]
	cmp	ecx, 0xa
	ja	.label_1989
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1991]]
.label_3311:
	mov	rdx, r13
	test	dl, 8
	jne	.label_1963
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	je	.label_1963
	mov	qword ptr [rbp + 0x48], rcx
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	cmp	eax, 1
	ja	.label_1959
	mov	eax, dword ptr [r15 + 8]
.label_1963:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_1959
.label_1987:
	cmp	r12d, 0x7a
	jg	.label_1965
	cmp	r12d, 0x3f
	je	.label_1967
	cmp	r12d, 0x5b
	mov	rdx, r13
	je	.label_1977
	cmp	r12d, 0x5e
	jne	.label_1959
	test	edx, 0x800008
	jne	.label_1973
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	je	.label_1973
	test	dh, 8
	je	.label_1959
	mov	rdx, qword ptr [rbp + 8]
	movzx	ecx, byte ptr [rcx + rdx - 1]
	cmp	ecx, 0xa
	jne	.label_1959
.label_1973:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x10
	jmp	.label_1959
.label_1992:
	movzx	ebp, r14b
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	cmp	ebp, 0x5f
	sete	cl
	movzx	ecx, cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, ebx
.label_1957:
	mov	dword ptr [r15 + 8], eax
	movzx	ecx, r14b
	mov	r14d, 2
	cmp	ecx, 0x5f
	jg	.label_1979
	lea	edx, [rcx - 0x27]
	cmp	edx, 0x2c
	ja	.label_1958
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1994]]
.label_3501:
	mov	rdx, r13
	test	dh, 0x40
	jne	.label_1959
	and	eax, 0xffffff00
	or	eax, 4
	mov	dword ptr [r15 + 8], eax
	add	ecx, -0x31
	movsxd	rax, ecx
	mov	qword ptr [r15], rax
	jmp	.label_1959
.label_1965:
	cmp	r12d, 0x7b
	je	.label_1960
	cmp	r12d, 0x7c
	mov	rcx, r13
	je	.label_1975
	cmp	r12d, 0x7d
	jne	.label_1959
	and	ecx, 0x1200
	cmp	rcx, 0x1200
	je	.label_1964
	jmp	.label_1959
.label_1982:
	and	ebx, 0xff9fff00
	or	ebx, 0x200001
.label_1980:
	mov	dword ptr [r15 + 8], ebx
	mov	r14d, 1
.label_1959:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1979:
	lea	edx, [rcx - 0x73]
	cmp	edx, 0xa
	ja	.label_1974
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1976]]
.label_3551:
	test	r13d, 0x80000
	jne	.label_1959
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1959
.label_1989:
	cmp	r12d, 0xa
	jne	.label_1959
	mov	rcx, r13
	test	ch, 8
	jne	.label_1966
	jmp	.label_1959
.label_3312:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1984
	jmp	.label_1959
.label_3313:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1962
	jmp	.label_1959
.label_3314:
	and	eax, 0xffffff00
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1959
.label_3315:
	test	r13w, 0x402
	jne	.label_1959
	jmp	.label_1993
.label_3316:
	and	eax, 0xffffff00
	or	eax, 5
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1959
.label_1967:
	test	r13w, 0x402
	jne	.label_1959
	jmp	.label_1995
.label_1977:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1959
.label_1960:
	and	r13d, 0x1200
	cmp	r13, 0x1200
	je	.label_1961
	jmp	.label_1959
.label_1975:
	test	ch, 4
	jne	.label_1959
	test	cx, cx
	js	.label_1966
	jmp	.label_1959
.label_1974:
	cmp	ecx, 0x60
	je	.label_1969
	cmp	ecx, 0x62
	jne	.label_1959
	test	r13d, 0x80000
	jne	.label_1959
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_1959
.label_1990:
	cmp	edx, 2
	jl	.label_1981
	mov	rdx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	je	.label_1978
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	je	.label_1981
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	je	.label_1978
.label_1981:
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsi, rax
	je	.label_1983
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_1983:
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	mov	rcx, qword ptr [rbp]
	mov	r14b, byte ptr [rcx + rsi]
	je	.label_1988
	test	r14b, r14b
	js	.label_1978
	jmp	.label_1988
.label_1958:
	cmp	ecx, 0x57
	jne	.label_1959
	test	r13d, 0x80000
	jne	.label_1959
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1959
.label_3552:
	test	r13d, 0x80000
	jne	.label_1959
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1959
.label_3553:
	and	r13d, 0x1200
	cmp	r13, 0x200
	jne	.label_1959
.label_1961:
	and	eax, 0xffffff00
	or	eax, 0x17
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1959
.label_3554:
	mov	rcx, r13
	test	ch, 4
	jne	.label_1959
	test	cx, cx
	js	.label_1959
.label_1966:
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1959
.label_3555:
	and	r13d, 0x1200
	cmp	r13, 0x200
	jne	.label_1959
.label_1964:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1959
.label_1969:
	test	r13d, 0x80000
	jne	.label_1959
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_1959
.label_3497:
	test	r13d, 0x80000
	jne	.label_1959
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_1959
.label_3498:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1959
.label_1984:
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1959
.label_3499:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1959
.label_1962:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1959
.label_3500:
	and	r13d, 0x402
	cmp	r13, 2
	jne	.label_1959
.label_1993:
	and	eax, 0xffffff00
	or	eax, 0x12
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1959
.label_3502:
	test	r13d, 0x80000
	jne	.label_1959
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 6
	jmp	.label_1959
.label_3503:
	test	r13d, 0x80000
	jne	.label_1959
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_1959
.label_3504:
	and	r13d, 0x402
	cmp	r13, 2
	jne	.label_1959
.label_1995:
	and	eax, 0xffffff00
	or	eax, 0x13
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1959
.label_3505:
	test	r13d, 0x80000
	jne	.label_1959
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_1959
.label_3506:
	test	r13d, 0x80000
	jne	.label_1959
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1959
	.section	.text
	.align	32
	#Procedure 0x415de0

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	mov	r15, r8
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rdi
	mov	r14, qword ptr [rsi]
	call	parse_expression
	mov	rbp, rbx
	mov	rbx, rax
	xor	r12d, r12d
	test	rbx, rbx
	jne	.label_2000
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_2000
	jmp	.label_2007
	nop	word ptr [rax + rax]
.label_1998:
	test	rbx, rbx
	cmove	rbx, r12
.label_2000:
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	ecx, 8
	cmp	ecx, 0xa
	je	.label_2011
	test	r15, r15
	je	.label_2015
	cmp	eax, 9
	je	.label_2016
.label_2015:
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r15
	mov	r9, rbp
	call	parse_expression
	mov	r12, rax
	test	r12, r12
	jne	.label_2021
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_1996
.label_2021:
	test	rbx, rbx
	je	.label_1998
	test	r12, r12
	je	.label_1998
	mov	ecx, dword ptr [r14 + 0x80]
	cmp	ecx, 0xf
	je	.label_2003
	mov	rax, qword ptr [r14 + 0x70]
.label_1997:
	lea	edx, [rcx + 1]
	mov	dword ptr [r14 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r12], rdx
	mov	rbx, rdx
	jmp	.label_2000
.label_2003:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2018
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1997
.label_1996:
	xor	r12d, r12d
	test	rbx, rbx
	je	.label_2007
	mov	r14d, 0x400ff
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_2013:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_2013
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_2013
	nop	word ptr cs:[rax + rax]
.label_2009:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_2017
	cmp	eax, 6
	jne	.label_2019
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_2005
	nop	dword ptr [rax]
.label_2017:
	mov	rdi, qword ptr [rbp + 0x28]
.label_2005:
	call	free
.label_2019:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_2007
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_2009
	test	rbx, rbx
	mov	rbp, rax
	je	.label_2009
	jmp	.label_2013
.label_2011:
	mov	r12, rbx
	jmp	.label_2007
.label_2016:
	mov	r12, rbx
.label_2007:
	mov	rax, r12
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2018:
	mov	r14d, 0x400ff
	mov	rcx, rbp
.label_2020:
	mov	rbp, r12
	mov	r12, qword ptr [rbp + 8]
	test	r12, r12
	jne	.label_2020
	mov	r12, qword ptr [rbp + 0x10]
	test	r12, r12
	jne	.label_2020
	nop	word ptr cs:[rax + rax]
.label_2008:
	mov	r12, rcx
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_2002
	cmp	eax, 6
	jne	.label_2006
	mov	r15, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	jmp	.label_2010
.label_2002:
	mov	rdi, qword ptr [rbp + 0x28]
.label_2010:
	call	free
.label_2006:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	mov	rcx, r12
	je	.label_2012
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rbp
	mov	rbp, rax
	je	.label_2008
	test	r12, r12
	mov	rbp, rax
	je	.label_2008
	jmp	.label_2020
.label_2012:
	mov	r14d, 0x400ff
.label_2001:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_2001
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_2001
	nop	dword ptr [rax + rax]
.label_1999:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_2022
	cmp	eax, 6
	jne	.label_2004
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	mov	r15, rcx
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	call	free
	mov	rcx, r15
	jmp	.label_2004
.label_2022:
	mov	rdi, qword ptr [rbp + 0x28]
	mov	rbx, rcx
	call	free
	mov	rcx, rbx
.label_2004:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_2014
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_1999
	test	rbx, rbx
	mov	rbp, rax
	je	.label_1999
	jmp	.label_2001
.label_2014:
	mov	dword ptr [rcx], 0xc
	xor	r12d, r12d
	jmp	.label_2007
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416130

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	r12, r9
	mov	qword ptr [rsp + 0x18], r12
	mov	r13, r8
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x40], rdx
	mov	rbx, rsi
	mov	qword ptr [rsp + 0x38], rdi
	mov	eax, dword ptr [rdx + 8]
	movzx	ecx, al
	xor	r15d, r15d
	lea	edx, [rcx - 1]
	cmp	edx, 0x23
	ja	.label_2052
	mov	r9, qword ptr [rbx]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_2117]]
.label_3299:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rax + 0x78]
	cmp	ecx, 0x21
	sete	al
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.1_11
	mov	ecx, OFFSET FLAT:.str.2_9
	mov	rdi, r9
	mov	rbx, r9
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	je	.label_2074
	mov	r9, rbx
	jmp	.label_2032
.label_3300:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rax + 0x78]
	cmp	ecx, 0x23
	sete	al
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.3_7
	mov	ecx, OFFSET FLAT:.str_0
	mov	rdi, r9
	mov	rbx, r9
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	jne	.label_2152
.label_2074:
	mov	eax, dword ptr [r12]
	test	eax, eax
	mov	r9, rbx
	je	.label_2032
	jmp	.label_2052
.label_3290:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_2161
	mov	rax, qword ptr [r9 + 0x70]
.label_2050:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp + 0x40]
	movdqu	xmm1, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 2
	jl	.label_2165
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rcx + 0x48]
	cmp	qword ptr [rcx + 0x68], rax
	jg	.label_2186
	mov	rbp, r15
	jmp	.label_2032
.label_2028:
	mov	rbp, r9
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_2196
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	mov	r9, rbp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_2207
	mov	rax, qword ptr [r9 + 0x70]
.label_2262:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm1, xmm1
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp + 0x40]
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
.label_2258:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_2234
	mov	rax, qword ptr [r9 + 0x70]
.label_2268:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r15
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r15], rdx
	test	rbp, rbp
	je	.label_2035
	mov	qword ptr [rbp], rdx
	mov	rax, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rax
	mov	r15, rdx
	mov	rbp, rdx
	jg	.label_2186
	jmp	.label_2032
.label_2207:
	mov	edi, 0x3c8
	mov	rbp, r9
	call	malloc
	mov	r9, rbp
	test	rax, rax
	mov	ebp, 0
	je	.label_2258
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2262
.label_2234:
	mov	edi, 0x3c8
	mov	r13, r9
	call	malloc
	mov	r9, r13
	test	rax, rax
	je	.label_2035
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2268
.label_2186:
	mov	rbx, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_2028
	mov	rbp, r15
	jmp	.label_2032
.label_3291:
	mov	rbx, qword ptr [rsp + 0x40]
	mov	cl, byte ptr [rbx]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [r9 + 0xa8], rax
	je	.label_2034
	or	qword ptr [r9 + 0xa0], rax
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_2042
	mov	rax, qword ptr [r9 + 0x70]
.label_2270:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [rbx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	inc	qword ptr [r9 + 0x98]
	or	byte ptr [r9 + 0xb0], 2
	jmp	.label_2032
.label_3292:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_2071
	mov	rax, qword ptr [r9 + 0x70]
	mov	rsi, qword ptr [rsp + 0x40]
.label_2260:
	mov	qword ptr [rsp + 0x40], rsi
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [rsi]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 1
	jle	.label_2032
	or	byte ptr [r9 + 0xb0], 2
	jmp	.label_2032
.label_3293:
	mov	qword ptr [rsp + 0x20], r9
	mov	r15, qword ptr [rbx + 0x30]
	lea	rax, [r15 + 1]
	mov	qword ptr [rbx + 0x30], rax
	mov	rdx, qword ptr [rsp + 0x48]
	or	rdx, 0x800000
	mov	r14, qword ptr [rsp + 0x40]
	mov	rdi, r14
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	movzx	eax, byte ptr [r14 + 8]
	xor	esi, esi
	cmp	eax, 9
	je	.label_2057
	mov	rbp, r15
	inc	r13
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, r13
	mov	r9, r12
	call	parse_reg_exp
	mov	rsi, rax
	xor	r15d, r15d
	cmp	dword ptr [r12], 0
	jne	.label_2052
	movzx	eax, byte ptr [r14 + 8]
	cmp	eax, 9
	jne	.label_2133
	mov	r15, rbp
.label_2057:
	cmp	r15, 8
	mov	r9, qword ptr [rsp + 0x20]
	mov	rbx, r15
	ja	.label_2136
	mov	eax, 1
	mov	cl, bl
	shl	eax, cl
	cdqe	
	or	qword ptr [r9 + 0xa8], rax
.label_2136:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_2146
	mov	rax, qword ptr [r9 + 0x70]
.label_2039:
	mov	qword ptr [rsp + 0x40], r14
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rsi
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0x11
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rsi, rsi
	je	.label_2156
	mov	qword ptr [rsi], rbp
.label_2156:
	mov	qword ptr [rax + rcx + 0x30], rbx
	jmp	.label_2032
.label_3294:
	mov	rcx, qword ptr [rsp + 0x48]
	test	ecx, 0x20000
	jne	.label_2174
	mov	dword ptr [r12], 0x10
	jmp	.label_2178
.label_3296:
	mov	r15, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [r15]
	test	ax, 0x30f
	je	.label_2183
	mov	al, byte ptr [r9 + 0xb0]
	test	al, 0x10
	jne	.label_2107
	mov	cl, al
	or	cl, 0x10
	mov	byte ptr [r9 + 0xb0], cl
	xor	ebx, ebx
	test	al, 8
	mov	ebp, 0
	jne	.label_2193
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_2203]]
	movdqu	xmmword ptr [r9 + 0xb8], xmm0
	mov	ebp, 2
	mov	ebx, 0x80
	test	al, 4
	je	.label_2193
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r9 + 0xc8], xmm0
.label_2107:
	mov	eax, dword ptr [r15]
.label_2183:
	cmp	eax, 0x200
	je	.label_2215
	cmp	eax, 0x100
	jne	.label_2217
	mov	dword ptr [r15], 6
	mov	r13, r15
	lea	r15, [r9 + 0x80]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	je	.label_2221
	mov	rax, qword ptr [r9 + 0x70]
.label_2170:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 9
	jmp	.label_2040
.label_3298:
	mov	rcx, qword ptr [rsp + 0x48]
	test	ecx, 0x1000000
	jne	.label_2030
.label_3295:
	mov	rcx, qword ptr [rsp + 0x48]
	test	cl, 0x20
	jne	.label_2030
	test	cl, 0x10
	jne	.label_2253
.label_2174:
	and	eax, 0xffffff00
	or	eax, 1
	mov	rbx, qword ptr [rsp + 0x40]
	mov	dword ptr [rbx + 8], eax
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_2254
	mov	rax, qword ptr [r9 + 0x70]
.label_2222:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [rbx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
.label_2026:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_2032
.label_3301:
	mov	dword ptr [r12], 5
	jmp	.label_2178
.label_3297:
	mov	qword ptr [rsp + 0x20], r9
	mov	qword ptr [rsp + 0xe0], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	r13, r13
	je	.label_2041
	test	rbx, rbx
	je	.label_2041
	mov	qword ptr [rsp + 0x58], rbx
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rbx, qword ptr [rsp + 0x48]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	cmp	edx, 0x19
	je	.label_2054
	cmp	edx, 2
	je	.label_2061
	mov	dword ptr [rsp + 0x50], 0
	jmp	.label_2062
.label_2152:
	mov	r9, rbx
	jmp	.label_2032
.label_2253:
	mov	r15, qword ptr [rsp + 0x40]
	mov	rdi, r15
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	mov	r14, qword ptr [rsp + 0x48]
	mov	rdx, r14
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	mov	r8, r13
	mov	r9, r12
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	parse_expression
.label_2165:
	mov	rbp, r15
	jmp	.label_2032
.label_2054:
	mov	rcx, qword ptr [rsp + 0x58]
	or	byte ptr [rcx + 0x20], 1
	test	bh, 1
	je	.label_2082
	or	byte ptr [r13 + 1], 4
.label_2082:
	cdqe	
	mov	rsi, qword ptr [rsp + 0x38]
	add	qword ptr [rsi + 0x48], rax
	mov	rdi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	cmp	edx, 2
	je	.label_2061
	mov	dl, 1
	mov	dword ptr [rsp + 0x50], edx
.label_2062:
	mov	qword ptr [rsp + 0x60], r13
	movzx	edx, cl
	cmp	edx, 0x15
	jne	.label_2102
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rbp + 8], ecx
.label_2102:
	lea	rcx, [rsp + 0xa0]
	mov	qword ptr [rsp + 0xd8], rcx
	mov	dword ptr [rsp + 0xd0], 3
	lea	rdi, [rsp + 0xd0]
	mov	r9d, 1
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, rbp
	mov	ecx, eax
	mov	rbx, qword ptr [rsp + 0x48]
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_2086
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_2121
.label_2198:
	cmp	eax, 2
	je	.label_2130
	mov	qword ptr [rsp + 0x58], r15
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x20], r9
	lea	rax, [rsp + 0xa0]
	mov	qword ptr [rsp + 0xd8], rax
	mov	dword ptr [rsp + 0xd0], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0xd0]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdx, rbp
	mov	ecx, ebx
	mov	rbx, qword ptr [rsp + 0x48]
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	je	.label_2121
	jmp	.label_2086
.label_3321:
	mov	cl, byte ptr [rsp + 0xd8]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	or	qword ptr [r13 + rcx*8], rax
	jmp	.label_2044
.label_3322:
	mov	r15, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rbp, qword ptr [rsp + 0x28]
	cmp	rbp, rcx
	je	.label_2167
	mov	rax, qword ptr [r15]
.label_2266:
	mov	r9, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rsp + 0x60]
	mov	edx, dword ptr [rsp + 0xd8]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_2073
.label_2031:
	mov	rax, qword ptr [rsp + 0xd8]
	mov	al, byte ptr [rax]
	jmp	.label_2236
.label_2162:
	xor	eax, eax
.label_2236:
	cmp	ebx, 3
	je	.label_2187
	test	ebx, ebx
	jne	.label_2089
	mov	bpl, byte ptr [rsp + 0xc8]
	jmp	.label_2191
.label_2187:
	mov	rcx, qword ptr [rsp + 0xc8]
	mov	bpl, byte ptr [rcx]
	jmp	.label_2191
.label_2089:
	xor	ebp, ebp
.label_2191:
	cmp	r15d, 3
	je	.label_2112
	test	r15d, r15d
	jne	.label_2202
.label_2112:
	test	r12, r12
	movzx	edx, al
	je	.label_2127
	mov	edi, edx
	call	btowc
	mov	edx, eax
	jmp	.label_2127
.label_2202:
	mov	edx, dword ptr [rsp + 0xd8]
.label_2127:
	cmp	ebx, 3
	je	.label_2094
	test	ebx, ebx
	jne	.label_2210
.label_2094:
	test	r12, r12
	movzx	ebp, bpl
	je	.label_2212
	mov	edi, ebp
	mov	ebx, edx
	call	btowc
	mov	edx, ebx
	mov	ebp, eax
	jmp	.label_2212
.label_2210:
	mov	ebp, dword ptr [rsp + 0xc8]
.label_2212:
	cmp	edx, -1
	mov	ecx, 3
	je	.label_2029
	cmp	ebp, -1
	je	.label_2029
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_2225
	cmp	edx, ebp
	mov	ecx, 0xb
	ja	.label_2029
.label_2225:
	test	r12, r12
	je	.label_2228
	mov	rax, qword ptr [r12 + 0x40]
	cmp	qword ptr [rsp + 0x10], rax
	je	.label_2195
	mov	rdi, qword ptr [r12 + 8]
	mov	r14, qword ptr [r12 + 0x10]
	mov	r9, r13
	mov	r15, qword ptr [rsp + 0x58]
	mov	ebx, dword ptr [rsp + 0xc]
.label_2126:
	mov	dword ptr [rdi + rax*4], edx
	lea	rcx, [rax + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [r14 + rax*4], ebp
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_2256
.label_2228:
	mov	r12, qword ptr [rsp + 0x18]
	mov	r9, r13
	mov	r15, qword ptr [rsp + 0x58]
	mov	ebx, dword ptr [rsp + 0xc]
.label_2256:
	mov	eax, ebp
	mov	edx, edx
	xor	ecx, ecx
	mov	r13, qword ptr [rsp + 0x60]
.label_2120:
	cmp	rdx, rcx
	ja	.label_2070
	cmp	rcx, rax
	ja	.label_2070
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	shr	rdi, 0x3a
	add	rdi, rcx
	sar	rdi, 6
	or	qword ptr [r13 + rdi*8], rsi
.label_2070:
	inc	rcx
	cmp	rcx, 0x100
	jne	.label_2120
	mov	dword ptr [r12], 0
	jmp	.label_2073
.label_2167:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_2063
	lea	rbp, [rbp + rbp + 1]
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	jmp	.label_2266
.label_2195:
	mov	dword ptr [rsp + 8], edx
	mov	rax, qword ptr [rsp + 0x10]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r12 + 8]
	lea	rbx, [rax*4 + 4]
	mov	rsi, rbx
	call	realloc
	mov	r14, rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, rbx
	call	realloc
	mov	rdi, r14
	mov	r14, rax
	test	rdi, rdi
	mov	r15, qword ptr [rsp + 0x58]
	je	.label_2038
	test	r14, r14
	je	.label_2038
	mov	rax, qword ptr [rsp + 0x10]
	lea	rax, [rax + rax + 1]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [r12 + 8], rdi
	mov	qword ptr [r12 + 0x10], r14
	mov	rax, qword ptr [r12 + 0x40]
	mov	r9, r13
	mov	ebx, dword ptr [rsp + 0xc]
	mov	edx, dword ptr [rsp + 8]
	jmp	.label_2126
.label_2121:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ebx, eax
	mov	r15d, dword ptr [rsp + 0xd0]
	cmp	r15d, 2
	je	.label_2060
	cmp	r15d, 4
	jne	.label_2065
	mov	rax, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rax + 0x78]
	mov	r8, qword ptr [rsp + 0xd8]
	mov	r13, qword ptr [rsp + 0x60]
	mov	rsi, r13
	mov	r15, qword ptr [rsp + 0x58]
	mov	rdx, r15
	lea	rcx, [rsp + 0xe0]
	mov	r9, qword ptr [rsp + 0x48]
	call	build_charclass
	mov	dword ptr [r12], eax
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x20]
	je	.label_2073
	jmp	.label_2076
.label_2065:
	movzx	eax, byte ptr [rbp + 8]
	cmp	eax, 0x16
	mov	r9, qword ptr [rsp + 0x20]
	je	.label_2077
	cmp	eax, 2
	jne	.label_2081
	jmp	.label_2085
.label_2077:
	mov	r13, r9
	movsxd	rax, ebx
	mov	rbp, qword ptr [rsp + 0x38]
	add	qword ptr [rbp + 0x48], rax
	lea	rdi, [rsp + 0x70]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x78]
	cmp	ecx, 0x15
	je	.label_2096
	cmp	ecx, 2
	je	.label_2101
	lea	rcx, [rsp + 0x80]
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dword ptr [rsp + 0xc0], 3
	mov	r9d, 1
	lea	rdi, [rsp + 0xc0]
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	lea	rdx, [rsp + 0x70]
	mov	ecx, eax
	mov	rbx, qword ptr [rsp + 0x48]
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_2115
	mov	qword ptr [rsp + 0x18], r12
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	cmp	dword ptr [r13 + 0xb4], 1
	mov	r12, qword ptr [rsp + 0x58]
	jg	.label_2123
	xor	r12d, r12d
.label_2123:
	mov	ecx, 0xb
	mov	ebx, dword ptr [rsp + 0xc0]
	cmp	ebx, 2
	je	.label_2029
	mov	dword ptr [rsp + 0xc], eax
	cmp	ebx, 4
	je	.label_2029
	cmp	r15d, 3
	jne	.label_2138
	mov	rdi, qword ptr [rsp + 0xd8]
	call	strlen
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_2029
.label_2138:
	cmp	ebx, 3
	jne	.label_2150
	mov	rdi, qword ptr [rsp + 0xc8]
	call	strlen
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_2029
.label_2150:
	cmp	r15d, 3
	je	.label_2031
	test	r15d, r15d
	jne	.label_2162
	mov	al, byte ptr [rsp + 0xd8]
	jmp	.label_2236
.label_2096:
	mov	eax, ebx
	neg	eax
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	rax, qword ptr [rsp + 0x40]
	mov	byte ptr [rax + 8], 1
	mov	r9, r13
.label_2081:
	mov	qword ptr [rsp + 0x20], r9
	mov	eax, r15d
	cmp	r15d, 3
	ja	.label_2169
	jmp	qword ptr [word ptr [+ (rax * 8) + label_2171]]
.label_2060:
	mov	rbp, qword ptr [rsp + 0xd8]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	jne	.label_2179
	mov	cl, byte ptr [rbp]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	or	qword ptr [r13 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_2044:
	mov	r9, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 0x58]
.label_2073:
	mov	rax, qword ptr [rsp + 0x40]
	movzx	eax, byte ptr [rax + 8]
	cmp	eax, 0x15
	jne	.label_2198
	movsxd	rax, ebx
	mov	rcx, qword ptr [rsp + 0x38]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0x50]
	test	al, al
	je	.label_2205
	movdqu	xmm0, xmmword ptr [r13]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r13], xmm0
	movdqu	xmm0, xmmword ptr [r13 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r13 + 0x10], xmm0
.label_2205:
	mov	eax, dword ptr [r9 + 0xb4]
	cmp	eax, 2
	jl	.label_2218
	mov	rcx, qword ptr [r9 + 0x78]
	mov	rdx, qword ptr [rcx]
	and	qword ptr [r13], rdx
	mov	rdx, qword ptr [rcx + 8]
	and	qword ptr [r13 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	and	qword ptr [r13 + 0x10], rdx
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r13 + 0x18], rcx
.label_2218:
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_2125
	cmp	qword ptr [r15 + 0x30], 0
	jne	.label_2125
	cmp	qword ptr [r15 + 0x38], 0
	jne	.label_2125
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_2125
	cmp	eax, 2
	jl	.label_2251
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_2125
	test	byte ptr [r15 + 0x20], 1
	jne	.label_2125
.label_2251:
	mov	rdi, qword ptr [r15]
	mov	rbp, r9
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	r9, rbp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_2109
	mov	rax, qword ptr [r9 + 0x70]
.label_2214:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r13
	mov	dword ptr [rax + rcx + 0x38], 3
	jmp	.label_2026
.label_2125:
	or	byte ptr [r9 + 0xb0], 2
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_2267
	mov	rax, qword ptr [r9 + 0x70]
.label_2114:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdi, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r15
	mov	dword ptr [rax + rcx + 0x38], 6
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	qword ptr [r13], 0
	jne	.label_2045
	cmp	qword ptr [r13 + 8], 0
	jne	.label_2045
	cmp	qword ptr [r13 + 0x10], 0
	jne	.label_2045
	cmp	qword ptr [r13 + 0x18], 0
	je	.label_2145
.label_2045:
	mov	qword ptr [rsp + 0x60], r13
	mov	eax, dword ptr [r9 + 0x80]
	cmp	eax, 0xf
	je	.label_2049
	mov	rbp, qword ptr [r9 + 0x70]
.label_2206:
	lea	ecx, [rax + 1]
	mov	dword ptr [r9 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	rax, qword ptr [rsp + 0x60]
	mov	qword ptr [rbp + rbx + 0x30], rax
	mov	dword ptr [rbp + rbx + 0x38], 3
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_2059
	mov	rax, qword ptr [r9 + 0x70]
.label_2172:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rcx + 1]
	mov	dword ptr [r9 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdx
	mov	qword ptr [rax + rcx + 0x18], rdi
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rdx], rbp
	mov	qword ptr [rdi], rbp
	jmp	.label_2032
.label_2215:
	mov	dword ptr [r15], 5
	mov	r13, r15
	lea	r15, [r9 + 0x80]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	je	.label_2100
	mov	rax, qword ptr [r9 + 0x70]
.label_2192:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 0xa
.label_2040:
	mov	dword ptr [r13], ecx
	mov	ebx, dword ptr [r15]
	cmp	ebx, 0xf
	je	.label_2124
	mov	rax, qword ptr [r9 + 0x70]
.label_2056:
	lea	ecx, [rbx + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_2051:
	mov	ecx, dword ptr [r15]
	cmp	ecx, 0xf
	je	.label_2153
	mov	rax, qword ptr [r9 + 0x70]
.label_2068:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbp
	mov	qword ptr [rax + rcx + 0x18], rbx
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbp, rbp
	je	.label_2157
	mov	qword ptr [rbp], r15
.label_2157:
	test	rbx, rbx
	mov	rdx, qword ptr [rsp + 0x48]
	je	.label_2035
	mov	qword ptr [rbx], r15
	test	rbp, rbp
	jne	.label_2173
	jmp	.label_2035
.label_2217:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_2177
	mov	r13, r15
	mov	rax, qword ptr [r9 + 0x70]
.label_2208:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rdx, qword ptr [rsp + 0x48]
.label_2173:
	mov	rdi, r13
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rsi, rbx
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_2052
.label_2254:
	mov	rbp, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2035
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2222
.label_2086:
	mov	qword ptr [rsp + 0x48], rbx
	mov	dword ptr [r12], eax
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_2072
.label_2061:
	mov	dword ptr [r12], 2
	jmp	.label_2237
.label_2130:
	mov	dword ptr [r12], 7
.label_2076:
	mov	qword ptr [rsp + 0x20], r9
	jmp	.label_2024
.label_2196:
	mov	r9, rbp
	mov	rbp, r15
	jmp	.label_2032
.label_2161:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2035
	mov	r9, rbx
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2050
.label_2034:
	mov	dword ptr [r12], 6
	jmp	.label_2178
.label_2071:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rsi, qword ptr [rsp + 0x40]
	je	.label_2035
	mov	r9, rbx
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2260
.label_2041:
	mov	rdi, r13
	call	free
	mov	rdi, rbx
	call	free
	jmp	.label_2035
.label_2042:
	mov	rbp, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2035
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2270
.label_2146:
	mov	r15, rsi
	mov	rbp, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2035
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rsi, r15
	jmp	.label_2039
.label_2124:
	mov	edi, 0x3c8
	mov	rbx, r9
	call	malloc
	mov	r9, rbx
	xor	ebx, ebx
	test	rax, rax
	je	.label_2051
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_2056
.label_2153:
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2035
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	jmp	.label_2068
.label_2179:
	mov	dword ptr [r12], 3
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_2072
.label_2193:
	mov	r13, r9
	call	__ctype_b_loc
	mov	r9, r13
	mov	rdx, qword ptr [rax]
	inc	rbx
.label_2105:
	mov	rsi, rbx
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2103:
	test	byte ptr [rdx + rsi*2 - 2], 8
	je	.label_2087
	mov	edi, 1
	mov	cl, al
	shl	rdi, cl
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_2087:
	cmp	esi, 0x5f
	je	.label_2092
	movzx	ecx, word ptr [rdx + rsi*2]
	and	ecx, 8
	test	cx, cx
	je	.label_2095
.label_2092:
	lea	ecx, [rax + 1]
	mov	edi, 1
	shl	rdi, cl
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_2095:
	add	rax, 2
	add	rsi, 2
	cmp	rax, 0x40
	jne	.label_2103
	inc	rbp
	add	rbx, 0x40
	cmp	ebp, 4
	jne	.label_2105
	jmp	.label_2107
.label_2267:
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2063
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r13, qword ptr [rsp + 0x60]
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_2114
.label_2049:
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_2063
	mov	r9, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	rdi, rbx
	jmp	.label_2206
.label_2059:
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2063
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rdi, r15
	jmp	.label_2172
.label_2085:
	mov	dword ptr [r12], 7
	jmp	.label_2072
.label_2221:
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 9
	xor	ebp, ebp
	test	rax, rax
	je	.label_2168
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_2170
.label_2100:
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 0xa
	xor	ebp, ebp
	test	rax, rax
	je	.label_2184
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_2192
.label_2177:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2035
	mov	r13, r15
	mov	r9, rbx
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2208
.label_2035:
	mov	dword ptr [r12], 0xc
	jmp	.label_2178
.label_2101:
	mov	dword ptr [r12], 7
	jmp	.label_2220
.label_2145:
	mov	rbp, rdi
	mov	rdi, r13
	mov	rbx, r9
	call	free
	mov	r9, rbx
	jmp	.label_2032
.label_2133:
	test	rsi, rsi
	je	.label_2227
	mov	r14d, 0x400ff
.label_2229:
	mov	rbp, rsi
	mov	rsi, qword ptr [rbp + 8]
	test	rsi, rsi
	jne	.label_2229
	mov	rsi, qword ptr [rbp + 0x10]
	test	rsi, rsi
	jne	.label_2229
.label_2252:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_2194
	cmp	eax, 6
	jne	.label_2239
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_2246
.label_2194:
	mov	rdi, qword ptr [rbp + 0x28]
.label_2246:
	call	free
.label_2239:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_2227
	mov	rsi, qword ptr [rax + 0x10]
	cmp	rsi, rbp
	mov	rbp, rax
	je	.label_2252
	test	rsi, rsi
	mov	rbp, rax
	je	.label_2252
	jmp	.label_2229
.label_2227:
	mov	dword ptr [r12], 8
	jmp	.label_2178
.label_2168:
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_2040
.label_2184:
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_2040
.label_2115:
	mov	dword ptr [r12], eax
	jmp	.label_2220
.label_2109:
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x20], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2063
	mov	r9, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r13, qword ptr [rsp + 0x60]
	jmp	.label_2214
.label_2063:
	mov	dword ptr [r12], 0xc
	mov	r13, qword ptr [rsp + 0x60]
.label_2237:
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_2024
.label_2038:
	call	free
	mov	rdi, r14
	call	free
	mov	ecx, 0xc
.label_2029:
	mov	r12, qword ptr [rsp + 0x18]
	mov	dword ptr [r12], ecx
.label_2220:
	mov	r9, r13
.label_2072:
	mov	r13, qword ptr [rsp + 0x60]
	mov	r15, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x20], r9
.label_2024:
	mov	rdi, r13
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	cmp	dword ptr [r12], 0
	mov	r15d, 0
	mov	r9, qword ptr [rsp + 0x20]
	mov	ebp, 0
	jne	.label_2052
.label_2032:
	mov	qword ptr [rsp + 0x20], r9
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdi, rbx
	mov	r13, qword ptr [rsp + 0x38]
	mov	rsi, r13
	mov	r14, qword ptr [rsp + 0x48]
	mov	rdx, r14
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	mov	eax, r14d
	and	eax, 0x1000000
	mov	qword ptr [rsp + 0x30], rax
	and	r14d, 0x200000
	mov	qword ptr [rsp + 0x10], r14
	nop	word ptr cs:[rax + rax]
.label_2230:
	movzx	eax, byte ptr [rbx + 8]
	cmp	eax, 0x17
	ja	.label_2037
	mov	ecx, 0x8c0800
	bt	ecx, eax
	jae	.label_2104
	mov	r14, qword ptr [r13 + 0x48]
	movdqu	xmm0, xmmword ptr [rbx]
	movdqa	xmmword ptr [rsp + 0xa0], xmm0
	mov	rdx, -1
	cmp	eax, 0x17
	je	.label_2084
	mov	r14, rbp
	cmp	eax, 0x12
	sete	cl
	movzx	r15d, cl
	cmp	eax, 0x13
	mov	rcx, -1
	mov	eax, 1
	cmove	rcx, rax
	jmp	.label_2091
.label_2131:
	lea	rax, [r15 + r15*4]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	edx, 0x8000
	cmovle	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_2084:
	mov	r15, rdx
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	mov	dl, byte ptr [rbx]
	movzx	ecx, dl
	movzx	eax, byte ptr [rbx + 8]
	mov	esi, 0x18
	cmp	eax, 0x18
	je	.label_2111
	cmp	eax, 2
	je	.label_2119
	mov	dl, 0x2c
	cmp	ecx, 0x2c
	je	.label_2099
	cmp	ecx, 0x30
	mov	rdx, -2
	jb	.label_2084
	cmp	eax, 1
	jne	.label_2084
	cmp	r15, -2
	je	.label_2084
	cmp	ecx, 0x39
	ja	.label_2084
	cmp	r15, -1
	jne	.label_2131
	lea	rdx, [rcx - 0x30]
	jmp	.label_2084
.label_2099:
	mov	esi, eax
	nop	word ptr [rax + rax]
.label_2111:
	cmp	r15, -1
	jne	.label_2137
	movzx	eax, dl
	cmp	eax, 0x2c
	jne	.label_2139
	cmp	esi, 1
	mov	r15d, 0
	je	.label_2140
.label_2139:
	mov	qword ptr [rsp + 0x50], rbp
	jmp	.label_2144
	nop	word ptr cs:[rax + rax]
.label_2137:
	cmp	r15, -2
	je	.label_2119
	cmp	esi, 0x18
	je	.label_2158
	cmp	esi, 1
	jne	.label_2119
	movzx	ecx, dl
	cmp	ecx, 0x2c
	jne	.label_2119
.label_2140:
	mov	qword ptr [rsp + 0x60], r14
	mov	r14, rbp
	mov	rbp, r12
	mov	rdx, -1
	jmp	.label_2142
.label_2158:
	mov	r14, rbp
	mov	rcx, r15
	jmp	.label_2166
.label_2216:
	lea	rax, [r12 + r12*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	cmovg	rdx, rax
	nop	dword ptr [rax]
.label_2142:
	mov	r12, rdx
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	movzx	ecx, byte ptr [rbx]
	movzx	eax, byte ptr [rbx + 8]
	cmp	eax, 0x18
	je	.label_2180
	cmp	eax, 2
	je	.label_2185
	cmp	ecx, 0x2c
	je	.label_2180
	cmp	ecx, 0x30
	mov	rdx, -2
	jb	.label_2142
	cmp	eax, 1
	jne	.label_2142
	cmp	r12, -2
	je	.label_2142
	movzx	eax, cl
	cmp	eax, 0x39
	ja	.label_2142
	cmp	r12, -1
	jne	.label_2216
	add	rcx, -0x30
	mov	rdx, rcx
	jmp	.label_2142
.label_2180:
	mov	rcx, r12
	cmp	rcx, -2
	je	.label_2185
	cmp	rcx, -1
	mov	r12, rbp
	je	.label_2166
	cmp	r15, rcx
	jg	.label_2211
.label_2166:
	cmp	eax, 0x18
	jne	.label_2211
	cmp	rcx, -1
	mov	rax, rcx
	cmove	rax, r15
	cmp	rax, 0x8000
	jge	.label_2097
.label_2091:
	mov	rbp, rcx
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x48]
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	test	r14, r14
	mov	qword ptr [rsp + 0x50], r14
	mov	ecx, 0
	je	.label_2078
	mov	r9, rbp
	mov	qword ptr [rsp + 0x58], r9
	mov	rax, r9
	or	rax, r15
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, rdi
	je	.label_2055
	test	r15, r15
	mov	eax, 0
	mov	qword ptr [rsp + 0x28], rax
	mov	r12, rdi
	mov	r8, qword ptr [rsp + 0x20]
	pxor	xmm1, xmm1
	jg	.label_2241
.label_2182:
	movzx	eax, byte ptr [r12 + 0x30]
	cmp	eax, 0x11
	jne	.label_2245
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	word ptr [rax + rax]
.label_2249:
	mov	rcx, rdx
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_2249
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_2249
	nop	word ptr cs:[rax + rax]
.label_2261:
	mov	edx, dword ptr [rcx + 0x30]
	movzx	esi, dl
	cmp	esi, 0x11
	jne	.label_2067
	cmp	qword ptr [rcx + 0x28], rax
	jne	.label_2067
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_2067:
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	je	.label_2245
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rcx, rsi
	je	.label_2261
	test	rdx, rdx
	mov	rcx, rsi
	je	.label_2261
	jmp	.label_2249
	nop	dword ptr [rax + rax]
.label_2245:
	mov	qword ptr [rsp + 0x50], rdi
	cmp	r9, -1
	sete	bl
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_2265
	mov	rax, qword ptr [r8 + 0x70]
.label_2106:
	movzx	edx, bl
	or	edx, 0xa
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], edx
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r12, r12
	je	.label_2269
	mov	qword ptr [r12], r13
.label_2269:
	add	r15, 2
	cmp	r15, r9
	jg	.label_2118
	jmp	.label_2046
	nop	word ptr cs:[rax + rax]
.label_2055:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_2055
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_2055
	nop	word ptr cs:[rax + rax]
.label_2083:
	mov	eax, dword ptr [rbx + 0x30]
	mov	ecx, 0x400ff
	and	eax, ecx
	cmp	eax, 3
	je	.label_2064
	cmp	eax, 6
	jne	.label_2066
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	mov	rdi, qword ptr [rbp + 8]
	call	free
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rdi, rbp
	jmp	.label_2053
	nop	word ptr cs:[rax + rax]
.label_2064:
	mov	rdi, qword ptr [rbx + 0x28]
.label_2053:
	call	free
.label_2066:
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_2078
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbx, rdx
	je	.label_2083
	test	rax, rax
	mov	rbx, rdx
	je	.label_2083
	jmp	.label_2055
.label_2159:
	mov	qword ptr [rsp + 0x58], r9
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2201
	mov	r8, r15
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_2209
.label_2110:
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	r12, rbx
	jmp	.label_2108
.label_2116:
	mov	edi, 0x3c8
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	pxor	xmm1, xmm1
	mov	r8, rbp
	test	rax, rax
	je	.label_2047
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2079
.label_2201:
	mov	qword ptr [rsp + 0x80], 0
	jmp	.label_2128
.label_2243:
	mov	qword ptr [r14], 0
.label_2128:
	xor	r12d, r12d
.label_2108:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, r15
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 0x58]
	je	.label_2047
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2143
	nop	word ptr cs:[rax + rax]
.label_2046:
	mov	rbp, qword ptr [r12]
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_2159
	mov	rax, qword ptr [r8 + 0x70]
.label_2209:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbx, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x80], rbx
	mov	rcx, rbx
	lea	r14, [rsp + 0x80]
	jmp	.label_2163
	nop	word ptr cs:[rax + rax]
.label_2025:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r14], rcx
.label_2163:
	mov	qword ptr [rcx], rbp
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rbp, qword ptr [r14]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_2213
	lea	r14, [rbp + 8]
	mov	r12, rax
	jmp	.label_2219
	nop	
.label_2213:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2188:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_2175
	test	r12, r12
	jne	.label_2176
.label_2175:
	mov	r12, qword ptr [rax]
	mov	rbp, qword ptr [rbp]
	test	r12, r12
	jne	.label_2188
	jmp	.label_2098
.label_2176:
	lea	r14, [rbp + 0x10]
.label_2219:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_2238
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_2025
.label_2238:
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2243
	mov	r8, r15
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_2025
	nop	word ptr cs:[rax + rax]
.label_2098:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_2110
	mov	rax, qword ptr [r8 + 0x70]
	mov	r12, rbx
.label_2143:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r13], rbx
	test	r12, r12
	je	.label_2047
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_2116
	mov	rax, qword ptr [r8 + 0x70]
.label_2079:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0xa
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], r13
	cmp	r15, r9
	lea	r15, [r15 + 1]
	jl	.label_2046
.label_2118:
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_2242
	mov	rbx, rax
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	mov	r12, qword ptr [rsp + 0x18]
	je	.label_2190
	mov	rax, qword ptr [r8 + 0x70]
.label_2069:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r13], rdx
	mov	r13, rdx
	jmp	.label_2231
.label_2242:
	mov	r12, qword ptr [rsp + 0x18]
.label_2231:
	xor	eax, eax
	mov	rcx, r13
	jmp	.label_2093
.label_2211:
	mov	qword ptr [rsp + 0x50], r14
.label_2144:
	mov	dword ptr [r12], 0xa
	xor	ecx, ecx
	jmp	.label_2078
.label_2241:
	cmp	r15, 2
	mov	r13, rdi
	mov	rbp, rdi
	jl	.label_2088
	mov	rax, qword ptr [rsp + 0x50]
	mov	rbp, qword ptr [rax]
	mov	r13, rax
	mov	ebx, 2
	mov	rdi, rax
	jmp	.label_2048
.label_2265:
	mov	edi, 0x3c8
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	pxor	xmm1, xmm1
	mov	r8, rbp
	test	rax, rax
	je	.label_2047
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2106
.label_2185:
	mov	r12, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x60]
.label_2119:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_2113
	mov	qword ptr [r13 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xa0]
	movdqu	xmmword ptr [rbx], xmm0
	mov	byte ptr [rbx + 8], 1
	mov	rcx, rbp
	mov	qword ptr [rsp + 0x50], rbp
	jmp	.label_2078
.label_2148:
	mov	qword ptr [rsp + 0x60], rdi
	mov	qword ptr [rsp + 0x58], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2132
	mov	r14, rbp
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_2134
.label_2263:
	mov	qword ptr [rsp + 0x60], rdi
	mov	r13, rbp
	jmp	.label_2149
.label_2132:
	mov	qword ptr [rsp + 0x80], 0
	jmp	.label_2154
.label_2259:
	mov	qword ptr [r12], 0
.label_2154:
	xor	r13d, r13d
.label_2149:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, qword ptr [rsp + 0x20]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	je	.label_2047
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_2232
	nop	dword ptr [rax + rax]
.label_2048:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_2148
	mov	r14, rbp
	mov	rax, qword ptr [r8 + 0x70]
.label_2134:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x80], rbp
	mov	rcx, rbp
	lea	r12, [rsp + 0x80]
	jmp	.label_2181
	nop	word ptr cs:[rax + rax]
.label_2257:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r12], rcx
.label_2181:
	mov	qword ptr [rcx], r14
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rdx, qword ptr [r12]
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	je	.label_2233
	mov	r14, rdx
	lea	r12, [r14 + 8]
	mov	r13, rax
	jmp	.label_2240
	nop	word ptr cs:[rax + rax]
.label_2233:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2250:
	mov	rcx, rax
	mov	rax, r13
	mov	r13, qword ptr [rax + 0x10]
	cmp	r13, rcx
	je	.label_2043
	test	r13, r13
	jne	.label_2248
.label_2043:
	mov	r13, qword ptr [rax]
	mov	rdx, qword ptr [rdx]
	test	r13, r13
	jne	.label_2250
	jmp	.label_2090
.label_2248:
	mov	r14, rdx
	lea	r12, [r14 + 0x10]
.label_2240:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_2255
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_2257
.label_2255:
	mov	qword ptr [rsp + 0x60], rdi
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2259
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_2257
	nop	word ptr cs:[rax + rax]
.label_2090:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_2263
	mov	rax, qword ptr [r8 + 0x70]
	mov	r13, rbp
.label_2232:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdi
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rdi, rdi
	je	.label_2027
	mov	qword ptr [rdi], rdx
.label_2027:
	test	r13, r13
	je	.label_2047
	mov	rbp, rdx
	mov	qword ptr [r13], rbp
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	mov	rdi, rbp
	jl	.label_2048
.label_2088:
	cmp	r15, r9
	jne	.label_2200
	mov	qword ptr [rsp + 0x20], r8
	mov	rcx, rbp
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_2078
.label_2190:
	mov	qword ptr [rsp + 0x20], r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	ecx, 0
	je	.label_2078
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	jmp	.label_2069
.label_2200:
	mov	rbx, qword ptr [r13]
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_2075
	mov	qword ptr [rsp + 0x28], rbp
	mov	rax, qword ptr [r8 + 0x70]
.label_2199:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r12, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x80], r12
	mov	rcx, r12
	lea	rbp, [rsp + 0x80]
	jmp	.label_2235
	nop	word ptr cs:[rax + rax]
.label_2160:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [rbp], rcx
.label_2235:
	mov	qword ptr [rcx], rbx
	mov	rax, qword ptr [rbp]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rbx, qword ptr [rbp]
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	je	.label_2129
	lea	rbp, [rbx + 8]
	mov	r13, rax
	jmp	.label_2135
.label_2129:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2151:
	mov	rcx, rax
	mov	rax, r13
	mov	r13, qword ptr [rax + 0x10]
	cmp	r13, rcx
	je	.label_2141
	test	r13, r13
	jne	.label_2147
.label_2141:
	mov	r13, qword ptr [rax]
	mov	rbx, qword ptr [rbx]
	test	r13, r13
	jne	.label_2151
	jmp	.label_2155
.label_2147:
	lea	rbp, [rbx + 0x10]
.label_2135:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_2264
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_2160
.label_2264:
	mov	qword ptr [rsp + 0x58], r9
	mov	r14, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2164
	mov	r8, r14
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_2160
.label_2113:
	mov	qword ptr [rsp + 0x50], rbp
	cmp	eax, 2
	setne	al
	movzx	eax, al
	add	eax, 9
	mov	dword ptr [r12], eax
	xor	ecx, ecx
	jmp	.label_2078
.label_2155:
	mov	rdi, qword ptr [rsp + 0x50]
	jmp	.label_2182
.label_2097:
	mov	qword ptr [rsp + 0x50], r14
	mov	dword ptr [r12], 0xf
	xor	ecx, ecx
	jmp	.label_2078
.label_2075:
	mov	r14, r9
	mov	r12, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2197
	mov	qword ptr [rsp + 0x28], rbp
	mov	r8, r12
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	r9, r14
	jmp	.label_2199
.label_2197:
	mov	qword ptr [rsp + 0x80], 0
	jmp	.label_2047
.label_2164:
	mov	qword ptr [rbp], 0
.label_2047:
	mov	r12, qword ptr [rsp + 0x18]
	mov	dword ptr [r12], 0xc
	xor	ecx, ecx
.label_2078:
	test	rcx, rcx
	sete	al
	jne	.label_2093
	mov	edx, dword ptr [r12]
	test	edx, edx
	mov	rbx, qword ptr [rsp + 0x40]
	je	.label_2223
	jmp	.label_2226
	nop	word ptr cs:[rax + rax]
.label_2093:
	mov	rbx, qword ptr [rsp + 0x40]
.label_2223:
	cmp	qword ptr [rsp + 0x30], 0
	mov	rbp, rcx
	mov	r13, qword ptr [rsp + 0x38]
	je	.label_2230
	movzx	edx, byte ptr [rbx + 8]
	cmp	edx, 0x17
	je	.label_2224
	cmp	edx, 0xb
	mov	rbp, rcx
	jne	.label_2230
.label_2224:
	test	al, al
	jne	.label_2030
	mov	r14d, 0x400ff
	nop	dword ptr [rax]
.label_2244:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_2244
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_2244
	nop	word ptr cs:[rax + rax]
.label_2204:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_2247
	cmp	eax, 6
	jne	.label_2080
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_2122
	nop	dword ptr [rax]
.label_2247:
	mov	rdi, qword ptr [rbp + 0x28]
.label_2122:
	call	free
.label_2080:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_2030
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_2204
	test	rcx, rcx
	mov	rbp, rax
	je	.label_2204
	jmp	.label_2244
.label_2226:
	xor	r15d, r15d
	mov	rcx, qword ptr [rsp + 0x50]
	test	rcx, rcx
	je	.label_2052
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_2023:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_2023
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_2023
	nop	word ptr cs:[rax + rax]
.label_2058:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_2033
	cmp	eax, 6
	jne	.label_2036
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_2189
	nop	dword ptr [rax]
.label_2033:
	mov	rdi, qword ptr [rbp + 0x28]
.label_2189:
	call	free
.label_2036:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_2052
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_2058
	test	rcx, rcx
	mov	rbp, rax
	je	.label_2058
	jmp	.label_2023
.label_2030:
	mov	dword ptr [r12], 0xd
.label_2178:
	xor	r15d, r15d
	jmp	.label_2052
.label_2037:
	mov	r15, rbp
	jmp	.label_2052
.label_2104:
	mov	r15, rbp
.label_2052:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2169:
	mov	edi, OFFSET FLAT:.str.5_3
	mov	esi, OFFSET FLAT:.str.6_3
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x4188d0

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, r9
	mov	dword ptr [rsp + 0xc], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	r12, rdi
	mov	qword ptr [rsp + 0x10], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_2281
	mov	qword ptr [rsp], r15
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_2278
	mov	al, byte ptr [r15 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 0xc]
	or	al, cl
	mov	byte ptr [r15 + 0x20], al
	lea	rcx, [rsp + 0x10]
	xor	r9d, r9d
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r15
	mov	r8, r14
	call	build_charclass
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_2285
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_2288
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_2271:
	movsx	rcx, al
	mov	eax, 1
	shl	rax, cl
	mov	rdx, rcx
	sar	rdx, 0x3f
	shr	rdx, 0x3a
	add	rdx, rcx
	sar	rdx, 6
	or	qword ptr [rbx + rdx*8], rax
	mov	al, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_2271
.label_2288:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_2279
	movdqu	xmm0, xmmword ptr [rbx]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_2279:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_2284
	mov	rax, qword ptr [r12 + 0x78]
	mov	rcx, qword ptr [rax]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	mov	rax, qword ptr [rax + 0x18]
	and	qword ptr [rbx + 0x18], rax
.label_2284:
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	je	.label_2272
	mov	rax, qword ptr [r12 + 0x70]
.label_2283:
	lea	edx, [rcx + 1]
	mov	dword ptr [r12 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], rbx
	mov	dword ptr [rax + rcx + 0x38], 3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_2286
	or	byte ptr [r12 + 0xb0], 2
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_2273
	mov	rbp, qword ptr [r12 + 0x70]
.label_2275:
	lea	ecx, [rax + 1]
	mov	dword ptr [r12 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r15
	mov	dword ptr [rbp + rbx + 0x38], 6
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_2274
	mov	rcx, qword ptr [r12 + 0x70]
.label_2277:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rax + 1]
	mov	dword ptr [r12 + 0x80], esi
	movsxd	rsi, eax
	shl	rsi, 6
	lea	rax, [rcx + rsi + 8]
	mov	qword ptr [rcx + rsi + 8], 0
	mov	qword ptr [rcx + rsi + 0x10], r14
	mov	qword ptr [rcx + rsi + 0x18], rdx
	mov	dword ptr [rcx + rsi + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx + rsi + 0x20], xmm0
	mov	qword ptr [rcx + rsi + 0x40], -1
	mov	qword ptr [r14], rax
	mov	qword ptr [rdx], rax
	jmp	.label_2276
.label_2286:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rax, r14
	jmp	.label_2276
.label_2281:
	mov	dword ptr [r15], 0xc
	jmp	.label_2280
.label_2278:
	mov	rdi, rbx
	jmp	.label_2287
.label_2285:
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
	jmp	.label_2280
.label_2272:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2282
	mov	rcx, qword ptr [r12 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2283
.label_2273:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_2282
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r12 + 0x70], rbp
	mov	dword ptr [r12 + 0x80], 0
	xor	eax, eax
	jmp	.label_2275
.label_2282:
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
.label_2287:
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
.label_2280:
	xor	eax, eax
.label_2276:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2274:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_2276
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	dword ptr [r12 + 0x80], 0
	jmp	.label_2277
	nop	
	.section	.text
	.align	32
	#Procedure 0x418ca0

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_2297
	mov	rcx, qword ptr [rsi + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_2300
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_2300
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + r8*4], -1
	je	.label_2299
.label_2300:
	test	dl, 1
	je	.label_2294
	movzx	ecx, al
	cmp	ecx, 0x5c
	jne	.label_2294
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_2294
	mov	qword ptr [rsi + 0x48], rcx
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	jmp	.label_2299
.label_2297:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_2294:
	cmp	eax, 0x5b
	jne	.label_2289
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_2290
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	jmp	.label_2295
.label_2289:
	cmp	eax, 0x5e
	je	.label_2296
	cmp	eax, 0x5d
	je	.label_2298
	cmp	eax, 0x2d
	jne	.label_2299
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_2299:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_2290:
	xor	eax, eax
.label_2295:
	mov	byte ptr [rdi], al
	movzx	eax, al
	cmp	eax, 0x3d
	je	.label_2292
	cmp	eax, 0x3a
	je	.label_2291
	cmp	eax, 0x2e
	jne	.label_2293
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_2298:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_2291:
	test	dl, 4
	jne	.label_2301
.label_2293:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_2296:
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_2292:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_2301:
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418da0

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rdx
	mov	r14, rdi
	mov	rdx, qword ptr [rsi + 0x48]
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_2307
	lea	rax, [rdx + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	jge	.label_2307
	mov	r10, qword ptr [rsi + 0x10]
	lea	r11, [r10 + rdx*4]
	mov	edi, 1
	nop	dword ptr [rax + rax]
.label_2321:
	cmp	dword ptr [r11 + rdi*4], -1
	jne	.label_2318
	lea	rax, [rdx + rdi + 1]
	inc	rdi
	cmp	rax, rbx
	jl	.label_2321
.label_2318:
	cmp	edi, 2
	jl	.label_2307
	mov	dword ptr [r14], 1
	mov	eax, dword ptr [r10 + rdx*4]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	add	rax, rdx
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_2322
.label_2307:
	movsxd	rax, ecx
	add	rdx, rax
	mov	qword ptr [rsi + 0x48], rdx
	movzx	edi, byte ptr [r15 + 8]
	lea	eax, [rdi - 0x16]
	cmp	eax, 8
	ja	.label_2304
	jmp	qword ptr [word ptr [+ (rax * 8) + label_2310]]
.label_3305:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], rdx
	jle	.label_2303
	mov	r11b, byte ptr [r15]
	xor	r12d, r12d
	jmp	.label_2312
.label_2316:
	inc	r12
	movzx	edi, byte ptr [r15 + 8]
.label_2312:
	movzx	edi, dil
	cmp	edi, 0x1e
	jne	.label_2317
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_2319
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_2311
	nop	
.label_2317:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi + 8]
.label_2314:
	mov	bl, byte ptr [rbx + rdx]
.label_2311:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_2303
	movzx	edx, r11b
	movzx	ecx, bl
	cmp	ecx, edx
	jne	.label_2306
	mov	rcx, qword ptr [rsi + 8]
	movzx	ecx, byte ptr [rcx + rdi]
	cmp	ecx, 0x5d
	je	.label_2308
.label_2306:
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + r12], bl
	cmp	r12, 0x1e
	jle	.label_2316
	jmp	.label_2303
.label_2319:
	cmp	byte ptr [rsi + 0x8c], 0
	je	.label_2313
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, r9
	je	.label_2315
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	je	.label_2320
.label_2315:
	mov	rdx, qword ptr [rsi]
	mov	rdi, qword ptr [rsi + 0x18]
	mov	rbx, qword ptr [rsi + 0x28]
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_2320
	mov	edi, 1
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_2302
	lea	rdx, [r8 + 1]
	cmp	rdx, r9
	jge	.label_2302
	lea	r10, [r8*4]
	add	r10, qword ptr [rsi + 0x10]
	mov	edi, 1
.label_2309:
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_2302
	lea	rdx, [r8 + rdi + 1]
	inc	rdi
	cmp	rdx, r9
	jl	.label_2309
.label_2302:
	movsxd	rdi, edi
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	jmp	.label_2311
.label_2313:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi]
	jmp	.label_2314
.label_2320:
	lea	rdi, [r8 + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_2311
.label_2308:
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	movsxd	rax, r12d
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	movzx	ecx, byte ptr [r15 + 8]
	xor	eax, eax
	cmp	ecx, 0x1e
	je	.label_2323
	cmp	ecx, 0x1c
	je	.label_2305
	cmp	ecx, 0x1a
	jne	.label_2303
	mov	dword ptr [r14], 3
	jmp	.label_2303
.label_2323:
	mov	dword ptr [r14], 4
	jmp	.label_2303
.label_2305:
	mov	dword ptr [r14], 2
	jmp	.label_2303
.label_3304:
	test	r9b, r9b
	jne	.label_2304
	lea	rdi, [rsp + 8]
	mov	rdx, r8
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x10]
	mov	eax, 0xb
	cmp	ecx, 0x15
	jne	.label_2303
.label_2304:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_2322:
	xor	eax, eax
.label_2303:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419000

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	test	r9d, 0x400000
	je	.label_2324
	mov	esi, OFFSET FLAT:.str.7_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2338
	mov	esi, OFFSET FLAT:.str.8_3
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_2324
.label_2338:
	mov	r12d, OFFSET FLAT:.str.9_3
.label_2324:
	mov	rbp, qword ptr [r13]
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_2378
.label_2386:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:.str.1_11
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2358
	mov	esi, OFFSET FLAT:.str.10_3
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2367
	mov	esi, OFFSET FLAT:.str.8_3
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2372
	mov	esi, OFFSET FLAT:.str.3_7
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2376
	mov	esi, OFFSET FLAT:.str.9_3
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2382
	mov	esi, OFFSET FLAT:.str.11_3
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2359
	mov	esi, OFFSET FLAT:.str.12_3
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2325
	mov	esi, OFFSET FLAT:.str.7_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2357
	mov	esi, OFFSET FLAT:.str.13_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2337
	mov	esi, OFFSET FLAT:.str.14_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2341
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2351
	mov	esi, OFFSET FLAT:.str.16_2
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_2327
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_2333
.label_2373:
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	je	.label_2343
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_2343:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2373
	jmp	.label_2327
.label_2358:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_2340
	nop	word ptr cs:[rax + rax]
.label_2328:
	test	byte ptr [rsi + rdx*2], 8
	je	.label_2381
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_2381:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2328
	jmp	.label_2327
	nop	dword ptr [rax]
.label_2340:
	test	byte ptr [rsi + rdx*2], 8
	je	.label_2347
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2347:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2340
	jmp	.label_2327
.label_2367:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_2345
	nop	
.label_2361:
	test	byte ptr [rsi + rdx*2], 2
	je	.label_2350
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_2350:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2361
	jmp	.label_2327
	nop	dword ptr [rax]
.label_2345:
	test	byte ptr [rsi + rdx*2], 2
	je	.label_2370
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2370:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2345
	jmp	.label_2327
.label_2372:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_2353
	nop	
.label_2329:
	test	byte ptr [rsi + rdx*2 + 1], 2
	je	.label_2384
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_2384:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2329
	jmp	.label_2327
	nop	word ptr [rax + rax]
.label_2353:
	test	byte ptr [rsi + rdx*2 + 1], 2
	je	.label_2342
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2342:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2353
	jmp	.label_2327
.label_2376:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_2346
	nop	
.label_2362:
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_2385
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_2385:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2362
	jmp	.label_2327
.label_2346:
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_2368
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2368:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2346
	jmp	.label_2327
.label_2378:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2327
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_2386
.label_2382:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_2330
	nop	word ptr cs:[rax + rax]
.label_2371:
	test	byte ptr [rsi + rdx*2 + 1], 4
	je	.label_2335
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_2335:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2371
	jmp	.label_2327
.label_2330:
	test	byte ptr [rsi + rdx*2 + 1], 4
	je	.label_2348
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2348:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2330
	jmp	.label_2327
.label_2359:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_2365
	nop	dword ptr [rax]
.label_2379:
	test	byte ptr [rsi + rdx*2 + 1], 8
	je	.label_2352
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_2352:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2379
	jmp	.label_2327
.label_2365:
	test	byte ptr [rsi + rdx*2 + 1], 8
	je	.label_2383
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2383:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2365
	jmp	.label_2327
.label_2325:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_2331
	nop	dword ptr [rax]
.label_2326:
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_2366
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_2366:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2326
	jmp	.label_2327
.label_2331:
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_2334
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2334:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2331
	jmp	.label_2327
.label_2357:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_2349
	nop	dword ptr [rax]
.label_2360:
	test	byte ptr [rsi + rdx*2 + 1], 1
	je	.label_2354
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_2354:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2360
	jmp	.label_2327
.label_2349:
	test	byte ptr [rsi + rdx*2 + 1], 1
	je	.label_2377
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2377:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2349
	jmp	.label_2327
.label_2337:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_2355
	nop	dword ptr [rax]
.label_2344:
	test	byte ptr [rsi + rdx*2], 1
	je	.label_2374
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_2374:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2344
	jmp	.label_2327
.label_2355:
	test	byte ptr [rsi + rdx*2], 1
	je	.label_2332
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2332:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2355
	jmp	.label_2327
.label_2341:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_2364
.label_2375:
	cmp	word ptr [rsi + rdx*2], 0
	jns	.label_2363
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_2363:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2375
	jmp	.label_2327
.label_2364:
	cmp	word ptr [rsi + rdx*2], 0
	jns	.label_2380
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2380:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2364
	jmp	.label_2327
.label_2333:
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	je	.label_2387
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2387:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2333
	jmp	.label_2327
.label_2351:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_2336
.label_2369:
	test	byte ptr [rsi + rdx*2], 4
	je	.label_2339
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_2339:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2369
.label_2327:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2336:
	test	byte ptr [rsi + rdx*2], 4
	je	.label_2356
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2356:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2336
	jmp	.label_2327
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4197b0

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 0x11
	je	.label_2388
	cmp	eax, 4
	jne	.label_2389
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	je	.label_2389
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa0], rax
	xor	eax, eax
	ret	
.label_2388:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_2389
	movzx	ecx, byte ptr [rax + 0x30]
	cmp	ecx, 0x11
	jne	.label_2389
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rax + 0x28]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	je	.label_2390
	mov	qword ptr [rdx], rsi
.label_2390:
	mov	rax, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rax, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	rcx, 0x3f
	jg	.label_2389
	mov	rax, -2
	rol	rax, cl
	and	qword ptr [rdi + 0xa0], rax
.label_2389:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x419840

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	movzx	edx, byte ptr [rsi + 0x30]
	lea	ebx, [rdx - 2]
	cmp	ebx, 0xe
	ja	.label_2391
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_2399]]
.label_3394:
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_611]]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_2396
	mov	qword ptr [rax], r15
	jmp	.label_2395
.label_3395:
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + 0x38]
	test	rdx, rdx
	lea	rax, [rdx + 0x18]
	cmove	rax, rsi
	test	r14, r14
	js	.label_2401
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	js	.label_2400
	mov	r12, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	qword ptr [r12 + rbx*8], 2
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r12 + rbx*8 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2394
	lea	rax, [r12 + rbx*8 + 8]
	cmp	r14, r15
	jne	.label_2397
	mov	qword ptr [rax], 1
	mov	qword ptr [rcx], r14
	jmp	.label_2395
.label_3392:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	je	.label_2394
	mov	edi, OFFSET FLAT:.str.17_3
	mov	esi, OFFSET FLAT:.str.6_3
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_3393:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 4
	jne	.label_2395
	mov	r14, qword ptr [rdi + 0x28]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_611]]
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	test	rax, rax
	je	.label_2398
	mov	qword ptr [rax], rbx
	jmp	.label_2395
.label_2391:
	test	dl, 8
	jne	.label_2402
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_2395
.label_2397:
	mov	qword ptr [rax], 2
	jge	.label_2392
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	jmp	.label_2395
.label_2392:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_2395:
	xor	eax, eax
.label_2394:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_2396:
	lea	rax, [r14 + rbx*8]
.label_2393:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_2394
.label_2398:
	lea	rax, [r14 + r15*8]
	jmp	.label_2393
.label_2401:
	mov	edi, OFFSET FLAT:.str.18_3
	mov	esi, OFFSET FLAT:.str.6_3
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_2400:
	mov	edi, OFFSET FLAT:.str.19_2
	mov	esi, OFFSET FLAT:.str.6_3
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_2402:
	mov	edi, OFFSET FLAT:.str.20_1
	mov	esi, OFFSET FLAT:.str.6_3
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419a50

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbp, rdi
	mov	rbx, qword ptr [rsi]
	mov	r13, qword ptr [r14 + 8]
	test	r13, r13
	je	.label_2409
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	je	.label_2409
	mov	rax, qword ptr [r14 + 0x28]
	cmp	rax, 0x3f
	jg	.label_2404
	mov	rcx, qword ptr [rbx + 0xa0]
	bt	rcx, rax
	jae	.label_2404
.label_2409:
	mov	r12d, dword ptr [rbx + 0x80]
	cmp	r12d, 0xf
	je	.label_2410
	mov	rax, qword ptr [rbx + 0x70]
.label_2407:
	lea	ecx, [r12 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r12d
	shl	rcx, 6
	lea	r12, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 8
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_2403:
	mov	qword ptr [rsp], rbp
	mov	r15d, dword ptr [rbx + 0x80]
	cmp	r15d, 0xf
	je	.label_2414
	mov	rax, qword ptr [rbx + 0x70]
.label_2415:
	lea	ecx, [r15 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r15d
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 9
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_2417:
	test	r13, r13
	mov	rbp, r15
	je	.label_2411
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_2405
	mov	rax, qword ptr [rbx + 0x70]
.label_2408:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r13], rbp
	test	r15, r15
	je	.label_2411
	mov	qword ptr [r15], rbp
.label_2411:
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	je	.label_2412
	mov	rax, qword ptr [rbx + 0x70]
.label_2416:
	lea	ecx, [r13 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r13d
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r12, r12
	je	.label_2418
	mov	qword ptr [r12], r13
.label_2418:
	test	rbp, rbp
	je	.label_2413
	mov	qword ptr [rbp], r13
.label_2413:
	test	r15, r15
	je	.label_2406
	test	r12, r12
	je	.label_2406
	test	rbp, rbp
	je	.label_2406
	test	r13, r13
	je	.label_2406
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [r15 + 0x28], rax
	mov	qword ptr [r12 + 0x28], rax
	mov	eax, 0x80000
	and	eax, dword ptr [r14 + 0x30]
	mov	ecx, 0xfff7ffff
	mov	edx, dword ptr [r15 + 0x30]
	and	edx, ecx
	or	edx, eax
	mov	dword ptr [r15 + 0x30], edx
	and	ecx, dword ptr [r12 + 0x30]
	or	ecx, eax
	mov	dword ptr [r12 + 0x30], ecx
.label_2404:
	mov	rax, r13
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2410:
	mov	edi, 0x3c8
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_2403
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_2407
.label_2414:
	mov	edi, 0x3c8
	call	malloc
	xor	r15d, r15d
	test	rax, rax
	je	.label_2417
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_2415
.label_2412:
	mov	edi, 0x3c8
	call	malloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_2413
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_2416
.label_2406:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	jmp	.label_2404
.label_2405:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_2411
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_2408
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419d50

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	r13, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, r13
	jae	.label_2423
.label_2421:
	mov	rcx, qword ptr [rbx]
	shl	rax, 4
	mov	qword ptr [rcx + rax], r12
	mov	qword ptr [rcx + rax + 8], r14
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r14b
	cmp	eax, 5
	jne	.label_2420
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_2424
.label_2420:
	cmp	eax, 6
	sete	cl
.label_2424:
	movzx	eax, cl
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x10]
	shl	rdx, 4
	shl	eax, 0x14
	mov	esi, 0xffefffff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, eax
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x28]
	lea	rax, [rax + rax*2]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	r15, qword ptr [rbx + 0x10]
	lea	rax, [r15 + 1]
	mov	qword ptr [rbx + 0x10], rax
.label_2422:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2423:
	lea	rbp, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rbp, rax
	ja	.label_2422
	mov	rdi, qword ptr [rbx]
	mov	rsi, r13
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_2422
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x18]
	shl	r13, 4
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rbp, [r13 + r13*2]
	mov	rsi, rbp
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsi, rbp
	call	realloc
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	je	.label_2419
	test	rax, rax
	je	.label_2419
	test	r13, r13
	je	.label_2419
	test	rbp, rbp
	je	.label_2419
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rbp
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_2421
.label_2419:
	mov	rbx, rax
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, rbp
	call	free
	jmp	.label_2422
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419f20

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 4], ecx
	mov	r12, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	r15, qword ptr [rbp + 0x28]
	lea	r14, [r12 + r12*2]
	mov	rax, qword ptr [r15 + r14*8 + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x38], 0
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rsp + 0x40], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2426
	mov	qword ptr [rsp + 8], rbx
	mov	rax, qword ptr [rbp + 0x30]
	mov	qword ptr [rax + r14*8 + 8], -1
	mov	rcx, qword ptr [rbp]
	mov	rbx, r12
	shl	rbx, 4
	mov	eax, dword ptr [rcx + rbx + 8]
	mov	r8d, eax
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_2434
	lea	rdx, [r15 + r14*8 + 8]
	cmp	qword ptr [rdx], 0
	je	.label_2434
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_2434
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_2426
	mov	rax, qword ptr [rbp]
	mov	eax, dword ptr [rax + rbx + 8]
.label_2434:
	mov	rbx, r12
	test	al, 8
	jne	.label_2433
	xor	r15d, r15d
	jmp	.label_2435
.label_2433:
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_2432
	xor	r15d, r15d
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_2431:
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rbp + 0x30]
	lea	r12, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r12*8 + 8]
	cmp	rcx, -1
	je	.label_2425
	test	rcx, rcx
	jne	.label_2436
	xor	ecx, ecx
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_2428
	jmp	.label_2426
	nop	dword ptr [rax]
.label_2436:
	mov	rcx, qword ptr [rax + r12*8 + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	movups	xmm0, xmmword ptr [rax + r12*8]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_2428:
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 0x10]
	call	re_node_set_merge
	test	eax, eax
	jne	.label_2426
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r12*8 + 8], 0
	jne	.label_2427
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_2425:
	mov	r15b, 1
.label_2427:
	inc	r13
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r13, qword ptr [rax + r14*8 + 8]
	jl	.label_2431
	jmp	.label_2435
.label_2432:
	xor	r15d, r15d
.label_2435:
	lea	rdi, [rsp + 0x30]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	mov	eax, 0xc
	je	.label_2426
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_2429
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_2429
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_2430
.label_2429:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_2430:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rcx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_2426:
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
	#Procedure 0x41a130

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13d, r8d
	mov	qword ptr [rsp + 8], rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	r14, rdi
.label_2441:
	mov	dword ptr [rsp + 0x14], r13d
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	mov	dword ptr [rsp + 0x20], eax
	mov	r15, r12
	nop	word ptr cs:[rax + rax]
.label_2444:
	mov	rax, qword ptr [r14]
	mov	rdx, r15
	shl	rdx, 4
	movzx	ecx, byte ptr [rax + rdx + 8]
	cmp	ecx, 4
	jne	.label_2442
	mov	rcx, qword ptr [r14 + 0x18]
	mov	rdx, qword ptr [r14 + 0x28]
	mov	r13, qword ptr [rcx + r15*8]
	lea	r12, [rbx + rbx*2]
	mov	qword ptr [rdx + r12*8 + 8], 0
	mov	rbp, r13
	shl	rbp, 4
	mov	rsi, qword ptr [rax + rbp]
	mov	rdx, qword ptr [rax + rbp + 8]
	mov	rdi, r14
	mov	qword ptr [rsp + 0x18], rbx
	call	re_dfa_add_node
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_2446
	mov	dword ptr [rsp + 0x24], 0xc
	mov	rax, qword ptr [r14]
	mov	rcx, rbx
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r13
	mov	rax, qword ptr [r14 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + rdx*8], rcx
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	mov	r15, r13
	mov	r13d, dword ptr [rsp + 0x14]
	jne	.label_2444
	jmp	.label_2437
	nop	dword ptr [rax + rax]
.label_2442:
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rbp, [r15 + r15*2]
	mov	rsi, qword ptr [rcx + rbp*8 + 8]
	test	rsi, rsi
	je	.label_2448
	mov	rdi, qword ptr [rcx + rbp*8 + 0x10]
	mov	r12, qword ptr [rdi]
	lea	rdi, [rbx + rbx*2]
	mov	qword ptr [rcx + rdi*8 + 8], 0
	cmp	rsi, 1
	je	.label_2450
	mov	qword ptr [rsp + 0x18], rbp
	mov	r15, rdi
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	jle	.label_2440
	mov	rdx, rsi
	shl	rdx, 4
	mov	ebp, dword ptr [rax + rdx + 8]
	mov	edx, ebp
	and	edx, 0x40000
	je	.label_2440
	mov	rdx, qword ptr [r14 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
.label_2449:
	cmp	qword ptr [rdx + rsi*8], r12
	jne	.label_2447
	shr	ebp, 8
	and	ebp, 0x3ff
	cmp	ebp, r13d
	je	.label_2443
.label_2447:
	dec	rsi
	test	rsi, rsi
	jle	.label_2440
	mov	ebp, dword ptr [rdi]
	mov	ebx, ebp
	and	ebx, 0x40000
	add	rdi, -0x10
	test	ebx, ebx
	jne	.label_2449
	jmp	.label_2440
.label_2443:
	cmp	rsi, -1
	je	.label_2440
	mov	rbp, r15
	lea	rdi, [rcx + rbp*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x24], 0xc
	test	al, al
	jne	.label_2438
	jmp	.label_2437
	nop	word ptr [rax + rax]
.label_2440:
	mov	rbp, r12
	shl	rbp, 4
	mov	rsi, qword ptr [rax + rbp]
	mov	rdx, qword ptr [rax + rbp + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_2445
	mov	dword ptr [rsp + 0x24], 0xc
	mov	rax, qword ptr [r14]
	mov	rcx, rbx
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r12
	mov	rax, qword ptr [r14 + 0x28]
	mov	rbp, r15
	lea	rdi, [rax + rbp*8]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	je	.label_2437
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 0x24], eax
	test	eax, eax
	jne	.label_2437
.label_2438:
	mov	rax, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	r15, qword ptr [rcx + 8]
	mov	rbx, r15
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	cmp	rax, -1
	je	.label_2453
	mov	dword ptr [rsp + 0x24], 0xc
	mov	rdi, qword ptr [r14]
	mov	rcx, rax
	shl	rcx, 4
	mov	edx, dword ptr [rdi + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rdi + rcx + 8], edx
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rdi + rcx + 8], edx
	mov	rdx, qword ptr [r14]
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rcx, qword ptr [r14 + 0x20]
	mov	qword ptr [rcx + rax*8], r15
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rdi, [rcx + rbp*8]
	mov	rsi, rax
	mov	rbx, rax
	call	re_node_set_insert
	test	al, al
	jne	.label_2444
	jmp	.label_2437
.label_2450:
	cmp	r15, qword ptr [rsp + 8]
	jne	.label_2451
	cmp	rbx, r15
	jne	.label_2452
.label_2451:
	mov	r15, rdi
	lea	rcx, [rax + rdx + 8]
	mov	ebp, dword ptr [rcx]
	mov	rbx, r12
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	mov	dword ptr [rsp + 0x24], 0xc
	cmp	rax, -1
	je	.label_2437
	shr	ebp, 8
	and	ebp, 0x3ff
	or	r13d, ebp
	mov	rbp, qword ptr [r14]
	mov	rcx, rax
	shl	rcx, 4
	mov	edx, r13d
	shl	edx, 8
	and	edx, 0x3ff00
	mov	esi, dword ptr [rbp + rcx + 8]
	mov	edi, 0xfffc00ff
	and	esi, edi
	or	esi, edx
	mov	dword ptr [rbp + rcx + 8], esi
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rdi + rcx + 8], edx
	mov	rdx, qword ptr [r14]
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rcx, qword ptr [r14 + 0x20]
	mov	qword ptr [rcx + rax*8], r12
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rdi, [rcx + r15*8]
	mov	rsi, rax
	mov	rbx, rax
	call	re_node_set_insert
	test	al, al
	jne	.label_2441
	jmp	.label_2437
.label_2446:
	mov	dword ptr [rsp + 0x24], 0xc
	jmp	.label_2437
.label_2445:
	mov	dword ptr [rsp + 0x24], 0xc
	jmp	.label_2437
.label_2453:
	mov	dword ptr [rsp + 0x24], 0xc
	jmp	.label_2437
.label_2448:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbx*8], rcx
.label_2439:
	mov	dword ptr [rsp + 0x24], 0
.label_2437:
	mov	eax, dword ptr [rsp + 0x24]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2452:
	lea	rdi, [rcx + rdi*8]
	mov	rsi, r12
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x24], 0xc
	test	al, al
	je	.label_2437
	jmp	.label_2439
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a590

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	test	r15, r15
	je	.label_2455
	mov	rax, qword ptr [r15 + 8]
	test	rax, rax
	je	.label_2455
	mov	rbx, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	lea	rdx, [rcx + rax*2]
	cmp	rbx, rdx
	jge	.label_2463
	add	rbx, rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2458
	add	rbx, rbx
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14], rbx
	mov	rcx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
.label_2463:
	test	rcx, rcx
	je	.label_2466
	lea	rbx, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_2454
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	jmp	.label_2457
.label_2462:
	dec	rax
.label_2467:
	dec	rcx
	jmp	.label_2461
	nop	word ptr cs:[rax + rax]
.label_2457:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_2462
	jge	.label_2467
	dec	rax
	mov	qword ptr [rdx + rbx*8 - 8], rdi
	dec	rbx
.label_2461:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_2457
.label_2454:
	test	rax, rax
	js	.label_2456
	lea	rcx, [rax + 1]
	sub	rbx, rcx
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_2456:
	mov	r10, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
	lea	rcx, [r10 + rax*2 - 1]
	mov	rdx, rcx
	sub	rdx, rbx
	inc	rdx
	je	.label_2455
	lea	rax, [rdx + r10]
	mov	qword ptr [r14 + 8], rax
	lea	r9, [r10 - 1]
.label_2465:
	lea	r8, [r10 - 1]
	mov	rdi, qword ptr [r14 + 0x10]
	lea	r11, [rdi + r9*8]
	nop	dword ptr [rax + rax]
.label_2464:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rsi, qword ptr [rdi + r10*8 - 8]
	cmp	rax, rsi
	jle	.label_2460
	dec	rcx
	mov	qword ptr [r11 + rdx*8], rax
	dec	rdx
	jne	.label_2464
	jmp	.label_2455
	nop	dword ptr [rax]
.label_2460:
	lea	rax, [rdx + r8]
	mov	qword ptr [rdi + rax*8], rsi
	dec	r9
	cmp	r10, 1
	mov	r10, r8
	jg	.label_2465
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + rbx*8]
	jmp	.label_2459
.label_2466:
	mov	qword ptr [r14 + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [r15 + 8]
	mov	rsi, qword ptr [r15 + 0x10]
.label_2459:
	shl	rdx, 3
	call	memcpy
.label_2455:
	xor	eax, eax
.label_2458:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41a710

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	je	.label_2473
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_2475
	cmp	rsi, rcx
	jne	.label_2477
	lea	rax, [rsi + rsi]
	mov	qword ptr [r14], rax
	mov	rdi, qword ptr [r14 + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_2468
	mov	qword ptr [r14 + 0x10], rax
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_2472
.label_2473:
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_611]]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_2478
	mov	qword ptr [rax], rbx
	jmp	.label_2481
.label_2475:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	jmp	.label_2480
.label_2477:
	mov	rax, qword ptr [r14 + 0x10]
.label_2472:
	cmp	qword ptr [rax], rbx
	jle	.label_2469
	test	rcx, rcx
	jle	.label_2470
	nop	word ptr cs:[rax + rax]
.label_2474:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rcx, [rcx - 1]
	jg	.label_2474
	jmp	.label_2470
.label_2469:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	jmp	.label_2479
	nop	dword ptr [rax]
.label_2471:
	mov	qword ptr [rax + rcx*8], rdx
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_2479:
	cmp	rdx, rbx
	jg	.label_2471
.label_2470:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
.label_2480:
	inc	qword ptr [r14 + 8]
.label_2481:
	mov	al, 1
.label_2476:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_2478:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	xor	eax, eax
	jmp	.label_2476
.label_2468:
	xor	eax, eax
	jmp	.label_2476
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a800

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r13d, ecx
	mov	r8, qword ptr [rdx + 8]
	test	r8, r8
	je	.label_2482
	mov	qword ptr [rsp + 0x10], rdi
	mov	r14d, r13d
	add	r14, r8
	test	r8, r8
	jle	.label_2492
	mov	rcx, qword ptr [rdx + 0x10]
	xor	ebx, ebx
	cmp	r8, 4
	jb	.label_2496
	mov	rbx, r8
	and	rbx, 0xfffffffffffffffc
	je	.label_2503
	movq	xmm0, r14
	lea	r9, [r8 - 4]
	mov	eax, r9d
	shr	eax, 2
	inc	eax
	xor	edi, edi
	test	al, 3
	je	.label_2504
	lea	ebp, [r8 - 4]
	shr	ebp, 2
	inc	ebp
	and	ebp, 3
	neg	rbp
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_2505:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 4
	inc	rbp
	jne	.label_2505
	jmp	.label_2491
.label_2482:
	mov	dword ptr [rdi], 0
	jmp	.label_2499
.label_2503:
	xor	ebx, ebx
	jmp	.label_2496
.label_2504:
	pxor	xmm1, xmm1
.label_2491:
	cmp	r9, 0xc
	jb	.label_2498
	mov	rax, r8
	and	rax, 0xfffffffffffffffc
	sub	rax, rdi
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	dword ptr [rax]
.label_2497:
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	paddq	xmm4, xmm2
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	movdqu	xmm1, xmmword ptr [rdi]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x80
	add	rax, -0x10
	jne	.label_2497
.label_2498:
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	paddq	xmm0, xmm1
	movq	r14, xmm0
	cmp	r8, rbx
	je	.label_2492
.label_2496:
	mov	rax, r8
	sub	rax, rbx
	lea	rcx, [rcx + rbx*8]
	nop	word ptr cs:[rax + rax]
.label_2508:
	add	r14, qword ptr [rcx]
	add	rcx, 8
	dec	rax
	jne	.label_2508
.label_2492:
	mov	rax, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	and	rcx, r14
	lea	rcx, [rcx + rcx*2]
	mov	r10, qword ptr [rax + rcx*8]
	test	r10, r10
	jle	.label_2512
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	xor	ebx, ebx
	nop	
.label_2514:
	mov	r15, qword ptr [r9 + rbx*8]
	cmp	qword ptr [r15], r14
	jne	.label_2483
	movzx	eax, byte ptr [r15 + 0x68]
	and	eax, 0xf
	cmp	eax, r13d
	jne	.label_2483
	test	rdx, rdx
	je	.label_2483
	mov	rdi, qword ptr [r15 + 0x50]
	test	rdi, rdi
	je	.label_2483
	cmp	qword ptr [rdi + 8], r8
	jne	.label_2483
	mov	rax, r8
	nop	dword ptr [rax]
.label_2500:
	test	rax, rax
	jle	.label_2519
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rbp, qword ptr [rcx + rax*8 - 8]
	mov	rcx, qword ptr [rdx + 0x10]
	cmp	rbp, qword ptr [rcx + rax*8 - 8]
	lea	rax, [rax - 1]
	je	.label_2500
	nop	word ptr cs:[rax + rax]
.label_2483:
	inc	rbx
	cmp	rbx, r10
	jl	.label_2514
.label_2512:
	mov	rbx, rdx
	mov	r12, rsi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	mov	qword ptr [rsp + 0x18], r15
	test	r15, r15
	je	.label_2485
	mov	r10, r15
	add	r10, 8
	mov	qword ptr [rsp + 0x28], r10
	mov	r9, rbx
	mov	qword ptr [rsp + 0x30], r9
	mov	rdi, qword ptr [r9 + 8]
	mov	qword ptr [r15 + 0x10], rdi
	mov	rbx, qword ptr [r9 + 8]
	test	rbx, rbx
	jle	.label_2488
	mov	qword ptr [rsp + 0x28], r10
	mov	rbp, r15
	mov	r15, r9
	mov	qword ptr [rbp + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x18], rax
	test	rax, rax
	je	.label_2506
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	r9, r15
	mov	rdi, r12
	mov	r15, rbp
	mov	r10, qword ptr [rsp + 0x28]
	jmp	.label_2517
.label_2488:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r10], xmm0
	mov	qword ptr [r10 + 0x10], 0
	mov	rdi, r12
.label_2517:
	mov	al, byte ptr [r15 + 0x68]
	mov	cl, r13b
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r15 + 0x68], al
	mov	qword ptr [r15 + 0x50], r10
	cmp	qword ptr [r9 + 8], 0
	jle	.label_2489
	mov	ebp, r13d
	and	ebp, 1
	mov	eax, r13d
	and	eax, 2
	mov	dword ptr [rsp + 0xc], eax
	and	r13d, 4
	mov	dword ptr [rsp + 8], r13d
	xor	r12d, r12d
	xor	r8d, r8d
	nop	
.label_2509:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [r9 + 0x10]
	mov	rcx, qword ptr [rcx + r12*8]
	shl	rcx, 4
	mov	esi, dword ptr [rax + rcx + 8]
	movzx	edx, sil
	mov	r13d, esi
	shr	r13d, 8
	mov	ecx, r13d
	and	ecx, 0x3ff
	cmp	edx, 1
	jne	.label_2515
	test	ecx, ecx
	je	.label_2486
.label_2515:
	shr	esi, 0x14
	mov	bl, byte ptr [r15 + 0x68]
	mov	al, bl
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r15 + 0x68], bl
	cmp	edx, 4
	je	.label_2484
	cmp	edx, 2
	jne	.label_2495
	or	bl, 0x10
	jmp	.label_2494
.label_2484:
	or	bl, 0x40
.label_2494:
	mov	byte ptr [r15 + 0x68], bl
.label_2495:
	test	ecx, ecx
	je	.label_2486
	cmp	qword ptr [r15 + 0x50], r10
	jne	.label_2502
	mov	qword ptr [rsp + 0x20], rdi
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	mov	qword ptr [r15 + 0x50], rbx
	test	rbx, rbx
	je	.label_2511
	mov	rax, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], r15
	test	r15, r15
	jle	.label_2507
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rdi, r15
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_2487
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_2493
.label_2507:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
.label_2493:
	mov	r15, qword ptr [rsp + 0x18]
	or	byte ptr [r15 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x28]
.label_2502:
	test	ebp, ebp
	mov	r9, qword ptr [rsp + 0x30]
	jne	.label_2510
	mov	eax, r13d
	and	eax, 1
	jne	.label_2513
.label_2510:
	test	ebp, ebp
	je	.label_2516
	mov	eax, r13d
	and	eax, 2
	jne	.label_2513
.label_2516:
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_2518
	mov	eax, r13d
	and	eax, 0x10
	jne	.label_2513
.label_2518:
	cmp	dword ptr [rsp + 8], 0
	jne	.label_2486
	and	r13d, 0x40
	je	.label_2486
	nop	
.label_2513:
	mov	rax, r12
	sub	rax, r8
	js	.label_2490
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	rcx, rax
	jle	.label_2490
	dec	rcx
	mov	qword ptr [r15 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_2490
	lea	rax, [r12*8]
	add	rax, qword ptr [r15 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	
.label_2501:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [r12 + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r15 + 0x10]
	jl	.label_2501
	nop	word ptr [rax + rax]
.label_2490:
	inc	r8
.label_2486:
	inc	r12
	cmp	r12, qword ptr [r9 + 8]
	jl	.label_2509
.label_2489:
	mov	rsi, r15
	mov	rdx, r14
	call	register_state
	test	eax, eax
	je	.label_2519
.label_2511:
	mov	rdi, r15
	call	free_state
	jmp	.label_2485
.label_2487:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	jmp	.label_2485
.label_2506:
	mov	rdi, rbp
	call	free
.label_2485:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xc
.label_2499:
	xor	r15d, r15d
.label_2519:
	mov	rax, r15
	add	rsp, 0x38
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
	#Procedure 0x41acc0

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	qword ptr [rbx], r15
	mov	r13, qword ptr [rbx + 0x10]
	mov	qword ptr [rbx + 0x20], r13
	mov	qword ptr [rbx + 0x28], 0
	lea	rdi, [r13*8]
	call	malloc
	mov	qword ptr [rbx + 0x30], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_2520
	test	r13, r13
	jle	.label_2521
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2525:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_2524
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x28]
	cmp	rdx, rcx
	jne	.label_2523
	lea	rcx, [rdx + rdx + 2]
	lea	rdx, [rdx + rdx]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_2522
	mov	qword ptr [rbx + 0x30], rax
	mov	rcx, qword ptr [rbx + 0x28]
.label_2523:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_2524:
	inc	rbp
	cmp	rbp, r13
	jl	.label_2525
.label_2521:
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	jle	.label_2526
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_2527:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
	jmp	.label_2520
.label_2522:
	mov	ecx, 0xc
.label_2520:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2526:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_2520
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	lea	rsi, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rsi], rax
	mov	qword ptr [rcx], rdx
	mov	r15, qword ptr [r14]
	jmp	.label_2527
	nop	
	.section	.text
	.align	32
	#Procedure 0x41ae00

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r15d, edx
	mov	r13, rsi
	mov	rbx, rdi
	lea	rbp, [rbx + 0x28]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r13
	jle	.label_2528
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2542
	mov	qword ptr [rbx + 0x20], 0
.label_2542:
	mov	rax, qword ptr [rbx + 0x50]
	mov	qword ptr [rbx + 0x58], rax
	mov	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	lea	eax, [r15 + r15]
	and	eax, 2
	xor	eax, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	mov	dword ptr [rbx + 0x70], eax
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r14, r13
	jne	.label_2547
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	xor	eax, eax
	mov	r14, r13
.label_2547:
	test	r14, r14
	je	.label_2569
	mov	r12, qword ptr [rbx + 0x38]
	cmp	r14, r12
	jge	.label_2571
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_2577
	lea	rsi, [r14 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2582
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	shl	rdx, 2
	call	memmove
.label_2582:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2589
.label_2566:
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_2536:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2569
	add	qword ptr [rbx + 8], r14
.label_2569:
	mov	qword ptr [rbx + 0x28], r13
	mov	rdx, qword ptr [rbx + 0x58]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2594
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_2535
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_2543
	jmp	.label_2540
.label_2594:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2545
	mov	qword ptr [rbx + 0x30], rdx
	jmp	.label_2540
.label_2535:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_2540:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_2543:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2528:
	mov	r14, r13
	sub	r14, rax
	jmp	.label_2547
.label_2571:
	mov	r10, qword ptr [rbx + 0x30]
	mov	cx, word ptr [rbx + 0x8c]
	test	cl, cl
	jne	.label_2559
.label_2579:
	mov	qword ptr [rbx + 0x30], 0
	movsxd	rsi, dword ptr [rbx + 0x90]
	cmp	rsi, 2
	jl	.label_2568
	mov	qword ptr [rsp + 8], rbp
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_2575
	mov	rdi, qword ptr [rbx]
	lea	r8, [rdi + rax]
	mov	rdx, r14
	sub	rdx, rsi
	add	rdx, r8
	cmp	rdx, rdi
	cmovb	rdx, rdi
	lea	r11, [r8 + r14]
	lea	rsi, [r14 + rax]
	lea	rsi, [rdi + rsi - 1]
.label_2590:
	mov	rbp, rsi
	cmp	rbp, rdx
	jb	.label_2575
	mov	cl, byte ptr [rbp]
	and	cl, 0xc0
	movzx	ecx, cl
	lea	rsi, [rbp - 1]
	cmp	ecx, 0x80
	je	.label_2590
	add	r8, qword ptr [rbx + 0x58]
	mov	rdx, r8
	sub	rdx, rbp
	mov	r9, qword ptr [rbx + 0x78]
	test	r9, r9
	jne	.label_2583
	mov	qword ptr [rsp + 0x18], r11
	mov	r12, r10
	mov	rsi, rbp
.label_2572:
	mov	qword ptr [rsp + 0x30], 0
	lea	rdi, [rsp + 0x2c]
	lea	rcx, [rsp + 0x30]
	call	rpl_mbrtowc
	mov	rdx, qword ptr [rsp + 0x18]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rcx, rax
	sub	rcx, rdx
	jb	.label_2544
	cmp	rax, -3
	mov	r10, r12
	ja	.label_2531
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	esi, dword ptr [rsp + 0x2c]
	jmp	.label_2531
.label_2577:
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x18], rdx
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_2538:
	lea	rsi, [rcx + rdx]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	mov	rsi, qword ptr [rbp + rax*8]
	cmp	rsi, r14
	mov	rdi, rax
	jg	.label_2567
	jge	.label_2578
	lea	rcx, [rax + 1]
	mov	rdi, rdx
.label_2567:
	cmp	rcx, rdi
	mov	rdx, rdi
	jl	.label_2538
.label_2578:
	cmp	rsi, r14
	setl	cl
	movzx	ecx, cl
	lea	r12, [rcx + rax]
	lea	rsi, [rcx + rax - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, rsi
	sub	rdx, r14
	jle	.label_2584
	cmp	r12, r14
	jne	.label_2584
	cmp	qword ptr [rbp + r14*8], r14
	jne	.label_2584
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r14*4]
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	movdqu	xmm0, xmmword ptr [rbx + 0x30]
	movq	xmm1, r14
	pshufd	xmm1, xmm1, 0x44
	psubq	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x30], xmm0
	movq	rax, xmm0
	test	rax, rax
	mov	rbp, qword ptr [rsp + 8]
	jle	.label_2536
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r14*8]
	xor	edx, edx
	nop	
.label_2551:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_2551
	jmp	.label_2536
.label_2589:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	jmp	.label_2566
.label_2584:
	mov	rax, r14
	sub	rax, r13
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	nop	word ptr cs:[rax + rax]
.label_2539:
	mov	rax, r12
	test	rax, rax
	jle	.label_2580
	lea	r12, [rax - 1]
	cmp	qword ptr [rbp + rax*8 - 8], r14
	je	.label_2539
.label_2580:
	cmp	rax, rsi
	jge	.label_2573
	mov	rcx, qword ptr [rbx + 0x10]
	nop	dword ptr [rax]
.label_2588:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_2573
	inc	rax
	cmp	rax, rsi
	jl	.label_2588
.label_2573:
	cmp	rax, rsi
	jne	.label_2591
	mov	qword ptr [rbx + 0x30], 0
	xor	ebp, ebp
	jmp	.label_2558
.label_2545:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_2593
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	cmp	r14, rdx
	cmovg	r14, rdx
	cmp	r15, r14
	jge	.label_2530
	jmp	.label_2537
	nop	dword ptr [rax]
.label_2552:
	mov	rbp, r12
	mov	r13, qword ptr [rbp]
.label_2537:
	inc	r15
	mov	r12, rbp
	add	r13, qword ptr [rbx]
	mov	al, byte ptr [r15 + r13 - 1]
	movzx	ecx, al
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_2541
.label_2576:
	movzx	ebp, al
	lea	eax, [rbp + 0x80]
	cmp	eax, 0x17f
	ja	.label_2548
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebp, dword ptr [rax + rbp*4]
.label_2548:
	mov	rax, qword ptr [rbx + 8]
	mov	byte ptr [rax + r15 - 1], bpl
	cmp	r15, r14
	jl	.label_2552
	jmp	.label_2557
.label_2541:
	mov	al, byte ptr [rdx + rcx]
	jmp	.label_2576
.label_2568:
	add	rax, r14
	mov	rdx, qword ptr [rbx]
	mov	al, byte ptr [rdx + rax - 1]
	movzx	edx, al
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_2563
	mov	al, byte ptr [rsi + rdx]
.label_2563:
	mov	rsi, qword ptr [rbx + 0x80]
	movzx	edx, al
	shr	al, 6
	movzx	eax, al
	mov	rsi, qword ptr [rsi + rax*8]
	mov	eax, 1
	bt	rsi, rdx
	jb	.label_2574
	xor	eax, eax
	cmp	edx, 0xa
	jne	.label_2574
	movzx	eax, cx
	cmp	eax, 0xff
	seta	al
	movzx	eax, al
	add	eax, eax
.label_2574:
	mov	dword ptr [rbx + 0x70], eax
	jmp	.label_2536
.label_2591:
	mov	rbp, qword ptr [rbp + rax*8]
	sub	rbp, r14
	mov	qword ptr [rbx + 0x30], rbp
	je	.label_2558
	test	rbp, rbp
	jle	.label_2585
	mov	rdi, qword ptr [rbx + 0x10]
	mov	edx, 1
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_2585:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	call	memset
	mov	rbp, qword ptr [rbx + 0x30]
.label_2558:
	mov	qword ptr [rbx + 0x38], rbp
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_2536
.label_2593:
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_2540
	mov	rax, qword ptr [rbx + 0x30]
	mov	rcx, qword ptr [rbx + 0x40]
	cmp	rcx, rdx
	cmovg	rcx, rdx
	cmp	rax, rcx
	jge	.label_2553
	add	r13, rax
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r13]
	mov	dl, byte ptr [rsi + rdx]
	jmp	.label_2549
.label_2560:
	mov	rdx, qword ptr [rbx + 0x78]
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	add	rsi, qword ptr [rbx + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	mov	dl, byte ptr [rdx + rsi]
.label_2549:
	mov	byte ptr [rdi + rax], dl
	inc	rax
	cmp	rax, rcx
	jl	.label_2560
	mov	rax, rcx
.label_2553:
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_2540
.label_2557:
	mov	r15, r14
.label_2530:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_2540
.label_2559:
	mov	rdx, r14
	sub	rdx, r13
	mov	rsi, qword ptr [rbx + 0x50]
	add	rsi, rdx
	mov	qword ptr [rbx + 0x58], rsi
	add	rdx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rdx
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_2579
.label_2544:
	mov	r10, r12
.label_2531:
	cmp	esi, -1
	jne	.label_2555
	mov	rax, qword ptr [rbx + 0x28]
	mov	r12, qword ptr [rbx + 0x38]
.label_2575:
	add	r12, rax
	mov	rbp, r12
	sub	rbp, r13
	jge	.label_2587
	mov	qword ptr [rsp], r10
	lea	rax, [rbx + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_2554
.label_2550:
	xor	esi, esi
	cmp	rbp, r12
	je	.label_2592
	test	rax, rax
	mov	rcx, qword ptr [rsp + 0x10]
	je	.label_2529
	mov	rax, qword ptr [rbx]
	movzx	esi, byte ptr [rax + r12]
	jmp	.label_2529
.label_2592:
	mov	rcx, qword ptr [rsp + 0x10]
.label_2529:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	jmp	.label_2532
.label_2554:
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, qword ptr [rbx + 0x50]
	mov	rdx, rbp
	sub	rdx, r12
	mov	rsi, qword ptr [rbx]
	add	rsi, r12
	lea	rdi, [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x18]
	call	rpl_mbrtowc
	test	rax, rax
	je	.label_2550
	mov	rcx, rax
	or	rcx, 1
	cmp	rcx, -1
	je	.label_2550
	mov	esi, dword ptr [rsp + 0x30]
.label_2532:
	add	r12, rax
	mov	rbp, r12
	sub	rbp, r13
	jl	.label_2554
	mov	qword ptr [rbx + 0x30], rbp
	cmp	esi, -1
	mov	r10, qword ptr [rsp]
	je	.label_2565
.label_2555:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2564
.label_2581:
	xor	ecx, ecx
	cmp	esi, 0xa
	jne	.label_2534
	mov	ecx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_2534
	xor	ecx, ecx
.label_2534:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rbp, qword ptr [rbx + 0x30]
	jmp	.label_2561
.label_2587:
	mov	qword ptr [rbx + 0x30], rbp
.label_2565:
	dec	r10
	mov	rdi, rbx
	mov	rsi, r10
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
.label_2561:
	test	rbp, rbp
	jne	.label_2556
.label_2533:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_2536
.label_2556:
	jle	.label_2586
	mov	rdi, qword ptr [rbx + 0x10]
	test	rbp, rbp
	mov	edx, 1
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_2586:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_2533
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	call	memset
	jmp	.label_2533
.label_2564:
	mov	ebp, esi
	mov	edi, ebp
	call	iswalnum
	mov	esi, ebp
	cmp	esi, 0x5f
	mov	ecx, 1
	je	.label_2534
	test	eax, eax
	je	.label_2581
	jmp	.label_2534
.label_2583:
	lea	rsi, [rsp + 0x26]
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_2546
	mov	qword ptr [rsp + 0x18], r11
	lea	rdi, [rbp - 1]
	sub	rdi, r8
	cmp	rdi, -8
	mov	rcx, -7
	cmovg	rcx, rdi
	xor	rcx, 0xffffffffffffffff
	shl	rcx, 0x20
	sar	rcx, 0x20
	inc	rcx
.label_2562:
	movzx	edi, byte ptr [rbp + rcx - 2]
	mov	al, byte ptr [r9 + rdi]
	mov	byte ptr [rsp + rcx + 0x24], al
	dec	rcx
	cmp	rcx, 1
	jg	.label_2562
	jmp	.label_2570
.label_2546:
	mov	qword ptr [rsp + 0x18], r11
.label_2570:
	mov	r12, r10
	jmp	.label_2572
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b5a0

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	r10, qword ptr [r14 + 0x10]
	xor	ecx, ecx
	test	r10, r10
	jle	.label_2597
	mov	rcx, qword ptr [rbx + 0x98]
	mov	r11, qword ptr [r14 + 0x18]
	mov	rdi, qword ptr [rcx]
	mov	r9d, eax
	and	r9d, 1
	mov	r8d, eax
	and	r8d, 2
	and	eax, 8
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_2595:
	mov	rcx, qword ptr [r11 + rbx*8]
	mov	rdx, rcx
	shl	rdx, 4
	mov	edx, dword ptr [rdi + rdx + 8]
	movzx	esi, dl
	cmp	esi, 2
	jne	.label_2596
	shr	edx, 8
	test	dx, 0x3ff
	je	.label_2597
	test	r9d, r9d
	jne	.label_2598
	mov	esi, edx
	and	esi, 4
	jne	.label_2596
.label_2598:
	test	r9d, r9d
	je	.label_2600
	mov	esi, edx
	and	esi, 8
	jne	.label_2596
.label_2600:
	test	r8d, r8d
	jne	.label_2599
	mov	esi, edx
	and	esi, 0x20
	jne	.label_2596
.label_2599:
	test	eax, eax
	jne	.label_2597
	test	dl, dl
	jns	.label_2597
	nop	dword ptr [rax]
.label_2596:
	inc	rbx
	cmp	rbx, r10
	mov	ecx, 0
	jl	.label_2595
.label_2597:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b660

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0xe8], 0
	jle	.label_2601
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_2604:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	mov	ebx, 0
	jle	.label_2602
	nop	word ptr [rax + rax]
.label_2605:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_2605
.label_2602:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_2603
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_2603:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_2604
.label_2601:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b720

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	qword ptr [rbp - 0x78], rbx
	mov	r14, rdx
	mov	qword ptr [rbp - 0x98], r14
	mov	r12, rsi
	mov	qword ptr [rbp - 0x80], r12
	mov	rcx, qword ptr [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_2617]]
	mov	qword ptr [rbp - 0x50], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_2618]]
	movaps	xmmword ptr [rbp - 0x60], xmm0
	xor	r13d, r13d
	test	r8b, r8b
	je	.label_2619
	mov	qword ptr [rbp - 0x88], rcx
	mov	r15, r14
	mov	edi, 0x60
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	mov	r14d, 0xc
	test	rax, rax
	je	.label_2630
	lea	r13, [rbp - 0x60]
	mov	r14, r15
	mov	rcx, qword ptr [rbp - 0x88]
.label_2619:
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x70], r13
	mov	r15, qword ptr [rcx + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x40], xmm0
	mov	qword ptr [rbp - 0x30], 0
	mov	rdx, r14
	shl	rdx, 4
	cmp	rdx, 0xfbf
	ja	.label_2655
	mov	rax, rsp
	lea	rcx, [rdx + 0xf]
	and	rcx, 0xfffffffffffffff0
	sub	rax, rcx
	mov	rsp, rax
	mov	dword ptr [rbp - 0xa4], 0
	jmp	.label_2662
.label_2655:
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x90], rdx
	call	malloc
	test	rax, rax
	je	.label_2670
	mov	cl, 1
	mov	dword ptr [rbp - 0xa4], ecx
	mov	rdx, qword ptr [rbp - 0x90]
.label_2662:
	mov	qword ptr [rbp - 0x90], rdx
	mov	qword ptr [rbp - 0xa0], rax
	mov	rdi, rax
	mov	rsi, rbx
	call	memcpy
	mov	rsi, qword ptr [rbx]
	xor	edi, edi
	cmp	rsi, qword ptr [rbx + 8]
	jg	.label_2622
	lea	rax, [rbx + 8]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_2627
.label_2670:
	mov	r14d, 0xc
	test	r13, r13
	je	.label_2630
	xor	ebx, ebx
	cmp	qword ptr [r13], 0
	jle	.label_2635
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_2631:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_2631
	jmp	.label_2635
.label_2636:
	mov	rdx, qword ptr [rbp - 0x68]
	mov	r14, rax
	jmp	.label_2654
	nop	word ptr [rax + rax]
.label_2627:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rax]
	mov	rdx, r15
	shl	rdx, 4
	lea	rax, [rcx + rdx]
	mov	ecx, dword ptr [rcx + rdx + 8]
	movzx	edx, cl
	cmp	edx, 9
	je	.label_2640
	cmp	edx, 8
	jne	.label_2606
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r14
	jge	.label_2606
	shl	rax, 4
	mov	qword ptr [rbx + rax], rsi
	mov	qword ptr [rbx + rax + 8], -1
	jmp	.label_2606
	nop	dword ptr [rax]
.label_2640:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r14
	jge	.label_2606
	shl	rax, 4
	cmp	qword ptr [rbx + rax], rsi
	jge	.label_2610
	mov	qword ptr [rbx + rax + 8], rsi
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	r13, rsi
	mov	rsi, rbx
	jmp	.label_2615
.label_2610:
	test	ecx, 0x80000
	je	.label_2621
	mov	rcx, qword ptr [rbp - 0xa0]
	cmp	qword ptr [rcx + rax], -1
	je	.label_2621
	mov	rdi, rbx
	mov	r13, rsi
	mov	rsi, qword ptr [rbp - 0xa0]
.label_2615:
	mov	rdx, qword ptr [rbp - 0x90]
	call	memcpy
	mov	rsi, r13
	jmp	.label_2606
.label_2621:
	mov	qword ptr [rbx + rax + 8], rsi
	nop	word ptr cs:[rax + rax]
.label_2606:
	mov	qword ptr [rbp - 0x68], rsi
	cmp	rsi, qword ptr [rbx + 8]
	jne	.label_2628
	cmp	r15, qword ptr [r12 + 0xb0]
	jne	.label_2628
	mov	r13, r12
	mov	r12, qword ptr [rbp - 0x70]
	test	r12, r12
	je	.label_2651
	test	r14, r14
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	eax, 0
	mov	rdx, qword ptr [rbp - 0x90]
	je	.label_2653
	nop	word ptr cs:[rax + rax]
.label_2661:
	cmp	qword ptr [rcx - 8], 0
	js	.label_2658
	cmp	qword ptr [rcx], -1
	je	.label_2653
.label_2658:
	inc	rax
	add	rcx, 0x10
	cmp	rax, r14
	jb	.label_2661
.label_2653:
	cmp	rax, r14
	je	.label_2664
	mov	rcx, qword ptr [r12]
	lea	rax, [rcx - 1]
	mov	qword ptr [r12], rax
	test	rcx, rcx
	jle	.label_2632
	mov	rcx, qword ptr [r12 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rcx + rbx]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	rdi, qword ptr [rbp - 0x78]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x40], xmm0
	mov	r15, qword ptr [rax + rbx + 8]
	mov	r12, r13
.label_2628:
	mov	rbx, qword ptr [r12 + 0x98]
	mov	rsi, qword ptr [rbx]
	mov	r13, r15
	shl	r13, 4
	mov	eax, dword ptr [rsi + r13 + 8]
	test	al, 8
	jne	.label_2633
	test	eax, 0x100000
	jne	.label_2669
	movzx	eax, al
	cmp	eax, 4
	jne	.label_2646
	mov	rax, qword ptr [rsi + r13]
	shl	rax, 4
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rax + rcx + 0x10]
	mov	r14, qword ptr [rax + rcx + 0x18]
	mov	rdx, r14
	sub	rdx, rdi
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_2643
	cmp	r14, -1
	je	.label_2626
	cmp	rdi, -1
	je	.label_2626
	cmp	r14, rdi
	je	.label_2643
	mov	rax, qword ptr [r12 + 0x30]
	sub	rax, qword ptr [rbp - 0x68]
	cmp	rax, rdx
	jl	.label_2626
	mov	rsi, qword ptr [r12 + 8]
	mov	r12, rdi
	lea	rdi, [rsi + r12]
	add	rsi, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xb8], rdx
	call	memcmp
	mov	rdi, r12
	mov	rdx, qword ptr [rbp - 0xb8]
	test	eax, eax
	jne	.label_2626
.label_2643:
	cmp	r14, rdi
	jne	.label_2609
	lea	rdi, [rbp - 0x40]
	mov	rsi, r15
	mov	r14, rdx
	call	re_node_set_insert
	mov	rdx, r14
	test	al, al
	je	.label_2616
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_2609
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [r15 + r15*2]
	mov	rsi, qword ptr [rdi + rsi*8 + 0x10]
	mov	r14, qword ptr [rsi]
	dec	rax
	mov	r8, qword ptr [rcx + 0x18]
	mov	ecx, 0
	je	.label_2614
	nop	word ptr cs:[rax + rax]
.label_2607:
	lea	rsi, [rcx + rax]
	shr	rsi, 1
	cmp	qword ptr [r8 + rsi*8], r14
	lea	rdi, [rsi + 1]
	cmovl	rcx, rdi
	cmovge	rax, rsi
	cmp	rcx, rax
	jb	.label_2607
.label_2614:
	cmp	rcx, -1
	je	.label_2609
	cmp	qword ptr [r8 + rcx*8], r14
	je	.label_2649
	jmp	.label_2609
	nop	word ptr cs:[rax + rax]
.label_2633:
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	r12, qword ptr [rax + rcx*8]
	mov	rbx, qword ptr [rbx + 0x28]
	lea	rdi, [rbp - 0x40]
	mov	rsi, r15
	call	re_node_set_insert
	test	al, al
	je	.label_2616
	lea	rax, [r15 + r15*2]
	mov	r9, qword ptr [rbx + rax*8 + 8]
	test	r9, r9
	jle	.label_2624
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	mov	r10, qword ptr [r12 + 0x10]
	lea	r11, [r10 - 1]
	mov	r14, -1
	xor	r15d, r15d
	mov	r13, qword ptr [rbp - 0x70]
	nop	word ptr cs:[rax + rax]
.label_2638:
	test	r10, r10
	jle	.label_2612
	mov	rbx, qword ptr [r8 + r15*8]
	test	r11, r11
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rsi, r11
	mov	eax, 0
	je	.label_2648
	nop	dword ptr [rax + rax]
.label_2623:
	lea	rdx, [rax + rsi]
	shr	rdx, 1
	cmp	qword ptr [rcx + rdx*8], rbx
	lea	rdi, [rdx + 1]
	cmovl	rax, rdi
	cmovge	rsi, rdx
	cmp	rax, rsi
	jb	.label_2623
.label_2648:
	cmp	rax, -1
	je	.label_2612
	cmp	qword ptr [rcx + rax*8], rbx
	jne	.label_2612
	cmp	r14, -1
	jne	.label_2650
	mov	r14, rbx
.label_2612:
	inc	r15
	cmp	r15, r9
	jl	.label_2638
	mov	rdx, qword ptr [rbp - 0x68]
	jmp	.label_2654
	nop	word ptr cs:[rax + rax]
.label_2669:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r12
	mov	rcx, qword ptr [rbp - 0x68]
	call	check_node_accept_bytes
	movsxd	rdx, eax
.label_2609:
	test	rdx, rdx
	jne	.label_2652
	mov	rsi, qword ptr [rbx]
	mov	r12, qword ptr [rbp - 0x80]
.label_2646:
	add	rsi, r13
	mov	rdi, r12
	mov	rdx, qword ptr [rbp - 0x68]
	call	check_node_accept
	test	al, al
	mov	edx, 1
	je	.label_2624
.label_2652:
	add	rdx, qword ptr [rbp - 0x68]
	cmp	qword ptr [rbp - 0x70], 0
	mov	rax, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rax + r15*8]
	je	.label_2657
	mov	rax, qword ptr [rbp - 0x80]
	cmp	rdx, qword ptr [rax + 0xa8]
	jg	.label_2626
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + rdx*8]
	test	rcx, rcx
	je	.label_2626
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_2626
	dec	rax
	mov	rcx, qword ptr [rcx + 0x18]
	mov	ebx, 0
	je	.label_2608
.label_2639:
	lea	rsi, [rbx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r14
	lea	rdi, [rsi + 1]
	cmovl	rbx, rdi
	cmovge	rax, rsi
	cmp	rbx, rax
	jb	.label_2639
.label_2608:
	cmp	rbx, -1
	je	.label_2624
	cmp	qword ptr [rcx + rbx*8], r14
	jne	.label_2624
.label_2657:
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_2629
.label_2650:
	mov	r15, qword ptr [rbp - 0x38]
	test	r15, r15
	jle	.label_2668
	mov	rcx, r15
	dec	rcx
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, 0
	je	.label_2634
	nop	word ptr [rax + rax]
.label_2659:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r14
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_2659
.label_2634:
	cmp	rdx, -1
	setne	cl
	cmp	qword ptr [rax + rdx*8], r14
	sete	dl
	and	dl, cl
	mov	rax, r14
	cmovne	rax, rbx
	test	dl, dl
	jne	.label_2636
	test	r13, r13
	mov	rdx, qword ptr [rbp - 0x68]
	jne	.label_2671
	mov	r14, rax
	jmp	.label_2654
.label_2668:
	test	r13, r13
	mov	rdx, qword ptr [rbp - 0x68]
	je	.label_2654
.label_2671:
	mov	rcx, r13
	mov	r13, qword ptr [rcx]
	lea	rax, [r13 + 1]
	mov	qword ptr [rcx], rax
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_2656
	mov	rdi, qword ptr [rcx + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r12, rax
	test	r12, r12
	je	.label_2616
	mov	rax, qword ptr [rbp - 0x70]
	shl	qword ptr [rax + 8], 1
	mov	qword ptr [rax + 0x10], r12
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x68]
	jmp	.label_2663
.label_2656:
	mov	r12, qword ptr [rcx + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
.label_2663:
	mov	qword ptr [rbp - 0x90], rdi
	lea	r13, [r13 + r13*2]
	shl	r13, 4
	mov	qword ptr [r12 + r13], rdx
	mov	qword ptr [r12 + r13 + 8], rbx
	call	malloc
	mov	qword ptr [r12 + r13 + 0x10], rax
	test	rax, rax
	je	.label_2616
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x90]
	call	memcpy
	lea	rbx, [r12 + r13 + 0x18]
	mov	qword ptr [r12 + r13 + 0x20], r15
	test	r15, r15
	jle	.label_2637
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rdi, r15
	call	malloc
	mov	qword ptr [r12 + r13 + 0x28], rax
	test	rax, rax
	je	.label_2645
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_2649
.label_2637:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
.label_2649:
	mov	rdx, qword ptr [rbp - 0x68]
.label_2629:
	mov	r13, qword ptr [rbp - 0x70]
.label_2654:
	test	r14, r14
	js	.label_2647
	mov	r12, qword ptr [rbp - 0x78]
	jmp	.label_2613
.label_2647:
	mov	qword ptr [rbp - 0x70], r13
	cmp	r14, -2
	je	.label_2616
	nop	dword ptr [rax + rax]
.label_2624:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_2666
.label_2626:
	mov	r13, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [r13]
	lea	rax, [rcx - 1]
	mov	qword ptr [r13], rax
	test	rcx, rcx
	jle	.label_2632
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	r12, qword ptr [rbp - 0x78]
	mov	rdi, r12
	mov	rdx, qword ptr [rbp - 0x90]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rdx, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x40], xmm0
	mov	r14, qword ptr [rax + rbx + 8]
.label_2613:
	cmp	rdx, qword ptr [r12 + 8]
	mov	r15, r14
	mov	rsi, rdx
	mov	rbx, r12
	mov	r14, qword ptr [rbp - 0x98]
	mov	r12, qword ptr [rbp - 0x80]
	jle	.label_2627
	mov	rdi, qword ptr [rbp - 0x30]
.label_2622:
	call	free
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_2644
	mov	rdi, qword ptr [rbp - 0xa0]
	call	free
.label_2644:
	xor	r14d, r14d
	test	r13, r13
	je	.label_2630
	xor	r14d, r14d
	cmp	qword ptr [r13], 0
	jle	.label_2635
	xor	ebx, ebx
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_2660:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_2660
.label_2635:
	mov	rdi, qword ptr [r13 + 0x10]
	jmp	.label_2611
.label_2666:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	r14d, 1
	jmp	.label_2667
.label_2651:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	xor	r14d, r14d
.label_2667:
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_2630
	mov	rdi, qword ptr [rbp - 0xa0]
	jmp	.label_2611
.label_2664:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_2620
	mov	rdi, qword ptr [rbp - 0xa0]
	call	free
.label_2620:
	xor	r14d, r14d
	cmp	qword ptr [r12], 0
	jle	.label_2625
	xor	ebx, ebx
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_2641:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_2641
	jmp	.label_2625
.label_2645:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.label_2616:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_2642
	mov	rdi, qword ptr [rbp - 0xa0]
	call	free
.label_2642:
	mov	r14d, 0xc
	mov	r12, qword ptr [rbp - 0x70]
	test	r12, r12
	je	.label_2630
	xor	ebx, ebx
	cmp	qword ptr [r12], 0
	jle	.label_2625
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_2665:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_2665
.label_2625:
	mov	rdi, qword ptr [r12 + 0x10]
.label_2611:
	call	free
.label_2630:
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2632:
	mov	edi, OFFSET FLAT:.str.26
	mov	esi, OFFSET FLAT:.str.22_1
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x41c120

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_2672
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_2675
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2680
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_2678:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_2676
	dec	rsi
	test	rsi, rsi
	jg	.label_2678
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_2673
.label_2680:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rsi]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edx, 1
	bt	rcx, rax
	jb	.label_2673
	xor	edx, edx
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_2673
	jmp	.label_2677
.label_2676:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2679
.label_2674:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_2673
.label_2677:
	mov	edx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_2673
	xor	edx, edx
	jmp	.label_2673
.label_2672:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_2673
.label_2675:
	and	edx, 2
	xor	edx, 0xa
.label_2673:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_2679:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_2673
	test	eax, eax
	jne	.label_2673
	jmp	.label_2674
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c1f0

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rcx, qword ptr [r12 + 8]
	xor	eax, eax
	test	rcx, rcx
	jle	.label_2683
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	jmp	.label_2684
.label_2685:
	mov	rdi, qword ptr [r15 + 0xf8]
	mov	rsi, r14
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2683
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_2682
	nop	word ptr [rax + rax]
.label_2684:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rdx, rbp
	shl	rdx, 4
	movzx	esi, byte ptr [rax + rdx + 8]
	cmp	esi, 8
	jne	.label_2681
	mov	rax, qword ptr [rax + rdx]
	cmp	rax, 0x3f
	jg	.label_2681
	mov	rdx, qword ptr [r13 + 0xa0]
	bt	rdx, rax
	jae	.label_2681
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	je	.label_2685
.label_2682:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [r15 + 0xe8]
	mov	rdx, qword ptr [r15 + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [r15 + 0xf8]
	mov	rdx, qword ptr [rax + rcx*8]
	mov	eax, 0xc
	test	rdx, rdx
	je	.label_2683
	mov	qword ptr [rdx + 8], rbp
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	mov	rcx, qword ptr [r12 + 8]
	nop	dword ptr [rax]
.label_2681:
	inc	rbx
	xor	eax, eax
	cmp	rbx, rcx
	jl	.label_2684
.label_2683:
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
	#Procedure 0x41c320

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	qword ptr [rsp + 0x50], rsi
	mov	r13, rdi
	cmp	qword ptr [rsi + 8], 0
	jle	.label_2734
	mov	r15, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x20], r15
	mov	r8, qword ptr [r13 + 0x48]
	mov	qword ptr [rsp + 0x58], r8
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_2715:
	mov	qword ptr [rsp + 0x48], rcx
	mov	rax, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rax + 0x10]
	mov	r14, qword ptr [rax + rcx*8]
	mov	qword ptr [rsp + 0x80], r14
	mov	rax, qword ptr [r15]
	shl	r14, 4
	mov	ebx, dword ptr [rax + r14 + 8]
	movzx	eax, bl
	cmp	eax, 4
	jne	.label_2708
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_2720
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	mov	rsi, r8
	mov	r12, r8
	call	re_string_context_at
	mov	r8, r12
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_2726
	test	ecx, ecx
	je	.label_2708
.label_2726:
	test	bh, 8
	je	.label_2727
	test	ecx, ecx
	jne	.label_2708
.label_2727:
	test	bh, 0x20
	je	.label_2732
	mov	ecx, eax
	and	ecx, 2
	je	.label_2708
.label_2732:
	test	bpl, bpl
	jns	.label_2720
	and	eax, 8
	je	.label_2708
	nop	word ptr cs:[rax + rax]
.label_2720:
	mov	r12, qword ptr [r13 + 0xc8]
	mov	qword ptr [rsp + 0x40], r12
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	r9, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x30], r9
	test	r12, r12
	mov	eax, 0
	jle	.label_2686
	mov	rcx, qword ptr [r13 + 0xd8]
	xor	eax, eax
	mov	rdx, r12
	nop	word ptr [rax + rax]
.label_2703:
	lea	rsi, [rdx + rax]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rcx + rsi*8 + 8], r8
	cmovge	rdx, rdi
	lea	rsi, [rdi + 1]
	cmovl	rax, rsi
	cmp	rax, rdx
	jl	.label_2703
.label_2686:
	cmp	rax, r12
	jge	.label_2710
	cmp	rax, -1
	je	.label_2710
	mov	rcx, qword ptr [r13 + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r8
	jne	.label_2710
	lea	rax, [rcx + rax*8]
	nop	dword ptr [rax]
.label_2723:
	mov	rcx, qword ptr [rsp + 0x80]
	cmp	qword ptr [rax], rcx
	je	.label_2718
	cmp	byte ptr [rax + 0x20], 0
	lea	rax, [rax + 0x28]
	jne	.label_2723
.label_2710:
	cmp	qword ptr [r13 + 0xe8], 0
	mov	rax, r12
	jle	.label_2724
	mov	qword ptr [rsp + 0x20], r15
	mov	rax, qword ptr [r9]
	mov	r10, qword ptr [rax + r14]
	mov	qword ptr [rsp + 0x18], r10
	xor	r11d, r11d
	jmp	.label_2728
	nop	word ptr cs:[rax + rax]
.label_2722:
	mov	rax, qword ptr [r9]
.label_2728:
	mov	rcx, qword ptr [r13 + 0xf8]
	mov	r14, qword ptr [rcx + r11*8]
	mov	qword ptr [rsp + 0x28], r14
	mov	rcx, qword ptr [r14 + 8]
	shl	rcx, 4
	cmp	qword ptr [rax + rcx], r10
	jne	.label_2701
	mov	qword ptr [rsp + 0x38], r11
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x20]
	test	rax, rax
	jle	.label_2689
	mov	rbx, r8
	xor	r12d, r12d
	jmp	.label_2693
.label_2689:
	mov	rdx, r8
	mov	rdi, r15
	xor	r12d, r12d
	jmp	.label_2696
.label_2688:
	mov	r9, qword ptr [r13 + 0x58]
	cmp	rdi, r9
	jg	.label_2700
	mov	qword ptr [rsp + 0x60], rdx
	mov	rax, qword ptr [r13 + 0x40]
	mov	r8, qword ptr [r13 + 0xc0]
	cmp	rax, rdi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rdi, r13
	mov	rdx, r14
	jg	.label_2702
	cmp	rax, r9
	jl	.label_2707
.label_2702:
	cmp	rcx, qword ptr [rsp + 0x68]
	jg	.label_2709
	cmp	rcx, r9
	jge	.label_2709
.label_2707:
	mov	rax, qword ptr [rsp + 0x68]
	lea	esi, [rax + 1]
	mov	r14, rdi
	mov	r13, r8
	call	extend_buffers
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rdi, r14
	mov	r8, r13
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_2687
.label_2709:
	mov	r14, rdx
	mov	rdx, qword ptr [rsp + 0x68]
	sub	rdx, r8
	mov	r13, rdi
	jle	.label_2721
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r8*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [r13 + 0xc0], rax
.label_2721:
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 0x70], rax
	jmp	.label_2730
	nop	word ptr cs:[rax + rax]
.label_2693:
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rdx, qword ptr [rcx + r12*8]
	mov	rcx, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 0x78], rcx
	mov	rdi, rcx
	sub	rdi, r15
	add	rdi, rbx
	mov	rbp, rcx
	sub	rbp, r15
	jle	.label_2712
	mov	rcx, qword ptr [r13 + 0x30]
	cmp	rdi, rcx
	jg	.label_2688
	mov	qword ptr [rsp + 0x60], rdx
	mov	qword ptr [rsp + 0x68], rdi
.label_2730:
	mov	rax, qword ptr [rsp + 0x70]
	lea	rdi, [rax + rbx]
	lea	rsi, [rax + r15]
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	mov	r8, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x60]
	jne	.label_2699
.label_2712:
	mov	rbx, rdi
	mov	rdi, r13
	mov	rsi, r14
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rbp, r8
	call	get_subexp_sub
	mov	rcx, r13
	mov	r13d, eax
	cmp	r13d, 1
	ja	.label_2687
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rsp + 0x70], rax
	inc	r12
	mov	rax, qword ptr [r14 + 0x20]
	cmp	r12, rax
	mov	rdx, rbx
	mov	rdi, qword ptr [rsp + 0x78]
	mov	r15, rdi
	mov	r13, rcx
	mov	r8, rbp
	jl	.label_2693
	jmp	.label_2696
.label_2699:
	mov	rax, qword ptr [r14 + 0x20]
.label_2700:
	mov	rdx, rbx
	mov	rdi, r15
.label_2696:
	cmp	r12, rax
	jge	.label_2739
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_2701
.label_2739:
	test	r12, r12
	setg	al
	movzx	ebp, al
	add	rbp, rdi
	cmp	rbp, r8
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	jg	.label_2701
	jmp	.label_2716
.label_2705:
	cmp	r14, -1
	je	.label_2737
	mov	qword ptr [rsp + 0x38], r11
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x58], r8
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	mov	rbx, r13
	jne	.label_2738
	lea	rsi, [rbp + 1]
	sub	rsi, qword ptr [r15]
	mov	edi, 0x18
	call	rpl_calloc
	mov	qword ptr [r15 + 0x10], rax
	test	rax, rax
	mov	r13d, 0xc
	je	.label_2687
.label_2738:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
	mov	dword ptr [rsp], 9
	mov	rdi, rbx
	mov	rsi, rax
	mov	r8, r14
	mov	r9, rbp
	call	check_arrival
	mov	r13d, eax
	cmp	r13d, 1
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x68]
	je	.label_2706
	test	r13d, r13d
	jne	.label_2687
	mov	qword ptr [rsp + 0x78], rbx
	mov	rbx, qword ptr [r15 + 0x20]
	cmp	rbx, qword ptr [r15 + 0x18]
	mov	r12, r15
	je	.label_2717
.label_2729:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	mov	r13d, 0xc
	test	rax, rax
	mov	rbx, qword ptr [rsp + 0x78]
	je	.label_2687
	mov	rcx, qword ptr [r12 + 0x20]
	mov	rdx, qword ptr [r12 + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r14
	mov	qword ptr [rax + 8], rbp
	inc	rcx
	mov	qword ptr [r12 + 0x20], rcx
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rax
	mov	rcx, qword ptr [rsp + 0x80]
	mov	r8, qword ptr [rsp + 0x58]
	call	get_subexp_sub
	mov	r13d, eax
	cmp	r13d, 1
	ja	.label_2687
	mov	r15, r12
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_2704
.label_2736:
	cmp	rdx, qword ptr [r13 + 0x58]
	jge	.label_2701
	mov	qword ptr [rsp + 0x38], r11
	mov	qword ptr [rsp + 0x18], r10
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x58], r8
	lea	rbx, [rdx + 1]
	mov	r15, rdx
	mov	rdi, r13
	mov	esi, ebx
	call	extend_buffers
	mov	rcx, r13
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_2687
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	r13, rcx
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x30]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdx, r15
	jmp	.label_2713
.label_2717:
	lea	rax, [rbx + rbx]
	mov	rdi, qword ptr [r12 + 0x28]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	r13d, 0xc
	test	rax, rax
	je	.label_2687
	lea	rcx, [rbx + rbx + 1]
	mov	qword ptr [r12 + 0x28], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_2729
	nop	dword ptr [rax + rax]
.label_2716:
	cmp	rbp, qword ptr [r14]
	jle	.label_2735
	cmp	rdx, qword ptr [r13 + 0x30]
	jge	.label_2736
	lea	rbx, [rdx + 1]
.label_2713:
	mov	rcx, qword ptr [rsp + 0x70]
	movzx	eax, byte ptr [rbp + rcx - 1]
	movzx	ecx, byte ptr [rcx + rdx]
	cmp	ecx, eax
	mov	rdx, rbx
	jne	.label_2701
.label_2735:
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rcx, qword ptr [rax + rbp*8]
	test	rcx, rcx
	je	.label_2691
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_2691
	mov	qword ptr [rsp + 0x68], rdx
	mov	r15, r14
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [r9]
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_2711:
	mov	r14, qword ptr [rcx + rsi*8]
	mov	rdi, r14
	shl	rdi, 4
	movzx	ebx, byte ptr [rdx + rdi + 8]
	cmp	ebx, 9
	jne	.label_2731
	cmp	qword ptr [rdx + rdi], r10
	je	.label_2705
.label_2731:
	inc	rsi
	cmp	rsi, rax
	jl	.label_2711
.label_2737:
	mov	rbx, r13
.label_2704:
	mov	rdx, qword ptr [rsp + 0x68]
	jmp	.label_2706
	nop	word ptr cs:[rax + rax]
.label_2691:
	mov	r15, r14
	mov	rbx, r13
.label_2706:
	cmp	rbp, r8
	lea	rbp, [rbp + 1]
	mov	r13, rbx
	mov	r14, r15
	jl	.label_2716
	nop	dword ptr [rax]
.label_2701:
	inc	r11
	cmp	r11, qword ptr [r13 + 0xe8]
	jl	.label_2722
	mov	rax, qword ptr [r13 + 0xc8]
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_2724
.label_2718:
	mov	rax, r12
.label_2724:
	mov	dword ptr [rsp + 0xa4], 0
	cmp	r12, rax
	jge	.label_2708
	lea	rax, [r12 + r12*4]
	lea	rbp, [rax*8 + 0x18]
	nop	word ptr cs:[rax + rax]
.label_2695:
	mov	rax, qword ptr [r13 + 0xd8]
	mov	rbx, r13
	mov	rcx, qword ptr [rsp + 0x80]
	cmp	qword ptr [rax + rbp - 0x18], rcx
	jne	.label_2692
	cmp	qword ptr [rax + rbp - 0x10], r8
	jne	.label_2692
	mov	rdx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	r13, qword ptr [r15 + 0x30]
	cmp	rsi, rdx
	jne	.label_2694
	mov	qword ptr [rsp + 0x40], r12
	mov	rax, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0x80]
	lea	rcx, [rcx + rcx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_2698
.label_2694:
	mov	qword ptr [rsp + 0x40], r12
	mov	rax, qword ptr [rsp + 0x80]
	lea	rax, [rax*8]
	add	rax, qword ptr [r15 + 0x18]
.label_2698:
	mov	rax, qword ptr [rax]
	lea	r15, [rax + rax*2]
	lea	r14, [rsi + r8]
	mov	qword ptr [rsp + 0x70], rsi
	sub	r14, rdx
	mov	qword ptr [rsp + 0x78], rdx
	lea	rsi, [r14 - 1]
	mov	r12, rbx
	mov	edx, dword ptr [r12 + 0xa0]
	mov	rdi, r12
	mov	rbx, r8
	call	re_string_context_at
	mov	rdx, rbx
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	rsi, qword ptr [rcx + r14*8]
	mov	rcx, qword ptr [rcx + rdx*8]
	test	rcx, rcx
	mov	edx, 0
	je	.label_2719
	mov	rdx, qword ptr [rcx + 0x10]
.label_2719:
	mov	qword ptr [rsp + 0x68], rdx
	lea	rdx, [r13 + r15*8]
	test	rsi, rsi
	lea	rdi, [rsp + 0x88]
	je	.label_2725
	mov	r15d, eax
	mov	rsi, qword ptr [rsi + 0x50]
	mov	qword ptr [rsp + 0x60], rdx
	mov	rbx, rdi
	call	re_node_set_init_union
	mov	r13d, eax
	mov	dword ptr [rsp + 0xa4], r13d
	test	r13d, r13d
	jne	.label_2733
	lea	rdi, [rsp + 0xa4]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, rbx
	mov	ecx, r15d
	call	re_acquire_state_context
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rdi, qword ptr [rsp + 0x98]
	call	free
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbx, r12
	cmp	qword ptr [rax + r14*8], 0
	jne	.label_2697
	mov	r13d, dword ptr [rsp + 0xa4]
	test	r13d, r13d
	je	.label_2697
	jmp	.label_2690
.label_2725:
	lea	rdi, [rsp + 0xa4]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x60], rdx
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbx, r12
	cmp	qword ptr [rax + r14*8], 0
	jne	.label_2697
	mov	r13d, dword ptr [rsp + 0xa4]
	test	r13d, r13d
	mov	r15, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x70]
	je	.label_2714
	jmp	.label_2690
.label_2697:
	mov	r15, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x70]
.label_2714:
	cmp	rdx, rcx
	jne	.label_2692
	mov	rax, qword ptr [rax + r8*8]
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_2692
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, r8
	mov	r14, r8
	call	check_subexp_matching_top
	mov	rcx, r14
	mov	r13d, eax
	mov	dword ptr [rsp + 0xa4], r13d
	test	r13d, r13d
	jne	.label_2690
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x60]
	mov	r14, rcx
	call	transit_state_bkref
	mov	r8, r14
	mov	r13d, eax
	mov	dword ptr [rsp + 0xa4], r13d
	test	r13d, r13d
	jne	.label_2690
	nop	
.label_2692:
	inc	r12
	add	rbp, 0x28
	mov	r13, rbx
	cmp	r12, qword ptr [r13 + 0xc8]
	jl	.label_2695
	nop	word ptr [rax + rax]
.label_2708:
	mov	rcx, qword ptr [rsp + 0x48]
	inc	rcx
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rcx, qword ptr [rax + 8]
	jl	.label_2715
.label_2734:
	mov	dword ptr [rsp + 0xa4], 0
	xor	r13d, r13d
	jmp	.label_2690
.label_2687:
	mov	dword ptr [rsp + 0xa4], r13d
.label_2690:
	mov	eax, r13d
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2733:
	mov	rdi, qword ptr [rsp + 0x98]
	call	free
	jmp	.label_2690
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41cca0

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	ecx, esi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x40]
	mov	eax, 0xc
	movabs	rdx, 0xffffffffffffffe
	cmp	rsi, rdx
	ja	.label_2744
	movsxd	rax, ecx
	mov	rcx, qword ptr [r14 + 0x58]
	add	rsi, rsi
	cmp	rcx, rsi
	cmovle	rsi, rcx
	cmp	rax, rsi
	cmovge	rsi, rax
	mov	rdi, r14
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_2744
	mov	rdi, qword ptr [r14 + 0xb8]
	test	rdi, rdi
	je	.label_2751
	mov	rax, qword ptr [r14 + 0x40]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	test	rcx, rcx
	mov	eax, 0xc
	je	.label_2744
	mov	qword ptr [r14 + 0xb8], rcx
.label_2751:
	cmp	byte ptr [r14 + 0x88], 0
	mov	eax, dword ptr [r14 + 0x90]
	je	.label_2748
	cmp	eax, 2
	jl	.label_2752
	mov	rdi, r14
	call	build_wcs_upper_buffer
	test	eax, eax
	je	.label_2742
	jmp	.label_2744
.label_2748:
	cmp	eax, 2
	jl	.label_2746
	mov	rdi, r14
	call	build_wcs_buffer
	jmp	.label_2742
.label_2752:
	mov	rbx, qword ptr [r14 + 0x30]
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	cmp	r15, rax
	cmovg	r15, rax
	cmp	rbx, r15
	jge	.label_2749
	jmp	.label_2743
.label_2745:
	mov	cl, byte ptr [rax + rdx]
	jmp	.label_2740
	nop	word ptr cs:[rax + rax]
.label_2743:
	mov	rcx, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	mov	cl, byte ptr [rbx + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_2745
.label_2740:
	movzx	r12d, cl
	lea	eax, [r12 + 0x80]
	cmp	eax, 0x17f
	ja	.label_2747
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	r12d, dword ptr [rax + r12*4]
.label_2747:
	mov	rax, qword ptr [r14 + 8]
	mov	byte ptr [rax + rbx], r12b
	inc	rbx
	cmp	rbx, r15
	jl	.label_2743
	mov	rbx, r15
.label_2749:
	mov	qword ptr [r14 + 0x30], rbx
	mov	qword ptr [r14 + 0x38], rbx
	jmp	.label_2742
.label_2746:
	mov	rdx, qword ptr [r14 + 0x78]
	test	rdx, rdx
	je	.label_2742
	mov	rax, qword ptr [r14 + 0x30]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	rsi, qword ptr [r14 + 0x58]
	cmp	rcx, rsi
	cmovg	rcx, rsi
	cmp	rax, rcx
	jge	.label_2750
	mov	rsi, qword ptr [r14 + 0x28]
	add	rsi, rax
	mov	rdi, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbx + rax], dl
	jmp	.label_2741
	nop	dword ptr [rax]
.label_2753:
	mov	rdx, qword ptr [r14 + 0x78]
	mov	rsi, qword ptr [r14]
	mov	rdi, qword ptr [r14 + 8]
	add	rsi, qword ptr [r14 + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rdi + rax], dl
.label_2741:
	inc	rax
	cmp	rax, rcx
	jl	.label_2753
	mov	rax, rcx
.label_2750:
	mov	qword ptr [r14 + 0x30], rax
	mov	qword ptr [r14 + 0x38], rax
.label_2742:
	xor	eax, eax
.label_2744:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41ce60

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	r13, rsi
	mov	r15, rdi
	mov	r14, qword ptr [r13 + 0x48]
	mov	r12, qword ptr [r13 + 0x98]
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	r14, qword ptr [r13 + 0xc0]
	jle	.label_2759
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_2758
.label_2759:
	mov	rcx, qword ptr [rax + r14*8]
	test	rcx, rcx
	je	.label_2760
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbx, rbx
	je	.label_2761
	mov	rbx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbx
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_2754
	mov	rsi, qword ptr [r13 + 0x48]
	test	rbx, rbx
	sete	bpl
	jmp	.label_2756
.label_2760:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_2758
.label_2761:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	mov	bpl, 1
	mov	rsi, r14
.label_2756:
	dec	rsi
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	call	re_string_context_at
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, r12
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbx, rax
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rax + r14*8], rbx
	test	bpl, bpl
	jne	.label_2758
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_2758:
	test	rbx, rbx
	je	.label_2757
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_2762
	lea	r12, [rbx + 8]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_2755
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_2755
	mov	rdi, r13
	mov	rsi, r12
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_2755
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_2755
.label_2757:
	mov	rax, rbx
	jmp	.label_2755
.label_2762:
	mov	rax, rbx
.label_2755:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2754:
	xor	eax, eax
	jmp	.label_2755
	nop	
	.section	.text
	.align	32
	#Procedure 0x41cfb0

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	rbp, rdi
	test	r12, r12
	je	.label_2770
	mov	r13, qword ptr [r12 + 8]
	test	r15, r15
	je	.label_2768
	test	r13, r13
	jle	.label_2768
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_2768
	add	rdi, r13
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	mov	ecx, 0xc
	je	.label_2767
	mov	qword ptr [rsp], rbp
	xor	r14d, r14d
	xor	ebx, ebx
	xor	ebp, ebp
	mov	rcx, rbx
	jmp	.label_2765
.label_2768:
	test	r13, r13
	jle	.label_2770
	mov	qword ptr [rbp + 8], r13
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_2771
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_2764
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_2772
.label_2770:
	test	r15, r15
	je	.label_2771
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_2771
	mov	qword ptr [rbp + 8], rdi
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jle	.label_2771
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_2764
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2772
.label_2771:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_2772
.label_2766:
	mov	rcx, rbx
	nop	dword ptr [rax + rax]
.label_2765:
	cmp	rcx, qword ptr [r15 + 8]
	jge	.label_2763
	mov	rdx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rdx + rbp*8]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rsi + rcx*8]
	cmp	rdx, rsi
	jle	.label_2769
	inc	rcx
	mov	qword ptr [rax + r14*8], rsi
	inc	r14
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_2765
	jmp	.label_2763
.label_2769:
	sete	bl
	movzx	ebx, bl
	add	rbx, rcx
	inc	rbp
	mov	qword ptr [rax + r14*8], rdx
	inc	r14
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_2766
	jmp	.label_2775
.label_2763:
	mov	rbx, rcx
.label_2775:
	sub	r13, rbp
	jle	.label_2773
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	mov	rdx, r13
	call	memcpy
	sub	r14, rbp
	add	r14, qword ptr [r12 + 8]
	jmp	.label_2774
.label_2773:
	mov	rdx, qword ptr [r15 + 8]
	sub	rdx, rbx
	jle	.label_2774
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rax + rbx*8]
	shl	rdx, 3
	call	memcpy
	sub	r14, rbx
	add	r14, qword ptr [r15 + 8]
.label_2774:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], r14
.label_2772:
	xor	ecx, ecx
.label_2767:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2764:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	jmp	.label_2767
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41d1a0

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	rbx, rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	r13, rdi
	lea	rsi, [r12 + 0x10]
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 8]
	mov	dword ptr [rsp], 8
	mov	r8, rbx
	mov	r9, r14
	call	check_arrival
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2780
	mov	rsi, qword ptr [r15]
	mov	qword ptr [rsp + 0x20], r15
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_2783
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], rdi
	mov	rdi, qword ptr [r13 + 0xd8]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	call	realloc
	test	rax, rax
	je	.label_2781
	mov	qword ptr [r13 + 0xd8], rax
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rbp, qword ptr [r13 + 0xd0]
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	add	rbp, rbp
	mov	qword ptr [r13 + 0xd0], rbp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
.label_2783:
	test	r15, r15
	jle	.label_2784
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [rcx + rcx*4]
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_2778
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_2778
.label_2784:
	mov	rax, qword ptr [r13 + 0xd8]
.label_2778:
	lea	rcx, [r15 + r15*4]
	mov	qword ptr [rax + rcx*8], rbx
	mov	qword ptr [rax + rcx*8 + 8], r14
	mov	qword ptr [rax + rcx*8 + 0x10], rsi
	mov	qword ptr [rax + rcx*8 + 0x18], rdi
	xor	edx, edx
	sub	rdi, rsi
	mov	si, 0xffff
	cmovne	si, dx
	mov	word ptr [rax + rcx*8 + 0x22], si
	inc	r15
	mov	qword ptr [r13 + 0xc8], r15
	mov	byte ptr [rax + rcx*8 + 0x20], 0
	movsxd	rax, dword ptr [r13 + 0xe0]
	cmp	rax, rdi
	jge	.label_2779
	mov	dword ptr [r13 + 0xe0], edi
.label_2779:
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x20]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	mov	r15, qword ptr [r13 + 0xc0]
	cmp	rax, r14
	jg	.label_2782
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_2776
.label_2782:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	jg	.label_2777
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_2777
.label_2776:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2780
.label_2777:
	xor	ebp, ebp
	mov	rdx, r14
	sub	rdx, r15
	jle	.label_2780
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [r13 + 0xc0], r14
.label_2780:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2781:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	mov	ebp, 0xc
	jmp	.label_2780
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41d380

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	qword ptr [rsp + 0x48], r9
	mov	rbp, rcx
	mov	r15, rsi
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x58], rax
	mov	dword ptr [rsp + 0x8c], 0
	mov	rax, qword ptr [rax]
	mov	rcx, rdx
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x40], rax
	mov	rbx, qword ptr [r15 + 8]
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rcx, [rax + r9]
	cmp	rbx, rcx
	jle	.label_2804
	mov	qword ptr [rsp + 0x68], rdx
	mov	qword ptr [rsp + 0x18], r8
	mov	r12, rdi
	mov	r13, qword ptr [r15 + 0x10]
.label_2797:
	mov	qword ptr [rsp + 0x50], r12
	mov	r14, qword ptr [r15]
	test	r14, r14
	cmove	r14, rbp
	mov	rdi, r12
	mov	r12, qword ptr [rdi + 0x48]
	mov	rbx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rdi + 0xb8], r13
	mov	qword ptr [rdi + 0x48], r14
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	call	re_string_context_at
	cmp	r14, rbp
	jne	.label_2793
	mov	dword ptr [rsp + 0x60], eax
	mov	rbp, r14
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_611]]
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_2798
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x30], r15
	mov	rcx, qword ptr [rsp + 0x68]
	mov	qword ptr [rax], rcx
	mov	dword ptr [rsp + 0x8c], 0
	lea	rsi, [rsp + 0x70]
	mov	r15, qword ptr [rsp + 0x58]
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	mov	ecx, dword ptr [rsp + 0xf0]
	call	check_arrival_expand_ecl
	mov	r14d, eax
	mov	dword ptr [rsp + 0x8c], r14d
	test	r14d, r14d
	jne	.label_2808
	mov	qword ptr [rsp + 0x20], r12
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r13, qword ptr [rsp + 0x50]
	mov	r8, rbp
	jmp	.label_2811
.label_2793:
	mov	rbp, qword ptr [r13 + r14*8]
	mov	rcx, r14
	test	rbp, rbp
	je	.label_2813
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 0x30], r15
	test	byte ptr [rbp + 0x68], 0x40
	jne	.label_2788
	mov	dword ptr [rsp + 0x60], eax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	xor	ebx, ebx
	mov	r13, qword ptr [rsp + 0x50]
	mov	r15, qword ptr [rsp + 0x58]
	mov	r8, rcx
	jmp	.label_2809
.label_2813:
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 0x30], r15
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x50]
	mov	r8, rcx
	jmp	.label_2791
.label_2788:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	qword ptr [rsp + 0x78], rbx
	mov	r14, qword ptr [rbp + 0x10]
	test	r14, r14
	mov	r15, qword ptr [rsp + 0x58]
	mov	r8, rcx
	jle	.label_2807
	mov	r12, r8
	mov	dword ptr [rsp + 0x60], eax
	mov	qword ptr [rsp + 0x70], rbx
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_2798
	mov	rsi, qword ptr [rbp + 0x18]
	shl	r14, 3
	mov	rdi, rax
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0x8c], 0
	mov	r13, qword ptr [rsp + 0x50]
	mov	r8, r12
	jmp	.label_2809
.label_2804:
	movabs	rsi, 0x7fffffffffffffff
	sub	rsi, rbx
	mov	r14d, 0xc
	cmp	rsi, rcx
	jle	.label_2789
	mov	qword ptr [rsp + 0x18], r8
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rcx, [rax + rcx + 1]
	lea	rsi, [rcx + rbx]
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_2789
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x68], rdx
	mov	r12, rdi
	mov	rdi, qword ptr [r15 + 0x10]
	mov	qword ptr [rsp + 0x38], rsi
	lea	rsi, [rsi*8]
	call	realloc
	mov	r13, rax
	test	r13, r13
	je	.label_2789
	mov	qword ptr [r15 + 0x10], r13
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r15 + 8], rax
	lea	rdi, [r13 + rbx*8]
	mov	rdx, qword ptr [rsp + 0x60]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	jmp	.label_2797
.label_2807:
	mov	dword ptr [rsp + 0x60], eax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	xor	ebx, ebx
	mov	dword ptr [rsp + 0x8c], 0
	mov	r13, qword ptr [rsp + 0x50]
.label_2809:
	test	byte ptr [rbp + 0x68], 0x40
	je	.label_2791
.label_2811:
	test	rbx, rbx
	mov	rcx, qword ptr [rsp + 0x40]
	je	.label_2803
	lea	rsi, [rsp + 0x70]
	mov	rdi, r13
	mov	rdx, r8
	mov	rbx, r8
	mov	r8d, dword ptr [rsp + 0xf0]
	call	expand_bkref_cache
	mov	r8, rbx
	mov	r14d, eax
	mov	dword ptr [rsp + 0x8c], r14d
	test	r14d, r14d
	jne	.label_2808
.label_2803:
	mov	rbx, r8
	lea	rdi, [rsp + 0x8c]
	lea	rdx, [rsp + 0x70]
	mov	rsi, r15
	mov	ecx, dword ptr [rsp + 0x60]
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_2814
	mov	eax, dword ptr [rsp + 0x8c]
	test	eax, eax
	jne	.label_2785
.label_2814:
	mov	rax, qword ptr [r13 + 0xb8]
	mov	r8, rbx
	mov	qword ptr [rax + r8*8], rbp
.label_2791:
	mov	r15, qword ptr [rsp + 0x48]
	cmp	r8, r15
	jge	.label_2820
	lea	rbx, [rsp + 0x70]
	xor	ecx, ecx
.label_2816:
	mov	qword ptr [rsp + 0x68], r8
	mov	qword ptr [rsp + 0x60], rbp
	movsxd	rax, dword ptr [r13 + 0xe0]
	cmp	rcx, rax
	jg	.label_2796
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x78], 0
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsi, qword ptr [rax + r8*8 + 8]
	test	rsi, rsi
	mov	r15, rbx
	je	.label_2792
	add	rsi, 8
	mov	rdi, r15
	mov	rbx, r8
	call	re_node_set_merge
	mov	r8, rbx
	mov	dword ptr [rsp + 0x8c], eax
	test	eax, eax
	jne	.label_2785
.label_2792:
	test	rbp, rbp
	je	.label_2800
	mov	rbx, qword ptr [r13 + 0x98]
	mov	dword ptr [rsp + 0xb4], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	mov	qword ptr [rsp + 0xa0], 0
	cmp	qword ptr [rbp + 0x28], 0
	mov	edi, 0
	jle	.label_2802
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_2819:
	mov	rax, qword ptr [rbp + 0x30]
	mov	r15, qword ptr [rax + r12*8]
	mov	rsi, qword ptr [rbx]
	mov	rbp, r15
	shl	rbp, 4
	test	byte ptr [rsi + rbp + 0xa], 0x10
	je	.label_2812
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r13
	mov	rcx, r8
	mov	r14, r8
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_2817
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rdx, r14
	mov	r14, rbx
	mov	rcx, qword ptr [rcx + r15*8]
	movsxd	rbp, eax
	add	rbp, rdx
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	qword ptr [rsp + 0x98], 0
	test	rsi, rsi
	lea	r13, [rsp + 0x90]
	je	.label_2818
	add	rsi, 8
	mov	rdi, r13
	mov	rbx, rcx
	call	re_node_set_merge
	mov	rcx, rbx
	mov	ebx, eax
	mov	dword ptr [rsp + 0xb4], ebx
	test	ebx, ebx
	jne	.label_2795
.label_2818:
	mov	rdi, r13
	mov	rsi, rcx
	call	re_node_set_insert
	test	al, al
	je	.label_2794
	lea	rdi, [rsp + 0xb4]
	mov	rsi, r14
	mov	rdx, r13
	call	re_acquire_state
	mov	r13, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	qword ptr [rcx + rbp*8], rax
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	qword ptr [rax + rbp*8], 0
	jne	.label_2805
	mov	ebx, dword ptr [rsp + 0xb4]
	test	ebx, ebx
	je	.label_2805
	jmp	.label_2795
	nop	dword ptr [rax]
.label_2817:
	mov	r14, rbx
	test	eax, eax
	jne	.label_2805
	mov	rsi, qword ptr [r14]
	mov	r8, qword ptr [rsp + 0x68]
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_2812:
	mov	r14, rbx
	add	rsi, rbp
	mov	rdi, r13
	mov	rdx, r8
	call	check_node_accept
	test	al, al
	je	.label_2815
.label_2805:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	lea	rdi, [rsp + 0x70]
	call	re_node_set_insert
	test	al, al
	je	.label_2794
.label_2815:
	inc	r12
	mov	rbp, qword ptr [rsp + 0x60]
	cmp	r12, qword ptr [rbp + 0x28]
	mov	r8, qword ptr [rsp + 0x68]
	mov	rbx, r14
	jl	.label_2819
	mov	rdi, qword ptr [rsp + 0xa0]
	lea	r15, [rsp + 0x70]
.label_2802:
	mov	rbx, r8
	call	free
	mov	r8, rbx
	mov	dword ptr [rsp + 0x8c], 0
.label_2800:
	lea	r14, [r8 + 1]
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_2787
	mov	r12, r8
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsi, r15
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, rbx
	mov	ebp, dword ptr [rsp + 0xf0]
	mov	ecx, ebp
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 0x8c], eax
	test	eax, eax
	jne	.label_2785
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbx
	mov	r8d, ebp
	call	expand_bkref_cache
	mov	dword ptr [rsp + 0x8c], eax
	test	eax, eax
	mov	r8, r12
	jne	.label_2785
.label_2787:
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	mov	rsi, r8
	mov	r12, r8
	call	re_string_context_at
	lea	rdi, [rsp + 0x8c]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, r15
	mov	rbx, r15
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_2801
	mov	eax, dword ptr [rsp + 0x8c]
	test	eax, eax
	jne	.label_2785
.label_2801:
	mov	rcx, qword ptr [rsp + 0x38]
	inc	rcx
	test	rbp, rbp
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rax + r12*8 + 8], rbp
	mov	eax, 0
	cmovne	rcx, rax
	mov	r15, qword ptr [rsp + 0x48]
	cmp	r14, r15
	mov	r8, r14
	jl	.label_2816
	jmp	.label_2786
.label_2820:
	mov	r14, r8
.label_2786:
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rcx, qword ptr [rax + r15*8]
	lea	rax, [rcx + 8]
	test	rcx, rcx
	cmove	rax, rcx
	mov	rcx, qword ptr [rsp + 0x30]
	mov	qword ptr [rcx], r14
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [r13 + 0xb8], rcx
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [r13 + 0x48], rcx
	je	.label_2790
	mov	rcx, qword ptr [rax + 8]
	test	rcx, rcx
	jle	.label_2790
	xor	r14d, r14d
	dec	rcx
	mov	rax, qword ptr [rax + 0x10]
	je	.label_2799
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x18]
.label_2810:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_2810
	jmp	.label_2806
.label_2794:
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
	mov	ebx, 0xc
	mov	dword ptr [rsp + 0x8c], ebx
	jmp	.label_2785
.label_2795:
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
	mov	dword ptr [rsp + 0x8c], ebx
.label_2785:
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	mov	r14d, dword ptr [rsp + 0x8c]
	jmp	.label_2789
.label_2799:
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x18]
.label_2806:
	cmp	rdx, -1
	je	.label_2790
	cmp	qword ptr [rax + rdx*8], rbp
	je	.label_2789
.label_2790:
	mov	r14d, 1
.label_2789:
	mov	eax, r14d
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2808:
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	jmp	.label_2789
.label_2798:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	dword ptr [rsp + 0x8c], 0xc
	mov	r14d, 0xc
	jmp	.label_2789
.label_2796:
	mov	r14, r8
	jmp	.label_2786
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41db40

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15d, ecx
	mov	r13, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	r12, qword ptr [r14 + 8]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [r12*8]
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_2823
	test	r12, r12
	jle	.label_2826
	xor	r12d, r12d
	jmp	.label_2824
	nop	dword ptr [rax]
.label_2827:
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	jl	.label_2824
	jmp	.label_2826
	nop	
.label_2828:
	cmp	rbp, -1
	je	.label_2822
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_2829
	nop	dword ptr [rax]
.label_2824:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	r8, qword ptr [rax + 0x30]
	lea	r9, [rdx + rdx*2]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_2822
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	
.label_2825:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	esi, byte ptr [rbx + rcx + 8]
	cmp	esi, r15d
	jne	.label_2821
	cmp	qword ptr [rbx + rcx], r13
	je	.label_2828
.label_2821:
	inc	rax
	cmp	rax, r10
	jl	.label_2825
.label_2822:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_2829:
	mov	ebx, eax
	test	ebx, ebx
	je	.label_2827
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_2823
.label_2826:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	xor	ebx, ebx
.label_2823:
	mov	eax, ebx
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
	#Procedure 0x41dc80

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r15, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x28], r14
	mov	r10, rdi
	mov	qword ptr [rsp + 0x30], r10
	mov	rax, qword ptr [r10 + 0x98]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9, qword ptr [r10 + 0xc8]
	xor	eax, eax
	test	r9, r9
	mov	edx, 0
	jle	.label_2830
	mov	rsi, qword ptr [r10 + 0xd8]
	xor	edx, edx
	mov	rdi, r9
	nop	dword ptr [rax]
.label_2856:
	lea	rbp, [rdi + rdx]
	mov	rbx, rbp
	shr	rbx, 0x3f
	add	rbx, rbp
	sar	rbx, 1
	lea	rbp, [rbx + rbx*4]
	cmp	qword ptr [rsi + rbp*8 + 8], r15
	cmovge	rdi, rbx
	lea	rbp, [rbx + 1]
	cmovl	rdx, rbp
	cmp	rdx, rdi
	jl	.label_2856
.label_2830:
	cmp	rdx, r9
	jge	.label_2834
	cmp	rdx, -1
	je	.label_2834
	mov	qword ptr [rsp + 0x10], rcx
	mov	dword ptr [rsp + 0x1c], r8d
	mov	rcx, qword ptr [r10 + 0xd8]
	lea	rdx, [rdx + rdx*4]
	mov	qword ptr [rsp + 8], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	jne	.label_2834
	mov	dword ptr [rsp + 0x24], eax
	jmp	.label_2847
.label_2860:
	mov	rcx, qword ptr [r10 + 0xd8]
.label_2847:
	mov	rax, qword ptr [rsp + 8]
	lea	r13, [rcx + rax*8]
	nop	dword ptr [rax]
.label_2831:
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	jle	.label_2833
	mov	rdx, qword ptr [r13]
	dec	rcx
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, rcx
	mov	esi, 0
	je	.label_2854
	nop	word ptr cs:[rax + rax]
.label_2858:
	lea	rbp, [rsi + rdi]
	shr	rbp, 1
	cmp	qword ptr [rax + rbp*8], rdx
	lea	rbx, [rbp + 1]
	cmovl	rsi, rbx
	cmovge	rdi, rbp
	cmp	rsi, rdi
	jb	.label_2858
.label_2854:
	cmp	rsi, -1
	je	.label_2833
	cmp	qword ptr [rax + rsi*8], rdx
	jne	.label_2833
	mov	r12, qword ptr [r13 + 0x18]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	cmp	r12, r15
	jne	.label_2845
	test	rcx, rcx
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rdx, qword ptr [rsi + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	mov	edx, 0
	je	.label_2859
	nop	
.label_2855:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbx
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_2855
.label_2859:
	cmp	rdx, -1
	je	.label_2835
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], rbx
	jne	.label_2835
	mov	rbp, r14
	jmp	.label_2840
.label_2845:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [r10 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	test	rbx, rbx
	je	.label_2841
	mov	rdi, qword ptr [rbx + 0x10]
	test	rdi, rdi
	jle	.label_2849
	mov	rcx, rdi
	dec	rcx
	mov	rax, qword ptr [rbx + 0x18]
	mov	edx, 0
	je	.label_2851
	nop	dword ptr [rax + rax]
.label_2850:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r14
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_2850
.label_2851:
	cmp	rdx, -1
	je	.label_2849
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_2832
.label_2849:
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, qword ptr [rbx + 0x10]
	test	rbp, rbp
	jle	.label_2838
	mov	qword ptr [rsp + 0x40], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_2846
	mov	rsi, qword ptr [rbx + 0x18]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	jmp	.label_2852
.label_2835:
	mov	qword ptr [rsp + 0x30], r10
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_611]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_2843
	mov	qword ptr [rax], rbx
	xor	eax, eax
.label_2853:
	mov	dword ptr [rsp + 0x20], eax
	mov	dword ptr [rsp + 0x64], eax
	mov	rdi, qword ptr [rsp + 0x38]
	lea	r12, [rsp + 0x40]
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x10]
	mov	ecx, dword ptr [rsp + 0x1c]
	call	check_arrival_expand_ecl
	mov	ebx, eax
	mov	rdi, r14
	mov	rbp, r14
	mov	rsi, r12
	call	re_node_set_merge
	mov	r14d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	edx, dword ptr [rsp + 0x20]
	mov	eax, ebx
	or	eax, edx
	mov	ecx, 2
	or	eax, r14d
	mov	r10, qword ptr [rsp + 0x30]
	jne	.label_2842
.label_2857:
	mov	r14, rbp
	jmp	.label_2840
.label_2841:
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_611]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_2861
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 0x64], 0
	jmp	.label_2837
.label_2838:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	qword ptr [rsp + 0x50], 0
.label_2852:
	xor	ebx, ebx
.label_2836:
	mov	dword ptr [rsp + 0x64], ebx
	lea	rdi, [rsp + 0x40]
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	jne	.label_2848
	xor	al, 1
	jne	.label_2848
.label_2837:
	lea	rdi, [rsp + 0x64]
	mov	rsi, qword ptr [rsp + 0x38]
	lea	rdx, [rsp + 0x40]
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	r10, rbx
	mov	rax, qword ptr [r10 + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	sete	al
	mov	edx, dword ptr [rsp + 0x64]
	test	edx, edx
	setne	cl
	and	cl, al
	movzx	ecx, cl
	mov	eax, dword ptr [rsp + 0x24]
	cmovne	eax, edx
	mov	dword ptr [rsp + 0x24], eax
.label_2832:
	mov	r14, qword ptr [rsp + 0x28]
.label_2840:
	test	ecx, ecx
	je	.label_2833
	cmp	ecx, 4
	jne	.label_2844
	nop	dword ptr [rax + rax]
.label_2833:
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	jne	.label_2831
	jmp	.label_2834
.label_2843:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	eax, 0xc
	jmp	.label_2853
.label_2842:
	test	ebx, ebx
	cmovne	r14d, ebx
	test	edx, edx
	cmovne	r14d, edx
	mov	dword ptr [rsp + 0x64], r14d
	mov	ecx, 1
	mov	dword ptr [rsp + 0x24], r14d
	jmp	.label_2857
.label_2848:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	ebx, ebx
	mov	eax, 0xc
	cmove	ebx, eax
	mov	dword ptr [rsp + 0x64], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0x24], ebx
	jmp	.label_2839
.label_2861:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x64], 0xc
	mov	dword ptr [rsp + 0x24], 0xc
	mov	ecx, 1
.label_2839:
	mov	r14, qword ptr [rsp + 0x28]
	mov	r10, qword ptr [rsp + 0x30]
	jmp	.label_2840
.label_2846:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	ebx, 0xc
	jmp	.label_2836
.label_2844:
	cmp	ecx, 2
	je	.label_2860
	mov	eax, dword ptr [rsp + 0x24]
.label_2834:
	add	rsp, 0x68
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
	#Procedure 0x41e110

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, r8d
	mov	r14, rcx
	mov	rbp, rdx
	mov	rbx, rsi
	mov	r12, rdi
	jmp	.label_2868
	nop	dword ptr [rax]
.label_2863:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, qword ptr [rax]
.label_2868:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_2869
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	je	.label_2862
	nop	
.label_2866:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_2866
.label_2862:
	cmp	rdx, -1
	je	.label_2869
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_2865
.label_2869:
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_2871
	cmp	qword ptr [rax + rcx], r14
	je	.label_2867
.label_2871:
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_2864
	mov	rax, qword ptr [r12 + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_2870
	test	rcx, rcx
	jne	.label_2863
	jmp	.label_2865
	nop	dword ptr [rax]
.label_2870:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	jne	.label_2864
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_2863
.label_2867:
	cmp	r15d, 9
	jne	.label_2865
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_2864
.label_2865:
	xor	eax, eax
.label_2864:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41e220

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	r14, rdi
	mov	r8, qword ptr [r12 + 8]
	test	r8, r8
	je	.label_2886
	mov	r15, r8
	jle	.label_2880
	mov	rcx, qword ptr [r12 + 0x10]
	xor	eax, eax
	cmp	r8, 4
	mov	r15, r8
	jb	.label_2885
	xor	eax, eax
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	mov	r15, r8
	je	.label_2885
	movq	xmm0, r8
	lea	rbx, [r8 - 4]
	mov	eax, ebx
	shr	eax, 2
	inc	eax
	xor	edi, edi
	test	al, 3
	je	.label_2893
	lea	ebp, [r8 - 4]
	shr	ebp, 2
	inc	ebp
	and	ebp, 3
	neg	rbp
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	dword ptr [rax]
.label_2884:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 4
	inc	rbp
	jne	.label_2884
	jmp	.label_2882
.label_2893:
	pxor	xmm1, xmm1
.label_2882:
	cmp	rbx, 0xc
	jb	.label_2873
	mov	rax, r8
	and	rax, 0xfffffffffffffffc
	sub	rax, rdi
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	word ptr [rax + rax]
.label_2888:
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	paddq	xmm4, xmm2
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	movdqu	xmm1, xmmword ptr [rdi]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x80
	add	rax, -0x10
	jne	.label_2888
.label_2873:
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	paddq	xmm0, xmm1
	movq	r15, xmm0
	cmp	r8, rdx
	mov	rax, rdx
	je	.label_2880
.label_2885:
	mov	rdx, r8
	sub	rdx, rax
	lea	rcx, [rcx + rax*8]
	nop	dword ptr [rax + rax]
.label_2889:
	add	r15, qword ptr [rcx]
	add	rcx, 8
	dec	rdx
	jne	.label_2889
.label_2880:
	mov	rdx, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	and	rcx, r15
	lea	rax, [rcx + rcx*2]
	mov	rcx, qword ptr [rdx + rax*8]
	test	rcx, rcx
	jle	.label_2891
	mov	rdx, qword ptr [rdx + rax*8 + 0x10]
	xor	ebx, ebx
	nop	
.label_2890:
	test	r12, r12
	je	.label_2874
	mov	r13, qword ptr [rdx + rbx*8]
	cmp	r15, qword ptr [r13]
	jne	.label_2874
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_2874
	mov	rdi, r8
	nop	dword ptr [rax + rax]
.label_2881:
	test	rdi, rdi
	jle	.label_2877
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	mov	rax, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rax + rdi*8 - 8]
	lea	rdi, [rdi - 1]
	je	.label_2881
	nop	word ptr cs:[rax + rax]
.label_2874:
	inc	rbx
	cmp	rbx, rcx
	jl	.label_2890
.label_2891:
	mov	qword ptr [rsp + 0x10], rsi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_2879
	mov	rbp, r13
	add	rbp, 8
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	rbx, qword ptr [r12 + 8]
	test	rbx, rbx
	jle	.label_2872
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_2878
	mov	qword ptr [rsp + 8], r14
	lea	r14, [r12 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	qword ptr [r13 + 0x50], rbp
	mov	rdi, qword ptr [rsp + 0x10]
	jmp	.label_2887
.label_2872:
	mov	qword ptr [rsp + 8], r14
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rbp
	mov	rdi, qword ptr [rsp + 0x10]
	jle	.label_2895
	lea	r14, [r12 + 0x10]
.label_2887:
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_2875:
	mov	r8, qword ptr [rdi]
	mov	rcx, qword ptr [r14]
	mov	rdx, qword ptr [rcx + rax*8]
	shl	rdx, 4
	mov	ebp, dword ptr [r8 + rdx + 8]
	mov	ecx, ebp
	and	ecx, 0x3ffff
	cmp	ecx, 1
	je	.label_2876
	movzx	esi, bpl
	shr	ebp, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	cl, bl
	shr	cl, 5
	movzx	ecx, cl
	or	ecx, ebp
	shl	cl, 5
	and	cl, 0x20
	and	bl, 0xdf
	or	bl, cl
	mov	byte ptr [r13 + 0x68], bl
	cmp	esi, 0xc
	je	.label_2883
	cmp	esi, 4
	je	.label_2896
	cmp	esi, 2
	jne	.label_2892
	or	bl, 0x10
	jmp	.label_2894
.label_2896:
	or	bl, 0x40
	jmp	.label_2894
.label_2892:
	lea	rcx, [r8 + rdx + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_2876
.label_2883:
	or	bl, 0x80
.label_2894:
	mov	byte ptr [r13 + 0x68], bl
.label_2876:
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_2875
.label_2895:
	mov	rsi, r13
	mov	rdx, r15
	call	register_state
	test	eax, eax
	je	.label_2877
	mov	rdi, r13
	call	free_state
	mov	r14, qword ptr [rsp + 8]
	jmp	.label_2879
.label_2886:
	mov	dword ptr [r14], 0
	jmp	.label_2897
.label_2878:
	mov	rdi, r13
	call	free
.label_2879:
	mov	dword ptr [r14], 0xc
.label_2897:
	xor	r13d, r13d
.label_2877:
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
	#Procedure 0x41e570

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r9, qword ptr [rdi]
	shl	rsi, 4
	movzx	r10d, byte ptr [r9 + rsi + 8]
	cmp	r10d, 7
	je	.label_2922
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	cmp	r8d, 1
	je	.label_2903
	lea	rax, [rcx + 1]
	mov	r11, qword ptr [rdx + 0x30]
	cmp	rax, r11
	jge	.label_2903
	lea	rax, [rcx*4]
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_2912:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_2903
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	jl	.label_2912
.label_2903:
	cmp	r10d, 5
	jne	.label_2915
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_2901
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_2917
	mov	rsi, qword ptr [rdx + 8]
	movzx	esi, byte ptr [rsi + rcx]
	cmp	esi, 0xa
	je	.label_2901
.label_2917:
	test	al, al
	js	.label_2899
	mov	r14d, ebx
	jmp	.label_2901
.label_2915:
	cmp	ebx, 1
	setg	al
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_2901
	test	al, al
	je	.label_2901
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	test	rsi, rsi
	jne	.label_2907
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_2907
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2909
.label_2907:
	cmp	r8d, 1
	jne	.label_2913
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	jmp	.label_2909
.label_2913:
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_2909:
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_2920
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2900:
	cmp	r12d, dword ptr [rcx + rdx*4]
	je	.label_2898
	inc	rdx
	cmp	rdx, rax
	jl	.label_2900
.label_2920:
	cmp	qword ptr [r15 + 0x48], 0
	jle	.label_2902
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_2908:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	edi, r12d
	call	iswctype
	test	eax, eax
	jne	.label_2898
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_2908
	mov	rsi, qword ptr [r15 + 0x40]
.label_2902:
	xor	ecx, ecx
	test	rsi, rsi
	jle	.label_2910
	mov	rax, qword ptr [r15 + 8]
	xor	edx, edx
	nop	
.label_2918:
	cmp	dword ptr [rax + rdx*4], r12d
	jg	.label_2919
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	r12d, dword ptr [rcx + rdx*4]
	jle	.label_2916
.label_2919:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_2918
	jmp	.label_2910
.label_2898:
	mov	ecx, ebx
.label_2910:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_2921
	mov	r14d, ecx
	jmp	.label_2901
.label_2921:
	test	ecx, ecx
	jg	.label_2901
	test	ebx, ebx
	mov	r14d, 1
	cmovg	r14d, ebx
	jmp	.label_2901
.label_2899:
	mov	rax, qword ptr [rdx + 8]
	cmp	byte ptr [rax + rcx], 0
	je	.label_2901
	mov	r14d, ebx
	jmp	.label_2901
.label_2922:
	mov	rax, qword ptr [rdx + 8]
	movzx	esi, byte ptr [rax + rcx]
	xor	r14d, r14d
	cmp	esi, 0xc2
	jae	.label_2906
.label_2901:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2916:
	mov	ecx, ebx
	jmp	.label_2910
.label_2906:
	lea	rdi, [rcx + 2]
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rdi, rdx
	jg	.label_2901
	mov	bl, byte ptr [rcx + rax + 1]
	movzx	edi, sil
	cmp	edi, 0xdf
	ja	.label_2914
	movzx	eax, bl
	cmp	eax, 0xc0
	sbb	eax, eax
	and	eax, 2
	xor	r14d, r14d
	test	bl, bl
	cmovs	r14d, eax
	jmp	.label_2901
.label_2914:
	cmp	edi, 0xef
	ja	.label_2923
	mov	esi, 3
	cmp	edi, 0xe0
	jne	.label_2904
	movzx	edi, bl
	cmp	edi, 0xa0
	jb	.label_2901
	jmp	.label_2904
.label_2923:
	cmp	edi, 0xf7
	ja	.label_2905
	mov	esi, 4
	cmp	edi, 0xf0
	jne	.label_2904
	movzx	edi, bl
	cmp	edi, 0x90
	jb	.label_2901
	jmp	.label_2904
.label_2905:
	cmp	edi, 0xfb
	ja	.label_2911
	mov	esi, 5
	cmp	edi, 0xf8
	jne	.label_2904
	movzx	edi, bl
	cmp	edi, 0x88
	jb	.label_2901
	jmp	.label_2904
.label_2911:
	cmp	edi, 0xfd
	ja	.label_2901
	mov	esi, 6
	cmp	edi, 0xfc
	jne	.label_2904
	movzx	edi, bl
	cmp	edi, 0x84
	jb	.label_2901
.label_2904:
	mov	edi, esi
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	jg	.label_2901
	add	rax, rcx
	mov	ecx, 1
.label_2924:
	mov	dl, byte ptr [rax + rcx]
	test	dl, dl
	jns	.label_2901
	movzx	edx, dl
	cmp	edx, 0xbf
	ja	.label_2901
	inc	rcx
	cmp	rcx, rdi
	jl	.label_2924
	mov	r14d, esi
	jmp	.label_2901
	nop	
	.section	.text
	.align	32
	#Procedure 0x41e850

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	push	rbx
	push	rax
	mov	rax, qword ptr [rdi + 8]
	movzx	ecx, byte ptr [rax + rdx]
	mov	ebx, dword ptr [rsi + 8]
	movzx	ebp, bl
	xor	eax, eax
	dec	ebp
	cmp	ebp, 6
	ja	.label_2925
	jmp	qword ptr [word ptr [+ (rbp * 8) + label_2932]]
.label_3508:
	movzx	eax, byte ptr [rsi]
	cmp	eax, ecx
	je	.label_2928
	xor	eax, eax
	jmp	.label_2925
.label_3509:
	mov	rsi, qword ptr [rsi]
	mov	al, cl
	shr	al, 6
	movzx	eax, al
	mov	rax, qword ptr [rsi + rax*8]
	bt	rax, rcx
	jb	.label_2928
	xor	eax, eax
	jmp	.label_2925
.label_3511:
	test	cl, cl
	js	.label_2930
.label_3510:
	test	cl, cl
	je	.label_2931
	movzx	eax, cl
	cmp	eax, 0xa
	jne	.label_2928
	mov	rax, qword ptr [rdi + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_2928
	xor	eax, eax
	jmp	.label_2925
.label_2931:
	mov	rax, qword ptr [rdi + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_2926
.label_2928:
	mov	ebp, ebx
	shr	ebp, 8
	mov	al, 1
	test	bp, 0x3ff
	je	.label_2925
	mov	eax, dword ptr [rdi + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_2933
	test	ecx, ecx
	jne	.label_2933
	xor	eax, eax
	jmp	.label_2925
.label_2933:
	test	bh, 8
	je	.label_2927
	test	ecx, ecx
	je	.label_2927
	xor	eax, eax
	jmp	.label_2925
.label_2930:
	xor	eax, eax
	jmp	.label_2925
.label_2927:
	test	bh, 0x20
	je	.label_2929
	mov	ecx, eax
	and	ecx, 2
	jne	.label_2929
	xor	eax, eax
	jmp	.label_2925
.label_2926:
	xor	eax, eax
	jmp	.label_2925
.label_2929:
	and	eax, 8
	test	bpl, bpl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_2925:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41e940

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	mov	r13, rsi
	mov	qword ptr [rbp - 0xb8], r13
	mov	r12, rdi
	mov	qword ptr [rbp - 0xd8], r12
	mov	edi, 0x3800
	call	malloc
	mov	rsi, rax
	mov	qword ptr [rbp - 0xc0], rsi
	test	rsi, rsi
	je	.label_3005
	lea	rax, [r13 + 0x58]
	mov	qword ptr [rbp - 0xe8], rax
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13 + 0x58], xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	xor	r14d, r14d
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_2970
	lea	rax, [rsi + 0x1800]
	mov	qword ptr [rbp - 0xc8], rax
	xor	ebx, ebx
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_2966:
	mov	qword ptr [rbp - 0x98], rbx
	mov	rax, qword ptr [r13 + 0x18]
	mov	rax, qword ptr [rax + rbx*8]
	mov	rcx, qword ptr [r12]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	mov	qword ptr [rbp - 0xa0], rdx
	mov	eax, dword ptr [rcx + rax + 8]
	movzx	r10d, al
	cmp	r10d, 1
	jne	.label_3029
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	cl, byte ptr [rcx]
	mov	edx, 1
	shl	rdx, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x50], rdx
	jmp	.label_2934
	nop	word ptr cs:[rax + rax]
.label_3029:
	cmp	r10d, 7
	je	.label_2944
	cmp	r10d, 5
	je	.label_2947
	cmp	r10d, 3
	jne	.label_2948
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rcx]
	movups	xmm0, xmmword ptr [rcx]
	orps	xmm0, xmmword ptr [rbp - 0x50]
	movaps	xmmword ptr [rbp - 0x50], xmm0
	movdqu	xmm0, xmmword ptr [rcx + 0x10]
	por	xmm0, xmmword ptr [rbp - 0x40]
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	jmp	.label_2934
.label_2944:
	mov	qword ptr [rbp - 0x48], -1
	mov	qword ptr [rbp - 0x50], -1
	mov	rcx, qword ptr [r12 + 0xd8]
	mov	rdx, -2
	test	cl, 0x40
	jne	.label_2958
	mov	qword ptr [rbp - 0x50], -0x401
	mov	rdx, -0x402
.label_2958:
	test	cl, cl
	jns	.label_2934
	mov	qword ptr [rbp - 0x50], rdx
	jmp	.label_2934
.label_2947:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_2945
	mov	rcx, qword ptr [r12 + 0x78]
	movdqu	xmm0, xmmword ptr [rcx]
	por	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	por	xmm1, xmmword ptr [rbp - 0x40]
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	movq	rcx, xmm0
	jmp	.label_2982
.label_2945:
	mov	qword ptr [rbp - 0x38], -1
	mov	qword ptr [rbp - 0x40], -1
	mov	qword ptr [rbp - 0x48], -1
	mov	qword ptr [rbp - 0x50], -1
	mov	rcx, -1
.label_2982:
	mov	rdx, qword ptr [r12 + 0xd8]
	test	dl, 0x40
	jne	.label_2994
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x50], rcx
.label_2994:
	test	dl, dl
	jns	.label_2934
	and	rcx, 0xfffffffffffffffe
	mov	qword ptr [rbp - 0x50], rcx
	nop	word ptr cs:[rax + rax]
.label_2934:
	mov	ecx, eax
	shr	ecx, 8
	mov	edx, ecx
	and	edx, 0x3ff
	je	.label_2963
	test	cl, 0x20
	je	.label_3032
	mov	rdx, qword ptr [rbp - 0x50]
	test	dh, 4
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	je	.label_2948
	mov	qword ptr [rbp - 0x50], 0x400
.label_3032:
	test	cl, cl
	js	.label_3006
	test	cl, 4
	je	.label_3010
	mov	edx, eax
	and	edx, 0x4000ff
	cmp	edx, 1
	je	.label_3006
	cmp	dword ptr [r12 + 0xb4], 1
	jle	.label_3016
	mov	rdx, qword ptr [r12 + 0x78]
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	movdqu	xmm1, xmmword ptr [rdx]
	pcmpeqd	xmm2, xmm2
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	r8, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	r9, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	movdqu	xmm1, xmmword ptr [rdx + 0x10]
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x40]
	mov	rdi, rbx
	movq	rbx, xmm1
	or	rbx, r8
	or	rbx, r9
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rdx, xmm0
	or	rdx, rbx
	mov	rbx, rdi
	jmp	.label_3021
.label_3016:
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	pand	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movq	rdx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	r8, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	pand	xmm0, xmmword ptr [rbp - 0x40]
	movq	rdi, xmm0
	or	rdi, rdx
	or	rdi, r8
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rdx, xmm0
	or	rdx, rdi
.label_3021:
	test	rdx, rdx
	je	.label_2948
.label_3010:
	test	cl, 8
	je	.label_2963
	cmp	r10d, 1
	setne	cl
	test	eax, 0x400000
	je	.label_2967
	test	cl, cl
	jne	.label_2967
	nop	word ptr cs:[rax + rax]
.label_3006:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	jmp	.label_2948
.label_2967:
	cmp	dword ptr [r12 + 0xb4], 1
	jle	.label_2976
	mov	rax, qword ptr [r12 + 0x78]
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	movdqu	xmm1, xmmword ptr [rax]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	rcx, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rdx, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	movdqu	xmm1, xmmword ptr [rax + 0x10]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x40]
	movq	rdi, xmm1
	or	rdi, rcx
	or	rdi, rdx
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rax, xmm0
	or	rax, rdi
	jmp	.label_2960
.label_2976:
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movq	rax, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	pandn	xmm0, xmmword ptr [rbp - 0x40]
	movq	rdx, xmm0
	or	rdx, rax
	or	rdx, rcx
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rax, xmm0
	or	rax, rdx
.label_2960:
	test	rax, rax
	je	.label_2948
	nop	dword ptr [rax]
.label_2963:
	test	r14, r14
	jle	.label_3008
	mov	qword ptr [rbp - 0x80], rsi
	mov	r13, qword ptr [rbp - 0xc8]
	xor	edi, edi
	mov	edx, r10d
	mov	dword ptr [rbp - 0xb0], edx
	nop	
.label_3025:
	cmp	edx, 1
	jne	.label_3017
	mov	rax, qword ptr [rbp - 0xa0]
	movzx	eax, byte ptr [rax]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [r13 + rcx*8]
	bt	rcx, rax
	jae	.label_3009
.label_3017:
	mov	qword ptr [rbp - 0x88], rdi
	mov	qword ptr [rbp - 0x78], r14
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r12, qword ptr [r13]
	mov	r14, qword ptr [r13 + 8]
	mov	r9, r12
	and	r9, rax
	mov	r10, r14
	and	r10, rcx
	mov	rbx, r10
	or	rbx, r9
	mov	rdi, qword ptr [rbp - 0x40]
	mov	r15, qword ptr [r13 + 0x10]
	mov	r11, r15
	and	r11, rdi
	or	rbx, r11
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x90], rdx
	mov	rsi, qword ptr [r13 + 0x18]
	mov	r8, rsi
	and	r8, rdx
	or	rbx, r8
	je	.label_3026
	mov	rbx, rax
	not	rbx
	and	rbx, r12
	not	r12
	and	r12, rax
	mov	qword ptr [rbp - 0xa8], r12
	mov	qword ptr [rbp - 0x50], r12
	mov	rdx, rcx
	not	rdx
	and	rdx, r14
	mov	rax, rdx
	or	rax, rbx
	not	r14
	and	r14, rcx
	mov	qword ptr [rbp - 0x48], r14
	mov	rcx, rdi
	not	rcx
	and	rcx, r15
	or	rax, rcx
	not	r15
	and	r15, rdi
	mov	qword ptr [rbp - 0x40], r15
	mov	r12, qword ptr [rbp - 0x90]
	mov	rdi, r12
	not	rdi
	and	rdi, rsi
	not	rsi
	and	rsi, r12
	mov	qword ptr [rbp - 0x38], rsi
	or	rax, rdi
	mov	r12, rsi
	je	.label_2942
	mov	qword ptr [rbp - 0x90], r12
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rax, rsi
	shl	rax, 5
	mov	r12, qword ptr [rbp - 0xc8]
	mov	qword ptr [r12 + rax], rbx
	mov	qword ptr [r12 + rax + 8], rdx
	mov	qword ptr [r12 + rax + 0x10], rcx
	mov	qword ptr [r12 + rax + 0x18], rdi
	mov	qword ptr [r13], r9
	mov	qword ptr [r13 + 8], r10
	mov	qword ptr [r13 + 0x10], r11
	mov	qword ptr [r13 + 0x18], r8
	lea	r12, [rsi + rsi*2]
	mov	rbx, qword ptr [rbp - 0xc0]
	lea	rcx, [rbx + r12*8]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 8]
	mov	qword ptr [rbx + r12*8 + 8], rdi
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jle	.label_3003
	mov	qword ptr [rbp - 0xd0], rax
	mov	qword ptr [rcx], rdi
	mov	qword ptr [rbp - 0xe0], rcx
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + r12*8 + 0x10], rax
	test	rax, rax
	mov	r12, qword ptr [rbp - 0x90]
	je	.label_2993
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0xd0]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	jmp	.label_3000
	nop	
.label_3026:
	mov	r14, qword ptr [rbp - 0x78]
	mov	rbx, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0xb0]
	jmp	.label_3009
.label_3003:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
	mov	r12, qword ptr [rbp - 0x90]
.label_3000:
	inc	qword ptr [rbp - 0x78]
.label_2942:
	mov	rbx, qword ptr [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [rbp - 0x80]
	call	re_node_set_insert
	test	al, al
	je	.label_3013
	or	r14, qword ptr [rbp - 0xa8]
	or	r15, r12
	or	r15, r14
	mov	r14, qword ptr [rbp - 0x78]
	mov	edx, dword ptr [rbp - 0xb0]
	mov	rdi, qword ptr [rbp - 0x88]
	je	.label_3015
.label_3009:
	inc	rdi
	add	r13, 0x20
	add	qword ptr [rbp - 0x80], 0x18
	cmp	rdi, r14
	jl	.label_3025
	jmp	.label_3015
.label_3008:
	xor	edi, edi
.label_3015:
	cmp	rdi, r14
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	r12, qword ptr [rbp - 0xd8]
	mov	r13, qword ptr [rbp - 0xb8]
	jne	.label_2948
	mov	rax, rdi
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmm1, xmmword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0xc8]
	movdqu	xmmword ptr [rcx + rax + 0x10], xmm1
	movups	xmmword ptr [rcx + rax], xmm0
	mov	r15, rbx
	lea	rbx, [rdi + rdi*2]
	mov	rax, qword ptr [r13 + 0x18]
	mov	r14, qword ptr [rax + r15*8]
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_611]]
	movdqu	xmmword ptr [rsi + rbx*8], xmm0
	mov	r12, rdi
	mov	edi, 8
	call	malloc
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	qword ptr [rsi + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_2949
	mov	qword ptr [rax], r14
	inc	r12
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	mov	r14, r12
	mov	rbx, r15
	mov	r12, qword ptr [rbp - 0xd8]
	nop	word ptr cs:[rax + rax]
.label_2948:
	inc	rbx
	cmp	rbx, qword ptr [r13 + 0x10]
	jl	.label_2966
	test	r14, r14
	jle	.label_2970
	mov	r15, rsi
	lea	rax, [r14 + 1]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x68], 0
	lea	rdi, [r14*8 + 8]
	call	malloc
	mov	qword ptr [rbp - 0x60], rax
	xor	ecx, ecx
	test	rax, rax
	mov	edx, 0xc
	cmovne	edx, ecx
	mov	dword ptr [rbp - 0x54], edx
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r14, rcx
	ja	.label_2979
	test	rax, rax
	je	.label_2979
	lea	rax, [r14*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_2988
	mov	qword ptr [rbp - 0xb8], r13
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xd0], 0
	jmp	.label_2992
.label_2993:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0xe0]
	movdqu	xmmword ptr [rax], xmm0
.label_3013:
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	r12, qword ptr [rbp - 0x78]
.label_2936:
	mov	r14, -1
	test	r12, r12
	jle	.label_2970
	mov	rbx, rsi
	mov	r15, rsi
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_3004:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_3004
	mov	rsi, r15
.label_2970:
	mov	rdi, rsi
	call	free
	test	r14, r14
	je	.label_3007
	xor	eax, eax
	jmp	.label_2986
.label_3007:
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	setne	al
	jmp	.label_2986
.label_3005:
	xor	eax, eax
	jmp	.label_2986
.label_2988:
	call	malloc
	test	rax, rax
	je	.label_2979
	mov	qword ptr [rbp - 0xb8], r13
	mov	cl, 1
	mov	dword ptr [rbp - 0xd0], ecx
.label_2992:
	mov	qword ptr [rbp - 0x80], rax
	lea	rax, [rax + r14*8]
	mov	qword ptr [rbp - 0xa8], rax
	lea	rax, [rax + r14*8]
	mov	qword ptr [rbp - 0xb0], rax
	mov	qword ptr [rbp - 0x78], r14
	xor	edx, edx
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
	xor	esi, esi
	xor	eax, eax
	mov	qword ptr [rbp - 0x88], rax
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rbp - 0xe0], rax
.label_2959:
	mov	qword ptr [rbp - 0xa0], rsi
	mov	qword ptr [rbp - 0x98], rdx
	mov	qword ptr [rbp - 0x68], 0
	lea	rcx, [r14 + r14*2]
	mov	rax, qword ptr [r15 + rcx*8 + 8]
	mov	qword ptr [rbp - 0xc0], r15
	test	rax, rax
	jle	.label_2939
	mov	rdx, qword ptr [rbp - 0xc0]
	lea	rbx, [rdx + rcx*8 + 8]
	mov	r13, qword ptr [rdx + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	
.label_2969:
	mov	rcx, qword ptr [r13 + r15*8]
	mov	rdx, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	je	.label_2954
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	lea	rdi, [rbp - 0x70]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x54], eax
	test	eax, eax
	jne	.label_2964
	mov	rax, qword ptr [rbx]
.label_2954:
	inc	r15
	cmp	r15, rax
	jl	.label_2969
.label_2939:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x54]
	mov	rsi, r12
	lea	rdx, [rbp - 0x70]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx + r14*8], rax
	test	rax, rax
	jne	.label_3028
	mov	ecx, dword ptr [rbp - 0x54]
	test	ecx, ecx
	jne	.label_2964
.label_3028:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_2980
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + r14*8]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + r14*8], rax
	jmp	.label_2984
.label_2980:
	mov	ecx, 1
	lea	rdi, [rbp - 0x54]
	mov	rsi, r12
	lea	rdx, [rbp - 0x70]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx + r14*8], rax
	test	rax, rax
	jne	.label_2991
	mov	ecx, dword ptr [rbp - 0x54]
	test	ecx, ecx
	jne	.label_2964
.label_2991:
	mov	rcx, qword ptr [rbp - 0x80]
	cmp	qword ptr [rcx + r14*8], rax
	je	.label_2995
	cmp	dword ptr [r12 + 0xb4], 1
	mov	al, 1
	jg	.label_2997
	mov	rax, qword ptr [rbp - 0xe0]
.label_2997:
	mov	qword ptr [rbp - 0xe0], rax
.label_2995:
	mov	ecx, 2
	lea	rdi, [rbp - 0x54]
	mov	rsi, r12
	lea	rdx, [rbp - 0x70]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + r14*8], rax
	test	rax, rax
	jne	.label_2984
	mov	eax, dword ptr [rbp - 0x54]
	test	eax, eax
	jne	.label_2964
.label_2984:
	mov	rax, r14
	shl	rax, 5
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rbp - 0x88]
	or	rdx, qword ptr [rcx + rax]
	mov	qword ptr [rbp - 0x88], rdx
	mov	rsi, qword ptr [rbp - 0xa0]
	or	rsi, qword ptr [rcx + rax + 8]
	mov	rdx, qword ptr [rbp - 0x90]
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, qword ptr [rbp - 0x98]
	or	rdx, qword ptr [rcx + rax + 0x18]
	inc	r14
	cmp	r14, qword ptr [rbp - 0x78]
	mov	r15, qword ptr [rbp - 0xc0]
	jl	.label_2959
	mov	r15, rsi
	mov	r13, rdx
	mov	rax, qword ptr [rbp - 0xe0]
	and	al, 1
	mov	qword ptr [rbp - 0xe0], rax
	mov	edi, 8
	jne	.label_3027
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	je	.label_2964
	mov	rcx, qword ptr [rbp - 0x88]
	test	rcx, rcx
	mov	r14, qword ptr [rbp - 0xc0]
	mov	r10, qword ptr [rbp - 0x80]
	je	.label_2937
	lea	r8, [r14 + 0x1800]
	mov	edx, 1
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x88]
	jmp	.label_2975
.label_2946:
	mov	rsi, rbx
	lea	rbx, [rsi + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2946
	test	qword ptr [r12 + 0xb8], rdx
	je	.label_2951
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	jmp	.label_2953
.label_2951:
	mov	rcx, qword ptr [r10 + rsi*8 + 8]
.label_2953:
	mov	qword ptr [rax + r9*8], rcx
	jmp	.label_2956
.label_2975:
	mov	rbx, -1
	test	dil, 1
	mov	rcx, r8
	jne	.label_2946
.label_2956:
	add	rdx, rdx
	shr	rdi, 1
	inc	r9
	test	rdi, rdi
	jne	.label_2975
.label_2937:
	mov	rsi, r15
	test	rsi, rsi
	mov	r15, qword ptr [rbp - 0x78]
	je	.label_2968
	lea	r8, [r14 + 0x1808]
	mov	edx, 1
	mov	r9d, 0x40
	jmp	.label_2971
.label_2974:
	mov	rbx, rdi
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2974
	test	qword ptr [r12 + 0xc0], rdx
	je	.label_2978
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_2965
.label_2978:
	mov	rcx, qword ptr [r10 + rbx*8 + 8]
.label_2965:
	mov	qword ptr [rax + r9*8], rcx
	jmp	.label_2987
.label_2971:
	mov	rdi, -1
	test	sil, 1
	mov	rcx, r8
	jne	.label_2974
.label_2987:
	add	rdx, rdx
	shr	rsi, 1
	inc	r9
	test	rsi, rsi
	jne	.label_2971
.label_2968:
	mov	r9, r10
	mov	r10, qword ptr [rbp - 0x90]
	test	r10, r10
	mov	r11d, dword ptr [rbp - 0xd0]
	je	.label_2990
	lea	r8, [r14 + 0x1810]
	mov	edx, 1
	mov	esi, 0x80
	jmp	.label_2952
.label_2981:
	mov	rbx, rdi
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2981
	test	qword ptr [r12 + 0xc8], rdx
	je	.label_2998
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_2999
.label_2998:
	mov	rcx, qword ptr [r9 + rbx*8 + 8]
.label_2999:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_3002
.label_2952:
	mov	rdi, -1
	test	r10b, 1
	mov	rcx, r8
	jne	.label_2981
.label_3002:
	add	rdx, rdx
	shr	r10, 1
	inc	rsi
	test	r10, r10
	jne	.label_2952
.label_2990:
	test	r13, r13
	je	.label_2973
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	mov	esi, 0xc0
	jmp	.label_2983
.label_3018:
	mov	rbx, rdi
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_3018
	test	qword ptr [r12 + 0xd0], rdx
	je	.label_3014
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_3030
.label_3014:
	mov	rcx, qword ptr [r9 + rbx*8 + 8]
.label_3030:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_3022
.label_2983:
	mov	rdi, -1
	test	r13b, 1
	mov	rcx, r8
	jne	.label_3018
.label_3022:
	add	rdx, rdx
	shr	r13, 1
	inc	rsi
	test	r13, r13
	jne	.label_2983
.label_2973:
	mov	rcx, qword ptr [rbp - 0x88]
	test	ch, 4
	je	.label_2935
	lea	rdx, [r14 + 0x1800]
	xor	ecx, ecx
.label_3024:
	test	byte ptr [rdx + 1], 4
	jne	.label_3031
	inc	rcx
	add	rdx, 0x20
	cmp	rcx, r15
	jl	.label_3024
	jmp	.label_2935
.label_2949:
	lea	rax, [rsi + rbx*8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	jmp	.label_2936
.label_2979:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	jmp	.label_2940
.label_3031:
	mov	rdx, qword ptr [rbp - 0xe0]
	test	dl, dl
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_2935
	mov	qword ptr [rax + 0x850], rcx
.label_2935:
	test	r11b, r11b
	je	.label_2950
	mov	rdi, r9
	call	free
.label_2950:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rbx, r14
	add	rbx, 0x10
.label_2957:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_2957
	mov	rdi, r14
	call	free
	mov	al, 1
	jmp	.label_2986
.label_3027:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx + 0x60], rax
	test	rax, rax
	je	.label_2964
	mov	rcx, qword ptr [rbp - 0x88]
	test	rcx, rcx
	mov	r14, qword ptr [rbp - 0xc0]
	mov	r10, qword ptr [rbp - 0x80]
	je	.label_2972
	lea	r8, [r14 + 0x1800]
	mov	edx, 1
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x88]
	jmp	.label_2977
.label_2964:
	mov	eax, dword ptr [rbp - 0xd0]
	test	al, al
	je	.label_2985
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
.label_2985:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	r14, qword ptr [rbp - 0x78]
	test	r14, r14
	mov	r15, qword ptr [rbp - 0xc0]
	jle	.label_2989
.label_2940:
	mov	rbx, r15
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_2996:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r14
	jne	.label_2996
.label_2989:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_2986:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2961:
	mov	rsi, rbx
	lea	rbx, [rsi + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2961
	mov	rcx, qword ptr [r10 + rsi*8 + 8]
	mov	qword ptr [rax + r9*8], rcx
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	mov	qword ptr [rax + r9*8 + 0x800], rcx
	jmp	.label_3001
.label_2977:
	mov	rbx, -1
	test	dil, 1
	mov	rcx, r8
	jne	.label_2961
.label_3001:
	add	rdx, rdx
	shr	rdi, 1
	inc	r9
	test	rdi, rdi
	jne	.label_2977
.label_2972:
	mov	rsi, r15
	test	rsi, rsi
	mov	r15, qword ptr [rbp - 0x78]
	je	.label_3011
	lea	r8, [r14 + 0x1808]
	mov	edx, 1
	mov	r9d, 0x40
	jmp	.label_3012
.label_3020:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_3020
	mov	rdi, qword ptr [r10 + rcx*8 + 8]
	mov	qword ptr [rax + r9*8], rdi
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + r9*8 + 0x800], rcx
	jmp	.label_3023
.label_3012:
	mov	rbx, -1
	test	sil, 1
	mov	rdi, r8
	jne	.label_3020
.label_3023:
	add	rdx, rdx
	shr	rsi, 1
	inc	r9
	test	rsi, rsi
	jne	.label_3012
.label_3011:
	mov	r9, r10
	mov	rcx, qword ptr [rbp - 0x90]
	test	rcx, rcx
	mov	r11d, dword ptr [rbp - 0xd0]
	je	.label_3033
	lea	r8, [r14 + 0x1810]
	mov	edx, 1
	mov	esi, 0x80
	jmp	.label_2938
.label_2941:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_2941
	mov	rdi, qword ptr [r9 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_2943
.label_2938:
	mov	rbx, -1
	test	cl, 1
	mov	r10, rcx
	mov	rdi, r8
	jne	.label_2941
.label_2943:
	add	rdx, rdx
	mov	rcx, r10
	shr	rcx, 1
	inc	rsi
	test	rcx, rcx
	jne	.label_2938
.label_3033:
	test	r13, r13
	je	.label_2973
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	mov	esi, 0xc0
	jmp	.label_2962
.label_2955:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_2955
	mov	rdi, qword ptr [r9 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_3019
.label_2962:
	mov	rbx, -1
	test	r13b, 1
	mov	rdi, r8
	jne	.label_2955
.label_3019:
	add	rdx, rdx
	shr	r13, 1
	inc	rsi
	test	r13, r13
	je	.label_2973
	jmp	.label_2962
	nop	
	.section	.text
	.align	32
	#Procedure 0x41f8e0

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15 + 0x18]
	mov	rbx, qword ptr [r15 + 0x10]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_611]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	je	.label_3039
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x40]
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_3047
	lea	rax, [r15 + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0xc], 0
	nop	word ptr cs:[rax + rax]
.label_3044:
	mov	rdx, r13
	test	rdx, rdx
	jle	.label_3052
	mov	rdi, qword ptr [r15]
	cmp	qword ptr [rdi + rdx*8], 0
	je	.label_3037
	xor	eax, eax
	jmp	.label_3049
	nop	word ptr [rax + rax]
.label_3037:
	mov	eax, dword ptr [rsp + 0xc]
	inc	eax
.label_3049:
	cmp	eax, dword ptr [r14 + 0xe0]
	jg	.label_3036
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rsp + 0x48], 0
	lea	r13, [rdx - 1]
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rax, qword ptr [rax + rdx*8 - 8]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x18], rdx
	test	rax, rax
	je	.label_3040
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_3040
	mov	rcx, qword ptr [r14 + 0x98]
	mov	qword ptr [rsp + 0x30], rcx
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_3050:
	mov	rax, qword ptr [rax + 0x30]
	mov	r12, qword ptr [rax + rbx*8]
	mov	qword ptr [rsp + 0x38], r12
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	shl	r12, 4
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_3035
	mov	rax, r15
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rsp + 0x20], rcx
	mov	rdx, r14
	mov	r14, rax
	mov	rbp, qword ptr [rdx + 0x98]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	r15, r13
	mov	r13, rdx
	mov	rcx, r15
	call	check_node_accept_bytes
	test	eax, eax
	jle	.label_3048
	movsxd	rcx, eax
	add	rcx, r15
	cmp	rcx, qword ptr [rsp + 0x20]
	jle	.label_3051
	mov	rcx, r14
	mov	r14, r13
	mov	r13, r15
	mov	r15, rcx
	jmp	.label_3045
.label_3048:
	mov	rcx, r14
	mov	r14, r13
	mov	r13, r15
	mov	r15, rcx
	jne	.label_3045
	jmp	.label_3035
.label_3051:
	mov	rsi, r14
	mov	rdx, qword ptr [rsi]
	mov	rdx, qword ptr [rdx + rcx*8]
	test	rdx, rdx
	mov	r14, r13
	mov	r13, r15
	mov	r15, rsi
	je	.label_3035
	mov	rsi, qword ptr [rdx + 0x10]
	test	rsi, rsi
	jle	.label_3035
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_3038
	nop	word ptr cs:[rax + rax]
.label_3046:
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	cmovge	rsi, rbp
	cmp	rdi, rsi
	jb	.label_3046
.label_3038:
	test	eax, eax
	je	.label_3035
	cmp	rdi, -1
	je	.label_3035
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_3045
.label_3035:
	mov	rax, qword ptr [rsp + 0x30]
	add	r12, qword ptr [rax]
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r13
	call	check_node_accept
	test	al, al
	je	.label_3043
	mov	rax, qword ptr [r15]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rax + rcx*8]
	test	rdx, rdx
	je	.label_3043
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_3043
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rcx + rsi*8]
	dec	rax
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	je	.label_3042
.label_3034:
	lea	rdi, [rsi + rax]
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	lea	rbp, [rdi + 1]
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	jb	.label_3034
.label_3042:
	cmp	rsi, -1
	je	.label_3043
	mov	eax, 1
	cmp	qword ptr [rdx + rsi*8], rcx
	jne	.label_3043
	nop	dword ptr [rax]
.label_3045:
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_3053
	movsxd	rcx, eax
	add	rcx, r13
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax + 0x18]
	mov	r8, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rax + r8*8]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x10]
	mov	r9, r13
	call	check_dst_limits
	test	al, al
	jne	.label_3043
.label_3053:
	lea	rdi, [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x38]
	call	re_node_set_insert
	mov	ebp, 0xc
	test	al, al
	je	.label_3047
.label_3043:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x28]
	cmp	rbx, qword ptr [rax + 0x28]
	jl	.label_3050
.label_3040:
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	lea	rcx, [rsp + 0x40]
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_3044
	jmp	.label_3047
.label_3052:
	xor	ebp, ebp
	jmp	.label_3047
.label_3036:
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
.label_3047:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_3041:
	mov	eax, ebp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_3039:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	ebp, 0xc
	jmp	.label_3041
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41fc30

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	r11, rcx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x58], rbp
	mov	r13, rdi
	mov	r12, qword ptr [r13 + 0x98]
	mov	dword ptr [rsp + 0x6c], 0
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rbx, qword ptr [rax + rdx*8]
	lea	rax, [rbx + 8]
	test	rbx, rbx
	cmove	rax, rbx
	mov	qword ptr [rsp + 0x60], rax
	cmp	qword ptr [r11 + 8], 0
	je	.label_3073
	mov	qword ptr [rsp + 0x50], rdx
	test	rbx, rbx
	je	.label_3095
	mov	qword ptr [rsp + 0x38], rbx
	mov	dword ptr [rsp + 0x70], 0
	lea	rdi, [rsp + 0x70]
	mov	rsi, r12
	mov	qword ptr [rsp + 0x48], r12
	mov	rdx, r11
	mov	rbx, r11
	call	re_acquire_state
	mov	r14, rax
	mov	r12d, dword ptr [rsp + 0x70]
	test	r12d, r12d
	jne	.label_3104
	mov	r15, r14
	add	r15, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	jne	.label_3067
	mov	rdi, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 0x38], rdi
	mov	qword ptr [r14 + 0x40], 0
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x48], rax
	xor	ecx, ecx
	test	rax, rax
	mov	r12d, 0xc
	cmove	ecx, r12d
	mov	dword ptr [rsp + 0x70], ecx
	je	.label_3104
	cmp	qword ptr [rbx + 8], 0
	jle	.label_3067
	mov	r14, rbp
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_3092:
	mov	rax, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r15
	call	re_node_set_merge
	test	eax, eax
	jne	.label_3076
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	jl	.label_3092
	mov	dword ptr [rsp + 0x70], 0
	mov	rbp, r14
.label_3067:
	mov	rdi, rbx
	mov	r14, rbx
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, r15
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 0x6c], r12d
	test	r12d, r12d
	mov	rbx, qword ptr [rsp + 0x38]
	jne	.label_3089
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	mov	r11, r14
	mov	r12, qword ptr [rsp + 0x48]
	je	.label_3095
	mov	qword ptr [rsp + 0x30], r13
	mov	r10, qword ptr [rsp + 0x50]
	jle	.label_3100
	mov	rax, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rax + 0xd8]
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_3117:
	mov	rax, qword ptr [rbp + 0x30]
	mov	rax, qword ptr [rax + r15*8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [r13 + rax*8 + 0x10], r10
	jge	.label_3058
	cmp	qword ptr [r13 + rax*8 + 8], r10
	jl	.label_3058
	mov	rdx, qword ptr [r13 + rax*8]
	mov	rcx, qword ptr [r12]
	shl	rdx, 4
	mov	r8, qword ptr [rcx + rdx]
	mov	qword ptr [rsp + 0x40], r8
	cmp	qword ptr [r13 + rax*8 + 0x18], r10
	mov	rax, qword ptr [r11 + 8]
	jne	.label_3113
	test	rax, rax
	jle	.label_3058
	mov	qword ptr [rsp + 0x48], r12
	mov	rdx, qword ptr [r11 + 0x10]
	mov	r14, -1
	mov	rsi, -1
	nop	word ptr [rax + rax]
.label_3087:
	mov	rbp, qword ptr [rdx]
	mov	rdi, rbp
	shl	rdi, 4
	movzx	ebx, byte ptr [rcx + rdi + 8]
	cmp	ebx, 9
	je	.label_3066
	cmp	ebx, 8
	jne	.label_3081
	cmp	r8, qword ptr [rcx + rdi]
	je	.label_3077
	mov	rbp, rsi
.label_3077:
	mov	rsi, rbp
	jmp	.label_3081
	nop	word ptr [rax + rax]
.label_3066:
	cmp	r8, qword ptr [rcx + rdi]
	je	.label_3082
	mov	rbp, r14
.label_3082:
	mov	r14, rbp
.label_3081:
	add	rdx, 8
	dec	rax
	jne	.label_3087
	test	rsi, rsi
	mov	rbp, r11
	js	.label_3091
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rbx, r10
	call	sub_epsilon_src_nodes
	mov	r10, rbx
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_3069
.label_3091:
	test	r14, r14
	mov	r11, rbp
	mov	r12, qword ptr [rsp + 0x48]
	js	.label_3058
	mov	r8, qword ptr [r11 + 8]
	test	r8, r8
	mov	ebp, 0
	jle	.label_3058
	nop	word ptr cs:[rax + rax]
.label_3088:
	mov	rax, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r12 + 0x38]
	lea	r9, [rsi + rsi*2]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	test	rdx, rdx
	jle	.label_3065
	dec	rdx
	mov	rdi, qword ptr [rax + r9*8 + 0x10]
	mov	eax, 0
	je	.label_3116
	nop	word ptr [rax + rax]
.label_3054:
	lea	rbx, [rax + rdx]
	shr	rbx, 1
	cmp	qword ptr [rdi + rbx*8], r14
	lea	rcx, [rbx + 1]
	cmovl	rax, rcx
	cmovge	rdx, rbx
	cmp	rax, rdx
	jb	.label_3054
.label_3116:
	cmp	rax, -1
	je	.label_3065
	cmp	qword ptr [rdi + rax*8], r14
	je	.label_3084
.label_3065:
	mov	rax, qword ptr [r12 + 0x30]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	test	rdx, rdx
	jle	.label_3070
	dec	rdx
	mov	rcx, qword ptr [rax + r9*8 + 0x10]
	mov	eax, 0
	je	.label_3083
	nop	word ptr [rax + rax]
.label_3080:
	lea	rdi, [rax + rdx]
	shr	rdi, 1
	cmp	qword ptr [rcx + rdi*8], r14
	lea	rbx, [rdi + 1]
	cmovl	rax, rbx
	cmovge	rdx, rdi
	cmp	rax, rdx
	jb	.label_3080
.label_3083:
	cmp	rax, -1
	je	.label_3070
	cmp	qword ptr [rcx + rax*8], r14
	je	.label_3084
.label_3070:
	mov	qword ptr [rsp + 0x48], r15
	mov	r15, r13
	mov	rdi, r12
	mov	r13, r12
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x60]
	mov	r12, r10
	mov	rbx, r11
	call	sub_epsilon_src_nodes
	mov	r10, r12
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_3069
	dec	rbp
	mov	r8, qword ptr [rbx + 8]
	mov	r11, rbx
	mov	r12, r13
	mov	r13, r15
	mov	r15, qword ptr [rsp + 0x48]
.label_3084:
	inc	rbp
	cmp	rbp, r8
	jl	.label_3088
	jmp	.label_3058
.label_3113:
	test	rax, rax
	mov	ebp, 0
	jg	.label_3110
	jmp	.label_3058
	nop	dword ptr [rax]
.label_3079:
	mov	rcx, qword ptr [r12]
.label_3110:
	mov	rdx, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rdx + rbp*8]
	mov	rdx, rsi
	shl	rdx, 4
	mov	edi, dword ptr [rcx + rdx + 8]
	mov	ebx, 0xfe
	and	edi, ebx
	or	edi, 1
.label_3447:
	cmp	edi, 9
	jne	.label_3057
	cmp	r8, qword ptr [rcx + rdx]
	jne	.label_3057
	mov	r14, r15
	mov	r15, r13
	mov	rdi, r12
	mov	r13, r12
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x60]
	mov	r12, r10
	mov	rbx, r11
	call	sub_epsilon_src_nodes
	mov	r10, r12
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_3069
	mov	rax, qword ptr [rbx + 8]
	mov	r11, rbx
	mov	r12, r13
	mov	r13, r15
	mov	r15, r14
	mov	r8, qword ptr [rsp + 0x40]
.label_3057:
	inc	rbp
	cmp	rbp, rax
	jl	.label_3079
	nop	word ptr [rax + rax]
.label_3058:
	inc	r15
	mov	rbp, qword ptr [rsp + 0x58]
	cmp	r15, qword ptr [rbp + 0x28]
	jl	.label_3117
.label_3100:
	mov	qword ptr [rsp + 0x50], r10
	mov	dword ptr [rsp + 0x6c], 0
	mov	r13, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x38]
.label_3095:
	lea	rdi, [rsp + 0x6c]
	mov	rsi, r12
	mov	rdx, r11
	call	re_acquire_state
	mov	rcx, qword ptr [rbp]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	qword ptr [rcx + rdx*8], rax
	mov	r12d, dword ptr [rsp + 0x6c]
	test	r12d, r12d
	je	.label_3099
	jmp	.label_3089
.label_3073:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rax + rdx*8], 0
.label_3099:
	test	rbx, rbx
	je	.label_3106
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + rdx*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_3106
	mov	rbx, rbp
	mov	r11, qword ptr [r13 + 0x98]
	mov	rbp, qword ptr [r13 + 0xc8]
	xor	r15d, r15d
	test	rbp, rbp
	jle	.label_3112
	mov	rcx, qword ptr [r13 + 0xd8]
	xor	r15d, r15d
	mov	rax, rbp
	nop	word ptr cs:[rax + rax]
.label_3061:
	lea	rsi, [rax + r15]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rcx + rsi*8 + 8], rdx
	cmovge	rax, rdi
	lea	rsi, [rdi + 1]
	cmovl	r15, rsi
	cmp	r15, rax
	jl	.label_3061
.label_3112:
	cmp	r15, rbp
	jge	.label_3074
	cmp	r15, -1
	je	.label_3074
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [r15 + r15*4]
	mov	qword ptr [rsp + 0x20], rcx
	cmp	qword ptr [rax + rcx*8 + 8], rdx
	jne	.label_3074
	mov	qword ptr [rsp + 0x70], 0
	mov	rax, qword ptr [rsp + 0x60]
	cmp	qword ptr [rax + 8], 0
	jle	.label_3085
	mov	rdi, r13
	mov	qword ptr [rsp + 0x30], rdi
	mov	qword ptr [rsp + 0x50], rdx
	mov	r10, rbx
	mov	qword ptr [rsp + 0x58], r10
	lea	rax, [r10 + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	shl	qword ptr [rsp + 0x20], 3
	xor	r13d, r13d
.label_3097:
	mov	qword ptr [rsp + 0x28], r13
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, qword ptr [rax + r13*8]
	mov	qword ptr [rsp + 0x48], rbp
	mov	rax, qword ptr [r11]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	rbp, qword ptr [r10 + 0x10]
	jne	.label_3103
	cmp	eax, 4
	mov	rcx, rdx
	jne	.label_3098
	cmp	qword ptr [r10 + 0x18], rcx
	jne	.label_3114
	jmp	.label_3098
.label_3103:
	cmp	eax, 4
	mov	rcx, rdx
	jne	.label_3098
.label_3114:
	mov	rbx, qword ptr [rdi + 0xd8]
	add	rbx, qword ptr [rsp + 0x20]
	mov	r14, r15
	nop	
.label_3093:
	cmp	qword ptr [rbx], rbp
	jne	.label_3078
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x18]
	mov	r9, rdx
	sub	r9, rax
	add	r9, rcx
	cmp	rdx, rax
	jne	.label_3063
	mov	rax, qword ptr [r11 + 0x28]
	lea	rdx, [rbp + rbp*2]
	mov	rsi, qword ptr [rax + rdx*8 + 0x10]
	jmp	.label_3072
	nop	
.label_3063:
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r11 + 0x18]
.label_3072:
	cmp	r9, qword ptr [r10 + 0x18]
	jg	.label_3078
	mov	rax, qword ptr [r10]
	mov	rdx, qword ptr [rax + r9*8]
	test	rdx, rdx
	je	.label_3078
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_3078
	mov	r12, r10
	mov	r8, qword ptr [rsi]
	dec	rax
	mov	r10, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_3090
	nop	word ptr [rax + rax]
.label_3096:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [r10 + rsi*8], r8
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_3096
.label_3090:
	cmp	rdx, -1
	je	.label_3071
	cmp	qword ptr [r10 + rdx*8], r8
	jne	.label_3071
	mov	qword ptr [rsp + 0x40], r11
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x48]
	call	check_dst_limits
	test	al, al
	mov	r10, r12
	je	.label_3109
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_3111
.label_3071:
	mov	r10, r12
	jmp	.label_3111
.label_3109:
	cmp	qword ptr [rsp + 0x38], 0
	jne	.label_3118
	mov	rax, qword ptr [r10 + 0x30]
	mov	qword ptr [rsp + 0xa0], rax
	movups	xmm0, xmmword ptr [r10]
	movups	xmm1, xmmword ptr [r10 + 0x10]
	movups	xmm2, xmmword ptr [r10 + 0x20]
	movaps	xmmword ptr [rsp + 0x90], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	rbx, qword ptr [r10 + 0x28]
	mov	qword ptr [rsp + 0x98], rbx
	test	rbx, rbx
	jle	.label_3119
	mov	rbp, r10
	mov	qword ptr [rsp + 0x90], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0xa0], rax
	test	rax, rax
	je	.label_3105
	mov	rsi, qword ptr [rbp + 0x30]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	r10, rbp
	jmp	.label_3118
.label_3119:
	lea	rax, [rsp + 0x90]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
.label_3118:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rsp + 0x80], rax
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x88], rax
	lea	rdi, [rsp + 0x90]
	mov	rsi, r14
	mov	rbx, r10
	call	re_node_set_insert
	mov	rdx, rbx
	mov	r12d, 0xc
	test	al, al
	mov	rax, qword ptr [rsp + 0x40]
	je	.label_3068
	mov	rbx, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rbx + rcx*8]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsp + 0x70]
	mov	r12, rax
	mov	rbp, rdx
	call	sift_states_backward
	mov	r10, rbp
	mov	r11, r12
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_3068
	mov	rdi, qword ptr [r10 + 8]
	test	rdi, rdi
	mov	rcx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x38], rbx
	je	.label_3060
	mov	r13, -1
	test	rcx, rcx
	lea	rbp, [rsp + 0xa8]
	js	.label_3108
	nop	dword ptr [rax]
.label_3107:
	mov	rsi, qword ptr [rdi + r13*8 + 8]
	mov	rdx, qword ptr [rbx + r13*8 + 8]
	test	rsi, rsi
	je	.label_3094
	test	rdx, rdx
	je	.label_3086
	mov	rbx, rdi
	add	rsi, 8
	add	rdx, 8
	mov	rdi, rbp
	call	re_node_set_init_union
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc4], r12d
	test	r12d, r12d
	jne	.label_3068
	lea	rdi, [rsp + 0xc4]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, rbp
	call	re_acquire_state
	mov	qword ptr [rbx + r13*8 + 8], rax
	mov	rdi, qword ptr [rsp + 0xb8]
	call	free
	mov	rdi, rbx
	mov	r12d, dword ptr [rsp + 0xc4]
	test	r12d, r12d
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r10, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0x38]
	je	.label_3086
	jmp	.label_3068
.label_3094:
	mov	qword ptr [rdi + r13*8 + 8], rdx
.label_3086:
	inc	r13
	cmp	r13, rcx
	jl	.label_3107
.label_3108:
	mov	r11, qword ptr [rsp + 0x40]
	mov	r13, qword ptr [rsp + 0x28]
.label_3060:
	mov	qword ptr [rsp + 0x38], rbx
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + rcx*8], rdx
	mov	r12, qword ptr [rsp + 0x98]
	test	r12, r12
	jle	.label_3059
	mov	rbp, r12
	dec	rbp
	mov	rax, qword ptr [rsp + 0xa0]
	mov	rdi, rbp
	mov	edx, 0
	je	.label_3055
	nop	dword ptr [rax + rax]
.label_3056:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [rax + rbx*8], r14
	lea	rsi, [rbx + 1]
	cmovl	rdx, rsi
	cmovge	rdi, rbx
	cmp	rdx, rdi
	jb	.label_3056
.label_3055:
	cmp	qword ptr [rax + rdx*8], r14
	mov	rdi, rdx
	je	.label_3075
	mov	rdi, -1
.label_3075:
	test	rdi, rdi
	js	.label_3059
	cmp	r12, rdi
	jle	.label_3059
	mov	qword ptr [rsp + 0x98], rbp
	cmp	rbp, rdi
	jle	.label_3059
	dec	r12
	lea	rdi, [rdx + 1]
	cmp	r12, rdi
	mov	rbx, rdi
	cmovge	rbx, r12
	sub	rbx, rdx
	cmp	rbx, 4
	jb	.label_3064
	mov	r8, rbx
	and	r8, 0xfffffffffffffffc
	mov	r9, rbx
	and	r9, 0xfffffffffffffffc
	je	.label_3064
	mov	qword ptr [rsp + 0x58], r10
	mov	qword ptr [rsp + 0x40], r11
	cmp	r12, rdi
	mov	rsi, rdi
	cmovge	rsi, r12
	sub	rsi, rdx
	add	rsi, -4
	mov	r11, rsi
	shr	r11, 2
	bt	rsi, 2
	mov	r10d, 0
	jb	.label_3062
	movups	xmm0, xmmword ptr [rax + rdx*8 + 8]
	movups	xmm1, xmmword ptr [rax + rdx*8 + 0x18]
	movups	xmmword ptr [rax + rdx*8], xmm0
	movups	xmmword ptr [rax + rdx*8 + 0x10], xmm1
	mov	r10d, 4
.label_3062:
	test	r11, r11
	je	.label_3115
	cmp	r12, rdi
	cmovge	rdi, r12
	sub	rdi, rdx
	and	rdi, 0xfffffffffffffffc
	sub	rdi, r10
	add	r10, rdx
	lea	rsi, [rax + r10*8 + 0x38]
.label_3102:
	movups	xmm0, xmmword ptr [rsi - 0x30]
	movups	xmm1, xmmword ptr [rsi - 0x20]
	movups	xmmword ptr [rsi - 0x38], xmm0
	movups	xmmword ptr [rsi - 0x28], xmm1
	movups	xmm0, xmmword ptr [rsi - 0x10]
	movups	xmm1, xmmword ptr [rsi]
	movups	xmmword ptr [rsi - 0x18], xmm0
	movups	xmmword ptr [rsi - 8], xmm1
	add	rsi, 0x40
	add	rdi, -8
	jne	.label_3102
.label_3115:
	cmp	rbx, r9
	mov	r11, qword ptr [rsp + 0x40]
	mov	r10, qword ptr [rsp + 0x58]
	je	.label_3059
	add	rdx, r8
	nop	word ptr cs:[rax + rax]
.label_3064:
	mov	rsi, qword ptr [rax + rdx*8 + 8]
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, rbp
	jl	.label_3064
.label_3059:
	lea	rbx, [r14 + r14*4]
	shl	rbx, 3
	mov	rdi, qword ptr [rsp + 0x30]
	add	rbx, qword ptr [rdi + 0xd8]
.label_3111:
	mov	rbp, qword ptr [rsp + 0x48]
	nop	word ptr [rax + rax]
.label_3078:
	inc	r14
	cmp	byte ptr [rbx + 0x20], 0
	lea	rbx, [rbx + 0x28]
	jne	.label_3093
.label_3098:
	mov	rdx, rcx
	inc	r13
	xor	r12d, r12d
	mov	rax, qword ptr [rsp + 0x60]
	cmp	r13, qword ptr [rax + 8]
	jl	.label_3097
.label_3068:
	cmp	qword ptr [rsp + 0x70], 0
	je	.label_3101
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
.label_3101:
	mov	dword ptr [rsp + 0x6c], r12d
	test	r12d, r12d
	je	.label_3106
	jmp	.label_3089
.label_3074:
	mov	dword ptr [rsp + 0x6c], 0
.label_3106:
	xor	r12d, r12d
.label_3089:
	mov	eax, r12d
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_3069:
	mov	dword ptr [rsp + 0x6c], r12d
	jmp	.label_3089
.label_3076:
	mov	dword ptr [rsp + 0x70], eax
.label_3104:
	mov	dword ptr [rsp + 0x6c], r12d
	jmp	.label_3089
.label_3085:
	mov	dword ptr [rsp + 0x6c], 0
	jmp	.label_3106
.label_3105:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x90]
	movups	xmmword ptr [rax], xmm0
	mov	r12d, 0xc
	jmp	.label_3068
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x420720

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rdx, qword ptr [r15 + 8]
	xor	eax, eax
	test	rdx, rdx
	je	.label_3120
	mov	r10, qword ptr [r14 + 8]
	test	r10, r10
	je	.label_3120
	lea	rax, [r10 + rdx]
	mov	rbx, qword ptr [r12]
	mov	rsi, qword ptr [r12 + 8]
	lea	rcx, [rsi + rax]
	cmp	rcx, rbx
	jle	.label_3124
	add	rbx, rax
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_3120
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], rbx
	mov	rsi, qword ptr [r12 + 8]
	mov	rdx, qword ptr [r15 + 8]
	mov	r10, qword ptr [r14 + 8]
	jmp	.label_3123
.label_3124:
	lea	r8, [r12 + 0x10]
.label_3123:
	lea	r9, [rdx + rsi]
	add	r9, r10
	dec	rsi
.label_3138:
	dec	rdx
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rdi, r10
.label_3133:
	lea	r10, [rdi - 1]
	mov	rax, qword ptr [rcx + rdi*8 - 8]
	nop	dword ptr [rax]
.label_3128:
	cmp	qword ptr [rbx + rdx*8], rax
	je	.label_3125
	jl	.label_3127
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_3128
	jmp	.label_3122
	nop	word ptr cs:[rax + rax]
.label_3127:
	cmp	rdi, 2
	mov	rdi, r10
	jge	.label_3133
	jmp	.label_3122
	nop	dword ptr [rax + rax]
.label_3125:
	mov	rbx, qword ptr [r8]
	test	rsi, rsi
	js	.label_3121
	nop	dword ptr [rax + rax]
.label_3129:
	mov	rcx, qword ptr [rbx + rsi*8]
	cmp	rcx, rax
	jle	.label_3132
	test	rsi, rsi
	lea	rsi, [rsi - 1]
	jg	.label_3129
	jmp	.label_3121
.label_3132:
	test	rsi, rsi
	js	.label_3121
	cmp	rcx, rax
	je	.label_3134
	nop	
.label_3121:
	mov	qword ptr [rbx + r9*8 - 8], rax
	dec	r9
.label_3134:
	test	rdx, rdx
	jle	.label_3122
	cmp	rdi, 2
	jge	.label_3138
.label_3122:
	mov	rcx, qword ptr [r12 + 8]
	mov	r11, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r14 + 8]
	lea	r14, [rcx + r11 - 1]
	add	r14, rdx
	mov	rax, r14
	sub	rax, r9
	lea	r10, [rax + 1]
	lea	rsi, [rax + rcx + 1]
	mov	qword ptr [r12 + 8], rsi
	test	rcx, rcx
	jle	.label_3130
	test	rax, rax
	js	.label_3130
	add	r11, rdx
	add	r11, rcx
	dec	rcx
	sub	r11, r9
	xor	edx, edx
.label_3135:
	mov	rdi, qword ptr [r8]
	lea	rax, [rdi + r11*8]
	nop	
.label_3131:
	mov	rsi, qword ptr [rdi + r14*8]
	mov	rbx, qword ptr [rdi + rcx*8]
	cmp	rsi, rbx
	jg	.label_3126
	mov	qword ptr [rax + rcx*8], rbx
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_3131
	jmp	.label_3136
.label_3126:
	dec	r14
	dec	r11
	lea	rax, [r10 + rcx]
	dec	r10
	mov	qword ptr [rdi + rax*8], rsi
	jne	.label_3135
	jmp	.label_3137
.label_3130:
	mov	rdi, qword ptr [r8]
.label_3136:
	mov	rdx, r10
.label_3137:
	lea	rsi, [rdi + r9*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_3120:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4208f0

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x10], rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x38]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	qword ptr [rsp + 0x30], 0
	lea	rdx, [r15 + r15*2]
	mov	r9, qword ptr [rcx + rdx*8 + 8]
	test	r9, r9
	jle	.label_3159
	lea	rax, [rcx + rdx*8 + 8]
	mov	qword ptr [rsp + 0x18], rax
	lea	r14, [rcx + rdx*8 + 0x10]
	mov	qword ptr [rsp], rdx
	mov	qword ptr [rsp + 8], rcx
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_3139:
	mov	r11, qword ptr [r14]
	mov	rcx, qword ptr [r11 + r13*8]
	cmp	rcx, r15
	je	.label_3146
	mov	rdx, qword ptr [rdi]
	mov	rax, rcx
	shl	rax, 4
	test	byte ptr [rdx + rax + 8], 8
	je	.label_3146
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rcx + rcx*2]
	mov	rcx, qword ptr [rbp + r8*8 + 0x10]
	mov	rsi, qword ptr [rcx]
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	jl	.label_3166
	mov	r10, qword ptr [rcx + 8]
.label_3166:
	test	r9, r9
	jle	.label_3148
	mov	rcx, r9
	dec	rcx
	mov	ebp, 0
	je	.label_3150
	nop	word ptr [rax + rax]
.label_3154:
	lea	rbx, [rbp + rcx]
	shr	rbx, 1
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rax, [rbx + 1]
	cmovl	rbp, rax
	cmovge	rcx, rbx
	cmp	rbp, rcx
	jb	.label_3154
.label_3150:
	cmp	rbp, -1
	je	.label_3148
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_3149
.label_3148:
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	jle	.label_3149
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	mov	ecx, 0
	je	.label_3164
	nop	word ptr cs:[rax + rax]
.label_3140:
	lea	rax, [rcx + rbp]
	shr	rax, 1
	cmp	qword ptr [rbx + rax*8], rsi
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	cmovge	rbp, rax
	cmp	rcx, rbp
	jb	.label_3140
.label_3164:
	cmp	rcx, -1
	je	.label_3149
	cmp	qword ptr [rbx + rcx*8], rsi
	je	.label_3153
.label_3149:
	test	r10, r10
	jle	.label_3146
	test	r9, r9
	jle	.label_3155
	mov	rbp, r9
	dec	rbp
	mov	ecx, 0
	je	.label_3157
	nop	word ptr [rax + rax]
.label_3163:
	lea	rax, [rcx + rbp]
	shr	rax, 1
	cmp	qword ptr [r11 + rax*8], r10
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	cmovge	rbp, rax
	cmp	rcx, rbp
	jb	.label_3163
.label_3157:
	cmp	rcx, -1
	je	.label_3155
	cmp	qword ptr [r11 + rcx*8], r10
	je	.label_3146
.label_3155:
	mov	rsi, qword ptr [r12 + 8]
	test	rsi, rsi
	jle	.label_3146
	dec	rsi
	mov	rbp, qword ptr [r12 + 0x10]
	mov	ecx, 0
	je	.label_3144
	nop	word ptr cs:[rax + rax]
.label_3151:
	lea	rax, [rcx + rsi]
	shr	rax, 1
	cmp	qword ptr [rbp + rax*8], r10
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	cmovge	rsi, rax
	cmp	rcx, rsi
	jb	.label_3151
.label_3144:
	cmp	rcx, -1
	je	.label_3146
	cmp	qword ptr [rbp + rcx*8], r10
	jne	.label_3146
.label_3153:
	mov	rax, qword ptr [rdi + 0x38]
	mov	rbx, rdi
	lea	rdx, [rax + r8*8]
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x10]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_3165
	mov	rax, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rax]
	mov	rdi, rbx
	nop	dword ptr [rax]
.label_3146:
	inc	r13
	cmp	r13, r9
	jl	.label_3139
	test	r9, r9
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jle	.label_3159
	lea	r8, [rsp + 0x30]
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	r11, [r10 - 1]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_3145:
	test	r10, r10
	mov	rax, qword ptr [r9 + r13*8]
	jle	.label_3158
	test	r11, r11
	mov	rdx, r11
	mov	ecx, 0
	je	.label_3156
	nop	word ptr cs:[rax + rax]
.label_3162:
	lea	rdi, [rcx + rdx]
	shr	rdi, 1
	cmp	qword ptr [rsi + rdi*8], rax
	lea	rbx, [rdi + 1]
	cmovl	rcx, rbx
	cmovge	rdx, rdi
	cmp	rcx, rdx
	jb	.label_3162
.label_3156:
	cmp	rcx, -1
	je	.label_3158
	cmp	qword ptr [rsi + rcx*8], rax
	je	.label_3141
.label_3158:
	mov	r14, qword ptr [r12 + 8]
	test	r14, r14
	jle	.label_3141
	mov	r15, r14
	dec	r15
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdi, r15
	mov	edx, 0
	je	.label_3147
	nop	dword ptr [rax + rax]
.label_3142:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [rcx + rbx*8], rax
	lea	rbp, [rbx + 1]
	cmovl	rdx, rbp
	cmovge	rdi, rbx
	cmp	rdx, rdi
	jb	.label_3142
.label_3147:
	cmp	qword ptr [rcx + rdx*8], rax
	mov	rax, rdx
	je	.label_3160
	mov	rax, -1
.label_3160:
	test	rax, rax
	js	.label_3141
	cmp	r14, rax
	jle	.label_3141
	mov	qword ptr [r12 + 8], r15
	cmp	r15, rax
	jle	.label_3141
.label_3143:
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	mov	qword ptr [rcx + rdx*8], rax
	inc	rdx
	cmp	rdx, qword ptr [r12 + 8]
	jl	.label_3143
	nop	word ptr cs:[rax + rax]
.label_3141:
	inc	r13
	mov	rax, qword ptr [rsp + 0x18]
	cmp	r13, qword ptr [rax]
	jl	.label_3145
	jmp	.label_3152
.label_3159:
	lea	r8, [rsp + 0x30]
.label_3152:
	mov	rdi, qword ptr [r8]
	call	free
	xor	ebp, ebp
.label_3161:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_3165:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	jmp	.label_3161
	nop	
	.section	.text
	.align	32
	#Procedure 0x420c50

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 0x28], rcx
	mov	qword ptr [rsp + 8], rdx
	mov	r10, rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rdi + 0xc8]
	xor	r14d, r14d
	test	rax, rax
	jle	.label_3169
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r14d, r14d
	mov	rdx, rax
	nop	dword ptr [rax]
.label_3175:
	lea	rsi, [rdx + r14]
	mov	rbx, rsi
	shr	rbx, 0x3f
	add	rbx, rsi
	sar	rbx, 1
	lea	rsi, [rbx + rbx*4]
	cmp	qword ptr [rbp + rsi*8 + 8], rcx
	cmovge	rdx, rbx
	lea	rsi, [rbx + 1]
	cmovl	r14, rsi
	cmp	r14, rdx
	jl	.label_3175
.label_3169:
	cmp	r14, rax
	jge	.label_3172
	mov	rsi, qword ptr [rdi + 0xd8]
	lea	rdx, [r14 + r14*4]
	cmp	qword ptr [rsi + rdx*8 + 8], rcx
	je	.label_3176
.label_3172:
	mov	r14, -1
.label_3176:
	xor	r12d, r12d
	test	rax, rax
	jle	.label_3177
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r12d, r12d
	mov	rdx, rax
	nop	
.label_3167:
	lea	rsi, [rdx + r12]
	mov	rbx, rsi
	shr	rbx, 0x3f
	add	rbx, rsi
	sar	rbx, 1
	lea	rsi, [rbx + rbx*4]
	cmp	qword ptr [rbp + rsi*8 + 8], r9
	cmovge	rdx, rbx
	lea	rsi, [rbx + 1]
	cmovl	r12, rsi
	cmp	r12, rdx
	jl	.label_3167
.label_3177:
	cmp	r12, rax
	jge	.label_3178
	mov	rax, qword ptr [rdi + 0xd8]
	lea	rdx, [r12 + r12*4]
	cmp	qword ptr [rax + rdx*8 + 8], r9
	je	.label_3180
.label_3178:
	mov	r12, -1
.label_3180:
	cmp	qword ptr [r10 + 8], 0
	jle	.label_3170
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_3179:
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rdx, qword ptr [r10 + 0x10]
	mov	rbp, qword ptr [rdx + r15*8]
	lea	rsi, [rbp + rbp*4]
	mov	rdx, qword ptr [rax + rsi*8]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rbx]
	shl	rdx, 4
	mov	rdx, qword ptr [rbx + rdx]
	mov	r11, qword ptr [rax + rsi*8 + 0x10]
	mov	r13d, 0xffffffff
	cmp	r11, rcx
	jle	.label_3168
	mov	ebx, 0xffffffff
	jmp	.label_3173
	nop	word ptr cs:[rax + rax]
.label_3168:
	mov	rsi, qword ptr [rax + rsi*8 + 0x18]
	mov	ebx, 1
	cmp	rsi, rcx
	jl	.label_3173
	cmp	r11, rcx
	sete	bl
	movzx	r8d, bl
	cmp	rsi, rcx
	sete	bl
	movzx	esi, bl
	add	esi, esi
	xor	ebx, ebx
	or	esi, r8d
	je	.label_3173
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	r8, r14
	mov	rbx, r9
	mov	rbp, r10
	call	check_dst_limits_calc_pos_1
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r10, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9, rbx
	mov	ebx, eax
	mov	rax, qword ptr [r10 + 0x10]
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rdi + 0xd8]
	lea	rsi, [rbp + rbp*4]
	mov	r11, qword ptr [rax + rsi*8 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_3173:
	cmp	r11, r9
	jg	.label_3171
	lea	rsi, [rbp + rbp*4]
	mov	rax, qword ptr [rax + rsi*8 + 0x18]
	mov	r13d, 1
	cmp	rax, r9
	jl	.label_3171
	cmp	r11, r9
	mov	esi, ebx
	sete	bl
	movzx	ebp, bl
	mov	ebx, esi
	cmp	rax, r9
	sete	al
	movzx	esi, al
	add	esi, esi
	xor	r13d, r13d
	or	esi, ebp
	je	.label_3171
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	rbp, r9
	mov	r13, r10
	call	check_dst_limits_calc_pos_1
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r10, r13
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9, rbp
	mov	r13d, eax
	nop	
.label_3171:
	cmp	r13d, ebx
	mov	al, 1
	jne	.label_3174
	inc	r15
	cmp	r15, qword ptr [r10 + 8]
	jl	.label_3179
	xor	eax, eax
	jmp	.label_3174
.label_3170:
	xor	eax, eax
.label_3174:
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
	#Procedure 0x420ec0

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	rbx, rdx
	mov	r13d, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rax, qword ptr [rbp + 0x30]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_3181
	lea	rdx, [rax + rcx*8 + 8]
	mov	qword ptr [rsp + 0x20], rdx
	lea	rax, [rax + rcx*8 + 0x10]
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	mov	qword ptr [rsp + 0x18], rax
	xor	rax, 0xffff
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, r13d
	and	eax, 2
	mov	dword ptr [rsp + 8], eax
	shr	eax, 1
	cmp	rbx, 0x3f
	setg	cl
	or	cl, al
	mov	byte ptr [rsp + 0xf], cl
	mov	eax, r13d
	and	eax, 1
	mov	dword ptr [rsp + 4], eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_3188:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	r12, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rbp]
	mov	rdx, r12
	shl	rdx, 4
	lea	rcx, [rax + rdx]
	movzx	eax, byte ptr [rax + rdx + 8]
	cmp	eax, 9
	je	.label_3192
	cmp	eax, 8
	je	.label_3184
	cmp	eax, 4
	jne	.label_3185
	cmp	qword ptr [rsp + 0x40], -1
	je	.label_3185
	mov	rax, qword ptr [rsp + 0x40]
	lea	r14, [rax + rax*4]
	shl	r14, 3
	mov	rax, qword ptr [rsp + 0x38]
	add	r14, qword ptr [rax + 0xd8]
.label_3187:
	cmp	qword ptr [r14], r12
	jne	.label_3182
	cmp	rbx, 0x3f
	jg	.label_3191
	movzx	eax, word ptr [r14 + 0x22]
	test	qword ptr [rsp + 0x18], rax
	je	.label_3182
.label_3191:
	mov	rax, qword ptr [rbp + 0x28]
	lea	rcx, [r12 + r12*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x30]
	je	.label_3190
	mov	rdi, qword ptr [rsp + 0x38]
	mov	esi, r13d
	mov	rdx, rbx
	mov	r8, qword ptr [rsp + 0x40]
	call	check_dst_limits_calc_pos_1
	mov	ecx, eax
	test	ecx, ecx
	je	.label_3186
	mov	eax, 0xffffffff
	cmp	ecx, -1
	je	.label_3183
	cmp	rbx, 0x3f
	jg	.label_3182
	jmp	.label_3189
.label_3186:
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_3189
	xor	eax, eax
	cmp	dword ptr [rsp + 8], 0
	je	.label_3182
	jmp	.label_3183
.label_3189:
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x10]
	and	eax, ecx
	mov	word ptr [r14 + 0x22], ax
	nop	dword ptr [rax]
.label_3182:
	cmp	byte ptr [r14 + 0x20], 0
	lea	r14, [r14 + 0x28]
	jne	.label_3187
	jmp	.label_3185
	nop	word ptr cs:[rax + rax]
.label_3192:
	cmp	dword ptr [rsp + 8], 0
	je	.label_3185
	xor	eax, eax
	jmp	.label_3194
	nop	dword ptr [rax + rax]
.label_3184:
	cmp	dword ptr [rsp + 4], 0
	je	.label_3185
	mov	eax, 0xffffffff
.label_3194:
	cmp	qword ptr [rcx], rbx
	je	.label_3183
.label_3185:
	inc	r15
	mov	rax, qword ptr [rsp + 0x20]
	cmp	r15, qword ptr [rax]
	jl	.label_3188
.label_3181:
	shr	r13d, 1
	and	r13d, 1
	jmp	.label_3193
.label_3190:
	shl	r13d, 0x1f
	sar	r13d, 0x1f
.label_3193:
	mov	eax, r13d
.label_3183:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4210d0

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_3195
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_3195:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_3196
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_3196
	mov	r12, rbx
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_3196:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x421150
	.globl tzfree
	.type tzfree, @function
tzfree:

	push	rbx
	cmp	rdi, 2
	jb	.label_3197
	nop	word ptr [rax + rax]
.label_3198:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_3198
.label_3197:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x421180

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_3199
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_3200
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_3201
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	bpl, al
	xor	bpl, 1
.label_3201:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_3202
.label_3199:
	mov	rdi, rbp
	mov	rsi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_3200:
	xor	eax, eax
.label_3202:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x421210

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, OFFSET FLAT:.str_2
	call	getenv
	mov	r15, rax
	test	r15, r15
	mov	bl, byte ptr [r14 + 8]
	je	.label_3209
	test	bl, bl
	je	.label_3211
	lea	rdi, [r14 + 9]
	mov	rsi, r15
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_3204
.label_3211:
	mov	rdi, r15
	call	strlen
	mov	r12, rax
	inc	r12
	mov	bpl, 1
	jmp	.label_3206
.label_3209:
	xor	ebp, ebp
	mov	eax, 1
	test	bl, bl
	mov	r12d, 0
	je	.label_3204
.label_3206:
	lea	rax, [r12 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r12, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_3204
	mov	qword ptr [r13], 0
	mov	byte ptr [r13 + 8], bpl
	mov	byte ptr [r13 + 9], 0
	test	bpl, bpl
	je	.label_3208
	lea	rbp, [r13 + 9]
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	mov	byte ptr [rbp + r12], 0
.label_3208:
	test	bl, bl
	je	.label_3205
	add	r14, 9
	mov	edi, OFFSET FLAT:.str_2
	mov	edx, 1
	mov	rsi, r14
	call	setenv
	jmp	.label_3210
.label_3205:
	mov	edi, OFFSET FLAT:.str_2
	call	unsetenv
.label_3210:
	test	eax, eax
	je	.label_3212
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	cmp	r13, 2
	jb	.label_3203
	nop	dword ptr [rax]
.label_3207:
	mov	rbx, qword ptr [r13]
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_3207
.label_3203:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_3204
.label_3212:
	call	tzset
	mov	rax, r13
.label_3204:
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
	#Procedure 0x421350

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r15 + 0x30]
	mov	r14b, 1
	test	rbx, rbx
	je	.label_3216
	cmp	r15, rbx
	ja	.label_3223
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	jb	.label_3216
.label_3223:
	mov	ebp, OFFSET FLAT:.str_0
	cmp	byte ptr [rbx], 0
	je	.label_3213
	lea	rbp, [r12 + 9]
	jmp	.label_3217
.label_3222:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	cmovne	r12, rax
.label_3217:
	lea	r13, [r12 + 9]
.label_3219:
	mov	rdi, rbp
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_3213
	cmp	byte ptr [rbp], 0
	jne	.label_3218
	cmp	rbp, r13
	jne	.label_3214
	cmp	byte ptr [r12 + 8], 0
	je	.label_3215
.label_3218:
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rax + rbp + 1]
	cmp	byte ptr [rax + rbp + 1], 0
	mov	rbp, rcx
	jne	.label_3219
	jmp	.label_3222
.label_3215:
	mov	rbp, r13
.label_3214:
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rax + 1]
	mov	rcx, rbp
	sub	rcx, r13
	mov	rsi, rcx
	not	rsi
	cmp	rdx, rsi
	jbe	.label_3225
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_3221:
	xor	r14d, r14d
	jmp	.label_3216
.label_3225:
	add	rcx, rdx
	cmp	rcx, 0x76
	ja	.label_3220
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	mov	qword ptr [r15 + 0x30], rbp
	jmp	.label_3216
.label_3220:
	add	rax, 0x12
	and	rax, 0xfffffffffffffff8
	cmp	rdx, 0x77
	mov	r13, rdx
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	test	rax, rax
	je	.label_3224
	mov	qword ptr [rax], 0
	mov	word ptr [rax + 8], 1
	mov	rbp, rax
	add	rbp, 9
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r13
	mov	rbx, rax
	call	memcpy
	mov	byte ptr [rbx + r13 + 9], 0
	mov	qword ptr [r12], rbx
	mov	byte ptr [rbx + 8], 0
.label_3213:
	mov	qword ptr [r15 + 0x30], rbp
.label_3216:
	mov	al, r14b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_3224:
	mov	qword ptr [r12], 0
	jmp	.label_3221
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4214c0

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rdi
	mov	r12b, 1
	cmp	rbp, 1
	je	.label_3226
	call	__errno_location
	mov	r14, rax
	mov	r15d, dword ptr [r14]
	cmp	byte ptr [rbp + 8], 0
	je	.label_3232
	lea	rsi, [rbp + 9]
	mov	edi, OFFSET FLAT:.str_2
	mov	edx, 1
	call	setenv
	jmp	.label_3231
.label_3232:
	mov	edi, OFFSET FLAT:.str_2
	call	unsetenv
.label_3231:
	test	eax, eax
	je	.label_3227
	mov	r15d, dword ptr [r14]
	xor	r12d, r12d
	jmp	.label_3228
.label_3227:
	call	tzset
	mov	r12b, 1
.label_3228:
	cmp	rbp, 2
	jb	.label_3230
	nop	
.label_3229:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_3229
.label_3230:
	mov	dword ptr [r14], r15d
.label_3226:
	mov	al, r12b
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x421550

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r15, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_3236
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_3233
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp + 0x38], rax
	cmp	rax, -1
	jne	.label_3235
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp]
	call	localtime_r
	test	rax, rax
	je	.label_3234
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	xor	rax, qword ptr [r15]
	xor	rcx, qword ptr [r15 + 8]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x10]
	xor	rax, qword ptr [r15 + 0x10]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	edi, dword ptr [r15 + 0x20]
	mov	edx, dword ptr [rsp + 0x20]
	test	edi, edi
	sete	sil
	test	edx, edx
	sete	cl
	xor	cl, sil
	or	edx, edi
	setns	dl
	and	dl, cl
	movzx	ecx, dl
	or	ecx, eax
	jne	.label_3234
.label_3235:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_3234
	mov	qword ptr [rsp + 0x38], -1
.label_3234:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_3233
	mov	rax, qword ptr [rsp + 0x38]
	jmp	.label_3237
.label_3233:
	mov	rax, -1
.label_3237:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_3236:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x421650

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
	jne	.label_3239
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_3238
	test	cl, cl
	jne	.label_3238
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_3238
.label_3239:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_3238
	call	__errno_location
	mov	dword ptr [rax], 0
.label_3238:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4216b0

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	32
	#Procedure 0x4216c0

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_3240
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_3241
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	jne	.label_3241
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	je	.label_3242
.label_3241:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x10], rdx
	test	rdx, rcx
	jne	.label_3243
	mov	al, 1
	test	rdx, rdx
	je	.label_3242
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_3243:
	xor	eax, eax
.label_3242:
	ret	
.label_3240:
	push	rax
	mov	edi, OFFSET FLAT:.str_15
	mov	esi, OFFSET FLAT:.str.1_12
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x421730

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_3244
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_3244:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_3247
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_3246
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_3245
.label_3246:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_3245:
	mov	edx, dword ptr [rax]
.label_3247:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x421810

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_3249
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_3250
	cmp	byte ptr [rax + 1], 0
	je	.label_3248
.label_3250:
	mov	esi, OFFSET FLAT:.str.1_13
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_3249
.label_3248:
	xor	ebx, ebx
.label_3249:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x421850

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
	.align	32
	#Procedure 0x421880

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x421890

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
	jne	.label_3251
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_3251:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4218d0

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	cmp	byte ptr [rdi + 0x1c], 0
	jne	.label_3252
	mov	ecx, dword ptr [rdi + 0x10]
	mov	edx, dword ptr [rdi + 0x14]
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rdi + 0x14]
	cmp	ecx, dword ptr [rdi + 0x18]
	jne	.label_3253
	mov	byte ptr [rdi + 0x1c], 1
	ret	
.label_3253:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rdi + 0x14], ecx
	ret	
.label_3252:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x421900

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_14
	cmp	byte ptr [rcx], 0
	je	.label_3254
	mov	rax, rcx
.label_3254:
	add	rsp, 8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x421930
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_3255
	mov	edi, ebx
	call	iswcntrl
	test	eax, eax
	sete	al
	movzx	eax, al
.label_3255:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x421950
	.globl mb_copy
	.type mb_copy, @function
mb_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [rbx]
	lea	rax, [rbx + 0x18]
	cmp	rsi, rax
	jne	.label_3256
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_3256:
	mov	qword ptr [r14], rsi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	test	al, al
	mov	byte ptr [r14 + 0x10], al
	je	.label_3257
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x14], eax
.label_3257:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4219a0
	.globl is_basic
	.type is_basic, @function
is_basic:

	mov	eax, edi
	shr	eax, 3
	and	eax, 0x1c
	mov	eax,  dword ptr [dword ptr [rax + is_basic_table]]
	bt	eax, edi
	setb	al
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4219c0

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_3258
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_3258:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_3260
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x18
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_3259
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_3261
.label_3259:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_3261:
	mov	ecx, dword ptr [rax]
.label_3260:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x421aa0

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
	js	.label_3263
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_3262
	mov	dword ptr [r14], ebp
	jmp	.label_3263
.label_3262:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_3263:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x421af0

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
	ja	.label_3264
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
	jmp	.label_3265
.label_3264:
	mov	eax, ebx
.label_3265:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x421b40

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_3277
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_3277:
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
	ja	.label_3266
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_3278
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_3272
	test	esi, esi
	jne	.label_3266
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_3283
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_3285
.label_3266:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_3268
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_3272
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_3273
.label_3278:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_3267
.label_3272:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_3276
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_3279
.label_3276:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_3279:
	mov	edx, dword ptr [rax]
.label_3286:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
.label_3267:
	mov	ebp, eax
.label_3275:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_3273:
	cmp	eax, 6
	jne	.label_3268
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_3270
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_3282
.label_3268:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_3284
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_3281
.label_3283:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_3285:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	jmp	.label_3286
.label_3270:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_3282:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_3271
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_3274
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_3274
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_3275
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	al, 1
	jmp	.label_3269
.label_3274:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_3275
.label_3284:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_3281:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_3267
.label_3271:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_3269:
	test	al, al
	je	.label_3275
	test	ebp, ebp
	js	.label_3275
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_3280
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_3275
.label_3280:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_3275
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x421e20

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
	.align	32
	#Procedure 0x421e40

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
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]