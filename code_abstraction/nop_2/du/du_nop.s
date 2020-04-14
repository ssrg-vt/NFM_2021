	.section	.text
	.align	32
	#Procedure 0x402500

	.globl usage
	.type usage, @function
usage:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rsp, rsp
	mov	ebp, edi
	mov	rsp, rsp
	test	ebp, ebp
	jne	.label_7
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	lea	rsi, [rsi]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	lea	rsi, [rsi]
	call	__printf_chk
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	rsp, rsp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.56
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.6
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.10
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.12
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.17
	mov	rsp, rsp
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
	nop	
	mov	rdi, rax
	call	strncmp
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_8
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.70
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.13
	nop	
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.72
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.13
	mov	ecx, OFFSET FLAT:.str.73
	mov	rbp, rbp
	xor	eax, eax
	call	__printf_chk
	mov	rsp, rsp
	mov	edi, ebp
	lea	rdi, [rdi]
	call	exit
.label_7:
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	nop	
	mov	esi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rbx
	mov	rsp, rsp
	call	__fprintf_chk
	nop	
	mov	edi, ebp
	mov	rsp, rsp
	call	exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028d0

	.globl main
	.type main, @function
main:
	push	rbp
	nop	
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x178
	lea	rdi, [rdi]
	mov	r15, rsi
	mov	rbp, rbp
	mov	r12d, edi
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	movq	xmm0, rax
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x160], xmm0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15]
	nop	
	call	set_program_name
	mov	edi, 6
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_3
	call	setlocale
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.16
	mov	esi, OFFSET FLAT:.str.17_0
	nop	
	call	bindtextdomain
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.16
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	nop	
	call	new_exclude
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + exclude]],  rax
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.18_0
	call	getenv
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:human_output_opts
	nop	
	mov	edx, OFFSET FLAT:output_block_size
	mov	rdi, rax
	mov	rsp, rsp
	call	human_options
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	mov	dword ptr [rsp + 0xa4], 8
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x4c], 0x10
	xor	ebp, ebp
	lea	r13, [rsp + 0x70]
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0xc0], rax
	lea	rsi, [rsi]
	jmp	.label_59
	nop	word ptr [rax + rax]
.label_16:
	mov	bpl, cl
.label_59:
	mov	dword ptr [rsp + 0x70], 0xffffffff
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.19
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, r12d
	lea	rdi, [rdi]
	mov	rsi, r15
	nop	
	mov	r8, r13
	call	getopt_long
	cmp	eax, 0x72
	jg	.label_74
	cmp	eax, 0x4f
	jle	.label_75
	lea	rdi, [rdi]
	lea	ecx, [rax - 0x58]
	cmp	ecx, 0x15
	lea	rsi, [rsi]
	ja	.label_77
	nop	
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_80]]
.label_3408:
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + exclude]]
	nop	
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	mov	edi, OFFSET FLAT:add_exclude
	lea	rdi, [rdi]
	mov	ecx, 0x10000000
	mov	rbp, rbp
	mov	r8d, 0xa
	lea	rdi, [rdi]
	call	add_exclude_file
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	je	.label_14
	nop	
	call	__errno_location
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rsp + 0xa8], rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rsp, rsp
	call	quotearg_n_style_colon
	nop	
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, r14d
	call	error
	mov	rbp, rbp
	jmp	.label_14
	nop	word ptr [rax + rax]
.label_74:
	lea	rdi, [rdi]
	add	eax, -0x73
	lea	rdi, [rdi]
	cmp	eax, 0x14
	ja	.label_92
	mov	rsp, rsp
	mov	cl, 1
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_94]]
.label_3479:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:opt_threshold
	mov	r8d, OFFSET FLAT:.str.21
	lea	rdi, [rdi]
	call	xstrtoimax
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_98
	cmp	qword ptr [word ptr [rip + opt_threshold]],  0
	jne	.label_14
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2d
	mov	cl, bpl
	jne	.label_16
	jmp	.label_105
	nop	dword ptr [rax]
.label_75:
	mov	rbp, rbp
	cmp	eax, 0x43
	mov	rsp, rsp
	jg	.label_110
	mov	rsp, rsp
	cmp	eax, 0x2f
	mov	rsp, rsp
	jle	.label_114
	nop	
	cmp	eax, 0x30
	je	.label_116
	nop	
	cmp	eax, 0x42
	jne	.label_92
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, OFFSET FLAT:human_output_opts
	mov	edx, OFFSET FLAT:output_block_size
	lea	rsi, [rsi]
	call	human_options
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	mov	cl, bpl
	lea	rdi, [rdi]
	je	.label_16
	jmp	.label_130
.label_110:
	cmp	eax, 0x44
	je	.label_131
	cmp	eax, 0x48
	lea	rdi, [rdi]
	je	.label_131
	lea	rsi, [rsi]
	cmp	eax, 0x4c
	jne	.label_92
	nop	
	mov	dword ptr [rsp + 0x4c], 2
	mov	rsp, rsp
	jmp	.label_14
.label_131:
	mov	dword ptr [rsp + 0x4c], 0x11
	mov	rsp, rsp
	jmp	.label_14
.label_77:
	lea	rdi, [rdi]
	cmp	eax, 0x50
	je	.label_134
	cmp	eax, 0x53
	mov	rbp, rbp
	jne	.label_92
	mov	byte ptr [byte ptr [rip + opt_separate_dirs]],  1
	jmp	.label_14
.label_114:
	nop	
	cmp	eax, -1
	mov	rbp, rbp
	je	.label_136
	nop	
	cmp	eax, 0xffffff7d
	lea	rsi, [rsi]
	je	.label_9
	cmp	eax, 0xffffff7e
	je	.label_12
.label_92:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0xa8], rax
	jmp	.label_14
.label_116:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + opt_nul_terminate_output]],  1
	mov	rsp, rsp
	jmp	.label_14
.label_3480:
	or	dword ptr [rsp + 0xa4], 0x40
	jmp	.label_14
.label_3481:
	mov	byte ptr [byte ptr [rip + apparent_size]],  1
	jmp	.label_14
.label_3482:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + exclude]]
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	mov	edx, 0x10000000
	mov	rsp, rsp
	call	add_exclude
	jmp	.label_14
.label_3483:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_14
.label_3484:
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0x90
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + output_block_size]],  1
	lea	rdi, [rdi]
	jmp	.label_14
.label_3485:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + opt_time]],  1
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	test	rsi, rsi
	mov	rbp, rbp
	je	.label_31
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.24
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:time_args
	mov	ecx, OFFSET FLAT:time_types
	mov	rsp, rsp
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + time_types]]
.label_31:
	mov	dword ptr [dword ptr [rip + time_type]],  eax
	mov	edi, OFFSET FLAT:.str_2
	nop	
	call	getenv
	mov	rdi, rax
	lea	rdi, [rdi]
	call	tzalloc
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + localtz]],  rax
	jmp	.label_14
.label_3486:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	nop	
	mov	qword ptr [word ptr [rip + time_style]],  rax
	jmp	.label_14
.label_3487:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + opt_inodes]],  1
	jmp	.label_14
.label_3409:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + opt_all]],  1
	mov	rsp, rsp
	jmp	.label_14
.label_3410:
	mov	byte ptr [byte ptr [rip + apparent_size]],  1
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + output_block_size]],  1
	jmp	.label_14
.label_3411:
	nop	
	mov	byte ptr [byte ptr [rip + print_grand_total]],  1
	mov	rbp, rbp
	jmp	.label_14
.label_3412:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	nop	
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0xd0]
	mov	rbp, rbp
	call	xstrtoul
	test	eax, eax
	je	.label_64
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0xa8], rax
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	call	quote
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	error
	mov	rsp, rsp
	jmp	.label_14
.label_3413:
	nop	
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0xb0
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + output_block_size]],  1
	mov	rbp, rbp
	jmp	.label_14
.label_3414:
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + output_block_size]],  0x400
	lea	rsi, [rsi]
	jmp	.label_14
.label_3415:
	mov	byte ptr [byte ptr [rip + opt_count_all]],  1
	jmp	.label_14
.label_3416:
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0
	mov	qword ptr [word ptr [rip + output_block_size]],  0x100000
	mov	rbp, rbp
	jmp	.label_14
.label_134:
	mov	dword ptr [rsp + 0x4c], 0x10
	lea	rdi, [rdi]
	jmp	.label_14
.label_64:
	mov	rax, qword ptr [rsp + 0xd0]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + max_depth]],  rax
	mov	al, 1
	mov	qword ptr [rsp + 0xc0], rax
	nop	
.label_14:
	mov	cl, bpl
	jmp	.label_16
.label_136:
	nop	
	mov	rax, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	je	.label_91
	and	bpl, 1
	je	.label_36
	nop	
	mov	al,  byte ptr [byte ptr [rip + opt_all]]
	xor	al, 1
	test	al, 1
	nop	
	je	.label_95
.label_36:
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_97
	mov	rbp, qword ptr [rsp + 0xc0]
	and	bpl, 1
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + max_depth]]
	mov	rsp, rsp
	je	.label_60
	test	rbx, rbx
	jne	.label_60
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	xor	edi, edi
	nop	
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
	mov	rbx,  qword ptr [word ptr [rip + max_depth]]
.label_60:
	nop	
	test	bpl, bpl
	je	.label_111
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_113
.label_111:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + max_depth]],  0
.label_97:
	movzx	eax,  byte ptr [byte ptr [rip + opt_inodes]]
	and	eax, 1
	cmp	eax, 1
	mov	ebx, dword ptr [rsp + 0xa4]
	jne	.label_106
	movzx	eax,  byte ptr [byte ptr [rip + apparent_size]]
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_125
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
.label_125:
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + output_block_size]],  1
.label_106:
	movzx	eax,  byte ptr [byte ptr [rip + opt_time]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_29
	mov	rbp,  qword ptr [word ptr [rip + time_style]]
	test	rbp, rbp
	jne	.label_20
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.35
	call	getenv
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + time_style]],  rbp
	lea	rdi, [rdi]
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_17
	mov	esi, OFFSET FLAT:.str.8_0
	nop	
	mov	rdi, rbp
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_17
	movzx	eax, byte ptr [rbp]
	nop	
	cmp	eax, 0x2b
	jne	.label_18
	mov	rsp, rsp
	mov	esi, 0xa
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strchr
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_20
	mov	byte ptr [rax], 0
	jmp	.label_20
	nop	word ptr cs:[rax + rax]
.label_26:
	lea	rdi, [rdi]
	add	rbp, 6
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + time_style]],  rbp
.label_18:
	mov	esi, OFFSET FLAT:main.posix_prefix
	nop	
	mov	edx, 6
	mov	rbp, rbp
	mov	rdi, rbp
	nop	
	call	strncmp
	nop	
	test	eax, eax
	nop	
	je	.label_26
	jmp	.label_20
.label_17:
	mov	qword ptr [word ptr [rip + time_style]], OFFSET FLAT:.str.37
	lea	rsi, [rsi]
	mov	ebp, OFFSET FLAT:.str.37
.label_20:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2b
	jne	.label_28
	inc	rbp
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + time_format]],  rbp
	mov	rsp, rsp
	jmp	.label_29
.label_28:
	lea	rdi, [rdi]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.38
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:time_style_args
	nop	
	mov	ecx, OFFSET FLAT:time_style_types
	lea	rsi, [rsi]
	mov	r8d, 4
	nop	
	mov	rsi, rbp
	nop	
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + time_style_types]]
	cmp	eax, 2
	nop	
	je	.label_40
	lea	rdi, [rdi]
	cmp	eax, 1
	lea	rdi, [rdi]
	je	.label_41
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_29
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + time_format]], OFFSET FLAT:.str.39
	jmp	.label_29
.label_40:
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + time_format]], OFFSET FLAT:.str.2_0
	jmp	.label_29
.label_41:
	mov	qword ptr [word ptr [rip + time_format]], OFFSET FLAT:.str.40
.label_29:
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x50], 0
	lea	rsi, [rsi]
	je	.label_46
	mov	rsp, rsp
	cmp	eax, r12d
	mov	rsp, rsp
	jl	.label_50
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0x50]
	movzx	eax, byte ptr [r15]
	mov	rsp, rsp
	cmp	eax, 0x2d
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	jne	.label_53
	lea	rsi, [rsi]
	cmp	byte ptr [r15 + 1], 0
	lea	rsi, [rsi]
	je	.label_58
.label_53:
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_0
	lea	rsi, [rsi]
	mov	rdi, r15
	call	freopen_safer
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_62
.label_58:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	argv_iter_init_stream
	mov	r14, rax
	mov	al, 1
	nop	
	jmp	.label_67
.label_46:
	lea	rdi, [rdi]
	cmp	eax, r12d
	lea	rdi, [rdi]
	lea	rax, [r15 + rax*8]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x160]
	lea	rdi, [rdi]
	cmovl	rdi, rax
	mov	rbp, rbp
	call	argv_iter_init_argv
	mov	r14, rax
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	inc	eax
	cmp	eax, r12d
	lea	rdi, [rdi]
	setl	cl
	mov	rsp, rsp
	cmp	dword ptr [rsp + 0x4c], 2
	mov	rsp, rsp
	sete	al
	or	al, cl
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x50]
	mov	r12, qword ptr [rsp + 0xa8]
.label_67:
	mov	qword ptr [rsp + 0xb8], r14
	nop	
	mov	byte ptr [byte ptr [rip + hash_all]],  al
	mov	rbp, rbp
	test	r14, r14
	je	.label_83
	call	di_set_alloc
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + di_files]],  rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_83
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + opt_count_all]]
	mov	rbp, rbp
	and	al, 1
	mov	ecx, ebx
	mov	rbp, rbp
	or	ecx, 0x100
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rip + hash_all]],  0
	nop	
	cmove	ebx, ecx
	test	al, al
	cmovne	ebx, ecx
	mov	rsp, rsp
	lea	rsi, [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdi, r14
	call	argv_iter
	nop	
	mov	rbp, rax
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_89
	or	ebx, dword ptr [rsp + 0x4c]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xa4], ebx
	jmp	.label_45
.label_34:
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.51
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	nop	
	mov	edi, 4
	mov	rsi, rbp
	nop	
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	nop	
	call	error
	mov	al, 1
	lea	rdi, [rdi]
	jmp	.label_37
	nop	word ptr cs:[rax + rax]
.label_45:
	test	r15, r15
	nop	
	je	.label_100
	movzx	eax, byte ptr [r15]
	mov	rsp, rsp
	cmp	eax, 0x2d
	jne	.label_103
	mov	rbp, rbp
	cmp	byte ptr [r15 + 1], 0
	lea	rdi, [rdi]
	je	.label_104
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_37
	nop	word ptr [rax + rax]
.label_100:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_37
	nop	word ptr [rax + rax]
.label_103:
	xor	eax, eax
.label_37:
	mov	rbp, rbp
	mov	cl, byte ptr [rbp]
.label_39:
	mov	rsp, rsp
	test	cl, cl
	je	.label_119
	mov	rsp, rsp
	test	al, al
	je	.label_122
	xor	r12d, r12d
	nop	
	jmp	.label_11
	nop	word ptr cs:[rax + rax]
.label_119:
	nop	
	test	r15, r15
	je	.label_128
	mov	rdi, r14
	mov	rsp, rsp
	call	argv_iter_n_args
	nop	
	mov	r13, r14
	mov	r14, rax
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	rbp, rax
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str.53
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	r8, r14
	mov	r14, r13
	mov	rbp, rbp
	mov	r9, rbx
	call	error
	nop	
	jmp	.label_11
	nop	word ptr cs:[rax + rax]
.label_122:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa8], r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], r15
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + main.temp_argv]],  rbp
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:main.temp_argv
	lea	rdi, [rdi]
	xor	edx, edx
	mov	esi, dword ptr [rsp + 0xa4]
	nop	
	call	xfts_open
	nop	
	mov	rbx, rax
	mov	qword ptr [rsp + 0x40], rbx
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	rpl_fts_read
	mov	r15, rax
	mov	r12b, 1
	test	r15, r15
	mov	rsp, rsp
	je	.label_24
	nop	
	mov	r13b, 1
	jmp	.label_15
.label_128:
	xor	r12d, r12d
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	rsp, rsp
	call	error
	nop	
	jmp	.label_11
.label_104:
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp]
	cmp	ecx, 0x2d
	jne	.label_32
	nop	
	cmp	byte ptr [rbp + 1], 0
	je	.label_34
	xor	eax, eax
	jmp	.label_37
.label_32:
	nop	
	xor	eax, eax
	jmp	.label_39
.label_10:
	nop	
	mov	rdi, rbx
	mov	rsi, r15
	call	cycle_warning_required
	test	al, al
	mov	rbp, rbp
	je	.label_25
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x4c], r13b
	lea	rdi, [rdi]
	mov	r14, qword ptr [r15]
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [rip + di_mnt]],  0
	mov	rsp, rsp
	jne	.label_42
	call	di_set_alloc
	mov	qword ptr [word ptr [rip + di_mnt]],  rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_43
	xor	edi, edi
	nop	
	call	read_file_system_list
	mov	r13, rax
	mov	rsp, rsp
	test	r13, r13
	mov	rsp, rsp
	je	.label_42
	nop	word ptr cs:[rax + rax]
.label_68:
	test	byte ptr [r13 + 0x28], 3
	lea	rdi, [rdi]
	jne	.label_51
	mov	rbp, rbp
	mov	rsi, qword ptr [r13 + 8]
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdx, [rsp + 0xd0]
	nop	
	call	__xstat
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_51
	mov	rdi,  qword ptr [word ptr [rip + di_mnt]]
	mov	rsi, qword ptr [rsp + 0xd0]
	mov	rdx, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	call	di_set_insert
	test	eax, eax
	js	.label_43
	nop	dword ptr [rax + rax]
.label_51:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r13 + 0x30]
	lea	rdi, [rdi]
	mov	rdi, r13
	lea	rsi, [rsi]
	call	free_mount_entry
	test	rbp, rbp
	mov	r13, rbp
	mov	rbp, rbp
	jne	.label_68
.label_42:
	mov	rbp, rbp
	cmp	r14, r15
	lea	rdi, [rdi]
	mov	r13b, byte ptr [rsp + 0x4c]
	mov	rbp, rbp
	je	.label_70
	nop	word ptr cs:[rax + rax]
.label_82:
	mov	rdi,  qword ptr [word ptr [rip + di_mnt]]
	mov	rsi, qword ptr [r15 + 0x78]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r15 + 0x80]
	call	di_set_lookup
	lea	rdi, [rdi]
	test	eax, eax
	jg	.label_25
	mov	r15, qword ptr [r15 + 8]
	test	r15, r15
	mov	rsp, rsp
	je	.label_70
	nop	
	cmp	r15, r14
	nop	
	jne	.label_82
.label_70:
	xor	r12d, r12d
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.110
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbp, rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	nop	
	mov	rdx, qword ptr [rsp + 0xc0]
	call	quotearg_n_style_colon
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_87
	nop	dword ptr [rax + rax]
.label_15:
	nop	
	mov	rbp, qword ptr [r15 + 0x38]
	movzx	r14d, word ptr [r15 + 0x70]
	mov	rbp, rbp
	cmp	r14d, 6
	je	.label_88
	movzx	eax, r14w
	cmp	eax, 4
	jne	.label_35
	mov	ebx, dword ptr [r15 + 0x40]
	lea	rsi, [rsi]
	mov	r12d, r14d
	mov	r14, rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc0], r14
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.107
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	mov	rsp, rsp
	mov	r14d, r12d
	lea	rdi, [rdi]
	xor	r12d, r12d
	nop	
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	error
	lea	rsi, [rsi]
	jmp	.label_22
	nop	dword ptr [rax]
.label_88:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12b, 1
.label_22:
	movzx	eax,  byte ptr [byte ptr [rip + apparent_size]]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 1
	nop	
	jne	.label_99
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0xa8]
	test	rax, rax
	mov	ebp, 0
	cmovns	rbp, rax
	jmp	.label_108
	nop	word ptr cs:[rax + rax]
.label_99:
	mov	rsp, rsp
	mov	rbp, qword ptr [r15 + 0xb8]
	shl	rbp, 9
.label_108:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + time_type]]
	cmp	eax, 2
	je	.label_121
	test	eax, eax
	jne	.label_126
	mov	byte ptr [rsp + 0x4c], r13b
	nop	
	lea	rax, [r15 + 0xd0]
	lea	rcx, [r15 + 0xd8]
	lea	rsi, [rsi]
	jmp	.label_117
	nop	word ptr cs:[rax + rax]
.label_35:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + exclude]]
	mov	rsi, rbp
	call	excluded_file_name
	test	al, al
	jne	.label_120
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rsi, [rsi]
	cmp	r14d, 0xb
	mov	rsp, rsp
	jne	.label_133
	nop	
	mov	edx, 1
	mov	rdi, rbx
	nop	
	mov	rsi, r15
	mov	rsp, rsp
	call	rpl_fts_set
	nop	
	mov	rdi, rbx
	mov	rbp, rbp
	call	rpl_fts_read
	cmp	rax, r15
	jne	.label_137
	lea	rdi, [rdi]
	movzx	r14d, word ptr [r15 + 0x70]
.label_133:
	cmp	r14d, 0xd
	lea	rsi, [rsi]
	je	.label_23
	lea	rdi, [rdi]
	cmp	r14d, 0xa
	jne	.label_13
.label_23:
	nop	
	mov	r14d, dword ptr [r15 + 0x40]
	lea	rsi, [rsi]
	xor	r12d, r12d
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.109
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xc0]
	nop	
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, r14d
.label_87:
	mov	rdx, rbp
	call	error
	mov	rbp, rbp
	jmp	.label_25
	nop	word ptr cs:[rax + rax]
.label_121:
	mov	byte ptr [rsp + 0x4c], r13b
	lea	rax, [r15 + 0xc0]
	mov	rbp, rbp
	lea	rcx, [r15 + 0xc8]
	jmp	.label_117
	nop	dword ptr [rax + rax]
.label_126:
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x4c], r13b
	lea	rax, [r15 + 0xe0]
	mov	rbp, rbp
	lea	rcx, [r15 + 0xe8]
.label_117:
	mov	rbp, rbp
	mov	r13, qword ptr [rax]
	mov	rbx, qword ptr [rcx]
	mov	r15, qword ptr [r15 + 0x58]
	mov	qword ptr [rsp + 0x70], rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], 1
	mov	qword ptr [rsp + 0x80], r13
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rbx
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + process_file.n_alloc]]
	test	rsi, rsi
	je	.label_33
	mov	rdx,  qword ptr [word ptr [rip + prev_level]]
	cmp	r15, rdx
	nop	
	mov	rax, rbp
	mov	r9d, 1
	lea	rsi, [rsi]
	je	.label_27
	jbe	.label_44
	cmp	rsi, r15
	mov	rbp, rbp
	ja	.label_57
	mov	rax, r15
	mov	rbp, rbp
	shr	rax, 0x38
	jne	.label_43
	mov	rdi,  qword ptr [word ptr [rip + process_file.dulvl]]
	mov	rsp, rsp
	mov	rsi, r15
	lea	rdi, [rdi]
	shl	rsi, 7
	call	xrealloc
	mov	qword ptr [word ptr [rip + process_file.dulvl]],  rax
	lea	rdi, [rdi]
	lea	rax, [r15 + r15]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + process_file.n_alloc]],  rax
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [rip + prev_level]]
.label_57:
	lea	rsi, [rsi]
	lea	rsi, [rdx + 1]
	cmp	rsi, r15
	nop	
	mov	rax, rbp
	mov	rbp, rbp
	mov	r9d, 1
	nop	
	ja	.label_27
	mov	rax,  qword ptr [word ptr [rip + process_file.dulvl]]
	shl	rdx, 6
	lea	rax, [rax + rdx + 0x40]
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_61]]
	nop	
.label_63:
	movups	xmmword ptr [rax], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rax + 0x10], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rax + 0x20], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rax + 0x30], xmm1
	lea	rsi, [rsi]
	inc	rsi
	mov	rsp, rsp
	add	rax, 0x40
	mov	rsp, rsp
	cmp	rsi, r15
	lea	rdi, [rdi]
	jbe	.label_63
	jmp	.label_73
	nop	word ptr cs:[rax + rax]
.label_33:
	lea	rdi, [r15 + 0xa]
	mov	qword ptr [word ptr [rip + process_file.n_alloc]],  rdi
	mov	rbp, rbp
	mov	esi, 0x40
	call	xcalloc
	mov	qword ptr [word ptr [rip + process_file.dulvl]],  rax
.label_73:
	mov	rsp, rsp
	mov	rax, rbp
	mov	r9d, 1
	jmp	.label_27
.label_44:
	nop	
	mov	qword ptr [rsp + 0x38], rbx
	mov	rbp, rbp
	lea	rax, [rdx - 1]
	mov	rsp, rsp
	cmp	r15, rax
	mov	rbp, rbp
	jne	.label_81
	mov	rsi,  qword ptr [word ptr [rip + process_file.dulvl]]
	shl	rdx, 6
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsi + rdx]
	lea	rsi, [rsi]
	lea	rax, [rdi + rbp]
	nop	
	cmp	rbp, rax
	lea	rdi, [rdi]
	mov	rcx, -1
	cmova	rax, rcx
	mov	qword ptr [rsp + 0x70], rax
	mov	r8, qword ptr [rsi + rdx + 8]
	mov	rbp, rbp
	lea	r9, [r8 + 1]
	mov	qword ptr [rsp + 0x78], r9
	lea	r10, [rsi + rdx + 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsi + rdx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x90], rcx
	mov	r11, qword ptr [rsi + rdx + 0x18]
	cmp	r13, rcx
	jl	.label_84
	jg	.label_90
	mov	rcx, qword ptr [rsp + 0x38]
	nop	
	cmp	ecx, r11d
	jns	.label_90
.label_84:
	movups	xmm0, xmmword ptr [r10]
	lea	rcx, [rsp + 0x80]
	lea	rsi, [rsi]
	movups	xmmword ptr [rcx], xmm0
.label_90:
	mov	bl,  byte ptr [byte ptr [rip + opt_separate_dirs]]
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_93
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsi + rdx + 0x20]
	nop	
	add	rbx, rax
	lea	rsi, [rsi]
	cmp	rax, rbx
	mov	rbp, rbp
	mov	rax, rbx
	lea	rsi, [rsi]
	mov	rcx, -1
	cmova	rax, rcx
	mov	qword ptr [rsp + 0x70], rax
	add	r9, qword ptr [rsi + rdx + 0x28]
	mov	qword ptr [rsp + 0x78], r9
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsi + rdx + 0x30]
	cmp	qword ptr [rsp + 0x80], rbx
	mov	rsp, rsp
	jl	.label_96
	mov	rsp, rsp
	jg	.label_93
	mov	rcx, qword ptr [rsp + 0x88]
	mov	rbx, qword ptr [rsi + rdx + 0x38]
	mov	rsp, rsp
	cmp	ecx, ebx
	js	.label_96
.label_93:
	mov	qword ptr [rsp + 0xc8], r11
	mov	qword ptr [rsp + 0xb0], r10
	mov	rbp, rbp
	jmp	.label_112
.label_13:
	test	byte ptr [rbx + 0x48], 0x40
	je	.label_118
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_118
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [r15 + 0x78]
	mov	rsp, rsp
	jne	.label_120
.label_118:
	mov	al,  byte ptr [byte ptr [rip + opt_count_all]]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_127
	lea	rsi, [rsi]
	cmp	byte ptr [byte ptr [rip + hash_all]],  0
	lea	rsi, [rsi]
	jne	.label_129
	mov	eax, dword ptr [r15 + 0x90]
	mov	ecx, 0xf000
	mov	rbp, rbp
	and	eax, ecx
	cmp	eax, 0x4000
	je	.label_127
	cmp	qword ptr [r15 + 0x88], 2
	mov	rsp, rsp
	jb	.label_127
.label_129:
	mov	rdi,  qword ptr [word ptr [rip + di_files]]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [r15 + 0x80]
	lea	rsi, [rsi]
	call	di_set_insert
	test	eax, eax
	lea	rsi, [rsi]
	js	.label_43
	je	.label_120
.label_127:
	mov	r12b, 1
	cmp	r14d, 1
	lea	rsi, [rsi]
	je	.label_25
	mov	rsp, rsp
	cmp	r14d, 2
	je	.label_10
	lea	rdi, [rdi]
	cmp	r14d, 7
	mov	rbp, rbp
	jne	.label_22
	mov	rsp, rsp
	mov	ebx, dword ptr [r15 + 0x40]
	xor	r12d, r12d
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rcx, rax
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebx
	call	error
	mov	r14d, 7
	mov	rbp, rbp
	jmp	.label_22
.label_120:
	mov	r12b, 1
	cmp	r14d, 1
	lea	rdi, [rdi]
	jne	.label_25
	mov	rsp, rsp
	mov	edx, 4
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, r15
	mov	rbp, rbp
	call	rpl_fts_set
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	rpl_fts_read
	cmp	rax, r15
	nop	
	je	.label_25
	jmp	.label_30
.label_96:
	nop	
	mov	qword ptr [rsp + 0xc8], r11
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xb0], r10
	lea	rbx, [rsi + rdx + 0x30]
	movups	xmm0, xmmword ptr [rbx]
	mov	rbp, rbp
	lea	rcx, [rsp + 0x80]
	movups	xmmword ptr [rcx], xmm0
.label_112:
	lea	rsi, [rsi]
	mov	rbx, r15
	shl	rbx, 6
	lea	rcx, [rsi + rbx + 0x20]
	mov	qword ptr [rsp + 0x58], rcx
	mov	rcx, qword ptr [rsi + rbx + 0x20]
	add	rdi, rcx
	nop	
	cmp	rcx, rdi
	mov	rcx, -1
	lea	rdi, [rdi]
	cmova	rdi, rcx
	mov	rsp, rsp
	mov	qword ptr [rsi + rbx + 0x20], rdi
	lea	rcx, [rsi + rbx + 0x28]
	mov	qword ptr [rsp + 0x60], rcx
	mov	rbp, rbp
	add	r8, qword ptr [rsi + rbx + 0x28]
	mov	qword ptr [rsi + rbx + 0x28], r8
	lea	rdi, [rdi]
	lea	r11, [rsi + rbx + 0x30]
	nop	
	mov	r10, qword ptr [rsi + rbx + 0x30]
	cmp	r10, qword ptr [rsp + 0x90]
	jl	.label_38
	mov	qword ptr [rsp + 0x98], r11
	nop	
	mov	rcx, qword ptr [rsi + rbx + 0x38]
	jle	.label_47
	mov	r11, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	jmp	.label_52
.label_47:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x90], rcx
	mov	rcx, qword ptr [rsp + 0xc8]
	mov	r11, qword ptr [rsp + 0x90]
	lea	rdi, [rdi]
	cmp	r11d, ecx
	nop	
	mov	rcx, qword ptr [rsp + 0x90]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	jns	.label_52
.label_38:
	nop	
	lea	rbx, [rsi + rbx + 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rcx]
	mov	rbp, rbp
	movups	xmmword ptr [r11], xmm0
	lea	rdi, [rdi]
	mov	r10, qword ptr [r11]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx]
.label_52:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x90], rcx
	mov	rbp, rbp
	mov	rbx, qword ptr [rsi + rdx + 0x20]
	mov	rsp, rsp
	add	rbx, rdi
	cmp	rdi, rbx
	lea	rdi, [rdi]
	mov	rdi, -1
	cmova	rbx, rdi
	mov	rcx, qword ptr [rsp + 0x58]
	mov	qword ptr [rcx], rbx
	add	r8, qword ptr [rsi + rdx + 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x60]
	mov	qword ptr [rcx], r8
	cmp	r10, qword ptr [rsi + rdx + 0x30]
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x38]
	jl	.label_65
	jg	.label_27
	mov	rcx, qword ptr [rsi + rdx + 0x38]
	mov	rdi, qword ptr [rsp + 0x90]
	cmp	edi, ecx
	mov	rbp, rbp
	jns	.label_27
.label_65:
	mov	rsp, rsp
	lea	rcx, [rsi + rdx + 0x30]
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rcx]
	nop	
	movups	xmmword ptr [r11], xmm0
	nop	word ptr cs:[rax + rax]
.label_27:
	mov	qword ptr [word ptr [rip + prev_level]],  r15
	lea	rdi, [rdi]
	or	r14d, 2
	cmp	r14d, 6
	nop	
	jne	.label_71
	mov	rbp, rbp
	test	byte ptr [byte ptr [rip + opt_separate_dirs]],  1
	jne	.label_85
.label_71:
	mov	rdx,  qword ptr [word ptr [rip + process_file.dulvl]]
	lea	rsi, [rsi]
	mov	rsi, r15
	shl	rsi, 6
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx + rsi]
	lea	rdi, [rcx + rbp]
	cmp	rcx, rdi
	mov	rcx, -1
	cmova	rdi, rcx
	mov	qword ptr [rdx + rsi], rdi
	nop	
	inc	qword ptr [rdx + rsi + 8]
	mov	rsp, rsp
	cmp	qword ptr [rdx + rsi + 0x10], r13
	mov	rsp, rsp
	jl	.label_86
	lea	rdi, [rdi]
	jg	.label_85
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx + rsi + 0x18]
	cmp	ecx, ebx
	jns	.label_85
	nop	word ptr cs:[rax + rax]
.label_86:
	mov	rsp, rsp
	lea	rcx, [rdx + rsi + 0x10]
	nop	
	lea	rdx, [rdx + rsi + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rcx], r13
	mov	qword ptr [rdx], rbx
.label_85:
	mov	rcx,  qword ptr [word ptr [rip + tot_dui]]
	mov	rbp, rbp
	add	rbp, rcx
	mov	rsp, rsp
	cmp	rcx, rbp
	mov	rcx, -1
	cmova	rbp, rcx
	mov	qword ptr [word ptr [rip + tot_dui]],  rbp
	lea	rdi, [rdi]
	inc	qword ptr [word ptr [rip + label_54]]
	nop	
	cmp	qword ptr [word ptr [rip + label_55]],  r13
	jl	.label_56
	jg	.label_102
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + label_101]]
	cmp	ecx, ebx
	mov	rsp, rsp
	jns	.label_102
	nop	word ptr cs:[rax + rax]
.label_56:
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + label_55]],  r13
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + label_101]],  rbx
.label_102:
	cmp	r14d, 6
	mov	rdx,  qword ptr [word ptr [rip + max_depth]]
	mov	rbx, qword ptr [rsp + 0x40]
	mov	r13b, byte ptr [rsp + 0x4c]
	nop	
	jne	.label_115
	mov	rsp, rsp
	cmp	r15, rdx
	mov	rbp, rbp
	jbe	.label_78
.label_115:
	mov	rsp, rsp
	movzx	ecx,  byte ptr [byte ptr [rip + opt_all]]
	nop	
	and	ecx, 1
	cmp	ecx, 1
	mov	rsp, rsp
	jne	.label_124
	test	r15, r15
	je	.label_78
	cmp	r15, rdx
	lea	rsi, [rsi]
	ja	.label_107
	jmp	.label_78
.label_124:
	test	r15, r15
	nop	
	jne	.label_107
	nop	word ptr cs:[rax + rax]
.label_78:
	lea	rdi, [rdi]
	mov	cl,  byte ptr [byte ptr [rip + opt_inodes]]
	mov	rsp, rsp
	and	cl, 1
	lea	rsi, [rsi]
	cmovne	rax, r9
	mov	rcx,  qword ptr [word ptr [rip + opt_threshold]]
	test	rcx, rcx
	lea	rsi, [rsi]
	js	.label_132
	lea	rdi, [rdi]
	cmp	rax, rcx
	jb	.label_107
	jmp	.label_135
.label_132:
	neg	rcx
	mov	rbp, rbp
	cmp	rax, rcx
	nop	
	ja	.label_107
.label_135:
	nop	
	lea	rdi, [rsp + 0x70]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	call	print_size
.label_107:
	mov	rsp, rsp
	test	r12b, r12b
	nop	
	setne	r12b
.label_25:
	and	r12b, r13b
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	call	rpl_fts_read
	mov	r15, rax
	nop	
	test	r15, r15
	mov	r13b, r12b
	mov	rsp, rsp
	jne	.label_15
.label_24:
	mov	rsp, rsp
	call	__errno_location
	mov	r13, rax
	mov	ebp, dword ptr [r13]
	test	ebp, ebp
	mov	r15, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	je	.label_19
	mov	rbp, rbp
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.105
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 0x20]
	nop	
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebp
	mov	rdx, r14
	mov	rbp, rbp
	call	error
.label_19:
	nop	
	mov	qword ptr [word ptr [rip + prev_level]],  0
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	rpl_fts_close
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_21
	mov	ebx, dword ptr [r13]
	mov	rsp, rsp
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.106
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	nop	
	mov	esi, ebx
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	error
.label_21:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	and	al, r12b
	mov	r12, rax
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0xb8]
.label_11:
	mov	rdi, r14
	mov	rbp, rbp
	lea	rsi, [rsp + 0x6c]
	mov	rsp, rsp
	call	argv_iter
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	jne	.label_45
.label_89:
	mov	eax, dword ptr [rsp + 0x6c]
	cmp	eax, 2
	je	.label_123
	mov	rbp, rbp
	cmp	eax, 4
	mov	rsp, rsp
	jne	.label_48
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	mov	rdx, rbp
	mov	rsp, rsp
	call	error
.label_123:
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	call	argv_iter_free
	mov	rdi,  qword ptr [word ptr [rip + di_files]]
	call	di_set_free
	mov	rdi,  qword ptr [word ptr [rip + di_mnt]]
	test	rdi, rdi
	je	.label_66
	call	di_set_free
.label_66:
	test	r15, r15
	je	.label_69
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	nop	
	test	byte ptr [rdi], 0x20
	jne	.label_72
	call	rpl_fclose
	test	r12b, 1
	je	.label_69
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_69
	jmp	.label_76
.label_72:
	lea	rsi, [rsi]
	test	r12b, 1
	jne	.label_76
.label_69:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + print_grand_total]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 1
	jne	.label_79
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.55
	mov	edx, 5
	call	dcgettext
	mov	edi, OFFSET FLAT:tot_dui
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	call	print_size
.label_79:
	not	r12b
	and	r12b, 1
	movzx	eax, r12b
	nop	
	add	rsp, 0x178
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_9:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp + 0x10], 0
	nop	
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str.30
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.29
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, OFFSET FLAT:.str.17
	nop	
	mov	r8d, OFFSET FLAT:.str.27
	mov	rbp, rbp
	mov	r9d, OFFSET FLAT:.str.28
	xor	eax, eax
	mov	rbp, rbp
	call	version_etc
	xor	edi, edi
	lea	rsi, [rsi]
	call	exit
.label_12:
	xor	edi, edi
	mov	rsp, rsp
	call	usage
.label_81:
	mov	edi, OFFSET FLAT:.str.111
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.50
	lea	rdi, [rdi]
	mov	edx, 0x27d
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.process_file
	call	__assert_fail
.label_30:
	mov	edi, OFFSET FLAT:.str.108
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.50
	mov	rsp, rsp
	mov	edx, 0x22f
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.process_file
	nop	
	call	__assert_fail
.label_137:
	mov	edi, OFFSET FLAT:.str.108
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 0x20e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.process_file
	call	__assert_fail
.label_43:
	call	xalloc_die
.label_130:
	mov	esi, dword ptr [rsp + 0x70]
	mov	r8,  qword ptr [word ptr [rip + optarg]]
	mov	edx, 0x42
	jmp	.label_109
.label_91:
	lea	rdi, [rdi]
	mov	edi, 1
	call	usage
.label_95:
	xor	edi, edi
	mov	rbp, rbp
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
.label_48:
	cmp	eax, 3
	jne	.label_49
.label_83:
	call	xalloc_die
.label_98:
	mov	esi, dword ptr [rsp + 0x70]
	mov	rbp, rbp
	mov	r8,  qword ptr [word ptr [rip + optarg]]
	mov	edx, 0x74
.label_109:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	call	xstrtol_fatal
.label_50:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r15 + rax*8]
	mov	rbp, rbp
	call	quote
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbx
	nop	
	call	error
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.43
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	__fprintf_chk
	mov	edi, 1
	call	usage
.label_76:
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.54
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, r15
	call	quotearg_style
	nop	
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	nop	
	call	error
.label_62:
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	nop	
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rbp
	call	error
.label_113:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rcx, rbx
	lea	rsi, [rsi]
	call	error
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	call	usage
.label_49:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.49
	mov	esi, OFFSET FLAT:.str.50
	lea	rdi, [rdi]
	mov	edx, 0x438
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_105:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rcx
	nop	
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404580

	.globl print_size
	.type print_size, @function
print_size:
	mov	rbp, rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x2b8
	lea	rsi, [rsi]
	mov	r14, rsi
	nop	
	mov	rbx, rdi
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + opt_inodes]]
	nop	
	and	al, 1
	lea	rcx, [rbx + 8]
	test	al, al
	nop	
	cmove	rcx, rbx
	mov	rdi, qword ptr [rcx]
	mov	rbp, rbp
	cmp	rdi, -1
	mov	rsp, rsp
	je	.label_138
	lea	rsi, [rsi]
	mov	edx,  dword ptr [dword ptr [rip + human_output_opts]]
	nop	
	mov	r8,  qword ptr [word ptr [rip + output_block_size]]
	mov	rsp, rsp
	lea	rsi, [rsp + 0x10]
	nop	
	mov	ecx, 1
	call	human_readable
	nop	
	jmp	.label_143
.label_138:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.113
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
.label_143:
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	call	fputs_unlocked
	movzx	eax,  byte ptr [byte ptr [rip + opt_time]]
	mov	rbp, rbp
	and	eax, 1
	nop	
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_141
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	nop	
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_142
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 9
.label_140:
	nop	
	mov	r12,  qword ptr [word ptr [rip + time_format]]
	mov	r15,  qword ptr [word ptr [rip + localtz]]
	movups	xmm0, xmmword ptr [rbx + 0x10]
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsp]
	lea	rsi, [rsi]
	lea	rdx, [rsp + 0x10]
	mov	rdi, r15
	nop	
	call	localtime_rz
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_139
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	r8d, dword ptr [rsp + 8]
	lea	rdx, [rsp + 0x10]
	mov	rbp, rbp
	mov	rsi, r12
	mov	rcx, r15
	call	fprintftime
	jmp	.label_141
.label_139:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp]
	lea	rsi, [rsp + 0x2a0]
	nop	
	call	imaxtostr
	nop	
	mov	rbx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.114
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	r15, rax
	mov	rsp, rsp
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, r15
	call	error
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rbx
	call	fputs_unlocked
.label_141:
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + opt_nul_terminate_output]]
	xor	edx, edx
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	mov	ecx, 0xa
	mov	rsp, rsp
	cmovne	ecx, edx
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.112
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, r14
	mov	rsp, rsp
	call	__printf_chk
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	call	fflush_unlocked
	lea	rsi, [rsi]
	add	rsp, 0x2b8
	pop	rbx
	pop	r12
	nop	
	pop	r14
	mov	rbp, rbp
	pop	r15
	nop	
	ret	
.label_142:
	mov	esi, 9
	mov	rsp, rsp
	call	__overflow
	lea	rsi, [rsi]
	jmp	.label_140
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404790

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x4047a0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r13, rcx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbp
	lea	rsi, [rsi]
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_150
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], -1
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_144:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	jne	.label_145
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	je	.label_146
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_149
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rax, rax
	je	.label_147
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	lea	rdi, [rdi]
	add	rdi, rax
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r13
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	je	.label_145
.label_147:
	mov	rsp, rsp
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_145
.label_149:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbp
	nop	dword ptr [rax + rax]
.label_145:
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	lea	rsi, [rsi]
	inc	rbp
	add	r14, r13
	test	r15, r15
	nop	
	jne	.label_144
	lea	rsi, [rsi]
	jmp	.label_148
.label_150:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x10], rax
.label_148:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	mov	rsp, rsp
	cmove	rbp, qword ptr [rsp + 0x18]
.label_146:
	mov	rax, rbp
	add	rsp, 0x28
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x404920
	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:

	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_151
	mov	esi, OFFSET FLAT:.str.1_1
	nop	
	jmp	.label_152
.label_151:
	nop	
	mov	esi, OFFSET FLAT:.str_4
.label_152:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	rdx, r15
	call	quotearg_n_style
	nop	
	mov	r15, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	nop	
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	jmp	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x4049c0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	push	r15
	nop	
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	r14, rdx
	mov	rsp, rsp
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], rbx
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx]
	nop	
	test	rbx, rbx
	je	.label_155
	lea	rdi, [rdi]
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_158:
	test	r15, r15
	mov	rbp, rbp
	je	.label_157
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_154
.label_157:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.3_0
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_153
	nop	dword ptr [rax]
.label_154:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_153:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_158
.label_155:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_156
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_156:
	mov	rsp, rsp
	mov	esi, 0xa
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b40

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	lea	rsi, [rsi]
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r12
	mov	rcx, r15
	lea	rdi, [rdi]
	call	argmatch
	mov	rsp, rsp
	test	rax, rax
	jns	.label_160
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_161
	mov	esi, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	jmp	.label_159
.label_161:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_4
.label_159:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 8
	mov	rbp, rbp
	mov	rdx, r14
	call	quotearg_n_style
	nop	
	mov	r14, rax
	nop	
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, r15
	mov	rbp, rbp
	call	argmatch_valid
	mov	rsp, rsp
	call	rbx
	mov	rbp, rbp
	mov	rax, -1
.label_160:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c60
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	nop	
	mov	r14, rcx
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	nop	
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	mov	rsp, rsp
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_162
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_163:
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r15
	nop	
	mov	rdx, r14
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	mov	rax, r13
	nop	
	je	.label_162
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_163
.label_162:
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cf0

	.globl argv_iter_init_argv
	.type argv_iter_init_argv, @function
argv_iter_init_argv:
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rsp, rsp
	mov	edi, 0x30
	call	malloc
	xor	ecx, ecx
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_164
	nop	
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	mov	qword ptr [rax + 0x20], rbx
	mov	qword ptr [rax + 0x28], rbx
	mov	rbp, rbp
	mov	rcx, rax
.label_164:
	mov	rax, rcx
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d40

	.globl argv_iter_init_stream
	.type argv_iter_init_stream, @function
argv_iter_init_stream:
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	edi, 0x30
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_165
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rax + 0x18], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rax + 8], xmm0
	mov	rcx, rax
.label_165:
	nop	
	mov	rax, rcx
	nop	
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d90

	.globl argv_iter
	.type argv_iter, @function
argv_iter:
	push	r14
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rcx, qword ptr [rbx]
	mov	rbp, rbp
	test	rcx, rcx
	je	.label_166
	lea	rsi, [rsi]
	lea	rdi, [rbx + 0x10]
	lea	rsi, [rbx + 0x18]
	xor	edx, edx
	mov	rsp, rsp
	call	getdelim
	test	rax, rax
	js	.label_167
	mov	dword ptr [r14], 1
	mov	rsp, rsp
	inc	qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_168
.label_166:
	mov	rax, qword ptr [rbx + 0x28]
	nop	
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_169
	mov	dword ptr [r14], 1
	mov	rax, qword ptr [rbx + 0x28]
	lea	rcx, [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x28], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	jmp	.label_168
.label_167:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	feof
	test	eax, eax
	sete	al
	movzx	eax, al
	mov	rbp, rbp
	lea	eax, [rax + rax + 2]
	mov	dword ptr [r14], eax
	mov	rbp, rbp
	xor	eax, eax
	jmp	.label_168
.label_169:
	mov	rbp, rbp
	mov	dword ptr [r14], 2
	lea	rdi, [rdi]
	xor	eax, eax
.label_168:
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e50

	.globl argv_iter_n_args
	.type argv_iter_n_args, @function
argv_iter_n_args:
	mov	rbp, rbp
	cmp	qword ptr [rdi], 0
	je	.label_170
	nop	
	mov	rax, qword ptr [rdi + 8]
	nop	
	ret	
.label_170:
	mov	rax, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rdi + 0x20]
	mov	rbp, rbp
	sar	rax, 3
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e80

	.globl argv_iter_free
	.type argv_iter_free, @function
argv_iter_free:
	mov	rsp, rsp
	push	rbx
	nop	
	mov	rbx, rdi
	mov	rsp, rsp
	cmp	qword ptr [rbx], 0
	lea	rdi, [rdi]
	je	.label_171
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
.label_171:
	mov	rdi, rbx
	lea	rdi, [rdi]
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404eb0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404ec0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ed0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_173
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_172
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_172
.label_173:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_175
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_172:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_5
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_174
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rsp, rsp
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_175:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_174:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_2
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, rbx
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fd0

	.globl di_set_alloc
	.type di_set_alloc, @function
di_set_alloc:
	mov	rbp, rbp
	push	rbx
	mov	edi, 0x18
	lea	rsi, [rsi]
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_176
	mov	edi, 0xb
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:di_ent_hash
	nop	
	mov	ecx, OFFSET FLAT:di_ent_compare
	nop	
	mov	r8d, OFFSET FLAT:di_ent_free
	lea	rsi, [rsi]
	call	hash_initialize
	mov	qword ptr [rbx], rax
	test	rax, rax
	je	.label_177
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 8], xmm0
	lea	rsi, [rsi]
	jmp	.label_176
.label_177:
	mov	rdi, rbx
	mov	rbp, rbp
	call	free
	xor	ebx, ebx
.label_176:
	lea	rsi, [rsi]
	mov	rax, rbx
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405040

	.globl di_ent_hash
	.type di_ent_hash, @function
di_ent_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	lea	rdi, [rdi]
	mov	rax, rdx
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405060

	.globl di_ent_compare
	.type di_ent_compare, @function
di_ent_compare:
	nop
	mov	rax, qword ptr [rdi]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsi]
	lea	rdi, [rdi]
	sete	al
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405080

	.globl di_ent_free
	.type di_ent_free, @function
di_ent_free:
	mov	rsp, rsp
	push	rbx
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 8]
	mov	rbp, rbp
	call	hash_free
	nop	
	mov	rdi, rbx
	pop	rbx
	mov	rsp, rsp
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050b0

	.globl di_set_free
	.type di_set_free, @function
di_set_free:
	nop	
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	nop	
	call	hash_free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	lea	rdi, [rdi]
	pop	rbx
	nop	
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4050e0

	.globl di_set_insert
	.type di_set_insert, @function
di_set_insert:
	lea	rdi, [rdi]
	push	r15
	push	r14
	nop	
	push	r12
	nop	
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r14, rdx
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12 + 0x10]
	nop	
	test	rbx, rbx
	je	.label_178
	cmp	qword ptr [rbx], r15
	jne	.label_180
	nop	
	mov	r15, qword ptr [rbx + 8]
	nop	
	jmp	.label_183
.label_178:
	mov	edi, 0x10
	mov	rsp, rsp
	call	malloc
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	mov	qword ptr [r12 + 0x10], rbx
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_179
.label_180:
	mov	qword ptr [rbx], r15
	mov	rdi, qword ptr [r12]
	mov	rsi, rbx
	mov	rsp, rsp
	call	hash_insert
	test	rax, rax
	je	.label_179
	nop	
	cmp	rax, rbx
	je	.label_181
	mov	rsp, rsp
	mov	r15, qword ptr [rax + 8]
	jmp	.label_184
.label_181:
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x10], 0
	mov	edi, 0x3fd
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, OFFSET FLAT:di_ino_hash
	mov	rbp, rbp
	xor	ecx, ecx
	xor	r8d, r8d
	call	hash_initialize
	mov	r15, rax
.label_184:
	nop	
	mov	qword ptr [rbx + 8], r15
.label_183:
	lea	rsi, [rsi]
	test	r15, r15
	je	.label_179
	lea	rsi, [rsi]
	movabs	rax, 0x7ffffffffffffffe
	lea	rdi, [rdi]
	lea	rcx, [r14 - 1]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jb	.label_182
	mov	rbp, rbp
	mov	rdi, qword ptr [r12 + 8]
	mov	rbp, rbp
	test	rdi, rdi
	jne	.label_185
	inc	rax
	lea	rsi, [rsi]
	mov	rdi, rax
	call	ino_map_alloc
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 8], rdi
	test	rdi, rdi
	je	.label_179
.label_185:
	mov	rsi, r14
	nop	
	call	ino_map_insert
	mov	r14, rax
	mov	rbp, rbp
	cmp	r14, -1
	je	.label_179
.label_182:
	mov	rbp, rbp
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r14
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r14
	pop	r15
	jmp	hash_insert_if_absent
.label_179:
	nop	
	mov	eax, 0xffffffff
	mov	rbp, rbp
	add	rsp, 8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405240

	.globl di_set_lookup
	.type di_set_lookup, @function
di_set_lookup:
	mov	rsp, rsp
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	push	rax
	lea	rsi, [rsi]
	mov	r14, rdx
	mov	rbp, rsi
	mov	r15, rdi
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_186
	lea	rdi, [rdi]
	cmp	qword ptr [rbx], rbp
	mov	rsp, rsp
	jne	.label_193
	mov	r12, qword ptr [rbx + 8]
	jmp	.label_187
.label_186:
	mov	edi, 0x10
	mov	rbp, rbp
	call	malloc
	nop	
	mov	rbx, rax
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], rbx
	mov	r13d, 0xffffffff
	test	rbx, rbx
	je	.label_189
.label_193:
	mov	rbp, rbp
	mov	qword ptr [rbx], rbp
	mov	rdi, qword ptr [r15]
	lea	rdi, [rdi]
	mov	rsi, rbx
	call	hash_insert
	nop	
	mov	r13d, 0xffffffff
	nop	
	test	rax, rax
	mov	rsp, rsp
	je	.label_189
	lea	rsi, [rsi]
	cmp	rax, rbx
	lea	rsi, [rsi]
	je	.label_190
	nop	
	mov	r12, qword ptr [rax + 8]
	nop	
	jmp	.label_191
.label_190:
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x3fd
	nop	
	xor	esi, esi
	mov	edx, OFFSET FLAT:di_ino_hash
	xor	ecx, ecx
	lea	rsi, [rsi]
	xor	r8d, r8d
	lea	rdi, [rdi]
	call	hash_initialize
	mov	r12, rax
.label_191:
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], r12
.label_187:
	lea	rdi, [rdi]
	mov	r13d, 0xffffffff
	test	r12, r12
	je	.label_189
	movabs	rdi, 0x7ffffffffffffffe
	nop	
	lea	rax, [r14 - 1]
	mov	rbp, rbp
	cmp	rax, rdi
	lea	rdi, [rdi]
	jb	.label_192
	mov	rax, qword ptr [r15 + 8]
	mov	rbp, rbp
	test	rax, rax
	jne	.label_188
	lea	rsi, [rsi]
	inc	rdi
	lea	rsi, [rsi]
	call	ino_map_alloc
	mov	qword ptr [r15 + 8], rax
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_189
.label_188:
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, r14
	nop	
	call	ino_map_insert
	mov	r14, rax
	cmp	r14, -1
	je	.label_189
.label_192:
	mov	rbp, rbp
	mov	rdi, r12
	nop	
	mov	rsi, r14
	call	hash_lookup
	mov	rbp, rbp
	test	rax, rax
	nop	
	setne	al
	movzx	r13d, al
.label_189:
	mov	eax, r13d
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rsp, rsp
	pop	r13
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4053c0

	.globl di_ino_hash
	.type di_ino_hash, @function
di_ino_hash:
	xor	edx, edx
	mov	rax, rdi
	mov	rbp, rbp
	div	rsi
	mov	rbp, rbp
	mov	rax, rdx
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4053e0
	.globl exclude_add_pattern_buffer
	.type exclude_add_pattern_buffer, @function
exclude_add_pattern_buffer:

	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	edi, 0x10
	lea	rsi, [rsi]
	call	xmalloc
	mov	qword ptr [rax + 8], r14
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 8], rax
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405430
	.globl fnmatch_pattern_has_wildcards
	.type fnmatch_pattern_has_wildcards, @function
fnmatch_pattern_has_wildcards:

	mov	rbp, rbp
	mov	eax, esi
	mov	rbp, rbp
	and	eax, 0x8000000
	lea	rdi, [rdi]
	mov	r8d, esi
	and	r8d, 2
	and	esi, 0x20
	jmp	.label_197
.label_201:
	movzx	ecx, dl
	mov	rbp, rbp
	add	rdi, rcx
	nop	word ptr cs:[rax + rax]
.label_197:
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rdi]
	inc	rdi
	mov	rbp, rbp
	cmp	edx, 0x3e
	mov	rbp, rbp
	jg	.label_202
	mov	rsp, rsp
	cmp	edx, 0x29
	jg	.label_204
	lea	ecx, [rdx - 0x28]
	cmp	ecx, 2
	jb	.label_198
	cmp	edx, 0x21
	lea	rdi, [rdi]
	je	.label_195
	nop	
	test	edx, edx
	jne	.label_197
	mov	rsp, rsp
	jmp	.label_200
	nop	word ptr cs:[rax + rax]
.label_202:
	cmp	edx, 0x5b
	mov	rsp, rsp
	jg	.label_203
	cmp	edx, 0x40
	je	.label_195
	cmp	edx, 0x3f
	je	.label_196
	mov	rsp, rsp
	cmp	edx, 0x5b
	jne	.label_197
	nop	
	jmp	.label_196
	nop	word ptr cs:[rax + rax]
.label_204:
	nop	
	cmp	edx, 0x2b
	je	.label_195
	mov	rbp, rbp
	cmp	edx, 0x2e
	je	.label_198
	cmp	edx, 0x2a
	mov	rbp, rbp
	jne	.label_197
	jmp	.label_196
	nop	dword ptr [rax]
.label_203:
	lea	rsi, [rsi]
	cmp	edx, 0x5c
	je	.label_194
	cmp	edx, 0x7d
	mov	rbp, rbp
	je	.label_198
	cmp	edx, 0x7b
	nop	
	jne	.label_197
	nop	word ptr [rax + rax]
.label_198:
	test	eax, eax
	je	.label_197
	jmp	.label_196
.label_195:
	test	esi, esi
	mov	rsp, rsp
	je	.label_197
	movzx	ecx, byte ptr [rdi]
	cmp	ecx, 0x28
	mov	rbp, rbp
	jne	.label_197
	jmp	.label_196
.label_194:
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_197
	test	r8d, r8d
	mov	rbp, rbp
	jne	.label_199
	cmp	byte ptr [rdi], 0
	lea	rdi, [rdi]
	setne	dl
	mov	rsp, rsp
	jmp	.label_201
.label_199:
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	jmp	.label_201
.label_196:
	mov	al, 1
	lea	rdi, [rdi]
	ret	
.label_200:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x405580

	.globl new_exclude
	.type new_exclude, @function
new_exclude:
	nop	
	mov	edi, 0x10
	jmp	xzalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405590
	.globl free_exclude
	.type free_exclude, @function
free_exclude:

	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	mov	r14, rdi
	lea	rdi, [rdi]
	mov	r15, qword ptr [r14]
	jmp	.label_210
	nop	dword ptr [rax]
.label_206:
	mov	rdi, r12
	mov	rbp, rbp
	call	free
.label_210:
	mov	rsp, rsp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_213
	lea	rsi, [rsi]
	mov	r12, r15
	mov	rbp, rbp
	mov	r15, qword ptr [r12]
	mov	eax, dword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_207
	cmp	eax, 1
	jne	.label_206
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x20]
	nop	
	test	rax, rax
	je	.label_208
	mov	rbp, rbp
	mov	ebx, 8
	mov	rsp, rsp
	xor	r13d, r13d
	nop	word ptr [rax + rax]
.label_209:
	mov	rdi, qword ptr [r12 + 0x10]
	nop	
	test	byte ptr [rdi + rbx - 5], 8
	je	.label_211
	mov	rsp, rsp
	add	rdi, rbx
	call	rpl_regfree
	mov	rax, qword ptr [r12 + 0x20]
.label_211:
	lea	rsi, [rsi]
	inc	r13
	add	rbx, 0x48
	cmp	r13, rax
	jb	.label_209
.label_208:
	nop	
	mov	rdi, qword ptr [r12 + 0x10]
	nop	
	call	free
	jmp	.label_206
	nop	dword ptr [rax]
.label_207:
	mov	rdi, qword ptr [r12 + 0x10]
	call	hash_free
	mov	rbp, rbp
	jmp	.label_206
.label_213:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_205
	nop	
.label_212:
	mov	r15, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	test	r15, r15
	mov	rbx, r15
	nop	
	jne	.label_212
.label_205:
	mov	rdi, r14
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056c0
	.globl exclude_fnmatch
	.type exclude_fnmatch, @function
exclude_fnmatch:

	push	rbp
	lea	rdi, [rdi]
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	r15d, edx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	r14, rdi
	mov	eax, OFFSET FLAT:fnmatch
	mov	ebp, OFFSET FLAT:fnmatch_no_wildcards
	test	r15d, 0x10000000
	cmovne	rbp, rax
	mov	rbp, rbp
	call	rbp
	mov	ecx, eax
	mov	rbp, rbp
	test	ecx, ecx
	sete	al
	nop	
	test	r15d, 0x40000000
	lea	rsi, [rsi]
	jne	.label_215
	nop	
	mov	dl, byte ptr [rbx]
	test	ecx, ecx
	setne	cl
	test	dl, dl
	je	.label_215
	lea	rdi, [rdi]
	test	cl, cl
	lea	rdi, [rdi]
	je	.label_215
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_214:
	lea	rsi, [rsi]
	movzx	ecx, dl
	nop	
	cmp	ecx, 0x2f
	jne	.label_216
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x2f
	je	.label_216
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, rbx
	mov	rbp, rbp
	mov	edx, r15d
	call	rbp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	sete	al
.label_216:
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_215
	mov	rbp, rbp
	mov	dl, byte ptr [rbx]
	mov	rbp, rbp
	inc	rbx
	test	dl, dl
	jne	.label_214
.label_215:
	and	al, 1
	mov	rsp, rsp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057a0

	.globl fnmatch_no_wildcards
	.type fnmatch_no_wildcards, @function
fnmatch_no_wildcards:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	r15, rdi
	mov	eax, edx
	and	eax, 0x10
	lea	rdi, [rdi]
	test	dl, 8
	jne	.label_218
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rsi, r14
	add	rsp, 8
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_220
	nop	
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	nop	
	jmp	mbscasecmp
.label_218:
	nop	
	test	eax, eax
	je	.label_222
	mov	rsp, rsp
	mov	rdi, r14
	call	xstrdup
	lea	rsi, [rsi]
	mov	r14, rax
	mov	esi, 0x2f
	mov	rdi, r14
	jmp	.label_217
.label_221:
	mov	rsp, rsp
	mov	byte ptr [rbx], 0x2f
	nop	
	inc	rbx
	mov	esi, 0x2f
	mov	rdi, rbx
.label_217:
	mov	rbp, rbp
	call	strchr
	mov	rbx, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_224
	mov	rsp, rsp
	mov	byte ptr [rbx], 0
	nop	
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rsp, rsp
	call	mbscasecmp
	mov	ebp, eax
	test	ebp, ebp
	mov	rsp, rsp
	jg	.label_221
	lea	rdi, [rdi]
	jmp	.label_223
.label_220:
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	jmp	strcmp
.label_222:
	mov	rdi, r15
	call	strlen
	mov	rsp, rsp
	mov	rbx, rax
	nop	
	mov	rdi, r15
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, rbx
	nop	
	call	strncmp
	mov	rbp, rbp
	mov	ebp, eax
	test	ebp, ebp
	lea	rdi, [rdi]
	jne	.label_219
	nop	
	movsx	eax, byte ptr [r14 + rbx]
	lea	rsi, [rsi]
	xor	ebp, ebp
	cmp	eax, 0x2f
	lea	rsi, [rsi]
	cmovne	ebp, eax
	jmp	.label_219
.label_224:
	mov	rbp, rbp
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r14
	call	mbscasecmp
	mov	ebp, eax
.label_223:
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	call	free
.label_219:
	lea	rdi, [rdi]
	mov	eax, ebp
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058f0

	.globl excluded_file_name
	.type excluded_file_name, @function
excluded_file_name:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r14
	mov	rax, qword ptr [rdi]
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_238
	lea	rdi, [rdi]
	lea	rcx, [r14 + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x10], rcx
.label_245:
	mov	r15, rax
	mov	r13, qword ptr [r15 + 8]
	test	r13d, r13d
	nop	
	je	.label_247
	mov	rbx, qword ptr [r15 + 0x20]
	mov	qword ptr [rsp + 0x30], rbx
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_240
	mov	rbp, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x18], r15
	mov	rsp, rsp
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_236:
	mov	rsp, rsp
	lea	rax, [r13 + r13*8]
	mov	r12d, dword ptr [rbp + rax*8]
	test	r12d, 0x8000000
	nop	
	lea	rdi, [rbp + rax*8 + 8]
	jne	.label_225
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rdi]
	mov	rsp, rsp
	test	r12d, 0x10000000
	mov	r15d, OFFSET FLAT:fnmatch_no_wildcards
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:fnmatch
	lea	rsi, [rsi]
	cmovne	r15, rax
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rsi, r14
	mov	edx, r12d
	mov	rbp, rbp
	call	r15
	mov	rbp, rbp
	test	eax, eax
	sete	cl
	test	r12d, 0x40000000
	lea	rsi, [rsi]
	jne	.label_239
	mov	dl, byte ptr [r14]
	nop	
	test	eax, eax
	setne	al
	mov	rbp, rbp
	test	dl, dl
	nop	
	je	.label_239
	test	al, al
	mov	rbx, qword ptr [rsp + 0x28]
	je	.label_239
	nop	word ptr cs:[rax + rax]
.label_230:
	nop	
	movzx	eax, dl
	cmp	eax, 0x2f
	mov	rbp, rbp
	jne	.label_231
	nop	
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2f
	je	.label_231
	nop	
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rsp, rsp
	mov	edx, r12d
	mov	rsp, rsp
	call	r15
	nop	
	test	eax, eax
	sete	cl
.label_231:
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_239
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbx]
	inc	rbx
	mov	rbp, rbp
	test	dl, dl
	jne	.label_230
	nop	word ptr cs:[rax + rax]
.label_239:
	xor	r12d, r12d
	test	cl, 1
	nop	
	mov	r14, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x30]
	nop	
	mov	rbp, qword ptr [rsp + 0x20]
	nop	
	je	.label_244
	mov	rsp, rsp
	jmp	.label_246
	nop	word ptr cs:[rax + rax]
.label_225:
	xor	r12d, r12d
	xor	edx, edx
	xor	ecx, ecx
	lea	rdi, [rdi]
	xor	r8d, r8d
	mov	rsi, r14
	call	rpl_regexec
	nop	
	test	eax, eax
	nop	
	je	.label_233
.label_244:
	lea	rdi, [rdi]
	inc	r13
	cmp	r13, rbx
	mov	rsp, rsp
	jb	.label_236
	lea	rsi, [rsi]
	jmp	.label_228
	nop	dword ptr [rax]
.label_247:
	mov	rbp, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_243
	shr	r13, 0x20
	mov	rsp, rsp
	jmp	.label_232
.label_243:
	nop	
	mov	rdi, r14
	call	strlen
	lea	rdi, [rax + 1]
	call	xmalloc
	mov	rsp, rsp
	mov	rbp, rax
	mov	r13d, dword ptr [r15 + 0xc]
.label_232:
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r14
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rbp
	mov	rbx, qword ptr [r15 + 0x10]
	mov	qword ptr [rsp + 0x18], r15
	nop	
	mov	ecx, r13d
	and	ecx, 8
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x30], ecx
	and	r13d, 0x40000000
.label_241:
	mov	rdi, rbp
	mov	rsi, r14
	lea	rdi, [rdi]
	call	strcpy
	nop	
	mov	rdi, rbx
	nop	
	mov	rsi, rbp
	call	hash_lookup
	mov	rsp, rsp
	xor	r12d, r12d
	test	rax, rax
	jne	.label_242
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x30], 0
	mov	r15, qword ptr [rsp + 0x10]
	nop	
	je	.label_226
	nop	dword ptr [rax]
.label_235:
	mov	esi, 0x2f
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsp, rsp
	call	strrchr
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_226
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	mov	rdi, rbx
	mov	rsi, r15
	call	hash_lookup
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_235
	jmp	.label_234
	nop	dword ptr [rax]
.label_226:
	nop	
	test	r13d, r13d
	lea	rdi, [rdi]
	jne	.label_237
	mov	esi, 0x2f
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strchr
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	lea	r14, [rax + 1]
	mov	rbp, qword ptr [rsp + 0x10]
	jne	.label_241
.label_237:
	mov	r14, qword ptr [rsp + 8]
.label_228:
	mov	r15, qword ptr [rsp + 0x18]
.label_240:
	mov	rbp, rbp
	mov	rax, qword ptr [r15]
	mov	r12d, 1
	test	rax, rax
	mov	rbp, rbp
	jne	.label_245
	mov	rsp, rsp
	jmp	.label_227
.label_238:
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_229
.label_234:
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jmp	.label_227
.label_246:
	mov	r15, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jmp	.label_227
.label_233:
	mov	r15, qword ptr [rsp + 0x18]
	jmp	.label_227
.label_242:
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x18]
.label_227:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	call	free
	mov	eax, dword ptr [r15 + 0xc]
	mov	rsp, rsp
	shr	eax, 0x1d
	not	eax
	and	eax, 1
	cmp	r12d, eax
	mov	rbp, rbp
	setne	al
.label_229:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c80

	.globl add_exclude
	.type add_exclude, @function
add_exclude:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x18
	mov	r13d, edx
	mov	r14, rdi
	test	r13d, 0x18000000
	je	.label_248
	lea	rsi, [rsi]
	mov	ebp, r13d
	and	ebp, 0x8000000
	lea	rsi, [rsi]
	mov	eax, r13d
	mov	rsp, rsp
	and	eax, 2
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	and	ecx, 0x20
	mov	rsp, rsp
	mov	rdx, rsi
	jmp	.label_261
.label_278:
	lea	rsi, [rsi]
	movzx	edi, dil
	lea	rsi, [rsi]
	add	rdx, rdi
	nop	word ptr [rax + rax]
.label_261:
	movsx	ebx, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	cmp	ebx, 0x3e
	mov	rbp, rbp
	jg	.label_254
	mov	rbp, rbp
	cmp	ebx, 0x29
	lea	rsi, [rsi]
	jg	.label_249
	lea	edi, [rbx - 0x28]
	mov	rsp, rsp
	cmp	edi, 2
	jb	.label_253
	lea	rsi, [rsi]
	cmp	ebx, 0x21
	mov	rsp, rsp
	je	.label_258
	test	ebx, ebx
	jne	.label_261
	nop	
	jmp	.label_248
	nop	word ptr cs:[rax + rax]
.label_254:
	cmp	ebx, 0x5b
	jg	.label_266
	mov	rbp, rbp
	cmp	ebx, 0x40
	mov	rbp, rbp
	je	.label_258
	cmp	ebx, 0x3f
	lea	rsi, [rsi]
	je	.label_252
	cmp	ebx, 0x5b
	mov	rbp, rbp
	jne	.label_261
	jmp	.label_252
	nop	dword ptr [rax]
.label_249:
	mov	rbp, rbp
	cmp	ebx, 0x2b
	je	.label_258
	cmp	ebx, 0x2e
	je	.label_253
	nop	
	cmp	ebx, 0x2a
	lea	rsi, [rsi]
	jne	.label_261
	jmp	.label_252
	nop	dword ptr [rax]
.label_266:
	cmp	ebx, 0x5c
	nop	
	je	.label_257
	mov	rbp, rbp
	cmp	ebx, 0x7d
	mov	rsp, rsp
	je	.label_253
	mov	rsp, rsp
	cmp	ebx, 0x7b
	nop	
	jne	.label_261
	nop	
.label_253:
	mov	rsp, rsp
	test	ebp, ebp
	je	.label_261
	mov	rbp, rbp
	jmp	.label_252
.label_258:
	mov	rbp, rbp
	test	ecx, ecx
	mov	rbp, rbp
	je	.label_261
	movzx	edi, byte ptr [rdx]
	nop	
	cmp	edi, 0x28
	jne	.label_261
	jmp	.label_252
.label_257:
	test	ebp, ebp
	mov	rsp, rsp
	jne	.label_261
	nop	
	test	eax, eax
	jne	.label_276
	cmp	byte ptr [rdx], 0
	setne	dil
	nop	
	jmp	.label_278
.label_276:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	jmp	.label_278
.label_252:
	mov	qword ptr [rsp + 8], rsi
	mov	rbx, qword ptr [r14]
	test	rbx, rbx
	je	.label_250
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_250
	lea	rsi, [rsi]
	shr	rax, 0x20
	nop	
	xor	eax, r13d
	test	eax, 0x20000000
	lea	rdi, [rdi]
	je	.label_260
.label_250:
	lea	rsi, [rsi]
	mov	edi, 0x28
	call	xzalloc
	mov	rbx, rax
	mov	rbp, rbp
	mov	dword ptr [rbx + 8], 1
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 0xc], r13d
	mov	rbp, rbp
	mov	rax, qword ptr [r14]
	mov	qword ptr [rbx], rax
	mov	qword ptr [r14], rbx
.label_260:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x20]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbx + 0x18]
	jne	.label_275
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x10]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_279
	lea	rsi, [rsi]
	movabs	rcx, 0x12f684bda12f684
	cmp	rax, rcx
	nop	
	jae	.label_251
	mov	rcx, rax
	shr	rcx, 1
	lea	rcx, [rax + rcx + 1]
	lea	rdi, [rdi]
	jmp	.label_267
.label_248:
	mov	rbx, qword ptr [r14]
	test	rbx, rbx
	je	.label_265
	mov	rax, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_265
	lea	rdi, [rdi]
	shr	rax, 0x20
	mov	rsp, rsp
	xor	eax, r13d
	test	eax, 0x60000018
	je	.label_268
.label_265:
	mov	edi, 0x28
	mov	rbp, rsi
	lea	rsi, [rsi]
	call	xzalloc
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsp, rsp
	mov	dword ptr [rbx + 8], 0
	mov	dword ptr [rbx + 0xc], r13d
	mov	eax, r13d
	and	eax, 0x10
	shr	eax, 4
	mov	eax, OFFSET FLAT:string_hasher_ci
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:string_hasher
	nop	
	cmovne	rdx, rax
	mov	eax, OFFSET FLAT:string_compare_ci
	mov	ecx, OFFSET FLAT:string_compare
	cmovne	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:string_free
	call	hash_initialize
	mov	rbp, rbp
	mov	rsi, rbp
	mov	qword ptr [rbx + 0x10], rax
	mov	rax, qword ptr [r14]
	mov	qword ptr [rbx], rax
	mov	rbp, rbp
	mov	qword ptr [r14], rbx
.label_268:
	mov	rsp, rsp
	mov	rdi, rsi
	call	xstrdup
	mov	rbp, rbp
	mov	rbp, rax
	lea	rsi, [rsi]
	and	r13d, 0x10000002
	cmp	r13d, 0x10000000
	nop	
	jne	.label_272
	nop	
	mov	rax, rbp
	lea	rsi, [rsi]
	mov	rcx, rbp
	nop	word ptr cs:[rax + rax]
.label_271:
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rcx]
	mov	rbp, rbp
	cmp	edx, 0x5c
	jne	.label_274
	mov	rbp, rbp
	cmp	byte ptr [rcx + 1], 0
	lea	rsi, [rsi]
	setne	sil
	mov	rsp, rsp
	movzx	edx, sil
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rdx]
	jmp	.label_259
	nop	dword ptr [rax + rax]
.label_274:
	xor	esi, esi
.label_259:
	movzx	esi, sil
	lea	rcx, [rcx + rsi + 1]
	lea	rsi, [rsi]
	mov	byte ptr [rax], dl
	inc	rax
	test	dl, dl
	jne	.label_271
.label_272:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rsi, rbp
	call	hash_insert
	nop	
	cmp	rax, rbp
	mov	rsp, rsp
	je	.label_256
	mov	rdi, rbp
	add	rsp, 0x18
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	jmp	free
.label_275:
	mov	r12, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	jmp	.label_262
.label_279:
	mov	rbp, rbp
	test	rax, rax
	mov	ecx, 1
	mov	rbp, rbp
	cmovne	rcx, rax
	lea	rsi, [rsi]
	movabs	rax, 0x1c71c71c71c71c8
	lea	rdi, [rdi]
	cmp	rcx, rax
	jae	.label_263
.label_267:
	mov	qword ptr [rbx + 0x18], rcx
	mov	rbp, rbp
	shl	rcx, 3
	mov	rbp, rbp
	lea	rsi, [rcx + rcx*8]
	call	xrealloc
	mov	r12, rax
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x10], r12
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x20]
.label_262:
	mov	rbp, rbp
	lea	r15, [rax + 1]
	nop	
	test	ebp, ebp
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x20], r15
	lea	rbp, [rax + rax*8]
	lea	rsi, [rsi]
	mov	dword ptr [r12 + rbp*8], r13d
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 8]
	nop	
	jne	.label_270
	test	r13d, 0x4000000
	je	.label_255
	mov	rsp, rsp
	mov	rdi, rdx
	mov	rsp, rsp
	call	xstrdup
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	mov	edi, 0x10
	call	xmalloc
	mov	rbp, rbp
	mov	rdx, rbx
	mov	qword ptr [rax + 8], rdx
	nop	
	mov	rcx, qword ptr [r14 + 8]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 8], rax
.label_255:
	lea	rdi, [rdi]
	mov	qword ptr [r12 + rbp*8 + 8], rdx
	jmp	.label_256
.label_270:
	lea	rdi, [rdi]
	mov	r14d, r13d
	lea	rdi, [rdi]
	shr	r14d, 3
	and	r14d, 2
	lea	rdi, [rdi]
	or	r14d, 9
	mov	rbp, rbp
	test	r13b, 8
	jne	.label_277
	lea	rdi, [r12 + rbp*8 + 8]
	mov	rsi, rdx
	mov	rsp, rsp
	mov	edx, r14d
	mov	rsp, rsp
	call	rpl_regcomp
	mov	rbp, rbp
	mov	ebp, eax
	lea	rsi, [rsi]
	jmp	.label_269
.label_277:
	mov	qword ptr [rsp + 0x10], rbp
	lea	rdi, [rdi]
	mov	rdi, rdx
	mov	rsp, rsp
	mov	rbp, rdx
	nop	
	call	strlen
	nop	
	mov	rcx, rbp
	mov	rsp, rsp
	mov	rbp, rax
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_264:
	cmp	rbp, 1
	lea	rdi, [rdi]
	je	.label_273
	movzx	eax, byte ptr [rcx + rbp - 2]
	lea	rsi, [rsi]
	dec	rbp
	cmp	eax, 0x2f
	mov	rbp, rbp
	je	.label_264
	lea	rsi, [rsi]
	lea	rdi, [rbp + 7]
	mov	r15, rcx
	call	xmalloc
	mov	rsp, rsp
	mov	r13, rax
	mov	rbp, rbp
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, r15
	mov	rdx, rbp
	nop	
	call	memcpy
	mov	rbp, rbp
	mov	byte ptr [r13 + rbp + 6], 0
	mov	word ptr [r13 + rbp + 4], 0x3f29
	mov	rsp, rsp
	mov	dword ptr [r13 + rbp], 0x2a2e2f28
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	lea	rdi, [r12 + rax*8 + 8]
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	edx, r14d
	call	rpl_regcomp
	mov	ebp, eax
	lea	rsi, [rsi]
	mov	rdi, r13
	call	free
.label_269:
	lea	rsi, [rsi]
	test	ebp, ebp
	mov	rsp, rsp
	je	.label_256
	mov	r15, qword ptr [rbx + 0x20]
.label_273:
	dec	r15
	nop	
	mov	qword ptr [rbx + 0x20], r15
.label_256:
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_251:
	call	xalloc_die
.label_263:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406230

	.globl add_exclude_fp
	.type add_exclude_fp, @function
add_exclude_fp:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], r9
	mov	rsp, rsp
	mov	dword ptr [rsp + 4], r8d
	nop	
	mov	dword ptr [rsp + 0x14], ecx
	mov	r12, rdx
	mov	r14, rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x18], 0
	xor	r13d, r13d
	mov	rbp, rbp
	lea	rbx, [rsp + 0x18]
	xor	ebp, ebp
	nop	
	jmp	.label_292
.label_280:
	lea	rsi, [rsi]
	mov	byte ptr [rbp + r13], r15b
	nop	
	inc	r13
.label_292:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 8]
	cmp	rax, qword ptr [r12 + 0x10]
	jae	.label_283
	nop	
	lea	rcx, [rax + 1]
	mov	qword ptr [r12 + 8], rcx
	mov	rbp, rbp
	movzx	r15d, byte ptr [rax]
.label_285:
	mov	rbp, rbp
	cmp	r13, qword ptr [rsp + 0x18]
	jne	.label_280
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rsi, rbx
	call	x2realloc
	mov	rbp, rax
	jmp	.label_280
.label_283:
	mov	rdi, r12
	lea	rsi, [rsi]
	call	__uflow
	mov	r15d, eax
	cmp	r15d, -1
	jne	.label_285
	xor	eax, eax
	lea	rsi, [rsi]
	test	byte ptr [r12], 0x20
	mov	rsp, rsp
	je	.label_288
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	eax, dword ptr [rax]
.label_288:
	mov	dword ptr [rsp + 0x10], eax
	mov	rsp, rsp
	lea	rsi, [r13 + 1]
	mov	rdi, rbp
	nop	
	call	xrealloc
	mov	rsp, rsp
	mov	rbp, rax
	lea	rdi, [rdi]
	lea	rbx, [rbp + r13]
	nop	
	mov	r12d, dword ptr [rsp + 4]
	mov	byte ptr [rbp + r13], r12b
	lea	rdi, [rdi]
	test	r13, r13
	je	.label_282
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r13 + rbp - 1]
	movzx	ecx, r12b
	lea	rsi, [rsi]
	cmp	eax, ecx
	setne	al
	mov	rsp, rsp
	jmp	.label_281
.label_282:
	xor	eax, eax
.label_281:
	movzx	r15d, al
	add	rbx, r15
	nop	
	mov	edi, 0x10
	call	xmalloc
	mov	qword ptr [rax + 8], rbp
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 8]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 8], rax
	cmp	rbp, rbx
	mov	rsp, rsp
	jae	.label_287
	lea	rsi, [rsi]
	movzx	r12d, r12b
	add	r13, r15
	mov	r15, rbp
	nop	
	add	r15, r13
	mov	rbx, rbp
	nop	word ptr cs:[rax + rax]
.label_291:
	movzx	eax, byte ptr [rbp]
	cmp	eax, r12d
	lea	rdi, [rdi]
	jne	.label_289
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	test	byte ptr [rax + r12*2 + 1], 0x20
	mov	rbp, rbp
	mov	rcx, rbp
	mov	rdx, rbp
	lea	rsi, [rsi]
	je	.label_293
	nop	dword ptr [rax]
.label_286:
	mov	rbp, rbp
	cmp	rbx, rcx
	je	.label_290
	mov	rbp, rbp
	movzx	esi, byte ptr [rcx - 1]
	mov	rbp, rbp
	mov	rdx, rcx
	nop	
	dec	rcx
	test	byte ptr [rax + rsi*2 + 1], 0x20
	lea	rdi, [rdi]
	jne	.label_286
.label_293:
	mov	rsp, rsp
	mov	byte ptr [rdx], 0
	mov	rdi, r14
	mov	rsi, rbx
	mov	edx, dword ptr [rsp + 0x14]
	mov	rcx, qword ptr [rsp + 0x20]
	call	qword ptr [rsp + 8]
.label_290:
	mov	rsp, rsp
	inc	rbp
	lea	rsi, [rsi]
	mov	rbx, rbp
	lea	rsi, [rsi]
	jmp	.label_284
	nop	dword ptr [rax]
.label_289:
	nop	
	inc	rbp
.label_284:
	cmp	rbp, r15
	jne	.label_291
.label_287:
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0x10]
	mov	dword ptr [rax], ecx
	lea	rdi, [rdi]
	neg	ecx
	sbb	eax, eax
	add	rsp, 0x28
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406460

	.globl add_exclude_file
	.type add_exclude_file, @function
add_exclude_file:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	ebp, r8d
	mov	r14d, ecx
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdi
	mov	rsp, rsp
	movzx	eax, byte ptr [rdx]
	nop	
	cmp	eax, 0x2d
	jne	.label_294
	cmp	byte ptr [rdx + 1], 0
	je	.label_295
.label_294:
	mov	esi, OFFSET FLAT:.str.1_0
	mov	rdi, rdx
	call	fopen
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_296
	mov	rsp, rsp
	movsx	r8d, bpl
	lea	rsi, [rsi]
	lea	r9, [rsp]
	nop	
	mov	edi, OFFSET FLAT:call_addfn
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	ecx, r14d
	mov	rsp, rsp
	call	add_exclude_fp
	mov	ebp, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	rpl_fclose
	lea	rdi, [rdi]
	cmp	eax, 1
	sbb	eax, eax
	not	eax
	lea	rdi, [rdi]
	or	ebp, eax
	nop	
	mov	eax, ebp
	jmp	.label_296
.label_295:
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	movsx	r8d, bpl
	nop	
	lea	r9, [rsp]
	mov	edi, OFFSET FLAT:call_addfn
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rbp, rbp
	mov	ecx, r14d
	lea	rdi, [rdi]
	call	add_exclude_fp
.label_296:
	mov	rsp, rsp
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406540

	.globl call_addfn
	.type call_addfn, @function
call_addfn:
	mov	rax, qword ptr [rcx]
	mov	rsp, rsp
	jmp	rax
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406550

	.globl string_hasher_ci
	.type string_hasher_ci, @function
string_hasher_ci:
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbp, rbp
	mov	byte ptr [rsp], 0
	mov	qword ptr [rsp + 4], 0
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc], 0
	lea	rdi, [rdi]
	lea	rdi, [rsp]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdi, rax
	lea	rsi, [rsi]
	shr	rdi, 0x20
	lea	rsi, [rsi]
	xor	ebx, ebx
	test	al, al
	je	.label_299
	mov	rbp, rbp
	test	edi, edi
	mov	rsp, rsp
	je	.label_297
.label_299:
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	r15, [rsp]
	nop	word ptr [rax + rax]
.label_298:
	mov	rbp, rbp
	test	al, al
	je	.label_301
	lea	rsi, [rsi]
	call	towlower
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x10]
	jmp	.label_300
	nop	dword ptr [rax]
.label_301:
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	movsx	eax, byte ptr [rcx]
.label_300:
	mov	rdx, rbx
	nop	
	shl	rdx, 5
	sub	rdx, rbx
	cdqe	
	add	rax, rdx
	lea	rdi, [rdi]
	xor	edx, edx
	div	r14
	add	rcx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rcx
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xc], 0
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rdi, r15
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdi, rax
	shr	rdi, 0x20
	test	al, al
	mov	rbp, rbp
	je	.label_298
	test	edi, edi
	nop	
	jne	.label_298
.label_297:
	lea	rsi, [rsi]
	mov	rax, rbx
	nop	
	add	rsp, 0x40
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406660

	.globl string_hasher
	.type string_hasher, @function
string_hasher:
	jmp	hash_string
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406670

	.globl string_compare_ci
	.type string_compare_ci, @function
string_compare_ci:
	mov	rbp, rbp
	push	rax
	mov	rbp, rbp
	call	mbscasecmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	sete	al
	pop	rcx
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406690

	.globl string_compare
	.type string_compare, @function
string_compare:
	push	rax
	lea	rsi, [rsi]
	call	strcmp
	nop	
	test	eax, eax
	sete	al
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066b0

	.globl string_free
	.type string_free, @function
string_free:
	jmp	free
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066c0

	.globl fprintftime
	.type fprintftime, @function
fprintftime:
	sub	rsp, 0x18
	mov	dword ptr [rsp + 8], r8d
	mov	qword ptr [rsp], rcx
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	xor	r8d, r8d
	mov	rsp, rsp
	mov	r9d, 0xffffffff
	call	__strftime_internal
	nop	
	add	rsp, 0x18
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4066f0

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x498
	mov	dword ptr [rsp + 0x474], r8d
	mov	dword ptr [rsp + 0x24], ecx
	mov	qword ptr [rsp + 0x38], rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	r14, rdi
	mov	qword ptr [rsp + 0x468], r14
	mov	eax, dword ptr [rdx + 8]
	nop	
	mov	rcx, qword ptr [rdx + 0x30]
	test	rcx, rcx
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_3
	mov	rsp, rsp
	cmovne	rdx, rcx
	mov	qword ptr [rsp + 0x478], rdx
	lea	ecx, [rax - 0xc]
	mov	rbp, rbp
	test	eax, eax
	mov	edx, 0xc
	nop	
	cmovne	edx, eax
	mov	rsp, rsp
	cmp	eax, 0xc
	lea	rsi, [rsi]
	cmovg	edx, ecx
	nop	
	mov	dword ptr [rsp + 0x48c], edx
	lea	rdi, [rdi]
	mov	al, byte ptr [r13]
	lea	rsi, [rsi]
	test	al, al
	lea	rdi, [rdi]
	mov	r15d, 0
	je	.label_420
	lea	rcx, [rsp + 0x440]
	mov	rdx, -0x17
	lea	rsi, [rsi]
	sub	rdx, rcx
	nop	
	mov	qword ptr [rsp + 0x490], rdx
	nop	
	xor	r15d, r15d
	jmp	.label_346
.label_464:
	mov	rbp, rbp
	mov	r14d, 3
	jmp	.label_459
.label_346:
	nop	
	movzx	ecx, al
	xor	r12d, r12d
	cmp	ecx, 0x25
	jne	.label_411
	nop	
	mov	eax, dword ptr [rsp + 0x24]
	mov	r11b, al
	xor	ebp, ebp
	movabs	rdi, 0x1000000000002500
	lea	rsi, [rsi]
	jmp	.label_329
	nop	dword ptr [rax + rax]
.label_411:
	lea	rsi, [rsi]
	test	r9d, r9d
	mov	rsp, rsp
	mov	ecx, r9d
	mov	edx, 0
	cmovs	ecx, edx
	movsxd	rbx, ecx
	cmp	ebx, 1
	mov	edx, 1
	mov	rsp, rsp
	cmovbe	rbx, rdx
	mov	rdx, r15
	not	rdx
	cmp	rbx, rdx
	jae	.label_302
	test	r14, r14
	je	.label_310
	cmp	ecx, 2
	mov	rsp, rsp
	jb	.label_312
	lea	rdi, [rdi]
	cmp	r9d, 1
	lea	rdi, [rdi]
	je	.label_312
	movsxd	rbp, r9d
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_318:
	mov	edi, 0x20
	mov	rsi, r14
	lea	rsi, [rsi]
	call	fputc
	dec	rbp
	mov	rbp, rbp
	jne	.label_318
	nop	
	mov	al, byte ptr [r13]
.label_312:
	mov	rbp, rbp
	movsx	edi, al
	mov	rsi, r14
	mov	rsp, rsp
	call	fputc
.label_310:
	add	r15, rbx
	jmp	.label_319
	nop	word ptr cs:[rax + rax]
.label_339:
	mov	r12b, 1
	mov	al, r11b
	jmp	.label_329
	nop	dword ptr [rax + rax]
.label_336:
	inc	r13
	mov	ebp, edx
.label_343:
	nop	
	mov	cl, byte ptr [r13]
	mov	rsp, rsp
	movsx	edx, cl
	lea	rdi, [rdi]
	lea	esi, [rdx - 0x23]
	cmp	esi, 0x3c
	ja	.label_331
	bt	rdi, rsi
	mov	rbp, rbp
	jb	.label_336
	mov	al, 1
	nop	
	test	rsi, rsi
	mov	rbp, rbp
	je	.label_339
	lea	rdi, [rdi]
	cmp	rsi, 0x3b
	jne	.label_331
.label_329:
	mov	r11b, al
	mov	rbp, rbp
	inc	r13
	jmp	.label_343
	nop	word ptr cs:[rax + rax]
.label_331:
	mov	rbp, rbp
	add	edx, -0x30
	mov	rbp, rbp
	xor	eax, eax
	cmp	edx, 9
	ja	.label_350
.label_362:
	mov	r9d, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_354
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	mov	rsp, rsp
	jne	.label_404
	lea	rdi, [rdi]
	lea	edx, [rcx - 0x30]
	lea	rsi, [rsi]
	cmp	edx, 7
	jg	.label_354
.label_404:
	lea	rsi, [rsi]
	lea	eax, [rax + rax*4]
	mov	rbp, rbp
	lea	r9d, [rcx + rax*2 - 0x30]
.label_354:
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [r13 + 1]
	mov	rsp, rsp
	inc	r13
	mov	rsp, rsp
	mov	eax, ecx
	add	eax, -0x30
	lea	rsi, [rsi]
	cmp	eax, 0xa
	mov	rbp, rbp
	mov	eax, r9d
	jb	.label_362
.label_350:
	nop	
	movsx	r10d, cl
	lea	rdi, [rdi]
	cmp	r10d, 0x4f
	nop	
	je	.label_367
	cmp	r10d, 0x45
	mov	rbp, rbp
	jne	.label_369
.label_367:
	lea	rsi, [rsi]
	mov	cl, byte ptr [r13 + 1]
	inc	r13
	jmp	.label_372
.label_369:
	lea	rsi, [rsi]
	xor	r10d, r10d
.label_372:
	mov	rsp, rsp
	movsx	r8d, cl
	xor	edx, edx
	mov	esi, 1
	lea	ebx, [r8 - 0x25]
	cmp	ebx, 0x55
	mov	rsp, rsp
	ja	.label_375
	mov	qword ptr [rsp + 0x18], r15
	mov	rbp, rbp
	mov	r15d, OFFSET FLAT:.str.3_1
	mov	dword ptr [rsp + 0x460], r9d
	nop	
	mov	r9b, 0x72
	mov	r14d, 0xffffffff
	xor	eax, eax
	xor	edi, edi
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_379]]
.label_3532:
	cmp	r10d, 0x45
	lea	rsi, [rsi]
	je	.label_304
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], r11
	nop	
	mov	rsi, qword ptr [rsp + 0x38]
	nop	
	mov	edx, dword ptr [rsi + 0x14]
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsi + 0x18]
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rbp, rbp
	sar	eax, 0x1f
	and	eax, 0x190
	mov	rbp, rbp
	lea	r11d, [rdx + rax - 0x64]
	nop	
	mov	ebx, dword ptr [rsi + 0x1c]
	lea	eax, [rbx + 0x17e]
	sub	eax, r9d
	nop	
	movsxd	rdi, eax
	imul	rax, rdi, -0x6db6db6d
	lea	rsi, [rsi]
	shr	rax, 0x20
	add	eax, edi
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rsp, rsp
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	lea	esi, [rax*8]
	sub	esi, eax
	sub	edi, esi
	lea	rsi, [rsi]
	lea	r12d, [rbx + 3]
	sub	r12d, edi
	js	.label_433
	mov	edi, 0x16d
	mov	rbp, rbp
	test	r11b, 3
	lea	rdi, [rdi]
	jne	.label_405
	mov	rsp, rsp
	movsxd	rsi, r11d
	imul	rsi, rsi, 0x51eb851f
	mov	rsp, rsp
	mov	rdi, rsi
	nop	
	sar	rdi, 0x25
	mov	r14, rsi
	shr	r14, 0x3f
	lea	rsi, [rsi]
	add	edi, r14d
	mov	rsp, rsp
	imul	edi, edi, 0x64
	nop	
	sar	rsi, 0x27
	add	esi, r14d
	lea	rsi, [rsi]
	imul	esi, esi, 0x190
	cmp	r11d, esi
	lea	rdi, [rdi]
	sete	al
	nop	
	movzx	eax, al
	add	eax, 0x16d
	cmp	r11d, edi
	mov	rbp, rbp
	mov	edi, 0x16e
	cmove	edi, eax
.label_405:
	lea	rdi, [rdi]
	sub	ebx, edi
	mov	rbp, rbp
	lea	eax, [rbx + 0x17e]
	sub	eax, r9d
	cdqe	
	imul	rsi, rax, -0x6db6db6d
	shr	rsi, 0x20
	lea	rsi, [rsi]
	add	esi, eax
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 2
	mov	rsp, rsp
	add	esi, edi
	lea	rdi, [rdi]
	lea	edi, [rsi*8]
	sub	edi, esi
	nop	
	sub	eax, edi
	add	ebx, 3
	sub	ebx, eax
	cmovns	r12d, ebx
	mov	rbp, rbp
	shr	ebx, 0x1f
	nop	
	xor	ebx, 1
	jmp	.label_416
	nop	
.label_431:
	inc	rsi
.label_3526:
	movzx	eax, byte ptr [r13 + rsi]
	lea	rdi, [rdi]
	cmp	eax, 0x3a
	je	.label_431
	mov	rsp, rsp
	movzx	eax, al
	nop	
	cmp	eax, 0x7a
	mov	rbp, rbp
	jne	.label_304
	mov	rbp, rbp
	add	r13, rsi
	nop	
	mov	rdx, rsi
.label_3563:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x38]
	cmp	dword ptr [r9 + 0x20], 0
	js	.label_440
	mov	rsp, rsp
	mov	rdi, rdx
	mov	r8d, dword ptr [r9 + 0x28]
	mov	r15b, 1
	test	r8d, r8d
	mov	rsp, rsp
	js	.label_359
	test	r8d, r8d
	mov	rbp, rbp
	je	.label_450
	xor	r15d, r15d
	lea	rsi, [rsi]
	jmp	.label_359
.label_3546:
	test	r12b, r12b
	je	.label_455
	mov	rsp, rsp
	mov	r11b, 1
.label_455:
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	r10d, 0x45
	je	.label_304
	mov	r9b, cl
	jmp	.label_334
.label_375:
	mov	rbp, rbp
	test	r8d, r8d
	lea	rdi, [rdi]
	jne	.label_460
	nop	
	mov	qword ptr [rsp + 0x18], r15
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x460], r9d
	dec	r13
	jmp	.label_304
.label_3525:
	mov	rsp, rsp
	test	r10d, r10d
	jne	.label_304
	xor	eax, eax
	mov	edx, dword ptr [rsp + 0x460]
	nop	
	test	edx, edx
	lea	rsi, [rsi]
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r14d, 1
	mov	rbp, rbp
	cmova	r14, rcx
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	not	rcx
	lea	rsi, [rsi]
	cmp	r14, rcx
	lea	rsi, [rsi]
	jae	.label_302
	cmp	qword ptr [rsp + 0x468], 0
	je	.label_311
	lea	rsi, [rsi]
	cmp	eax, 2
	mov	r12, qword ptr [rsp + 0x468]
	jb	.label_313
	movsxd	rbx, edx
	lea	r15, [rbx - 1]
	cmp	ebp, 0x30
	mov	rbp, rbp
	je	.label_383
	mov	rbp, rbp
	cmp	ebp, 0x2b
	jne	.label_315
.label_383:
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_313
	lea	rsi, [rsi]
	dec	rbx
.label_436:
	mov	rsp, rsp
	mov	edi, 0x30
	mov	rsi, r12
	mov	rbp, rbp
	call	fputc
	lea	rsi, [rsi]
	dec	rbx
	jne	.label_436
	jmp	.label_313
.label_3527:
	nop	
	test	r10d, r10d
	mov	rsp, rsp
	jne	.label_304
	test	r12b, r12b
	lea	rsi, [rsi]
	je	.label_330
	mov	rbp, rbp
	mov	r11b, 1
.label_330:
	nop	
	xor	eax, eax
	nop	
	mov	r9b, 0x41
	jmp	.label_334
.label_3528:
	nop	
	cmp	r10d, 0x45
	je	.label_304
	test	r12b, r12b
	je	.label_340
	lea	rdi, [rdi]
	mov	r11b, 1
.label_340:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	r9b, 0x42
	jmp	.label_334
.label_3529:
	cmp	r10d, 0x45
	jne	.label_363
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r9b, 0x43
	jmp	.label_334
.label_3530:
	test	r10d, r10d
	nop	
	jne	.label_304
	mov	r15d, OFFSET FLAT:.str.1_3
	jmp	.label_345
.label_3531:
	test	r10d, r10d
	jne	.label_304
	lea	rsi, [rsi]
	test	ebp, ebp
	mov	ecx, dword ptr [rsp + 0x460]
	jne	.label_358
	test	ecx, ecx
	jns	.label_358
	mov	rsp, rsp
	mov	r15d, OFFSET FLAT:.str.2_0
	mov	rsp, rsp
	mov	ebp, 0x2b
	mov	r14d, 4
	nop	
	jmp	.label_345
.label_3533:
	mov	rsp, rsp
	cmp	r10d, 0x45
	je	.label_304
	mov	r9, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	edx, dword ptr [r9 + 8]
	lea	rsi, [rsi]
	jmp	.label_308
.label_3534:
	cmp	r10d, 0x45
	je	.label_304
	mov	r14d, 2
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x48c]
	mov	edx, eax
	mov	r9, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	jmp	.label_314
.label_3535:
	cmp	r10d, 0x45
	je	.label_304
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	edx, dword ptr [r9 + 4]
	mov	rsp, rsp
	jmp	.label_308
.label_3536:
	lea	rdi, [rdi]
	cmp	r10d, 0x45
	lea	rsi, [rsi]
	je	.label_304
	mov	rbp, rbp
	mov	edi, dword ptr [rsp + 0x460]
	cmp	edi, -1
	je	.label_385
	cmp	edi, 8
	lea	rdi, [rdi]
	jg	.label_388
	mov	esi, 9
	sub	esi, edi
	mov	rsp, rsp
	mov	eax, 8
	lea	rdi, [rdi]
	sub	eax, edi
	test	sil, 3
	mov	edx, dword ptr [rsp + 0x4d8]
	mov	ebx, edi
	mov	rbp, rbp
	je	.label_392
	and	esi, 3
	neg	esi
	mov	edx, dword ptr [rsp + 0x4d8]
	nop	
	mov	ebx, edi
	nop	dword ptr [rax]
.label_337:
	movsxd	rdx, edx
	mov	rsp, rsp
	imul	rdx, rdx, 0x66666667
	mov	rdi, rdx
	lea	rdi, [rdi]
	shr	rdi, 0x3f
	mov	rbp, rbp
	sar	rdx, 0x22
	add	edx, edi
	inc	ebx
	mov	rbp, rbp
	inc	esi
	lea	rsi, [rsi]
	jne	.label_337
.label_392:
	nop	
	cmp	eax, 3
	mov	r9, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	jb	.label_402
	lea	rsi, [rsi]
	mov	eax, 9
	mov	rsp, rsp
	sub	eax, ebx
	nop	word ptr [rax + rax]
.label_407:
	movsxd	rdx, edx
	imul	rdx, rdx, 0x68db8bad
	nop	
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x2c
	mov	rbp, rbp
	add	edx, esi
	lea	rdi, [rdi]
	add	eax, -4
	lea	rsi, [rsi]
	jne	.label_407
.label_402:
	mov	eax, dword ptr [rsp + 0x460]
	mov	r14d, eax
	nop	
	jmp	.label_314
.label_3537:
	mov	dil, 1
.label_3555:
	mov	rbp, rbp
	xor	edx, edx
	lea	rsi, [rsi]
	test	r12b, r12b
	je	.label_439
	nop	
	mov	r11d, 0
.label_439:
	je	.label_415
	mov	dil, 1
.label_415:
	nop	
	mov	r9b, 0x70
	mov	al, dil
	jmp	.label_352
.label_3538:
	nop	
	cmp	r10d, 0x45
	mov	rsp, rsp
	je	.label_304
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	edx, dword ptr [r9]
	mov	rsp, rsp
	jmp	.label_308
.label_3539:
	mov	r15d, OFFSET FLAT:.str.4_1
.label_345:
	nop	
	test	r11b, r11b
	nop	
	mov	qword ptr [rsp + 0x30], r11
	mov	rsp, rsp
	setne	al
	mov	ecx, dword ptr [rsp + 0x4d8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], ecx
	mov	rcx, qword ptr [rsp + 0x4d0]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rcx
	movzx	ecx, al
	xor	ebx, ebx
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	r8d, ebp
	nop	
	mov	r9d, r14d
	lea	rsi, [rsi]
	call	__strftime_internal
	mov	esi, dword ptr [rsp + 0x460]
	nop	
	test	esi, esi
	cmovns	ebx, esi
	movsxd	rcx, ebx
	cmp	rax, rcx
	lea	rsi, [rsi]
	mov	rdi, rax
	cmovb	rdi, rcx
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	not	rdx
	cmp	rdi, rdx
	jae	.label_302
	cmp	qword ptr [rsp + 0x468], 0
	je	.label_451
	mov	dword ptr [rsp + 0x28], r14d
	mov	qword ptr [rsp + 0x480], rdi
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x468]
	lea	rsi, [rsi]
	jae	.label_356
	movsxd	rcx, esi
	mov	r14, rcx
	lea	rsi, [rsi]
	sub	r14, rax
	cmp	ebp, 0x30
	je	.label_399
	cmp	ebp, 0x2b
	jne	.label_462
.label_399:
	lea	rsi, [rsi]
	xor	ebx, ebx
	cmp	rcx, rax
	je	.label_356
	nop	dword ptr [rax + rax]
.label_457:
	mov	edi, 0x30
	mov	rsi, r12
	lea	rdi, [rdi]
	call	fputc
	inc	rbx
	lea	rsi, [rsi]
	cmp	rbx, r14
	jb	.label_457
	lea	rdi, [rdi]
	jmp	.label_356
.label_3540:
	cmp	r10d, 0x45
	lea	rdi, [rdi]
	je	.label_304
	mov	r9, qword ptr [rsp + 0x38]
	nop	
	mov	eax, dword ptr [r9 + 0x1c]
	lea	rdi, [rdi]
	add	eax, 7
	nop	
	sub	eax, dword ptr [r9 + 0x18]
	lea	rsi, [rsi]
	movsxd	rdx, eax
	jmp	.label_306
.label_3541:
	lea	rdi, [rdi]
	cmp	r10d, 0x45
	mov	rsp, rsp
	je	.label_304
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [r9 + 0x18]
	mov	edx, dword ptr [r9 + 0x1c]
	lea	esi, [rax + 6]
	movsxd	rsi, esi
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	lea	eax, [rdi + rax + 6]
	mov	edi, eax
	shr	edi, 0x1f
	lea	rsi, [rsi]
	sar	eax, 2
	lea	rdi, [rdi]
	add	eax, edi
	lea	edi, [rax*8]
	sub	edi, eax
	nop	
	sub	esi, edi
	add	edx, 7
	mov	rbp, rbp
	sub	edx, esi
	movsxd	rdx, edx
.label_306:
	imul	rax, rdx, -0x6db6db6d
	nop	
	shr	rax, 0x20
	mov	rsp, rsp
	add	edx, eax
	mov	eax, edx
	mov	rsp, rsp
	shr	eax, 0x1f
	mov	rsp, rsp
	sar	edx, 2
	mov	rsp, rsp
	add	edx, eax
	lea	rsi, [rsi]
	jmp	.label_308
.label_3542:
	lea	rsi, [rsi]
	cmp	r10d, 0x4f
	mov	rsp, rsp
	je	.label_304
	xor	eax, eax
	mov	r9b, 0x58
	nop	
	jmp	.label_334
.label_3543:
	mov	rbp, rbp
	cmp	r10d, 0x45
	nop	
	je	.label_341
	mov	rsp, rsp
	cmp	r10d, 0x4f
	lea	rdi, [rdi]
	je	.label_304
	mov	r9, qword ptr [rsp + 0x38]
	mov	edx, dword ptr [r9 + 0x14]
	cmp	edx, 0xfffff894
	nop	
	setl	r15b
	lea	rsi, [rsi]
	add	edx, 0x76c
	mov	r14d, 4
	jmp	.label_348
.label_3544:
	nop	
	mov	qword ptr [rsp + 0x30], r11
	mov	rdi, qword ptr [rsp + 0x478]
	call	strlen
	mov	rbp, rbp
	mov	rbx, rax
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, dword ptr [rsp + 0x460]
	lea	rsi, [rsi]
	test	edx, edx
	mov	rbp, rbp
	cmovns	eax, edx
	lea	rdi, [rdi]
	cdqe	
	nop	
	cmp	rbx, rax
	mov	rsi, rbx
	cmovb	rsi, rax
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	not	rcx
	cmp	rsi, rcx
	mov	rbp, rbp
	jae	.label_302
	mov	qword ptr [rsp + 0x480], rsi
	nop	
	mov	r14, qword ptr [rsp + 0x468]
	test	r14, r14
	je	.label_328
	cmp	rbx, rax
	lea	rsi, [rsi]
	jae	.label_321
	nop	
	movsxd	rax, edx
	nop	
	mov	r15, rax
	nop	
	sub	r15, rbx
	mov	rsp, rsp
	cmp	ebp, 0x30
	mov	rbp, rbp
	je	.label_377
	mov	rsp, rsp
	cmp	ebp, 0x2b
	jne	.label_382
.label_377:
	xor	ebp, ebp
	cmp	rax, rbx
	mov	rsp, rsp
	je	.label_321
	nop	word ptr cs:[rax + rax]
.label_389:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	mov	rbp, rbp
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, r15
	nop	
	jb	.label_389
	lea	rdi, [rdi]
	jmp	.label_321
.label_3545:
	lea	rsi, [rsi]
	test	r10d, r10d
	jne	.label_304
	test	r12b, r12b
	mov	rbp, rbp
	je	.label_396
	mov	r11b, 1
.label_396:
	xor	eax, eax
	mov	r9b, 0x61
	nop	
	jmp	.label_334
.label_3547:
	cmp	r10d, 0x4f
	je	.label_304
	mov	rsp, rsp
	xor	eax, eax
	mov	r9b, 0x63
	lea	rsi, [rsi]
	jmp	.label_334
.label_3548:
	lea	rsi, [rsi]
	cmp	r10d, 0x45
	mov	rsp, rsp
	je	.label_304
	mov	r9, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	edx, dword ptr [r9 + 0xc]
	lea	rdi, [rdi]
	jmp	.label_308
.label_3549:
	lea	rdi, [rdi]
	cmp	r10d, 0x45
	je	.label_304
	mov	r9, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	edx, dword ptr [r9 + 0xc]
	jmp	.label_406
.label_3550:
	mov	rsp, rsp
	cmp	r10d, 0x45
	mov	rsp, rsp
	je	.label_304
	mov	r9, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	edx, dword ptr [r9 + 0x1c]
	mov	rbp, rbp
	cmp	edx, -1
	nop	
	setl	r15b
	lea	rdi, [rdi]
	inc	edx
	mov	r14d, 3
	mov	rsp, rsp
	jmp	.label_410
.label_3551:
	cmp	r10d, 0x45
	nop	
	je	.label_304
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x38]
	mov	edx, dword ptr [r9 + 8]
	lea	rdi, [rdi]
	jmp	.label_406
.label_3552:
	mov	rsp, rsp
	cmp	r10d, 0x45
	mov	eax, dword ptr [rsp + 0x48c]
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	je	.label_304
.label_406:
	mov	rbp, rbp
	test	ebp, ebp
	mov	rsp, rsp
	mov	eax, 0x5f
	lea	rsi, [rsi]
	cmove	ebp, eax
.label_308:
	nop	
	mov	r14d, 2
	nop	
	jmp	.label_314
.label_3553:
	nop	
	cmp	r10d, 0x45
	mov	rbp, rbp
	je	.label_304
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x38]
	mov	edx, dword ptr [r9 + 0x10]
	cmp	edx, -1
	setl	r15b
	inc	edx
	lea	rdi, [rdi]
	mov	r14d, 2
	jmp	.label_410
.label_3554:
	xor	eax, eax
	mov	edx, dword ptr [rsp + 0x460]
	test	edx, edx
	lea	rdi, [rdi]
	cmovns	eax, edx
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	ecx, 1
	mov	r14d, 1
	cmova	r14, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	not	rcx
	cmp	r14, rcx
	mov	rsp, rsp
	jae	.label_302
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x468], 0
	je	.label_311
	lea	rdi, [rdi]
	cmp	eax, 2
	mov	r12, qword ptr [rsp + 0x468]
	mov	rsp, rsp
	jb	.label_419
	movsxd	rbx, edx
	lea	r15, [rbx - 1]
	nop	
	cmp	ebp, 0x30
	je	.label_384
	nop	
	cmp	ebp, 0x2b
	lea	rdi, [rdi]
	jne	.label_458
.label_384:
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_419
	dec	rbx
	nop	dword ptr [rax]
.label_467:
	mov	edi, 0x30
	mov	rsi, r12
	mov	rbp, rbp
	call	fputc
	mov	rsp, rsp
	dec	rbx
	jne	.label_467
	lea	rsi, [rsi]
	jmp	.label_419
.label_3556:
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x38]
	imul	edx, dword ptr [r9 + 0x10], 0xb
	nop	
	sar	edx, 5
	inc	edx
	nop	
	mov	r14d, 1
	xor	ebx, ebx
	xor	r8d, r8d
	nop	
	xor	r15d, r15d
	jmp	.label_333
.label_3557:
	mov	qword ptr [rsp + 0x30], r11
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x70], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	mov	rsp, rsp
	movups	xmm2, xmmword ptr [rcx + 0x20]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	movaps	xmmword ptr [rsp + 0x50], xmm1
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x40], xmm0
	lea	rsi, [rsp + 0x40]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x4d0]
	nop	
	call	mktime_z
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	r15, rcx
	nop	
	shr	r15, 0x3f
	lea	rsi, [rsi]
	lea	r12, [rsp + 0x457]
.label_326:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	nop	
	mov	rax, rdx
	lea	rsi, [rsi]
	shr	rax, 0x3f
	mov	rsp, rsp
	sar	rdx, 2
	lea	edi, [rdx + rax]
	mov	rbp, rbp
	add	edi, edi
	nop	
	lea	edi, [rdi + rdi*4]
	mov	ebx, ecx
	lea	rsi, [rsi]
	sub	ebx, edi
	add	rdx, rax
	lea	rdi, [rdi]
	mov	eax, ebx
	lea	rsi, [rsi]
	neg	eax
	nop	
	test	r15, r15
	cmove	eax, ebx
	add	eax, 0x30
	mov	byte ptr [r12 - 1], al
	dec	r12
	mov	rsp, rsp
	add	rcx, 9
	nop	
	cmp	rcx, 0x12
	nop	
	mov	rcx, rdx
	ja	.label_326
	mov	r14d, 1
	xor	r8d, r8d
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x460]
	mov	rsi, qword ptr [rsp + 0x18]
	nop	
	jmp	.label_347
.label_3558:
	xor	eax, eax
	mov	edx, dword ptr [rsp + 0x460]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r14d, 1
	mov	rsp, rsp
	cmova	r14, rcx
	mov	rcx, qword ptr [rsp + 0x18]
	not	rcx
	cmp	r14, rcx
	lea	rsi, [rsi]
	jae	.label_302
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x468], 0
	je	.label_311
	cmp	eax, 2
	mov	r12, qword ptr [rsp + 0x468]
	jb	.label_364
	movsxd	rbx, edx
	lea	r15, [rbx - 1]
	cmp	ebp, 0x30
	je	.label_368
	cmp	ebp, 0x2b
	jne	.label_370
.label_368:
	lea	rsi, [rsi]
	test	r15, r15
	je	.label_364
	dec	rbx
	nop	word ptr cs:[rax + rax]
.label_380:
	lea	rdi, [rdi]
	mov	edi, 0x30
	mov	rsp, rsp
	mov	rsi, r12
	lea	rdi, [rdi]
	call	fputc
	lea	rsi, [rsi]
	dec	rbx
	jne	.label_380
	jmp	.label_364
.label_3559:
	mov	r9, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [r9 + 0x18]
	lea	edx, [rax + 6]
	movsxd	rdx, edx
	nop	
	imul	rsi, rdx, -0x6db6db6d
	lea	rsi, [rsi]
	shr	rsi, 0x20
	lea	eax, [rsi + rax + 6]
	mov	esi, eax
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	mov	rsp, rsp
	lea	esi, [rax*8]
	lea	rsi, [rsi]
	sub	esi, eax
	sub	edx, esi
	lea	rsi, [rsi]
	inc	edx
	mov	rbp, rbp
	mov	r14d, 1
	nop	
	jmp	.label_314
.label_3560:
	nop	
	cmp	r10d, 0x45
	mov	rsp, rsp
	je	.label_304
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	edx, dword ptr [r9 + 0x18]
	mov	r14d, 1
	jmp	.label_314
.label_3561:
	mov	rbp, rbp
	cmp	r10d, 0x4f
	mov	rbp, rbp
	je	.label_304
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	r9b, 0x78
	lea	rsi, [rsi]
	jmp	.label_334
.label_3562:
	lea	rsi, [rsi]
	cmp	r10d, 0x45
	jne	.label_403
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	r9b, 0x79
	jmp	.label_334
.label_460:
	mov	qword ptr [rsp + 0x18], r15
	mov	dword ptr [rsp + 0x460], r9d
	lea	rsi, [rsi]
	jmp	.label_304
.label_433:
	lea	rsi, [rsi]
	dec	r11d
	mov	r14d, 0x16d
	mov	rsp, rsp
	test	r11b, 3
	jne	.label_422
	movsxd	rax, r11d
	imul	rax, rax, 0x51eb851f
	mov	rsi, rax
	nop	
	sar	rsi, 0x25
	nop	
	mov	rdi, rax
	shr	rdi, 0x3f
	mov	rbp, rbp
	add	esi, edi
	mov	rsp, rsp
	imul	esi, esi, 0x64
	nop	
	sar	rax, 0x27
	add	eax, edi
	nop	
	imul	eax, eax, 0x190
	mov	rbp, rbp
	cmp	r11d, eax
	sete	al
	nop	
	movzx	edi, al
	add	edi, 0x16d
	mov	rsp, rsp
	cmp	r11d, esi
	mov	r14d, 0x16e
	cmove	r14d, edi
.label_422:
	lea	esi, [r14 + rbx + 0x17e]
	mov	rsp, rsp
	sub	esi, r9d
	movsxd	rsi, esi
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	lea	rsi, [rsi]
	add	edi, esi
	mov	eax, edi
	shr	eax, 0x1f
	nop	
	sar	edi, 2
	add	edi, eax
	lea	eax, [rdi*8]
	sub	eax, edi
	sub	esi, eax
	lea	r12d, [r14 + rbx + 3]
	sub	r12d, esi
	mov	ebx, 0xffffffff
.label_416:
	nop	
	cmp	r8d, 0x47
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	je	.label_432
	cmp	r8d, 0x67
	jne	.label_335
	movsxd	rax, edx
	mov	rsp, rsp
	imul	rax, rax, 0x51eb851f
	mov	rdi, rdx
	nop	
	mov	rdx, rax
	nop	
	shr	rdx, 0x3f
	nop	
	sar	rax, 0x25
	add	eax, edx
	mov	rsp, rsp
	imul	eax, eax, 0x64
	mov	edx, edi
	lea	rdi, [rdi]
	sub	edx, eax
	lea	rdi, [rdi]
	add	edx, ebx
	mov	rbp, rbp
	movsxd	rdx, edx
	imul	rax, rdx, 0x51eb851f
	mov	rsp, rsp
	mov	rsi, rax
	mov	rsp, rsp
	shr	rsi, 0x3f
	mov	rbp, rbp
	sar	rax, 0x25
	lea	rsi, [rsi]
	add	eax, esi
	imul	eax, eax, 0x64
	sub	edx, eax
	lea	rdi, [rdi]
	mov	r14d, 2
	nop	
	mov	r9, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	js	.label_466
	nop	
	xor	r15d, r15d
	jmp	.label_348
.label_440:
	mov	r14, qword ptr [rsp + 0x468]
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jmp	.label_319
.label_363:
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [r9 + 0x14]
	cmp	rax, -0x76c
	nop	
	setl	r15b
	setg	bl
	imul	rdx, rax, 0x51eb851f
	mov	rbp, rbp
	mov	rdi, rdx
	shr	rdi, 0x3f
	sar	rdx, 0x25
	add	edx, edi
	lea	rdi, [rdi]
	imul	edi, edx, 0x64
	lea	rdi, [rdi]
	cmp	eax, edi
	sets	al
	and	al, bl
	movzx	eax, al
	sub	edx, eax
	add	edx, 0x13
	mov	rsp, rsp
	mov	r14d, 2
	jmp	.label_348
.label_403:
	mov	r9, qword ptr [rsp + 0x38]
	movsxd	rax, dword ptr [r9 + 0x14]
	lea	rdi, [rdi]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	mov	rbp, rbp
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	lea	rdi, [rdi]
	imul	esi, edx, 0x64
	mov	rsp, rsp
	mov	edx, eax
	nop	
	mov	r14d, 2
	sub	edx, esi
	lea	rsi, [rsi]
	js	.label_373
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_348
.label_432:
	lea	rsi, [rsi]
	mov	eax, 0xfffff894
	sub	eax, ebx
	cmp	edx, eax
	lea	rsi, [rsi]
	setl	r15b
	mov	rsp, rsp
	lea	edx, [rbx + rdx + 0x76c]
	nop	
	mov	r14d, 4
	mov	r9, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	jmp	.label_348
.label_335:
	movsxd	rax, r12d
	lea	rdi, [rdi]
	imul	rdx, rax, -0x6db6db6d
	lea	rsi, [rsi]
	shr	rdx, 0x20
	add	eax, edx
	mov	edx, eax
	sar	edx, 2
	shr	eax, 0x1f
	nop	
	lea	edx, [rdx + rax + 1]
	nop	
	mov	r14d, 2
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x38]
	jmp	.label_314
.label_341:
	xor	eax, eax
	mov	rbp, rbp
	mov	r9b, 0x59
.label_334:
	mov	rbp, rbp
	xor	edx, edx
	jmp	.label_352
.label_462:
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	rdi, [rdi]
	cmp	rcx, rax
	nop	
	je	.label_356
	nop	word ptr cs:[rax + rax]
.label_360:
	mov	rbp, rbp
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	inc	rbx
	cmp	rbx, r14
	lea	rdi, [rdi]
	jb	.label_360
.label_356:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4d8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], ecx
	mov	rcx, qword ptr [rsp + 0x4d0]
	mov	rsp, rsp
	mov	qword ptr [rsp], rcx
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	qword ptr [rsp + 0x468], r12
	lea	rdi, [rdi]
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x38]
	mov	r8d, ebp
	mov	rbp, rbp
	mov	r9d, dword ptr [rsp + 0x28]
	call	__strftime_internal
	nop	
	mov	rdi, qword ptr [rsp + 0x480]
.label_451:
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	add	r15, rdi
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x468]
	jmp	.label_319
.label_450:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x478]
	nop	
	movzx	edx, byte ptr [rax]
	mov	rbp, rbp
	cmp	edx, 0x2d
	mov	rbp, rbp
	sete	r15b
.label_359:
	nop	
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14, 3
	ja	.label_304
	mov	rbp, rbp
	movsxd	rdx, r8d
	imul	rdi, rdx, -0x77777777
	mov	rsp, rsp
	shr	rdi, 0x20
	mov	rsp, rsp
	add	edi, r8d
	mov	ebx, edi
	shr	ebx, 0x1f
	lea	rsi, [rsi]
	sar	edi, 5
	add	edi, ebx
	mov	rbp, rbp
	imul	rdx, rdx, -0x6e5d4c3b
	lea	rdi, [rdi]
	shr	rdx, 0x20
	add	edx, r8d
	mov	ebx, edx
	mov	rsp, rsp
	shr	ebx, 0x1f
	sar	edx, 0xb
	lea	rsi, [rsi]
	add	edx, ebx
	movsxd	rbx, edi
	imul	rdi, rbx, -0x77777777
	mov	rsp, rsp
	shr	rdi, 0x20
	add	edi, ebx
	mov	eax, edi
	shr	eax, 0x1f
	lea	rsi, [rsi]
	sar	edi, 5
	add	edi, eax
	nop	
	imul	eax, edi, 0x3c
	imul	edi, ebx, 0x3c
	mov	rbp, rbp
	sub	ebx, eax
	sub	r8d, edi
	jmp	qword ptr [word ptr [+ (r14 * 8) + label_391]]
.label_3309:
	nop	
	imul	edx, edx, 0x64
	add	edx, ebx
	mov	r14d, 5
.label_459:
	mov	r8b, 1
	mov	rbp, rbp
	xor	ebx, ebx
	jmp	.label_333
.label_304:
	nop	
	mov	qword ptr [rsp + 0x30], r11
	nop	
	lea	rbx, [r13 + 1]
	xor	r12d, r12d
	nop	
.label_412:
	nop	
	inc	r12
	movzx	eax, byte ptr [rbx - 1]
	mov	rsp, rsp
	dec	rbx
	cmp	eax, 0x25
	mov	rbp, rbp
	jne	.label_412
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x460]
	lea	rsi, [rsi]
	test	edx, edx
	nop	
	mov	eax, edx
	mov	ecx, 0
	mov	rbp, rbp
	cmovs	eax, ecx
	cmp	r12d, eax
	mov	ecx, eax
	nop	
	cmova	ecx, r12d
	movsxd	rsi, ecx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	not	rcx
	nop	
	cmp	rsi, rcx
	mov	rbp, rbp
	jae	.label_302
	mov	qword ptr [rsp + 0x480], rsi
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x468]
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_328
	movsxd	rcx, r12d
	mov	qword ptr [rsp + 0x28], rcx
	mov	rsp, rsp
	cmp	r12d, eax
	mov	r15, r14
	jae	.label_424
	movsxd	r14, edx
	sub	r14, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	cmp	ebp, 0x30
	nop	
	je	.label_430
	nop	
	cmp	ebp, 0x2b
	nop	
	jne	.label_434
.label_430:
	cmp	edx, r12d
	mov	ebp, 0
	nop	
	je	.label_424
	nop	word ptr cs:[rax + rax]
.label_445:
	mov	rsp, rsp
	mov	edi, 0x30
	mov	rbp, rbp
	mov	rsi, r15
	mov	rbp, rbp
	call	fputc
	inc	rbp
	mov	rsp, rsp
	cmp	rbp, r14
	mov	rbp, rbp
	jb	.label_445
	jmp	.label_424
.label_434:
	cmp	edx, r12d
	mov	rsp, rsp
	mov	ebp, 0
	mov	rsp, rsp
	je	.label_424
	nop	word ptr cs:[rax + rax]
.label_456:
	mov	rbp, rbp
	mov	edi, 0x20
	mov	rsi, r15
	call	fputc
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, r14
	jb	.label_456
.label_424:
	lea	rdi, [rdi]
	mov	r14, r15
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_394
	mov	rsp, rsp
	mov	edx, 1
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x28]
.label_401:
	mov	rsp, rsp
	mov	rcx, r14
	lea	rsi, [rsi]
	call	fwrite
	jmp	.label_328
.label_394:
	call	__ctype_toupper_loc
	mov	r15, rax
	movsxd	rbp, r12d
	neg	rbp
	nop	
.label_303:
	nop	
	movzx	eax, byte ptr [rbx]
	mov	rcx, qword ptr [r15]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r14
	call	fputc
	inc	rbx
	lea	rdi, [rdi]
	inc	rbp
	mov	rsp, rsp
	jne	.label_303
.label_328:
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x18]
	add	r15, qword ptr [rsp + 0x480]
	jmp	.label_319
.label_358:
	xor	eax, eax
	mov	r14d, ecx
	mov	rsp, rsp
	add	r14d, -6
	lea	rsi, [rsi]
	cmovs	r14d, eax
	mov	rbp, rbp
	mov	r15d, OFFSET FLAT:.str.2_0
	mov	rbp, rbp
	jmp	.label_345
.label_385:
	mov	rbp, rbp
	mov	r14d, 9
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x4d8]
	mov	edx, eax
	mov	dword ptr [rsp + 0x460], 9
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x38]
	jmp	.label_314
.label_466:
	lea	rdi, [rdi]
	mov	eax, 0xfffff894
	sub	eax, ebx
	mov	rbp, rbp
	mov	esi, edx
	lea	rdi, [rdi]
	neg	esi
	nop	
	add	edx, 0x64
	lea	rdi, [rdi]
	cmp	edi, eax
	lea	rsi, [rsi]
	jmp	.label_325
.label_373:
	mov	esi, edx
	neg	esi
	lea	rdi, [rdi]
	add	edx, 0x64
	lea	rdi, [rdi]
	cmp	eax, 0xfffff894
.label_325:
	cmovl	edx, esi
	xor	r15d, r15d
.label_348:
	test	ebp, ebp
	cmove	ebp, dword ptr [rsp + 0x474]
	xor	ebx, ebx
	cmp	ebp, 0x2b
	lea	rsi, [rsi]
	mov	r8d, 0
	jne	.label_333
	cmp	r14d, 2
	mov	rsp, rsp
	mov	eax, 0x63
	nop	
	mov	edi, 0x270f
	mov	rsp, rsp
	cmove	edi, eax
	lea	rdi, [rdi]
	cmp	edi, edx
	lea	rdi, [rdi]
	setb	dil
	cmp	r14d, dword ptr [rsp + 0x460]
	setl	r8b
	or	r8b, dil
	jmp	.label_333
.label_3312:
	lea	rdi, [rdi]
	test	r8d, r8d
	je	.label_397
.label_3311:
	lea	rsi, [rsi]
	imul	edx, edx, 0x2710
	lea	rdi, [rdi]
	imul	eax, ebx, 0x64
	lea	rsi, [rsi]
	add	edx, r8d
	add	edx, eax
	nop	
	mov	r14d, 9
	mov	r8b, 1
	mov	ebx, 0x14
	jmp	.label_333
.label_388:
	mov	eax, dword ptr [rsp + 0x4d8]
	nop	
	mov	edx, eax
	mov	rsp, rsp
	mov	r14d, edi
	mov	r9, qword ptr [rsp + 0x38]
.label_314:
	mov	r15d, edx
	shr	r15d, 0x1f
.label_410:
	xor	ebx, ebx
	xor	r8d, r8d
.label_333:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], r9
	cmp	r10d, 0x4f
	mov	rsp, rsp
	jne	.label_365
	test	r15b, r15b
	lea	rdi, [rdi]
	jne	.label_365
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	r9b, cl
	mov	rdx, r14
.label_352:
	nop	
	mov	dword ptr [rsp + 0x480], eax
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], r11
	mov	word ptr [rsp + 0x13], 0x2520
	lea	rsi, [rsi]
	test	r10d, r10d
	nop	
	lea	rcx, [rsp + 0x15]
	mov	rbp, rbp
	je	.label_376
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x15], r10b
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0x16]
.label_376:
	lea	rdi, [rdi]
	mov	byte ptr [rcx], r9b
	lea	rsi, [rsi]
	mov	byte ptr [rcx + 1], 0
	mov	rbp, rbp
	lea	rdi, [rsp + 0x40]
	lea	rdx, [rsp + 0x13]
	mov	rsp, rsp
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x38]
	call	strftime
	lea	rsi, [rsi]
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x468]
	je	.label_454
	lea	rdi, [rax - 1]
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, dword ptr [rsp + 0x460]
	test	edx, edx
	cmovns	ecx, edx
	movsxd	rsi, ecx
	nop	
	cmp	rdi, rsi
	lea	rsi, [rsi]
	mov	r15, rdi
	cmovb	r15, rsi
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x18]
	not	rcx
	lea	rdi, [rdi]
	cmp	r15, rcx
	jae	.label_302
	nop	
	mov	qword ptr [rsp + 0x458], rax
	test	r14, r14
	mov	rsp, rsp
	mov	r12, r14
	je	.label_342
	nop	
	cmp	rdi, rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	setae	al
	test	ebx, ebx
	jne	.label_332
	test	al, al
	jne	.label_332
	movsxd	rax, edx
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	nop	
	sub	rbx, rcx
	cmp	ebp, 0x30
	mov	rsp, rsp
	je	.label_409
	cmp	ebp, 0x2b
	mov	rsp, rsp
	jne	.label_446
.label_409:
	mov	rbp, rbp
	xor	ebp, ebp
	cmp	rax, rcx
	je	.label_332
	nop	dword ptr [rax + rax]
.label_323:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	inc	rbp
	mov	rsp, rsp
	cmp	rbp, rbx
	jb	.label_323
	mov	rsp, rsp
	jmp	.label_332
.label_365:
	mov	eax, edx
	mov	rbp, rbp
	neg	eax
	test	r15b, r15b
	cmove	eax, edx
	lea	rdi, [rdi]
	lea	r12, [rsp + 0x457]
	mov	r9d, dword ptr [rsp + 0x460]
	mov	rsi, qword ptr [rsp + 0x18]
	nop	word ptr cs:[rax + rax]
.label_427:
	test	bl, 1
	lea	rdi, [rdi]
	je	.label_423
	mov	byte ptr [r12 - 1], 0x3a
	mov	rsp, rsp
	dec	r12
.label_423:
	sar	ebx, 1
	mov	edi, eax
	mov	edx, 0xcccccccd
	mov	rsp, rsp
	imul	rdx, rdi
	mov	rbp, rbp
	shr	rdx, 0x23
	lea	edi, [rdx + rdx]
	lea	edi, [rdi + rdi*4]
	mov	ecx, eax
	lea	rdi, [rdi]
	sub	ecx, edi
	or	ecx, 0x30
	mov	byte ptr [r12 - 1], cl
	dec	r12
	cmp	eax, 9
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rbp, rbp
	ja	.label_427
	mov	rsp, rsp
	test	ebx, ebx
	nop	
	mov	eax, edx
	jne	.label_427
.label_347:
	cmp	r14d, r9d
	cmovl	r14d, r9d
	test	r8b, r8b
	je	.label_441
	mov	r8b, 0x2b
.label_441:
	test	r15b, r15b
	mov	rbp, rbp
	mov	bl, 0x2d
	jne	.label_448
	mov	rbp, rbp
	mov	bl, r8b
.label_448:
	nop	
	cmp	ebp, 0x2d
	lea	rsi, [rsi]
	jne	.label_449
	mov	rbp, rbp
	test	bl, bl
	mov	rdi, r14
	mov	rsp, rsp
	je	.label_453
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], r11
	xor	eax, eax
	test	r9d, r9d
	nop	
	cmovns	eax, r9d
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	ecx, 1
	mov	r14d, 1
	nop	
	cmova	r14, rcx
	mov	rcx, rsi
	mov	qword ptr [rsp + 0x18], rsi
	mov	rbp, rbp
	not	rcx
	cmp	r14, rcx
	jae	.label_302
	cmp	qword ptr [rsp + 0x468], 0
	mov	rsp, rsp
	je	.label_465
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x28], bl
	mov	dword ptr [rsp + 0x460], r9d
	cmp	eax, 2
	mov	rsp, rsp
	setb	al
	nop	
	test	edi, edi
	nop	
	mov	qword ptr [rsp + 0x480], rdi
	mov	r15, qword ptr [rsp + 0x468]
	nop	
	jne	.label_307
	test	al, al
	jne	.label_307
	mov	rsp, rsp
	cmp	dword ptr [rsp + 0x460], 1
	lea	rsi, [rsi]
	je	.label_307
	mov	rbp, rbp
	movsxd	rbx, dword ptr [rsp + 0x460]
	dec	rbx
	nop	word ptr [rax + rax]
.label_390:
	mov	edi, 0x20
	mov	rsi, r15
	mov	rsp, rsp
	call	fputc
	dec	rbx
	nop	
	jne	.label_390
.label_307:
	movzx	edi, byte ptr [rsp + 0x28]
	mov	rsi, r15
	call	fputc
	mov	r9d, dword ptr [rsp + 0x460]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x480]
.label_465:
	mov	rsi, qword ptr [rsp + 0x18]
	add	rsi, r14
	mov	rbp, rbp
	jmp	.label_393
.label_454:
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	jmp	.label_319
.label_449:
	mov	rdi, r14
	movsxd	rax, edi
	mov	rbp, rbp
	mov	rcx, r12
	lea	rdx, [rsp + 0x457]
	sub	rcx, rdx
	mov	dl, bl
	neg	dl
	sbb	rdx, rdx
	add	rdx, rcx
	add	rdx, rax
	test	edx, edx
	jle	.label_452
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], r11
	mov	rsp, rsp
	cmp	ebp, 0x5f
	lea	rsi, [rsi]
	jne	.label_338
	lea	rsi, [rsi]
	mov	rax, rsi
	mov	qword ptr [rsp + 0x18], rax
	mov	rsp, rsp
	movsxd	r15, edx
	mov	rsp, rsp
	not	rax
	nop	
	cmp	r15, rax
	jae	.label_302
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x458], rdx
	mov	byte ptr [rsp + 0x28], bl
	mov	qword ptr [rsp + 0x480], rdi
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x460], r9d
	nop	
	mov	rbx, qword ptr [rsp + 0x468]
	mov	rsp, rsp
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_353
	test	r15, r15
	nop	
	mov	r14d, 0
	lea	rdi, [rdi]
	je	.label_353
	nop	
.label_463:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	mov	rsp, rsp
	inc	r14
	cmp	r14, r15
	nop	
	jb	.label_463
.label_353:
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	add	rax, r15
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	eax, dword ptr [rsp + 0x460]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x458]
	sub	eax, ecx
	mov	edx, 0
	cmovg	edx, eax
	mov	al, byte ptr [rsp + 0x28]
	test	al, al
	mov	rbp, rbp
	je	.label_366
	xor	eax, eax
	lea	rdi, [rdi]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	mov	rbp, rbp
	cmp	ecx, 1
	mov	ebx, 1
	nop	
	cmova	rbx, rcx
	lea	rsi, [rsi]
	mov	rcx, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rsi
	not	rcx
	cmp	rbx, rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x480]
	jae	.label_302
	cmp	qword ptr [rsp + 0x468], 0
	je	.label_386
	mov	qword ptr [rsp + 0x458], rbx
	mov	qword ptr [rsp + 0x460], rdx
	mov	rsp, rsp
	cmp	eax, 2
	setb	al
	test	edi, edi
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x468]
	jne	.label_324
	test	al, al
	lea	rdi, [rdi]
	jne	.label_324
	mov	rax, qword ptr [rsp + 0x460]
	mov	rbp, rbp
	movsxd	r15, eax
	xor	ebx, ebx
	dec	r15
	mov	rsp, rsp
	je	.label_324
	nop	dword ptr [rax + rax]
.label_371:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	mov	rsp, rsp
	inc	rbx
	cmp	rbx, r15
	lea	rdi, [rdi]
	jb	.label_371
.label_324:
	nop	
	movzx	edi, byte ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	fputc
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x480]
	mov	rdx, qword ptr [rsp + 0x460]
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x458]
.label_386:
	mov	rsi, qword ptr [rsp + 0x18]
	add	rsi, rbx
	mov	r9d, edx
	jmp	.label_393
.label_453:
	mov	qword ptr [rsp + 0x30], r11
	jmp	.label_393
.label_452:
	mov	qword ptr [rsp + 0x30], r11
	mov	rbp, rbp
	test	bl, bl
	lea	rsi, [rsi]
	je	.label_393
	xor	eax, eax
	mov	rsp, rsp
	test	r9d, r9d
	lea	rsi, [rsi]
	cmovns	eax, r9d
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	ecx, 1
	mov	edx, 1
	nop	
	cmova	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, rsi
	mov	r15, rsi
	lea	rsi, [rsi]
	not	rcx
	mov	rbp, rbp
	cmp	rdx, rcx
	jae	.label_302
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x468], 0
	je	.label_418
	mov	qword ptr [rsp + 0x458], rdx
	mov	byte ptr [rsp + 0x28], bl
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x460], r9d
	cmp	eax, 2
	setb	al
	test	edi, edi
	mov	qword ptr [rsp + 0x480], rdi
	nop	
	mov	rsi, qword ptr [rsp + 0x468]
	mov	rbp, rbp
	jne	.label_387
	lea	rdi, [rdi]
	test	al, al
	lea	rdi, [rdi]
	jne	.label_387
	lea	rdi, [rdi]
	mov	rax, rsi
	movsxd	rbx, dword ptr [rsp + 0x460]
	lea	rsi, [rsi]
	lea	r14, [rbx - 1]
	cmp	ebp, 0x30
	lea	rdi, [rdi]
	je	.label_438
	mov	rsp, rsp
	cmp	ebp, 0x2b
	lea	rsi, [rsi]
	jne	.label_442
.label_438:
	mov	rsp, rsp
	test	r14, r14
	lea	rdi, [rdi]
	mov	rsi, rax
	je	.label_387
	dec	rbx
	nop	word ptr cs:[rax + rax]
.label_355:
	mov	rbp, rbp
	mov	edi, 0x30
	nop	
	mov	r14, rsi
	call	fputc
	lea	rdi, [rdi]
	mov	rsi, r14
	dec	rbx
	mov	rsp, rsp
	jne	.label_355
	mov	rsp, rsp
	jmp	.label_387
.label_338:
	lea	rsi, [rsi]
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rsi
	not	rcx
	lea	rsi, [rsi]
	cmp	rax, rcx
	jae	.label_302
	test	bl, bl
	je	.label_421
	xor	eax, eax
	lea	rsi, [rsi]
	test	r9d, r9d
	cmovns	eax, r9d
	mov	rsp, rsp
	movsxd	r8, eax
	cmp	r8d, 1
	mov	esi, 1
	mov	rbp, rbp
	cmova	rsi, r8
	lea	rsi, [rsi]
	cmp	rsi, rcx
	jae	.label_302
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x468]
	nop	
	test	r14, r14
	je	.label_305
	mov	qword ptr [rsp + 0x460], rsi
	mov	qword ptr [rsp + 0x458], rdx
	mov	byte ptr [rsp + 0x28], bl
	mov	rbp, rbp
	cmp	eax, 2
	mov	rbp, rbp
	setb	al
	lea	rdi, [rdi]
	test	edi, edi
	mov	qword ptr [rsp + 0x480], rdi
	jne	.label_309
	nop	
	test	al, al
	jne	.label_309
	mov	rsp, rsp
	movsxd	rbx, r9d
	mov	rsp, rsp
	lea	r15, [rbx - 1]
	cmp	ebp, 0x30
	nop	
	je	.label_316
	mov	rsp, rsp
	cmp	ebp, 0x2b
	jne	.label_322
.label_316:
	nop	
	test	r15, r15
	mov	rsp, rsp
	je	.label_309
	dec	rbx
	nop	word ptr [rax + rax]
.label_461:
	mov	edi, 0x30
	mov	rbp, rbp
	mov	rsi, r14
	call	fputc
	dec	rbx
	jne	.label_461
	jmp	.label_309
.label_446:
	lea	rdi, [rdi]
	xor	ebp, ebp
	cmp	rax, rcx
	je	.label_332
	nop	word ptr cs:[rax + rax]
.label_351:
	mov	edi, 0x20
	mov	rbp, rbp
	mov	rsi, r12
	mov	rbp, rbp
	call	fputc
	inc	rbp
	cmp	rbp, rbx
	jb	.label_351
.label_332:
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x480]
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_344
	mov	rax, qword ptr [rsp + 0x30]
	test	al, 1
	mov	rsi, qword ptr [rsp + 0x28]
	jne	.label_349
	mov	edx, 1
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x41]
	mov	rcx, r12
	lea	rsi, [rsi]
	call	fwrite
	jmp	.label_342
.label_344:
	cmp	qword ptr [rsp + 0x28], 0
	je	.label_342
	call	__ctype_tolower_loc
	mov	r14, rax
	mov	rsp, rsp
	mov	ebx, 1
	sub	rbx, qword ptr [rsp + 0x458]
	mov	rsp, rsp
	lea	rbp, [rsp + 0x41]
	nop	word ptr cs:[rax + rax]
.label_327:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14]
	mov	edi, dword ptr [rcx + rax*4]
	lea	rsi, [rsi]
	mov	rsi, r12
	call	fputc
	inc	rbp
	lea	rdi, [rdi]
	inc	rbx
	lea	rdi, [rdi]
	jne	.label_327
	jmp	.label_342
.label_349:
	test	rsi, rsi
	nop	
	je	.label_342
	mov	rbp, rbp
	call	__ctype_toupper_loc
	lea	rsi, [rsi]
	mov	r14, rax
	mov	ebx, 1
	lea	rsi, [rsi]
	sub	rbx, qword ptr [rsp + 0x458]
	mov	rbp, rbp
	lea	rbp, [rsp + 0x41]
	nop	word ptr [rax + rax]
.label_414:
	movzx	eax, byte ptr [rbp]
	mov	rcx, qword ptr [r14]
	mov	rbp, rbp
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r12
	call	fputc
	lea	rdi, [rdi]
	inc	rbp
	inc	rbx
	jne	.label_414
.label_342:
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	add	rax, r15
	mov	r15, rax
	mov	rbp, rbp
	mov	r14, r12
	mov	rbp, rbp
	jmp	.label_319
.label_366:
	mov	rbp, rbp
	mov	r9d, edx
	mov	rdi, qword ptr [rsp + 0x480]
	jmp	.label_393
.label_421:
	mov	r14, qword ptr [rsp + 0x468]
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jmp	.label_395
.label_382:
	lea	rsi, [rsi]
	xor	ebp, ebp
	cmp	rax, rbx
	mov	rbp, rbp
	je	.label_321
.label_398:
	mov	edi, 0x20
	mov	rsi, r14
	lea	rsi, [rsi]
	call	fputc
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, r15
	lea	rsi, [rsi]
	jb	.label_398
.label_321:
	test	r12b, r12b
	je	.label_400
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_328
	call	__ctype_tolower_loc
	mov	r15, rax
	mov	rbp, qword ptr [rsp + 0x478]
	nop	
.label_408:
	movzx	eax, byte ptr [rbp]
	mov	rcx, qword ptr [r15]
	mov	edi, dword ptr [rcx + rax*4]
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fputc
	inc	rbp
	lea	rsi, [rsi]
	dec	rbx
	jne	.label_408
	jmp	.label_328
.label_400:
	mov	rax, qword ptr [rsp + 0x30]
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_429
	nop	
	test	rbx, rbx
	nop	
	je	.label_328
	lea	rsi, [rsi]
	call	__ctype_toupper_loc
	mov	r15, rax
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x478]
	nop	word ptr [rax + rax]
.label_417:
	nop	
	movzx	eax, byte ptr [rbp]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rcx + rax*4]
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rsp, rsp
	call	fputc
	inc	rbp
	dec	rbx
	jne	.label_417
	jmp	.label_328
.label_458:
	nop	
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_419
	nop	word ptr cs:[rax + rax]
.label_425:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	r15
	jne	.label_425
.label_419:
	mov	edi, 0xa
	jmp	.label_426
.label_370:
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_364
	nop	word ptr cs:[rax + rax]
.label_437:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	r15
	lea	rdi, [rdi]
	jne	.label_437
.label_364:
	mov	edi, 9
	jmp	.label_426
.label_442:
	test	r14, r14
	lea	rdi, [rdi]
	mov	rsi, rax
	je	.label_387
.label_447:
	mov	edi, 0x20
	mov	rbx, rsi
	nop	
	call	fputc
	mov	rsi, rbx
	dec	r14
	mov	rbp, rbp
	jne	.label_447
.label_387:
	nop	
	movzx	edi, byte ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x468], rsi
	nop	
	call	fputc
	mov	r9d, dword ptr [rsp + 0x460]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x480]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x458]
.label_418:
	mov	rsi, r15
	nop	
	add	rsi, rdx
	mov	rsp, rsp
	jmp	.label_393
.label_429:
	mov	edx, 1
	nop	
	mov	rdi, qword ptr [rsp + 0x478]
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rsi, [rsi]
	jmp	.label_401
.label_397:
	lea	rdi, [rdi]
	test	ebx, ebx
	mov	rbp, rbp
	je	.label_464
.label_3310:
	mov	rbp, rbp
	imul	edx, edx, 0x64
	mov	rsp, rsp
	add	edx, ebx
	lea	rsi, [rsi]
	mov	r14d, 6
	mov	r8b, 1
	nop	
	mov	ebx, 4
	jmp	.label_333
.label_322:
	test	r15, r15
	je	.label_309
.label_428:
	mov	edi, 0x20
	mov	rsp, rsp
	mov	rsi, r14
	call	fputc
	mov	rbp, rbp
	dec	r15
	mov	rsp, rsp
	jne	.label_428
.label_309:
	lea	rdi, [rdi]
	movzx	edi, byte ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	rsi, r14
	mov	rbp, rbp
	call	fputc
	mov	rdi, qword ptr [rsp + 0x480]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x458]
	mov	rsi, qword ptr [rsp + 0x460]
.label_305:
	nop	
	mov	rcx, qword ptr [rsp + 0x18]
	add	rcx, rsi
.label_395:
	test	r14, r14
	nop	
	mov	rax, r14
	movsxd	r14, edx
	mov	rbp, rbp
	je	.label_317
	mov	qword ptr [rsp + 0x480], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rcx
	xor	ebx, ebx
	test	r14, r14
	mov	r15, rax
	mov	rsp, rsp
	je	.label_320
	nop	dword ptr [rax]
.label_444:
	mov	rbp, rbp
	mov	edi, 0x30
	mov	rsi, r15
	mov	rbp, rbp
	call	fputc
	inc	rbx
	cmp	rbx, r14
	lea	rsi, [rsi]
	jb	.label_444
	lea	rdi, [rdi]
	mov	rbx, r14
	lea	rdi, [rdi]
	jmp	.label_320
.label_317:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x480], rdi
	mov	qword ptr [rsp + 0x18], rcx
	mov	rbx, r14
	mov	r15, rax
.label_320:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x468], r15
	mov	rsi, qword ptr [rsp + 0x18]
	add	rsi, rbx
	xor	r9d, r9d
	nop	
	mov	rdi, qword ptr [rsp + 0x480]
.label_393:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rsi
	mov	rbp, rbp
	lea	rbx, [rsp + 0x457]
	mov	rbp, rbp
	sub	rbx, r12
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	test	r9d, r9d
	cmovns	eax, r9d
	nop	
	cdqe	
	cmp	rbx, rax
	mov	rdx, rbx
	cmovb	rdx, rax
	mov	rcx, rsi
	not	rcx
	cmp	rdx, rcx
	mov	rbp, rbp
	jae	.label_302
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x460], rdx
	mov	r14, qword ptr [rsp + 0x468]
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_361
	lea	rdi, [rdi]
	cmp	rbx, rax
	setae	al
	mov	rsp, rsp
	test	edi, edi
	lea	rsi, [rsi]
	jne	.label_357
	test	al, al
	lea	rsi, [rsi]
	jne	.label_357
	movsxd	rax, r9d
	mov	r15, rax
	sub	r15, rbx
	nop	
	cmp	ebp, 0x30
	je	.label_435
	cmp	ebp, 0x2b
	nop	
	jne	.label_374
.label_435:
	xor	ebp, ebp
	cmp	rax, rbx
	je	.label_357
	nop	word ptr [rax + rax]
.label_378:
	mov	edi, 0x30
	nop	
	mov	rsi, r14
	nop	
	call	fputc
	mov	rsp, rsp
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, r15
	lea	rdi, [rdi]
	jb	.label_378
	jmp	.label_357
.label_374:
	mov	rbp, rbp
	xor	ebp, ebp
	cmp	rax, rbx
	mov	rsp, rsp
	je	.label_357
	nop	
.label_381:
	mov	edi, 0x20
	mov	rsi, r14
	lea	rdi, [rdi]
	call	fputc
	inc	rbp
	cmp	rbp, r15
	mov	rsp, rsp
	jb	.label_381
.label_357:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	test	al, al
	nop	
	je	.label_468
	mov	rsp, rsp
	lea	rax, [rsp + 0x457]
	cmp	rax, r12
	je	.label_361
	mov	rbp, rbp
	call	__ctype_toupper_loc
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x490]
	lea	rbp, [rax + r12]
	nop	word ptr cs:[rax + rax]
.label_443:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r12]
	mov	rcx, qword ptr [rbx]
	mov	edi, dword ptr [rcx + rax*4]
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	fputc
	inc	r12
	nop	
	inc	rbp
	jne	.label_443
	lea	rsi, [rsi]
	jmp	.label_361
.label_468:
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rcx, r14
	mov	rbp, rbp
	call	fwrite
.label_361:
	nop	
	mov	r15, qword ptr [rsp + 0x18]
	add	r15, qword ptr [rsp + 0x460]
	jmp	.label_319
.label_315:
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_313
.label_413:
	mov	edi, 0x20
	mov	rbp, rbp
	mov	rsi, r12
	call	fputc
	lea	rsi, [rsi]
	dec	r15
	mov	rbp, rbp
	jne	.label_413
.label_313:
	movsx	edi, byte ptr [r13]
.label_426:
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	qword ptr [rsp + 0x468], r12
	call	fputc
.label_311:
	mov	r15, qword ptr [rsp + 0x18]
	add	r15, r14
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x468]
	nop	word ptr [rax + rax]
.label_319:
	mov	al, byte ptr [r13 + 1]
	nop	
	inc	r13
	lea	rsi, [rsi]
	mov	r9d, 0xffffffff
	test	al, al
	jne	.label_346
	mov	rbp, rbp
	jmp	.label_420
.label_302:
	xor	r15d, r15d
.label_420:
	lea	rsi, [rsi]
	mov	rax, r15
	mov	rsp, rsp
	add	rsp, 0x498
	pop	rbx
	nop	
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408b20

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	mov	rbp, rbp
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	nop	
	call	fileno
	xor	r12d, r12d
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_470
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	je	.label_472
	mov	rbp, rbp
	cmp	eax, 2
	je	.label_477
	lea	rsi, [rsi]
	mov	edi, 2
	mov	rsp, rsp
	mov	esi, 2
	mov	rsp, rsp
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_477:
	lea	rdi, [rdi]
	mov	r15b, r12b
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 1
	mov	rbp, rbp
	call	dup2
	nop	
	cmp	eax, 1
	mov	rsp, rsp
	setne	r12b
	jmp	.label_478
.label_470:
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_469
.label_472:
	nop	
	xor	r15d, r15d
.label_478:
	nop	
	xor	r13d, r13d
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_476
	nop	
	mov	edi, OFFSET FLAT:.str_6
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	nop	
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_476
	lea	rsi, [rsi]
	mov	r13b, 1
	lea	rdi, [rdi]
	jmp	.label_474
.label_476:
	nop	
	test	r12b, r12b
	je	.label_471
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_6
	nop	
	xor	esi, esi
	nop	
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_474
.label_471:
	lea	rdi, [rdi]
	test	r15b, r15b
	lea	rdi, [rdi]
	je	.label_469
	mov	edi, OFFSET FLAT:.str_6
	xor	esi, esi
	xor	eax, eax
	call	open
	nop	
	cmp	eax, 2
	jne	.label_474
.label_469:
	mov	rdi, rbp
	nop	
	mov	rsi, r14
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_473
.label_474:
	xor	r14d, r14d
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	js	.label_473
	mov	edi, eax
	call	close
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_473:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	lea	rsi, [rsi]
	test	r15b, r15b
	nop	
	je	.label_481
	nop	
	mov	edi, 2
	call	close
.label_481:
	mov	rbp, rbp
	test	r12b, r12b
	je	.label_475
	mov	edi, 1
	nop	
	call	close
.label_475:
	test	r13b, r13b
	je	.label_480
	nop	
	xor	edi, edi
	mov	rsp, rsp
	call	close
.label_480:
	nop	
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_479
	lea	rdi, [rdi]
	mov	dword ptr [rbx], ebp
.label_479:
	mov	rax, r14
	add	rsp, 8
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x408cf0
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d00
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d10
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d20
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	nop	
	mov	rdx, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	cmp	rcx, rdx
	jae	.label_482
	mov	rdi, rcx
	not	rdi
	nop	
	add	rdi, rdx
	mov	rsi, rdi
	mov	rbp, rbp
	shr	rsi, 4
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	bt	rdi, 4
	jb	.label_488
	xor	eax, eax
	nop	
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_489
	mov	rbp, rbp
	mov	rdi, rcx
	nop	dword ptr [rax]
.label_484:
	nop	
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	mov	rsp, rsp
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_484
.label_489:
	add	rcx, 0x10
.label_488:
	nop	
	test	rsi, rsi
	je	.label_482
	nop	word ptr cs:[rax + rax]
.label_487:
	cmp	qword ptr [rcx], 0
	nop	
	mov	esi, 0
	mov	rdi, rcx
	mov	rbp, rbp
	je	.label_483
	nop	word ptr cs:[rax + rax]
.label_485:
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_485
	mov	rbp, rbp
	cmp	rsi, rax
	lea	rsi, [rsi]
	cmova	rax, rsi
.label_483:
	cmp	qword ptr [rcx + 0x10], 0
	nop	
	je	.label_490
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_486:
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	inc	rsi
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_486
	mov	rsp, rsp
	cmp	rsi, rax
	nop	
	cmova	rax, rsi
.label_490:
	mov	rsp, rsp
	add	rcx, 0x20
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rsp, rsp
	jb	.label_487
.label_482:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e30
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rbp, rbp
	mov	rcx, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	cmp	rcx, r9
	mov	esi, 0
	jae	.label_502
	mov	rbp, rbp
	mov	rax, rcx
	mov	rbp, rbp
	not	rax
	lea	rdi, [rdi]
	add	rax, r9
	mov	rbp, rbp
	mov	r8, rax
	shr	r8, 4
	lea	rdi, [rdi]
	xor	edx, edx
	bt	rax, 4
	jb	.label_493
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_503
	mov	esi, 1
	mov	rax, rcx
	nop	dword ptr [rax + rax]
.label_497:
	mov	rbp, rbp
	inc	rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	test	rax, rax
	jne	.label_497
	mov	rsp, rsp
	jmp	.label_499
.label_493:
	mov	rbp, rbp
	xor	esi, esi
	jmp	.label_501
.label_503:
	xor	esi, esi
.label_499:
	add	rcx, 0x10
.label_501:
	test	r8, r8
	nop	
	je	.label_502
	nop	dword ptr [rax]
.label_494:
	cmp	qword ptr [rcx], 0
	mov	rbp, rbp
	mov	rax, rcx
	je	.label_491
	nop	dword ptr [rax]
.label_495:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_495
	lea	rdi, [rdi]
	inc	rsi
.label_491:
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_500
	lea	rax, [rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_492:
	lea	rdi, [rdi]
	inc	rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_492
	inc	rsi
.label_500:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_494
.label_502:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_496
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	cmp	rdx, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	je	.label_498
.label_496:
	xor	eax, eax
.label_498:
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408f40
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	lea	rsi, [rsi]
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbp, rbp
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x20]
	mov	rbp, rbp
	mov	r12, qword ptr [rdi + 0x10]
	mov	r14, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	ebx, ebx
	cmp	rax, rdx
	lea	rdi, [rdi]
	jae	.label_504
	mov	rsp, rsp
	mov	rdi, rax
	not	rdi
	mov	rbp, rbp
	add	rdi, rdx
	lea	rsi, [rsi]
	mov	rsi, rdi
	mov	rsp, rsp
	shr	rsi, 4
	mov	rsp, rsp
	xor	ebx, ebx
	bt	rdi, 4
	mov	rbp, rbp
	jb	.label_506
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_509
	mov	rsp, rsp
	mov	rdi, rax
	nop	word ptr [rax + rax]
.label_505:
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	nop	
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_505
.label_509:
	add	rax, 0x10
.label_506:
	test	rsi, rsi
	je	.label_504
	nop	dword ptr [rax]
.label_514:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	je	.label_515
	nop	word ptr cs:[rax + rax]
.label_510:
	mov	rdi, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	inc	rsi
	nop	
	test	rdi, rdi
	jne	.label_510
	mov	rbp, rbp
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_515:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_508
	lea	rdi, [rax + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_507:
	mov	rdi, qword ptr [rdi + 8]
	mov	rsp, rsp
	inc	rsi
	test	rdi, rdi
	jne	.label_507
	mov	rbp, rbp
	cmp	rsi, rbx
	mov	rbp, rbp
	cmova	rbx, rsi
.label_508:
	add	rax, 0x20
	nop	
	cmp	rax, rdx
	jb	.label_514
.label_504:
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_7
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_4
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	nop	
	call	__fprintf_chk
	nop	
	movq	xmm1, r14
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_511]]
	punpckldq	xmm1, xmm2
	lea	rsi, [rsi]
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_512]]
	nop	
	subpd	xmm1, xmm3
	lea	rdi, [rdi]
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	lea	rsi, [rsi]
	mulsd	xmm0,  qword ptr [word ptr [rip + label_513]]
	mov	rsp, rsp
	movq	xmm1, r12
	mov	rbp, rbp
	punpckldq	xmm1, xmm2
	mov	rbp, rbp
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	mov	rsp, rsp
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_2
	mov	al, 1
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_2
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rcx, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409150

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r12, rsi
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_520
	mov	rbx, qword ptr [r14]
	nop	
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	mov	rsp, rsp
	test	rsi, rsi
	je	.label_518
	lea	rsi, [rsi]
	add	rbx, rax
	je	.label_518
	cmp	rsi, r12
	je	.label_516
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_519:
	nop	
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_517
	nop	
	mov	rbx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_518
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	nop	
	cmp	rsi, r12
	lea	rdi, [rdi]
	jne	.label_519
.label_516:
	mov	r15, r12
	jmp	.label_518
.label_517:
	nop	
	mov	r15, qword ptr [rbx]
.label_518:
	lea	rsi, [rsi]
	mov	rax, r15
	nop	
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	ret	
.label_520:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409210
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	mov	rbp, rbp
	je	.label_521
	nop	
	mov	rcx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi + 8]
	mov	rbp, rbp
	jmp	.label_523
	nop	dword ptr [rax]
.label_522:
	add	rcx, 0x10
.label_523:
	cmp	rcx, rdx
	jae	.label_524
	mov	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_522
.label_521:
	mov	rsp, rsp
	ret	
.label_524:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x409250
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	mov	rsp, rsp
	jae	.label_528
	nop	
	mov	rcx, qword ptr [r14]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	lea	rdx, [rcx + rax]
	nop	word ptr [rax + rax]
.label_530:
	nop	
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	je	.label_526
	test	rdx, rdx
	jne	.label_530
	lea	rdi, [rdi]
	jmp	.label_527
.label_526:
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_527
	mov	rax, qword ptr [rdx]
	jmp	.label_525
.label_527:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	dword ptr [rax]
.label_529:
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	eax, 0
	mov	rbp, rbp
	jae	.label_525
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_529
.label_525:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_528:
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4092f0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_531
	nop	word ptr cs:[rax + rax]
.label_533:
	add	r9, 0x10
.label_531:
	nop	
	cmp	r9, r8
	lea	rdi, [rdi]
	jae	.label_532
	lea	rsi, [rsi]
	cmp	qword ptr [r9], 0
	je	.label_533
	test	r9, r9
	mov	rbp, rbp
	mov	r10, r9
	mov	rbp, rbp
	je	.label_533
	nop	word ptr cs:[rax + rax]
.label_534:
	mov	rsp, rsp
	cmp	rax, rdx
	jae	.label_532
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r10]
	nop	
	mov	qword ptr [rsi + rax*8], rcx
	lea	rdi, [rdi]
	inc	rax
	mov	rsp, rsp
	mov	r10, qword ptr [r10 + 8]
	test	r10, r10
	nop	
	jne	.label_534
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_533
.label_532:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409370
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	xor	ebx, ebx
	mov	rsp, rsp
	jmp	.label_538
	nop	dword ptr [rax]
.label_535:
	lea	rsi, [rsi]
	add	r13, 0x10
.label_538:
	nop	
	cmp	r13, rax
	lea	rsi, [rsi]
	jae	.label_536
	mov	rdi, qword ptr [r13]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_535
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_535
	mov	rsi, r14
	lea	rsi, [rsi]
	call	r15
	mov	rbp, rbp
	test	al, al
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_536
	nop	word ptr [rax + rax]
.label_539:
	mov	rsp, rsp
	inc	rbx
	mov	rbp, rbp
	mov	rbp, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_537
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_539
	jmp	.label_536
	nop	word ptr cs:[rax + rax]
.label_537:
	mov	rax, qword ptr [r12 + 8]
	mov	rbp, rbp
	jmp	.label_535
.label_536:
	nop	
	mov	rax, rbx
	nop	
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409440

	.globl hash_string
	.type hash_string, @function
hash_string:
	nop
	mov	al, byte ptr [rdi]
	nop	
	xor	edx, edx
	test	al, al
	je	.label_541
	inc	rdi
	nop	
	xor	edx, edx
.label_540:
	mov	rcx, rdx
	nop	
	shl	rcx, 5
	sub	rcx, rdx
	nop	
	movzx	eax, al
	add	rax, rcx
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	mov	al, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_540
.label_541:
	mov	rax, rdx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409480
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	mov	eax,  dword ptr [dword ptr [rip + label_542]]
	mov	dword ptr [rdi + 0x10], eax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4094a0

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	r14, r8
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	r12, rdi
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	r13d, OFFSET FLAT:raw_hasher
	lea	rdi, [rdi]
	cmovne	r13, rdx
	test	rcx, rcx
	mov	rsp, rsp
	mov	ebp, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	cmovne	rbp, rcx
	mov	edi, 0x50
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	test	r15, r15
	je	.label_552
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	mov	rbp, rbp
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_545
	movss	xmm0, dword ptr [rbx + 8]
	mov	rsp, rsp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_553]]
	jbe	.label_550
	lea	rsi, [rsi]
	movss	xmm1,  dword ptr [dword ptr [rip + label_557]]
	ucomiss	xmm1, xmm0
	jbe	.label_550
	mov	rbp, rbp
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_549]]
	lea	rsi, [rsi]
	jbe	.label_550
	movss	xmm1, dword ptr [rbx]
	lea	rsi, [rsi]
	xorps	xmm2, xmm2
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm2
	jb	.label_550
	addss	xmm1,  dword ptr [dword ptr [rip + label_553]]
	ucomiss	xmm0, xmm1
	lea	rdi, [rdi]
	jbe	.label_550
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbx + 4]
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_554]]
	ucomiss	xmm2, xmm0
	jb	.label_550
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	mov	rsp, rsp
	jbe	.label_550
.label_545:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_558
	lea	rsi, [rsi]
	mov	eax, r12d
	and	eax, 1
	nop	
	test	r12, r12
	js	.label_544
	mov	rbp, rbp
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_551
.label_544:
	shr	r12, 1
	mov	rsp, rsp
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_551:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_555]]
	mov	rbp, rbp
	movaps	xmm2, xmm0
	mov	rbp, rbp
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	mov	rbp, rbp
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	lea	rsi, [rsi]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_556]]
	nop	
	jae	.label_550
.label_558:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	mov	rsp, rsp
	jmp	.label_547
.label_546:
	mov	rbp, rbp
	add	rbx, 2
.label_547:
	cmp	rbx, -1
	mov	rbp, rbp
	je	.label_550
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	mov	edi, 9
	mov	rbp, rbp
	mov	ecx, 3
	lea	rdi, [rdi]
	jb	.label_548
	nop	word ptr cs:[rax + rax]
.label_543:
	xor	edx, edx
	mov	rax, rbx
	lea	rsi, [rsi]
	div	rcx
	test	rdx, rdx
	nop	
	je	.label_548
	mov	rbp, rbp
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	mov	rsp, rsp
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_543
.label_548:
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_546
	mov	rbp, rbp
	mov	rax, rbx
	lea	rdi, [rdi]
	shr	rax, 0x3c
	jne	.label_550
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_550
	mov	esi, 0x10
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_550
	mov	rsp, rsp
	shl	rbx, 4
	nop	
	add	rax, rbx
	mov	qword ptr [r15 + 8], rax
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [r15 + 0x18], xmm0
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x30], r13
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x38], rbp
	mov	qword ptr [r15 + 0x40], r14
	mov	qword ptr [r15 + 0x48], 0
	mov	rax, r15
	lea	rdi, [rdi]
	jmp	.label_552
.label_550:
	nop	
	mov	rdi, r15
	call	free
	nop	
	xor	eax, eax
.label_552:
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409780

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	rol	rdi, 0x3d
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, rdi
	mov	rsp, rsp
	div	rsi
	lea	rdi, [rdi]
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4097a0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	lea	rsi, [rsi]
	cmp	rdi, rsi
	sete	al
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4097b0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r15, rdi
	mov	rsp, rsp
	mov	r14, qword ptr [r15]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_563
.label_559:
	mov	rsp, rsp
	add	r14, 0x10
.label_563:
	cmp	r14, rax
	jae	.label_564
	lea	rdi, [rdi]
	cmp	qword ptr [r14], 0
	nop	
	je	.label_559
	mov	rsp, rsp
	mov	rbx, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	nop	
	setne	cl
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_562
	nop	word ptr [rax + rax]
.label_560:
	nop	
	test	cl, 1
	je	.label_561
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	rax
	nop	
	mov	rax, qword ptr [r15 + 0x40]
.label_561:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	nop	
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	rbp, rbp
	mov	rbx, rdx
	lea	rdi, [rdi]
	jne	.label_560
.label_562:
	test	cl, cl
	je	.label_565
	mov	rdi, qword ptr [r14]
	call	rax
.label_565:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	nop	
	jmp	.label_559
.label_564:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409890

	.globl hash_free
	.type hash_free, @function
hash_free:
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rsp, rsp
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_573
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x20], 0
	lea	rdi, [rdi]
	je	.label_573
	mov	r15, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	mov	rbp, rbp
	jmp	.label_576
	nop	word ptr [rax + rax]
.label_572:
	mov	rsp, rsp
	add	r15, 0x10
.label_576:
	lea	rdi, [rdi]
	cmp	r15, rax
	jae	.label_573
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_572
	test	r15, r15
	je	.label_572
	mov	rbp, rbp
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_569
	nop	dword ptr [rax]
.label_566:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_569:
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_566
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_572
.label_573:
	mov	r15, qword ptr [r14]
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	jmp	.label_570
	nop	dword ptr [rax + rax]
.label_567:
	mov	rbp, rbp
	add	r15, 0x10
.label_570:
	cmp	r15, rax
	jae	.label_575
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_567
	nop	dword ptr [rax + rax]
.label_571:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_571
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_567
.label_575:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_574
	nop	word ptr cs:[rax + rax]
.label_568:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	call	free
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	jne	.label_568
.label_574:
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	mov	rbp, rbp
	call	free
	mov	rdi, r14
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4099c0

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x50
	mov	r14, rdi
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x28]
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_577
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	and	ecx, 1
	lea	rsi, [rsi]
	test	rsi, rsi
	js	.label_588
	lea	rdi, [rdi]
	cvtsi2ss	xmm0, rsi
	lea	rdi, [rdi]
	jmp	.label_595
.label_588:
	shr	rsi, 1
	or	rcx, rsi
	mov	rsp, rsp
	cvtsi2ss	xmm0, rcx
	mov	rbp, rbp
	addss	xmm0, xmm0
.label_595:
	nop	
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_555]]
	mov	rsp, rsp
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	mov	rsp, rsp
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	xor	rcx, rax
	lea	rsi, [rsi]
	cvttss2si	rsi, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm0, xmm1
	mov	rbp, rbp
	cmovae	rsi, rcx
	mov	rbp, rbp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_556]]
	mov	rbp, rbp
	jae	.label_579
.label_577:
	mov	rsp, rsp
	cmp	rsi, 0xa
	mov	rbp, rbp
	mov	ebx, 0xa
	mov	rbp, rbp
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_592
	nop	word ptr cs:[rax + rax]
.label_590:
	lea	rsi, [rsi]
	add	rbx, 2
.label_592:
	cmp	rbx, -1
	je	.label_579
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	nop	
	mov	edi, 9
	lea	rsi, [rsi]
	mov	ecx, 3
	lea	rsi, [rsi]
	jb	.label_583
.label_593:
	nop	
	xor	edx, edx
	mov	rax, rbx
	nop	
	div	rcx
	test	rdx, rdx
	je	.label_583
	lea	rdi, [rdi + rsi + 4]
	nop	
	add	rcx, 2
	add	rsi, 8
	lea	rsi, [rsi]
	cmp	rdi, rbx
	jb	.label_593
.label_583:
	mov	rsp, rsp
	xor	edx, edx
	nop	
	mov	rax, rbx
	div	rcx
	mov	rsp, rsp
	test	rdx, rdx
	je	.label_590
	nop	
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	ja	.label_579
	mov	bpl, 1
	mov	rbp, rbp
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_587
	nop	
	mov	esi, 0x10
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_579
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbx
	shl	rbx, 4
	mov	rsp, rsp
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rsp + 0x18], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x28]
	movups	xmmword ptr [rsp + 0x28], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x38]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	nop	
	xor	edx, edx
	mov	rsi, r14
	call	transfer_entries
	test	al, al
	je	.label_586
	mov	rdi, qword ptr [r14]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_587
.label_586:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rax
	nop	
	mov	r12, qword ptr [rsp]
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_585
.label_581:
	add	r12, 0x10
.label_585:
	nop	
	cmp	r12, r15
	lea	rsi, [rsi]
	jae	.label_584
	cmp	qword ptr [r12], 0
	je	.label_581
	mov	rbp, rbp
	mov	rbp, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_591
	mov	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_594:
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp]
	nop	
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	lea	rsi, [rsi]
	jae	.label_582
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	nop	
	shl	rax, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + rax], 0
	je	.label_580
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp + 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_578
	nop	
.label_580:
	lea	rdi, [rdi]
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	mov	rbp, rbp
	inc	qword ptr [r14 + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp], 0
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rbp
.label_578:
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rcx
	nop	
	jne	.label_594
.label_591:
	nop	
	mov	qword ptr [r12 + 8], 0
	nop	
	jmp	.label_581
.label_584:
	nop	
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_589
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	call	free
.label_579:
	mov	rbp, rbp
	xor	ebp, ebp
.label_587:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_582:
	mov	rbp, rbp
	call	abort
.label_589:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d30

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 4], edx
	mov	r12, rsi
	mov	rbp, rbp
	mov	rbp, rdi
	mov	rbp, rbp
	mov	r14, qword ptr [r12]
	nop	
	mov	al, 1
	nop	
	cmp	r14, qword ptr [r12 + 8]
	nop	
	jae	.label_600
	nop	word ptr cs:[rax + rax]
.label_605:
	mov	r13, qword ptr [r14]
	nop	
	test	r13, r13
	mov	rbp, rbp
	je	.label_607
	lea	rdi, [rdi]
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_596
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp + 0x10]
	nop	word ptr [rax + rax]
.label_599:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	nop	
	call	qword ptr [rbp + 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	cmp	rax, rsi
	jae	.label_606
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	nop	
	shl	rax, 4
	mov	rsp, rsp
	cmp	qword ptr [rdx + rax], 0
	lea	rsi, [rsi]
	je	.label_597
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rdx + rax + 8], r15
	nop	
	jmp	.label_602
	nop	word ptr cs:[rax + rax]
.label_597:
	mov	rbp, rbp
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	nop	
	mov	qword ptr [r15], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	nop	
	mov	qword ptr [rbp + 0x48], r15
.label_602:
	test	rcx, rcx
	mov	r15, rcx
	mov	rsp, rsp
	jne	.label_599
	mov	r13, qword ptr [r14]
.label_596:
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], 0
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 4]
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_607
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	mov	rbp, rbp
	call	qword ptr [rbp + 0x30]
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsp, rsp
	cmp	rbx, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	jae	.label_604
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	nop	
	cmp	qword ptr [r15 + rbx], 0
	je	.label_609
	mov	rax, qword ptr [rbp + 0x48]
	nop	
	test	rax, rax
	je	.label_598
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_601
.label_609:
	nop	
	add	r15, rbx
	nop	
	mov	qword ptr [r15], r13
	nop	
	inc	qword ptr [rbp + 0x18]
	mov	rsp, rsp
	jmp	.label_603
.label_598:
	mov	edi, 0x10
	nop	
	call	malloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_608
.label_601:
	mov	qword ptr [rax], r13
	nop	
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_603:
	mov	rbp, rbp
	mov	qword ptr [r14], 0
	nop	
	dec	qword ptr [r12 + 0x18]
.label_607:
	mov	rbp, rbp
	add	r14, 0x10
	mov	rbp, rbp
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_605
	mov	al, 1
.label_600:
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_608:
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_600
.label_606:
	call	abort
.label_604:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f40

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbp, rbp
	mov	r13, rdi
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_614
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rsp, rsp
	mov	rdi, r14
	nop	
	call	qword ptr [r13 + 0x30]
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	rbp, qword ptr [r13 + 0x10]
	mov	rbp, rbp
	jae	.label_614
	mov	rbx, qword ptr [r13]
	mov	rbp, rbp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	nop	
	test	rsi, rsi
	je	.label_620
	mov	rsp, rsp
	cmp	rsi, r14
	je	.label_630
	mov	rdi, r14
	nop	
	call	qword ptr [r13 + 0x38]
	test	al, al
	lea	rdi, [rdi]
	je	.label_632
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	jmp	.label_623
.label_630:
	mov	rax, r14
	jmp	.label_634
.label_632:
	mov	rax, qword ptr [rbx + rbp + 8]
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_620
	lea	rbp, [rbx + rbp + 8]
	nop	
.label_615:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	mov	rsp, rsp
	je	.label_628
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	jne	.label_610
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_615
	nop	
	jmp	.label_620
.label_628:
	mov	rbp, rbp
	mov	rax, r14
	jmp	.label_623
.label_610:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp]
.label_623:
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_620
.label_634:
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	r15, r15
	je	.label_624
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	jmp	.label_624
.label_620:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsp, rsp
	mov	edx, eax
	and	edx, 1
	nop	
	test	rax, rax
	mov	rbp, rbp
	js	.label_611
	cvtsi2ss	xmm1, rax
	jmp	.label_622
.label_611:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	lea	rdi, [rdi]
	addss	xmm1, xmm1
.label_622:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	edx, ecx
	and	edx, 1
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_613
	cvtsi2ss	xmm0, rcx
	jmp	.label_629
.label_613:
	shr	rcx, 1
	or	rdx, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, rdx
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_629:
	lea	rdi, [rdi]
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm3
	nop	
	jbe	.label_619
	nop	
	mov	ecx, OFFSET FLAT:default_tuning
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rbp, rbp
	je	.label_637
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_553]]
	jbe	.label_612
	nop	
	movss	xmm3,  dword ptr [dword ptr [rip + label_557]]
	ucomiss	xmm3, xmm2
	jbe	.label_612
	mov	rbp, rbp
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_549]]
	jbe	.label_612
	movss	xmm3, dword ptr [rax]
	lea	rsi, [rsi]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	lea	rdi, [rdi]
	jb	.label_612
	addss	xmm3,  dword ptr [dword ptr [rip + label_553]]
	ucomiss	xmm2, xmm3
	jbe	.label_612
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_554]]
	ucomiss	xmm5, xmm4
	mov	rbp, rbp
	jb	.label_612
	lea	rsi, [rsi]
	ucomiss	xmm4, xmm3
	lea	rsi, [rsi]
	ja	.label_627
.label_612:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_626]]
	jmp	.label_627
.label_637:
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:default_tuning
.label_627:
	movaps	xmm3, xmm2
	mov	rsp, rsp
	mulss	xmm3, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm3
	jbe	.label_619
	nop	
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rbp, rbp
	jne	.label_616
	mov	rbp, rbp
	mulss	xmm0, xmm2
.label_616:
	lea	rsi, [rsi]
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_556]]
	mov	rsp, rsp
	jae	.label_624
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_555]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	lea	rdi, [rdi]
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r13
	call	hash_rehash
	test	al, al
	lea	rdi, [rdi]
	je	.label_624
	mov	rsi, qword ptr [r13 + 0x10]
	nop	
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	lea	rsi, [rsi]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_614
	nop	
	mov	r15, qword ptr [r13]
	mov	rsp, rsp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [r15 + rbp]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_619
	cmp	rsi, r14
	mov	rbp, rbp
	mov	rax, r14
	lea	rdi, [rdi]
	je	.label_631
	mov	rdi, r14
	mov	rbp, rbp
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_636
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	jmp	.label_631
.label_636:
	mov	rax, qword ptr [r15 + rbp + 8]
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_619
	lea	rbp, [r15 + rbp + 8]
.label_625:
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	lea	rdi, [rdi]
	je	.label_639
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_621
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	mov	rsp, rsp
	add	rbp, 8
	test	rax, rax
	mov	rsp, rsp
	jne	.label_625
	lea	rsi, [rsi]
	jmp	.label_619
.label_639:
	mov	rax, r14
	lea	rdi, [rdi]
	jmp	.label_631
.label_621:
	mov	rax, qword ptr [rbp]
.label_631:
	mov	rsp, rsp
	test	rax, rax
	jne	.label_633
.label_619:
	cmp	qword ptr [r12], 0
	je	.label_635
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	mov	rbp, rbp
	je	.label_638
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0x48], rcx
	nop	
	jmp	.label_640
.label_635:
	lea	rsi, [rsi]
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_617]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	mov	rsp, rsp
	jmp	.label_618
.label_638:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_624
.label_640:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_618:
	lea	rdi, [rdi]
	mov	ebp, 1
.label_624:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_614:
	mov	rsp, rsp
	call	abort
.label_633:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a380

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	ecx, -1
	je	.label_641
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rax, rbx
.label_641:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a3d0

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	rbp, rbp
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdi, r14
	mov	rbp, rbp
	call	qword ptr [r15 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r15 + 0x10]
	jae	.label_662
	mov	rbp, rbp
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	nop	
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_644
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_647
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_652
	mov	r14, qword ptr [r13]
.label_647:
	nop	
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_655
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rax]
	lea	rsi, [rsi]
	movups	xmmword ptr [r13], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x48]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_658
.label_652:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_644
	lea	rsi, [rsi]
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_654:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_646
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	mov	rsp, rsp
	jne	.label_648
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	lea	rsi, [rsi]
	jne	.label_654
	lea	rsi, [rsi]
	jmp	.label_644
.label_655:
	mov	qword ptr [r13], 0
	lea	rsi, [rsi]
	jmp	.label_658
.label_646:
	mov	rcx, rax
	jmp	.label_660
.label_648:
	mov	r14, qword ptr [rcx]
.label_660:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x48], rcx
.label_658:
	lea	rdi, [rdi]
	xor	r12d, r12d
	test	r14, r14
	je	.label_644
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	mov	rbp, rbp
	jne	.label_645
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_649
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	jmp	.label_656
.label_649:
	shr	rax, 1
	mov	rsp, rsp
	or	rcx, rax
	mov	rsp, rsp
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_656:
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	nop	
	test	rcx, rcx
	js	.label_661
	cvtsi2ss	xmm0, rcx
	mov	rsp, rsp
	jmp	.label_643
.label_661:
	mov	rbp, rbp
	shr	rcx, 1
	or	rdx, rcx
	nop	
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_643:
	movaps	xmm3, xmm2
	nop	
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_645
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_651
	lea	rdi, [rdi]
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_553]]
	nop	
	jbe	.label_642
	mov	rsp, rsp
	movss	xmm4,  dword ptr [dword ptr [rip + label_557]]
	ucomiss	xmm4, xmm3
	mov	rsp, rsp
	jbe	.label_642
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_642
	mov	rbp, rbp
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_549]]
	jbe	.label_642
	lea	rsi, [rsi]
	movss	xmm4,  dword ptr [dword ptr [rip + label_553]]
	addss	xmm4, xmm2
	mov	rbp, rbp
	ucomiss	xmm3, xmm4
	jbe	.label_642
	movss	xmm3, dword ptr [rax + 4]
	nop	
	movss	xmm5,  dword ptr [dword ptr [rip + label_554]]
	nop	
	ucomiss	xmm5, xmm3
	jb	.label_642
	ucomiss	xmm3, xmm4
	ja	.label_650
.label_642:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_650
.label_651:
	mov	eax, OFFSET FLAT:default_tuning
.label_650:
	mulss	xmm2, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm2, xmm1
	jbe	.label_645
	mulss	xmm0, dword ptr [rax + 4]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x10], 0
	mov	rsp, rsp
	jne	.label_659
	mulss	xmm0, dword ptr [rax + 8]
.label_659:
	movss	xmm1,  dword ptr [dword ptr [rip + label_555]]
	nop	
	movaps	xmm2, xmm0
	lea	rsi, [rsi]
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	lea	rdi, [rdi]
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	mov	rbp, rbp
	test	al, al
	jne	.label_645
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_653
.label_657:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	mov	rsp, rsp
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	jne	.label_657
.label_653:
	nop	
	mov	qword ptr [r15 + 0x48], 0
.label_645:
	nop	
	mov	r12, r14
.label_644:
	mov	rax, r12
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_662:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a720

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x148
	mov	r12, r8
	mov	rbp, rbp
	mov	r13, rcx
	mov	r14d, edx
	lea	rdi, [rdi]
	mov	r15, rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x68], r15
	mov	qword ptr [rsp + 0x120], rdi
	mov	eax, r14d
	and	eax, 3
	mov	dword ptr [rsp + 0x84], eax
	mov	eax, r14d
	and	eax, 0x20
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xf4], eax
	mov	eax, 0x400
	lea	rsi, [rsi]
	mov	ecx, 0x3e8
	cmovne	ecx, eax
	mov	dword ptr [rsp + 0xdc], ecx
	lea	rdi, [rdi]
	call	localeconv
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rbp, qword ptr [rbx]
	mov	rdi, rbp
	call	strlen
	mov	rbp, rbp
	lea	rcx, [rax - 1]
	cmp	rcx, 0x10
	mov	ecx, 1
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0xb8], rcx
	mov	eax, OFFSET FLAT:.str_1
	cmovb	rax, rbp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x130], rax
	mov	rsp, rsp
	mov	rbp, qword ptr [rbx + 8]
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf8], rax
	mov	rdi, rbp
	call	strlen
	lea	rdi, [rdi]
	mov	rsi, r12
	nop	
	cmp	rax, 0x11
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str_3
	cmovb	rax, rbp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], rax
	nop	
	lea	rbx, [r15 + 0x287]
	mov	rbp, rbp
	cmp	rsi, r13
	lea	rdi, [rdi]
	jbe	.label_714
	nop	
	test	r13, r13
	mov	r8d, r14d
	mov	rdi, qword ptr [rsp + 0x120]
	mov	rsp, rsp
	je	.label_676
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, rsi
	mov	rbp, rbp
	div	r13
	mov	rsp, rsp
	test	rdx, rdx
	jne	.label_676
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, rsi
	div	r13
	mov	rbp, rsi
	mov	rsi, rax
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, rdi
	lea	rsi, [rsi]
	div	rsi
	mov	r15, rax
	nop	
	add	rdx, rdx
	nop	
	lea	rax, [rdx + rdx*4]
	xor	edx, edx
	div	rsi
	mov	rcx, rax
	add	rdx, rdx
	mov	rsp, rsp
	setne	al
	cmp	rsi, rdx
	sbb	edi, edi
	and	edi, 1
	nop	
	or	edi, 2
	cmp	rdx, rsi
	mov	rsi, rbp
	nop	
	movzx	ebp, al
	cmovae	ebp, edi
	jmp	.label_677
.label_714:
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r13
	div	rsi
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	r8d, r14d
	mov	rdi, qword ptr [rsp + 0x120]
	mov	rbp, rbp
	jne	.label_676
	mov	rsp, rsp
	xor	ebp, ebp
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r13
	div	rsi
	mov	rcx, rax
	mov	rsp, rsp
	mov	r15, rcx
	lea	rsi, [rsi]
	imul	r15, rdi
	xor	edx, edx
	mov	rax, r15
	div	rcx
	mov	rsp, rsp
	cmp	rax, rdi
	lea	rdi, [rdi]
	mov	ecx, 0
	jne	.label_676
.label_677:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x110], rbx
	mov	rbp, rbp
	mov	r14d, r8d
	nop	
	and	r14d, 0x10
	mov	r13d, 0xffffffff
	nop	
	je	.label_671
	mov	rsp, rsp
	mov	ebx, dword ptr [rsp + 0xdc]
	nop	
	mov	edi, ebx
	xor	r13d, r13d
	mov	rbp, rbp
	cmp	rdi, r15
	mov	rbp, rbp
	jbe	.label_681
	nop	
	mov	r12, qword ptr [rsp + 0x110]
	jmp	.label_688
.label_676:
	mov	qword ptr [rsp + 0xe8], rsi
	mov	rbp, rbp
	test	rsi, rsi
	setns	al
	lea	rsi, [rsi]
	movzx	eax, al
	fild	qword ptr [rsp + 0xe8]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_672]]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rdi
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_672]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], r13
	lea	rsi, [rsi]
	test	r13, r13
	setns	al
	nop	
	movzx	eax, al
	fild	qword ptr [rsp + 0x78]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_672]]
	fdivrp	st(2)
	mov	rsp, rsp
	fmulp	st(1)
	nop	
	test	r8b, 0x10
	lea	rsi, [rsi]
	jne	.label_691
	nop	
	mov	ecx, dword ptr [rsp + 0x84]
	lea	rdi, [rdi]
	cmp	ecx, 1
	lea	rsi, [rsi]
	je	.label_713
	mov	rsp, rsp
	fld	xword ptr [word ptr [rip + label_666]]
	fucomip	st(1)
	mov	r15, qword ptr [rsp + 0x68]
	jbe	.label_667
	mov	qword ptr [rsp + 0x140], rsi
	nop	
	mov	dword ptr [rsp + 0x120], r8d
	fld	dword ptr [dword ptr [rip + label_555]]
	fld	st(1)
	mov	rsp, rsp
	fsub	st(1)
	mov	rsp, rsp
	fnstcw	word ptr [rsp + 0x82]
	lea	rdi, [rdi]
	mov	ax, word ptr [rsp + 0x82]
	lea	rdi, [rdi]
	mov	word ptr [rsp + 0x82], 0xc7f
	mov	rsp, rsp
	fldcw	word ptr [rsp + 0x82]
	mov	rsp, rsp
	mov	word ptr [rsp + 0x82], ax
	lea	rdi, [rdi]
	fistp	qword ptr [rsp + 0x60]
	fldcw	word ptr [rsp + 0x82]
	mov	rbp, rbp
	fnstcw	word ptr [rsp + 0x10e]
	nop	
	mov	ax, word ptr [rsp + 0x10e]
	mov	rsp, rsp
	mov	word ptr [rsp + 0x10e], 0xc7f
	fldcw	word ptr [rsp + 0x10e]
	lea	rsi, [rsi]
	mov	word ptr [rsp + 0x10e], ax
	fld	st(1)
	fistp	qword ptr [rsp + 0x18]
	nop	
	fldcw	word ptr [rsp + 0x10e]
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	xor	rax, qword ptr [rsp + 0x60]
	fxch	st(1)
	nop	
	fucomi	st(1)
	nop	
	fstp	st(1)
	cmovb	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	test	ecx, ecx
	nop	
	sete	cl
	mov	qword ptr [rsp + 0x100], rax
	test	rax, rax
	setns	dl
	movzx	edx, dl
	lea	rdi, [rdi]
	fild	qword ptr [rsp + 0x100]
	mov	rsp, rsp
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_672]]
	lea	rdi, [rdi]
	fucomip	st(1)
	fstp	st(0)
	setp	dl
	nop	
	mov	rsi, rbx
	setne	bl
	or	bl, dl
	mov	rbp, rbp
	and	bl, cl
	movzx	ecx, bl
	nop	
	mov	rbx, rsi
	lea	rdi, [rdi]
	add	rcx, rax
	mov	qword ptr [rsp + 0xe0], rcx
	mov	rsp, rsp
	setns	al
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rsp, rsp
	fild	qword ptr [rsp + 0xe0]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_672]]
	jmp	.label_673
.label_691:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x140], rsi
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0xdc]
	nop	
	mov	eax, eax
	mov	qword ptr [rsp + 0x90], rax
	lea	rdi, [rdi]
	fld1	
	nop	
	xor	r13d, r13d
	lea	rsi, [rsi]
	fild	qword ptr [rsp + 0x90]
	fldz	
	nop	word ptr cs:[rax + rax]
.label_706:
	fstp	st(0)
	mov	rsp, rsp
	fmul	st(1), st(0)
	inc	r13d
	fld	st(0)
	mov	rsp, rsp
	fmul	st(2)
	cmp	r13d, 7
	lea	rsi, [rsi]
	jg	.label_703
	lea	rdi, [rdi]
	fxch	st(3)
	fucomi	st(3)
	fstp	st(3)
	nop	
	fldz	
	mov	rbp, rbp
	jae	.label_706
.label_703:
	fstp	st(1)
	fstp	st(0)
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x120], r8d
	lea	rdi, [rdi]
	fdivp	st(1)
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rsp + 0x84]
	mov	rsp, rsp
	cmp	r14d, 1
	mov	rbp, rbp
	fld	st(0)
	mov	r15, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rsp + 0xf4]
	je	.label_668
	fstp	st(0)
	lea	rdi, [rdi]
	fld	xword ptr [word ptr [rip + label_666]]
	mov	rbp, rbp
	fucomip	st(1)
	fld	st(0)
	jbe	.label_668
	nop	
	fstp	st(0)
	fld	dword ptr [dword ptr [rip + label_555]]
	mov	rbp, rbp
	fld	st(1)
	mov	rsp, rsp
	fsub	st(1)
	fnstcw	word ptr [rsp + 0x12e]
	mov	rsp, rsp
	mov	ax, word ptr [rsp + 0x12e]
	mov	rsp, rsp
	mov	word ptr [rsp + 0x12e], 0xc7f
	fldcw	word ptr [rsp + 0x12e]
	mov	word ptr [rsp + 0x12e], ax
	fistp	qword ptr [rsp + 0xc0]
	fldcw	word ptr [rsp + 0x12e]
	fnstcw	word ptr [rsp + 0x56]
	lea	rsi, [rsi]
	mov	ax, word ptr [rsp + 0x56]
	lea	rsi, [rsi]
	mov	word ptr [rsp + 0x56], 0xc7f
	fldcw	word ptr [rsp + 0x56]
	mov	rsp, rsp
	mov	word ptr [rsp + 0x56], ax
	lea	rsi, [rsi]
	fld	st(1)
	fistp	qword ptr [rsp + 0x98]
	fldcw	word ptr [rsp + 0x56]
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	xor	rax, qword ptr [rsp + 0xc0]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	cmovb	rax, qword ptr [rsp + 0x98]
	test	r14d, r14d
	lea	rsi, [rsi]
	sete	cl
	mov	qword ptr [rsp + 0xd0], rax
	nop	
	test	rax, rax
	setns	dl
	nop	
	movzx	edx, dl
	fild	qword ptr [rsp + 0xd0]
	mov	rsp, rsp
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_672]]
	fucomip	st(1)
	setp	dl
	mov	rsi, rbx
	setne	bl
	or	bl, dl
	and	bl, cl
	mov	rbp, rbp
	movzx	ecx, bl
	mov	rbp, rbp
	mov	rbx, rsi
	add	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0x58]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_672]]
.label_668:
	fxch	st(1)
	fstp	xword ptr [rsp + 0x110]
	lea	rdi, [rdi]
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.3_3
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsp, rsp
	call	__sprintf_chk
	mov	rdi, r15
	mov	rbp, rbp
	call	strlen
	mov	ecx, ebp
	shr	ecx, 5
	mov	rbp, rbp
	xor	ecx, 1
	or	rcx, 2
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	add	rcx, rdx
	cmp	rcx, rax
	mov	rsp, rsp
	jb	.label_693
	inc	rdx
	mov	ecx, dword ptr [rsp + 0x120]
	test	cl, 8
	jne	.label_701
	nop	
	mov	r14, rdx
	nop	
	jmp	.label_675
.label_671:
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x110]
	jmp	.label_688
.label_713:
	mov	qword ptr [rsp + 0x140], rsi
	mov	dword ptr [rsp + 0x120], r8d
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	jmp	.label_673
.label_667:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x140], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x120], r8d
.label_673:
	fstp	xword ptr [rsp]
	xor	r14d, r14d
	mov	esi, 1
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.2_3
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
	nop	
	mov	r13d, 0xffffffff
	jmp	.label_675
.label_701:
	movzx	ecx, byte ptr [rax + r15 - 1]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_679
.label_693:
	fld	xword ptr [rsp + 0x110]
	fmul	dword ptr [dword ptr [rip + label_684]]
	nop	
	cmp	r14d, 1
	lea	rsi, [rsi]
	je	.label_685
	nop	
	fld	xword ptr [word ptr [rip + label_666]]
	fucomip	st(1)
	mov	rbp, rbp
	jbe	.label_685
	mov	rsp, rsp
	fld	dword ptr [dword ptr [rip + label_555]]
	mov	rsp, rsp
	fld	st(1)
	fsub	st(1)
	lea	rdi, [rdi]
	fnstcw	word ptr [rsp + 0xa6]
	mov	ax, word ptr [rsp + 0xa6]
	nop	
	mov	word ptr [rsp + 0xa6], 0xc7f
	fldcw	word ptr [rsp + 0xa6]
	mov	word ptr [rsp + 0xa6], ax
	lea	rdi, [rdi]
	fistp	qword ptr [rsp + 0x10]
	mov	rsp, rsp
	fldcw	word ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	fnstcw	word ptr [rsp + 0x13e]
	mov	rsp, rsp
	mov	ax, word ptr [rsp + 0x13e]
	mov	word ptr [rsp + 0x13e], 0xc7f
	nop	
	fldcw	word ptr [rsp + 0x13e]
	mov	word ptr [rsp + 0x13e], ax
	fld	st(1)
	nop	
	fistp	qword ptr [rsp + 0x88]
	mov	rbp, rbp
	fldcw	word ptr [rsp + 0x13e]
	nop	
	movabs	rax, 0x8000000000000000
	xor	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	fxch	st(1)
	mov	rbp, rbp
	fucomi	st(1)
	lea	rdi, [rdi]
	fstp	st(1)
	lea	rdi, [rdi]
	cmovb	rax, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	test	r14d, r14d
	sete	cl
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa8], rax
	test	rax, rax
	setns	dl
	lea	rsi, [rsi]
	movzx	edx, dl
	fild	qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_672]]
	fucomip	st(1)
	nop	
	fstp	st(0)
	setp	dl
	mov	rsi, rbx
	setne	bl
	or	bl, dl
	and	bl, cl
	movzx	ecx, bl
	lea	rdi, [rdi]
	mov	rbx, rsi
	add	rcx, rax
	mov	qword ptr [rsp + 0xb0], rcx
	mov	rbp, rbp
	setns	al
	mov	rbp, rbp
	movzx	eax, al
	fild	qword ptr [rsp + 0xb0]
	nop	
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_672]]
.label_685:
	fdiv	dword ptr [dword ptr [rip + label_684]]
	fstp	xword ptr [rsp]
	xor	r14d, r14d
	mov	rbp, rbp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.2_3
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	jmp	.label_675
.label_681:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x140], rsi
	nop	word ptr cs:[rax + rax]
.label_692:
	lea	rdi, [rdi]
	xor	edx, edx
	nop	
	mov	rax, r15
	nop	
	div	rdi
	nop	
	lea	edx, [rdx + rdx*4]
	lea	ecx, [rcx + rdx*2]
	mov	rbp, rbp
	mov	esi, ebp
	nop	
	sar	esi, 1
	xor	edx, edx
	lea	rsi, [rsi]
	mov	r15, rax
	mov	eax, ecx
	div	ebx
	nop	
	lea	edx, [rsi + rdx*2]
	cmp	edx, ebx
	mov	rbp, rbp
	mov	ecx, eax
	jae	.label_663
	add	edx, ebp
	lea	rsi, [rsi]
	setne	al
	movzx	ebp, al
	nop	
	jmp	.label_682
	nop	word ptr cs:[rax + rax]
.label_663:
	add	edx, ebp
	cmp	ebx, edx
	lea	rsi, [rsi]
	sbb	ebp, ebp
	and	ebp, 1
	nop	
	or	ebp, 2
.label_682:
	nop	
	inc	r13d
	cmp	r13d, 7
	mov	rsp, rsp
	jg	.label_689
	lea	rdi, [rdi]
	cmp	rdi, r15
	lea	rsi, [rsi]
	jbe	.label_692
.label_689:
	cmp	r15, 9
	ja	.label_695
	mov	eax, dword ptr [rsp + 0x84]
	cmp	eax, 1
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x68]
	jne	.label_696
	mov	eax, ecx
	and	eax, 1
	add	eax, ebp
	nop	
	cmp	eax, 2
	lea	rsi, [rsi]
	ja	.label_699
	mov	rsp, rsp
	jmp	.label_665
.label_679:
	mov	r14, rdx
.label_675:
	mov	qword ptr [rsp + 0x68], r15
	mov	rbp, rbx
	mov	rsp, rsp
	sub	rbp, rax
	mov	rdi, rbp
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	call	memmove
	mov	r12, rbx
	sub	r12, r14
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rsp + 0x120]
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xf4]
	mov	rbp, rbp
	jmp	.label_709
.label_695:
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	jmp	.label_670
.label_696:
	nop	
	test	eax, eax
	jne	.label_665
	mov	rsp, rsp
	test	ebp, ebp
	mov	rbp, rbp
	je	.label_665
.label_699:
	inc	ecx
	xor	ebp, ebp
	cmp	ecx, 0xa
	jne	.label_665
	inc	r15
	mov	rsp, rsp
	xor	ecx, ecx
	nop	
	cmp	r15, 9
	mov	rbp, rbp
	mov	ebp, 0
	ja	.label_705
.label_665:
	nop	
	test	r8b, 8
	lea	rdi, [rdi]
	je	.label_680
	test	ecx, ecx
	jne	.label_680
	mov	r12, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	jmp	.label_683
.label_680:
	lea	rdi, [rdi]
	add	ecx, 0x30
	nop	
	lea	r12, [rdx + 0x286]
	mov	byte ptr [rdx + 0x286], cl
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	sub	r12, rdx
	mov	rsp, rsp
	mov	rdi, r12
	nop	
	mov	rsi, qword ptr [rsp + 0x130]
	mov	ebx, r8d
	call	memcpy
	mov	rsp, rsp
	mov	r8d, ebx
	xor	ebp, ebp
.label_683:
	lea	rsi, [rsi]
	xor	ecx, ecx
.label_670:
	mov	rsi, qword ptr [rsp + 0x140]
.label_688:
	mov	eax, dword ptr [rsp + 0x84]
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_702
	cmp	eax, 1
	jne	.label_687
	lea	rsi, [rsi]
	movsxd	rax, ebp
	nop	
	mov	edx, r15d
	and	edx, 1
	add	rdx, rax
	nop	
	setne	al
	movzx	eax, al
	nop	
	add	eax, ecx
	nop	
	cmp	eax, 5
	jle	.label_687
	lea	rsi, [rsi]
	jmp	.label_711
.label_702:
	add	ecx, ebp
	nop	
	jle	.label_687
.label_711:
	inc	r15
	mov	eax, dword ptr [rsp + 0xdc]
	cmp	r13d, 7
	nop	
	jg	.label_687
	test	r14d, r14d
	lea	rsi, [rsi]
	je	.label_687
	cmp	r15, rax
	jne	.label_687
	mov	qword ptr [rsp + 0x140], rsi
	inc	r13d
	mov	r15d, 1
	mov	rbp, rbp
	test	r8b, 8
	jne	.label_664
	mov	byte ptr [r12 - 1], 0x30
	dec	r12
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	sub	r12, rdx
	lea	rsi, [rsi]
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x130]
	mov	ebx, r8d
	lea	rsi, [rsi]
	call	memcpy
	mov	r8d, ebx
	mov	r15d, 1
	jmp	.label_664
.label_687:
	mov	qword ptr [rsp + 0x140], rsi
.label_664:
	mov	rbx, qword ptr [rsp + 0x110]
	nop	
	mov	edi, dword ptr [rsp + 0xf4]
	lea	rdi, [rdi]
	movabs	rcx, 0xcccccccccccccccd
	mov	rbp, rbp
	mov	rbp, r12
	nop	dword ptr [rax + rax]
.label_698:
	lea	rdi, [rdi]
	mov	rax, r15
	lea	rdi, [rdi]
	mul	rcx
	mov	eax, edx
	mov	rbp, rbp
	shr	eax, 2
	lea	rsi, [rsi]
	and	eax, 0x3ffffffe
	lea	eax, [rax + rax*4]
	lea	rsi, [rsi]
	mov	esi, r15d
	sub	esi, eax
	or	sil, 0x30
	mov	byte ptr [rbp - 1], sil
	lea	rsi, [rsi]
	dec	rbp
	mov	rsp, rsp
	shr	rdx, 3
	cmp	r15, 9
	mov	r15, rdx
	ja	.label_698
.label_709:
	nop	
	test	r8b, 4
	jne	.label_710
	mov	rsp, rsp
	mov	r12, rbp
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x140]
	mov	rsp, rsp
	jmp	.label_712
.label_710:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x84], r13d
	mov	dword ptr [rsp + 0x120], r8d
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x110], rbx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xf4], edi
	mov	rbp, rbp
	mov	rbx, r12
	mov	rsp, rsp
	sub	rbx, rbp
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x70]
	call	strlen
	mov	r14, rax
	lea	rdi, [rsp + 0x20]
	mov	rsi, rbp
	nop	
	mov	rdx, rbx
	call	memcpy
	lea	rdi, [rdi]
	mov	r15, r14
	mov	rbp, rbp
	neg	r15
	mov	rsp, rsp
	mov	rbp, -1
	mov	r13, qword ptr [rsp + 0xf8]
	mov	rsp, rsp
	jmp	.label_686
	nop	dword ptr [rax]
.label_678:
	add	r12, r15
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	mov	rdx, r14
	nop	
	call	memcpy
.label_686:
	movzx	eax, byte ptr [r13]
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_697
	nop	
	cmp	eax, 0x7f
	cmovae	rax, rbx
	mov	rbp, rbp
	inc	r13
	lea	rsi, [rsi]
	mov	rbp, rax
.label_697:
	cmp	rbx, rbp
	cmovb	rbp, rbx
	mov	rsp, rsp
	sub	r12, rbp
	mov	rax, rbx
	mov	rbp, rbp
	sub	rax, rbp
	lea	rsi, [rsi]
	lea	rsi, [rsp + rax + 0x20]
	mov	rdi, r12
	mov	rdx, rbp
	call	memcpy
	nop	
	sub	rbx, rbp
	jne	.label_678
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0xf4]
	mov	rbx, qword ptr [rsp + 0x110]
	mov	r8d, dword ptr [rsp + 0x120]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x140]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 0x84]
.label_712:
	nop	
	test	r8b, r8b
	mov	rbp, rbp
	jns	.label_669
	test	r13d, r13d
	lea	rdi, [rdi]
	jns	.label_674
	xor	r13d, r13d
	cmp	rsi, 2
	jb	.label_674
	mov	eax, dword ptr [rsp + 0xdc]
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edx, 1
	nop	
.label_690:
	mov	r13d, 8
	cmp	ecx, 7
	je	.label_674
	mov	rbp, rbp
	inc	ecx
	nop	
	imul	rdx, rax
	cmp	rdx, rsi
	mov	r13d, ecx
	jb	.label_690
.label_674:
	nop	
	mov	eax, r8d
	and	eax, 0x100
	mov	rbp, rbp
	test	r8b, 0x40
	lea	rsi, [rsi]
	je	.label_694
	mov	rbp, rbp
	mov	ecx, r13d
	mov	rbp, rbp
	or	ecx, eax
	mov	rsp, rsp
	je	.label_694
	mov	rbx, qword ptr [rsp + 0x68]
	mov	byte ptr [rbx + 0x287], 0x20
	mov	rsp, rsp
	add	rbx, 0x288
.label_694:
	lea	rsi, [rsi]
	test	r13d, r13d
	je	.label_700
	test	edi, edi
	lea	rdi, [rdi]
	jne	.label_707
	mov	cl, 0x6b
	cmp	r13d, 1
	je	.label_704
.label_707:
	lea	rsi, [rsi]
	movsxd	rcx, r13d
	mov	cl,  byte ptr [byte ptr [rcx + power_letter]]
.label_704:
	nop	
	mov	byte ptr [rbx], cl
	lea	rdi, [rdi]
	inc	rbx
.label_700:
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_669
	mov	rsp, rsp
	test	edi, edi
	je	.label_708
	test	r13d, r13d
	lea	rsi, [rsi]
	je	.label_708
	mov	byte ptr [rbx], 0x69
	inc	rbx
.label_708:
	lea	rsi, [rsi]
	mov	byte ptr [rbx], 0x42
	mov	rsp, rsp
	inc	rbx
.label_669:
	mov	byte ptr [rbx], 0
	mov	rax, r12
	mov	rsp, rsp
	add	rsp, 0x148
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_705:
	xor	ebp, ebp
	mov	r12, qword ptr [rsp + 0x110]
	lea	rdi, [rdi]
	mov	r15d, 0xa
	jmp	.label_670
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b530

	.globl human_options
	.type human_options, @function
human_options:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbp, rbp
	mov	r14, rsi
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_719
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.4_2
	nop	
	call	getenv
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	test	rdi, rdi
	jne	.label_719
	mov	edi, OFFSET FLAT:.str.5_0
	call	getenv
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_724
.label_719:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rdi]
	lea	rdi, [rdi]
	lea	rbx, [rdi + 1]
	mov	rsp, rsp
	cmp	eax, 0x27
	sete	al
	cmovne	rbx, rdi
	mov	rbp, rbp
	movzx	ebp, al
	shl	ebp, 2
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:block_size_args
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	argmatch
	test	eax, eax
	nop	
	js	.label_717
	cdqe	
	lea	rsi, [rsi]
	or	ebp,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	lea	rdi, [rdi]
	mov	qword ptr [r15], 1
.label_715:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_722
.label_717:
	mov	rsp, rsp
	lea	rsi, [rsp]
	mov	rsp, rsp
	xor	edx, edx
	mov	r8d, OFFSET FLAT:.str.6_0
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rcx, r15
	lea	rsi, [rsi]
	call	xstrtoumax
	test	eax, eax
	mov	rbp, rbp
	je	.label_723
	lea	rsi, [rsi]
	mov	dword ptr [r14], 0
.label_722:
	cmp	qword ptr [r15], 0
	mov	rsp, rsp
	jne	.label_721
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.9_0
	lea	rdi, [rdi]
	call	getenv
	test	rax, rax
	mov	eax, 0x200
	nop	
	mov	ecx, 0x400
	mov	rbp, rbp
	cmovne	rcx, rax
	mov	qword ptr [r15], rcx
	mov	eax, 4
.label_721:
	lea	rdi, [rdi]
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_723:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbx]
	lea	rsi, [rsi]
	add	al, 0xd0
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0xa
	jb	.label_715
	mov	rax, qword ptr [rsp]
	nop	dword ptr [rax]
.label_716:
	mov	rbp, rbp
	cmp	rax, rbx
	je	.label_720
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbx + 1]
	nop	
	inc	rbx
	add	cl, 0xd0
	movzx	ecx, cl
	nop	
	cmp	ecx, 0xa
	nop	
	jae	.label_716
	jmp	.label_715
.label_724:
	mov	edi, OFFSET FLAT:.str.9_0
	call	getenv
	test	rax, rax
	lea	rsi, [rsi]
	mov	eax, 0x200
	mov	ecx, 0x400
	lea	rsi, [rsi]
	cmovne	rcx, rax
	mov	qword ptr [r15], rcx
	lea	rsi, [rsi]
	xor	ebp, ebp
	jmp	.label_715
.label_720:
	mov	ecx, ebp
	mov	rbp, rbp
	or	ecx, 0x80
	or	ebp, 0x180
	mov	rbp, rbp
	movzx	edx, byte ptr [rax - 1]
	cmp	edx, 0x42
	cmove	ecx, ebp
	lea	rsi, [rsi]
	jne	.label_718
	nop	
	movzx	eax, byte ptr [rax - 2]
	lea	rdi, [rdi]
	cmp	eax, 0x69
	mov	rsp, rsp
	jne	.label_715
.label_718:
	lea	rsi, [rsi]
	or	ecx, 0x20
	mov	ebp, ecx
	jmp	.label_715
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b730

	.globl ino_map_alloc
	.type ino_map_alloc, @function
ino_map_alloc:
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r14, rdi
	mov	edi, 0x18
	call	malloc
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_725
	lea	rdi, [rdi]
	mov	edi, 0x3fd
	xor	esi, esi
	mov	edx, OFFSET FLAT:ino_hash
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:ino_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_726
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], r14
	mov	qword ptr [rbx + 0x10], 0
	jmp	.label_725
.label_726:
	mov	rdi, rbx
	call	free
	xor	ebx, ebx
.label_725:
	mov	rax, rbx
	nop	
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b7b0

	.globl ino_hash
	.type ino_hash, @function
ino_hash:
	mov	rax, qword ptr [rdi]
	nop	
	xor	edx, edx
	lea	rsi, [rsi]
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b7c0

	.globl ino_compare
	.type ino_compare, @function
ino_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	lea	rsi, [rsi]
	sete	al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b7d0
	.globl ino_map_free
	.type ino_map_free, @function
ino_map_free:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	hash_free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	call	free
	mov	rdi, rbx
	nop	
	pop	rbx
	mov	rsp, rsp
	jmp	free
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b800

	.globl ino_map_insert
	.type ino_map_insert, @function
ino_map_insert:
	lea	rdi, [rdi]
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	rsp, rsp
	mov	rbx, qword ptr [r14 + 0x10]
	test	rbx, rbx
	je	.label_727
	cmp	qword ptr [rbx], r15
	jne	.label_730
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	jmp	.label_728
.label_727:
	mov	edi, 0x10
	call	malloc
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x10], rbx
	mov	rax, -1
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_728
.label_730:
	lea	rsi, [rsi]
	mov	qword ptr [rbx], r15
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14]
	mov	rsi, rbx
	call	hash_insert
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	rax, -1
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_728
	cmp	rcx, rbx
	lea	rsi, [rsi]
	je	.label_729
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + 8]
	jmp	.label_731
.label_729:
	nop	
	mov	qword ptr [r14 + 0x10], 0
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], rcx
.label_731:
	mov	qword ptr [rbx + 8], rax
.label_728:
	lea	rdi, [rdi]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b8b0

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	lea	rsi, [rsi]
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	lea	rsi, [rsi]
	js	.label_732
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
.label_735:
	lea	rdi, [rdi]
	mov	rax, rcx
	imul	r8
	mov	rbp, rbp
	mov	rax, rdx
	mov	rsp, rsp
	shr	rax, 0x3f
	sar	rdx, 2
	nop	
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	rdi, [rdi]
	lea	r9d, [rdi + rdi*4]
	nop	
	mov	edi, ecx
	sub	edi, r9d
	lea	rsi, [rsi]
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rbp, rbp
	mov	rcx, rdx
	ja	.label_735
	mov	rbp, rbp
	jmp	.label_734
.label_732:
	add	rsi, 0x15
	movabs	r8, 0x6666666666666667
.label_733:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	nop	
	sar	rdx, 2
	lea	edi, [rdx + r10]
	lea	rdi, [rdi]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	lea	rdi, [rdi]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	nop	
	sub	eax, edi
	nop	
	mov	byte ptr [rsi - 2], al
	add	rdx, r10
	mov	rbp, rbp
	add	rcx, 9
	dec	rsi
	mov	rsp, rsp
	cmp	rcx, 0x12
	mov	rcx, rdx
	mov	rsp, rsp
	ja	.label_733
	mov	rbp, rbp
	mov	byte ptr [rsi - 2], 0x2d
	mov	rsp, rsp
	add	rsi, -2
.label_734:
	nop	
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b9a0

	.globl mbscasecmp
	.type mbscasecmp, @function
mbscasecmp:
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x80
	mov	r14, rsi
	nop	
	mov	rbx, rdi
	mov	rsp, rsp
	xor	r12d, r12d
	mov	rsp, rsp
	cmp	rbx, r14
	lea	rdi, [rdi]
	je	.label_736
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	cmp	rax, 1
	lea	rdi, [rdi]
	jbe	.label_740
	mov	qword ptr [rsp + 0x10], rbx
	lea	rdi, [rdi]
	mov	byte ptr [rsp], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 4], 0
	nop	
	mov	byte ptr [rsp + 0xc], 0
	mov	qword ptr [rsp + 0x50], r14
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x40], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x44], 0
	mov	byte ptr [rsp + 0x4c], 0
	nop	
	lea	rdi, [rsp]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	test	al, al
	nop	
	je	.label_741
	shr	rax, 0x20
	je	.label_743
.label_741:
	lea	rsi, [rsi]
	lea	r14, [rsp + 0x40]
	mov	rsp, rsp
	lea	r15, [rsp]
	nop	word ptr cs:[rax + rax]
.label_745:
	mov	rdi, r14
	mov	rbp, rbp
	call	mbuiter_multi_next
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x60]
	nop	
	test	al, al
	je	.label_749
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	shr	rcx, 0x20
	lea	rsi, [rsi]
	je	.label_743
.label_749:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x20]
	test	dil, dil
	nop	
	je	.label_738
	mov	r12d, 0xffffffff
	mov	rbp, rbp
	test	al, al
	je	.label_736
	lea	rdi, [rdi]
	shr	rdi, 0x20
	mov	rbp, rbp
	call	towlower
	mov	r12d, eax
	mov	edi, dword ptr [rsp + 0x64]
	lea	rsi, [rsi]
	call	towlower
	sub	r12d, eax
	jmp	.label_746
.label_738:
	lea	rdi, [rdi]
	mov	r12d, 1
	nop	
	test	al, al
	lea	rdi, [rdi]
	jne	.label_736
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	cmp	rdx, rax
	mov	rsp, rsp
	jne	.label_748
	nop	
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x50]
	call	memcmp
	lea	rdi, [rdi]
	mov	r12d, eax
.label_746:
	test	r12d, r12d
	lea	rsi, [rsi]
	jne	.label_736
	mov	rax, qword ptr [rsp + 0x18]
	add	qword ptr [rsp + 0x10], rax
	nop	
	mov	byte ptr [rsp + 0xc], 0
	mov	rax, qword ptr [rsp + 0x58]
	add	qword ptr [rsp + 0x50], rax
	mov	byte ptr [rsp + 0x4c], 0
	mov	rdi, r15
	call	mbuiter_multi_next
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	je	.label_745
	shr	rax, 0x20
	jne	.label_745
.label_743:
	mov	rsp, rsp
	lea	rdi, [rsp]
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	mov	r12d, 1
	mov	rsp, rsp
	je	.label_736
	lea	rdi, [rdi]
	shr	rax, 0x20
	jne	.label_736
	mov	rbp, rbp
	lea	rdi, [rsp + 0x40]
	nop	
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	test	al, al
	mov	rbp, rbp
	sete	cl
	mov	rbp, rbp
	shr	rax, 0x20
	mov	rbp, rbp
	setne	al
	nop	
	or	al, cl
	movzx	r12d, al
	lea	rsi, [rsi]
	shl	r12d, 0x1f
	sar	r12d, 0x1f
	lea	rsi, [rsi]
	jmp	.label_736
.label_740:
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	r15, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_744:
	movzx	r12d, byte ptr [rbx]
	test	byte ptr [r15 + r12*2 + 1], 1
	nop	
	je	.label_750
	mov	rbp, rbp
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	movzx	r12d, byte ptr [rax + r12*4]
.label_750:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r14]
	lea	rsi, [rsi]
	test	byte ptr [r15 + r13*2 + 1], 1
	mov	rbp, rbp
	je	.label_737
	mov	rbp, rbp
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movzx	r13d, byte ptr [rax + r13*4]
.label_737:
	mov	rsp, rsp
	test	r12d, r12d
	je	.label_742
	inc	rbx
	mov	rsp, rsp
	inc	r14
	cmp	r12d, r13d
	mov	rsp, rsp
	je	.label_744
	nop	
	jmp	.label_747
.label_742:
	xor	r12d, r12d
.label_747:
	mov	rbp, rbp
	sub	r12d, r13d
.label_736:
	mov	eax, r12d
	mov	rbp, rbp
	add	rsp, 0x80
	mov	rbp, rbp
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	ret	
.label_748:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x10]
	nop	
	mov	rsi, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	jae	.label_751
	lea	rsi, [rsi]
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	setg	al
	mov	rbp, rbp
	jmp	.label_739
.label_751:
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	call	memcmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	setns	al
.label_739:
	movzx	eax, al
	mov	rsp, rsp
	lea	r12d, [rax + rax - 1]
	nop	
	jmp	.label_736
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bcd0

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xc], 0
	lea	rsi, [rsi]
	jne	.label_759
	cmp	byte ptr [rbx], 0
	mov	r15, qword ptr [rbx + 0x10]
	je	.label_760
	lea	r14, [rbx + 4]
	jmp	.label_761
.label_760:
	movzx	eax, byte ptr [r15]
	mov	rbp, rbp
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx,  dword ptr [dword ptr [+ (rcx * 4) + is_basic_table]]
	mov	rbp, rbp
	bt	ecx, eax
	jae	.label_762
	mov	qword ptr [rbx + 0x18], 1
	movsx	eax, byte ptr [r15]
	mov	rbp, rbp
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_757
.label_762:
	lea	rsi, [rsi]
	lea	r14, [rbx + 4]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_752
	lea	rsi, [rsi]
	mov	byte ptr [rbx], 1
.label_761:
	lea	r12, [rbx + 0x24]
	nop	
	call	__ctype_get_mb_cur_max
	nop	
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, rax
	call	strnlen1
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r15
	nop	
	mov	rdx, rax
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x18], rax
	nop	
	cmp	rax, -2
	je	.label_755
	test	rax, rax
	je	.label_754
	nop	
	cmp	rax, -1
	nop	
	jne	.label_758
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_757
.label_755:
	mov	rdi, qword ptr [rbx + 0x10]
	nop	
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_757
.label_754:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_753
	lea	rdi, [rdi]
	cmp	dword ptr [r12], 0
	lea	rsi, [rsi]
	jne	.label_756
.label_758:
	mov	byte ptr [rbx + 0x20], 1
	mov	rdi, r14
	nop	
	call	mbsinit
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	je	.label_757
	mov	rsp, rsp
	mov	byte ptr [rbx], 0
.label_757:
	lea	rsi, [rsi]
	mov	byte ptr [rbx + 0xc], 1
.label_759:
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_753:
	mov	edi, OFFSET FLAT:.str.2_4
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	nop	
	call	__assert_fail
.label_756:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.3_4
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0xb3
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_752:
	mov	edi, OFFSET FLAT:.str_8
	mov	esi, OFFSET FLAT:.str.1_5
	lea	rdi, [rdi]
	mov	edx, 0x96
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	lea	rdi, [rdi]
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x40be70
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40be80
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	push	r15
	mov	rsp, rsp
	push	r14
	push	rbx
	nop	
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r14, rdi
	mov	al, byte ptr [rbx]
	lea	rsi, [rsi]
	test	al, al
	mov	byte ptr [r14], al
	je	.label_763
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 4]
	nop	
	mov	qword ptr [r14 + 4], rax
	jmp	.label_766
.label_763:
	mov	rbp, rbp
	mov	qword ptr [r14 + 4], 0
.label_766:
	mov	al, byte ptr [rbx + 0xc]
	lea	rdi, [rdi]
	mov	byte ptr [r14 + 0xc], al
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rax, [rbx + 0x28]
	mov	rsp, rsp
	cmp	rsi, rax
	jne	.label_764
	lea	rdi, [rdi]
	lea	r15, [r14 + 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	memcpy
	mov	rsi, r15
.label_764:
	mov	qword ptr [r14 + 0x10], rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x18], rax
	mov	rax, qword ptr [rbx + 0x20]
	test	al, al
	lea	rdi, [rdi]
	mov	byte ptr [r14 + 0x20], al
	mov	rbp, rbp
	je	.label_765
	lea	rdi, [rdi]
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x24], eax
.label_765:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bf30

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
	je	.label_767
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
	jl	.label_769
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_769
	mov	esi, OFFSET FLAT:.str.2_5
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_768
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_768:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_769:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_767:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_9
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
	#Procedure 0x40c020
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
	#Procedure 0x40c070
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
	#Procedure 0x40c090
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
	#Procedure 0x40c0b0
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
	#Procedure 0x40c120
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
	#Procedure 0x40c140
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
	je	.label_770
	test	rdx, rdx
	nop	
	je	.label_770
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_770:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c180
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
	#Procedure 0x40c230

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
.label_843:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_853
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_859]]
.label_3496:
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
.label_3497:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_876
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_876
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_895:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_890
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_890:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_895
.label_876:
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
	jmp	.label_788
.label_3489:
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
	jmp	.label_788
.label_3492:
	lea	rsi, [rsi]
	mov	al, 1
.label_3490:
	mov	rbp, rbp
	mov	r12b, 1
.label_3493:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_811
	lea	rsi, [rsi]
	mov	cl, al
.label_811:
	mov	rsp, rsp
	mov	al, cl
.label_3491:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_818
	test	r10, r10
	je	.label_824
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_827
.label_818:
	xor	ecx, ecx
	jmp	.label_827
.label_3494:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_838
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_842
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_849
.label_3495:
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
	jmp	.label_788
.label_824:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_827:
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
	jmp	.label_788
.label_838:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_849
.label_842:
	lea	rdi, [rdi]
	mov	eax, 1
.label_849:
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
.label_788:
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
	jmp	.label_835
	nop	word ptr cs:[rax + rax]
.label_856:
	nop	
	inc	rdi
.label_835:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_814
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_777
	jmp	.label_820
	nop	dword ptr [rax + rax]
.label_814:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_823
.label_777:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_832
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_836
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_836
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
.label_836:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_867
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_869
	nop	dword ptr [rax + rax]
.label_832:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_869
	nop	word ptr cs:[rax + rax]
.label_867:
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
	jne	.label_893
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
	je	.label_869
	jmp	.label_786
.label_893:
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
.label_869:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_798
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_800]]
.label_3297:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_774
	mov	rbp, rbp
	jmp	.label_809
.label_3301:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_810
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_816
	nop	
	cmp	rbp, 1
	je	.label_809
	xor	r13d, r13d
	jmp	.label_771
.label_3290:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_828
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_786
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_839
	mov	al, r14b
	and	al, 1
	jne	.label_891
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_847
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_847:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_857
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_857:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_863
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_863:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_796
.label_3291:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_841
.label_3292:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_873
.label_3293:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_841
.label_3294:
	mov	bl, 0x66
	jmp	.label_841
.label_3295:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_873
.label_3298:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_882
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_883
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
	jae	.label_887
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_887:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_787
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_787:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_795
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_795:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_882:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_771
.label_3299:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_808
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_774
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_774
	mov	rbp, rbp
	jmp	.label_819
.label_3300:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_821
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_829
	lea	rdi, [rdi]
	jmp	.label_834
.label_798:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_868
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
.label_783:
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
	ja	.label_861
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_861
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_771
.label_810:
	test	rdi, rdi
	jne	.label_875
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_875
.label_809:
	mov	dl, 1
.label_3296:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_879
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_771
.label_828:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_856
	jmp	.label_774
.label_821:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_873
.label_829:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_872
.label_873:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_813
.label_841:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_771
	lea	rsi, [rsi]
	jmp	.label_782
.label_868:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_784
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
.label_784:
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
.label_826:
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
	je	.label_822
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_831
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_840
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_846
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_866:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_860
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_889
.label_860:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_866
.label_846:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_892
	xor	r13d, r13d
.label_892:
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
	je	.label_826
	mov	rsp, rsp
	jmp	.label_783
.label_875:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_771
.label_808:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_774
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_774
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_774
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_781
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_779
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_792
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_797
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_797:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_803
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_803:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_825
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_825:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_772
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_772:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_771
.label_774:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_771:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_804
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_851
	lea	rsi, [rsi]
	jmp	.label_854
.label_804:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_854
.label_851:
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
	jne	.label_858
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_864
	nop	word ptr cs:[rax + rax]
.label_854:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_864:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_872
	mov	rsp, rsp
	jmp	.label_782
.label_858:
	mov	bl, r15b
.label_782:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_786
	nop	
	cmp	r9d, 2
	jne	.label_884
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_884
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_794
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_794:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_888
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_888:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_880
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_880:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_884:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_778
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_778:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_785
.label_816:
	xor	r13d, r13d
	nop	
	jmp	.label_771
.label_861:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_790
	nop	dword ptr [rax + rax]
.label_806:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_790:
	test	cl, cl
	je	.label_799
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_815
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_807
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_807:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_815
	nop	dword ptr [rax]
.label_799:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_786
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_830
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_830
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_862
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_862:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_844
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_844:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_833
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_833:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_830:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_791
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_791:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_870
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_870:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_878
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
.label_878:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_815:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_872
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_773
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_773
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_780
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_780:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_789
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_789:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_773:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_806
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_806
	nop	word ptr cs:[rax + rax]
.label_872:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_817
	mov	rsp, rsp
	and	al, 1
	jne	.label_817
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_805
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_805:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_855
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_855:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_817:
	mov	rsp, rsp
	mov	bl, r15b
.label_785:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_775
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_775:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_856
.label_839:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_796
.label_891:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_796:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_865
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_865:
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
	je	.label_812
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_874
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_877
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_881
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_881:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_885
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_885:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_771
.label_812:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_771
.label_874:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_771
.label_877:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_771
.label_831:
	xor	r13d, r13d
.label_822:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_783
.label_840:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_793
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_848:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_802
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_848
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_783
.label_793:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_783
.label_802:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_783
.label_781:
	xor	r13d, r13d
	jmp	.label_771
.label_779:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_771
.label_820:
	nop	
	mov	r13, rdi
.label_823:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_837
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_850
.label_837:
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
	je	.label_852
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_852
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_801
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_852
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_843
.label_852:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_871
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_871
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_871
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_894:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_886
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_886:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_894
.label_871:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_776
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_776
.label_879:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_786
.label_889:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_786
.label_850:
	nop	
	mov	rbp, r13
	jmp	.label_786
.label_813:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_786:
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
.label_845:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_776:
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
.label_801:
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
	jmp	.label_845
.label_883:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_786
.label_834:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_786
.label_819:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_786
.label_792:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_786
.label_853:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d7b0
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
	#Procedure 0x40d8f0
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
	je	.label_896
	mov	qword ptr [rax], rbx
.label_896:
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
	#Procedure 0x40da40
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_897
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_901:
	mov	rdi, qword ptr [r15]
	nop	
	call	free
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	lea	rsi, [rsi]
	add	r15, 0x10
	cmp	rbx, rax
	mov	rsp, rsp
	jl	.label_901
.label_897:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_900
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_898]], OFFSET FLAT:slot0
.label_900:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_899
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_899:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40db00
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x40db10

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
	js	.label_908
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_903
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_904
.label_903:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_905
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
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_907
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_907:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
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
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_904:
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
	ja	.label_906
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
	je	.label_902
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_902:
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
.label_906:
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
.label_908:
	lea	rdi, [rdi]
	call	abort
.label_905:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40dd80
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40dd90
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
	#Procedure 0x40ddc0
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
	#Procedure 0x40ddf0

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
	je	.label_909
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
.label_909:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40de80
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
	je	.label_910
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
.label_910:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40df20

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
	je	.label_911
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
.label_911:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dfb0
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
	je	.label_912
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
.label_912:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40e020
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_913]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_914]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_915]]
	nop	
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x40e0c0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_913]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_914]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_915]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x40e160

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_913]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_914]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_915]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x40e1d0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_913]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_914]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_915]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x40e240

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
	je	.label_916
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
.label_916:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40e320
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_913]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_914]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_915]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_917
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_917
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
.label_917:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40e3b0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_913]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_914]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_915]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_918
	test	rdx, rdx
	je	.label_918
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
.label_918:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e440
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_913]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_914]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_915]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_919
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_919
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
.label_919:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e4e0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_913]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_914]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_915]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_920
	test	rsi, rsi
	je	.label_920
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
.label_920:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e580
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e590
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
	#Procedure 0x40e5b0

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
	#Procedure 0x40e5d0

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
	#Procedure 0x40e600

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
	jne	.label_922
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_924
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_921
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_921
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_921
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_921
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_921
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_921
	nop	
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_922
	mov	eax, OFFSET FLAT:.str.15
	jmp	.label_922
.label_924:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_921
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_921
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_921
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_921
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_921
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_921
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_923
.label_921:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_922:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_923:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_922
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_922
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e770

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	xor	esi, esi
	mov	rsp, rsp
	mov	rdx, r14
	call	memchr
	lea	rdi, [rdi]
	mov	ecx, 1
	sub	rcx, rbx
	lea	rdi, [rdi]
	add	rcx, rax
	test	rax, rax
	mov	rbp, rbp
	cmove	rcx, r14
	lea	rsi, [rsi]
	mov	rax, rcx
	nop	
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e7c0

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
	je	.label_925
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_10
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_927
.label_925:
	mov	edx, OFFSET FLAT:.str.1_7
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_927:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_6
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
	mov	esi, OFFSET FLAT:.str.3_5
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
	ja	.label_930
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_931]]
.label_3425:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_3
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
.label_930:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_926
.label_3426:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_1
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
.label_3427:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_1
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
.label_3428:
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
	jmp	.label_934
.label_3429:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_1
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
	jmp	.label_933
.label_3430:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
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
	jmp	.label_932
.label_3431:
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
.label_932:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_933:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_934:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_929
.label_3433:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_926:
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
	jmp	.label_928
.label_3432:
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
.label_928:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_929:
	mov	rbp, rbp
	call	__fprintf_chk
.label_3424:
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
	#Procedure 0x40ebb0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_935:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_935
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ebe0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_938:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_936
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_937
	nop	word ptr cs:[rax + rax]
.label_936:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_937:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_939
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_938
.label_939:
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
	#Procedure 0x40ec70

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_940
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
.label_940:
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
.label_942:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_941
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_943
	nop	dword ptr [rax + rax]
.label_941:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_943:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_944
	inc	r9
	cmp	r9, 0xa
	jb	.label_942
.label_944:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40edb0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_0
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_0
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
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
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ee40
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
	jb	.label_945
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_946
	test	rax, rax
	je	.label_945
.label_946:
	nop	
	pop	rbx
	ret	
.label_945:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ee90

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_947
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_948
.label_947:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_948:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40eec0
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
	jb	.label_950
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_949
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_949
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_949:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_951
	test	rax, rax
	je	.label_950
.label_951:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_950:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ef40

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_952
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_952
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_952:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_953
	test	rax, rax
	nop	
	je	.label_954
.label_953:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_954:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ef90
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_959
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_955
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_961
.label_959:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_958
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_958:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_960
.label_961:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_957
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_957
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_957:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_956
	test	rax, rax
	mov	rbp, rbp
	je	.label_955
.label_956:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_955:
	call	xalloc_die
.label_960:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f070
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_962
	test	rax, rax
	mov	rbp, rbp
	je	.label_963
.label_962:
	pop	rbx
	ret	
.label_963:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40f090

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_967
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_968
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_966
	call	free
	xor	eax, eax
	jmp	.label_964
.label_967:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_965
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_966:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_964
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_965
.label_964:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_965:
	mov	rbp, rbp
	call	xalloc_die
.label_968:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f120

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
	je	.label_969
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_970
.label_969:
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
.label_970:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f180

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
	jb	.label_971
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_971
	pop	rcx
	ret	
.label_971:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f1b0

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
	je	.label_973
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_972
.label_973:
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
.label_972:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f210

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
	je	.label_974
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_975
.label_974:
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
.label_975:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f270

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_8
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f2c0

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_977
	mov	rsp, rsp
	pop	rcx
	ret	
.label_977:
	nop	
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x16
	lea	rdi, [rdi]
	jne	.label_976
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_11
	nop	
	mov	esi, OFFSET FLAT:.str.1_9
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	lea	rsi, [rsi]
	call	__assert_fail
.label_976:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f320

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	mov	rbp, rbp
	je	.label_978
	cmp	ecx, 0x11
	lea	rdi, [rdi]
	jne	.label_979
	mov	rsp, rsp
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_978:
	lea	rsi, [rsi]
	ret	
.label_979:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f350

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	r14, r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	ebp, edx
	nop	
	mov	r12, rdi
	cmp	ebp, 0x25
	mov	rsp, rsp
	jae	.label_1001
	mov	rsp, rsp
	test	rsi, rsi
	lea	rdi, [rdi]
	lea	rbx, [rsp + 8]
	lea	rdi, [rdi]
	cmovne	rbx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbx
	mov	rsp, rsp
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	xor	r13d, r13d
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdi, r12
	nop	
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	edx, ebp
	call	__strtol_internal
	lea	rsi, [rsi]
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx]
	lea	rdi, [rdi]
	cmp	rcx, r12
	nop	
	je	.label_1029
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15]
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_1032
	mov	rbp, rbp
	mov	r13d, 4
	lea	rsi, [rsi]
	cmp	eax, 0x22
	jne	.label_990
	mov	rsp, rsp
	mov	r13d, 1
.label_1032:
	test	r14, r14
	nop	
	je	.label_983
	lea	rsi, [rsi]
	mov	r12d, r13d
	mov	rbp, rbp
	jmp	.label_987
.label_1029:
	mov	rbp, rbp
	mov	r13d, 4
	test	r14, r14
	je	.label_990
	lea	rsi, [rsi]
	mov	r15, rcx
	nop	
	movsx	esi, byte ptr [r12]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_990
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsp, rsp
	call	strchr
	mov	rsp, rsp
	xor	r12d, r12d
	lea	rdi, [rdi]
	mov	ebp, 1
	nop	
	test	rax, rax
	mov	rcx, r15
	je	.label_990
.label_987:
	nop	
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_1010
	mov	qword ptr [rsp + 0x20], rcx
	mov	rdi, r14
	mov	rsp, rsp
	mov	esi, r13d
	call	strchr
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1007
	lea	rsi, [rsi]
	mov	r15d, 1
	mov	r8d, 0x400
	mov	rsp, rsp
	lea	eax, [r13 - 0x45]
	mov	rsp, rsp
	cmp	eax, 0x2f
	nop	
	ja	.label_997
	lea	rdi, [rdi]
	movabs	rcx, 0x814400308945
	mov	rbp, rbp
	bt	rcx, rax
	lea	rdi, [rdi]
	jae	.label_997
	mov	rbp, rbp
	mov	esi, 0x30
	lea	rsi, [rsi]
	mov	rdi, r14
	call	strchr
	lea	rsi, [rsi]
	mov	r15d, 1
	mov	r8d, 0x400
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_997
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x20]
	movsx	eax, byte ptr [rax + 1]
	mov	r15d, 1
	lea	rdi, [rdi]
	mov	r8d, 0x400
	mov	rsp, rsp
	cmp	eax, 0x42
	je	.label_994
	lea	rdi, [rdi]
	cmp	eax, 0x44
	mov	rbp, rbp
	je	.label_994
	cmp	eax, 0x69
	lea	rdi, [rdi]
	jne	.label_997
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	movzx	eax, byte ptr [rax + 2]
	mov	r15d, 3
	cmp	eax, 0x42
	nop	
	je	.label_1006
	mov	r15d, 1
.label_1006:
	mov	r8d, 0x400
	jmp	.label_997
.label_983:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	jmp	.label_990
.label_1010:
	mov	rbp, rbp
	mov	r13, rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	jmp	.label_1012
.label_994:
	mov	r15d, 2
	mov	r8d, 0x3e8
.label_997:
	movabs	r9, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	r13d, 0x59
	jg	.label_1018
	lea	eax, [r13 - 0x42]
	lea	rdi, [rdi]
	cmp	eax, 0xe
	ja	.label_1021
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1025]]
.label_3332:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	lea	rsi, [rsi]
	jl	.label_992
	nop	
	mov	r13, rbp
	shl	r13, 0xa
	movabs	rax, 0x1fffffffffffff
	lea	rsi, [rsi]
	jmp	.label_995
.label_1018:
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_1038
	lea	rsi, [rsi]
	lea	eax, [r13 - 0x62]
	cmp	eax, 0xb
	ja	.label_981
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r13, rbp
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_986]]
.label_3500:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	nop	
	jl	.label_992
	mov	r13, rbp
	shl	r13, 9
	lea	rsi, [rsi]
	movabs	rax, 0x3fffffffffffff
	jmp	.label_995
.label_1021:
	lea	rdi, [rdi]
	cmp	r13d, 0x54
	je	.label_1003
	cmp	r13d, 0x59
	jne	.label_1007
	mov	rsp, rsp
	lea	r13, [r9 + 1]
	mov	rsp, rsp
	mov	rax, r13
	cqo	
	mov	rbp, rbp
	idiv	r8
	mov	r10, rax
	mov	rsp, rsp
	cmp	rbp, r10
	mov	edi, 1
	nop	
	mov	rcx, r13
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_1008
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	mov	rbp, rbp
	div	r8
	nop	
	mov	rcx, rbp
	nop	
	imul	rcx, r8
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	setl	al
	lea	rdi, [rdi]
	cmovl	rcx, r9
	lea	rsi, [rsi]
	movzx	ebx, al
.label_1008:
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_1030
	mov	rsp, rsp
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	nop	
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	movzx	edi, al
.label_1030:
	mov	rsp, rsp
	or	edi, ebx
	cmp	rsi, r10
	lea	rsi, [rsi]
	mov	r11d, 1
	mov	rsp, rsp
	mov	rcx, r13
	mov	rsp, rsp
	mov	ebx, 1
	lea	rdi, [rdi]
	jl	.label_980
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	lea	rdi, [rdi]
	mov	rcx, rsi
	imul	rcx, r8
	mov	rbp, rbp
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	cmovl	rcx, r9
	lea	rdi, [rdi]
	movzx	ebx, al
.label_980:
	or	ebx, edi
	lea	rsi, [rsi]
	cmp	rcx, r10
	mov	rsp, rsp
	mov	rsi, r13
	jl	.label_1002
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	div	r8
	nop	
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	lea	rdi, [rdi]
	setl	al
	mov	rbp, rbp
	cmovl	rsi, r9
	mov	rsp, rsp
	movzx	r11d, al
.label_1002:
	or	r11d, ebx
	cmp	rsi, r10
	mov	r14d, 1
	mov	rcx, r13
	nop	
	mov	ebx, 1
	nop	
	jl	.label_1011
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	nop	
	div	r8
	mov	rcx, rsi
	nop	
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	nop	
	movzx	ebx, al
.label_1011:
	or	ebx, r11d
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_1027
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	lea	rsi, [rsi]
	movzx	r14d, al
.label_1027:
	or	r14d, ebx
	cmp	rsi, r10
	mov	ebx, 1
	mov	rcx, r13
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_1035
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsp, rsp
	mov	rcx, rsi
	lea	rsi, [rsi]
	imul	rcx, r8
	nop	
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	lea	rdi, [rdi]
	movzx	edi, al
.label_1035:
	lea	rsi, [rsi]
	or	edi, r14d
	cmp	rcx, r10
	jl	.label_996
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r9
	nop	
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r8, r9
	lea	rdi, [rdi]
	movzx	ebx, al
	mov	r13, r8
.label_996:
	mov	rbp, rbp
	or	ebx, edi
	nop	
	jmp	.label_988
.label_1038:
	cmp	r13d, 0x74
	je	.label_1003
	cmp	r13d, 0x77
	jne	.label_1007
	mov	rbp, rbp
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_1015
.label_992:
	inc	r9
	mov	rsp, rsp
	mov	ebx, 1
	mov	r13, r9
	lea	rsi, [rsi]
	jmp	.label_988
.label_3334:
	mov	rsp, rsp
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	r10d, 1
	mov	rcx, r13
	mov	rsp, rsp
	mov	ebx, 1
	mov	rbp, rbp
	jl	.label_1022
	mov	rsp, rsp
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	div	r8
	nop	
	mov	rcx, rbp
	nop	
	imul	rcx, r8
	mov	rbp, rbp
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	mov	rsp, rsp
	movzx	ebx, al
.label_1022:
	nop	
	cmp	rcx, rdi
	mov	rsi, r13
	jl	.label_984
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r9
	lea	rdi, [rdi]
	div	r8
	nop	
	mov	rsi, rcx
	mov	rsp, rsp
	imul	rsi, r8
	cmp	rax, rcx
	lea	rdi, [rdi]
	setl	al
	nop	
	cmovl	rsi, r9
	movzx	r10d, al
.label_984:
	lea	rsi, [rsi]
	or	r10d, ebx
	cmp	rsi, rdi
	mov	rbp, rbp
	mov	ebx, 1
	nop	
	jl	.label_1014
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	mov	rbp, rbp
	cmp	rax, rsi
	setl	al
	mov	rsp, rsp
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_1014:
	lea	rdi, [rdi]
	or	ebx, r10d
	jmp	.label_988
.label_3335:
	lea	rsi, [rsi]
	lea	r13, [r9 + 1]
	lea	rdi, [rdi]
	mov	rax, r13
	cqo	
	idiv	r8
	cmp	rbp, rax
	mov	ebx, 1
	jl	.label_988
	xor	edx, edx
	mov	rax, r9
	div	r8
	nop	
	imul	r8, rbp
	nop	
	cmp	rax, rbp
	nop	
	setl	al
	cmovl	r8, r9
	lea	rdi, [rdi]
	movzx	ebx, al
	mov	r13, r8
	nop	
	jmp	.label_988
.label_3336:
	lea	r13, [r9 + 1]
	mov	rax, r13
	mov	rbp, rbp
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ebx, 1
	mov	rcx, r13
	mov	r10d, 1
	jl	.label_1031
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	mov	rsp, rsp
	mov	rcx, rbp
	mov	rsp, rsp
	imul	rcx, r8
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rdi, [rdi]
	setl	al
	cmovl	rcx, r9
	movzx	r10d, al
.label_1031:
	lea	rsi, [rsi]
	cmp	rcx, rdi
	nop	
	jl	.label_989
	xor	edx, edx
	mov	rax, r9
	nop	
	div	r8
	imul	r8, rcx
	nop	
	cmp	rax, rcx
	mov	rbp, rbp
	setl	al
	lea	rsi, [rsi]
	cmovl	r8, r9
	movzx	ebx, al
	lea	rdi, [rdi]
	mov	r13, r8
.label_989:
	or	ebx, r10d
	lea	rdi, [rdi]
	jmp	.label_988
.label_1003:
	lea	r13, [r9 + 1]
	mov	rsp, rsp
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rbp, rbp
	mov	r10, rax
	lea	rsi, [rsi]
	cmp	rbp, r10
	mov	rbp, rbp
	mov	r11d, 1
	lea	rdi, [rdi]
	mov	rcx, r13
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_1005
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	lea	rdi, [rdi]
	imul	rcx, r8
	cmp	rax, rbp
	mov	rbp, rbp
	setl	al
	lea	rsi, [rsi]
	cmovl	rcx, r9
	lea	rsi, [rsi]
	movzx	edi, al
.label_1005:
	cmp	rcx, r10
	mov	rsi, r13
	nop	
	jl	.label_1004
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	lea	rsi, [rsi]
	imul	rsi, r8
	nop	
	cmp	rax, rcx
	setl	al
	lea	rsi, [rsi]
	cmovl	rsi, r9
	movzx	r11d, al
.label_1004:
	mov	rsp, rsp
	or	r11d, edi
	lea	rdi, [rdi]
	cmp	rsi, r10
	mov	rsp, rsp
	mov	ebx, 1
	mov	rcx, r13
	mov	rbp, rbp
	mov	edi, 1
	jl	.label_1034
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	mov	rbp, rbp
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	mov	rbp, rbp
	movzx	edi, al
.label_1034:
	lea	rdi, [rdi]
	or	edi, r11d
	cmp	rcx, r10
	mov	rbp, rbp
	jl	.label_993
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	nop	
	cmovl	r8, r9
	movzx	ebx, al
	mov	rbp, rbp
	mov	r13, r8
.label_993:
	or	ebx, edi
	jmp	.label_988
.label_981:
	nop	
	cmp	r13d, 0x5a
	jne	.label_1007
	lea	r13, [r9 + 1]
	nop	
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rsp, rsp
	mov	r10, rax
	nop	
	cmp	rbp, r10
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_1009
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	lea	rdi, [rdi]
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	mov	rbp, rbp
	setl	al
	cmovl	rcx, r9
	mov	rsp, rsp
	movzx	ebx, al
.label_1009:
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	mov	rsp, rsp
	jl	.label_1023
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r9
	mov	rsp, rsp
	div	r8
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	nop	
	cmovl	rsi, r9
	movzx	edi, al
.label_1023:
	nop	
	or	edi, ebx
	cmp	rsi, r10
	lea	rdi, [rdi]
	mov	r11d, 1
	mov	rcx, r13
	mov	ebx, 1
	nop	
	jl	.label_1037
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	mov	rbp, rbp
	mov	rcx, rsi
	imul	rcx, r8
	lea	rsi, [rsi]
	cmp	rax, rsi
	setl	al
	mov	rsp, rsp
	cmovl	rcx, r9
	movzx	ebx, al
.label_1037:
	lea	rdi, [rdi]
	or	ebx, edi
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	mov	rbp, rbp
	jl	.label_1033
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	div	r8
	lea	rdi, [rdi]
	mov	rsi, rcx
	imul	rsi, r8
	nop	
	cmp	rax, rcx
	nop	
	setl	al
	cmovl	rsi, r9
	mov	rbp, rbp
	movzx	r11d, al
.label_1033:
	or	r11d, ebx
	mov	rbp, rbp
	cmp	rsi, r10
	mov	rsp, rsp
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	lea	rdi, [rdi]
	jl	.label_1017
	xor	edx, edx
	mov	rax, r9
	div	r8
	nop	
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	mov	rbp, rbp
	movzx	ebx, al
.label_1017:
	or	ebx, r11d
	mov	rbp, rbp
	cmp	rcx, r10
	mov	rsp, rsp
	mov	rsi, r13
	mov	rsp, rsp
	jl	.label_1020
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	movzx	edi, al
.label_1020:
	or	edi, ebx
	cmp	rsi, r10
	nop	
	mov	ebx, 1
	nop	
	jl	.label_1036
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	nop	
	imul	r8, rsi
	lea	rdi, [rdi]
	cmp	rax, rsi
	setl	al
	mov	rsp, rsp
	cmovl	r8, r9
	mov	rbp, rbp
	movzx	ebx, al
	mov	r13, r8
.label_1036:
	nop	
	or	ebx, edi
	mov	rsp, rsp
	jmp	.label_988
.label_1007:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	or	r12d, 2
	lea	rsi, [rsi]
	mov	r13d, r12d
	lea	rsi, [rsi]
	jmp	.label_990
.label_3333:
	lea	r13, [r9 + 1]
	mov	rax, r13
	lea	rdi, [rdi]
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	r14d, 1
	nop	
	mov	rcx, r13
	mov	edi, 1
	jl	.label_1019
	xor	edx, edx
	nop	
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	nop	
	imul	rcx, r8
	mov	rsp, rsp
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_1019:
	mov	rsp, rsp
	cmp	rcx, r10
	mov	rbp, rbp
	mov	rbx, r13
	jl	.label_1016
	mov	rbp, rbp
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r9
	div	r8
	nop	
	mov	rbx, rcx
	imul	rbx, r8
	cmp	rax, rcx
	mov	rbp, rbp
	setl	al
	lea	rdi, [rdi]
	cmovl	rbx, r9
	movzx	r14d, al
.label_1016:
	or	r14d, edi
	lea	rdi, [rdi]
	cmp	rbx, r10
	mov	rsp, rsp
	mov	r11d, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_1028
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	lea	rdi, [rdi]
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	cmp	rax, rbx
	nop	
	setl	al
	lea	rdi, [rdi]
	cmovl	rsi, r9
	movzx	ecx, al
.label_1028:
	or	ecx, r14d
	nop	
	cmp	rsi, r10
	mov	rdi, r13
	lea	rsi, [rsi]
	jl	.label_982
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rsi
	lea	rdi, [rdi]
	imul	rdi, r8
	lea	rdi, [rdi]
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	mov	rbp, rbp
	cmovl	rdi, r9
	movzx	r11d, al
.label_982:
	or	r11d, ecx
	cmp	rdi, r10
	mov	ebx, 1
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	r14d, 1
	lea	rsi, [rsi]
	jl	.label_998
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r9
	div	r8
	mov	rsi, rdi
	imul	rsi, r8
	nop	
	cmp	rax, rdi
	mov	rsp, rsp
	setl	al
	nop	
	cmovl	rsi, r9
	mov	rbp, rbp
	movzx	r14d, al
.label_998:
	or	r14d, r11d
	cmp	rsi, r10
	jl	.label_1013
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	lea	rsi, [rsi]
	cmp	rax, rsi
	mov	rsp, rsp
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_1013:
	nop	
	or	ebx, r14d
	lea	rdi, [rdi]
	jmp	.label_988
.label_3337:
	nop	
	lea	r13, [r9 + 1]
	mov	rbp, rbp
	mov	rax, r13
	cqo	
	lea	rsi, [rsi]
	idiv	r8
	mov	r10, rax
	lea	rsi, [rsi]
	cmp	rbp, r10
	mov	rsp, rsp
	mov	r14d, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_1024
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	lea	rdi, [rdi]
	cmp	rax, rbp
	setl	al
	nop	
	cmovl	rcx, r9
	movzx	edi, al
.label_1024:
	lea	rsi, [rsi]
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_985
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, r9
	nop	
	div	r8
	mov	rbp, rbp
	mov	rsi, rcx
	nop	
	imul	rsi, r8
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rsp, rsp
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	movzx	r14d, al
.label_985:
	lea	rdi, [rdi]
	or	r14d, edi
	cmp	rsi, r10
	mov	rsp, rsp
	mov	r11d, 1
	mov	rbx, r13
	mov	edi, 1
	nop	
	jl	.label_999
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbx, rsi
	mov	rbp, rbp
	imul	rbx, r8
	nop	
	cmp	rax, rsi
	setl	al
	nop	
	cmovl	rbx, r9
	lea	rdi, [rdi]
	movzx	edi, al
.label_999:
	or	edi, r14d
	mov	rsp, rsp
	cmp	rbx, r10
	mov	rsi, r13
	jl	.label_1000
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	nop	
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	mov	rbp, rbp
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_1000:
	or	r11d, edi
	cmp	rsi, r10
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_1026
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r9
	div	r8
	mov	rbp, rbp
	imul	r8, rsi
	cmp	rax, rsi
	lea	rsi, [rsi]
	setl	al
	lea	rdi, [rdi]
	cmovl	r8, r9
	movzx	ebx, al
	lea	rdi, [rdi]
	mov	r13, r8
.label_1026:
	or	ebx, r11d
	mov	rsp, rsp
.label_3421:
	jmp	.label_988
.label_1015:
	lea	r13, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_995:
	nop	
	cmp	rbp, rax
	setg	al
	cmovg	r13, r9
	mov	rsp, rsp
	movzx	ebx, al
.label_988:
	mov	rbp, rbp
	or	ebx, r12d
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	lea	rax, [rdx + r15]
	nop	
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	cmp	byte ptr [rdx + r15], 0
	je	.label_991
	or	ebx, 2
.label_991:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	r12d, ebx
.label_1012:
	lea	rdi, [rdi]
	mov	qword ptr [rax], r13
	mov	r13d, r12d
.label_990:
	mov	rbp, rbp
	mov	eax, r13d
	lea	rsi, [rsi]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_1001:
	mov	edi, OFFSET FLAT:.str_12
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4100a0

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	r14, r8
	nop	
	mov	r12d, edx
	mov	rbp, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	cmp	r12d, 0x25
	lea	rsi, [rsi]
	jae	.label_1048
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	r15, rax
	mov	rbp, rbp
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	
.label_1039:
	mov	rbp, rbp
	movzx	eax, byte ptr [rdx]
	inc	rdx
	mov	rbp, rbp
	test	byte ptr [rcx + rax*2 + 1], 0x20
	lea	rdi, [rdi]
	jne	.label_1039
	mov	rbp, rbp
	test	rbp, rbp
	lea	rdi, [rdi]
	lea	rsi, [rsp + 8]
	lea	rsi, [rsi]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	rsp, rsp
	mov	r13d, 4
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	je	.label_1046
	mov	rsp, rsp
	mov	rdi, rbx
	mov	edx, r12d
	mov	rbp, rsi
	call	strtoul
	mov	rcx, rbp
	mov	rbp, rax
	mov	rbp, rbp
	mov	r12, qword ptr [rcx]
	mov	rbp, rbp
	cmp	r12, rbx
	mov	rbp, rbp
	je	.label_1055
	mov	eax, dword ptr [r15]
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1061
	cmp	eax, 0x22
	lea	rsi, [rsi]
	jne	.label_1046
	mov	ebx, 1
.label_1061:
	test	r14, r14
	jne	.label_1044
	mov	rbp, rbp
	jmp	.label_1045
.label_1055:
	mov	rsp, rsp
	test	r14, r14
	je	.label_1046
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	lea	rdi, [rdi]
	je	.label_1046
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rbx, rcx
	call	strchr
	nop	
	mov	rcx, rbx
	mov	rbp, rbp
	xor	ebx, ebx
	mov	rbp, rbp
	mov	ebp, 1
	test	rax, rax
	je	.label_1046
.label_1044:
	movsx	r13d, byte ptr [r12]
	nop	
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_1045
	mov	rsp, rsp
	mov	qword ptr [rsp], rcx
	nop	
	mov	rdi, r14
	mov	esi, r13d
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	je	.label_1041
	mov	rsp, rsp
	mov	r15d, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1042
	movabs	rdx, 0x814400308945
	lea	rsi, [rsi]
	bt	rdx, rax
	lea	rdi, [rdi]
	jae	.label_1042
	mov	esi, 0x30
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strchr
	nop	
	mov	r15d, 1
	mov	rbp, rbp
	mov	esi, 0x400
	test	rax, rax
	je	.label_1042
	movsx	eax, byte ptr [r12 + 1]
	mov	rsp, rsp
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	nop	
	je	.label_1060
	nop	
	cmp	eax, 0x44
	je	.label_1060
	cmp	eax, 0x69
	jne	.label_1042
	mov	rbp, rbp
	movzx	eax, byte ptr [r12 + 2]
	lea	rsi, [rsi]
	mov	r15d, 3
	cmp	eax, 0x42
	je	.label_1043
	mov	r15d, 1
.label_1043:
	lea	rdi, [rdi]
	mov	esi, 0x400
	mov	rsp, rsp
	jmp	.label_1042
.label_1060:
	mov	r15d, 2
	nop	
	mov	esi, 0x3e8
.label_1042:
	cmp	r13d, 0x59
	jg	.label_1052
	lea	eax, [r13 - 0x42]
	mov	rbp, rbp
	cmp	eax, 0xe
	ja	.label_1053
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1054]]
.label_3514:
	nop	
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	mov	rsp, rsp
	shl	rbp, 0xa
	jmp	.label_1057
.label_1052:
	cmp	r13d, 0x73
	mov	rbp, rbp
	jg	.label_1062
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_1063
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1049]]
.label_3564:
	nop	
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_1057:
	cmp	rax, 1
	mov	rbp, rbp
	sbb	rax, rax
	not	rax
	lea	rdi, [rdi]
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_1047
.label_1053:
	lea	rdi, [rdi]
	cmp	r13d, 0x54
	lea	rdi, [rdi]
	je	.label_1051
	mov	rbp, rbp
	cmp	r13d, 0x59
	jne	.label_1041
	mov	rsp, rsp
	mov	rdi, -1
	mov	rax, -1
	nop	
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	cmp	rax, rbp
	nop	
	sbb	r8b, r8b
	nop	
	mov	rcx, rbp
	lea	rsi, [rsi]
	imul	rcx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	lea	rdi, [rdi]
	cmp	rax, rbp
	sbb	r9b, r9b
	lea	rdi, [rdi]
	mov	rcx, rbp
	mov	rbp, rbp
	imul	rcx, rsi
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	cmovb	rcx, rdi
	cmp	rax, rcx
	lea	rsi, [rsi]
	sbb	r10b, r10b
	mov	rbp, rbp
	mov	rbp, rcx
	imul	rbp, rsi
	lea	rdi, [rdi]
	cmp	rax, rcx
	cmovb	rbp, rdi
	mov	rsp, rsp
	cmp	rax, rbp
	mov	rsp, rsp
	sbb	r11b, r11b
	lea	rdi, [rdi]
	mov	rcx, rbp
	imul	rcx, rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rcx, rdi
	lea	rdi, [rdi]
	cmp	rax, rcx
	sbb	r14b, r14b
	nop	
	mov	rbp, rcx
	imul	rbp, rsi
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	cmovb	rbp, rdi
	nop	
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r13b, r13b
	nop	
	mov	rcx, rbp
	imul	rcx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rcx, rdi
	nop	
	cmp	rax, rcx
	sbb	bpl, bpl
	imul	rsi, rcx
	lea	rsi, [rsi]
	cmp	rax, rcx
	cmovb	rsi, rdi
	nop	
	or	dl, r8b
	lea	rsi, [rsi]
	or	dl, r9b
	or	dl, r10b
	mov	rsp, rsp
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	mov	rbp, rbp
	or	dl, r13b
	nop	
	or	dl, bpl
	mov	rbp, rbp
	jmp	.label_1056
.label_1062:
	nop	
	cmp	r13d, 0x74
	mov	rbp, rbp
	je	.label_1051
	mov	rsp, rsp
	cmp	r13d, 0x77
	jne	.label_1041
	mov	rbp, rbp
	lea	rax, [rbp + rbp]
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	rsp, rsp
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_1047
.label_3516:
	lea	rsi, [rsi]
	mov	r8, -1
	mov	rbp, rbp
	mov	rax, -1
	nop	
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r9b, r9b
	mov	rsp, rsp
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	mov	rsp, rsp
	cmp	rax, rdi
	lea	rsi, [rsi]
	sbb	dl, dl
	lea	rdi, [rdi]
	mov	rbp, rdi
	imul	rbp, rsi
	lea	rsi, [rsi]
	cmp	rax, rdi
	nop	
	cmovb	rbp, r8
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	dil, dil
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, r8
	nop	
	or	dl, r9b
	or	dl, dil
	nop	
	jmp	.label_1040
.label_3517:
	mov	rbp, rbp
	mov	rdi, -1
	lea	rdi, [rdi]
	mov	rax, -1
	xor	edx, edx
	lea	rsi, [rsi]
	div	rsi
	mov	rsp, rsp
	imul	rsi, rbp
	lea	rdi, [rdi]
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	mov	rsp, rsp
	and	eax, 1
	jmp	.label_1050
.label_3518:
	mov	r8, -1
	nop	
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r9b, r9b
	mov	rdi, rbp
	lea	rsi, [rsi]
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	mov	rsp, rsp
	cmp	rax, rdi
	sbb	dl, dl
	imul	rsi, rdi
	lea	rdi, [rdi]
	cmp	rax, rdi
	cmovb	rsi, r8
	or	dl, r9b
	nop	
	jmp	.label_1040
.label_1051:
	mov	rbp, rbp
	mov	r9, -1
	nop	
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	lea	rdi, [rdi]
	sbb	r8b, r8b
	lea	rdi, [rdi]
	mov	rdi, rbp
	imul	rdi, rsi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	cmovb	rdi, r9
	lea	rsi, [rsi]
	cmp	rax, rdi
	mov	rbp, rbp
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	lea	rdi, [rdi]
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	mov	rsp, rsp
	imul	rdi, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	cmovb	rdi, r9
	mov	rbp, rbp
	cmp	rax, rdi
	nop	
	sbb	cl, cl
	imul	rsi, rdi
	cmp	rax, rdi
	lea	rsi, [rsi]
	cmovb	rsi, r9
	lea	rdi, [rdi]
	or	dl, r8b
	mov	rbp, rbp
	or	dl, r10b
	or	dl, cl
	jmp	.label_1040
.label_1063:
	cmp	r13d, 0x5a
	lea	rdi, [rdi]
	jne	.label_1041
	lea	rsi, [rsi]
	mov	rdi, -1
	nop	
	mov	rax, -1
	nop	
	xor	edx, edx
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	nop	
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rcx, rbp
	mov	rbp, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	nop	
	imul	rcx, rsi
	mov	rsp, rsp
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rbp
	mov	rbp, rcx
	lea	rdi, [rdi]
	imul	rbp, rsi
	lea	rsi, [rsi]
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rsp, rsp
	mov	rcx, rbp
	imul	rcx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	cmovb	rcx, rdi
	nop	
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	cl, cl
	imul	rsi, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rsi, rdi
	mov	rbp, rbp
	or	dl, r8b
	or	dl, r9b
	lea	rsi, [rsi]
	or	dl, r10b
	lea	rsi, [rsi]
	and	dl, 1
	or	dl, r11b
	mov	rbp, rbp
	or	dl, r14b
	or	dl, cl
.label_1056:
	lea	rsi, [rsi]
	movzx	eax, dl
	and	eax, 1
	jmp	.label_1050
.label_1041:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	mov	rsp, rsp
	jmp	.label_1059
.label_3515:
	lea	rdi, [rdi]
	mov	r9, -1
	mov	rbp, rbp
	mov	rax, -1
	xor	edx, edx
	mov	rbp, rbp
	div	rsi
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r8b, r8b
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rbp, rbp
	imul	rdi, rsi
	mov	rsp, rsp
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	nop	
	sbb	dl, dl
	mov	rbp, rdi
	lea	rsi, [rsi]
	imul	rbp, rsi
	mov	rsp, rsp
	cmp	rax, rdi
	cmovb	rbp, r9
	mov	rsp, rsp
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rbp, rbp
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	nop	
	cmp	rax, rdi
	sbb	r11b, r11b
	mov	rbp, rbp
	mov	rbp, rdi
	nop	
	imul	rbp, rsi
	cmp	rax, rdi
	nop	
	cmovb	rbp, r9
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	r14b, r14b
	nop	
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
	lea	rsi, [rsi]
	or	dl, r11b
	lea	rsi, [rsi]
	or	dl, r14b
	lea	rdi, [rdi]
	or	dl, bpl
.label_1040:
	lea	rdi, [rdi]
	and	dl, 1
	lea	rsi, [rsi]
	movzx	eax, dl
.label_1050:
	mov	rbp, rsi
.label_1047:
	or	eax, ebx
	nop	
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp]
	mov	rbp, rbp
	mov	qword ptr [rdx], rcx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + r15], 0
	mov	rbp, rbp
	je	.label_1058
	or	eax, 2
.label_1058:
	mov	ebx, eax
.label_1045:
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	qword ptr [rax], rbp
.label_1059:
	mov	r13d, ebx
.label_1046:
	mov	eax, r13d
	mov	rsp, rsp
	add	rsp, 0x18
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_3519:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r8b, r8b
	mov	rdx, rbp
	lea	rsi, [rsi]
	imul	rdx, rsi
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	cl, cl
	lea	rdi, [rdi]
	mov	rbp, rdx
	nop	
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	nop	
	sbb	r9b, r9b
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	imul	rdx, rsi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	cmovb	rdx, rdi
	nop	
	cmp	rax, rdx
	mov	rsp, rsp
	sbb	r10b, r10b
	mov	rbp, rbp
	mov	rbp, rdx
	mov	rbp, rbp
	imul	rbp, rsi
	lea	rdi, [rdi]
	cmp	rax, rdx
	cmovb	rbp, rdi
	nop	
	cmp	rax, rbp
	sbb	dl, dl
	lea	rsi, [rsi]
	imul	rsi, rbp
	cmp	rax, rbp
	lea	rdi, [rdi]
	cmovb	rsi, rdi
	mov	rbp, rbp
	or	cl, r8b
	or	cl, r9b
	or	cl, r10b
	nop	
	or	cl, dl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	jmp	.label_1050
.label_1048:
	mov	edi, OFFSET FLAT:.str_12
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410980

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	lea	rsi, [rsi]
	push	rbp
	nop	
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	push	rax
	lea	rdi, [rdi]
	mov	r15, r8
	mov	eax, esi
	nop	
	mov	ebp,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rsi, [rsi]
	dec	edi
	nop	
	cmp	edi, 4
	jae	.label_1064
	movsxd	rsi, edi
	mov	rsi,  qword ptr [word ptr [+ (rsi * 8) + label_1066]]
	mov	rbp, rbp
	cdqe	
	test	eax, eax
	nop	
	jns	.label_1067
	nop	
	lea	r14, [rsp + 6]
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:.str_13
	mov	rsp, rsp
	sub	rbx, rax
	mov	byte ptr [rsp + 6], dl
	mov	byte ptr [rsp + 7], 0
	mov	rsp, rsp
	jmp	.label_1065
.label_1067:
	mov	rbp, rbp
	shl	rax, 5
	mov	r14, qword ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:.str_13
.label_1065:
	xor	edi, edi
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rcx
	mov	rcx, rbx
	mov	r8, r14
	mov	r9, r15
	mov	rbp, rbp
	call	error
.label_1064:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410a30

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	r14, r8
	nop	
	mov	r12d, edx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_1081
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	call	__errno_location
	lea	rsi, [rsi]
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	dword ptr [rax]
.label_1074:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_1074
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsp + 8]
	cmovne	rsi, rbp
	nop	
	movzx	eax, al
	mov	rbp, rbp
	mov	r13d, 4
	cmp	eax, 0x2d
	mov	rsp, rsp
	je	.label_1070
	mov	dword ptr [rsp + 4], 0
	xor	ecx, ecx
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	edx, r12d
	call	__strtoul_internal
	nop	
	mov	rcx, rbp
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	r12, qword ptr [rcx]
	nop	
	cmp	r12, rbx
	nop	
	je	.label_1092
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rsp, rsp
	je	.label_1089
	mov	rsp, rsp
	cmp	eax, 0x22
	jne	.label_1070
	mov	dword ptr [rsp + 4], 1
.label_1089:
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_1077
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	lea	rsi, [rsi]
	jmp	.label_1070
.label_1092:
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_1070
	movsx	esi, byte ptr [rbx]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_1070
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rbx, rcx
	call	strchr
	mov	rsp, rsp
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_1070
.label_1077:
	lea	rdi, [rdi]
	movsx	r13d, byte ptr [r12]
	mov	rbp, rbp
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_1068
	lea	rdi, [rdi]
	mov	r15, rcx
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rbp, rbp
	mov	esi, r13d
	call	strchr
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_1076
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1082
	nop	
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_1082
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strchr
	mov	rbp, rbp
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	test	rax, rax
	mov	rsp, rsp
	je	.label_1082
	movsx	eax, byte ptr [r12 + 1]
	lea	rdi, [rdi]
	mov	ecx, 1
	nop	
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_1079
	cmp	eax, 0x44
	nop	
	je	.label_1079
	cmp	eax, 0x69
	jne	.label_1082
	movzx	eax, byte ptr [r12 + 2]
	mov	rbp, rbp
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_1083
	lea	rdi, [rdi]
	mov	ecx, 1
.label_1083:
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_1082
.label_1068:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_1090
.label_1079:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_1082:
	cmp	r13d, 0x59
	lea	rdi, [rdi]
	jg	.label_1094
	mov	rsp, rsp
	lea	eax, [r13 - 0x42]
	nop	
	cmp	eax, 0xe
	nop	
	ja	.label_1071
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1075]]
.label_3380:
	mov	rax, rbp
	mov	rsp, rsp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_1078
.label_1094:
	lea	rsi, [rsi]
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_1080
	mov	rbp, rbp
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	mov	rbp, rbp
	ja	.label_1084
	mov	rsp, rsp
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1086]]
.label_3304:
	mov	rax, rbp
	shr	rax, 0x37
	lea	rsi, [rsi]
	setne	dl
	nop	
	shl	rbp, 9
.label_1078:
	cmp	rax, 1
	nop	
	sbb	rax, rax
	lea	rdi, [rdi]
	not	rax
	or	rbp, rax
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	jmp	.label_1088
.label_1071:
	cmp	r13d, 0x54
	nop	
	je	.label_1073
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_1076
	nop	
	mov	rdi, -1
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	lea	rdi, [rdi]
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	lea	rdi, [rdi]
	sbb	r9b, r9b
	mov	rbp, rbp
	mov	rbx, rbp
	lea	rsi, [rsi]
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	r11b, r11b
	lea	rdi, [rdi]
	mov	rbx, rbp
	mov	rsp, rsp
	imul	rbx, rsi
	cmp	rax, rbp
	mov	rbp, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	nop	
	sbb	r14b, r14b
	mov	rbp, rbx
	lea	rdi, [rdi]
	imul	rbp, rsi
	cmp	rax, rbx
	mov	rsp, rsp
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	mov	rsp, rsp
	cmovb	rsi, rdi
	or	dl, r8b
	lea	rsi, [rsi]
	or	dl, r9b
	lea	rdi, [rdi]
	or	dl, r10b
	mov	rsp, rsp
	or	dl, r11b
	lea	rsi, [rsi]
	and	dl, 1
	lea	rdi, [rdi]
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_1072
.label_1080:
	cmp	r13d, 0x74
	je	.label_1073
	mov	rbp, rbp
	cmp	r13d, 0x77
	mov	rbp, rbp
	jne	.label_1076
	lea	rdi, [rdi]
	lea	rax, [rbp + rbp]
	lea	rsi, [rsi]
	test	rbp, rbp
	lea	rsi, [rsi]
	mov	rdx, -1
	nop	
	cmovns	rdx, rax
	lea	rdi, [rdi]
	shr	rbp, 0x3f
	lea	rsi, [rsi]
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_1088
.label_3305:
	nop	
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	nop	
	sbb	dl, dl
	nop	
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	bl, bl
	lea	rdi, [rdi]
	imul	rsi, rbp
	cmp	rax, rbp
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_1085
.label_3306:
	mov	rdi, -1
	mov	rax, -1
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rsi, rdi
	nop	
	sbb	eax, eax
	mov	rsp, rsp
	and	eax, 1
	nop	
	jmp	.label_1087
.label_3307:
	mov	rbp, rbp
	mov	rdi, -1
	lea	rdi, [rdi]
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	lea	rdi, [rdi]
	imul	rbx, rsi
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	nop	
	cmp	rax, rbx
	nop	
	sbb	dl, dl
	lea	rsi, [rsi]
	imul	rsi, rbx
	nop	
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_1069
.label_1073:
	mov	rsp, rsp
	mov	r9, -1
	mov	rax, -1
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	cmovb	rbx, r9
	mov	rbp, rbp
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rsp, rsp
	mov	rdi, rbp
	imul	rdi, rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	mov	rbp, rbp
	sbb	bl, bl
	imul	rsi, rdi
	lea	rdi, [rdi]
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_1093
.label_1084:
	cmp	r13d, 0x5a
	jne	.label_1076
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	lea	rsi, [rsi]
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
	nop	
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	lea	rdi, [rdi]
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	nop	
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rsp, rsp
	cmp	rax, rbx
	lea	rdi, [rdi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	nop	
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	mov	rbp, rbp
	imul	rsi, rbp
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rsi, rdi
	mov	rbp, rbp
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	mov	rbp, rbp
	or	dl, r14b
	lea	rsi, [rsi]
	or	dl, bl
.label_1072:
	movzx	eax, dl
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsi]
	jmp	.label_1087
.label_1076:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	lea	rdi, [rdi]
	mov	r13d, eax
	jmp	.label_1070
.label_3381:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	mov	rsp, rsp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	mov	rsp, rsp
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r9b, r9b
	nop	
	mov	rbx, rbp
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	mov	rsp, rsp
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
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rbx, rdi
	mov	rbp, rbp
	cmp	rax, rbx
	sbb	bpl, bpl
	lea	rsi, [rsi]
	imul	rsi, rbx
	cmp	rax, rbx
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	lea	rdi, [rdi]
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	nop	
	jmp	.label_1069
.label_3382:
	mov	rdi, -1
	mov	rax, -1
	nop	
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r9b, r9b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	nop	
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	lea	rsi, [rsi]
	cmp	rax, rbp
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	lea	rdi, [rdi]
	or	dl, r9b
.label_1093:
	or	dl, r10b
.label_1085:
	lea	rsi, [rsi]
	or	dl, bl
.label_1069:
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
.label_1087:
	mov	rsp, rsp
	mov	rbp, rsi
.label_1088:
	lea	rsi, [rsi]
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + rcx], 0
	je	.label_1091
	or	eax, 2
.label_1091:
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 0x10]
.label_1090:
	mov	qword ptr [rax], rbp
.label_1070:
	nop	
	mov	eax, r13d
	mov	rbp, rbp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_1081:
	mov	edi, OFFSET FLAT:.str_12
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x54
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4112f0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_1095
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1096
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
	je	.label_1096
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
.label_1095:
	mov	ecx, 1
.label_1096:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411360

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
	js	.label_1097
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_1099
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
	je	.label_1097
.label_1099:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1097
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_1098
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_1098:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_1097:
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
	#Procedure 0x411410

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1100
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_1100
	test	byte ptr [rbx + 1], 1
	je	.label_1100
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_1100:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411450

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	rbp, rbp
	call	freopen
	lea	rsi, [rsi]
	mov	rbx, rax
	test	r15, r15
	mov	rsp, rsp
	je	.label_1101
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_1101
	mov	rdi, rbx
	mov	rsp, rsp
	call	fileno
	mov	ebp, eax
	mov	rbp, rbp
	mov	edi, ebp
	lea	rdi, [rdi]
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_1101
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 9
	jne	.label_1101
	nop	
	mov	edi, OFFSET FLAT:.str_6
	mov	rbp, rbp
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	mov	rsp, rsp
	je	.label_1102
	mov	edi, r12d
	nop	
	mov	esi, ebp
	call	dup2
	nop	
	mov	ebp, eax
	lea	rdi, [rdi]
	mov	edi, r12d
	call	close
	nop	
	test	ebp, ebp
	js	.label_1101
.label_1102:
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	jmp	freopen
.label_1101:
	mov	rbp, rbp
	mov	rax, rbx
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411530

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
	jne	.label_1103
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1103
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1104
.label_1103:
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
.label_1104:
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
	je	.label_1105
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1105:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4115e0

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	nop	
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x38
	mov	r13, rdx
	mov	r15d, esi
	mov	r12, rdi
	cmp	r15d, 0x1000
	jae	.label_1108
	mov	rbp, rbp
	mov	eax, r15d
	lea	rdi, [rdi]
	and	eax, 0x204
	nop	
	cmp	eax, 0x204
	je	.label_1108
	mov	rsp, rsp
	test	r15b, 0x12
	nop	
	je	.label_1108
	mov	rsp, rsp
	mov	edi, 0x80
	mov	rsp, rsp
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1117
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + 0x30], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x40], r13
	mov	eax, r15d
	and	eax, 0xfffffdfb
	mov	rsp, rsp
	or	eax, 4
	lea	rdi, [rdi]
	test	r15b, 2
	lea	rdi, [rdi]
	cmove	eax, r15d
	lea	rdi, [rdi]
	mov	dword ptr [rbx + 0x48], eax
	mov	rbp, rbp
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	mov	rdi, qword ptr [r12]
	mov	ebp, 1
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_1121
	mov	r14, rbx
	mov	rbp, rbp
	lea	rbx, [r12 + 8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1122:
	nop	
	call	strlen
	cmp	rax, rbp
	mov	rsp, rsp
	cmova	rbp, rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_1122
	inc	rbp
	mov	rsp, rsp
	mov	rbx, r14
.label_1121:
	cmp	rbp, 0x1000
	lea	rsi, [rsi]
	mov	esi, 0x1000
	cmova	rsi, rbp
	mov	rsp, rsp
	add	rsi, 0x100
	nop	
	mov	qword ptr [rbx + 0x30], rsi
	xor	edi, edi
	mov	rsp, rsp
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_1114
	mov	r14d, r15d
	mov	qword ptr [rbx + 0x20], rbp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rbx
	mov	r15, qword ptr [r12]
	mov	qword ptr [rsp], r12
	lea	rsi, [rsi]
	xor	r12d, r12d
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_1116
	mov	edi, 0x110
	call	malloc
	mov	r12, rax
	mov	rbp, rbp
	test	r12, r12
	je	.label_1126
	mov	byte ptr [r12 + 0x108], 0
	mov	qword ptr [r12 + 0x60], 0
	mov	rax, qword ptr [rsp + 8]
	nop	
	mov	qword ptr [r12 + 0x50], rax
	mov	qword ptr [r12 + 0x38], rbp
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x40], 0
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x18], 0
	mov	rsp, rsp
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], -1
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x68], -1
.label_1116:
	mov	byte ptr [rsp + 0x17], 1
	mov	rsp, rsp
	test	r13, r13
	je	.label_1139
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	lea	rdi, [rdi]
	shr	al, 2
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x17], al
.label_1139:
	mov	rsp, rsp
	xor	ebp, ebp
	mov	rsp, rsp
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_1110
	mov	qword ptr [rsp + 0x20], r12
	mov	ebx, r14d
	and	ebx, 0x800
	mov	dword ptr [rsp + 0x34], ebx
	xor	ebp, ebp
	mov	rsp, rsp
	xor	r12d, r12d
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1119:
	mov	qword ptr [rsp + 0x18], rbp
	mov	rdi, r15
	lea	rsi, [rsi]
	call	strlen
	mov	rbp, rax
	test	ebx, ebx
	jne	.label_1123
	lea	rdi, [rdi]
	cmp	rbp, 3
	jb	.label_1134
	cmp	rbp, 2
	nop	
	jb	.label_1127
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp + r15 - 1]
	lea	rsi, [rsi]
	cmp	eax, 0x2f
	jne	.label_1128
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r12
.label_1132:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r15 + rbp - 2]
	cmp	eax, 0x2f
	jne	.label_1129
	lea	rdi, [rdi]
	dec	rbp
	lea	rdi, [rdi]
	cmp	rbp, 1
	lea	rsi, [rsi]
	ja	.label_1132
	jmp	.label_1129
.label_1123:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r12
	jmp	.label_1129
.label_1134:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r12
	jmp	.label_1129
.label_1127:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r12
	jmp	.label_1129
.label_1128:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r12
	nop	dword ptr [rax + rax]
.label_1129:
	mov	rbx, r13
	lea	rsi, [rsi]
	lea	rdi, [rbp + 0x110]
	nop	
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbp, rbp
	mov	r12, rax
	test	r12, r12
	je	.label_1131
	lea	rsi, [rsi]
	mov	r13, r12
	add	r13, 0x108
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsi, r15
	nop	
	mov	rdx, rbp
	call	memcpy
	mov	rbp, rbp
	mov	byte ptr [r12 + rbp + 0x108], 0
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x60], rbp
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x50], rdi
	nop	
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	rsp, rsp
	mov	dword ptr [r12 + 0x40], 0
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	rsp, rsp
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], 0
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x30], r13
	nop	
	mov	r15, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	test	r15, r15
	mov	rbp, rbp
	setne	al
	and	al, byte ptr [rsp + 0x17]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_1113
	mov	word ptr [r12 + 0x70], 0xb
	mov	rsp, rsp
	mov	qword ptr [r12 + 0xa8], 2
	jmp	.label_1138
	nop	word ptr cs:[rax + rax]
.label_1113:
	nop	
	xor	edx, edx
	mov	rsi, r12
	mov	rbp, rbp
	call	fts_stat
	mov	rsp, rsp
	mov	word ptr [r12 + 0x70], ax
.label_1138:
	mov	rsp, rsp
	mov	r13, rbx
	nop	
	test	r13, r13
	je	.label_1106
	mov	rbp, r12
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x10], r15
	nop	
	mov	r12, qword ptr [rsp + 0x28]
	jmp	.label_1112
.label_1106:
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x10], 0
	mov	rsp, rsp
	test	r15, r15
	lea	rdi, [rdi]
	mov	rbp, r12
	je	.label_1112
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	mov	qword ptr [rax + 0x10], r12
	mov	rbp, r15
.label_1112:
	nop	
	inc	r14
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	mov	r15, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp], rax
	test	r15, r15
	mov	rsp, rsp
	mov	ebx, dword ptr [rsp + 0x34]
	jne	.label_1119
	mov	rsp, rsp
	test	r13, r13
	mov	rdi, qword ptr [rsp + 8]
	je	.label_1124
	cmp	r14, 2
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	jb	.label_1110
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	rdx, r14
	call	fts_sort
	mov	rbp, rax
	nop	
	jmp	.label_1110
.label_1108:
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	rbp, rbp
	xor	eax, eax
.label_1117:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
.label_1114:
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	jmp	.label_1137
.label_1131:
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r12, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_1135
.label_1126:
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 8]
	jmp	.label_1130
.label_1124:
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x20]
.label_1110:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	mov	rsp, rsp
	je	.label_1107
	mov	rsp, rsp
	mov	byte ptr [rax + 0x108], 0
	mov	qword ptr [rax + 0x60], 0
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x50], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x38], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x40], 0
	mov	qword ptr [rax + 0x18], 0
	mov	word ptr [rax + 0x72], 0
	lea	rsi, [rsi]
	mov	word ptr [rax + 0x74], 3
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x20], xmm0
	nop	
	mov	qword ptr [rbx], rax
	mov	qword ptr [rax + 0x10], rbp
	mov	word ptr [rax + 0x70], 9
	mov	qword ptr [rax + 0x58], 1
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_1109
	mov	edi, 0x1f
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:AD_hash
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_1133
	lea	rsi, [rsi]
	jmp	.label_1135
.label_1107:
	mov	rbx, qword ptr [rsp + 8]
	nop	
	mov	qword ptr [rbx], 0
	jmp	.label_1135
.label_1109:
	mov	edi, 0x20
	lea	rdi, [rdi]
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_1135
	lea	rsi, [rsi]
	mov	rdi, rax
	call	cycle_check_init
.label_1133:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbx + 0x48]
	nop	
	test	ax, 0x204
	jne	.label_1136
	mov	edx, eax
	and	edx, 0x10
	mov	rbp, rbp
	shl	edx, 0xd
	mov	rsp, rsp
	or	edx, 0x90900
	mov	rbp, rbp
	test	ah, 2
	nop	
	jne	.label_1111
	mov	edi, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, edx
	lea	rsi, [rsi]
	call	open_safer
	lea	rdi, [rdi]
	jmp	.label_1118
.label_1135:
	lea	rdi, [rdi]
	mov	r14, rbx
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_1115
	nop	dword ptr [rax]
.label_1125:
	mov	rbx, qword ptr [rbp + 0x10]
	nop	
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_1120
	lea	rdi, [rdi]
	call	closedir
.label_1120:
	mov	rsp, rsp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	free
	test	rbx, rbx
	lea	rdi, [rdi]
	mov	rbp, rbx
	mov	rbp, rbp
	jne	.label_1125
.label_1115:
	mov	rdi, r12
	call	free
	mov	rbx, r14
	mov	rbp, qword ptr [rbx + 0x20]
.label_1130:
	nop	
	mov	rdi, rbp
.label_1137:
	call	free
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_1117
.label_1111:
	mov	rsp, rsp
	mov	edi, dword ptr [rbx + 0x2c]
	mov	esi, OFFSET FLAT:.str_1
	xor	eax, eax
	call	openat_safer
.label_1118:
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x28], eax
	lea	rdi, [rdi]
	test	eax, eax
	jns	.label_1136
	lea	rsi, [rsi]
	or	byte ptr [rbx + 0x48], 4
.label_1136:
	nop	
	mov	rdi, rbx
	nop	
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	lea	rsi, [rsi]
	mov	rax, rbx
	lea	rdi, [rdi]
	jmp	.label_1117
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411d00

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	nop	
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	eax, dword ptr [r15 + 0x48]
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 0x58], 0
	jne	.label_1140
	test	al, 1
	nop	
	je	.label_1140
	lea	rsi, [rsi]
	mov	dl, 1
.label_1140:
	mov	rbp, rbp
	lea	rbx, [r14 + 0x78]
	lea	rdi, [rdi]
	test	dl, dl
	lea	rdi, [rdi]
	jne	.label_1147
	and	eax, 2
	jne	.label_1147
	mov	rbp, rbp
	mov	esi, dword ptr [r15 + 0x2c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r14 + 0x30]
	nop	
	mov	edi, 1
	mov	r8d, 0x100
	mov	rsp, rsp
	mov	rcx, rbx
	lea	rsi, [rsi]
	call	__fxstatat
	test	eax, eax
	je	.label_1145
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	jmp	.label_1148
.label_1147:
	mov	rsp, rsp
	mov	rsi, qword ptr [r14 + 0x30]
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	__xstat
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_1145
	lea	rdi, [rdi]
	call	__errno_location
	mov	r15, rax
	mov	eax, dword ptr [r15]
	cmp	eax, 2
	jne	.label_1148
	mov	rsi, qword ptr [r14 + 0x30]
	nop	
	mov	edi, 1
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rsp, rsp
	call	__lxstat
	test	eax, eax
	mov	rbp, rbp
	je	.label_1143
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15]
.label_1148:
	mov	dword ptr [r14 + 0x40], eax
	mov	rbp, rbp
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx], xmm0
	mov	ax, 0xa
.label_1141:
	movzx	eax, ax
	nop	
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1145:
	mov	rbp, rbp
	mov	ecx, 0xf000
	and	ecx, dword ptr [r14 + 0x90]
	lea	rsi, [rsi]
	mov	ax, 0xc
	cmp	ecx, 0xa000
	je	.label_1141
	cmp	ecx, 0x8000
	nop	
	je	.label_1142
	cmp	ecx, 0x4000
	mov	rbp, rbp
	jne	.label_1144
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x88]
	mov	rcx, -1
	lea	rdi, [rdi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_1146
	cmp	qword ptr [r14 + 0x58], 0
	jle	.label_1146
	mov	ecx, dword ptr [r15 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
.label_1146:
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x68], rcx
	mov	ecx, dword ptr [r14 + 0x108]
	mov	ax, 1
	mov	rsp, rsp
	movzx	edx, cl
	cmp	edx, 0x2e
	mov	rsp, rsp
	jne	.label_1141
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_1149
	mov	rbp, rbp
	movzx	edx, dl
	lea	rsi, [rsi]
	cmp	edx, 0x2e
	jne	.label_1141
	lea	rsi, [rsi]
	test	ecx, 0xff0000
	lea	rdi, [rdi]
	jne	.label_1141
.label_1149:
	nop	
	mov	ax, 1
	cmp	qword ptr [r14 + 0x58], 0
	mov	rsp, rsp
	je	.label_1141
	mov	ax, 5
	jmp	.label_1141
.label_1142:
	mov	ax, 8
	jmp	.label_1141
.label_1144:
	lea	rdi, [rdi]
	mov	ax, 3
	lea	rsi, [rsi]
	jmp	.label_1141
.label_1143:
	mov	dword ptr [r15], 0
	mov	ax, 0xd
	jmp	.label_1141
	nop	
	.section	.text
	.align	32
	#Procedure 0x411f30

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rsp, rsp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r15, qword ptr [r12 + 0x40]
	lea	rdi, [rdi]
	cmp	qword ptr [r12 + 0x38], r14
	jae	.label_1155
	lea	rsi, [r14 + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rbp, rbp
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_1153
	mov	rsp, rsp
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	lea	rsi, [rsi]
	call	realloc
	mov	rdi, rax
	lea	rdi, [rdi]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1153
	mov	qword ptr [r13], rdi
	lea	rdi, [rdi]
	jmp	.label_1156
.label_1155:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	add	r12, 0x10
	mov	r13, r12
.label_1156:
	mov	rsp, rsp
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_1150
	nop	dword ptr [rax]
.label_1152:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_1152
	mov	rdi, qword ptr [r13]
.label_1150:
	mov	edx, 8
	nop	
	mov	rsi, r14
	nop	
	mov	rcx, r15
	nop	
	call	qsort
	mov	r9, qword ptr [r13]
	mov	rbx, qword ptr [r9]
	mov	rsp, rsp
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_1160
	nop	
	mov	rcx, qword ptr [r9 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rsp, rsp
	mov	rcx, r14
	add	rcx, -2
	mov	rsp, rsp
	je	.label_1157
	mov	rsp, rsp
	lea	rdx, [r9 + 8]
	lea	rsi, [rsi]
	lea	edi, [r14 + 2]
	mov	rsp, rsp
	lea	r8, [r14 - 3]
	lea	rsi, [rsi]
	test	dil, 3
	mov	rbp, rbp
	je	.label_1159
	lea	rsi, [rsi]
	lea	edi, [r14 + 2]
	and	edi, 3
	neg	rdi
	nop	
.label_1151:
	mov	rsi, qword ptr [rdx]
	nop	
	mov	rax, qword ptr [rdx + 8]
	lea	rdx, [rdx + 8]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x10], rax
	dec	rcx
	nop	
	inc	rdi
	jne	.label_1151
.label_1159:
	lea	rsi, [rsi]
	cmp	r8, 3
	mov	rbp, rbp
	jb	.label_1157
	nop	dword ptr [rax + rax]
.label_1154:
	mov	rsp, rsp
	mov	rax, qword ptr [rdx]
	mov	rsi, qword ptr [rdx + 8]
	mov	qword ptr [rax + 0x10], rsi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rdx + 0x10]
	mov	qword ptr [rax + 0x10], rsi
	mov	rax, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], rsi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + 0x20]
	lea	rdx, [rdx + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], rsi
	mov	rbp, rbp
	add	rcx, -4
	lea	rsi, [rsi]
	jne	.label_1154
.label_1157:
	mov	rsp, rsp
	mov	rcx, qword ptr [r9 + r14*8 - 8]
.label_1160:
	mov	qword ptr [rcx + 0x10], 0
	jmp	.label_1158
.label_1153:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
.label_1158:
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
	#Procedure 0x412130

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	lea	rsi, [rsi]
	push	rbp
	push	r14
	nop	
	push	rbx
	nop	
	mov	r14, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	mov	rsp, rsp
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1170
	lea	rsi, [rsi]
	cmp	qword ptr [rdi + 0x58], 0
	lea	rsi, [rsi]
	js	.label_1174
	nop	word ptr [rax + rax]
.label_1178:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rdi + 0x10]
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_1175
	mov	rbx, qword ptr [rdi + 8]
.label_1175:
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x58], 0
	lea	rsi, [rsi]
	mov	rdi, rbx
	jns	.label_1178
	mov	rsp, rsp
	jmp	.label_1162
.label_1174:
	mov	rbx, rdi
.label_1162:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	free
.label_1170:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1166
	nop	dword ptr [rax]
.label_1173:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1171
	lea	rsi, [rsi]
	call	closedir
.label_1171:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	lea	rdi, [rdi]
	mov	rbx, rbp
	jne	.label_1173
.label_1166:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [r14 + 0x48]
	lea	rdi, [rdi]
	test	ah, 2
	jne	.label_1179
	xor	ebp, ebp
	mov	rbp, rbp
	test	al, 4
	jne	.label_1169
	nop	
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_1163
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_1163:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	lea	rsi, [rsi]
	test	ebp, ebp
	nop	
	je	.label_1167
	nop	
	jmp	.label_1169
.label_1179:
	mov	rsp, rsp
	mov	edi, dword ptr [r14 + 0x2c]
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rdi, [rdi]
	test	edi, edi
	js	.label_1169
	nop	
	call	close
.label_1167:
	nop	
	test	eax, eax
	nop	
	je	.label_1169
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
.label_1169:
	lea	rsi, [rsi]
	lea	rbx, [r14 + 0x60]
	jmp	.label_1164
	nop	
.label_1161:
	mov	edi, eax
	mov	rsp, rsp
	call	close
.label_1164:
	mov	rsp, rsp
	mov	rdi, rbx
	call	i_ring_empty
	lea	rdi, [rdi]
	test	al, al
	jne	.label_1177
	mov	rbp, rbp
	mov	rdi, rbx
	call	i_ring_pop
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	jns	.label_1161
	nop	
	jmp	.label_1164
.label_1177:
	mov	rsp, rsp
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_1165
	nop	
	call	hash_free
.label_1165:
	nop	
	movzx	eax, word ptr [r14 + 0x48]
	mov	rbp, rbp
	test	ax, 0x102
	je	.label_1168
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x58]
	mov	rbp, rbp
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1172
	lea	rdi, [rdi]
	call	hash_free
	nop	
	jmp	.label_1172
.label_1168:
	mov	rdi, qword ptr [r14 + 0x58]
	lea	rdi, [rdi]
	call	free
.label_1172:
	mov	rdi, r14
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	xor	eax, eax
	test	ebp, ebp
	je	.label_1176
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], ebp
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
.label_1176:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412320

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	nop	
	push	r13
	mov	rsp, rsp
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rsp, rsp
	mov	r14, rdi
	nop	
	mov	r12, qword ptr [r14]
	xor	r15d, r15d
	test	r12, r12
	je	.label_1181
	mov	rsp, rsp
	mov	eax, dword ptr [r14 + 0x48]
	xor	r15d, r15d
	mov	rbp, rbp
	test	ah, 0x20
	mov	rsp, rsp
	jne	.label_1181
	lea	rdi, [rdi]
	movzx	ecx, word ptr [r12 + 0x74]
	nop	
	mov	word ptr [r12 + 0x74], 3
	mov	rsp, rsp
	cmp	ecx, 1
	nop	
	je	.label_1211
	movzx	edx, cx
	cmp	edx, 2
	mov	rsp, rsp
	jne	.label_1218
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r12 + 0x70]
	mov	rsp, rsp
	mov	esi, ecx
	and	esi, 0xfffe
	mov	rbp, rbp
	cmp	esi, 0xc
	jne	.label_1222
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_1229
	mov	eax, dword ptr [r14 + 0x48]
	mov	rbp, rbp
	test	al, 4
	lea	rdi, [rdi]
	jne	.label_1232
	mov	edx, eax
	nop	
	and	edx, 0x10
	shl	edx, 0xd
	lea	rdi, [rdi]
	or	edx, 0x90900
	mov	rsp, rsp
	test	ah, 2
	jne	.label_1216
	nop	
	mov	edi, OFFSET FLAT:.str_1
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, edx
	call	open_safer
	nop	
	jmp	.label_1187
.label_1211:
	xor	edx, edx
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r12
	call	fts_stat
	mov	rbp, rbp
	mov	word ptr [r12 + 0x70], ax
	mov	r15, r12
	jmp	.label_1181
.label_1218:
	lea	r13, [r12 + 0x70]
	mov	ecx, dword ptr [r12 + 0x70]
	jmp	.label_1200
.label_1222:
	mov	rbp, rbp
	lea	r13, [r12 + 0x70]
.label_1200:
	movzx	esi, cx
	mov	rsp, rsp
	cmp	esi, 1
	jne	.label_1205
	cmp	edx, 4
	je	.label_1210
	lea	rsi, [rsi]
	test	al, 0x40
	je	.label_1212
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r12 + 0x78]
	nop	
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_1210
.label_1212:
	mov	rbx, qword ptr [r14 + 8]
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_1219
	test	ah, 0x10
	jne	.label_1223
	nop	
	mov	rcx, qword ptr [r12 + 0x30]
	mov	edx, 0xffffffff
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r12
	call	fts_safe_changedir
	test	eax, eax
	mov	rbp, rbp
	je	.label_1191
	call	__errno_location
	mov	eax, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x40], eax
	or	byte ptr [r12 + 0x72], 1
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rdi, [rdi]
	jmp	.label_1236
	nop	word ptr [rax + rax]
.label_1205:
	mov	r15, qword ptr [r12 + 0x10]
	test	r15, r15
	je	.label_1203
	mov	rsp, rsp
	mov	qword ptr [r14], r15
	mov	rbp, rbp
	mov	rdi, r12
	lea	rdi, [rdi]
	call	free
	nop	
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1186
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	r12, r15
	lea	rsi, [rsi]
	je	.label_1205
	mov	rbp, rbp
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_1192
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	nop	
	call	fts_stat
	lea	rsi, [rsi]
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	nop	
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_1190
	mov	eax, dword ptr [r14 + 0x48]
	nop	
	test	al, 4
	mov	rbp, rbp
	jne	.label_1190
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	lea	rdi, [rdi]
	or	edx, 0x90900
	mov	rbp, rbp
	test	ah, 2
	jne	.label_1230
	mov	edi, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, edx
	lea	rdi, [rdi]
	call	open_safer
	lea	rsi, [rsi]
	jmp	.label_1189
.label_1224:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_1236:
	mov	rbp, rbp
	test	rax, rax
	jne	.label_1224
	jmp	.label_1191
.label_1210:
	test	ecx, 0x20000
	je	.label_1231
	mov	rbp, rbp
	mov	edi, dword ptr [r12 + 0x44]
	mov	rsp, rsp
	call	close
.label_1231:
	nop	
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_1233
	nop	word ptr cs:[rax + rax]
.label_1226:
	nop	
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1180
	call	closedir
.label_1180:
	mov	rdi, rbx
	call	free
	nop	
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_1226
	mov	rbp, rbp
	mov	qword ptr [r14 + 8], 0
.label_1233:
	nop	
	mov	word ptr [r12 + 0x70], 6
.label_1194:
	mov	rdi, r14
	mov	rsi, r12
	call	leave_dir
	mov	rsp, rsp
	mov	r15, r12
	mov	rbp, rbp
	jmp	.label_1181
.label_1203:
	lea	rsi, [rsi]
	mov	r15, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_1204
	mov	qword ptr [r14], r15
	mov	rax, qword ptr [r15 + 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	mov	rbp, rbp
	call	fts_build
	mov	r15, rax
	test	r15, r15
	nop	
	je	.label_1220
	mov	rdi, r12
	call	free
	nop	
	jmp	.label_1192
.label_1229:
	mov	rbp, rbp
	mov	r15, r12
	jmp	.label_1225
.label_1186:
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rdi, [rdi]
	call	restore_initial_cwd
	mov	rbp, rbp
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_1227
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	mov	rbp, rbp
	xor	r15d, r15d
	nop	
	jmp	.label_1181
.label_1232:
	mov	r15, r12
	mov	rbp, rbp
	jmp	.label_1225
.label_1227:
	test	ax, 0x102
	je	.label_1234
	mov	rdi, qword ptr [r14 + 0x58]
	nop	
	test	rdi, rdi
	je	.label_1183
	mov	rbp, rbp
	call	hash_free
	jmp	.label_1183
.label_1223:
	nop	
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr [rax + rax]
.label_1197:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	nop	
	test	rdi, rdi
	je	.label_1237
	nop	
	call	closedir
.label_1237:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	lea	rdi, [rdi]
	mov	rbx, rbp
	jne	.label_1197
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 8], 0
.label_1219:
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 8], rax
	mov	rsp, rsp
	test	rax, rax
	je	.label_1208
.label_1191:
	mov	r15, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], 0
	jmp	.label_1192
.label_1208:
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	byte ptr [r14 + 0x49], 0x20
	mov	rsp, rsp
	jne	.label_1181
	lea	rsi, [rsi]
	cmp	dword ptr [r12 + 0x40], 0
	lea	rdi, [rdi]
	je	.label_1194
	movzx	eax, word ptr [r13]
	nop	
	cmp	eax, 4
	nop	
	je	.label_1194
	mov	rbp, rbp
	mov	word ptr [r13], 7
	nop	
	jmp	.label_1194
.label_1216:
	lea	rsi, [rsi]
	mov	edi, dword ptr [r14 + 0x2c]
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	xor	eax, eax
	call	openat_safer
.label_1187:
	mov	dword ptr [r12 + 0x44], eax
	mov	rsp, rsp
	test	eax, eax
	js	.label_1206
	or	byte ptr [r12 + 0x72], 2
	mov	r15, r12
	jmp	.label_1225
.label_1220:
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_1181
	mov	rsp, rsp
	mov	r15, qword ptr [r12 + 8]
.label_1204:
	lea	rdi, [rdi]
	mov	qword ptr [r14], r15
	mov	rdi, r12
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x58], -1
	nop	
	je	.label_1193
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	nop	
	je	.label_1196
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1202
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	nop	
	jne	.label_1209
	test	al, 1
	jne	.label_1182
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_7
	mov	rdi, r14
	call	fts_safe_changedir
	lea	rdi, [rdi]
	jmp	.label_1215
.label_1193:
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_1181
.label_1206:
	call	__errno_location
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x70], 7
	mov	rsp, rsp
	mov	r15, r12
	mov	rbp, rbp
	jmp	.label_1225
.label_1234:
	mov	rdi, qword ptr [r14 + 0x58]
	mov	rsp, rsp
	call	free
.label_1183:
	nop	
	mov	rdx, qword ptr [r15 + 0x60]
	mov	qword ptr [r15 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	rdi, [rdi]
	lea	r12, [r15 + 0x108]
	lea	rdi, [rdi]
	inc	rdx
	mov	rsi, r12
	call	memmove
	lea	rsi, [rsi]
	mov	esi, 0x2f
	mov	rdi, r12
	mov	rsp, rsp
	call	strrchr
	mov	rbx, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_1201
	lea	rsi, [rsi]
	cmp	rbx, r12
	nop	
	jne	.label_1214
	nop	
	cmp	byte ptr [r15 + 0x109], 0
	je	.label_1201
.label_1214:
	mov	rbp, rbp
	inc	rbx
	mov	rdi, rbx
	nop	
	call	strlen
	mov	rsp, rsp
	mov	r13, rax
	mov	rsp, rsp
	lea	rdx, [r13 + 1]
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	memmove
	mov	qword ptr [r15 + 0x60], r13
.label_1201:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	mov	qword ptr [r15 + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	mov	rbp, rbp
	test	ax, 0x102
	je	.label_1217
	mov	edi, 0x1f
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	lea	rdi, [rdi]
	call	hash_initialize
	mov	qword ptr [r14 + 0x58], rax
	lea	rsi, [rsi]
	jmp	.label_1225
.label_1217:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_1225
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	cycle_check_init
	jmp	.label_1225
.label_1202:
	mov	rdi, r14
	call	restore_initial_cwd
.label_1215:
	test	eax, eax
	je	.label_1182
	call	__errno_location
	mov	rbp, rbp
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	rbp, rbp
	or	byte ptr [r14 + 0x49], 0x20
	mov	rbp, rbp
	jmp	.label_1182
.label_1209:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rsi, [rsi]
	lea	rbx, [r15 + 0x44]
	test	al, 4
	nop	
	jne	.label_1185
	mov	rbp, rbp
	test	ah, 2
	mov	ebp, dword ptr [r15 + 0x44]
	jne	.label_1199
	mov	edi, ebp
	call	fchdir
	mov	rsp, rsp
	test	eax, eax
	je	.label_1185
	nop	
	call	__errno_location
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_1185
.label_1230:
	mov	rbp, rbp
	mov	edi, dword ptr [r14 + 0x2c]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_1
	xor	eax, eax
	call	openat_safer
.label_1189:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_1221
	or	byte ptr [r15 + 0x72], 2
	lea	rdi, [rdi]
	jmp	.label_1190
.label_1221:
	call	__errno_location
	nop	
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_1190:
	mov	rbp, rbp
	mov	word ptr [r15 + 0x74], 3
.label_1192:
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	movzx	edx, byte ptr [rdx + rcx - 1]
	cmp	edx, 0x2f
	mov	rsp, rsp
	jne	.label_1228
	mov	rsp, rsp
	dec	rcx
.label_1228:
	lea	rdi, [rax + rcx + 1]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x2f
	mov	rsp, rsp
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	mov	rbp, rbp
	inc	rdx
	call	memmove
.label_1225:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	mov	rsp, rsp
	jne	.label_1184
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_1188
	cmp	rax, 2
	jne	.label_1196
	nop	
	mov	rbx, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_1198
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	mov	rbp, rbp
	jne	.label_1198
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	mov	rbp, rbp
	je	.label_1188
	mov	rsp, rsp
	cmp	rax, 0x58465342
	mov	rbp, rbp
	je	.label_1188
.label_1198:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	nop	
	call	fts_stat
	lea	rsi, [rsi]
	mov	word ptr [r15 + 0x70], ax
	lea	rsi, [rsi]
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_1184
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1188
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x68]
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	nop	
	jb	.label_1188
	dec	rax
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x68], rax
.label_1188:
	mov	rbp, rbp
	movzx	eax, word ptr [r15 + 0x70]
.label_1184:
	lea	rdi, [rdi]
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_1181
	cmp	qword ptr [r15 + 0x58], 0
	mov	rbp, rbp
	jne	.label_1235
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_1235:
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r15
	call	enter_dir
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	jne	.label_1181
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	nop	
	xor	r15d, r15d
	jmp	.label_1181
.label_1199:
	mov	rsp, rsp
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, ebp
	nop	
	jne	.label_1195
	cmp	esi, -0x64
	mov	rsp, rsp
	jne	.label_1196
.label_1195:
	mov	rsp, rsp
	lea	rdi, [r14 + 0x60]
	lea	rsi, [rsi]
	call	i_ring_push
	test	eax, eax
	js	.label_1207
	mov	edi, eax
	call	close
.label_1207:
	mov	rsp, rsp
	mov	dword ptr [r14 + 0x2c], ebp
.label_1185:
	mov	edi, dword ptr [rbx]
	call	close
.label_1182:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	mov	rsp, rsp
	je	.label_1213
	mov	eax, dword ptr [r15 + 0x40]
	lea	rsi, [rsi]
	cmp	eax, 0
	setne	cl
	lea	rdi, [rdi]
	movzx	ecx, cl
	or	ecx, 6
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	mov	word ptr [r15 + 0x70], cx
	mov	rsp, rsp
	jne	.label_1213
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	call	leave_dir
.label_1213:
	xor	eax, eax
	mov	rbp, rbp
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_1181:
	mov	rax, r15
	mov	rsp, rsp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_1196:
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412cf0

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_1239
	movups	xmm0, xmmword ptr [rsi + 0x78]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	mov	rsp, rsp
	call	hash_delete
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1240
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	add	rsp, 0x18
	ret	
.label_1239:
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 8]
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1238
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x58], 0
	nop	
	js	.label_1238
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	mov	rsp, rsp
	je	.label_1240
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x80]
	lea	rdi, [rdi]
	jne	.label_1238
	nop	
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	mov	rbp, rbp
	jne	.label_1238
	mov	rdx, qword ptr [rax + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_1238:
	lea	rdi, [rdi]
	add	rsp, 0x18
	ret	
.label_1240:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412db0

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x98
	mov	rsp, rsp
	mov	rbx, rcx
	lea	rsi, [rsi]
	mov	r13d, edx
	mov	r15, rdi
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_1250
	mov	rbp, rbp
	movzx	edx, byte ptr [rbx]
	lea	rsi, [rsi]
	mov	ecx, 0x2e
	lea	rsi, [rsi]
	mov	eax, 0x2e
	sub	eax, edx
	lea	rsi, [rsi]
	jne	.label_1242
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + 1]
	lea	rsi, [rsi]
	sub	ecx, eax
	lea	rsi, [rsi]
	mov	eax, ecx
	jne	.label_1242
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_1242:
	test	eax, eax
	lea	rsi, [rsi]
	sete	r14b
	lea	rdi, [rdi]
	jmp	.label_1259
.label_1250:
	xor	r14d, r14d
.label_1259:
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	mov	rsp, rsp
	jne	.label_1261
	nop	
	test	r13d, r13d
	jns	.label_1247
	mov	rbp, rbp
	mov	cl, r14b
	mov	rbp, rbp
	xor	cl, 1
	jne	.label_1251
	nop	
	mov	qword ptr [rsp + 0x90], rsi
	and	eax, 0x200
	mov	rbp, rbp
	je	.label_1241
	lea	rbp, [r15 + 0x60]
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	i_ring_empty
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	jne	.label_1241
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	mov	rsp, rsp
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
	nop	
	jmp	.label_1241
.label_1261:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_1245
	and	eax, 0x200
	je	.label_1245
	lea	rdi, [rdi]
	mov	edi, r13d
	mov	rsp, rsp
	call	close
	nop	
	jmp	.label_1245
.label_1247:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x90], rsi
	nop	
	jmp	.label_1241
.label_1251:
	mov	qword ptr [rsp + 0x90], rsi
.label_1241:
	test	r13d, r13d
	mov	rbp, rbp
	mov	r12d, r13d
	jns	.label_1254
	mov	rbp, rbp
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	mov	rsp, rsp
	or	edx, 0x90900
	nop	
	test	ah, 2
	mov	rbp, rbp
	jne	.label_1257
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	esi, edx
	call	open_safer
	mov	rbp, rbp
	jmp	.label_1246
.label_1257:
	mov	rbp, rbp
	mov	edi, dword ptr [r15 + 0x2c]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, rbx
	nop	
	call	openat_safer
.label_1246:
	mov	rbp, rbp
	mov	r12d, eax
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	test	r12d, r12d
	lea	rdi, [rdi]
	js	.label_1245
.label_1254:
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	nop	
	jne	.label_1253
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1255
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x2e
	jne	.label_1255
	movzx	ecx, byte ptr [rbx + 1]
	cmp	ecx, 0x2e
	jne	.label_1255
	cmp	byte ptr [rbx + 2], 0
	mov	rsp, rsp
	jne	.label_1255
.label_1253:
	lea	rdx, [rsp]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, r12d
	lea	rdi, [rdi]
	call	__fxstat
	test	eax, eax
	jne	.label_1244
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	jne	.label_1248
	nop	
	mov	rax, qword ptr [rcx + 0x80]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsp + 8]
	nop	
	jne	.label_1248
	mov	eax, dword ptr [r15 + 0x48]
.label_1255:
	mov	rbp, rbp
	test	ah, 2
	jne	.label_1252
	nop	
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	mov	rbp, rbp
	jmp	.label_1256
.label_1252:
	mov	esi, dword ptr [r15 + 0x2c]
	lea	rsi, [rsi]
	cmp	esi, r12d
	jne	.label_1258
	cmp	esi, -0x64
	jne	.label_1260
.label_1258:
	lea	rdi, [rdi]
	test	r14b, r14b
	je	.label_1262
	test	al, 4
	lea	rsi, [rsi]
	jne	.label_1249
	nop	
	test	esi, esi
	js	.label_1249
	mov	rbp, rbp
	mov	edi, esi
	jmp	.label_1243
.label_1248:
	nop	
	call	__errno_location
	mov	dword ptr [rax], 2
.label_1244:
	mov	ebp, 0xffffffff
.label_1256:
	test	r13d, r13d
	jns	.label_1245
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	nop	
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_1245
.label_1262:
	lea	rsi, [rsi]
	lea	rdi, [r15 + 0x60]
	lea	rsi, [rsi]
	call	i_ring_push
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_1249
	mov	edi, eax
.label_1243:
	mov	rsp, rsp
	call	close
.label_1249:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_1245:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	nop	
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1260:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413090

	.globl fts_build
	.type fts_build, @function
fts_build:
	nop	
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0xa8
	lea	rsi, [rsi]
	mov	r15d, esi
	lea	rdi, [rdi]
	mov	r13, rdi
	mov	qword ptr [rsp + 0x98], r13
	lea	rsi, [rsi]
	mov	r12, qword ptr [r13]
	nop	
	mov	qword ptr [rsp + 0x68], r12
	mov	rdi, qword ptr [r12 + 0x18]
	mov	rbp, rbp
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_1286
	mov	qword ptr [rsp + 0x38], rdi
	call	dirfd
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x5c], eax
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_1297
	mov	qword ptr [rsp + 0x50], -1
	nop	
	cmp	qword ptr [r13 + 0x40], 0
	nop	
	jne	.label_1300
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x50], rax
.label_1300:
	lea	rax, [r13 + 0x40]
	mov	qword ptr [rsp + 0x30], rax
	lea	rax, [r13 + 0x48]
	mov	qword ptr [rsp + 0x90], rax
	mov	al, 1
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x74], eax
	jmp	.label_1277
.label_1286:
	mov	qword ptr [rsp + 0x38], rdi
	mov	rsp, rsp
	mov	eax, dword ptr [r13 + 0x48]
	mov	ecx, eax
	mov	rsp, rsp
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	nop	
	cmp	ecx, 0x200
	mov	rsp, rsp
	jne	.label_1308
	mov	edi, dword ptr [r13 + 0x2c]
.label_1308:
	mov	rbp, rbp
	mov	rsi, qword ptr [r12 + 0x30]
	xor	edx, edx
	mov	rsp, rsp
	test	al, 0x10
	mov	rbp, rbp
	je	.label_1314
	nop	
	test	al, 1
	nop	
	je	.label_1315
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x58], 0
	mov	rbp, rbp
	je	.label_1314
.label_1315:
	lea	rdi, [rdi]
	mov	edx, 0x20000
.label_1314:
	nop	
	lea	rcx, [rsp + 0x5c]
	call	opendirat
	mov	qword ptr [r12 + 0x18], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1324
	nop	
	lea	rcx, [r13 + 0x48]
	lea	rdi, [rdi]
	movzx	eax, word ptr [r12 + 0x70]
	nop	
	cmp	eax, 0xb
	mov	rsp, rsp
	jne	.label_1292
	mov	qword ptr [rsp + 0x90], rcx
	xor	edx, edx
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rsi, [rsi]
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_1270
.label_1297:
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
.label_1324:
	mov	rsp, rsp
	xor	ebx, ebx
	cmp	r15d, 3
	jne	.label_1264
	lea	rsi, [rsi]
	mov	word ptr [r12 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	nop	
	mov	dword ptr [r12 + 0x40], eax
	xor	ebx, ebx
	jmp	.label_1264
.label_1292:
	mov	rbp, rbp
	test	byte ptr [rcx + 1], 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x90], rcx
	je	.label_1270
	mov	rdi, r13
	nop	
	mov	rsi, r12
	lea	rsi, [rsi]
	call	leave_dir
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, r12
	mov	rbp, rbp
	call	fts_stat
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r12
	mov	rsp, rsp
	call	enter_dir
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	je	.label_1281
.label_1270:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], -1
	lea	rdi, [rdi]
	cmp	qword ptr [r13 + 0x40], 0
	lea	rdi, [rdi]
	jne	.label_1285
	mov	eax, 0x186a0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rax
.label_1285:
	lea	rax, [r13 + 0x40]
	mov	qword ptr [rsp + 0x30], rax
	cmp	r15d, 2
	nop	
	je	.label_1289
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	rsp, rsp
	mov	eax, dword ptr [rax]
	nop	
	and	eax, 0x38
	cmp	eax, 0x18
	mov	rbp, rbp
	jne	.label_1280
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x88], 2
	jne	.label_1280
	mov	esi, dword ptr [rsp + 0x5c]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	filesystem_type
	cmp	rax, 0x9f9f
	nop	
	jle	.label_1299
	cmp	rax, 0x9fa0
	lea	rsi, [rsi]
	je	.label_1280
	mov	rbp, rbp
	mov	ecx, 0xff534d42
	mov	rsp, rsp
	cmp	rax, rcx
	je	.label_1280
	mov	rsp, rsp
	cmp	rax, 0x5346414f
	je	.label_1280
	lea	rsi, [rsi]
	jmp	.label_1289
.label_1281:
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	xor	ebx, ebx
	jmp	.label_1264
.label_1299:
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1280
	mov	rbp, rbp
	cmp	rax, 0x6969
	jne	.label_1289
.label_1280:
	cmp	r15d, 3
	nop	
	sete	bl
	mov	rbp, rbp
	mov	r14b, 1
	jmp	.label_1311
.label_1289:
	cmp	r15d, 3
	lea	rsi, [rsi]
	sete	bl
	mov	rbp, rbp
	mov	r14d, 0
	mov	rbp, rbp
	jne	.label_1313
.label_1311:
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], r15d
	mov	rax, qword ptr [rsp + 0x90]
	nop	
	test	byte ptr [rax + 1], 2
	mov	ebp, dword ptr [rsp + 0x5c]
	lea	rdi, [rdi]
	je	.label_1316
	nop	
	mov	esi, 0x406
	nop	
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebp
	call	rpl_fcntl
	mov	ebp, eax
	mov	dword ptr [rsp + 0x5c], ebp
.label_1316:
	nop	
	test	ebp, ebp
	nop	
	js	.label_1329
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	edx, ebp
	mov	rsp, rsp
	call	fts_safe_changedir
	test	eax, eax
	mov	rsp, rsp
	je	.label_1303
.label_1329:
	and	bl, r14b
	lea	rsi, [rsi]
	movzx	eax, bl
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_1337
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x40], eax
.label_1337:
	or	byte ptr [r12 + 0x72], 1
	mov	rdi, qword ptr [r12 + 0x18]
	lea	rsi, [rsi]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	test	ah, 2
	lea	rdi, [rdi]
	je	.label_1267
	mov	edi, dword ptr [rsp + 0x5c]
	test	edi, edi
	js	.label_1267
	call	close
.label_1267:
	mov	qword ptr [r12 + 0x18], 0
	mov	dword ptr [rsp + 0x74], 0
	jmp	.label_1275
.label_1313:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x74], 0
	nop	
	jmp	.label_1277
.label_1303:
	mov	rsp, rsp
	mov	al, 1
	mov	dword ptr [rsp + 0x74], eax
.label_1275:
	mov	r15d, dword ptr [rsp + 8]
.label_1277:
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [r12 + 0x48]
	mov	rbp, rbp
	movzx	eax, byte ptr [rax + rdx - 1]
	cmp	eax, 0x2f
	jne	.label_1283
	dec	rdx
.label_1283:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], r15d
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	test	byte ptr [rax], 4
	je	.label_1327
	mov	rax, qword ptr [r13 + 0x20]
	mov	rbp, rbp
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x28], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_1327:
	lea	rax, [rdx + 1]
	mov	qword ptr [rsp + 0x78], rax
	mov	rcx, qword ptr [r13 + 0x30]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x60], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x58]
	inc	rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	add	rdx, 0x102
	mov	qword ptr [rsp + 0x48], rdx
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rax
	mov	dword ptr [rsp + 0xc], 0
	xor	eax, eax
	lea	rdi, [rdi]
	xor	ebp, ebp
	xor	r15d, r15d
.label_1301:
	mov	rsp, rsp
	mov	rbx, qword ptr [r12 + 0x18]
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_1307
	mov	qword ptr [rsp + 0x88], rax
	mov	qword ptr [rsp + 0x18], rbp
	call	__errno_location
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], rax
	mov	rbp, qword ptr [rsp + 0x90]
	nop	word ptr cs:[rax + rax]
.label_1342:
	mov	rax, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	mov	rdi, rbx
	call	readdir
	lea	rsi, [rsi]
	mov	r14, rax
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_1321
	mov	rsp, rsp
	mov	r13, r14
	add	r13, 0x13
	nop	
	test	byte ptr [rbp], 0x20
	jne	.label_1326
	movzx	eax, byte ptr [r13]
	mov	rsp, rsp
	cmp	eax, 0x2e
	lea	rdi, [rdi]
	jne	.label_1326
	nop	
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	eax, 0x2e
	lea	rdi, [rdi]
	je	.label_1332
	test	al, al
	je	.label_1335
	lea	rsi, [rsi]
	jmp	.label_1326
	nop	word ptr cs:[rax + rax]
.label_1332:
	mov	rsp, rsp
	cmp	byte ptr [r14 + 0x15], 0
	lea	rsi, [rsi]
	jne	.label_1326
.label_1335:
	nop	
	mov	rbx, qword ptr [r12 + 0x18]
	test	rbx, rbx
	nop	
	jne	.label_1342
	jmp	.label_1265
	nop	word ptr cs:[rax + rax]
.label_1326:
	mov	rdi, r13
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	lea	rsi, [rsi]
	and	rdi, 0xfffffffffffffff8
	mov	rsp, rsp
	call	malloc
	mov	r12, rax
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_1273
	nop	
	mov	rdi, r12
	mov	rbp, rbp
	add	rdi, 0x108
	nop	
	mov	qword ptr [rsp + 0x20], rdi
	lea	rdi, [rdi]
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, rbx
	nop	
	call	memcpy
	mov	byte ptr [r12 + rbx + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbx
	mov	rbp, qword ptr [rsp + 0x98]
	mov	qword ptr [r12 + 0x50], rbp
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbp + 0x20]
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x38], r13
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x40], 0
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	rbp, rbp
	mov	word ptr [r12 + 0x74], 3
	mov	rbp, rbp
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	rax, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	cmp	rbx, rax
	mov	rbp, rbp
	jae	.label_1282
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	jmp	.label_1323
.label_1282:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x48]
	lea	rsi, [rax + rbx]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_1263
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_1298
	mov	rsp, rsp
	mov	qword ptr [rbp + 0x20], rax
	lea	rdi, [rdi]
	cmp	r13, rax
	lea	rsi, [rsi]
	je	.label_1306
	mov	rdx, qword ptr [rsp + 0x78]
	mov	rbp, rbp
	add	rax, rdx
	mov	rcx, qword ptr [rsp + 0x90]
	test	byte ptr [rcx], 4
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x28], rcx
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], rax
	mov	rbp, rbp
	jmp	.label_1325
.label_1306:
	mov	rdx, qword ptr [rsp + 0x78]
.label_1325:
	mov	rax, qword ptr [rbp + 0x30]
	sub	rax, rdx
.label_1323:
	mov	rsp, rsp
	add	rbx, rdx
	jb	.label_1318
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x60], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x78], rdx
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x58], rax
	mov	rbp, rbp
	mov	r13, rbp
	mov	rax, qword ptr [r13]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x48], rbx
	mov	rsp, rsp
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 0x80], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax], 4
	jne	.label_1320
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_1339
	nop	word ptr cs:[rax + rax]
.label_1320:
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	mov	rsp, rsp
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	call	memmove
.label_1339:
	mov	rax, qword ptr [rsp + 0x90]
	mov	edx, dword ptr [rax]
	nop	
	mov	rax, qword ptr [rsp + 0x30]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_1272
	mov	eax, edx
	mov	rsp, rsp
	and	eax, 0x400
	jne	.label_1272
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_1279
	nop	
.label_1272:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	lea	rsi, [rsi]
	mov	edx, 0
	lea	rdi, [rdi]
	jne	.label_1284
	nop	
	cmp	ecx, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
.label_1284:
	mov	word ptr [r12 + 0x70], 0xb
	mov	rsp, rsp
	lea	esi, [rcx - 1]
	mov	rsp, rsp
	cmp	esi, 0xb
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x18]
	ja	.label_1288
	mov	eax,  dword ptr [dword ptr [+ (rcx * 4) + label_1295]]
.label_1288:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	rsp, rsp
	mov	qword ptr [r12 + 0xa8], rax
.label_1279:
	mov	qword ptr [r12 + 0x10], 0
	test	r15, r15
	nop	
	mov	rax, r12
	je	.label_1317
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, r15
.label_1317:
	mov	rbp, rbp
	mov	r15, rax
	cmp	rbp, 0x2710
	jne	.label_1291
	mov	rax, qword ptr [rsp + 0x30]
	cmp	qword ptr [rax], 0
	nop	
	jne	.label_1291
	mov	esi, dword ptr [rsp + 0x5c]
	mov	rdi, qword ptr [rsp + 0x68]
	nop	
	call	filesystem_type
	mov	dword ptr [rsp + 0xc], 0
	cmp	rax, 0x6969
	mov	rbp, rbp
	je	.label_1291
	mov	rsp, rsp
	cmp	rax, 0x1021994
	je	.label_1291
	mov	ecx, 0xff534d42
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	je	.label_1291
	mov	rsp, rsp
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	nop	word ptr cs:[rax + rax]
.label_1291:
	mov	rbp, rbp
	inc	rbp
	cmp	qword ptr [rsp + 0x50], rbp
	mov	rbp, rbp
	mov	rax, r12
	mov	r12, qword ptr [rsp + 0x68]
	ja	.label_1301
	jmp	.label_1307
.label_1321:
	mov	rax, qword ptr [rsp + 0x80]
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_1328
	nop	
	mov	dword ptr [r12 + 0x40], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x38]
	or	rax, rbp
	mov	ax, 7
	mov	cx, 4
	mov	rbp, rbp
	cmovne	cx, ax
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x70], cx
.label_1328:
	mov	rdi, qword ptr [r12 + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x98]
	je	.label_1307
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	jmp	.label_1307
.label_1265:
	mov	r13, qword ptr [rsp + 0x98]
	mov	rbp, qword ptr [rsp + 0x18]
.label_1307:
	nop	
	mov	rax, qword ptr [rsp + 0x40]
	test	al, 1
	lea	rsi, [rsi]
	je	.label_1266
	mov	rcx, qword ptr [r13 + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0x20]
	lea	rdi, [rdi]
	jmp	.label_1268
	nop	word ptr cs:[rax + rax]
.label_1276:
	mov	qword ptr [rcx + 0x38], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
.label_1268:
	nop	
	test	rcx, rcx
	je	.label_1274
	mov	rdx, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_1276
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rdx
	mov	rsp, rsp
	jmp	.label_1276
.label_1274:
	cmp	qword ptr [r15 + 0x58], 0
	mov	rsp, rsp
	js	.label_1266
	mov	rcx, r15
	nop	word ptr cs:[rax + rax]
.label_1294:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	lea	rsi, [rsi]
	je	.label_1293
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rdx
.label_1293:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_1290
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 8]
.label_1290:
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + 0x58], 0
	mov	rbp, rbp
	mov	rcx, rdx
	jns	.label_1294
.label_1266:
	nop	
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax], 4
	mov	rbp, rbp
	je	.label_1296
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rsp + 0x78]
	cmp	rdx, qword ptr [r13 + 0x30]
	cmove	rcx, rax
	mov	rsp, rsp
	test	rbp, rbp
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_1296:
	cmp	qword ptr [rsp + 0x38], 0
	jne	.label_1302
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x74]
	nop	
	test	al, al
	je	.label_1302
	cmp	dword ptr [rsp + 8], 1
	je	.label_1304
	mov	rsp, rsp
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_1302
.label_1304:
	cmp	qword ptr [r12 + 0x58], 0
	je	.label_1309
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r12 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_7
	nop	
	mov	rdi, r13
	call	fts_safe_changedir
	jmp	.label_1312
.label_1309:
	mov	rdi, r13
	lea	rdi, [rdi]
	call	restore_initial_cwd
.label_1312:
	test	eax, eax
	je	.label_1302
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x70], 7
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	or	byte ptr [rax + 1], 0x20
	nop	
	xor	ebx, ebx
	lea	rdi, [rdi]
	test	r15, r15
	je	.label_1264
	xor	ebx, ebx
.label_1330:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_1322
	call	closedir
.label_1322:
	lea	rdi, [rdi]
	mov	rdi, r15
	call	free
	mov	rsp, rsp
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_1330
	mov	rbp, rbp
	jmp	.label_1264
.label_1302:
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_1334
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 1
	jne	.label_1310
	cmp	rbp, 2
	jb	.label_1338
	nop	
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_1340
	mov	rbp, rbp
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	fts_sort
	mov	rbx, rax
	mov	rbp, rbp
	jmp	.label_1264
.label_1334:
	cmp	dword ptr [rsp + 8], 3
	jne	.label_1269
	lea	rdi, [rdi]
	movzx	eax, word ptr [r12 + 0x70]
	cmp	eax, 4
	lea	rsi, [rsi]
	je	.label_1269
	movzx	eax, ax
	cmp	eax, 7
	lea	rdi, [rdi]
	je	.label_1269
	mov	word ptr [r12 + 0x70], 6
.label_1269:
	xor	ebx, ebx
	test	r15, r15
	je	.label_1264
	nop	
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1287:
	nop	
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	nop	
	je	.label_1278
	mov	rbp, rbp
	call	closedir
.label_1278:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	test	rbp, rbp
	mov	rsp, rsp
	mov	r15, rbp
	jne	.label_1287
	mov	rsp, rsp
	jmp	.label_1264
.label_1310:
	lea	rdi, [rdi]
	mov	rdx, rbp
	mov	r14, qword ptr [rsp + 0x30]
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:fts_compare_ino
	nop	
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	call	fts_sort
	mov	rbx, rax
	mov	qword ptr [r14], 0
	jmp	.label_1264
.label_1338:
	mov	rbx, r15
	nop	
	jmp	.label_1264
.label_1340:
	nop	
	mov	rbx, r15
	jmp	.label_1264
.label_1318:
	mov	rdi, r12
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	test	r15, r15
	mov	rbp, rbp
	je	.label_1336
	nop	word ptr cs:[rax + rax]
.label_1305:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x10]
	nop	
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1331
	call	closedir
.label_1331:
	nop	
	mov	rdi, r15
	call	free
	lea	rsi, [rsi]
	test	rbx, rbx
	nop	
	mov	r15, rbx
	mov	rsp, rsp
	jne	.label_1305
.label_1336:
	mov	rbx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	rsp, rsp
	mov	word ptr [rbx + 0x70], 7
	mov	rax, qword ptr [rsp + 0x90]
	or	byte ptr [rax + 1], 0x20
	mov	rax, qword ptr [rsp + 0x80]
	mov	dword ptr [rax], 0x24
	lea	rdi, [rdi]
	xor	ebx, ebx
	jmp	.label_1264
.label_1263:
	mov	rdi, r13
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x20], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x24
	jmp	.label_1319
.label_1298:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	rsp, rsp
	mov	qword ptr [rbp + 0x20], 0
.label_1319:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa0], r12
	mov	rbp, qword ptr [rsp + 0x90]
.label_1273:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x80]
	nop	
	mov	r14d, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	call	free
	test	r15, r15
	mov	r12, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	je	.label_1341
	nop	word ptr cs:[rax + rax]
.label_1271:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_1333
	lea	rdi, [rdi]
	call	closedir
.label_1333:
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	test	rbx, rbx
	mov	rsp, rsp
	mov	r15, rbx
	jne	.label_1271
.label_1341:
	mov	rbp, rbp
	mov	rdi, qword ptr [r12 + 0x18]
	mov	rsp, rsp
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x70], 7
	lea	rdi, [rdi]
	or	byte ptr [rbp + 1], 0x20
	mov	rax, qword ptr [rsp + 0x80]
	mov	dword ptr [rax], r14d
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_1264:
	mov	rbp, rbp
	mov	rax, rbx
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413ea0

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_1343
	nop	
	test	ah, 2
	lea	rsi, [rsi]
	jne	.label_1348
	mov	edi, dword ptr [rbx + 0x28]
	mov	rsp, rsp
	call	fchdir
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	setne	al
	jmp	.label_1345
.label_1343:
	xor	eax, eax
	jmp	.label_1345
.label_1348:
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	mov	rbp, rbp
	call	i_ring_push
	test	eax, eax
	mov	rbp, rbp
	js	.label_1346
	mov	rsp, rsp
	mov	edi, eax
	lea	rdi, [rdi]
	call	close
.label_1346:
	nop	
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	lea	rsi, [rsi]
	xor	eax, eax
.label_1345:
	mov	rsp, rsp
	movzx	ebp, al
	lea	rsi, [rsi]
	add	rbx, 0x60
	jmp	.label_1347
	nop	dword ptr [rax]
.label_1344:
	mov	edi, eax
	mov	rbp, rbp
	call	close
.label_1347:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	i_ring_empty
	mov	rsp, rsp
	test	al, al
	nop	
	jne	.label_1349
	mov	rdi, rbx
	call	i_ring_pop
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jns	.label_1344
	lea	rsi, [rsi]
	jmp	.label_1347
.label_1349:
	mov	eax, ebp
	mov	rbp, rbp
	add	rsp, 8
	nop	
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413f70

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rsp, rsp
	mov	rbp, rdi
	movzx	eax, word ptr [rbp + 0x48]
	test	ax, 0x102
	je	.label_1352
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	nop	
	je	.label_1354
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [r14 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], r14
	nop	
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rsp, rsp
	call	hash_insert
	mov	r15, rax
	lea	rsi, [rsi]
	mov	bpl, 1
	cmp	r15, rbx
	mov	rsp, rsp
	je	.label_1350
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	nop	
	test	r15, r15
	je	.label_1351
	nop	
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_1353
.label_1352:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsp, rsp
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	nop	
	mov	bpl, 1
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	je	.label_1350
	lea	rsi, [rsi]
	mov	qword ptr [r14], r14
.label_1353:
	nop	
	mov	word ptr [r14 + 0x70], 2
	lea	rsi, [rsi]
	jmp	.label_1350
.label_1354:
	xor	ebp, ebp
	jmp	.label_1350
.label_1351:
	xor	ebp, ebp
.label_1350:
	nop	
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
	#Procedure 0x414050

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	mov	rsp, rsp
	cmp	edx, 5
	jb	.label_1355
	nop	
	push	rax
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	mov	rbp, rbp
	add	rsp, 8
	ret	
.label_1355:
	mov	rsp, rsp
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414080
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	push	rax
	nop	
	mov	r12d, esi
	mov	rbp, rbp
	mov	r13, rdi
	nop	
	mov	eax, r12d
	or	eax, 0x1000
	cmp	eax, 0x1000
	lea	rsi, [rsi]
	jne	.label_1356
	mov	r15, qword ptr [r13]
	lea	rdi, [rdi]
	call	__errno_location
	mov	r14, rax
	lea	rdi, [rdi]
	mov	dword ptr [r14], 0
	mov	rsp, rsp
	xor	eax, eax
	nop	
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_1357
	movzx	ecx, word ptr [r15 + 0x70]
	mov	rbp, rbp
	xor	eax, eax
	cmp	ecx, 1
	je	.label_1364
	movzx	ecx, cx
	cmp	ecx, 9
	nop	
	jne	.label_1357
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_1357
.label_1356:
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x16
	mov	rsp, rsp
	xor	eax, eax
	nop	
	jmp	.label_1357
.label_1364:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	nop	
	je	.label_1368
	nop	word ptr cs:[rax + rax]
.label_1365:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_1370
	call	closedir
.label_1370:
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	mov	rbx, rbp
	jne	.label_1365
.label_1368:
	mov	ebx, 1
	lea	rsi, [rsi]
	cmp	r12d, 0x1000
	jne	.label_1363
	or	byte ptr [r13 + 0x49], 0x10
	mov	rsp, rsp
	mov	ebx, 2
.label_1363:
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x58], 0
	nop	
	jne	.label_1362
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x30]
	mov	rsp, rsp
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	je	.label_1362
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	lea	rdi, [rdi]
	jne	.label_1362
	mov	edx, eax
	and	edx, 0x10
	lea	rsi, [rsi]
	shl	edx, 0xd
	or	edx, 0x90900
	mov	rsp, rsp
	test	ah, 2
	jne	.label_1366
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str_1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, edx
	mov	rbp, rbp
	call	open_safer
	jmp	.label_1360
.label_1362:
	mov	rdi, r13
	mov	esi, ebx
	mov	rbp, rbp
	call	fts_build
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 8], rax
.label_1357:
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_1366:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_1
	xor	eax, eax
	call	openat_safer
.label_1360:
	mov	r15d, eax
	test	r15d, r15d
	mov	rbp, rbp
	js	.label_1372
	mov	rbp, rbp
	mov	rdi, r13
	mov	esi, ebx
	lea	rsi, [rsi]
	call	fts_build
	mov	rsp, rsp
	mov	qword ptr [r13 + 8], rax
	mov	rbp, rbp
	test	byte ptr [r13 + 0x49], 2
	jne	.label_1369
	nop	
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_1359
	lea	rdi, [rdi]
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	rsp, rsp
	mov	dword ptr [r14], ebx
	mov	rsp, rsp
	xor	eax, eax
	nop	
	jmp	.label_1357
.label_1372:
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 8], 0
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_1357
.label_1369:
	mov	esi, dword ptr [r13 + 0x2c]
	mov	rbp, rbp
	cmp	esi, r15d
	mov	rsp, rsp
	jne	.label_1358
	lea	rsi, [rsi]
	cmp	esi, -0x64
	jne	.label_1361
.label_1358:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	mov	rbp, rbp
	js	.label_1367
	mov	edi, eax
	mov	rbp, rbp
	call	close
.label_1367:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_1371
.label_1359:
	lea	rsi, [rsi]
	mov	edi, r15d
	call	close
.label_1371:
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_1357
.label_1361:
	mov	rbp, rbp
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4142e0

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	lea	rdi, [rdi]
	mov	rax, rdx
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414300

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	mov	rbp, rbp
	jne	.label_1373
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	mov	rsp, rsp
	ret	
.label_1373:
	mov	rsp, rsp
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414330

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x88
	mov	r15d, esi
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x50]
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	test	byte ptr [rbx + 0x49], 2
	je	.label_1376
	mov	rbp, qword ptr [rbx + 0x50]
	mov	rbp, rbp
	test	rbp, rbp
	jne	.label_1374
	xor	r12d, r12d
	lea	rsi, [rsi]
	mov	edi, 0xd
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_type_hash
	mov	ecx, OFFSET FLAT:dev_type_compare
	mov	r8d, OFFSET FLAT:free
	lea	rdi, [rdi]
	call	hash_initialize
	mov	rsp, rsp
	mov	rbp, rax
	mov	qword ptr [rbx + 0x50], rbp
	test	rbp, rbp
	lea	rdi, [rdi]
	mov	r14d, 0
	mov	rbp, rbp
	je	.label_1378
.label_1374:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	lea	rsi, [rsp]
	mov	rdi, rbp
	mov	rsp, rsp
	call	hash_lookup
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1375
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	jmp	.label_1376
.label_1375:
	mov	r12b, 1
	mov	r14, rbp
.label_1378:
	xor	eax, eax
	nop	
	test	r15d, r15d
	js	.label_1376
	lea	rsi, [rsp + 0x10]
	mov	edi, r15d
	mov	rbp, rbp
	call	fstatfs
	mov	ecx, eax
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	test	ecx, ecx
	jne	.label_1376
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_1377
	mov	edi, 0x10
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rax
	nop	
	test	rbp, rbp
	je	.label_1377
	mov	rax, qword ptr [r13 + 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rbp], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbp + 8], rax
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1379
	nop	
	cmp	rax, rbp
	lea	rsi, [rsi]
	je	.label_1377
	lea	rdi, [rdi]
	call	abort
.label_1379:
	mov	rdi, rbp
	call	free
.label_1377:
	mov	rax, qword ptr [rsp + 0x10]
.label_1376:
	lea	rsi, [rsi]
	add	rsp, 0x88
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4144a0

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	mov	rsp, rsp
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4144c0

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	lea	rdi, [rdi]
	sete	al
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4144d0

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	mov	rax, qword ptr [rdi]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	lea	rdi, [rdi]
	cmp	rcx, rax
	sbb	edx, edx
	lea	rdi, [rdi]
	and	edx, 1
	mov	rsp, rsp
	cmp	rax, rcx
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	cmovae	eax, edx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414510

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
	je	.label_1380
	nop	
	cmp	r15, -2
	jb	.label_1380
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_1380
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_1380:
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
	#Procedure 0x4145a0

	.globl read_file_system_list
	.type read_file_system_list, @function
read_file_system_list:
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x78
	mov	edi, OFFSET FLAT:.str_14
	mov	esi, OFFSET FLAT:.str.1_0
	call	fopen
	lea	rsi, [rsi]
	mov	r15, rax
	nop	
	mov	qword ptr [rsp + 0x38], r15
	mov	rsp, rsp
	test	r15, r15
	nop	
	je	.label_1397
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], 0
	nop	
	mov	qword ptr [rsp + 0x30], 0
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x50]
	lea	rsi, [rsp + 0x30]
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	rcx, r15
	call	__getdelim
	cmp	rax, -1
	je	.label_1390
	lea	rax, [rsp + 0x68]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rax
	lea	rbx, [rsp + 0x5f]
	lea	r14, [rsp + 0x74]
	lea	r12, [rsp + 0x70]
	nop	
	lea	r13, [rsp + 0x60]
	nop	word ptr [rax + rax]
.label_1393:
	mov	rdi, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp], r12
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.2_8
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, r13
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0x48]
	nop	
	lea	r8, [rsp + 0x58]
	lea	r9, [rsp + 0x2c]
	lea	rdi, [rdi]
	call	sscanf
	nop	
	or	eax, 4
	mov	rsp, rsp
	cmp	eax, 7
	mov	rbp, rbp
	jne	.label_1391
	movsxd	rdi, dword ptr [rsp + 0x74]
	lea	rsi, [rsi]
	add	rdi, qword ptr [rsp + 0x50]
	nop	
	mov	esi, OFFSET FLAT:.str.3_6
	call	strstr
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_1391
	mov	qword ptr [rsp], rbx
	mov	esi, OFFSET FLAT:.str.4_4
	mov	rsp, rsp
	xor	eax, eax
	mov	rdi, rbp
	lea	rdx, [rsp + 0x24]
	lea	rcx, [rsp + 0x64]
	lea	r8, [rsp + 0x4c]
	lea	r9, [rsp + 0x28]
	call	sscanf
	or	eax, 4
	lea	rsi, [rsi]
	cmp	eax, 5
	mov	rsp, rsp
	jne	.label_1391
	movsxd	rax, dword ptr [rsp + 0x2c]
	mov	rcx, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rsp + 0x74]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	byte ptr [rcx + rax], 0
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rsp + 0x64]
	lea	rdi, [rdi]
	mov	byte ptr [rbp + rax], 0
	movsxd	rax, dword ptr [rsp + 0x28]
	nop	
	mov	byte ptr [rbp + rax], 0
	mov	rsp, rsp
	movsxd	rdi, dword ptr [rsp + 0x4c]
	lea	rsi, [rsi]
	add	rdi, rbp
	nop	
	call	unescape_tab
	movsxd	rdi, dword ptr [rsp + 0x70]
	mov	rbp, rbp
	add	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	call	unescape_tab
	mov	rbp, rbp
	movsxd	rdi, dword ptr [rsp + 0x58]
	add	rdi, qword ptr [rsp + 0x50]
	call	unescape_tab
	lea	rsi, [rsi]
	mov	edi, 0x38
	call	xmalloc
	mov	r13, rax
	movsxd	rdi, dword ptr [rsp + 0x4c]
	add	rdi, rbp
	nop	
	call	xstrdup
	lea	rsi, [rsi]
	mov	qword ptr [r13], rax
	lea	rsi, [rsi]
	movsxd	rdi, dword ptr [rsp + 0x70]
	mov	rsp, rsp
	add	rdi, qword ptr [rsp + 0x50]
	call	xstrdup
	nop	
	mov	qword ptr [r13 + 8], rax
	movsxd	rdi, dword ptr [rsp + 0x58]
	add	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	call	xstrdup
	mov	qword ptr [r13 + 0x10], rax
	movsxd	rdi, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	add	rdi, rbp
	call	xstrdup
	mov	rsp, rsp
	mov	rbp, rax
	mov	qword ptr [r13 + 0x18], rbp
	mov	r12b, byte ptr [r13 + 0x28]
	lea	rsi, [rsi]
	or	r12b, 4
	mov	rbp, rbp
	mov	byte ptr [r13 + 0x28], r12b
	nop	
	mov	eax, dword ptr [rsp + 0x60]
	mov	ecx, dword ptr [rsp + 0x48]
	movzx	edx, cl
	mov	rbp, rbp
	mov	esi, eax
	mov	rbp, rbp
	shl	esi, 8
	lea	rsi, [rsi]
	and	esi, 0xfff00
	or	esi, edx
	mov	rsp, rsp
	and	ecx, 0xffffff00
	shl	rcx, 0xc
	lea	rsi, [rsi]
	and	eax, 0xfffff000
	shl	rax, 0x20
	or	rax, rcx
	mov	rbp, rbp
	or	rax, rsi
	mov	qword ptr [r13 + 0x20], rax
	mov	esi, OFFSET FLAT:.str.5_2
	mov	rdi, rbp
	mov	rsp, rsp
	call	strcmp
	mov	r14b, 1
	test	eax, eax
	mov	rsp, rsp
	mov	al, 1
	je	.label_1385
	mov	esi, OFFSET FLAT:.str.6_2
	mov	rdi, rbp
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	lea	rsi, [rsi]
	je	.label_1385
	nop	
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rdi, rbp
	nop	
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	al, 1
	je	.label_1385
	mov	esi, OFFSET FLAT:.str.8_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	rsp, rsp
	mov	al, 1
	je	.label_1385
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.9_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	nop	
	je	.label_1385
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rsp, rsp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	mov	rsp, rsp
	mov	al, 1
	je	.label_1385
	mov	esi, OFFSET FLAT:.str.11_2
	mov	rsp, rsp
	mov	rdi, rbp
	call	strcmp
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	mov	al, 1
	je	.label_1385
	mov	esi, OFFSET FLAT:.str.12_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1385
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.13_1
	mov	rsp, rsp
	mov	rdi, rbp
	nop	
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	mov	al, 1
	je	.label_1385
	mov	esi, OFFSET FLAT:.str.14_1
	mov	rdi, rbp
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	je	.label_1385
	mov	esi, OFFSET FLAT:.str.15_1
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	al, 1
	je	.label_1385
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.16_1
	mov	rbp, rbp
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	je	.label_1385
	mov	esi, OFFSET FLAT:.str.17_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	sete	al
	nop	
.label_1385:
	lea	rsi, [rsi]
	and	r12b, 0xfe
	or	r12b, al
	mov	byte ptr [r13 + 0x28], r12b
	nop	
	mov	r15, qword ptr [r13]
	mov	rsp, rsp
	mov	esi, 0x3a
	mov	rdi, r15
	call	strchr
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x40]
	jne	.label_1398
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2f
	jne	.label_1399
	movzx	eax, byte ptr [r15 + 1]
	cmp	eax, 0x2f
	jne	.label_1399
	mov	esi, OFFSET FLAT:.str.18_2
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strcmp
	nop	
	test	eax, eax
	je	.label_1398
	mov	esi, OFFSET FLAT:.str.19_1
	mov	rdi, rbp
	mov	rsp, rsp
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	je	.label_1398
.label_1399:
	mov	edi, OFFSET FLAT:.str.20_0
	mov	rbp, rbp
	mov	rsi, r15
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	sete	r14b
.label_1398:
	lea	rdi, [rdi]
	add	r14b, r14b
	and	r12b, 0xfd
	lea	rsi, [rsi]
	or	r12b, r14b
	lea	rdi, [rdi]
	mov	byte ptr [r13 + 0x28], r12b
	mov	qword ptr [rbx], r13
	add	r13, 0x30
	mov	qword ptr [rsp + 0x40], r13
	mov	r15, qword ptr [rsp + 0x38]
	lea	rbx, [rsp + 0x5f]
	lea	r14, [rsp + 0x74]
	nop	
	lea	r12, [rsp + 0x70]
	nop	
	lea	r13, [rsp + 0x60]
.label_1391:
	lea	rdi, [rdi]
	mov	edx, 0xa
	nop	
	lea	rdi, [rsp + 0x50]
	lea	rsi, [rsp + 0x30]
	mov	rcx, r15
	mov	rsp, rsp
	call	__getdelim
	cmp	rax, -1
	mov	rbp, rbp
	jne	.label_1393
	mov	rbp, rbp
	jmp	.label_1394
.label_1397:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.21_0
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_0
	call	setmntent
	lea	rdi, [rdi]
	mov	r14, rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], r14
	xor	eax, eax
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_1392
	lea	rsi, [rsi]
	lea	r13, [rsp + 0x68]
	mov	rdi, r14
	nop	
	call	getmntent
	mov	rbp, rax
	nop	
	test	rbp, rbp
	je	.label_1400
	nop	
.label_1396:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.22_0
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rbp, rbp
	call	hasmntopt
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rax
	lea	rdi, [rdi]
	mov	edi, 0x38
	nop	
	call	xmalloc
	nop	
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp]
	nop	
	call	xstrdup
	lea	rdi, [rdi]
	mov	qword ptr [rbx], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	call	xstrdup
	mov	qword ptr [rbx + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x10], 0
	nop	
	mov	rdi, qword ptr [rbp + 0x10]
	call	xstrdup
	mov	rbp, rbp
	mov	r12, rax
	mov	qword ptr [rbx + 0x18], r12
	lea	rdi, [rdi]
	mov	r14b, byte ptr [rbx + 0x28]
	or	r14b, 4
	nop	
	mov	byte ptr [rbx + 0x28], r14b
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.5_2
	mov	rdi, r12
	mov	rbp, rbp
	call	strcmp
	mov	rbp, rbp
	mov	r15b, 1
	test	eax, eax
	lea	rdi, [rdi]
	mov	bpl, 1
	je	.label_1382
	nop	
	mov	esi, OFFSET FLAT:.str.6_2
	mov	rdi, r12
	lea	rdi, [rdi]
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	bpl, 1
	mov	rbp, rbp
	je	.label_1382
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_1
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsp, rsp
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	mov	bpl, 1
	lea	rdi, [rdi]
	je	.label_1382
	mov	esi, OFFSET FLAT:.str.8_2
	mov	rbp, rbp
	mov	rdi, r12
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	mov	bpl, 1
	mov	rbp, rbp
	je	.label_1382
	mov	esi, OFFSET FLAT:.str.9_2
	mov	rdi, r12
	nop	
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_1382
	nop	
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rdi, r12
	nop	
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	bpl, 1
	lea	rsi, [rsi]
	je	.label_1382
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.11_2
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	mov	bpl, 1
	je	.label_1382
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.12_2
	mov	rdi, r12
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	lea	rdi, [rdi]
	je	.label_1382
	mov	esi, OFFSET FLAT:.str.13_1
	mov	rdi, r12
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	lea	rdi, [rdi]
	mov	bpl, 1
	mov	rsp, rsp
	je	.label_1382
	mov	esi, OFFSET FLAT:.str.14_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_1382
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.15_1
	nop	
	mov	rdi, r12
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	bpl, 1
	mov	rsp, rsp
	je	.label_1382
	mov	esi, OFFSET FLAT:.str.16_1
	mov	rdi, r12
	nop	
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	mov	bpl, 1
	je	.label_1382
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x38], 0
	nop	
	sete	bpl
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.17_2
	mov	rdi, r12
	mov	rsp, rsp
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1382
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_1382:
	and	r14b, 0xfe
	lea	rsi, [rsi]
	or	r14b, bpl
	mov	byte ptr [rbx + 0x28], r14b
	mov	rbp, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	esi, 0x3a
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strchr
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_1388
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp]
	mov	rbp, rbp
	cmp	eax, 0x2f
	mov	rsp, rsp
	jne	.label_1389
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp + 1]
	cmp	eax, 0x2f
	mov	rbp, rbp
	jne	.label_1389
	mov	esi, OFFSET FLAT:.str.18_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1388
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.19_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1388
	nop	word ptr cs:[rax + rax]
.label_1389:
	nop	
	mov	edi, OFFSET FLAT:.str.20_0
	nop	
	mov	rsi, rbp
	call	strcmp
	test	eax, eax
	sete	r15b
.label_1388:
	add	r15b, r15b
	mov	rsp, rsp
	and	r14b, 0xfd
	mov	rsp, rsp
	or	r14b, r15b
	mov	byte ptr [rbx + 0x28], r14b
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x20], -1
	mov	rbp, rbp
	mov	qword ptr [r13], rbx
	lea	rsi, [rsi]
	add	rbx, 0x30
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x40]
	mov	rdi, r14
	lea	rdi, [rdi]
	call	getmntent
	mov	rsp, rsp
	mov	rbp, rax
	nop	
	test	rbp, rbp
	mov	r13, rbx
	mov	rbp, rbp
	jne	.label_1396
	nop	
	jmp	.label_1383
.label_1390:
	lea	rax, [rsp + 0x68]
	mov	qword ptr [rsp + 0x40], rax
.label_1394:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	byte ptr [r15], 0x20
	lea	rdi, [rdi]
	jne	.label_1384
	mov	rdi, r15
	call	rpl_fclose
	cmp	eax, -1
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x40]
	jne	.label_1386
	mov	rbp, rbp
	jmp	.label_1387
.label_1384:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	r14d, dword ptr [rbp]
	mov	rdi, r15
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x40]
	jmp	.label_1387
.label_1400:
	lea	rdi, [rdi]
	mov	rbx, r13
.label_1383:
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	call	endmntent
	nop	
	test	eax, eax
	nop	
	je	.label_1387
.label_1386:
	mov	qword ptr [rbx], 0
	mov	rax, qword ptr [rsp + 0x68]
	jmp	.label_1392
.label_1387:
	call	__errno_location
	mov	r15, rax
	lea	rsi, [rsi]
	mov	r14d, dword ptr [r15]
	mov	qword ptr [rbx], 0
	mov	rbx, qword ptr [rsp + 0x68]
	test	rbx, rbx
	je	.label_1395
	nop	dword ptr [rax + rax]
.label_1381:
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	mov	rbp, qword ptr [rbx + 0x30]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 8]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	nop	
	test	byte ptr [rbx + 0x28], 4
	lea	rdi, [rdi]
	je	.label_1401
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
.label_1401:
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x68], rbp
	test	rbp, rbp
	mov	rbp, rbp
	mov	rbx, rbp
	jne	.label_1381
.label_1395:
	mov	dword ptr [r15], r14d
	xor	eax, eax
.label_1392:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414f40

	.globl unescape_tab
	.type unescape_tab, @function
unescape_tab:
	push	r14
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	r14, rdi
	call	strlen
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	je	.label_1403
	mov	rdx, r14
	nop	word ptr cs:[rax + rax]
.label_1405:
	nop	
	mov	r9b, byte ptr [r14 + rcx]
	lea	rsi, [rcx + 4]
	lea	rdi, [rdi]
	cmp	rsi, rax
	mov	rsp, rsp
	jae	.label_1402
	nop	
	movzx	esi, r9b
	mov	rsp, rsp
	cmp	esi, 0x5c
	mov	rsp, rsp
	jne	.label_1402
	mov	sil, byte ptr [rcx + r14 + 1]
	lea	rdi, [rdi]
	mov	bl, sil
	nop	
	and	bl, 0xfc
	lea	rsi, [rsi]
	movzx	edi, bl
	lea	rsi, [rsi]
	cmp	edi, 0x30
	jne	.label_1402
	lea	rsi, [rsi]
	mov	dil, byte ptr [rcx + r14 + 2]
	nop	
	mov	bl, dil
	nop	
	and	bl, 0xf8
	nop	
	movzx	ebx, bl
	cmp	ebx, 0x30
	jne	.label_1402
	lea	rsi, [rsi]
	mov	r8b, byte ptr [r14 + rcx + 3]
	mov	rsp, rsp
	mov	bl, r8b
	lea	rsi, [rsi]
	and	bl, 0xf8
	movzx	ebx, bl
	cmp	ebx, 0x30
	lea	rsi, [rsi]
	jne	.label_1402
	add	rcx, 3
	shl	sil, 6
	lea	rdi, [rdi]
	shl	dil, 3
	lea	rsi, [rsi]
	add	dil, sil
	lea	rsi, [rsi]
	add	dil, r8b
	add	dil, 0x50
	mov	byte ptr [rdx], dil
	jmp	.label_1404
	nop	word ptr cs:[rax + rax]
.label_1402:
	mov	byte ptr [rdx], r9b
.label_1404:
	lea	rsi, [rsi]
	inc	rcx
	inc	rdx
	lea	rsi, [rsi]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jb	.label_1405
.label_1403:
	add	rsp, 8
	pop	rbx
	pop	r14
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415050

	.globl free_mount_entry
	.type free_mount_entry, @function
free_mount_entry:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	test	byte ptr [rbx + 0x28], 4
	je	.label_1406
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
.label_1406:
	mov	rdi, rbx
	lea	rdi, [rdi]
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4150a0
	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:

	nop
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + 0x38]
	shr	rcx, 0x15
	nop	
	and	cl, 0x10
	and	al, 0x6f
	mov	rbp, rbp
	or	al, cl
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	nop	
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	nop	
	mov	rdi, rdx
	mov	rdx, r8
	lea	rdi, [rdi]
	call	re_compile_internal
	test	eax, eax
	je	.label_1407
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	mov	rbp, rbp
	jmp	dcgettext
.label_1407:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x415110

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0xf8
	nop	
	mov	qword ptr [rsp + 0xc8], rcx
	nop	
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	nop	
	mov	dword ptr [rsp + 0x14], 0
	mov	rbp, rbp
	mov	al, byte ptr [r15 + 0x38]
	mov	qword ptr [r15 + 0x18], rcx
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], 0
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x30], 0
	and	al, 0x90
	mov	byte ptr [r15 + 0x38], al
	mov	rsp, rsp
	mov	r12, qword ptr [r15]
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 8], 0xe7
	mov	rsp, rsp
	jbe	.label_1512
.label_1527:
	mov	qword ptr [r15 + 0x10], 0xe8
	pxor	xmm0, xmm0
	lea	rdi, [rdi]
	movdqu	xmmword ptr [r12 + 0xd0], xmm0
	movdqu	xmmword ptr [r12 + 0xc0], xmm0
	movdqu	xmmword ptr [r12 + 0xb0], xmm0
	lea	rdi, [rdi]
	movdqu	xmmword ptr [r12 + 0xa0], xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r12 + 0x90], xmm0
	nop	
	movdqu	xmmword ptr [r12 + 0x80], xmm0
	movdqu	xmmword ptr [r12 + 0x70], xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [r12 + 0x60], xmm0
	nop	
	movdqu	xmmword ptr [r12 + 0x50], xmm0
	movdqu	xmmword ptr [r12 + 0x40], xmm0
	movdqu	xmmword ptr [r12 + 0x30], xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [r12 + 0x20], xmm0
	movdqu	xmmword ptr [r12 + 0x10], xmm0
	movdqu	xmmword ptr [r12], xmm0
	mov	qword ptr [r12 + 0xe0], 0
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x80], 0xf
	mov	rbp, rbp
	movabs	rax, 0x555555555555554
	cmp	r13, rax
	ja	.label_1463
	lea	rdi, [r13 + 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [r12 + 8], rdi
	shl	rdi, 4
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	dword ptr [rax + rax]
.label_1516:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	lea	rdi, [rdi]
	cmp	rbx, r13
	nop	
	jbe	.label_1516
	lea	rsi, [rsi]
	mov	edi, 0x18
	mov	rsi, rbx
	mov	rbp, rbp
	call	rpl_calloc
	mov	qword ptr [r12 + 0x40], rax
	lea	rdi, [rdi]
	dec	rbx
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x88], rbx
	nop	
	call	__ctype_get_mb_cur_max
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	mov	rbp, rbp
	movzx	ecx, cl
	cmp	ecx, 0x75
	mov	rsp, rsp
	jne	.label_1508
	nop	
	mov	cl, byte ptr [rax + 1]
	lea	rdi, [rdi]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x74
	mov	rbp, rbp
	jne	.label_1508
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 2]
	lea	rsi, [rsi]
	or	cl, 0x20
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, 0x66
	mov	rsp, rsp
	jne	.label_1508
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	lea	rdi, [rdi]
	sete	cl
	nop	
	movzx	ecx, cl
	movzx	edx, byte ptr [rax + rcx + 3]
	cmp	edx, 0x38
	jne	.label_1508
	nop	
	cmp	byte ptr [rax + rcx + 4], 0
	lea	rsi, [rsi]
	jne	.label_1508
	or	byte ptr [r12 + 0xb0], 4
.label_1508:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_1454
	lea	rsi, [rsi]
	test	al, 4
	lea	rsi, [rsi]
	jne	.label_1544
	mov	edi, 0x20
	mov	rsp, rsp
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	nop	
	xor	ebx, ebx
	test	rax, rax
	mov	rsp, rsp
	je	.label_1463
	lea	rdi, [rdi]
	xor	ebp, ebp
	nop	
.label_1559:
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	lea	rdi, [rdi]
	je	.label_1553
	mov	edx, 1
	nop	
	mov	cl, bl
	shl	rdx, cl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_1553:
	mov	rsp, rsp
	cmp	ebx, 0x7f
	lea	rsi, [rsi]
	ja	.label_1555
	nop	
	cmp	ebx, eax
	mov	rsp, rsp
	je	.label_1555
	or	byte ptr [r12 + 0xb0], 8
.label_1555:
	inc	rbx
	mov	rbp, rbp
	cmp	rbx, 0x40
	lea	rdi, [rdi]
	jne	.label_1559
	nop	
	mov	qword ptr [rsp + 0xd0], r15
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1422:
	mov	rsp, rsp
	lea	r15, [rbp + 0x40]
	mov	edi, r15d
	mov	rsp, rsp
	call	btowc
	cmp	eax, -1
	je	.label_1411
	lea	rdi, [rdi]
	mov	edx, 1
	mov	cl, bpl
	mov	rsp, rsp
	shl	rdx, cl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x78]
	mov	rbp, rbp
	or	qword ptr [rcx + 8], rdx
.label_1411:
	lea	rsi, [rsi]
	cmp	r15d, eax
	mov	rbp, rbp
	je	.label_1417
	or	byte ptr [r12 + 0xb0], 8
.label_1417:
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, 0x40
	jne	.label_1422
	xor	ebp, ebp
	mov	r15, qword ptr [rsp + 0xd0]
	nop	word ptr cs:[rax + rax]
.label_1436:
	mov	rsp, rsp
	lea	edi, [rbx + 0x80]
	call	btowc
	cmp	eax, -1
	lea	rsi, [rsi]
	je	.label_1529
	mov	eax, 1
	lea	rdi, [rdi]
	mov	cl, bl
	mov	rsp, rsp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	mov	rsp, rsp
	or	qword ptr [rcx + 0x10], rax
.label_1529:
	mov	rbp, rbp
	inc	rbx
	mov	rsp, rsp
	cmp	rbx, 0x40
	jne	.label_1436
	nop	word ptr cs:[rax + rax]
.label_1451:
	lea	rdi, [rdi]
	lea	edi, [rbp + 0xc0]
	mov	rsp, rsp
	call	btowc
	lea	rsi, [rsi]
	cmp	eax, -1
	je	.label_1445
	mov	eax, 1
	mov	cl, bpl
	nop	
	shl	rax, cl
	mov	rsp, rsp
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_1445:
	mov	rbp, rbp
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, 0x40
	jne	.label_1451
	jmp	.label_1454
.label_1544:
	mov	qword ptr [word ptr [r12 + 120]], OFFSET FLAT:utf8_sb_map
.label_1454:
	cmp	qword ptr [r12], 0
	je	.label_1463
	cmp	qword ptr [r12 + 0x40], 0
	nop	
	je	.label_1463
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], 0
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0xc8]
	and	ecx, 0x400000
	nop	
	mov	qword ptr [rsp + 0xc0], rcx
	mov	rsp, rsp
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xa0], xmm0
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rsp + 0x90], xmm0
	movdqa	xmmword ptr [rsp + 0x80], xmm0
	mov	rbp, rbp
	movdqa	xmmword ptr [rsp + 0x70], xmm0
	movdqa	xmmword ptr [rsp + 0x60], xmm0
	movdqa	xmmword ptr [rsp + 0x50], xmm0
	movdqa	xmmword ptr [rsp + 0x40], xmm0
	movdqa	xmmword ptr [rsp + 0x30], xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xb0], 0
	mov	qword ptr [rsp + 0x20], r14
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x78], r13
	mov	qword ptr [rsp + 0x70], r13
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x98], rbx
	mov	rax, rcx
	nop	
	shr	rax, 0x16
	mov	byte ptr [rsp + 0xa8], al
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rbp, rbp
	or	rax, rbx
	setne	bpl
	setne	byte ptr [rsp + 0xab]
	lea	rsi, [rsi]
	mov	edx, dword ptr [r12 + 0xb4]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], edx
	lea	rsi, [rsi]
	mov	al, byte ptr [r12 + 0xb0]
	shr	al, 2
	nop	
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xa9], al
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0xb0]
	lea	rsi, [rsi]
	mov	al, cl
	mov	rbp, rbp
	shr	al, 3
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rsp + 0xaa], al
	mov	qword ptr [rsp + 0x88], r13
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x80], r13
	mov	rsp, rsp
	xor	eax, eax
	test	r13, r13
	jle	.label_1465
	mov	rsp, rsp
	cmp	edx, 2
	lea	rsi, [rsi]
	jl	.label_1511
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], r15
	mov	r15d, 0xc
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	movabs	rcx, 0x1fffffffffffffff
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	ja	.label_1408
	lea	rsi, [rax*4]
	xor	edi, edi
	nop	
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	je	.label_1408
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0xd0]
.label_1511:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_1526
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xd0], r15
	xor	edi, edi
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x18]
	nop	
	call	realloc
	mov	r15d, 0xc
	nop	
	test	rax, rax
	je	.label_1408
	mov	qword ptr [rsp + 0x28], rax
	mov	r15, qword ptr [rsp + 0xd0]
.label_1526:
	nop	
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x60], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	nop	
	jmp	.label_1531
.label_1463:
	mov	dword ptr [rsp + 0x14], 0xc
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsp, rsp
	call	free_dfa_content
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, 0xc
	jmp	.label_1477
.label_1465:
	shr	rcx, 0x20
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdx
.label_1531:
	mov	rsp, rsp
	test	bpl, bpl
	lea	rdi, [rdi]
	cmove	rax, r14
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	cmp	qword ptr [rsp + 0xc0], 0
	lea	rdi, [rdi]
	je	.label_1431
	lea	rsi, [rsi]
	cmp	ecx, 2
	jl	.label_1470
	mov	qword ptr [rsp + 0xd0], r15
	mov	rbp, rbp
	lea	rdi, [rsp + 0x20]
	mov	rbp, rbp
	call	build_wcs_upper_buffer
	lea	rdi, [rdi]
	mov	r15d, eax
	test	r15d, r15d
	lea	rsi, [rsi]
	jne	.label_1408
	lea	r14, [rsp + 0x20]
.label_1442:
	cmp	qword ptr [rsp + 0x58], r13
	jge	.label_1453
	mov	rbp, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	cmp	rbp, rax
	mov	rbp, rbp
	jg	.label_1453
	lea	rbx, [rbp + rbp]
	cmp	dword ptr [rsp + 0xb0], 2
	lea	rdi, [rdi]
	jl	.label_1421
	nop	
	mov	r15d, 0xc
	mov	rsp, rsp
	movabs	rax, 0x1fffffffffffffff
	cmp	rbx, rax
	ja	.label_1408
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rbp*8]
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1408
	nop	
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1421
	shl	rbp, 4
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rsp, rsp
	call	realloc
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1408
	mov	qword ptr [rsp + 0x38], rax
.label_1421:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xab], 0
	je	.label_1432
	mov	rdi, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	realloc
	lea	rsi, [rsi]
	mov	r15d, 0xc
	test	rax, rax
	je	.label_1408
	mov	qword ptr [rsp + 0x28], rax
.label_1432:
	mov	qword ptr [rsp + 0x60], rbx
	mov	rdi, r14
	nop	
	call	build_wcs_upper_buffer
	mov	rsp, rsp
	mov	r15d, eax
	mov	rsp, rsp
	test	r15d, r15d
	je	.label_1442
.label_1408:
	mov	dword ptr [rsp + 0x14], r15d
	jmp	.label_1444
.label_1431:
	mov	rbp, rbp
	cmp	ecx, 2
	jl	.label_1446
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], r15
	nop	
	lea	rdi, [rsp + 0x20]
	lea	rsi, [rsi]
	call	build_wcs_buffer
	lea	rdi, [rdi]
	jmp	.label_1453
.label_1470:
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	cmp	rax, r13
	cmovg	rax, r13
	lea	rdi, [rdi]
	mov	r13, rax
	lea	rsi, [rsi]
	xor	eax, eax
	test	r13, r13
	nop	
	jle	.label_1456
	mov	rbp, rbp
	xor	eax, eax
	mov	ebp, 1
	mov	rsp, rsp
	jmp	.label_1466
	nop	word ptr cs:[rax + rax]
.label_1484:
	mov	r14, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x98]
	inc	rbp
.label_1466:
	add	r14, rax
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp + r14 - 1]
	movzx	ecx, al
	mov	rsp, rsp
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_1475
.label_1490:
	mov	rsp, rsp
	movzx	ebx, al
	lea	rsi, [rsi]
	lea	eax, [rbx + 0x80]
	mov	rsp, rsp
	cmp	eax, 0x17f
	ja	.label_1521
	mov	rbp, rbp
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	ebx, dword ptr [rax + rbx*4]
.label_1521:
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r13
	jl	.label_1484
	jmp	.label_1488
.label_1475:
	mov	al, byte ptr [rbx + rcx]
	mov	rbp, rbp
	jmp	.label_1490
.label_1446:
	test	rbx, rbx
	je	.label_1491
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, r13
	mov	rbp, rbp
	cmovg	rcx, r13
	mov	rdi, rcx
	xor	ecx, ecx
	test	rdi, rdi
	mov	rbp, rbp
	jle	.label_1493
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [r14]
	nop	
	mov	cl, byte ptr [rbx + rcx]
	mov	byte ptr [rax], cl
	mov	ecx, 1
	lea	rsi, [rsi]
	cmp	rdi, 2
	nop	
	jl	.label_1493
	nop	dword ptr [rax + rax]
.label_1500:
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x28]
	add	rax, qword ptr [rsp + 0x48]
	movzx	eax, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x98]
	mov	al, byte ptr [rsi + rax]
	mov	byte ptr [rdx + rcx], al
	lea	rsi, [rsi]
	inc	rcx
	cmp	rcx, rdi
	nop	
	jl	.label_1500
	lea	rsi, [rsi]
	mov	rcx, rdi
.label_1493:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], r15
	mov	qword ptr [rsp + 0x50], rcx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	jmp	.label_1453
.label_1512:
	mov	esi, 0xe8
	mov	rdi, r12
	call	realloc
	mov	r12, rax
	mov	eax, 0xc
	lea	rdi, [rdi]
	test	r12, r12
	mov	rbp, rbp
	je	.label_1477
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_1527
.label_1488:
	mov	rsp, rsp
	mov	rax, r13
.label_1456:
	mov	qword ptr [rsp + 0xd0], r15
	jmp	.label_1518
.label_1491:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xd0], r15
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
.label_1518:
	nop	
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x58], rax
.label_1453:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x14], 0
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0xd0]
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x30], 0
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15]
	nop	
	mov	rbp, qword ptr [rsp + 0xc8]
	nop	
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rsi, [rsi]
	or	rdx, 0x800000
	mov	rsp, rsp
	lea	r14, [rsp + 0xe0]
	mov	rsp, rsp
	lea	r13, [rsp + 0x20]
	mov	rdi, r14
	mov	rsi, r13
	call	peek_token
	mov	rbp, rbp
	cdqe	
	add	qword ptr [rsp + 0x68], rax
	lea	r9, [rsp + 0x14]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, r14
	mov	rsp, rsp
	mov	rcx, rbp
	call	parse_reg_exp
	nop	
	mov	r14, rax
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_1538
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x14]
	test	eax, eax
	jne	.label_1562
.label_1538:
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	mov	rbp, rbp
	je	.label_1542
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x70]
.label_1550:
	nop	
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	rbp, rbp
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	lea	rdi, [rdi]
	mov	dword ptr [rax + rcx + 0x38], 2
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	nop	
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1547:
	test	r14, r14
	mov	rbp, rbp
	mov	rcx, rbp
	lea	rdi, [rdi]
	je	.label_1554
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbx + 0x80]
	lea	rsi, [rsi]
	cmp	ecx, 0xf
	lea	rdi, [rdi]
	je	.label_1558
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x70]
.label_1514:
	lea	rsi, [rsi]
	lea	edx, [rcx + 1]
	mov	dword ptr [rbx + 0x80], edx
	mov	rsp, rsp
	movsxd	rdx, ecx
	shl	rdx, 6
	lea	rcx, [rax + rdx + 8]
	mov	qword ptr [rax + rdx + 8], 0
	mov	rbp, rbp
	mov	qword ptr [rax + rdx + 0x10], r14
	mov	qword ptr [rax + rdx + 0x18], rbp
	mov	rbp, rbp
	mov	dword ptr [rax + rdx + 0x38], 0x10
	mov	rsp, rsp
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rdx + 0x20], xmm0
	mov	qword ptr [rax + rdx + 0x40], -1
	lea	rsi, [rsi]
	mov	qword ptr [r14], rcx
	lea	rsi, [rsi]
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_1427
	mov	qword ptr [rbp], rcx
.label_1554:
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_1427
	test	rcx, rcx
	je	.label_1427
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x68], rcx
	nop	
	mov	r15, qword ptr [r15]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 8]
	shl	rdi, 3
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [r15 + 0x18], rax
	nop	
	mov	rdi, qword ptr [r15 + 8]
	shl	rdi, 3
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x20], rax
	mov	rax, qword ptr [r15 + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	lea	rsi, [rsi]
	call	malloc
	nop	
	mov	qword ptr [r15 + 0x28], rax
	mov	rax, qword ptr [r15 + 8]
	shl	rax, 3
	lea	rdi, [rdi]
	lea	rdi, [rax + rax*2]
	call	malloc
	nop	
	mov	qword ptr [r15 + 0x30], rax
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_1447
	cmp	qword ptr [r15 + 0x20], 0
	nop	
	je	.label_1450
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_1497
	mov	rax, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	test	rax, rax
	je	.label_1458
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xd0]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + 0x30]
	lea	rdi, [rbx*8]
	mov	rsp, rsp
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0xe0], rax
	test	rax, rax
	je	.label_1469
	test	rbx, rbx
	je	.label_1472
	mov	rcx, qword ptr [rsp + 0xd0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x30]
	cmp	rcx, 1
	mov	rsp, rsp
	mov	edx, 1
	cmova	rdx, rcx
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	cmp	rdx, 4
	lea	rsi, [rsi]
	jb	.label_1474
	mov	rsp, rsp
	xor	edi, edi
	mov	rsi, rdx
	lea	rsi, [rsi]
	and	rsi, 0xfffffffffffffffc
	je	.label_1474
	cmp	rcx, 1
	lea	rsi, [rsi]
	mov	ebp, 1
	cmova	rbp, rcx
	lea	rsi, [rsi]
	add	rbp, -4
	mov	rbx, rbp
	nop	
	shr	rbx, 2
	mov	rbp, rbp
	xor	edi, edi
	bt	rbp, 2
	nop	
	jb	.label_1487
	lea	rsi, [rsi]
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	mov	rsp, rsp
	movdqu	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_1494]]
	nop	
	movdqu	xmmword ptr [rax + 0x10], xmm0
	mov	edi, 4
.label_1487:
	mov	rbp, rbp
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_1498
	mov	rsp, rsp
	mov	ebp, 1
	movq	xmm0, rbp
	pslldq	xmm0, 8
	lea	rsi, [rsi]
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_1494]]
.label_1505:
	movq	xmm2, rdi
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	mov	rsp, rsp
	paddq	xmm2, xmm1
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	lea	rdi, [rdi]
	lea	rbp, [rdi + 4]
	nop	
	movq	xmm2, rbp
	lea	rdi, [rdi]
	pshufd	xmm2, xmm2, 0x44
	nop	
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	mov	rbp, rbp
	paddq	xmm2, xmm1
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rdi*8 + 0x20], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x30], xmm2
	add	rdi, 8
	cmp	rdi, rsi
	mov	rbp, rbp
	jne	.label_1505
.label_1498:
	mov	rbp, rbp
	cmp	rdx, rsi
	mov	rdi, rsi
	mov	rsp, rsp
	je	.label_1472
	nop	dword ptr [rax + rax]
.label_1474:
	mov	qword ptr [rax + rdi*8], rdi
	inc	rdi
	cmp	rdi, rcx
	jb	.label_1474
.label_1472:
	mov	rbx, qword ptr [r15 + 0x68]
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	mov	rsi, rbx
	call	optimize_subexps
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	jne	.label_1525
.label_1517:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	mov	eax, 0
	jne	.label_1492
	nop	dword ptr [rax + rax]
.label_1530:
	mov	rsp, rsp
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	cmp	rbp, rcx
	je	.label_1528
	test	rbp, rbp
	jne	.label_1492
.label_1528:
	mov	rbx, qword ptr [rax]
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_1530
	jmp	.label_1525
.label_1492:
	mov	rdi, r15
	mov	rsi, rbp
	mov	rsp, rsp
	call	optimize_subexps
	test	eax, eax
	mov	rbx, rbp
	lea	rsi, [rsi]
	je	.label_1517
.label_1525:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xd0]
	mov	rax, qword ptr [rax + 0x30]
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1533
	mov	rdx, qword ptr [r15 + 0xe0]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1541:
	cmp	rcx, qword ptr [rdx + rcx*8]
	mov	rsp, rsp
	jne	.label_1533
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rax
	jb	.label_1541
.label_1533:
	lea	r14, [r15 + 0x68]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jne	.label_1543
	mov	rdi, qword ptr [r15 + 0xe0]
	call	free
	mov	qword ptr [r15 + 0xe0], 0
	jmp	.label_1543
.label_1447:
	lea	rsi, [rsi]
	mov	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], eax
	mov	rbp, rbp
	jmp	.label_1444
.label_1450:
	nop	
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_1444
.label_1469:
	mov	rbp, rbp
	lea	r14, [r15 + 0x68]
.label_1543:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	lea	rbx, [rsp + 0xe0]
	nop	word ptr cs:[rax + rax]
.label_1448:
	mov	rbp, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	nop	
	jne	.label_1448
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	test	rax, rax
	mov	edx, 0
	mov	rbp, rbp
	jne	.label_1448
	mov	rsp, rsp
	jmp	.label_1563
	nop	dword ptr [rax]
.label_1443:
	mov	rdx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rbp, rcx
.label_1563:
	mov	dword ptr [rsp + 0xe0], 0
	test	rdx, rdx
	je	.label_1409
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rdx + 0x30]
	mov	rsp, rsp
	cmp	eax, 0x11
	jne	.label_1409
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xd0]
	lea	rsi, [rsi]
	call	lower_subexp
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 8], rax
	test	rax, rax
	mov	rsp, rsp
	je	.label_1409
	mov	qword ptr [rax], rbp
	nop	word ptr cs:[rax + rax]
.label_1409:
	mov	rdx, qword ptr [rbp + 0x10]
	test	rdx, rdx
	nop	
	je	.label_1426
	movzx	eax, byte ptr [rdx + 0x30]
	mov	rbp, rbp
	cmp	eax, 0x11
	jne	.label_1426
	nop	
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0xd0]
	nop	
	call	lower_subexp
	nop	
	mov	qword ptr [rbp + 0x10], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1426
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
	nop	
.label_1426:
	mov	eax, dword ptr [rsp + 0xe0]
	test	eax, eax
	jne	.label_1418
	mov	rcx, qword ptr [rbp]
	mov	rsp, rsp
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_1440
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	nop	
	je	.label_1443
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1443
	mov	rsp, rsp
	jmp	.label_1448
.label_1440:
	mov	rbp, rbp
	mov	rax, qword ptr [r14]
	nop	
	mov	ebx, 0xfffc00ff
.label_1455:
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	jne	.label_1455
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	jne	.label_1455
	nop	dword ptr [rax]
.label_1485:
	movzx	eax, byte ptr [rbp + 0x30]
	nop	
	cmp	eax, 0x10
	nop	
	jne	.label_1461
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbp + 0x18], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp + 0x38], rax
	jmp	.label_1464
.label_1461:
	mov	qword ptr [rbp + 0x18], rbp
	mov	rsi, qword ptr [rbp + 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp + 0x30]
	mov	rdi, r15
	lea	rsi, [rsi]
	call	re_dfa_add_node
	nop	
	mov	qword ptr [rbp + 0x38], rax
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_1473
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp + 0x30]
	cmp	ecx, 0xc
	lea	rsi, [rsi]
	jne	.label_1464
	mov	ecx, dword ptr [rbp + 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15]
	mov	rsp, rsp
	shl	rax, 4
	nop	
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	and	esi, ebx
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_1464:
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_1483
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	mov	rsp, rsp
	mov	rbp, rcx
	je	.label_1485
	test	rax, rax
	lea	rdi, [rdi]
	mov	rbp, rcx
	mov	rbp, rbp
	je	.label_1485
	lea	rdi, [rdi]
	jmp	.label_1455
.label_1542:
	mov	edi, 0x3c8
	lea	rsi, [rsi]
	call	malloc
	xor	ebp, ebp
	mov	rbp, rbp
	test	rax, rax
	je	.label_1547
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1550
.label_1483:
	mov	rbx, qword ptr [r14]
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx + 0x30]
	nop	
	cmp	eax, 0x10
	mov	rsp, rsp
	je	.label_1502
	lea	rdi, [rdi]
	cmp	eax, 0xb
	jne	.label_1504
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x20], rbx
	jmp	.label_1507
.label_1473:
	lea	rsi, [rsi]
	mov	eax, 0xc
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], eax
	mov	rsp, rsp
	jmp	.label_1444
.label_1558:
	nop	
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	nop	
	test	rax, rax
	je	.label_1427
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1514
.label_1427:
	mov	dword ptr [rsp + 0x14], 0xc
.label_1562:
	nop	
	mov	qword ptr [r12 + 0x68], 0
	jmp	.label_1519
.label_1502:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rdx
	lea	rdi, [rdi]
	jmp	.label_1520
.label_1504:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1524
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x20], rcx
.label_1524:
	nop	
	mov	rcx, qword ptr [rbx + 0x10]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_1507
.label_1520:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_1507:
	mov	rdx, rbx
	lea	rsi, [rsi]
	jmp	.label_1425
.label_1540:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x20], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	lea	rsi, [rsi]
	mov	rdx, rcx
.label_1425:
	xor	esi, esi
	test	rax, rax
	mov	rcx, rax
	nop	
	jne	.label_1532
.label_1537:
	mov	rbp, rbp
	mov	rax, rsi
	mov	rsi, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi + 0x10]
	lea	rsi, [rsi]
	cmp	rcx, rax
	je	.label_1534
	lea	rdi, [rdi]
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_1532
.label_1534:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi]
	mov	rbp, rbp
	test	rdx, rdx
	jne	.label_1537
	lea	rsi, [rsi]
	jmp	.label_1539
.label_1532:
	movzx	eax, byte ptr [rcx + 0x30]
	cmp	eax, 0x10
	je	.label_1540
	cmp	eax, 0xb
	jne	.label_1419
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x20], rcx
	mov	rdx, rcx
	jmp	.label_1425
.label_1419:
	mov	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1545
	mov	rdx, qword ptr [rcx + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x20], rdx
.label_1545:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	test	rsi, rsi
	mov	rdx, rcx
	lea	rsi, [rsi]
	je	.label_1425
	mov	rdx, qword ptr [rcx + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x20], rdx
	lea	rsi, [rsi]
	mov	rdx, rcx
	jmp	.label_1425
.label_1539:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, rbx
	mov	rsp, rsp
	call	link_nfa_nodes
	mov	rsp, rsp
	test	eax, eax
	jne	.label_1418
.label_1416:
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	mov	rsp, rsp
	mov	eax, 0
	jne	.label_1410
	nop	word ptr [rax + rax]
.label_1412:
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	rax, rbx
	mov	rsp, rsp
	mov	rbp, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	rbp, rcx
	lea	rdi, [rdi]
	je	.label_1561
	test	rbp, rbp
	jne	.label_1410
.label_1561:
	mov	rbx, qword ptr [rax]
	lea	rdi, [rdi]
	test	rbx, rbx
	nop	
	jne	.label_1412
	mov	rsp, rsp
	jmp	.label_1415
.label_1410:
	mov	rdi, r15
	mov	rsi, rbp
	nop	
	call	link_nfa_nodes
	nop	
	test	eax, eax
	mov	rbx, rbp
	je	.label_1416
	lea	rdi, [rdi]
	jmp	.label_1418
.label_1415:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	lea	r14, [rsp + 0xe0]
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_1420
	nop	dword ptr [rax + rax]
.label_1452:
	inc	rbp
	lea	rdi, [rdi]
	mov	rax, rbp
.label_1420:
	lea	rdi, [rdi]
	cmp	rax, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	jne	.label_1428
	mov	rbp, rbp
	xor	ebp, ebp
	nop	
	test	r13b, 1
	mov	r13d, 0
	jne	.label_1430
	mov	rsp, rsp
	jmp	.label_1434
.label_1428:
	mov	rbp, rbp
	mov	rbp, rax
.label_1430:
	mov	rax, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	lea	rbx, [rbp + rbp*2]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	mov	rsp, rsp
	jne	.label_1452
	lea	rdi, [rdi]
	mov	ecx, 1
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	call	calc_eclosure_iter
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1418
	mov	rax, qword ptr [r15 + 0x30]
	mov	rbp, rbp
	cmp	qword ptr [rax + rbx*8 + 8], 0
	mov	rbp, rbp
	jne	.label_1452
	mov	rdi, qword ptr [rsp + 0xf0]
	call	free
	mov	r13b, 1
	jmp	.label_1452
.label_1418:
	mov	dword ptr [rsp + 0x14], eax
.label_1444:
	nop	
	mov	r15, qword ptr [rsp + 0xd0]
.label_1519:
	nop	
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	nop	
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_1506
	nop	dword ptr [rax + rax]
.label_1467:
	mov	rbp, qword ptr [rdi]
	call	free
	mov	rbp, rbp
	test	rbp, rbp
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	jne	.label_1467
.label_1506:
	mov	qword ptr [rbx + 0x70], 0
	nop	
	mov	dword ptr [rbx + 0x80], 0xf
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x68], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	nop	
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
	cmp	byte ptr [rsp + 0xab], 0
	mov	rbp, rbp
	je	.label_1480
	nop	
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
.label_1480:
	mov	rdi, r12
	lea	rsi, [rsi]
	call	free_dfa_content
	nop	
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
.label_1482:
	mov	eax, dword ptr [rsp + 0x14]
.label_1477:
	lea	rdi, [rdi]
	add	rsp, 0xf8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_1434:
	mov	rcx, qword ptr [rsp + 0xd0]
	test	byte ptr [rcx + 0x38], 0x10
	jne	.label_1496
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xd0]
	cmp	qword ptr [rcx + 0x30], 0
	nop	
	je	.label_1496
	test	byte ptr [r15 + 0xb0], 1
	nop	
	jne	.label_1495
.label_1496:
	cmp	qword ptr [r15 + 0x98], 0
	mov	rbp, rbp
	je	.label_1499
.label_1495:
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	nop	
	mov	qword ptr [r15 + 0x38], rax
	nop	
	test	rax, rax
	je	.label_1503
	cmp	qword ptr [r15 + 0x10], 0
	lea	rdi, [rdi]
	je	.label_1499
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	mov	ecx, 1
	mov	edx, 0x18
	cmp	rax, 1
	lea	rdi, [rdi]
	jbe	.label_1510
.label_1513:
	mov	rax, qword ptr [r15 + 0x38]
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r15 + 0x10]
	add	rdx, 0x18
	cmp	rcx, rax
	jb	.label_1513
.label_1510:
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_1499
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	xor	r10d, r10d
.label_1549:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xc8], r10
	lea	r9, [r10 + r10*2]
	mov	qword ptr [rsp + 0x18], r9
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	rdi, [rdi]
	jle	.label_1522
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	nop	
	mov	qword ptr [rsp + 8], rdi
	nop	
	xor	ebx, ebx
.label_1546:
	mov	r13, qword ptr [r15 + 0x38]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + rbx*8]
	lea	rbp, [rax + rax*2]
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + rbp*8]
	mov	rbp, rbp
	lea	r14, [r13 + rbp*8 + 8]
	nop	
	mov	rdx, qword ptr [r13 + rbp*8 + 8]
	lea	rdi, [rdi]
	cmp	rax, rdx
	lea	rdi, [rdi]
	jne	.label_1439
	mov	rbp, rbp
	lea	rcx, [r13 + rbp*8]
	mov	rsp, rsp
	lea	rdx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rsi]
	lea	rsi, [rax*8 + 0x10]
	mov	rsp, rsp
	call	realloc
	test	rax, rax
	je	.label_1557
	lea	rcx, [r13 + rbp*8 + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rdx, qword ptr [r14]
	mov	rsp, rsp
	mov	r8, qword ptr [r15 + 0x30]
	mov	r10, qword ptr [rsp + 0xc8]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_1548
.label_1439:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_1548:
	lea	rsi, [rdx + 1]
	mov	qword ptr [r14], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rax + rdx*8], r10
	inc	rbx
	cmp	rbx, qword ptr [r8 + r9*8 + 8]
	jl	.label_1546
	mov	rax, qword ptr [r15 + 0x10]
.label_1522:
	lea	rsi, [rsi]
	inc	r10
	nop	
	cmp	r10, rax
	nop	
	jb	.label_1549
.label_1499:
	nop	
	mov	dword ptr [rsp + 0x14], 0
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xc0], 0
	jne	.label_1429
	mov	al, byte ptr [r12 + 0xb0]
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	and	cl, 4
	nop	
	je	.label_1429
	mov	rcx, qword ptr [rsp + 0xd0]
	cmp	qword ptr [rcx + 0x28], 0
	lea	rsi, [rsi]
	jne	.label_1429
	mov	rdx, qword ptr [r12 + 0x10]
	test	rdx, rdx
	je	.label_1560
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r12]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	lea	rdi, [rdi]
	mov	rcx, rbx
	xor	r10d, r10d
	lea	rsi, [rsi]
	xor	ebp, ebp
.label_1556:
	mov	rbp, rbp
	movzx	esi, byte ptr [rcx + 8]
	dec	esi
	lea	rsi, [rsi]
	cmp	esi, 0xb
	mov	rbp, rbp
	ja	.label_1414
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_1471]]
.label_3314:
	mov	rbp, rbp
	mov	sil, 1
	mov	rsp, rsp
	cmp	byte ptr [rcx], 0
	js	.label_1478
	mov	sil, r10b
.label_1478:
	mov	rbp, rbp
	mov	r10b, sil
	jmp	.label_1423
.label_3315:
	mov	rsi, qword ptr [rcx]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_1429
	mov	rbp, rbp
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_1423
	jmp	.label_1429
.label_3316:
	mov	r9b, 1
	mov	rsp, rsp
	jmp	.label_1423
.label_3317:
	mov	esi, dword ptr [rcx]
	lea	edi, [rsi - 0x10]
	mov	rsp, rsp
	cmp	edi, 0x30
	ja	.label_1433
	bt	r8, rdi
	jb	.label_1423
.label_1433:
	nop	
	cmp	esi, 0x80
	mov	rsp, rsp
	jne	.label_1429
.label_1423:
	inc	rbp
	mov	rsp, rsp
	add	rcx, 0x10
	cmp	rbp, rdx
	jb	.label_1556
	mov	rbp, rbp
	mov	cl, r9b
	and	cl, 1
	or	r10b, r9b
	lea	rdi, [rdi]
	xor	edx, edx
	mov	esi, 8
	mov	rsp, rsp
	test	r10b, 1
	je	.label_1441
	jmp	.label_1459
.label_1497:
	mov	rbp, rbp
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_1444
.label_1458:
	mov	rbp, rbp
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_1444
.label_1551:
	add	rsi, 0x10
	mov	rbx, qword ptr [r12]
.label_1459:
	mov	eax, dword ptr [rbx + rsi]
	movzx	edi, al
	mov	rsp, rsp
	cmp	edi, 5
	je	.label_1457
	lea	rdi, [rdi]
	cmp	edi, 1
	mov	rbp, rbp
	jne	.label_1462
	cmp	byte ptr [rbx + rsi - 8], 0
	mov	rbp, rbp
	jns	.label_1462
	mov	rsp, rsp
	and	eax, 0xffdfffff
	jmp	.label_1468
.label_1457:
	mov	rsp, rsp
	and	eax, 0xffffff00
	nop	
	or	eax, 7
.label_1468:
	mov	rsp, rsp
	mov	dword ptr [rbx + rsi], eax
.label_1462:
	nop	
	inc	rdx
	cmp	rdx, qword ptr [r12 + 0x10]
	jb	.label_1551
	lea	rsi, [rsi]
	mov	al, byte ptr [r12 + 0xb0]
	mov	rbp, rbp
	jmp	.label_1441
.label_1557:
	mov	eax, 0xc
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_1444
.label_1560:
	xor	ecx, ecx
.label_1441:
	mov	dword ptr [r12 + 0xb4], 1
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x98], 0
	nop	
	setg	dl
	or	dl, cl
	lea	rsi, [rsi]
	add	dl, dl
	nop	
	and	al, 0xf9
	or	al, dl
	lea	rsi, [rsi]
	mov	byte ptr [r12 + 0xb0], al
.label_1429:
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x68]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x90], rax
	mov	rbx, qword ptr [r12 + 0x30]
	lea	r13, [rax + rax*2]
	mov	r15, qword ptr [rbx + r13*8 + 8]
	nop	
	mov	qword ptr [rsp + 0xe8], r15
	mov	r14, qword ptr [rbx + r13*8 + 8]
	lea	rsi, [rsi]
	test	r14, r14
	jle	.label_1486
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xe0], r15
	lea	rdi, [r15*8]
	lea	rdi, [rdi]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0xf0], rbp
	test	rbp, rbp
	je	.label_1501
	mov	rsi, qword ptr [rbx + r13*8 + 0x10]
	nop	
	shl	r14, 3
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rdx, r14
	mov	rbp, rbp
	call	memcpy
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xdc], 0
	test	r15, r15
	jle	.label_1509
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	mov	rbp, rbp
	jle	.label_1509
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	lea	r14, [rsp + 0xe0]
	lea	rsi, [rsi]
	jmp	.label_1515
.label_1552:
	mov	rbp, qword ptr [rsp + 0xf0]
.label_1515:
	mov	r8, qword ptr [rbp + rax*8]
	mov	rsp, rsp
	mov	rdx, qword ptr [r12]
	lea	rsi, [rsi]
	mov	rsi, r8
	shl	rsi, 4
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rdx + rsi + 8]
	cmp	ecx, 4
	lea	rdi, [rdi]
	jne	.label_1438
	lea	rdi, [rdi]
	test	r15, r15
	lea	rsi, [rsi]
	mov	edi, 0
	jle	.label_1523
	add	rsi, rdx
	lea	rsi, [rsi]
	xor	edi, edi
.label_1481:
	mov	rcx, qword ptr [rbp + rdi*8]
	nop	
	shl	rcx, 4
	movzx	ebx, byte ptr [rdx + rcx + 8]
	cmp	ebx, 9
	mov	rsp, rsp
	jne	.label_1437
	mov	rsp, rsp
	mov	rcx, qword ptr [rdx + rcx]
	cmp	rcx, qword ptr [rsi]
	mov	rsp, rsp
	je	.label_1523
.label_1437:
	inc	rdi
	lea	rsi, [rsi]
	cmp	rdi, r15
	lea	rsi, [rsi]
	jl	.label_1481
.label_1523:
	mov	rsp, rsp
	cmp	rdi, r15
	je	.label_1438
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	nop	
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	test	r15, r15
	lea	rdi, [rdi]
	jle	.label_1424
	lea	rdi, [rdi]
	mov	rsi, r15
	mov	rbp, rbp
	dec	rsi
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_1535
.label_1536:
	lea	rdi, [rdi]
	lea	rdi, [rdx + rsi]
	shr	rdi, 1
	cmp	qword ptr [rbp + rdi*8], rcx
	mov	rbp, rbp
	lea	rbx, [rdi + 1]
	lea	rsi, [rsi]
	cmovl	rdx, rbx
	nop	
	cmovge	rsi, rdi
	cmp	rdx, rsi
	jb	.label_1536
.label_1535:
	cmp	rdx, -1
	je	.label_1424
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + rdx*8], rcx
	nop	
	je	.label_1438
.label_1424:
	mov	rax, qword ptr [r12 + 0x30]
	nop	
	lea	rcx, [rcx + rcx*2]
	lea	rdi, [rdi]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	mov	rsp, rsp
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1489
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0xe8]
	xor	eax, eax
.label_1438:
	mov	rbp, rbp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r15
	jl	.label_1552
	jmp	.label_1509
.label_1486:
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xe0], xmm0
	mov	qword ptr [rsp + 0xf0], 0
	mov	dword ptr [rsp + 0xdc], 0
.label_1509:
	lea	rdi, [rsp + 0xdc]
	lea	rdx, [rsp + 0xe0]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rsi, r12
	call	re_acquire_state_context
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x48], rax
	nop	
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1564
	cmp	byte ptr [rax + 0x68], 0
	mov	rsp, rsp
	js	.label_1479
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x60], rax
	mov	qword ptr [r12 + 0x58], rax
	mov	qword ptr [r12 + 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1413
.label_1479:
	mov	rsp, rsp
	lea	rbx, [rsp + 0xdc]
	lea	rbp, [rsp + 0xe0]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, r12
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x50], rax
	nop	
	mov	ecx, 2
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x58], rax
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, rbp
	call	re_acquire_state_context
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x60], rax
	cmp	qword ptr [r12 + 0x50], 0
	lea	rsi, [rsi]
	je	.label_1435
	test	rax, rax
	je	.label_1435
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1435
.label_1413:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0xf0]
	call	free
	lea	rdi, [rdi]
	xor	eax, eax
.label_1489:
	mov	dword ptr [rsp + 0x14], eax
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0xd0]
	mov	rbx, qword ptr [r14]
	nop	
	mov	rdi, qword ptr [rbx + 0x70]
	nop	
	test	rdi, rdi
	je	.label_1449
.label_1460:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rsp, rsp
	mov	rdi, rbp
	jne	.label_1460
.label_1449:
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x70], 0
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x80], 0xf
	nop	
	mov	qword ptr [rbx + 0x68], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	nop	
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
	cmp	byte ptr [rsp + 0xab], 0
	lea	rsi, [rsi]
	je	.label_1476
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
.label_1476:
	xor	eax, eax
	mov	rsp, rsp
	cmp	dword ptr [rsp + 0x14], 0
	je	.label_1477
	mov	rdi, r12
	nop	
	call	free_dfa_content
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r14], xmm0
	lea	rdi, [rdi]
	jmp	.label_1482
.label_1435:
	mov	eax, dword ptr [rsp + 0xdc]
	mov	rbp, rbp
	jmp	.label_1489
.label_1503:
	lea	rsi, [rsi]
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_1444
.label_1564:
	mov	eax, dword ptr [rsp + 0xdc]
	mov	rbp, rbp
	jmp	.label_1489
.label_1501:
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	nop	
	movdqa	xmmword ptr [rsp + 0xe0], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xdc], 0xc
	mov	eax, 0xc
	lea	rsi, [rsi]
	jmp	.label_1489
.label_1414:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416e10
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416e30

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	nop	
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	rbp, rbp
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rsp, rsp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0xf0], xmm0
	nop	
	movups	xmmword ptr [rbx + 0xe0], xmm0
	movups	xmmword ptr [rbx + 0xd0], xmm0
	movups	xmmword ptr [rbx + 0xc0], xmm0
	movups	xmmword ptr [rbx + 0xb0], xmm0
	movups	xmmword ptr [rbx + 0xa0], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x90], xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0x40], xmm0
	nop	
	movups	xmmword ptr [rbx + 0x30], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rbx + 0x20], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rsi, qword ptr [r15 + 0x48]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x50]
	lea	rdi, [rdi]
	cmp	rax, rsi
	je	.label_1565
	nop	
	mov	rdi, r14
	mov	rdx, rbx
	nop	
	call	re_compile_fastmap_iter
	nop	
	mov	rax, qword ptr [r15 + 0x48]
.label_1565:
	nop	
	mov	rsi, qword ptr [r15 + 0x58]
	nop	
	cmp	rax, rsi
	mov	rbp, rbp
	je	.label_1566
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	nop	
	mov	rax, qword ptr [r15 + 0x48]
.label_1566:
	nop	
	mov	rsi, qword ptr [r15 + 0x60]
	lea	rdi, [rdi]
	cmp	rax, rsi
	lea	rsi, [rsi]
	je	.label_1567
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rbp, rbp
	call	re_compile_fastmap_iter
.label_1567:
	or	byte ptr [r14 + 0x38], 8
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x416f40

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x148
	lea	rdi, [rdi]
	mov	r15, rdx
	nop	
	mov	qword ptr [rsp + 0x20], rsi
	mov	r13, rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x138], r13
	mov	rax, qword ptr [r13]
	cmp	dword ptr [rax + 0xb4], 1
	nop	
	jne	.label_1579
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	r14b, byte ptr [r13 + 0x1a]
	lea	rdi, [rdi]
	and	r14b, 0x40
	lea	rsi, [rsi]
	shr	r14b, 6
	mov	rbp, rbp
	jmp	.label_1587
.label_1579:
	nop	
	mov	qword ptr [rsp + 0x10], rax
	xor	r14d, r14d
.label_1587:
	cmp	qword ptr [rsi + 0x10], 0
	mov	rsp, rsp
	jle	.label_1595
	nop	
	xor	edx, edx
	nop	
.label_1593:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsi + 0x18]
	mov	rsp, rsp
	mov	rbp, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	r12, rbp
	lea	rdi, [rdi]
	shl	r12, 4
	mov	rsp, rsp
	lea	rcx, [rax + r12]
	movzx	ebx, byte ptr [rax + r12 + 8]
	mov	rsp, rsp
	cmp	ebx, 1
	je	.label_1598
	mov	qword ptr [rsp], rdx
	lea	rdi, [rdi]
	cmp	ebx, 6
	lea	rdi, [rdi]
	je	.label_1605
	mov	rsp, rsp
	cmp	ebx, 3
	mov	rbp, rbp
	jne	.label_1569
	mov	rsp, rsp
	mov	rax, qword ptr [rax + r12]
	mov	rsp, rsp
	mov	rbp, qword ptr [rax]
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1585:
	bt	rbp, rbx
	jae	.label_1575
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_1575
	mov	rbp, rbp
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x180
	jae	.label_1580
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax + rbx*4]
	mov	rbp, rbp
	jmp	.label_1583
.label_1580:
	nop	
	mov	eax, ebx
.label_1583:
	cdqe	
	lea	rsi, [rsi]
	mov	byte ptr [r15 + rax], 1
.label_1575:
	inc	rbx
	cmp	rbx, 0x40
	mov	rbp, rbp
	jne	.label_1585
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rax + 8]
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1603:
	bt	rbp, rbx
	mov	rbp, rbp
	jae	.label_1592
	mov	byte ptr [r15 + rbx + 0x40], 1
	test	r14b, r14b
	je	.label_1592
	nop	
	lea	eax, [rbx + 0xc0]
	cmp	eax, 0x180
	mov	rbp, rbp
	jae	.label_1577
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	eax, dword ptr [rax + rbx*4 + 0x100]
	jmp	.label_1602
.label_1577:
	lea	rsi, [rsi]
	lea	rax, [rbx + 0x40]
.label_1602:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1592:
	lea	rdi, [rdi]
	inc	rbx
	lea	rdi, [rdi]
	cmp	rbx, 0x40
	lea	rsi, [rsi]
	jne	.label_1603
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	nop	
	mov	rbp, qword ptr [rax + 0x10]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_1584:
	bt	rbp, rbx
	lea	rsi, [rsi]
	jae	.label_1570
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rbx + 0x80], 1
	lea	rdi, [rdi]
	test	r14b, r14b
	mov	rsp, rsp
	je	.label_1570
	lea	eax, [rbx + 0x100]
	mov	rsp, rsp
	cmp	eax, 0x180
	jae	.label_1574
	lea	rsi, [rsi]
	call	__ctype_tolower_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x200]
	jmp	.label_1581
.label_1574:
	lea	rax, [rbx + 0x80]
.label_1581:
	mov	rbp, rbp
	cdqe	
	mov	rsp, rsp
	mov	byte ptr [r15 + rax], 1
.label_1570:
	nop	
	inc	rbx
	cmp	rbx, 0x40
	nop	
	jne	.label_1584
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x18]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_1604:
	mov	rbp, rbp
	bt	rbp, rbx
	jae	.label_1589
	mov	rsp, rsp
	mov	byte ptr [r15 + rbx + 0xc0], 1
	lea	rdi, [rdi]
	test	r14b, r14b
	je	.label_1589
	lea	rdi, [rdi]
	lea	eax, [rbx + 0x140]
	cmp	eax, 0x180
	nop	
	jae	.label_1591
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax + rbx*4 + 0x300]
	lea	rdi, [rdi]
	jmp	.label_1599
.label_1591:
	lea	rax, [rbx + 0xc0]
.label_1599:
	lea	rdi, [rdi]
	cdqe	
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rax], 1
.label_1589:
	mov	rsp, rsp
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1604
	jmp	.label_1578
	nop	word ptr [rax + rax]
.label_1605:
	mov	r12, qword ptr [rcx]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xb4], 1
	lea	rsi, [rsi]
	jle	.label_1568
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x48], 0
	mov	rbp, rbp
	jne	.label_1572
	lea	rdi, [rdi]
	test	byte ptr [r12 + 0x20], 1
	nop	
	jne	.label_1572
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_1568
.label_1572:
	nop	
	mov	byte ptr [rsp + 8], 0
	lea	rbx, [rsp + 0x30]
	nop	
	lea	rbp, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_1590:
	mov	qword ptr [rsp + 0x30], 0
	nop	
	xor	edi, edi
	mov	edx, 1
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rsp, rsp
	movzx	ecx, byte ptr [rsp + 8]
	mov	rsp, rsp
	cmp	rax, -2
	mov	rbp, rbp
	jne	.label_1586
	mov	byte ptr [r15 + rcx], 1
.label_1586:
	mov	rsp, rsp
	inc	cl
	nop	
	mov	byte ptr [rsp + 8], cl
	jne	.label_1590
	jmp	.label_1578
	nop	dword ptr [rax]
.label_1598:
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	movzx	ebx, byte ptr [rcx]
	mov	byte ptr [r15 + rbx], 1
	lea	rsi, [rsi]
	test	r14b, r14b
	je	.label_1597
	nop	
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_1600
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1600:
	mov	rsp, rsp
	movsxd	rax, ebx
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rax], 1
.label_1597:
	mov	rsp, rsp
	test	byte ptr [r13 + 0x1a], 0x40
	lea	rsi, [rsi]
	je	.label_1578
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_1578
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	al, byte ptr [rax + r12]
	mov	byte ptr [rsp + 0x30], al
	mov	rsp, rsp
	mov	rdx, rcx
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	lea	r13, [rsp + 0x31]
	lea	rdi, [rdi]
	mov	esi, 0x2000ff
	lea	rdi, [rdi]
	jae	.label_1571
	add	r12, 0x18
	lea	rdi, [rdi]
	lea	r13, [rsp + 0x31]
	nop	word ptr cs:[rax + rax]
.label_1588:
	mov	rax, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + r12]
	lea	rsi, [rsi]
	and	ecx, esi
	cmp	ecx, 0x200001
	lea	rsi, [rsi]
	jne	.label_1571
	nop	
	mov	al, byte ptr [rax + r12 - 8]
	mov	rbp, rbp
	mov	byte ptr [r13], al
	nop	
	inc	r13
	mov	rbp, rbp
	inc	rbp
	lea	rdi, [rdi]
	add	r12, 0x10
	cmp	rbp, qword ptr [rdx + 0x10]
	nop	
	jb	.label_1588
.label_1571:
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], 0
	mov	rbp, rbp
	lea	rbp, [rsp + 0x30]
	sub	r13, rbp
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x144]
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rdx, r13
	lea	rbx, [rsp + 8]
	mov	rbp, rbp
	mov	rcx, rbx
	lea	rdi, [rdi]
	call	rpl_mbrtowc
	mov	rsp, rsp
	cmp	rax, r13
	mov	rbp, rbp
	jne	.label_1573
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0x144]
	nop	
	call	towlower
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	wcrtomb
	mov	rsp, rsp
	cmp	rax, -1
	nop	
	je	.label_1573
	movzx	eax, byte ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rax], 1
.label_1573:
	nop	
	mov	r13, qword ptr [rsp + 0x138]
	lea	rsi, [rsi]
	jmp	.label_1578
	nop	dword ptr [rax + rax]
.label_1569:
	nop	
	cmp	ebx, 2
	je	.label_1582
	mov	eax, ebx
	or	eax, 2
	cmp	eax, 7
	jne	.label_1578
	jmp	.label_1582
.label_1568:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_1578
	nop	
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1596:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + rbp*4]
	mov	rsp, rsp
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 8]
	call	wcrtomb
	mov	rbp, rbp
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_1594
	movzx	ebx, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rbx], 1
	lea	rdi, [rdi]
	test	r14b, r14b
	mov	rbp, rbp
	je	.label_1594
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	mov	rbp, rbp
	ja	.label_1601
	lea	rdi, [rdi]
	call	__ctype_tolower_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	nop	
	mov	ebx, dword ptr [rax + rbx*4]
.label_1601:
	nop	
	movsxd	rax, ebx
	mov	rsp, rsp
	mov	byte ptr [r15 + rax], 1
.label_1594:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_1576
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_1576
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	lea	rsi, [rsi]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1576
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	word ptr cs:[rax + rax]
.label_1576:
	lea	rdi, [rdi]
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	jl	.label_1596
	nop	word ptr cs:[rax + rax]
.label_1578:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp]
	nop	
	inc	rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rsi + 0x10]
	nop	
	jl	.label_1593
.label_1595:
	add	rsp, 0x148
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_1582:
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, 0x100
	mov	rdi, r15
	lea	rsi, [rsi]
	call	memset
	lea	rdi, [rdi]
	cmp	ebx, 2
	mov	rsp, rsp
	jne	.label_1595
	or	byte ptr [r13 + 0x38], 1
	nop	
	jmp	.label_1595
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4175e0

	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	nop	
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x100
	lea	rsi, [rsi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x20], rax
	lea	rdi, [rdi]
	mov	ebx, 0xc
	test	rax, rax
	mov	rbp, rbp
	je	.label_1607
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	mov	rbp, rbp
	cmovne	rcx, rax
	mov	ebx, ebp
	lea	rsi, [rsi]
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_1606
	mov	al, byte ptr [r15 + 0x38]
	lea	rsi, [rsi]
	and	al, 0x7f
	lea	rdi, [rdi]
	jmp	.label_1608
.label_1606:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	nop	
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_1608:
	mov	rbp, rbp
	mov	byte ptr [r15 + 0x38], al
	add	ebp, ebp
	nop	
	and	bpl, 0x10
	and	al, 0xef
	nop	
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x28], 0
	mov	rdi, r14
	mov	rbp, rbp
	call	strlen
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, rbx
	call	re_compile_internal
	cmp	eax, 0x10
	mov	ebx, 8
	lea	rdi, [rdi]
	cmovne	ebx, eax
	test	ebx, ebx
	nop	
	jne	.label_1609
	nop	
	mov	rdi, r15
	mov	rsp, rsp
	call	rpl_re_compile_fastmap
	xor	ebx, ebx
.label_1607:
	mov	eax, ebx
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1609:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x20], 0
	mov	rsp, rsp
	jmp	.label_1607
	nop	
	.section	.text
	.align	32
	#Procedure 0x417710
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r15, rcx
	mov	rbp, rbp
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_1610
	lea	rsi, [rsi]
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_1612
	lea	rdi, [rdi]
	cmp	rbx, r15
	mov	rsp, rsp
	mov	rdx, rbx
	ja	.label_1611
.label_1613:
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r12
	call	memcpy
.label_1612:
	mov	rax, rbx
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	ret	
.label_1611:
	mov	rsp, rsp
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rbp, rbp
	jmp	.label_1613
.label_1610:
	lea	rdi, [rdi]
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4177c0

	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:
	lea	rdi, [rdi]
	push	rbx
	nop	
	mov	rbx, rdi
	nop	
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1614
	call	free_dfa_content
.label_1614:
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsp, rsp
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	rsp, rsp
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417820

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	nop	
	push	r13
	mov	rbp, rbp
	push	r12
	nop	
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1623
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r12d, 8
	cmp	qword ptr [r14 + 0x10], 0
	lea	rdi, [rdi]
	je	.label_1623
	mov	ebp, 0x400ff
	jmp	.label_1630
	nop	word ptr cs:[rax + rax]
.label_1631:
	mov	rbp, rbp
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_1630:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	lea	rsi, [rsi]
	je	.label_1615
	nop	
	cmp	ecx, 6
	jne	.label_1616
	nop	
	mov	r15, qword ptr [rax + r12 - 8]
	mov	rdi, qword ptr [r15]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 8]
	nop	
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	call	free
	mov	rdi, r15
	mov	rsp, rsp
	jmp	.label_1625
	nop	dword ptr [rax]
.label_1615:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_1625:
	lea	rsi, [rsi]
	call	free
.label_1616:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_1631
.label_1623:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	nop	
	je	.label_1632
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	nop	
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	dword ptr [rax + rax]
.label_1629:
	mov	rax, qword ptr [r12]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1617
	mov	rdi, qword ptr [rax + rbx]
	mov	rsp, rsp
	call	free
.label_1617:
	mov	rax, qword ptr [r15]
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1619
	mov	rdi, qword ptr [rax + rbx]
	lea	rsi, [rsi]
	call	free
.label_1619:
	mov	rax, qword ptr [r13]
	nop	
	test	rax, rax
	je	.label_1627
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1627:
	mov	rsp, rsp
	inc	rbp
	add	rbx, 0x18
	lea	rdi, [rdi]
	cmp	rbp, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	jb	.label_1629
	lea	rdi, [rdi]
	jmp	.label_1620
.label_1632:
	mov	rsp, rsp
	lea	r13, [r14 + 0x28]
	mov	rbp, rbp
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_1620:
	mov	rdi, qword ptr [r13]
	call	free
	mov	rdi, qword ptr [r12]
	call	free
	mov	rdi, qword ptr [r15]
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r14]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [r14 + 0x40]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_1622
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_1624
	nop	word ptr cs:[rax + rax]
.label_1621:
	mov	rdi, qword ptr [r14 + 0x40]
.label_1624:
	lea	rsi, [rsi]
	lea	rax, [r15 + r15*2]
	nop	
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	mov	rsp, rsp
	jle	.label_1628
	lea	rbx, [rdi + rax*8]
	mov	rsp, rsp
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1618:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	nop	
	cmp	rbp, qword ptr [rbx]
	nop	
	jl	.label_1618
.label_1628:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_1621
	mov	rdi, qword ptr [r14 + 0x40]
.label_1622:
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	lea	rsi, [rsi]
	cmp	rdi, rax
	nop	
	je	.label_1626
	call	free
.label_1626:
	nop	
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417aa0

	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:
	nop	
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	ebp, r8d
	mov	r12, rcx
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	eax, 2
	mov	rbp, rbp
	cmp	ebp, 7
	nop	
	ja	.label_1633
	test	bpl, 4
	nop	
	jne	.label_1637
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_1634
.label_1637:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
.label_1634:
	test	byte ptr [rbx + 0x38], 0x10
	nop	
	jne	.label_1635
	mov	dword ptr [rsp + 0x10], ebp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r15
	lea	rsi, [rsi]
	jmp	.label_1636
.label_1635:
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], 0
	nop	
	mov	qword ptr [rsp], 0
.label_1636:
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	r8, rdx
	lea	rdi, [rdi]
	mov	r9, rdx
	call	re_search_internal
	mov	rbp, rbp
	test	eax, eax
	setne	al
	movzx	eax, al
.label_1633:
	mov	rsp, rsp
	add	rsp, 0x20
	nop	
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417b80

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x268
	mov	r13, r9
	mov	rbp, rbp
	mov	rbp, rcx
	mov	r9, qword ptr [rsp + 0x2a0]
	mov	r11, qword ptr [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x180], xmm0
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x150], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x140], xmm0
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x128], r11
	mov	rax, qword ptr [rdi + 0x20]
	xor	r12d, r12d
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1801
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	lea	rdi, [rdi]
	movzx	ecx, cl
	lea	rsi, [rsi]
	xor	ebx, ebx
	nop	
	cmp	ecx, 8
	nop	
	cmovne	rax, rbx
	mov	rsp, rsp
	cmp	rbp, r8
	cmove	rax, rbx
	nop	
	mov	r12, rax
.label_1801:
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x30]
	lea	r14, [r9 - 1]
	nop	
	mov	rcx, r14
	mov	rsp, rsp
	sub	rcx, rax
	xor	ebx, ebx
	mov	rsp, rsp
	cmp	rax, r9
	lea	rsi, [rsi]
	cmovb	rbx, rcx
	mov	eax, 1
	mov	rsp, rsp
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_1679
	mov	rbp, rbp
	mov	r15, qword ptr [r11 + 0x48]
	nop	
	test	r15, r15
	mov	rsp, rsp
	je	.label_1679
	mov	rcx, qword ptr [r11 + 0x50]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_1679
	lea	rsi, [rsi]
	mov	r10, qword ptr [r11 + 0x58]
	test	r10, r10
	nop	
	je	.label_1688
	cmp	qword ptr [r11 + 0x60], 0
	nop	
	je	.label_1688
	mov	rbp, rbp
	mov	rax, r13
	lea	rsi, [rsi]
	mov	r13, qword ptr [rdi + 0x28]
	mov	qword ptr [rsp + 0x250], r13
	nop	
	cmp	qword ptr [r15 + 0x10], 0
	lea	rdi, [rdi]
	je	.label_1695
	mov	rcx, r8
	mov	r13, rax
	jmp	.label_1657
.label_1688:
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rsp, rsp
	jmp	.label_1679
.label_1695:
	cmp	qword ptr [rcx + 0x10], 0
	mov	rbp, rbp
	mov	r13, rax
	mov	rbp, rbp
	je	.label_1703
	mov	rcx, r8
.label_1657:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x1c0], r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r14
	lea	rdi, [rdi]
	mov	al, 1
	cmp	rbx, r9
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x230], rbx
	jne	.label_1710
	lea	rdi, [rdi]
	cmp	qword ptr [r11 + 0x98], 0
	mov	rsp, rsp
	setne	al
.label_1710:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x227], al
	mov	rsp, rsp
	mov	r12, qword ptr [r11 + 0x10]
	inc	r12
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 0x18]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [r11 + 0xb4]
	mov	rbp, rbp
	cmp	rax, r12
	cmovge	r12, rax
	lea	rsi, [rsi]
	lea	rbx, [rdx + 1]
	cmp	rbx, r12
	cmovle	r12, rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x90], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe8], rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], rdx
	mov	rbx, qword ptr [rsp + 0x250]
	mov	qword ptr [rsp + 0x108], rbx
	lea	rsi, [rsi]
	shr	rcx, 0x16
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x118], cl
	test	rbx, rbx
	setne	bl
	lea	rdi, [rdi]
	or	bl, cl
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x11b], bl
	mov	dword ptr [rsp + 0x120], eax
	lea	rsi, [rsi]
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 2
	and	cl, 1
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x119], cl
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 3
	lea	rdi, [rdi]
	and	cl, 1
	mov	rbp, rbp
	cmp	rax, 2
	nop	
	mov	byte ptr [rsp + 0x11a], cl
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf8], rdx
	mov	qword ptr [rsp + 0xf0], rdx
	lea	rdi, [rdi]
	jl	.label_1799
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x80], r11
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	nop	
	mov	ecx, 0xc
	nop	
	cmp	r12, rax
	mov	rbp, rbp
	ja	.label_1638
	mov	qword ptr [rsp + 0x210], rsi
	mov	qword ptr [rsp + 0x68], rdx
	mov	rsp, rsp
	mov	r14, rdi
	lea	rsi, [r12*4]
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	call	realloc
	mov	rbp, rbp
	mov	ecx, 0xc
	test	rax, rax
	je	.label_1638
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x80]
	nop	
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x210]
.label_1799:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x210], rsi
	mov	qword ptr [rsp + 0x68], rdx
	test	bl, bl
	je	.label_1741
	mov	r14, rdi
	mov	qword ptr [rsp + 0x80], r11
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, r12
	call	realloc
	lea	rdi, [rdi]
	mov	ecx, 0xc
	mov	rbp, rbp
	test	rax, rax
	je	.label_1638
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rax
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	mov	rdi, r14
.label_1741:
	mov	rbp, rbp
	mov	edx, dword ptr [rsp + 0x2b0]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], r12
	mov	rsp, rsp
	lea	rax, [r11 + 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x110], rax
	mov	rax, qword ptr [r11 + 0xb0]
	mov	cl, al
	mov	rsp, rsp
	shr	cl, 4
	and	cl, 1
	mov	byte ptr [rsp + 0x11e], cl
	xor	ecx, ecx
	test	bl, bl
	jne	.label_1793
	shr	rax, 0x20
	mov	rcx, qword ptr [rsp + 0x210]
	mov	qword ptr [rsp + 0x98], rcx
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	
	cmp	eax, 1
	mov	rbp, rbp
	cmovle	rcx, qword ptr [rsp + 0x68]
.label_1793:
	mov	qword ptr [rsp + 0xc0], rcx
	mov	qword ptr [rsp + 0xc8], rcx
	mov	qword ptr [rsp + 0xf8], r13
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xf0], r13
	mov	rbp, rbp
	mov	al, byte ptr [rdi + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x260], rdi
	nop	
	shr	al, 7
	mov	byte ptr [rsp + 0x11d], al
	mov	rbx, qword ptr [r11 + 0x98]
	mov	qword ptr [rsp + 0x80], r11
	lea	r14, [rbx + rbx]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x130], edx
	mov	qword ptr [rsp + 0x138], -1
	test	rbx, rbx
	mov	rbp, rbp
	jle	.label_1772
	mov	ecx, 0xc
	movabs	rax, 0x666666666666666
	cmp	r14, rax
	ja	.label_1638
	lea	rdi, [rdi]
	shl	rbx, 4
	mov	rsp, rsp
	lea	rdi, [rbx + rbx*4]
	mov	rsp, rsp
	call	malloc
	lea	rdi, [rdi]
	mov	r13, rax
	mov	qword ptr [rsp + 0x168], r13
	mov	rbp, rbp
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0x188], rax
	lea	rsi, [rsi]
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_1644
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	mov	ecx, 0xc
	nop	
	je	.label_1638
.label_1772:
	mov	rax, qword ptr [rsp + 0x2a0]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x230]
	mov	rbp, rbp
	sub	rcx, rax
	nop	
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [rsp + 0x160], r14
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x170], 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x180], r14
	lea	rdi, [rdi]
	cmp	rcx, 1
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x80]
	ja	.label_1650
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0xb0]
	mov	rbp, rbp
	test	dil, 2
	nop	
	jne	.label_1650
	shr	rdi, 0x20
	mov	qword ptr [rsp + 0x148], 0
	jmp	.label_1767
.label_1650:
	lea	rsi, [rsi]
	mov	ecx, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	r12, rax
	ja	.label_1638
	lea	rdi, [rdi]
	lea	rdi, [r12*8 + 8]
	call	malloc
	lea	rsi, [rsi]
	mov	ecx, 0xc
	mov	qword ptr [rsp + 0x148], rax
	test	rax, rax
	je	.label_1638
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x80]
	mov	edi, dword ptr [rax + 0xb4]
.label_1767:
	nop	
	mov	r13, qword ptr [rsp + 0x1c0]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x80], rax
	mov	qword ptr [rsp + 0x88], rbp
	nop	
	mov	eax, dword ptr [rsp + 0x2b0]
	mov	rsp, rsp
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0x100], eax
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	cmp	rbx, rbp
	lea	rdi, [rdi]
	mov	rax, rbp
	mov	rsp, rsp
	cmovle	rax, rbx
	mov	qword ptr [rsp + 0x78], rax
	mov	rsp, rsp
	mov	r8, rax
	mov	r14, rbx
	cmovl	r14, rbp
	mov	qword ptr [rsp + 0x1b8], r14
	lea	rdi, [rdi]
	mov	edx, 8
	mov	rbp, rbp
	test	r13, r13
	je	.label_1721
	cmp	edi, 1
	je	.label_1739
	nop	
	mov	ecx, 0x400000
	xor	eax, eax
	nop	
	cmp	qword ptr [rsp + 0x250], 0
	mov	rdx, qword ptr [rsp + 0x260]
	mov	rsp, rsp
	jne	.label_1740
	mov	rbp, rbp
	and	rcx, qword ptr [rdx + 0x18]
	mov	rsp, rsp
	jne	.label_1740
.label_1739:
	mov	eax, 4
.label_1740:
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x250], 0
	setne	cl
	lea	rsi, [rsi]
	cmp	rbp, rbx
	setle	dl
	movzx	ecx, cl
	movzx	edx, dl
	lea	rdi, [rdi]
	lea	edx, [rcx + rdx*2]
	lea	rdi, [rdi]
	or	edx, eax
.label_1721:
	nop	
	mov	qword ptr [rsp + 8], rdi
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rbp, rbx
	setle	byte ptr [rsp + 0x23f]
	mov	rbp, rbp
	lea	rcx, [rsp + 0x88]
	cmovg	rcx, rax
	mov	qword ptr [rsp + 0x1a8], rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x1a0], rax
	cmp	rbx, rbp
	mov	eax, 1
	nop	
	mov	rcx, -1
	cmovge	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x1c0], rcx
	lea	rsi, [rsi]
	add	edx, -4
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rdx
	mov	rbx, r8
	jmp	.label_1681
.label_1744:
	mov	r12, qword ptr [rsp + 8]
	mov	rsp, rsp
	cmp	r12d, 1
	mov	rsp, rsp
	je	.label_1773
	mov	rax, qword ptr [rsp + 0xc0]
	test	rax, rax
	je	.label_1773
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xa0]
	cmp	dword ptr [rax], -1
	je	.label_1777
.label_1773:
	mov	dword ptr [rsp + 0x170], 0
	lea	rsi, [rsi]
	lea	rax, [rsp + 0x150]
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rax], xmm0
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x128]
	nop	
	mov	r14, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x24c], 0
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	js	.label_1782
	mov	r12b, byte ptr [rsp + 0x227]
	lea	rdi, [rdi]
	jmp	.label_1646
.label_1782:
	lea	rsi, [rsi]
	test	r14, r14
	lea	rsi, [rsi]
	jle	.label_1794
	lea	rax, [r14 - 1]
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xe8], rax
	je	.label_1797
	cmp	dword ptr [rsp + 0x120], 2
	mov	rbp, rbp
	mov	r12b, byte ptr [rsp + 0x227]
	mov	rbp, rbp
	jl	.label_1804
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	mov	rcx, r14
	nop	dword ptr [rax + rax]
.label_1813:
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	mov	rsp, rsp
	cmp	ebp, -1
	jne	.label_1809
	dec	rcx
	mov	rbp, rbp
	jg	.label_1813
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x100]
	mov	rsp, rsp
	jmp	.label_1659
.label_1804:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x110]
	mov	rbp, rbp
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	mov	rsp, rsp
	shr	cl, 6
	nop	
	movzx	ecx, cl
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	rbp, rbp
	bt	rcx, rax
	mov	rbp, rbp
	jb	.label_1669
	lea	rsi, [rsi]
	movzx	eax, al
	nop	
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_1646
	nop	
	jmp	.label_1697
.label_1809:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x11e], 0
	jne	.label_1653
.label_1701:
	cmp	ebp, 0xa
	mov	rbp, rbp
	jne	.label_1646
.label_1697:
	lea	rsi, [rsi]
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x11d], 0
	jne	.label_1659
	xor	ecx, ecx
	mov	rsp, rsp
	jmp	.label_1659
.label_1794:
	mov	ecx, dword ptr [rsp + 0x100]
	mov	r12b, byte ptr [rsp + 0x227]
	lea	rdi, [rdi]
	jmp	.label_1659
.label_1797:
	mov	ecx, dword ptr [rsp + 0x130]
	lea	rsi, [rsi]
	and	ecx, 2
	xor	ecx, 0xa
	mov	r12b, byte ptr [rsp + 0x227]
.label_1659:
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1669
	mov	rsp, rsp
	test	ecx, ecx
	lea	rdi, [rdi]
	je	.label_1646
	mov	eax, ecx
	nop	
	and	eax, 4
	sete	sil
	nop	
	mov	edx, ecx
	and	edx, 2
	mov	rbp, rbp
	je	.label_1677
	test	sil, sil
	jne	.label_1677
	mov	rbx, qword ptr [r15 + 0x60]
	jmp	.label_1646
.label_1677:
	test	edx, edx
	nop	
	jne	.label_1682
	nop	
	test	eax, eax
	mov	rbp, rbp
	je	.label_1646
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0x50]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x24c]
	mov	rbp, rbp
	mov	rsi, r15
	call	re_acquire_state_context
	mov	rbx, rax
	lea	rdi, [rdi]
	jmp	.label_1646
.label_1682:
	mov	rbx, qword ptr [r15 + 0x58]
	jmp	.label_1646
.label_1653:
	lea	rsi, [rsi]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	iswalnum
	nop	
	cmp	ebp, 0x5f
	lea	rdi, [rdi]
	je	.label_1669
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_1701
.label_1669:
	nop	
	mov	rbx, qword ptr [r15 + 0x50]
.label_1646:
	mov	cl, byte ptr [rsp + 0x23f]
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1791
	mov	rax, qword ptr [rsp + 0x148]
	test	rax, rax
	mov	rbp, rbp
	mov	dl, cl
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x30], edx
	je	.label_1675
	mov	qword ptr [rax + r14*8], rbx
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 0x98], 0
	lea	rdi, [rdi]
	mov	al, cl
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x30], eax
	jne	.label_1645
.label_1675:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x23f], cl
	mov	cl, byte ptr [rbx + 0x68]
	mov	rbp, rbp
	mov	r15, -1
	mov	rbp, rbp
	test	cl, 0x10
	mov	eax, 0
	jne	.label_1666
.label_1691:
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x1a8]
.label_1640:
	mov	qword ptr [rsp + 0x1b0], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	cmp	qword ptr [rsp + 0xf8], rbp
	mov	rsp, rsp
	jle	.label_1639
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	sete	al
	or	al, r12b
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x25f], al
	mov	r14, rbx
	jmp	.label_1732
.label_1733:
	mov	qword ptr [rsp + 0x228], r15
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 0x10], 0
	lea	rdi, [rdi]
	jle	.label_1737
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x128]
	mov	qword ptr [rsp + 0x70], rsi
	xor	r15d, r15d
	lea	rsi, [rsi]
	jmp	.label_1678
.label_1745:
	mov	rax, qword ptr [rsp + 0xd8]
	test	rax, rax
	jle	.label_1747
	lea	rdx, [rax - 1]
	nop	
	mov	ecx, 0xa
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0xe8], rdx
	je	.label_1711
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0x120], 2
	jl	.label_1756
	mov	rcx, qword ptr [rsp + 0xa0]
.label_1762:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rcx + rax*4 - 4]
	cmp	ebx, -1
	mov	rbp, rbp
	jne	.label_1759
	mov	rbp, rbp
	dec	rax
	jg	.label_1762
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x100]
	jmp	.label_1711
.label_1802:
	lea	rsi, [rsi]
	cmp	r14, rbx
	mov	rsp, rsp
	je	.label_1764
	mov	dword ptr [rsp + 0x30], 0
.label_1764:
	mov	r14, qword ptr [rsp + 0x38]
	cmove	r14, qword ptr [rsp + 0x240]
	mov	rsp, rsp
	jmp	.label_1768
.label_1756:
	nop	
	mov	rax, qword ptr [rsp + 0x98]
	mov	rcx, qword ptr [rsp + 0x110]
	movzx	eax, byte ptr [rax + rdx]
	mov	dl, al
	lea	rsi, [rsi]
	shr	dl, 6
	lea	rdi, [rdi]
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_1711
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rsp, rsp
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0xa
	lea	rsi, [rsi]
	jne	.label_1711
	jmp	.label_1757
.label_1759:
	cmp	byte ptr [rsp + 0x11e], 0
	jne	.label_1787
.label_1712:
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	cmp	ebx, 0xa
	jne	.label_1711
.label_1757:
	mov	rbp, rbp
	mov	ecx, 2
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x11d], 0
	jne	.label_1711
	lea	rdi, [rdi]
	xor	ecx, ecx
	jmp	.label_1711
.label_1693:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x4c], eax
	nop	
	mov	qword ptr [rsp + 0x198], rcx
	mov	qword ptr [rsp + 0x70], rsi
	mov	edi, ebx
	mov	rsp, rsp
	call	iswalnum
	lea	rsi, [rsi]
	xor	edx, edx
	cmp	ebx, 0x5f
	nop	
	mov	edi, 1
	lea	rsi, [rsi]
	je	.label_1673
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x198]
	mov	eax, dword ptr [rsp + 0x4c]
	mov	rsp, rsp
	je	.label_1700
	jmp	.label_1687
.label_1817:
	mov	rsp, rsp
	mov	edi, ebx
	call	iswalnum
	cmp	ebx, 0x5f
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	je	.label_1746
	test	eax, eax
	lea	rdi, [rsp + 0x50]
	je	.label_1689
	mov	rsp, rsp
	jmp	.label_1641
.label_1673:
	mov	rsi, qword ptr [rsp + 0x70]
	nop	
	mov	rcx, qword ptr [rsp + 0x198]
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x4c]
	lea	rsi, [rsi]
	jmp	.label_1687
.label_1746:
	lea	rdi, [rsp + 0x50]
	jmp	.label_1641
.label_1678:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0x18]
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rsi]
	mov	rsp, rsp
	mov	rcx, rbp
	shl	rcx, 4
	mov	eax, dword ptr [rax + rcx + 8]
	lea	rdi, [rdi]
	test	eax, 0x100000
	je	.label_1717
	mov	r12d, eax
	shr	r12d, 8
	mov	rbp, rbp
	test	r12w, 0x3ff
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	rsp, rsp
	je	.label_1652
	test	rcx, rcx
	js	.label_1658
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0xe8], rcx
	mov	rsp, rsp
	je	.label_1661
	mov	r8d, eax
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0x120], 2
	jl	.label_1663
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rdx, [rcx + 1]
.label_1818:
	mov	rsp, rsp
	mov	ebx, dword ptr [rax + rdx*4 - 4]
	lea	rdi, [rdi]
	cmp	ebx, -1
	jne	.label_1814
	mov	rbp, rbp
	dec	rdx
	test	rdx, rdx
	jg	.label_1818
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x100]
	lea	rsi, [rsi]
	jmp	.label_1672
.label_1663:
	mov	rax, qword ptr [rsp + 0x98]
	mov	rdi, qword ptr [rsp + 0x110]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rax + rcx]
	nop	
	mov	dl, al
	shr	dl, 6
	nop	
	movzx	edx, dl
	nop	
	mov	rdx, qword ptr [rdi + rdx*8]
	xor	edi, edi
	bt	rdx, rax
	jae	.label_1692
	mov	edi, 1
	xor	edx, edx
	mov	eax, r8d
	jmp	.label_1687
.label_1814:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x11e], 0
	mov	eax, r8d
	mov	rsp, rsp
	jne	.label_1693
.label_1700:
	lea	rsi, [rsi]
	mov	r8d, eax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	cmp	ebx, 0xa
	je	.label_1696
	jmp	.label_1672
.label_1692:
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0xa
	nop	
	jne	.label_1672
.label_1696:
	mov	edi, 2
	cmp	byte ptr [rsp + 0x11d], 0
	jne	.label_1672
	xor	edi, edi
	jmp	.label_1672
.label_1658:
	mov	r8d, eax
	mov	edi, dword ptr [rsp + 0x100]
	jmp	.label_1672
.label_1661:
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	edi, dword ptr [rsp + 0x130]
	nop	
	and	edi, 2
	nop	
	xor	edi, 0xa
.label_1672:
	mov	eax, edi
	and	eax, 1
	lea	rdi, [rdi]
	sete	dl
	test	r12b, 4
	je	.label_1713
	lea	rdi, [rdi]
	test	eax, eax
	mov	eax, r8d
	je	.label_1717
	jmp	.label_1687
.label_1713:
	nop	
	mov	eax, r8d
.label_1687:
	test	ah, 8
	je	.label_1719
	test	dl, dl
	lea	rsi, [rsi]
	je	.label_1717
.label_1719:
	test	ah, 0x20
	je	.label_1722
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rsp, rsp
	and	eax, 2
	lea	rdi, [rdi]
	je	.label_1717
.label_1722:
	test	r12b, r12b
	jns	.label_1652
	mov	rbp, rbp
	and	edi, 8
	lea	rsi, [rsi]
	je	.label_1717
.label_1652:
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rsp, rsp
	lea	rdx, [rsp + 0x90]
	call	check_node_accept_bytes
	mov	rsp, rsp
	mov	rsi, rbx
	test	eax, eax
	nop	
	je	.label_1717
	movsxd	r12, eax
	lea	rdi, [rdi]
	add	r12, qword ptr [rsp + 0xd8]
	nop	
	mov	ecx, dword ptr [rsp + 0x170]
	cmp	ecx, eax
	nop	
	cmovl	ecx, eax
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x170], ecx
	mov	rbx, qword ptr [rsp + 0x150]
	mov	rcx, qword ptr [rsp + 0xd0]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	nop	
	cmp	rcx, r12
	jg	.label_1735
	cmp	rcx, rax
	jl	.label_1749
.label_1735:
	mov	rcx, qword ptr [rsp + 0xc0]
	cmp	rcx, r12
	lea	rsi, [rsi]
	jg	.label_1750
	cmp	rcx, rax
	lea	rdi, [rdi]
	jge	.label_1750
.label_1749:
	mov	rbp, rbp
	lea	esi, [r12 + 1]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x90]
	lea	rdi, [rdi]
	call	extend_buffers
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_1758
.label_1750:
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	rbp, rbp
	sub	rdx, rbx
	mov	rsp, rsp
	jle	.label_1760
	nop	
	mov	rax, qword ptr [rsp + 0x148]
	nop	
	lea	rdi, [rax + rbx*8 + 8]
	shl	rdx, 3
	mov	rsp, rsp
	xor	esi, esi
	lea	rdi, [rdi]
	call	memset
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x150], r12
.label_1760:
	mov	dword ptr [rsp + 0x50], 0
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rax, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rax + rbp*8]
	mov	rbp, rbp
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	mov	rbp, rbp
	add	rdx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x148]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + r12*8]
	mov	rbp, rcx
	nop	
	test	rbx, rbx
	je	.label_1769
	nop	
	mov	rsi, qword ptr [rbx + 0x50]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x1d0]
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x50], eax
	test	eax, eax
	je	.label_1783
	mov	rbp, rbp
	jmp	.label_1676
.label_1769:
	mov	rbp, rbp
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x1e0], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x1d0], xmm0
.label_1783:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x198], rbx
	nop	
	test	r12, r12
	mov	rsp, rsp
	jle	.label_1789
	mov	rbp, rbp
	lea	rax, [r12 - 1]
	cmp	qword ptr [rsp + 0xe8], rax
	lea	rdi, [rsp + 0x50]
	mov	rsp, rsp
	je	.label_1790
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x120], 2
	mov	rbp, rbp
	jl	.label_1795
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	mov	rcx, r12
.label_1806:
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	mov	rsp, rsp
	cmp	ebx, -1
	jne	.label_1803
	mov	rbp, rbp
	dec	rcx
	mov	rbp, rbp
	jg	.label_1806
	mov	ecx, dword ptr [rsp + 0x100]
	jmp	.label_1641
.label_1795:
	mov	rcx, qword ptr [rsp + 0x98]
	mov	rdx, qword ptr [rsp + 0x110]
	nop	
	movzx	eax, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	cl, al
	nop	
	shr	cl, 6
	lea	rdi, [rdi]
	movzx	ecx, cl
	nop	
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	bt	rdx, rax
	lea	rdi, [rdi]
	jb	.label_1641
	xor	ecx, ecx
	movzx	eax, al
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_1641
	jmp	.label_1816
.label_1803:
	nop	
	cmp	byte ptr [rsp + 0x11e], 0
	mov	rsp, rsp
	jne	.label_1817
.label_1689:
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	cmp	ebx, 0xa
	mov	rsp, rsp
	jne	.label_1641
.label_1816:
	mov	ecx, 2
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x11d], 0
	mov	rbp, rbp
	jne	.label_1641
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_1641
.label_1789:
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x100]
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x50]
	mov	rsp, rsp
	jmp	.label_1641
.label_1790:
	mov	ecx, dword ptr [rsp + 0x130]
	lea	rdi, [rdi]
	and	ecx, 2
	lea	rsi, [rsi]
	xor	ecx, 0xa
.label_1641:
	mov	rsi, rbp
	lea	rdx, [rsp + 0x1d0]
	call	re_acquire_state_context
	cmp	qword ptr [rsp + 0x198], 0
	mov	rcx, qword ptr [rsp + 0x148]
	mov	qword ptr [rcx + r12*8], rax
	mov	rbp, rbp
	je	.label_1664
	mov	rdi, qword ptr [rsp + 0x1e0]
	call	free
.label_1664:
	mov	rax, qword ptr [rsp + 0x148]
	cmp	qword ptr [rax + r12*8], 0
	lea	rsi, [rsi]
	mov	rsi, rbp
	jne	.label_1717
	nop	
	mov	eax, dword ptr [rsp + 0x50]
	nop	
	test	eax, eax
	nop	
	jne	.label_1676
.label_1717:
	inc	r15
	cmp	r15, qword ptr [r14 + 0x10]
	mov	rsp, rsp
	jl	.label_1678
.label_1737:
	mov	dword ptr [rsp + 0x24c], 0
	mov	r12b, byte ptr [rsp + 0x227]
	nop	
	mov	r15, qword ptr [rsp + 0x228]
	mov	rsp, rsp
	jmp	.label_1680
.label_1747:
	mov	ecx, dword ptr [rsp + 0x100]
.label_1711:
	mov	rbp, rbp
	and	ecx, 1
	nop	
	shl	rcx, 8
	mov	rbp, rbp
	or	rcx, rbp
	mov	rbx, qword ptr [r15 + rcx*8]
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x228]
	lea	rsi, [rsi]
	jmp	.label_1694
.label_1758:
	mov	dword ptr [rsp + 0x50], eax
.label_1676:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x24c], eax
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rdi, [rdi]
	mov	r12b, byte ptr [rsp + 0x227]
	mov	r15, qword ptr [rsp + 0x228]
	mov	rsp, rsp
	jmp	.label_1694
.label_1787:
	mov	edi, ebx
	call	iswalnum
	cmp	ebx, 0x5f
	mov	ecx, 1
	je	.label_1711
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1712
	jmp	.label_1711
.label_1732:
	mov	rbp, rbp
	lea	rdx, [rbp + 1]
	mov	qword ptr [rsp + 0x240], rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xd0]
	nop	
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	cmp	rdx, rcx
	jl	.label_1715
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_1723
.label_1715:
	mov	rcx, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x240], rcx
	jl	.label_1726
	cmp	rcx, rax
	lea	rdi, [rdi]
	jge	.label_1726
.label_1723:
	add	ebp, 2
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x90]
	lea	rdi, [rdi]
	mov	esi, ebp
	call	extend_buffers
	mov	dword ptr [rsp + 0x24c], eax
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1731
.label_1726:
	test	byte ptr [r14 + 0x68], 0x20
	jne	.label_1733
.label_1680:
	mov	rax, qword ptr [rsp + 0xd8]
	lea	rcx, [rax + 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xd8], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	movzx	ebp, byte ptr [rcx + rax]
.label_1753:
	mov	rax, qword ptr [r14 + 0x58]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_1743
	mov	qword ptr [rsp + 0x228], r15
	mov	r15, qword ptr [r14 + 0x60]
	lea	rdi, [rdi]
	test	r15, r15
	nop	
	jne	.label_1745
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x128]
	mov	rsi, r14
	lea	rdi, [rdi]
	call	build_trtable
	test	al, al
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x228]
	lea	rdi, [rdi]
	jne	.label_1753
	mov	dword ptr [rsp + 0x24c], 0xc
	xor	ebx, ebx
	jmp	.label_1694
.label_1743:
	mov	rbx, qword ptr [rax + rbp*8]
.label_1694:
	cmp	qword ptr [rsp + 0x148], 0
	je	.label_1761
	lea	rdi, [rsp + 0x24c]
	lea	rsi, [rsp + 0x90]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	merge_state_with_log
	mov	rsp, rsp
	mov	rbx, rax
.label_1761:
	mov	rbp, rbp
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_1766
	nop	
	cmp	dword ptr [rsp + 0x24c], 0
	lea	rdi, [rdi]
	jne	.label_1644
	mov	rax, qword ptr [rsp + 0x148]
	lea	rdi, [rdi]
	test	rax, rax
	setne	cl
	lea	rsi, [rsi]
	and	cl, byte ptr [rsp + 0x25f]
	nop	
	movzx	ecx, cl
	cmp	ecx, 1
	mov	rbp, rbp
	je	.label_1771
	jmp	.label_1639
.label_1792:
	mov	rax, qword ptr [rsp + 0x148]
.label_1771:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xd8]
	nop	
	mov	rcx, qword ptr [rsp + 0x150]
	nop	dword ptr [rax + rax]
.label_1788:
	mov	rbp, rbp
	cmp	rdx, rcx
	jge	.label_1639
	lea	rsi, [rdx + 1]
	mov	qword ptr [rsp + 0xd8], rsi
	lea	rdi, [rdi]
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	nop	
	je	.label_1788
	xor	edx, edx
	lea	rdi, [rsp + 0x24c]
	mov	rsp, rsp
	lea	rsi, [rsp + 0x90]
	call	merge_state_with_log
	mov	rbx, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_1820
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x24c]
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1792
.label_1820:
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1639
.label_1766:
	mov	eax, dword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_1802
	mov	r14, qword ptr [rsp + 0x38]
.label_1768:
	mov	rbp, rbp
	mov	al, byte ptr [rbx + 0x68]
	test	al, 0x10
	mov	rbp, rbp
	jne	.label_1805
	mov	qword ptr [rsp + 0x38], r14
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xd8]
	nop	
	jmp	.label_1808
.label_1805:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xd8]
	test	al, al
	jns	.label_1811
	lea	rdi, [rsp + 0x90]
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rdx, rbp
	call	check_halt_state_context
	mov	rbp, rbp
	test	rax, rax
	nop	
	jne	.label_1811
	mov	qword ptr [rsp + 0x38], r14
.label_1808:
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf8], rbp
	lea	rdi, [rdi]
	mov	r14, rbx
	nop	
	jg	.label_1732
	jmp	.label_1639
.label_1811:
	nop	
	test	r12b, r12b
	mov	r15, rbp
	mov	eax, 1
	mov	ecx, 0
	jne	.label_1640
	jmp	.label_1647
.label_1639:
	mov	rcx, qword ptr [rsp + 0x1b0]
	nop	
	test	rcx, rcx
	je	.label_1648
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x38]
	nop	
	add	qword ptr [rcx], rax
	mov	rbp, r15
	mov	rsp, rsp
	jmp	.label_1647
.label_1648:
	mov	rbp, rbp
	mov	rbp, r15
.label_1647:
	mov	byte ptr [rsp + 0x227], r12b
	mov	rbp, rbp
	cmp	rbp, -1
	mov	r12, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x1b8]
	je	.label_1656
	mov	ecx, 0xc
	mov	rbp, rbp
	cmp	rbp, -2
	nop	
	je	.label_1638
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x40], 1
	mov	rsp, rsp
	seta	al
	mov	qword ptr [rsp + 0x138], rbp
	mov	rcx, qword ptr [rsp + 0x260]
	test	byte ptr [rcx + 0x38], 0x10
	lea	rsi, [rsi]
	sete	bl
	and	bl, al
	mov	rbp, rbp
	je	.label_1667
	mov	rax, qword ptr [rsp + 0x148]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0x90]
	mov	rdx, rbp
	call	check_halt_state_context
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x140], rax
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x80]
	jmp	.label_1683
.label_1667:
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x80]
	cmp	qword ptr [r12 + 0x98], 0
	nop	
	je	.label_1690
	mov	rax, qword ptr [rsp + 0x148]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x90]
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	check_halt_state_context
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x140], rax
	lea	rdi, [rdi]
	test	bl, 1
	mov	rsp, rsp
	je	.label_1702
.label_1683:
	nop	
	test	byte ptr [r12 + 0xb0], 1
	mov	rsp, rsp
	jne	.label_1708
.label_1702:
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x98], 0
	mov	rsp, rsp
	je	.label_1690
.label_1708:
	mov	qword ptr [rsp + 0x80], r12
	mov	rbp, rbp
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbp, rax
	lea	rdi, [rdi]
	ja	.label_1644
	mov	r14, qword ptr [rsp + 0x128]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x140]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x240], rax
	lea	rsi, [rsi]
	lea	r12, [rbp*8 + 8]
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsp, rsp
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbx, rax
	mov	r15d, 0
	je	.label_1728
	cmp	qword ptr [r14 + 0x98], 0
	lea	rdi, [rdi]
	je	.label_1730
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], r14
	mov	rdi, r12
	mov	rbp, rbp
	call	malloc
	mov	r15, rax
	nop	
	test	r15, r15
	je	.label_1736
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	mov	rdx, r12
	mov	rsp, rsp
	call	memset
	mov	r12, rbx
	mov	qword ptr [rsp + 0x38], r12
	mov	qword ptr [rsp + 0x1d0], r12
	nop	
	mov	qword ptr [rsp + 0x1d8], r15
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x240]
	mov	qword ptr [rsp + 0x1e0], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x1e8], rbp
	lea	rax, [rsp + 0x1f0]
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x90]
	mov	rsp, rsp
	lea	rsi, [rsp + 0x1d0]
	lea	rsi, [rsi]
	call	sift_states_backward
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x1b8]
	jne	.label_1800
.label_1705:
	mov	rbp, rbp
	mov	rsi, qword ptr [r12]
	test	rsi, rsi
	mov	rsp, rsp
	jne	.label_1642
	cmp	qword ptr [r15], 0
	nop	
	mov	esi, 0
	jne	.label_1642
	lea	rdi, [rdi]
	mov	r12, r15
	mov	rbp, rbp
	test	rbp, rbp
	jle	.label_1754
	mov	rax, qword ptr [rsp + 0x148]
	dec	rbp
	nop	dword ptr [rax]
.label_1780:
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rbp, rbp
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_1775
	lea	rdi, [rdi]
	test	byte ptr [rsi + 0x68], 0x10
	nop	
	jne	.label_1778
.label_1775:
	lea	rcx, [rbp - 1]
	nop	
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, 2
	mov	rbp, rcx
	jge	.label_1780
	jmp	.label_1754
.label_1778:
	mov	rbp, rbp
	lea	r15, [rsp + 0x90]
	mov	rdi, r15
	mov	rdx, rbp
	call	check_halt_state_context
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x240], rax
	lea	rdx, [rbp*8 + 8]
	mov	rsp, rsp
	xor	esi, esi
	mov	rdi, r12
	call	memset
	mov	rcx, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x1d0], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x1d8], r12
	mov	rax, qword ptr [rsp + 0x240]
	mov	qword ptr [rsp + 0x1e0], rax
	mov	qword ptr [rsp + 0x1e8], rbp
	lea	rax, [rsp + 0x1f0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, r15
	mov	r15, r12
	mov	r12, rcx
	lea	rsi, [rsp + 0x1d0]
	mov	rbp, rbp
	call	sift_states_backward
	nop	
	test	eax, eax
	mov	rbp, rbp
	je	.label_1705
	lea	rsi, [rsi]
	mov	r12, r15
	jmp	.label_1654
.label_1730:
	nop	
	mov	qword ptr [rsp + 0x38], rbx
	nop	
	mov	qword ptr [rsp + 0x1d0], rbx
	mov	qword ptr [rsp + 0x1d8], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x240]
	mov	qword ptr [rsp + 0x1e0], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x1e8], rbp
	mov	rsp, rsp
	lea	rax, [rsp + 0x1f0]
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x90]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x1d0]
	mov	rsp, rsp
	call	sift_states_backward
	test	eax, eax
	mov	r12d, 0
	mov	rbx, qword ptr [rsp + 0x78]
	mov	r14, qword ptr [rsp + 0x1b8]
	jne	.label_1654
	mov	rax, qword ptr [rsp + 0x38]
	nop	
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	mov	r12d, 0
	jne	.label_1660
.label_1754:
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	call	free
	mov	rdi, r12
	mov	rbp, rbp
	call	free
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 8]
.label_1656:
	mov	rbp, rbp
	lea	rdi, [rsp + 0x90]
	call	match_ctx_clean
.label_1777:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x88]
	add	rbp, qword ptr [rsp + 0x1c0]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rbp
	cmp	rbp, rbx
	mov	rbp, rbp
	mov	ecx, 1
	jl	.label_1638
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r12
	cmp	r14, rbp
	jge	.label_1681
	jmp	.label_1638
.label_1666:
	test	cl, cl
	js	.label_1686
	test	r12b, r12b
	lea	rsi, [rsi]
	mov	r15, r14
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rsi, [rsi]
	jne	.label_1691
	mov	rbp, r14
	jmp	.label_1647
.label_1645:
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x23f], cl
	lea	rbp, [rbx + 8]
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	lea	rdi, [rsp + 0x90]
	mov	rsi, rbp
	call	check_subexp_matching_top
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x24c], eax
	test	eax, eax
	jne	.label_1704
	lea	rsi, [rsi]
	test	byte ptr [rbx + 0x68], 0x40
	nop	
	je	.label_1709
	mov	rsp, rsp
	lea	rdi, [rsp + 0x90]
	mov	rsi, rbp
	call	transit_state_bkref
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x24c], eax
	mov	rsp, rsp
	test	eax, eax
	jne	.label_1714
.label_1709:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x30], 0
	mov	cl, byte ptr [rsp + 0x23f]
	jmp	.label_1675
.label_1686:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x90]
	mov	rsi, rbx
	mov	rdx, r14
	call	check_halt_state_context
	cmp	rax, 1
	sbb	r15, r15
	nop	
	test	rax, rax
	sete	cl
	lea	rsi, [rsi]
	setne	al
	movzx	eax, al
	mov	rsp, rsp
	or	cl, r12b
	je	.label_1725
	mov	rbp, rbp
	or	r15, r14
	jmp	.label_1691
.label_1725:
	mov	rbp, r14
	mov	rsp, rsp
	jmp	.label_1647
.label_1642:
	nop	
	mov	qword ptr [rsp + 0x38], r12
	lea	rsi, [rsi]
	test	rbp, rbp
	js	.label_1779
	mov	rsp, rsp
	xor	r12d, r12d
	jmp	.label_1734
.label_1706:
	mov	rax, qword ptr [rsp + 0x38]
	nop	
	mov	rsi, qword ptr [rax + r12*8 + 8]
	inc	r12
.label_1734:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + r12*8]
	lea	rsi, [rsi]
	test	rsi, rsi
	mov	rbp, rbp
	je	.label_1649
	test	rdx, rdx
	nop	
	je	.label_1742
	add	rsi, 8
	mov	rbp, rbp
	add	rdx, 8
	lea	rbx, [rsp + 0x50]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	re_node_set_init_union
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x24c], eax
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1751
	mov	rbp, rbp
	lea	rdi, [rsp + 0x24c]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	re_acquire_state
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + r12*8], rax
	nop	
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x24c]
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1742
	jmp	.label_1751
.label_1649:
	nop	
	mov	rax, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	qword ptr [rax + r12*8], rdx
.label_1742:
	cmp	r12, rbp
	jl	.label_1706
.label_1779:
	xor	eax, eax
.label_1751:
	nop	
	mov	rdi, r15
	nop	
	mov	ebx, eax
	call	free
	nop	
	mov	eax, ebx
	test	eax, eax
	mov	rbp, rbp
	mov	r12d, 0
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x1b8]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	je	.label_1660
	jmp	.label_1654
.label_1800:
	mov	qword ptr [rsp + 0x38], r12
	mov	r12, r15
.label_1654:
	mov	r15, rbx
	nop	
	mov	rdi, qword ptr [rsp + 0x38]
	mov	ebp, eax
	call	free
	mov	rdi, r12
	lea	rdi, [rdi]
	call	free
	nop	
	test	ebp, ebp
	lea	rdi, [rdi]
	mov	eax, ebp
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x80]
	lea	rsi, [rsi]
	je	.label_1690
	mov	ecx, eax
	cmp	ecx, 1
	mov	r12, qword ptr [rsp + 8]
	mov	rbx, r15
	je	.label_1656
	mov	rbp, rbp
	jmp	.label_1638
.label_1704:
	lea	rsi, [rsi]
	movsxd	rbp, eax
	mov	rsp, rsp
	jmp	.label_1647
.label_1714:
	movsxd	rbp, eax
	lea	rsi, [rsi]
	jmp	.label_1647
.label_1681:
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	cmp	eax, 4
	ja	.label_1821
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1796]]
.label_3521:
	lea	rsi, [rsi]
	cmp	rbp, rbx
	mov	rax, rbp
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x210]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x250]
	jl	.label_1798
	nop	dword ptr [rax + rax]
.label_1815:
	xor	eax, eax
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jge	.label_1807
	mov	rbp, rbp
	movzx	eax, byte ptr [rdx + rbp]
.label_1807:
	test	rsi, rsi
	je	.label_1810
	movzx	eax, byte ptr [rsi + rax]
.label_1810:
	cmp	byte ptr [r13 + rax], 0
	jne	.label_1812
	nop	
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x88], rax
	lea	rdi, [rdi]
	cmp	rbp, rbx
	mov	rbp, rax
	jg	.label_1815
	jmp	.label_1798
.label_1821:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	jmp	.label_1651
	nop	word ptr cs:[rax + rax]
.label_1670:
	nop	
	add	rbp, qword ptr [rsp + 0x1c0]
	mov	qword ptr [rsp + 0x88], rbp
	cmp	rbp, rbx
	lea	rsi, [rsi]
	mov	ecx, 1
	lea	rdi, [rdi]
	jl	.label_1638
	lea	rdi, [rdi]
	cmp	rbp, r14
	jle	.label_1651
	mov	rsp, rsp
	jmp	.label_1638
.label_1668:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x90]
	mov	rsi, rbp
	nop	
	mov	edx, dword ptr [rsp + 0x2b0]
	call	re_string_reconstruct
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_1638
	mov	rbp, qword ptr [rsp + 0x88]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rcx, rbp
	mov	rbp, rbp
	sub	rcx, rax
	lea	rsi, [rsi]
	jmp	.label_1662
	nop	word ptr cs:[rax + rax]
.label_1651:
	mov	rcx, rbp
	sub	rcx, rax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rsp + 0xc8]
	jae	.label_1668
.label_1662:
	mov	rdx, qword ptr [rsp + 0x68]
	cmp	rbp, rdx
	nop	
	mov	edx, 0
	nop	
	jge	.label_1674
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x98]
	movzx	edx, byte ptr [rdx + rcx]
.label_1674:
	cmp	byte ptr [r13 + rdx], 0
	mov	rbp, rbp
	je	.label_1670
	nop	
	jmp	.label_1684
.label_3522:
	nop	
	cmp	rbp, r14
	mov	rcx, qword ptr [rsp + 0x210]
	mov	rdx, qword ptr [rsp + 0x250]
	jge	.label_1685
	nop	word ptr cs:[rax + rax]
.label_1699:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rcx + rbp]
	cmp	byte ptr [r13 + rax], 0
	mov	rsp, rsp
	jne	.label_1685
	lea	rsi, [rsi]
	inc	rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x88], rbp
	mov	rsp, rsp
	cmp	rbp, r14
	nop	
	jl	.label_1699
	jmp	.label_1685
.label_3523:
	cmp	rbp, r14
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x210]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x250]
	lea	rdi, [rdi]
	jge	.label_1685
	nop	dword ptr [rax]
.label_1716:
	mov	rsp, rsp
	movzx	eax, byte ptr [rcx + rbp]
	movzx	eax, byte ptr [rdx + rax]
	cmp	byte ptr [r13 + rax], 0
	lea	rdi, [rdi]
	jne	.label_1685
	mov	rbp, rbp
	inc	rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], rbp
	mov	rbp, rbp
	cmp	rbp, r14
	nop	
	jl	.label_1716
.label_1685:
	mov	qword ptr [rsp + 0x250], rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x210], rcx
	cmp	rbp, r14
	lea	rsi, [rsi]
	jne	.label_1684
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	r14, rcx
	mov	rcx, qword ptr [rsp + 0x210]
	jge	.label_1724
	movzx	eax, byte ptr [rcx + r14]
.label_1724:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x250]
	mov	rbp, rbp
	test	rcx, rcx
	je	.label_1729
	mov	rsp, rsp
	movzx	eax, byte ptr [rcx + rax]
.label_1729:
	mov	rsp, rsp
	mov	ecx, 1
	nop	
	cmp	byte ptr [r13 + rax], 0
	mov	rbp, r14
	lea	rdi, [rdi]
	jne	.label_1684
	mov	rbp, rbp
	jmp	.label_1638
.label_1812:
	mov	rax, rbp
.label_1798:
	mov	rbp, rbp
	mov	ecx, 1
	mov	rsp, rsp
	cmp	rax, rbx
	mov	rbp, rax
	jl	.label_1638
.label_1684:
	lea	rdi, [rsp + 0x90]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x2b0]
	mov	rsp, rsp
	call	re_string_reconstruct
	mov	ecx, eax
	lea	rdi, [rdi]
	test	ecx, ecx
	je	.label_1744
	jmp	.label_1638
.label_1731:
	cmp	eax, 0xc
	nop	
	jne	.label_1748
.label_1644:
	nop	
	mov	ecx, 0xc
.label_1638:
	lea	rsi, [rsi]
	mov	ebx, ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x148]
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x98], 0
	mov	rsp, rsp
	je	.label_1755
	nop	
	lea	rdi, [rsp + 0x90]
	nop	
	call	match_ctx_clean
	mov	rdi, qword ptr [rsp + 0x188]
	nop	
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x168]
	lea	rsi, [rsi]
	call	free
.label_1755:
	nop	
	mov	rdi, qword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [rsp + 0xa8]
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x11b], 0
	lea	rsi, [rsi]
	je	.label_1770
	mov	rdi, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	call	free
.label_1770:
	lea	rdi, [rdi]
	mov	eax, ebx
.label_1679:
	lea	rsi, [rsi]
	add	rsp, 0x268
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_1703:
	lea	rdi, [rdi]
	cmp	qword ptr [r10 + 0x10], 0
	je	.label_1781
	cmp	byte ptr [rdi + 0x38], 0
	js	.label_1784
.label_1781:
	lea	rdi, [rdi]
	xor	ecx, ecx
	test	rbp, rbp
	nop	
	je	.label_1785
	mov	rbp, rbp
	test	r8, r8
	mov	ebp, 0
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	jne	.label_1679
	jmp	.label_1657
.label_1791:
	cmp	dword ptr [rsp + 0x24c], 0xc
	mov	rsp, rsp
	je	.label_1644
	nop	
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.22_1
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	mov	rbp, rbp
	call	__assert_fail
.label_1784:
	mov	rcx, r8
	jmp	.label_1657
.label_1785:
	xor	ebp, ebp
	mov	rbp, rbp
	jmp	.label_1657
.label_1660:
	mov	rdi, qword ptr [rsp + 0x148]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x148], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x240]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x140], rax
	nop	
	mov	qword ptr [rsp + 0x138], rbp
	mov	r12, qword ptr [rsp + 0x80]
.label_1690:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x80], r12
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x2a0]
	cmp	qword ptr [rsp + 0x230], rax
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x2a8]
	je	.label_1638
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x40], 2
	nop	
	jb	.label_1665
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x2a0]
	mov	rsp, rsp
	lea	edx, [rsi + 7]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x230]
	sub	edx, edi
	lea	rax, [rsi - 2]
	mov	rbp, rbp
	sub	rax, rdi
	nop	
	mov	ecx, 1
	lea	rsi, [rsi]
	test	dl, 7
	je	.label_1819
	mov	rbp, rbp
	lea	rdx, [r14 + 0x10]
	lea	rdi, [rdi]
	lea	esi, [rsi + 7]
	sub	esi, edi
	nop	
	and	esi, 7
	mov	rbp, rbp
	xor	edi, edi
.label_1727:
	mov	rcx, rdi
	mov	qword ptr [rdx + 8], -1
	nop	
	mov	qword ptr [rdx], -1
	mov	rbp, rbp
	lea	rdi, [rcx + 1]
	add	rdx, 0x10
	cmp	rsi, rdi
	lea	rsi, [rsi]
	jne	.label_1727
	nop	
	add	rcx, 2
.label_1819:
	mov	rsp, rsp
	cmp	rax, 7
	jb	.label_1665
	nop	
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	sub	rax, rcx
	nop	
	shl	rcx, 4
	lea	rcx, [rcx + r14 + 0x70]
.label_1671:
	mov	qword ptr [rcx - 0x68], -1
	mov	qword ptr [rcx - 0x70], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 0x58], -1
	mov	qword ptr [rcx - 0x60], -1
	mov	qword ptr [rcx - 0x48], -1
	mov	qword ptr [rcx - 0x50], -1
	lea	rdi, [rdi]
	mov	qword ptr [rcx - 0x38], -1
	mov	qword ptr [rcx - 0x40], -1
	lea	rsi, [rsi]
	mov	qword ptr [rcx - 0x28], -1
	mov	qword ptr [rcx - 0x30], -1
	mov	qword ptr [rcx - 0x18], -1
	lea	rdi, [rdi]
	mov	qword ptr [rcx - 0x20], -1
	mov	qword ptr [rcx - 8], -1
	mov	qword ptr [rcx - 0x10], -1
	mov	qword ptr [rcx + 8], -1
	nop	
	mov	qword ptr [rcx], -1
	add	rcx, 0x80
	add	rax, -8
	mov	rsp, rsp
	jne	.label_1671
.label_1665:
	nop	
	mov	qword ptr [r14], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x138]
	mov	qword ptr [r14 + 8], rax
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_1707
	mov	rax, qword ptr [rsp + 0x260]
	mov	al, byte ptr [rax + 0x38]
	lea	rdi, [rdi]
	and	al, 0x10
	jne	.label_1707
	mov	rax, qword ptr [rsp + 0x80]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_1718
	nop	
	xor	eax, eax
	jmp	.label_1720
.label_1736:
	lea	rsi, [rsi]
	mov	rax, rbx
	mov	qword ptr [rsp + 0x1a0], rax
.label_1728:
	mov	rdi, qword ptr [rsp + 0x1a0]
	nop	
	call	free
	mov	rsp, rsp
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	jmp	.label_1644
.label_1718:
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x98], 0
	setg	al
.label_1720:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x260]
	movzx	r8d, al
	lea	rsi, [rsp + 0x90]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	rcx, r14
	lea	rsi, [rsi]
	call	set_regs
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	test	ecx, ecx
	mov	rsp, rsp
	jne	.label_1638
.label_1707:
	nop	
	mov	r10b, byte ptr [rsp + 0x11c]
	mov	r8, qword ptr [rsp + 0xa8]
	lea	rdx, [r14 + 8]
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x230]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x2a0]
	mov	rsp, rsp
	lea	r11, [rsp + 0xc8]
	mov	rsp, rsp
	jmp	.label_1738
.label_1765:
	mov	rbx, qword ptr [rsp + 0xc0]
	cmp	rdi, rbx
	lea	rsi, [rsi]
	lea	rdi, [r8 + rdi*8]
	cmove	rdi, r11
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rdx - 8], rdi
	lea	rsi, [rsi]
	mov	rsi, rcx
	shl	rsi, 4
	mov	rsp, rsp
	lea	rbp, [r14 + rsi + 8]
	mov	rsi, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rsi, rbx
	lea	rsi, [r8 + rsi*8]
	cmove	rsi, r11
	mov	rbx, qword ptr [rsi]
	mov	rsp, rsp
	mov	qword ptr [rdx], rbx
	jmp	.label_1752
.label_1738:
	mov	rdi, qword ptr [rdx - 8]
	cmp	rdi, -1
	nop	
	je	.label_1763
	test	r10b, r10b
	jne	.label_1765
	mov	rbp, rbp
	mov	rbx, qword ptr [rdx]
	mov	rsp, rsp
	mov	rbp, rdx
.label_1752:
	nop	
	mov	rsi, qword ptr [rsp + 0x88]
	add	rdi, rsi
	nop	
	mov	qword ptr [rdx - 8], rdi
	add	rbx, rsi
	mov	qword ptr [rbp], rbx
.label_1763:
	inc	rcx
	add	rdx, 0x10
	dec	rax
	cmp	r9, rax
	jne	.label_1738
	test	r9, r9
	mov	rdi, qword ptr [rsp + 0x80]
	jle	.label_1774
	mov	rbp, rbp
	lea	rcx, [r9 - 1]
	lea	rdi, [rdi]
	xor	eax, eax
	test	r9b, 3
	je	.label_1776
	nop	
	mov	rdx, qword ptr [rsp + 0x40]
	nop	
	shl	rdx, 4
	add	rdx, r14
	nop	
	mov	esi, r9d
	and	esi, 3
	xor	eax, eax
.label_1786:
	inc	rax
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 8], -1
	mov	qword ptr [rdx], -1
	add	rdx, 0x10
	cmp	rsi, rax
	lea	rdi, [rdi]
	jne	.label_1786
.label_1776:
	lea	rsi, [rsi]
	cmp	rcx, 3
	mov	rsp, rsp
	jb	.label_1774
	mov	rcx, r9
	lea	rdi, [rdi]
	sub	rcx, rax
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	shl	rdx, 4
	mov	rsp, rsp
	add	rdx, r14
	lea	rsi, [rsi]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, rdx
	mov	rbp, rbp
	xor	edx, edx
.label_1698:
	nop	
	mov	qword ptr [rax + rdx + 8], -1
	mov	qword ptr [rax + rdx], -1
	mov	rsp, rsp
	mov	qword ptr [rax + rdx + 0x18], -1
	nop	
	mov	qword ptr [rax + rdx + 0x10], -1
	mov	rsp, rsp
	mov	qword ptr [rax + rdx + 0x28], -1
	mov	qword ptr [rax + rdx + 0x20], -1
	mov	qword ptr [rax + rdx + 0x38], -1
	mov	rbp, rbp
	mov	qword ptr [rax + rdx + 0x30], -1
	nop	
	add	rdx, 0x40
	lea	rdi, [rdi]
	add	rcx, -4
	jne	.label_1698
.label_1774:
	mov	rax, qword ptr [rdi + 0xe0]
	mov	rsp, rsp
	xor	ecx, ecx
	nop	
	test	rax, rax
	je	.label_1638
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_1638
	sub	qword ptr [rsp + 0x10], r9
	lea	rdi, [r14 + 0x18]
	mov	rsp, rsp
	xor	edx, edx
.label_1655:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + rdx*8]
	mov	rsp, rsp
	cmp	rdx, rsi
	nop	
	je	.label_1643
	lea	rsi, [rsi]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rdi - 8], rsi
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rsi, qword ptr [rsi + 0xe0]
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x18]
	mov	qword ptr [rdi], rsi
.label_1643:
	lea	rsi, [rsi]
	inc	rdx
	add	rdi, 0x10
	lea	rsi, [rsi]
	xor	ecx, ecx
	cmp	qword ptr [rsp + 0x10], rdx
	nop	
	jne	.label_1655
	jmp	.label_1638
.label_1748:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.22_1
	mov	edx, 0x46c
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	mov	rsp, rsp
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a090
	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:

	nop
	sub	rsp, 0x18
	mov	qword ptr [rsp], r8
	mov	dword ptr [rsp + 8], 1
	xor	r8d, r8d
	mov	r9, rdx
	mov	rbp, rbp
	call	re_search_stub
	nop	
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a0c0

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdi
	test	rcx, rcx
	mov	r14, -1
	mov	rsp, rsp
	js	.label_1822
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], r9
	cmp	rcx, rdx
	nop	
	jg	.label_1822
	nop	
	mov	r14, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	xor	r12d, r12d
	mov	rbp, rbp
	add	r8, rcx
	cmovns	r12, r8
	cmp	r8, rdx
	cmovg	r12, rdx
	movzx	r13d, byte ptr [rbx + 0x38]
	cmp	r12, rcx
	mov	rsp, rsp
	mov	al, r13b
	lea	rdi, [rdi]
	jle	.label_1823
	test	r13b, 8
	mov	rbp, rbp
	mov	al, r13b
	lea	rdi, [rdi]
	jne	.label_1823
	mov	rax, qword ptr [rbx + 0x20]
	test	rax, rax
	nop	
	mov	al, r13b
	je	.label_1823
	mov	rdi, rbx
	mov	rbp, rcx
	mov	r15, rdx
	call	rpl_re_compile_fastmap
	mov	rsp, rsp
	mov	rdx, r15
	mov	rcx, rbp
	nop	
	mov	al, byte ptr [rbx + 0x38]
.label_1823:
	xor	esi, esi
	test	r14, r14
	lea	rdi, [rdi]
	mov	ebp, 1
	je	.label_1824
	mov	qword ptr [rsp + 0x38], rdx
	mov	rsp, rsp
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	and	cl, 0x10
	jne	.label_1840
	nop	
	and	al, 6
	movzx	eax, al
	cmp	eax, 4
	jne	.label_1825
	mov	rax, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbx + 0x30]
	cmp	rax, rbp
	ja	.label_1828
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	cmovle	r14, rcx
	nop	
	mov	ebp, 1
	cmovg	rbp, rax
	mov	rbp, rbp
	jmp	.label_1832
.label_1824:
	nop	
	mov	qword ptr [rsp + 0x38], rdx
	mov	r15, rcx
	lea	rsi, [rsi]
	jmp	.label_1840
.label_1825:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbx + 0x30]
.label_1828:
	mov	rsp, rsp
	inc	rbp
.label_1832:
	lea	rdi, [rdi]
	mov	rsi, r14
.label_1840:
	nop	
	mov	qword ptr [rsp + 0x28], rsi
	mov	rdi, rbp
	shl	rdi, 4
	mov	rbp, rbp
	call	malloc
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	r14, -2
	test	rax, rax
	mov	rdx, qword ptr [rsp + 0x38]
	je	.label_1822
	mov	cl, r13b
	nop	
	shr	cl, 5
	mov	rsp, rsp
	and	cl, 1
	and	r13d, 0x40
	movzx	ecx, cl
	shr	r13d, 5
	mov	rsp, rsp
	or	r13d, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x10], r13d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	r13, rax
	nop	
	mov	qword ptr [rsp], rbp
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rcx, r15
	lea	rdi, [rdi]
	mov	r8, r12
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x40]
	nop	
	call	re_search_internal
	nop	
	test	eax, eax
	je	.label_1848
	cmp	eax, 1
	sete	al
	mov	rbp, rbp
	movzx	r14d, al
	lea	rdi, [rdi]
	or	r14, 0xfffffffffffffffe
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsp, rsp
	jmp	.label_1835
.label_1848:
	mov	qword ptr [rsp + 0x38], r15
	mov	r12, qword ptr [rsp + 0x28]
	test	r12, r12
	mov	rdi, r13
	mov	rsp, rsp
	je	.label_1830
	mov	r8, r14
	mov	al, byte ptr [r8 + 0x38]
	lea	rsi, [rsi]
	shr	al, 1
	and	al, 3
	movzx	eax, al
	nop	
	cmp	eax, 2
	je	.label_1836
	lea	rsi, [rsi]
	lea	rbx, [rbp + 1]
	cmp	eax, 1
	nop	
	je	.label_1842
	mov	r13, r12
	mov	qword ptr [rsp + 0x40], rdi
	mov	rsp, rsp
	mov	r15, r8
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_1847
	lea	r12, [rbx*8]
	lea	rsi, [rsi]
	mov	rdi, r12
	call	malloc
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rsp, rsp
	mov	rax, r13
	mov	qword ptr [rax + 8], r14
	lea	rdi, [rdi]
	xor	r13d, r13d
	test	r14, r14
	je	.label_1841
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	r12, rax
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x10], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_1838
	mov	qword ptr [r12], rbx
	mov	r14d, 1
	mov	r8, r15
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x40]
	jmp	.label_1829
.label_1836:
	mov	rbx, qword ptr [r12]
	mov	r14d, 2
	cmp	rbx, rbp
	mov	rsp, rsp
	jae	.label_1829
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.24_0
	nop	
	mov	esi, OFFSET FLAT:.str.22_1
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_1842:
	mov	rsp, rsp
	mov	r15, rdi
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	mov	r14d, 1
	cmp	rbx, rax
	ja	.label_1827
	mov	rbx, rax
	mov	rdi, r15
.label_1829:
	test	rbp, rbp
	jle	.label_1837
	mov	rdx, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0x10]
	lea	rdi, [rdi]
	xor	esi, esi
	test	bpl, 1
	je	.label_1839
	mov	rax, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rdi + 8]
	mov	qword ptr [rcx], rax
	mov	esi, 1
.label_1839:
	lea	rdi, [rdi]
	cmp	rbp, 1
	mov	rbp, rbp
	je	.label_1834
	mov	rax, rbp
	lea	rsi, [rsi]
	sub	rax, rsi
	lea	rcx, [rcx + rsi*8 + 8]
	lea	rdx, [rdx + rsi*8 + 8]
	shl	rsi, 4
	mov	rbp, rbp
	lea	rsi, [rsi + rdi + 0x18]
	nop	
.label_1831:
	mov	rbx, qword ptr [rsi - 0x18]
	nop	
	mov	qword ptr [rdx - 8], rbx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsi - 0x10]
	mov	qword ptr [rcx - 8], rbx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi - 8]
	mov	qword ptr [rdx], rbx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rbx
	add	rcx, 0x10
	mov	rbp, rbp
	add	rsi, 0x20
	mov	rsp, rsp
	add	rdx, 0x10
	add	rax, -2
	jne	.label_1831
.label_1834:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12]
	jmp	.label_1844
.label_1837:
	xor	ebp, ebp
.label_1844:
	mov	rbp, rbp
	cmp	rbp, rbx
	jae	.label_1846
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [r12 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1843:
	mov	qword ptr [rcx + rbp*8], -1
	mov	rsp, rsp
	mov	qword ptr [rax + rbp*8], -1
	mov	rsp, rsp
	inc	rbp
	cmp	rbp, qword ptr [r12]
	lea	rdi, [rdi]
	jb	.label_1843
.label_1846:
	nop	
	mov	r13d, r14d
.label_1833:
	nop	
	mov	al, byte ptr [r8 + 0x38]
	add	r13b, r13b
	lea	rsi, [rsi]
	and	al, 0xf9
	mov	cl, r13b
	mov	rbp, rbp
	and	cl, 6
	mov	rsp, rsp
	or	cl, al
	lea	rdi, [rdi]
	and	r13b, 6
	lea	rdi, [rdi]
	mov	byte ptr [r8 + 0x38], cl
	mov	r14, -2
	mov	rbp, rbp
	je	.label_1835
.label_1830:
	mov	rsp, rsp
	mov	al, byte ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	r14, qword ptr [rdi]
	test	al, al
	je	.label_1835
	mov	rax, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	cmp	r14, rax
	jne	.label_1849
	nop	
	mov	r14, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	sub	r14, rax
.label_1835:
	lea	rsi, [rsi]
	call	free
.label_1822:
	mov	rax, r14
	mov	rbp, rbp
	add	rsp, 0x48
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_1827:
	mov	qword ptr [rsp + 0x40], r8
	mov	rdi, qword ptr [r12 + 8]
	mov	rsp, rsp
	lea	rsi, [rbx*8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [rsi]
	call	realloc
	lea	rsi, [rsi]
	xor	r13d, r13d
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1845
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	nop	
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1826
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 8], rcx
	mov	qword ptr [r12 + 0x10], rax
	mov	qword ptr [r12], rbx
	mov	r8, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rdi, r15
	jmp	.label_1829
.label_1838:
	mov	rsp, rsp
	mov	rdi, r14
	call	free
.label_1841:
	mov	r8, r15
	nop	
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	jmp	.label_1833
.label_1826:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	call	free
.label_1845:
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	jmp	.label_1833
.label_1847:
	mov	edi, OFFSET FLAT:.str.23
	nop	
	mov	esi, OFFSET FLAT:.str.22_1
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_1849:
	mov	edi, OFFSET FLAT:.str.21_1
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.22_1
	nop	
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x41a640
	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:

	mov	rbp, rbp
	sub	rsp, 0x18
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp + 8], 0
	nop	
	mov	r9, rdx
	call	re_search_stub
	mov	rsp, rsp
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a670
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	rbx, r8
	nop	
	mov	r15, rcx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	r13, rsi
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x68]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_1852
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	nop	
	js	.label_1854
	sub	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, r14
	jl	.label_1852
	lea	rsi, [rsi]
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1850
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	mov	rbp, rbp
	jle	.label_1855
	mov	rsp, rsp
	mov	rdi, rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdx
	nop	
	call	malloc
	lea	rsi, [rsi]
	mov	r12, rax
	lea	rsi, [rsi]
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	je	.label_1852
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r13
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	r13, rax
	nop	
	call	memcpy
	mov	rdi, r12
	mov	rsp, rsp
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x68]
	nop	
	mov	r9, r13
	nop	
	mov	r13, r12
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x18]
	jmp	.label_1850
.label_1854:
	mov	rbp, rbp
	inc	rax
	sub	rax, rbx
	mov	rsp, rsp
	cmp	rax, r14
	jle	.label_1851
.label_1852:
	mov	rsp, rsp
	mov	rax, -2
	jmp	.label_1853
.label_1851:
	nop	
	add	rbx, r14
	lea	rdi, [rdi]
	xor	r12d, r12d
	nop	
	mov	rdx, rbx
	jmp	.label_1850
.label_1855:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x10]
.label_1850:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], 1
	nop	
	xor	r8d, r8d
	mov	rsp, rsp
	mov	rsi, r13
	nop	
	mov	rcx, r9
	mov	rsp, rsp
	mov	r9, rbp
	lea	rsi, [rsi]
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	nop	
	call	free
	mov	rbp, rbp
	mov	rax, rbx
.label_1853:
	add	rsp, 0x28
	mov	rbp, rbp
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a820
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	rbp, rbp
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	rax, rbx
	or	rax, r14
	lea	rdi, [rdi]
	or	rax, rbp
	js	.label_1856
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	lea	rsi, [rsi]
	js	.label_1859
	mov	rbp, rbp
	sub	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, r14
	jl	.label_1856
	nop	
	lea	rdx, [rbx + r14]
	lea	rsi, [rsi]
	xor	r12d, r12d
	test	rbx, rbx
	nop	
	jle	.label_1860
	nop	
	mov	qword ptr [rsp + 0x20], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r9
	mov	rsp, rsp
	xor	r12d, r12d
	test	r14, r14
	lea	rdi, [rdi]
	jle	.label_1857
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_1856
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r14
	mov	r13, rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rdi, r12
	lea	rdi, [rdi]
	add	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x70]
	mov	r9, r13
	mov	r13, r12
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_1860
.label_1859:
	inc	rax
	lea	rdi, [rdi]
	sub	rax, rbx
	cmp	rax, r14
	mov	rbp, rbp
	jle	.label_1861
.label_1856:
	mov	rbp, rbp
	mov	rax, -2
	jmp	.label_1858
.label_1861:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	mov	rsp, rsp
	jmp	.label_1860
.label_1857:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
.label_1860:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp], rax
	mov	dword ptr [rsp + 8], 0
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, r12
	call	free
	nop	
	mov	rax, rbx
.label_1858:
	mov	rsp, rsp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41a9c0
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	lea	rdi, [rdi]
	mov	al, byte ptr [rdi + 0x38]
	lea	rdi, [rdi]
	and	al, 0xf9
	mov	r9b, al
	mov	rbp, rbp
	or	r9b, 2
	test	rdx, rdx
	mov	rsp, rsp
	je	.label_1862
	lea	rsi, [rsi]
	mov	al, r9b
.label_1862:
	cmove	r8, rdx
	cmove	rcx, rdx
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x10], r8
	mov	qword ptr [rsi + 8], rcx
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41aa00

	.globl free_state
	.type free_state, @function
free_state:
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x30]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x48]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x50]
	lea	rcx, [rbx + 8]
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	je	.label_1863
	mov	rdi, qword ptr [rax + 0x10]
	mov	rbp, rbp
	call	free
	nop	
	mov	rdi, qword ptr [rbx + 0x50]
	lea	rsi, [rsi]
	call	free
.label_1863:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x60]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x58]
	lea	rsi, [rsi]
	call	free
	mov	rdi, rbx
	pop	rbx
	mov	rsp, rsp
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41aa80

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r14
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	cmp	dword ptr [rbx + 0x90], 2
	lea	rdi, [rdi]
	jl	.label_1864
	mov	rax, r14
	lea	rdi, [rdi]
	shr	rax, 0x3d
	mov	ebp, 0xc
	lea	rdi, [rdi]
	jne	.label_1865
	nop	
	mov	rdi, qword ptr [rbx + 0x10]
	nop	
	lea	rsi, [r14*4]
	lea	rsi, [rsi]
	call	realloc
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1865
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_1864
	lea	rsi, [r14*8]
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_1865
	mov	qword ptr [rbx + 0x18], rax
.label_1864:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1866
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	mov	rsp, rsp
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_1865
	nop	
	mov	qword ptr [rbx + 8], rax
.label_1866:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x40], r14
	mov	rsp, rsp
	xor	ebp, ebp
.label_1865:
	mov	eax, ebp
	nop	
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41ab50

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x78
	mov	r12, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [r12 + 0x30]
	mov	r13, qword ptr [r12 + 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x58]
	lea	rsi, [rsi]
	cmp	r13, rax
	nop	
	cmovg	r13, rax
	cmp	byte ptr [r12 + 0x8a], 0
	jne	.label_1887
	cmp	qword ptr [r12 + 0x78], 0
	jne	.label_1887
	cmp	byte ptr [r12 + 0x8c], 0
	lea	rsi, [rsi]
	je	.label_1902
.label_1887:
	mov	rbp, rbp
	mov	rbx, qword ptr [r12 + 0x38]
	jmp	.label_1871
.label_1902:
	cmp	r13, r15
	mov	rsp, rsp
	jle	.label_1910
	lea	rax, [r12 + 0x78]
	nop	
	mov	qword ptr [rsp + 0x60], rax
	nop	
	lea	r14, [r12 + 0x20]
	jmp	.label_1872
.label_1874:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	lea	rsi, [rsi]
	jb	.label_1917
	lea	rdi, [rdi]
	cmp	rbp, -2
	jne	.label_1920
	nop	
	mov	rax, qword ptr [r12 + 0x40]
	nop	
	cmp	rax, qword ptr [r12 + 0x58]
	mov	rbp, rbp
	jl	.label_1920
.label_1917:
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x28]
	mov	rbp, rbp
	add	rax, r15
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
	mov	rbp, rbp
	mov	rdx, qword ptr [r12 + 8]
	mov	rsp, rsp
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	rbp, -1
	mov	rsp, rsp
	je	.label_1868
.label_1885:
	mov	rax, r15
	jmp	.label_1883
.label_1868:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
	jmp	.label_1885
	nop	word ptr cs:[rax + rax]
.label_1872:
	nop	
	mov	qword ptr [rsp + 0x50], r13
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r12]
	mov	rbx, qword ptr [r12 + 0x28]
	mov	rsp, rsp
	lea	rax, [rbx + r15]
	movzx	r13d, byte ptr [rbp + rax]
	test	r13b, r13b
	js	.label_1889
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	call	mbsinit
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1889
	call	__ctype_toupper_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + r13*4]
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + r15], al
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	lea	rsi, [rsi]
	mov	rax, r15
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	jmp	.label_1883
	nop	word ptr cs:[rax + rax]
.label_1889:
	mov	r13, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	mov	rdx, r13
	sub	rdx, r15
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x70], rax
	add	rbp, rbx
	nop	
	add	rbp, r15
	lea	rdi, [rsp + 0xc]
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	rbp, rax
	lea	rax, [rbp - 1]
	mov	rsp, rsp
	cmp	rax, -4
	ja	.label_1874
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsp, rsp
	call	towupper
	lea	rdi, [rdi]
	mov	ebx, eax
	lea	rsi, [rsi]
	cmp	ebx, dword ptr [rsp + 0xc]
	nop	
	jne	.label_1884
	mov	rdi, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	add	rdi, r15
	nop	
	mov	rsi, qword ptr [r12]
	add	rsi, qword ptr [r12 + 0x28]
	nop	
	add	rsi, r15
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rsp, rsp
	call	memcpy
	nop	
	jmp	.label_1896
.label_1884:
	mov	rbp, rbp
	mov	esi, ebx
	mov	dword ptr [rsp + 0x68], esi
	mov	rbx, rbp
	lea	rdi, [rdi]
	lea	rbp, [rsp + 0x10]
	mov	rdi, rbp
	lea	rdx, [rsp + 0x70]
	call	wcrtomb
	cmp	rbx, rax
	lea	rdi, [rdi]
	jne	.label_1904
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, rbp
	mov	rdx, rbx
	nop	
	call	memcpy
	mov	rsp, rsp
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp + 0x68]
.label_1896:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	mov	rsp, rsp
	cmp	rax, rbx
	nop	
	jge	.label_1883
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rdi]
	lea	rdi, [rax + r15*4 + 4]
	mov	rbp, rbp
	lea	rdx, [rbp*4 - 4]
	lea	rdi, [rdi]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_1883:
	lea	rdi, [rdi]
	cmp	r13, rax
	mov	r15, rax
	mov	rbp, rbp
	jg	.label_1872
	jmp	.label_1877
.label_1904:
	mov	rbx, r15
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	jmp	.label_1878
.label_1920:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	mov	qword ptr [r14], rax
.label_1910:
	lea	rsi, [rsi]
	mov	rax, r15
.label_1877:
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x30], rax
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x38], rax
	jmp	.label_1921
.label_1871:
	cmp	r15, r13
	jge	.label_1891
	lea	r14, [r12 + 0x20]
	lea	rdi, [rdi]
	lea	rcx, [r12 + 0x78]
.label_1878:
	nop	
	mov	rdx, r13
	nop	
	sub	rdx, r15
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rcx]
	test	rax, rax
	jne	.label_1895
	mov	rbp, qword ptr [r12]
	mov	rbp, rbp
	add	rbp, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	add	rbp, rbx
.label_1888:
	nop	
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], r14
	call	rpl_mbrtowc
	mov	r14, rax
	mov	rsp, rsp
	lea	rax, [r14 - 1]
	cmp	rax, -4
	mov	rbp, rbp
	ja	.label_1913
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x50], r13
	nop	
	mov	edi, dword ptr [rsp + 8]
	mov	rsp, rsp
	call	towupper
	lea	rdi, [rdi]
	mov	r13d, eax
	cmp	r13d, dword ptr [rsp + 8]
	je	.label_1893
	mov	rsp, rsp
	lea	rdi, [rsp + 0x10]
	nop	
	lea	rdx, [rsp + 0x70]
	lea	rdi, [rdi]
	mov	esi, r13d
	lea	rsi, [rsi]
	call	wcrtomb
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rcx, r8
	sub	rcx, r14
	mov	rbp, rbp
	jne	.label_1876
	mov	rdi, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	add	rdi, r15
	lea	rsi, [rsp + 0x10]
	jmp	.label_1881
.label_1895:
	mov	rsp, rsp
	lea	rbp, [rsp + 0x10]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [r12 + 0x90]
	test	rcx, rcx
	nop	
	jle	.label_1888
	lea	rsi, [rsi]
	mov	r8, rbx
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1899:
	cmp	rsi, rdx
	jge	.label_1897
	mov	rdi, qword ptr [r12]
	add	rdi, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	add	rdi, r8
	movzx	edi, byte ptr [rsi + rdi]
	mov	bl, byte ptr [rax + rdi]
	mov	rbp, rbp
	mov	byte ptr [rsp + rsi + 0x10], bl
	lea	rsi, [rsi]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, rcx
	lea	rdi, [rdi]
	jl	.label_1899
	mov	rbx, r8
	nop	
	jmp	.label_1888
.label_1913:
	lea	rsi, [rsi]
	lea	rax, [r14 + 1]
	cmp	rax, 2
	lea	rsi, [rsi]
	jb	.label_1912
	lea	rsi, [rsi]
	cmp	r14, -2
	jne	.label_1915
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [r12 + 0x58]
	jl	.label_1915
.label_1912:
	mov	rax, qword ptr [r12 + 0x28]
	mov	rbp, rbp
	add	rax, rbx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 0x78]
	mov	al, byte ptr [rdx + rax]
	mov	rbp, rbp
	movzx	edx, al
	test	rcx, rcx
	jne	.label_1911
.label_1916:
	movzx	eax, al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + r15], al
	lea	rsi, [rsi]
	cmp	byte ptr [r12 + 0x8c], 0
	mov	rbp, rbp
	jne	.label_1907
.label_1919:
	nop	
	inc	rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rsp, rsp
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	nop	
	cmp	r14, -1
	lea	rsi, [rsi]
	je	.label_1900
.label_1924:
	mov	rbp, r15
	nop	
	jmp	.label_1871
.label_1876:
	lea	rsi, [rsi]
	cmp	r8, -1
	je	.label_1893
	lea	rbp, [r8 + r15]
	mov	rdi, qword ptr [r12 + 0x40]
	cmp	rbp, rdi
	jbe	.label_1894
.label_1915:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
.label_1891:
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x30], r15
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x38], rbx
.label_1921:
	xor	eax, eax
.label_1869:
	add	rsp, 0x78
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_1893:
	mov	rbp, rbp
	mov	rdi, qword ptr [r12 + 8]
	nop	
	add	rdi, r15
	nop	
	mov	rsi, rbp
.label_1881:
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	
	call	memcpy
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + 0x8c], 0
	lea	rsi, [rsi]
	je	.label_1909
	mov	rax, qword ptr [r12 + 0x18]
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	cmp	r14, 4
	mov	rbp, rbp
	jb	.label_1870
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	mov	rcx, r14
	mov	rbp, rbp
	and	rcx, 0xfffffffffffffffc
	je	.label_1870
	movq	xmm0, rbx
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [r14 - 4]
	mov	rsi, rdi
	mov	rsp, rsp
	shr	rsi, 2
	xor	edx, edx
	bt	rdi, 2
	nop	
	jb	.label_1875
	lea	rdi, [rdi]
	mov	edx, 1
	movq	xmm1, rdx
	nop	
	pslldq	xmm1, 8
	mov	rsp, rsp
	paddq	xmm1, xmm0
	lea	rdi, [rdi]
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_1494]]
	paddq	xmm2, xmm0
	movdqu	xmmword ptr [rax + r15*8], xmm1
	movdqu	xmmword ptr [rax + r15*8 + 0x10], xmm2
	mov	edx, 4
.label_1875:
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_1898
	lea	rsi, [rax + r15*8 + 0x30]
	lea	rdi, [rdi]
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	lea	rsi, [rsi]
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_1494]]
	nop	
.label_1879:
	movq	xmm3, rdx
	pshufd	xmm3, xmm3, 0x44
	mov	rbp, rbp
	paddq	xmm3, xmm0
	lea	rdi, [rdi]
	movdqa	xmm4, xmm3
	paddq	xmm4, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rsi + rdx*8 - 0x30], xmm4
	movdqu	xmmword ptr [rsi + rdx*8 - 0x20], xmm3
	lea	rsi, [rsi]
	lea	rdi, [rdx + 4]
	movq	xmm3, rdi
	pshufd	xmm3, xmm3, 0x44
	paddq	xmm3, xmm0
	lea	rsi, [rsi]
	movdqa	xmm4, xmm3
	lea	rsi, [rsi]
	paddq	xmm4, xmm1
	nop	
	paddq	xmm3, xmm2
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rsi + rdx*8 - 0x10], xmm4
	mov	rsp, rsp
	movdqu	xmmword ptr [rsi + rdx*8], xmm3
	nop	
	add	rdx, 8
	nop	
	cmp	rdx, rcx
	mov	rsp, rsp
	jne	.label_1879
.label_1898:
	mov	rsp, rsp
	cmp	r14, rcx
	nop	
	mov	rsi, rcx
	nop	
	je	.label_1909
.label_1870:
	mov	rcx, r14
	lea	rsi, [rsi]
	sub	rcx, rsi
	lea	rdx, [rsi + rbx]
	nop	
	add	rsi, r15
	lea	rax, [rax + rsi*8]
	nop	word ptr cs:[rax + rax]
.label_1925:
	mov	rsp, rsp
	mov	qword ptr [rax], rdx
	mov	rbp, rbp
	inc	rdx
	lea	rdi, [rdi]
	add	rax, 8
	dec	rcx
	mov	rsp, rsp
	jne	.label_1925
.label_1909:
	add	rbx, r14
	nop	
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax + r15*4], r13d
	lea	rbp, [r14 + r15]
	inc	r15
	mov	rsp, rsp
	cmp	r15, rbp
	jge	.label_1892
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	rsp, rsp
	mov	esi, 0xff
	nop	
	call	memset
	nop	
	mov	r13, qword ptr [rsp + 0x50]
	mov	r15, rbp
	lea	rdi, [rdi]
	jmp	.label_1871
.label_1892:
	mov	rbp, rbp
	mov	rbp, r15
	nop	
	mov	r13, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	jmp	.label_1871
.label_1897:
	mov	rbx, r8
	jmp	.label_1888
.label_1894:
	mov	rax, qword ptr [r12 + 0x18]
	test	rax, rax
	mov	rbp, rbp
	jne	.label_1918
	nop	
	shl	rdi, 3
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], r8
	lea	rdi, [rdi]
	call	malloc
	mov	r8, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x18], rax
	test	rax, rax
	je	.label_1867
.label_1918:
	mov	qword ptr [rsp + 0x58], rcx
	cmp	byte ptr [r12 + 0x8c], 0
	mov	rbp, rbp
	jne	.label_1873
	nop	
	test	r15, r15
	je	.label_1880
	mov	rbp, rbp
	xor	edx, edx
	cmp	r15, 4
	nop	
	jb	.label_1882
	mov	rbp, rbp
	xor	edx, edx
	nop	
	mov	rcx, r15
	and	rcx, 0xfffffffffffffffc
	je	.label_1882
	lea	rdi, [rdi]
	lea	rdi, [r15 - 4]
	mov	rsp, rsp
	mov	rsi, rdi
	lea	rdi, [rdi]
	shr	rsi, 2
	lea	rdi, [rdi]
	xor	edx, edx
	bt	rdi, 2
	lea	rsi, [rsi]
	jb	.label_1890
	mov	edx, 1
	movq	xmm0, rdx
	pslldq	xmm0, 8
	nop	
	movdqu	xmmword ptr [rax], xmm0
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_1494]]
	movdqu	xmmword ptr [rax + 0x10], xmm0
	nop	
	mov	edx, 4
.label_1890:
	lea	rsi, [rsi]
	test	rsi, rsi
	nop	
	je	.label_1908
	mov	rsp, rsp
	mov	esi, 1
	movq	xmm0, rsi
	pslldq	xmm0, 8
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_1494]]
.label_1914:
	movq	xmm2, rdx
	nop	
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	lea	rdi, [rdi]
	paddq	xmm2, xmm1
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rdx*8], xmm3
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rdx*8 + 0x10], xmm2
	nop	
	lea	rsi, [rdx + 4]
	movq	xmm2, rsi
	mov	rsp, rsp
	pshufd	xmm2, xmm2, 0x44
	nop	
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	mov	rbp, rbp
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdx*8 + 0x20], xmm3
	movdqu	xmmword ptr [rax + rdx*8 + 0x30], xmm2
	add	rdx, 8
	cmp	rdx, rcx
	lea	rdi, [rdi]
	jne	.label_1914
.label_1908:
	cmp	r15, rcx
	lea	rdi, [rdi]
	mov	rdx, rcx
	je	.label_1880
.label_1882:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_1882
.label_1880:
	mov	byte ptr [r12 + 0x8c], 1
.label_1873:
	mov	rdi, qword ptr [r12 + 8]
	mov	rbp, rbp
	add	rdi, r15
	lea	rsi, [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rdx, r8
	mov	qword ptr [rsp + 0x50], r8
	lea	rsi, [rsi]
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [r12 + 0x10]
	nop	
	mov	dword ptr [rax + r15*4], r13d
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x18]
	mov	qword ptr [rax + r15*8], rbx
	cmp	rdi, 2
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x60]
	jb	.label_1886
	mov	r9, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r12 + 0x18]
	lea	r10, [rdi - 1]
	mov	eax, 1
	lea	rsi, [rsi]
	cmp	r10, 4
	mov	rsp, rsp
	jb	.label_1905
	mov	rbp, rbp
	mov	rcx, r10
	and	rcx, 0xfffffffffffffffc
	lea	rsi, [rsi]
	mov	r13, r10
	and	r13, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_1905
	lea	rsi, [rsi]
	mov	rax, rcx
	or	rax, 1
	mov	rsp, rsp
	movq	xmm0, r14
	pshufd	xmm3, xmm0, 0x44
	movq	xmm1, r11
	nop	
	mov	rdi, r11
	pshufd	xmm11, xmm1, 0x44
	mov	rbp, rbp
	movq	xmm2, rbx
	nop	
	mov	r11, rbx
	lea	rdi, [rdi]
	pshufd	xmm12, xmm2, 0x44
	lea	rcx, [r8 + r15*8 + 0x18]
	lea	rdx, [r9 + r15*4 + 0xc]
	xor	esi, esi
	mov	ebx, 1
	lea	rdi, [rdi]
	movq	xmm10, rbx
	pslldq	xmm10, 8
	movdqa	xmm8,  xmmword ptr [word ptr [rip + label_1494]]
	movdqa	xmm9,  xmmword ptr [word ptr [rip + label_1922]]
	mov	rsp, rsp
	pxor	xmm3, xmm9
	pshufd	xmm6,  xmmword ptr [word ptr [rip + label_1923]],  0xe8
.label_1906:
	lea	rbx, [rsi + 1]
	movq	xmm4, rbx
	pshufd	xmm7, xmm4, 0x44
	movdqa	xmm5, xmm7
	lea	rdi, [rdi]
	paddq	xmm5, xmm10
	paddq	xmm7, xmm8
	nop	
	movdqa	xmm4, xmm5
	lea	rdi, [rdi]
	pxor	xmm4, xmm9
	movdqa	xmm0, xmm3
	mov	rbp, rbp
	pcmpgtd	xmm0, xmm4
	pshufd	xmm1, xmm0, 0xa0
	pcmpeqd	xmm4, xmm3
	lea	rsi, [rsi]
	pshufd	xmm4, xmm4, 0xf5
	pand	xmm4, xmm1
	pshufd	xmm0, xmm0, 0xf5
	por	xmm0, xmm4
	movdqa	xmm1, xmm7
	pxor	xmm1, xmm9
	nop	
	movdqa	xmm4, xmm3
	lea	rdi, [rdi]
	pcmpgtd	xmm4, xmm1
	lea	rsi, [rsi]
	pshufd	xmm2, xmm4, 0xa0
	lea	rdi, [rdi]
	pcmpeqd	xmm1, xmm3
	lea	rdi, [rdi]
	pshufd	xmm1, xmm1, 0xf5
	pand	xmm1, xmm2
	mov	rsp, rsp
	pshufd	xmm2, xmm4, 0xf5
	por	xmm2, xmm1
	pand	xmm5, xmm0
	nop	
	pandn	xmm0, xmm11
	nop	
	por	xmm0, xmm5
	mov	rbp, rbp
	pand	xmm7, xmm2
	nop	
	pandn	xmm2, xmm11
	nop	
	por	xmm2, xmm7
	paddq	xmm0, xmm12
	paddq	xmm2, xmm12
	movdqu	xmmword ptr [rcx + rsi*8 - 0x10], xmm0
	movdqu	xmmword ptr [rcx + rsi*8], xmm2
	movq	qword ptr [rdx + rsi*4 - 8], xmm6
	lea	rdi, [rdi]
	movq	qword ptr [rdx + rsi*4], xmm6
	lea	rdi, [rdi]
	add	rsi, 4
	nop	
	cmp	r13, rsi
	jne	.label_1906
	mov	rbp, rbp
	cmp	r10, r13
	lea	rdi, [rdi]
	mov	rbx, r11
	mov	r11, rdi
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	je	.label_1886
.label_1905:
	lea	rsi, [rsi]
	lea	rcx, [r9 + r15*4]
	lea	rdx, [r8 + r15*8]
.label_1903:
	cmp	rax, r14
	nop	
	mov	rsi, r11
	cmovb	rsi, rax
	nop	
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	mov	rbp, rbp
	inc	rax
	cmp	rdi, rax
	jne	.label_1903
.label_1886:
	mov	rax, qword ptr [r12 + 0x58]
	mov	rcx, qword ptr [rsp + 0x58]
	add	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x58], rax
	nop	
	cmp	qword ptr [r12 + 0x60], rbx
	jle	.label_1901
	add	qword ptr [r12 + 0x68], rcx
.label_1901:
	nop	
	mov	r13, qword ptr [r12 + 0x40]
	cmp	r13, rax
	cmovg	r13, rax
	add	rbx, r14
	lea	rsi, [rsi]
	mov	r15, rbp
	jmp	.label_1871
.label_1911:
	mov	al, byte ptr [rcx + rdx]
	nop	
	jmp	.label_1916
.label_1907:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	qword ptr [rcx + r15*8], rbx
	mov	rbp, rbp
	jmp	.label_1919
.label_1900:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	jmp	.label_1924
.label_1867:
	mov	rbp, rbp
	mov	eax, 0xc
	lea	rdi, [rdi]
	jmp	.label_1869
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b720

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x58
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbx + 0x30]
	mov	r12, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	mov	rsp, rsp
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, r13
	mov	rbp, rbp
	jle	.label_1932
	lea	r14, [rbx + 0x20]
	mov	rbp, rbp
	lea	r15, [rsp + 0xc]
	nop	
	jmp	.label_1930
	nop	word ptr [rax + rax]
.label_1931:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	nop	
	mov	rax, qword ptr [rbx + 0x78]
	test	rax, rax
	jne	.label_1929
.label_1937:
	nop	
	mov	qword ptr [r14], rbp
	mov	eax, 1
	mov	rsp, rsp
	jmp	.label_1936
.label_1935:
	nop	
	mov	ecx, dword ptr [rsp + 0xc]
	nop	word ptr cs:[rax + rax]
.label_1936:
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	dword ptr [rdx + r13*4], ecx
	lea	rbp, [rax + r13]
	lea	rcx, [r13 + 1]
	cmp	rcx, rbp
	nop	
	jge	.label_1933
	nop	
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rdi, [rcx + r13*4 + 4]
	lea	rsi, [rsi]
	lea	rdx, [rax*4 - 4]
	mov	rsp, rsp
	mov	esi, 0xff
	nop	
	call	memset
	mov	rcx, rbp
.label_1933:
	nop	
	cmp	r12, rcx
	mov	r13, rcx
	jg	.label_1930
	mov	rbp, rbp
	jmp	.label_1938
.label_1928:
	cmp	dword ptr [rbx + 0x90], 0
	mov	eax, 0
	nop	
	lea	rsi, [rsp + 0x10]
	jle	.label_1927
	nop	
.label_1934:
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_1926
	mov	rcx, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx + 0x78]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbx + 0x28]
	add	rcx, r13
	movzx	ecx, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [rbx + 8]
	add	rsi, r13
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbx + 0x90]
	mov	rsp, rsp
	cmp	rax, rcx
	nop	
	jl	.label_1934
	mov	rbp, rbp
	lea	rsi, [rsp + 0x10]
	jmp	.label_1927
.label_1929:
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rsp, rsp
	jmp	.label_1937
.label_1926:
	mov	rsp, rsp
	lea	rsi, [rsp + 0x10]
	nop	
	jmp	.label_1927
	nop	word ptr cs:[rax + rax]
.label_1930:
	nop	
	mov	rdx, r12
	lea	rsi, [rsi]
	sub	rdx, r13
	nop	
	mov	rbp, qword ptr [rbx + 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x78], 0
	jne	.label_1928
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	nop	
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r13
.label_1927:
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	cmp	rcx, 2
	jb	.label_1931
	cmp	rax, -2
	jne	.label_1935
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	mov	rbp, rbp
	jge	.label_1931
	mov	rbp, rbp
	mov	qword ptr [r14], rbp
.label_1932:
	mov	rcx, r13
.label_1938:
	mov	qword ptr [rbx + 0x30], rcx
	mov	qword ptr [rbx + 0x38], rcx
	add	rsp, 0x58
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b940

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	nop	
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r9
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 0x10], rsi
	mov	r12, rdi
	mov	r14, qword ptr [rsi]
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, rbp
	call	parse_branch
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	ebp, ebp
	test	rbx, rbx
	jne	.label_1948
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_1939
.label_1948:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0xa
	mov	rbp, rbp
	jne	.label_1944
	nop	
	mov	rax, qword ptr [rsp + 0x30]
	or	rax, 0x800000
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	jmp	.label_1947
.label_1942:
	mov	rbp, rbp
	mov	edi, 0x3c8
	nop	
	call	malloc
	test	rax, rax
	je	.label_1953
	nop	
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1955
	nop	word ptr cs:[rax + rax]
.label_1947:
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, qword ptr [rsp]
	call	peek_token
	nop	
	cdqe	
	nop	
	add	qword ptr [r12 + 0x48], rax
	movzx	eax, byte ptr [r13 + 8]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	or	ecx, 8
	lea	rdi, [rdi]
	cmp	ecx, 0xa
	mov	rbp, rbp
	mov	r15d, 0
	je	.label_1943
	cmp	qword ptr [rsp + 8], 0
	nop	
	je	.label_1951
	cmp	eax, 9
	mov	rsp, rsp
	mov	r15d, 0
	lea	rsi, [rsi]
	je	.label_1943
.label_1951:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	qword ptr [r14 + 0xa8], rax
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 8]
	nop	
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r9, rbp
	call	parse_branch
	mov	rbp, rbp
	mov	r15, rax
	test	r15, r15
	jne	.label_1946
	nop	
	mov	eax, dword ptr [rbp]
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1949
.label_1946:
	mov	rax, qword ptr [rsp + 0x18]
	or	qword ptr [r14 + 0xa8], rax
	nop	dword ptr [rax]
.label_1943:
	mov	ecx, dword ptr [r14 + 0x80]
	mov	rbp, rbp
	cmp	ecx, 0xf
	nop	
	je	.label_1942
	mov	rax, qword ptr [r14 + 0x70]
.label_1955:
	lea	edx, [rcx + 1]
	mov	dword ptr [r14 + 0x80], edx
	movsxd	rcx, ecx
	nop	
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rbp, [rax + rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1940
	mov	qword ptr [rbx], rbp
.label_1940:
	test	r15, r15
	je	.label_1952
	mov	rsp, rsp
	mov	qword ptr [r15], rbp
.label_1952:
	mov	rbp, rbp
	movzx	eax, byte ptr [r13 + 8]
	lea	rsi, [rsi]
	cmp	eax, 0xa
	mov	rbx, rbp
	mov	rbp, rbp
	je	.label_1947
	jmp	.label_1939
.label_1944:
	mov	rbp, rbx
.label_1939:
	mov	rsp, rsp
	mov	rax, rbp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1949:
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_1939
	mov	r14d, 0x400ff
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1950:
	lea	rdi, [rdi]
	mov	r15, rbx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_1950
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_1950
	nop	word ptr cs:[rax + rax]
.label_1941:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, r14d
	cmp	eax, 3
	lea	rsi, [rsi]
	je	.label_1954
	cmp	eax, 6
	lea	rdi, [rdi]
	jne	.label_1956
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx]
	nop	
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rsi]
	call	free
	mov	rdi, rbx
	lea	rsi, [rsi]
	jmp	.label_1945
	nop	dword ptr [rax]
.label_1954:
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x28]
.label_1945:
	mov	rsp, rsp
	call	free
.label_1956:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1939
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	lea	rdi, [rdi]
	mov	r15, rax
	je	.label_1941
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	r15, rax
	je	.label_1941
	jmp	.label_1950
.label_1953:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	xor	ebp, ebp
	jmp	.label_1939
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41bca0

	.globl peek_token
	.type peek_token, @function
peek_token:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	rbp, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x48]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_1984
	mov	r13, rdx
	mov	rcx, qword ptr [rbp + 8]
	movzx	r12d, byte ptr [rcx + rax]
	nop	
	mov	byte ptr [r15], r12b
	mov	rsp, rsp
	mov	ebx, dword ptr [r15 + 8]
	mov	eax, ebx
	nop	
	and	eax, 0xff9fffff
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], eax
	mov	edx, dword ptr [rbp + 0x90]
	cmp	edx, 2
	mov	rbp, rbp
	jl	.label_1959
	nop	
	mov	rax, qword ptr [rbp + 0x48]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_1959
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	cmp	dword ptr [rcx + rax*4], -1
	mov	rbp, rbp
	je	.label_1962
.label_1959:
	cmp	r12d, 0x5c
	jne	.label_1966
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rdi, [rdi]
	lea	rax, [rcx + 1]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1968
	cmp	byte ptr [rbp + 0x8b], 0
	lea	rdi, [rdi]
	jne	.label_1972
.label_1967:
	mov	rcx, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	mov	r14b, byte ptr [rcx + rax]
.label_1979:
	mov	rsp, rsp
	mov	byte ptr [r15], r14b
	mov	rsp, rsp
	and	ebx, 0xff9fff00
	nop	
	or	ebx, 1
	nop	
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1983
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebp, dword ptr [rax + rcx*4 + 4]
	mov	edi, ebp
	call	iswalnum
	mov	rsp, rsp
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	mov	rbp, rbp
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	nop	
	or	eax, ecx
	jmp	.label_1986
.label_1984:
	mov	rsp, rsp
	mov	byte ptr [r15 + 8], 2
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_1957
.label_1966:
	and	ebx, 0xff9fff00
	or	ebx, 1
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1992
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebx, dword ptr [rax + rcx*4]
	mov	edi, ebx
	nop	
	call	iswalnum
	mov	rbp, rbp
	test	eax, eax
	nop	
	setne	al
	cmp	ebx, 0x5f
	sete	cl
	nop	
	or	cl, al
	mov	rsp, rsp
	movzx	ecx, cl
	shl	ecx, 0x16
	lea	rdi, [rdi]
	mov	eax, 0xffbfffff
	mov	rbp, rbp
	and	eax, dword ptr [r15 + 8]
	lea	rdi, [rdi]
	or	eax, ecx
	lea	rsi, [rsi]
	jmp	.label_1960
.label_1968:
	lea	rsi, [rsi]
	and	ebx, 0xff9fff00
	or	ebx, 0x24
	jmp	.label_1970
.label_1992:
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r12*2]
	mov	rbp, rbp
	cmp	r12d, 0x5f
	mov	rbp, rbp
	sete	cl
	lea	rsi, [rsi]
	movzx	ecx, cl
	lea	rsi, [rsi]
	shr	eax, 3
	lea	rdi, [rdi]
	and	eax, 1
	lea	rdi, [rdi]
	or	eax, ecx
	nop	
	shl	eax, 0x16
	or	eax, ebx
.label_1960:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	mov	rsp, rsp
	cmp	r12d, 0x3e
	mov	rbp, rbp
	jg	.label_1980
	mov	rsp, rsp
	lea	ecx, [r12 - 0x24]
	cmp	ecx, 0xa
	nop	
	ja	.label_1985
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1988]]
.label_3321:
	nop	
	mov	rdx, r13
	mov	rbp, rbp
	test	dl, 8
	lea	rsi, [rsi]
	jne	.label_1989
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	lea	rsi, [rsi]
	je	.label_1989
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x48], rcx
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rbp, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	ja	.label_1957
	nop	
	mov	eax, dword ptr [r15 + 8]
.label_1989:
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 0xc
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_1957
.label_1980:
	mov	rsp, rsp
	cmp	r12d, 0x7a
	lea	rsi, [rsi]
	jg	.label_1969
	cmp	r12d, 0x3f
	je	.label_1971
	lea	rdi, [rdi]
	cmp	r12d, 0x5b
	mov	rdx, r13
	je	.label_1973
	mov	rsp, rsp
	cmp	r12d, 0x5e
	jne	.label_1957
	mov	rbp, rbp
	test	edx, 0x800008
	mov	rbp, rbp
	jne	.label_1977
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_1977
	test	dh, 8
	je	.label_1957
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp + 8]
	movzx	ecx, byte ptr [rcx + rdx - 1]
	cmp	ecx, 0xa
	jne	.label_1957
.label_1977:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	lea	rsi, [rsi]
	mov	dword ptr [r15], 0x10
	jmp	.label_1957
.label_1983:
	movzx	ebp, r14b
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	cmp	ebp, 0x5f
	sete	cl
	movzx	ecx, cl
	mov	rbp, rbp
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	lea	rdi, [rdi]
	shl	eax, 0x16
	nop	
	or	eax, ebx
.label_1986:
	mov	dword ptr [r15 + 8], eax
	movzx	ecx, r14b
	mov	r14d, 2
	mov	rsp, rsp
	cmp	ecx, 0x5f
	nop	
	jg	.label_1994
	lea	edx, [rcx - 0x27]
	mov	rsp, rsp
	cmp	edx, 0x2c
	mov	rsp, rsp
	ja	.label_1961
	nop	
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1963]]
.label_3448:
	mov	rdx, r13
	test	dh, 0x40
	lea	rdi, [rdi]
	jne	.label_1957
	mov	rsp, rsp
	and	eax, 0xffffff00
	or	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	add	ecx, -0x31
	lea	rsi, [rsi]
	movsxd	rax, ecx
	nop	
	mov	qword ptr [r15], rax
	jmp	.label_1957
.label_1969:
	cmp	r12d, 0x7b
	je	.label_1995
	mov	rsp, rsp
	cmp	r12d, 0x7c
	lea	rsi, [rsi]
	mov	rcx, r13
	lea	rdi, [rdi]
	je	.label_1975
	cmp	r12d, 0x7d
	lea	rdi, [rdi]
	jne	.label_1957
	and	ecx, 0x1200
	lea	rdi, [rdi]
	cmp	rcx, 0x1200
	je	.label_1978
	jmp	.label_1957
.label_1962:
	mov	rbp, rbp
	and	ebx, 0xff9fff00
	or	ebx, 0x200001
.label_1970:
	mov	dword ptr [r15 + 8], ebx
	mov	rbp, rbp
	mov	r14d, 1
.label_1957:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_1994:
	lea	edx, [rcx - 0x73]
	lea	rdi, [rdi]
	cmp	edx, 0xa
	ja	.label_1990
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1991]]
.label_3350:
	lea	rsi, [rsi]
	test	r13d, 0x80000
	jne	.label_1957
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1957
.label_1985:
	cmp	r12d, 0xa
	mov	rsp, rsp
	jne	.label_1957
	lea	rdi, [rdi]
	mov	rcx, r13
	test	ch, 8
	jne	.label_1958
	jmp	.label_1957
.label_3322:
	mov	rbp, rbp
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1981
	nop	
	jmp	.label_1957
.label_3323:
	mov	rsp, rsp
	mov	rcx, r13
	lea	rdi, [rdi]
	test	ch, 0x20
	lea	rsi, [rsi]
	jne	.label_1964
	lea	rdi, [rdi]
	jmp	.label_1957
.label_3324:
	mov	rbp, rbp
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1957
.label_3325:
	test	r13w, 0x402
	lea	rdi, [rdi]
	jne	.label_1957
	jmp	.label_1976
.label_3326:
	nop	
	and	eax, 0xffffff00
	or	eax, 5
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], eax
	mov	rsp, rsp
	jmp	.label_1957
.label_1971:
	lea	rsi, [rsi]
	test	r13w, 0x402
	jne	.label_1957
	jmp	.label_1982
.label_1973:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	nop	
	jmp	.label_1957
.label_1995:
	and	r13d, 0x1200
	cmp	r13, 0x1200
	mov	rsp, rsp
	je	.label_1987
	jmp	.label_1957
.label_1975:
	test	ch, 4
	mov	rsp, rsp
	jne	.label_1957
	lea	rsi, [rsi]
	test	cx, cx
	lea	rdi, [rdi]
	js	.label_1958
	lea	rdi, [rdi]
	jmp	.label_1957
.label_1990:
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_1993
	nop	
	cmp	ecx, 0x62
	nop	
	jne	.label_1957
	test	r13d, 0x80000
	jne	.label_1957
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_1957
.label_1972:
	cmp	edx, 2
	lea	rsi, [rsi]
	jl	.label_1965
	mov	rdx, qword ptr [rbp + 0x10]
	nop	
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	mov	rbp, rbp
	je	.label_1967
	mov	rbp, rbp
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	mov	rsp, rsp
	je	.label_1965
	lea	rsi, [rsi]
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	nop	
	je	.label_1967
.label_1965:
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	je	.label_1974
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_1974:
	nop	
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp]
	mov	r14b, byte ptr [rcx + rsi]
	nop	
	je	.label_1979
	test	r14b, r14b
	lea	rdi, [rdi]
	js	.label_1967
	mov	rbp, rbp
	jmp	.label_1979
.label_1961:
	cmp	ecx, 0x57
	mov	rsp, rsp
	jne	.label_1957
	lea	rdi, [rdi]
	test	r13d, 0x80000
	jne	.label_1957
	lea	rsi, [rsi]
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	lea	rdi, [rdi]
	jmp	.label_1957
.label_3351:
	nop	
	test	r13d, 0x80000
	lea	rsi, [rsi]
	jne	.label_1957
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1957
.label_3352:
	lea	rdi, [rdi]
	and	r13d, 0x1200
	nop	
	cmp	r13, 0x200
	lea	rsi, [rsi]
	jne	.label_1957
.label_1987:
	lea	rdi, [rdi]
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 0x17
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1957
.label_3353:
	mov	rcx, r13
	lea	rsi, [rsi]
	test	ch, 4
	nop	
	jne	.label_1957
	test	cx, cx
	js	.label_1957
.label_1958:
	mov	rsp, rsp
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	nop	
	jmp	.label_1957
.label_3354:
	and	r13d, 0x1200
	lea	rdi, [rdi]
	cmp	r13, 0x200
	jne	.label_1957
.label_1978:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	mov	rsp, rsp
	jmp	.label_1957
.label_1993:
	nop	
	test	r13d, 0x80000
	nop	
	jne	.label_1957
	mov	rbp, rbp
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_1957
.label_3444:
	test	r13d, 0x80000
	jne	.label_1957
	and	eax, 0xffffff00
	lea	rdi, [rdi]
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_1957
.label_3445:
	mov	rcx, r13
	test	ch, 0x20
	lea	rdi, [rdi]
	jne	.label_1957
.label_1981:
	lea	rsi, [rsi]
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1957
.label_3446:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1957
.label_1964:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1957
.label_3447:
	and	r13d, 0x402
	lea	rdi, [rdi]
	cmp	r13, 2
	jne	.label_1957
.label_1976:
	and	eax, 0xffffff00
	mov	rbp, rbp
	or	eax, 0x12
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1957
.label_3449:
	lea	rdi, [rdi]
	test	r13d, 0x80000
	jne	.label_1957
	and	eax, 0xffffff00
	lea	rdi, [rdi]
	or	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	mov	rbp, rbp
	mov	dword ptr [r15], 6
	lea	rdi, [rdi]
	jmp	.label_1957
.label_3450:
	test	r13d, 0x80000
	jne	.label_1957
	mov	rbp, rbp
	and	eax, 0xffffff00
	or	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_1957
.label_3451:
	nop	
	and	r13d, 0x402
	lea	rsi, [rsi]
	cmp	r13, 2
	jne	.label_1957
.label_1982:
	and	eax, 0xffffff00
	or	eax, 0x13
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1957
.label_3452:
	mov	rbp, rbp
	test	r13d, 0x80000
	lea	rdi, [rdi]
	jne	.label_1957
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_1957
.label_3453:
	mov	rsp, rsp
	test	r13d, 0x80000
	nop	
	jne	.label_1957
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1957
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c530

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	mov	r15, r8
	mov	qword ptr [rsp + 8], rcx
	mov	rbp, rbp
	mov	r13, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rdi
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsi]
	call	parse_expression
	nop	
	mov	rbp, rbx
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	xor	r12d, r12d
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_1996
	nop	
	mov	eax, dword ptr [rbp]
	mov	rbp, rbp
	test	eax, eax
	nop	
	je	.label_1996
	jmp	.label_1998
	nop	word ptr cs:[rax + rax]
.label_2004:
	mov	rsp, rsp
	test	rbx, rbx
	cmove	rbx, r12
.label_1996:
	movzx	eax, byte ptr [r13 + 8]
	mov	rbp, rbp
	mov	ecx, eax
	or	ecx, 8
	mov	rbp, rbp
	cmp	ecx, 0xa
	je	.label_2008
	test	r15, r15
	je	.label_2014
	mov	rbp, rbp
	cmp	eax, 9
	je	.label_2010
.label_2014:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp]
	mov	rbp, rbp
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	r8, r15
	mov	r9, rbp
	lea	rsi, [rsi]
	call	parse_expression
	lea	rdi, [rdi]
	mov	r12, rax
	mov	rbp, rbp
	test	r12, r12
	jne	.label_2022
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_1999
.label_2022:
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_2004
	test	r12, r12
	mov	rbp, rbp
	je	.label_2004
	lea	rsi, [rsi]
	mov	ecx, dword ptr [r14 + 0x80]
	cmp	ecx, 0xf
	je	.label_2011
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x70]
.label_2015:
	nop	
	lea	edx, [rcx + 1]
	mov	dword ptr [r14 + 0x80], edx
	mov	rsp, rsp
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	nop	
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r12], rdx
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rbp, rbp
	jmp	.label_1996
.label_2011:
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	mov	rsp, rsp
	test	rax, rax
	je	.label_2017
	nop	
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	lea	rsi, [rsi]
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	mov	rsp, rsp
	jmp	.label_2015
.label_1999:
	lea	rdi, [rdi]
	xor	r12d, r12d
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_1998
	mov	r14d, 0x400ff
	lea	rdi, [rdi]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_2000:
	mov	rbp, rbx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_2000
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_2000
	nop	dword ptr [rax + rax]
.label_2003:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	nop	
	cmp	eax, 3
	je	.label_2009
	cmp	eax, 6
	lea	rsi, [rsi]
	jne	.label_2013
	nop	
	mov	rbx, qword ptr [rbp + 0x28]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	mov	rsp, rsp
	jmp	.label_2021
.label_2009:
	nop	
	mov	rdi, qword ptr [rbp + 0x28]
.label_2021:
	call	free
.label_2013:
	mov	rax, qword ptr [rbp]
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_1998
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
	je	.label_2003
	test	rbx, rbx
	mov	rbp, rbp
	mov	rbp, rax
	lea	rsi, [rsi]
	je	.label_2003
	lea	rdi, [rdi]
	jmp	.label_2000
.label_2008:
	lea	rdi, [rdi]
	mov	r12, rbx
	jmp	.label_1998
.label_2010:
	lea	rsi, [rsi]
	mov	r12, rbx
.label_1998:
	mov	rax, r12
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_2017:
	mov	r14d, 0x400ff
	lea	rdi, [rdi]
	mov	rcx, rbp
.label_1997:
	mov	rbp, r12
	mov	r12, qword ptr [rbp + 8]
	test	r12, r12
	jne	.label_1997
	nop	
	mov	r12, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	test	r12, r12
	lea	rdi, [rdi]
	jne	.label_1997
	nop	word ptr [rax + rax]
.label_2005:
	lea	rsi, [rsi]
	mov	r12, rcx
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp + 0x30]
	mov	rsp, rsp
	and	eax, r14d
	cmp	eax, 3
	nop	
	je	.label_2006
	lea	rsi, [rsi]
	cmp	eax, 6
	lea	rsi, [rsi]
	jne	.label_2012
	mov	r15, qword ptr [rbp + 0x28]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15]
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 8]
	call	free
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	nop	
	mov	rdi, r15
	lea	rsi, [rsi]
	jmp	.label_2002
.label_2006:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp + 0x28]
.label_2002:
	call	free
.label_2012:
	nop	
	mov	rax, qword ptr [rbp]
	test	rax, rax
	mov	rcx, r12
	mov	rsp, rsp
	je	.label_2018
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rbp
	mov	rbp, rax
	je	.label_2005
	lea	rsi, [rsi]
	test	r12, r12
	mov	rbp, rbp
	mov	rbp, rax
	je	.label_2005
	nop	
	jmp	.label_1997
.label_2018:
	mov	r14d, 0x400ff
.label_2007:
	mov	rbp, rbx
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_2007
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_2007
	nop	dword ptr [rax + rax]
.label_2020:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp + 0x30]
	mov	rbp, rbp
	and	eax, r14d
	mov	rbp, rbp
	cmp	eax, 3
	mov	rbp, rbp
	je	.label_2019
	cmp	eax, 6
	lea	rsi, [rsi]
	jne	.label_2016
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rcx, r15
	jmp	.label_2016
.label_2019:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp + 0x28]
	mov	rbx, rcx
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	mov	rcx, rbx
.label_2016:
	nop	
	mov	rax, qword ptr [rbp]
	test	rax, rax
	mov	rsp, rsp
	je	.label_2001
	nop	
	mov	rbx, qword ptr [rax + 0x10]
	mov	rbp, rbp
	cmp	rbx, rbp
	mov	rsp, rsp
	mov	rbp, rax
	je	.label_2020
	test	rbx, rbx
	mov	rbp, rbp
	mov	rbp, rax
	lea	rsi, [rsi]
	je	.label_2020
	nop	
	jmp	.label_2007
.label_2001:
	mov	rsp, rsp
	mov	dword ptr [rcx], 0xc
	xor	r12d, r12d
	mov	rsp, rsp
	jmp	.label_1998
	nop	
	.section	.text
	.align	32
	#Procedure 0x41c9c0

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rsp, rsp
	push	r12
	nop	
	push	rbx
	sub	rsp, 0xe8
	nop	
	mov	r12, r9
	mov	qword ptr [rsp + 0x98], r12
	mov	rsp, rsp
	mov	r13, r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp], rdx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rdi
	mov	eax, dword ptr [rdx + 8]
	mov	rbp, rbp
	movzx	ecx, al
	xor	r15d, r15d
	lea	edx, [rcx - 1]
	cmp	edx, 0x23
	mov	rsp, rsp
	ja	.label_2038
	mov	r9, qword ptr [rbx]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_2171]]
.label_3368:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	cmp	ecx, 0x21
	mov	rbp, rbp
	sete	al
	lea	rdi, [rdi]
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.1_11
	nop	
	mov	ecx, OFFSET FLAT:.str.2_9
	nop	
	mov	rdi, r9
	mov	rbp, rbp
	mov	rbx, r9
	mov	r9, r12
	lea	rsi, [rsi]
	call	build_charclass_op
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_2185
	mov	r9, rbx
	mov	rbp, rbp
	jmp	.label_2046
.label_3369:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	lea	rsi, [rsi]
	cmp	ecx, 0x23
	sete	al
	mov	rbp, rbp
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.3_7
	mov	ecx, OFFSET FLAT:.str_3
	lea	rdi, [rdi]
	mov	rdi, r9
	mov	rbx, r9
	lea	rdi, [rdi]
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rbp, rbp
	jne	.label_2206
.label_2185:
	nop	
	mov	eax, dword ptr [r12]
	nop	
	test	eax, eax
	mov	rsp, rsp
	mov	r9, rbx
	je	.label_2046
	nop	
	jmp	.label_2038
.label_3359:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_2215
	mov	rax, qword ptr [r9 + 0x70]
.label_2093:
	mov	rsp, rsp
	lea	edx, [rcx + 1]
	mov	rsp, rsp
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp]
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [rdx]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 2
	jl	.label_2221
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rcx + 0x48]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x68], rax
	jg	.label_2085
	lea	rdi, [rdi]
	mov	rbp, r15
	lea	rdi, [rdi]
	jmp	.label_2046
.label_2135:
	mov	rbp, r9
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x10]
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_2252
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	call	peek_token
	cdqe	
	mov	rbp, rbp
	add	qword ptr [rbx + 0x48], rax
	mov	r9, rbp
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	mov	rbp, rbp
	je	.label_2213
	mov	rsp, rsp
	mov	rax, qword ptr [r9 + 0x70]
.label_2104:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	lea	rsi, [rsi]
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp]
	nop	
	movdqu	xmm0, xmmword ptr [rdx]
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
.label_2096:
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x80]
	mov	rbp, rbp
	cmp	ecx, 0xf
	je	.label_2041
	mov	rax, qword ptr [r9 + 0x70]
.label_2123:
	lea	rsi, [rsi]
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], edx
	lea	rdi, [rdi]
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r15
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r15], rdx
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_2091
	mov	qword ptr [rbp], rdx
	mov	rax, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rax
	mov	r15, rdx
	mov	rbp, rdx
	lea	rsi, [rsi]
	jg	.label_2085
	lea	rdi, [rdi]
	jmp	.label_2046
.label_2213:
	mov	rbp, rbp
	mov	edi, 0x3c8
	mov	rbp, rbp
	mov	rbp, r9
	mov	rbp, rbp
	call	malloc
	lea	rdi, [rdi]
	mov	r9, rbp
	test	rax, rax
	mov	rsp, rsp
	mov	ebp, 0
	mov	rbp, rbp
	je	.label_2096
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r9 + 0x70], rax
	mov	rbp, rbp
	mov	dword ptr [r9 + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	jmp	.label_2104
.label_2041:
	nop	
	mov	edi, 0x3c8
	lea	rsi, [rsi]
	mov	r13, r9
	call	malloc
	nop	
	mov	r9, r13
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_2091
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	lea	rdi, [rdi]
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_2123
.label_2085:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x58]
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_2135
	mov	rsp, rsp
	mov	rbp, r15
	jmp	.label_2046
.label_3360:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp]
	mov	rbp, rbp
	mov	cl, byte ptr [rbx]
	mov	eax, 1
	lea	rsi, [rsi]
	shl	eax, cl
	mov	rbp, rbp
	cdqe	
	lea	rsi, [rsi]
	test	qword ptr [r9 + 0xa8], rax
	je	.label_2146
	or	qword ptr [r9 + 0xa0], rax
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r9 + 0x80]
	mov	rsp, rsp
	cmp	ecx, 0xf
	mov	rsp, rsp
	je	.label_2157
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + 0x70]
.label_2145:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	mov	rsp, rsp
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	nop	
	movdqu	xmm1, xmmword ptr [rbx]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	inc	qword ptr [r9 + 0x98]
	nop	
	or	byte ptr [r9 + 0xb0], 2
	mov	rsp, rsp
	jmp	.label_2046
.label_3361:
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_2188
	mov	rsp, rsp
	mov	rax, qword ptr [r9 + 0x70]
	mov	rsi, qword ptr [rsp]
.label_2115:
	mov	qword ptr [rsp], rsi
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x18], 0
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [rsi]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 1
	nop	
	jle	.label_2046
	or	byte ptr [r9 + 0xb0], 2
	jmp	.label_2046
.label_3362:
	mov	qword ptr [rsp + 0x18], r9
	mov	r15, qword ptr [rbx + 0x30]
	lea	rsi, [rsi]
	lea	rax, [r15 + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	or	rdx, 0x800000
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	peek_token
	mov	rsp, rsp
	cdqe	
	lea	rdi, [rdi]
	add	qword ptr [rbp + 0x48], rax
	movzx	eax, byte ptr [r14 + 8]
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rbp, rbp
	cmp	eax, 9
	mov	rbp, rbp
	je	.label_2236
	lea	rdi, [rdi]
	mov	rbp, r15
	lea	rsi, [rsi]
	inc	r13
	nop	
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8, r13
	mov	r9, r12
	call	parse_reg_exp
	lea	rsi, [rsi]
	mov	rsi, rax
	xor	r15d, r15d
	lea	rdi, [rdi]
	cmp	dword ptr [r12], 0
	mov	rsp, rsp
	jne	.label_2038
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14 + 8]
	cmp	eax, 9
	jne	.label_2256
	mov	r15, rbp
.label_2236:
	nop	
	cmp	r15, 8
	mov	r9, qword ptr [rsp + 0x18]
	nop	
	mov	rbx, r15
	ja	.label_2260
	mov	eax, 1
	mov	cl, bl
	mov	rbp, rbp
	shl	eax, cl
	cdqe	
	or	qword ptr [r9 + 0xa8], rax
.label_2260:
	nop	
	mov	ecx, dword ptr [r9 + 0x80]
	nop	
	cmp	ecx, 0xf
	lea	rdi, [rdi]
	je	.label_2266
	mov	rax, qword ptr [r9 + 0x70]
.label_2163:
	mov	rbp, rbp
	mov	qword ptr [rsp], r14
	mov	rbp, rbp
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rsi
	nop	
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0x11
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rsi, rsi
	nop	
	je	.label_2024
	mov	rbp, rbp
	mov	qword ptr [rsi], rbp
.label_2024:
	mov	qword ptr [rax + rcx + 0x30], rbx
	jmp	.label_2046
.label_3363:
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	ecx, 0x20000
	lea	rdi, [rdi]
	jne	.label_2050
	mov	rsp, rsp
	mov	dword ptr [r12], 0x10
	mov	rbp, rbp
	jmp	.label_2058
.label_3365:
	mov	r15, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	eax, dword ptr [r15]
	test	ax, 0x30f
	mov	rbp, rbp
	je	.label_2066
	mov	al, byte ptr [r9 + 0xb0]
	nop	
	test	al, 0x10
	jne	.label_2073
	lea	rsi, [rsi]
	mov	cl, al
	or	cl, 0x10
	mov	byte ptr [r9 + 0xb0], cl
	xor	ebx, ebx
	nop	
	test	al, 8
	mov	ebp, 0
	mov	rbp, rbp
	jne	.label_2076
	lea	rdi, [rdi]
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_2087]]
	movdqu	xmmword ptr [r9 + 0xb8], xmm0
	lea	rsi, [rsi]
	mov	ebp, 2
	lea	rsi, [rsi]
	mov	ebx, 0x80
	test	al, 4
	je	.label_2076
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r9 + 0xc8], xmm0
.label_2073:
	mov	eax, dword ptr [r15]
.label_2066:
	cmp	eax, 0x200
	je	.label_2101
	lea	rsi, [rsi]
	cmp	eax, 0x100
	jne	.label_2208
	mov	dword ptr [r15], 6
	mov	r13, r15
	mov	rbp, rbp
	lea	r15, [r9 + 0x80]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	lea	rdi, [rdi]
	je	.label_2110
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0x70]
.label_2067:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	mov	rbp, rbp
	movsxd	rcx, ebp
	shl	rcx, 6
	nop	
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rsp, rsp
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	lea	rdi, [rdi]
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 9
	mov	rbp, rbp
	jmp	.label_2118
.label_3367:
	mov	rcx, qword ptr [rsp + 0x30]
	test	ecx, 0x1000000
	jne	.label_2044
.label_3364:
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	cl, 0x20
	jne	.label_2044
	test	cl, 0x10
	lea	rdi, [rdi]
	jne	.label_2156
.label_2050:
	nop	
	and	eax, 0xffffff00
	mov	rsp, rsp
	or	eax, 1
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 8], eax
	mov	rbp, rbp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	nop	
	je	.label_2159
	nop	
	mov	rax, qword ptr [r9 + 0x70]
.label_2047:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	lea	rdi, [rdi]
	movsxd	rcx, ecx
	shl	rcx, 6
	mov	rbp, rbp
	lea	rbp, [rax + rcx + 8]
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [rbx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
.label_2040:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_2046
.label_3370:
	mov	dword ptr [r12], 5
	jmp	.label_2058
.label_3366:
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x90], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	lea	rdi, [rdi]
	mov	edi, 0x50
	mov	esi, 1
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rbp, rbp
	mov	rbx, rax
	lea	rsi, [rsi]
	test	r13, r13
	je	.label_2204
	mov	rbp, rbp
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_2204
	mov	qword ptr [rsp + 8], rbx
	mov	rbp, qword ptr [rsp]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rdx, rbx
	mov	rsp, rsp
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 0x19
	nop	
	je	.label_2167
	mov	rsp, rsp
	cmp	edx, 2
	je	.label_2223
	mov	dword ptr [rsp + 0xe0], 0
	nop	
	jmp	.label_2227
.label_2206:
	mov	r9, rbx
	nop	
	jmp	.label_2046
.label_2156:
	mov	r15, qword ptr [rsp]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rbp, qword ptr [rsp + 0x58]
	nop	
	mov	rsi, rbp
	mov	r14, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rdx, r14
	mov	rsp, rsp
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r15
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	r8, r13
	mov	rbp, rbp
	mov	r9, r12
	lea	rsi, [rsi]
	add	rsp, 0xe8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	jmp	parse_expression
.label_2221:
	mov	rbp, r15
	mov	rsp, rsp
	jmp	.label_2046
.label_2167:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	or	byte ptr [rcx + 0x20], 1
	nop	
	test	bh, 1
	lea	rdi, [rdi]
	je	.label_2258
	or	byte ptr [r13 + 1], 4
.label_2258:
	cdqe	
	nop	
	mov	rsi, qword ptr [rsp + 0x58]
	add	qword ptr [rsi + 0x48], rax
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 2
	lea	rsi, [rsi]
	je	.label_2223
	mov	dl, 1
	mov	dword ptr [rsp + 0xe0], edx
.label_2227:
	mov	qword ptr [rsp + 0x60], r13
	mov	rsp, rsp
	movzx	edx, cl
	nop	
	cmp	edx, 0x15
	mov	rsp, rsp
	jne	.label_2026
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rbp + 8], ecx
.label_2026:
	lea	rcx, [rsp + 0xb0]
	mov	qword ptr [rsp + 0x28], rcx
	mov	dword ptr [rsp + 0x20], 3
	lea	rdi, [rsp + 0x20]
	mov	r9d, 1
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	r8, rbx
	call	parse_bracket_element
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_2053
	mov	rbp, rbp
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0xd0], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], rax
	jmp	.label_2057
.label_2214:
	cmp	eax, 2
	mov	rbp, rbp
	je	.label_2229
	nop	
	mov	qword ptr [rsp + 8], r15
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x18], r9
	mov	rbp, rbp
	lea	rax, [rsp + 0xb0]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x20], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	nop	
	mov	rbp, qword ptr [rsp]
	mov	rdx, rbp
	mov	ecx, ebx
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r8, rbx
	lea	rsi, [rsi]
	call	parse_bracket_element
	mov	rbp, rbp
	test	eax, eax
	nop	
	je	.label_2057
	lea	rdi, [rdi]
	jmp	.label_2053
.label_3386:
	nop	
	mov	cl, byte ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	or	qword ptr [r13 + rcx*8], rax
	jmp	.label_2106
.label_3387:
	mov	r15, qword ptr [rsp + 8]
	mov	rcx, qword ptr [r15 + 0x28]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	cmp	rbp, rcx
	mov	rbp, rbp
	je	.label_2116
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15]
.label_2241:
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x60]
	mov	edx, dword ptr [rsp + 0x28]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	nop	
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_2065
.label_2164:
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	mov	al, byte ptr [rax]
	jmp	.label_2134
.label_2253:
	nop	
	xor	eax, eax
.label_2134:
	cmp	ebx, 3
	je	.label_2141
	lea	rsi, [rsi]
	test	ebx, ebx
	jne	.label_2144
	nop	
	mov	bpl, byte ptr [rsp + 0xa8]
	jmp	.label_2030
.label_2141:
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	bpl, byte ptr [rcx]
	lea	rdi, [rdi]
	jmp	.label_2030
.label_2144:
	mov	rbp, rbp
	xor	ebp, ebp
.label_2030:
	lea	rsi, [rsi]
	cmp	r15d, 3
	je	.label_2155
	test	r15d, r15d
	mov	rsp, rsp
	jne	.label_2154
.label_2155:
	test	r12, r12
	movzx	edx, al
	je	.label_2158
	mov	edi, edx
	call	btowc
	mov	rbp, rbp
	mov	edx, eax
	jmp	.label_2158
.label_2154:
	mov	edx, dword ptr [rsp + 0x28]
.label_2158:
	cmp	ebx, 3
	je	.label_2169
	lea	rdi, [rdi]
	test	ebx, ebx
	jne	.label_2166
.label_2169:
	test	r12, r12
	movzx	ebp, bpl
	je	.label_2153
	mov	edi, ebp
	nop	
	mov	ebx, edx
	nop	
	call	btowc
	mov	edx, ebx
	lea	rdi, [rdi]
	mov	ebp, eax
	jmp	.label_2153
.label_2166:
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rsp + 0xa8]
.label_2153:
	mov	rsp, rsp
	cmp	edx, -1
	mov	ecx, 3
	je	.label_2052
	cmp	ebp, -1
	je	.label_2052
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xd0], 0
	lea	rsi, [rsi]
	je	.label_2178
	cmp	edx, ebp
	lea	rsi, [rsi]
	mov	ecx, 0xb
	ja	.label_2052
.label_2178:
	test	r12, r12
	je	.label_2061
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x40]
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x50], rax
	je	.label_2186
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 8]
	mov	r14, qword ptr [r12 + 0x10]
	mov	r9, r13
	nop	
	mov	r15, qword ptr [rsp + 8]
	mov	ebx, dword ptr [rsp + 0x14]
.label_2268:
	mov	dword ptr [rdi + rax*4], edx
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [r14 + rax*4], ebp
	mov	r12, qword ptr [rsp + 0x98]
	jmp	.label_2120
.label_2061:
	nop	
	mov	r12, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r9, r13
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	ebx, dword ptr [rsp + 0x14]
.label_2120:
	lea	rdi, [rdi]
	mov	eax, ebp
	mov	edx, edx
	xor	ecx, ecx
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x60]
.label_2228:
	mov	rbp, rbp
	cmp	rdx, rcx
	mov	rbp, rbp
	ja	.label_2127
	cmp	rcx, rax
	lea	rsi, [rsi]
	ja	.label_2127
	lea	rdi, [rdi]
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	lea	rdi, [rdi]
	shr	rdi, 0x3a
	mov	rsp, rsp
	add	rdi, rcx
	mov	rbp, rbp
	sar	rdi, 6
	or	qword ptr [r13 + rdi*8], rsi
.label_2127:
	lea	rsi, [rsi]
	inc	rcx
	cmp	rcx, 0x100
	lea	rdi, [rdi]
	jne	.label_2228
	mov	dword ptr [r12], 0
	jmp	.label_2065
.label_2116:
	lea	rsi, [rsi]
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	lea	rsi, [rsi]
	call	realloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_2035
	lea	rbp, [rbp + rbp + 1]
	mov	qword ptr [rsp + 0x38], rbp
	nop	
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	jmp	.label_2241
.label_2186:
	mov	dword ptr [rsp + 0xdc], edx
	mov	rax, qword ptr [rsp + 0x50]
	lea	rax, [rax + rax]
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	lea	rbx, [rax*4 + 4]
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rbp, rbp
	call	realloc
	mov	r14, rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, rbx
	nop	
	call	realloc
	mov	rdi, r14
	mov	r14, rax
	mov	rbp, rbp
	test	rdi, rdi
	nop	
	mov	r15, qword ptr [rsp + 8]
	je	.label_2203
	lea	rdi, [rdi]
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_2203
	mov	rax, qword ptr [rsp + 0x50]
	nop	
	lea	rax, [rax + rax + 1]
	mov	qword ptr [rsp + 0x50], rax
	mov	rbp, rbp
	mov	qword ptr [r12 + 8], rdi
	mov	qword ptr [r12 + 0x10], r14
	mov	rax, qword ptr [r12 + 0x40]
	mov	r9, r13
	mov	ebx, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0xdc]
	jmp	.label_2268
.label_2057:
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rbp, rbp
	call	peek_token_bracket
	mov	rbp, rbp
	mov	ebx, eax
	mov	r15d, dword ptr [rsp + 0x20]
	nop	
	cmp	r15d, 2
	je	.label_2039
	cmp	r15d, 4
	jne	.label_2043
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	mov	rdi, qword ptr [rax + 0x78]
	mov	r8, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x60]
	nop	
	mov	rsi, r13
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 8]
	mov	rdx, r15
	lea	rcx, [rsp + 0x90]
	mov	r9, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	call	build_charclass
	lea	rsi, [rsi]
	mov	dword ptr [r12], eax
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x18]
	je	.label_2065
	nop	
	jmp	.label_2240
.label_2043:
	movzx	eax, byte ptr [rbp + 8]
	cmp	eax, 0x16
	mov	r9, qword ptr [rsp + 0x18]
	nop	
	je	.label_2075
	cmp	eax, 2
	jne	.label_2069
	mov	rbp, rbp
	jmp	.label_2084
.label_2075:
	mov	r13, r9
	nop	
	movsxd	rax, ebx
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	add	qword ptr [rbp + 0x48], rax
	nop	
	lea	rdi, [rsp + 0x40]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	nop	
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x48]
	mov	rbp, rbp
	cmp	ecx, 0x15
	je	.label_2094
	lea	rsi, [rsi]
	cmp	ecx, 2
	mov	rsp, rsp
	je	.label_2098
	mov	rsp, rsp
	lea	rcx, [rsp + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	mov	dword ptr [rsp + 0xa0], 3
	mov	r9d, 1
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0xa0]
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rbp, rbp
	lea	rdx, [rsp + 0x40]
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r8, rbx
	lea	rsi, [rsi]
	call	parse_bracket_element
	test	eax, eax
	jne	.label_2124
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], r12
	mov	rdi, qword ptr [rsp]
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rdx, rbx
	nop	
	call	peek_token_bracket
	mov	rbp, rbp
	cmp	dword ptr [r13 + 0xb4], 1
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jg	.label_2139
	xor	r12d, r12d
.label_2139:
	nop	
	mov	ecx, 0xb
	mov	ebx, dword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	cmp	ebx, 2
	je	.label_2052
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], eax
	lea	rsi, [rsi]
	cmp	ebx, 4
	lea	rdi, [rdi]
	je	.label_2052
	cmp	r15d, 3
	lea	rsi, [rsi]
	jne	.label_2246
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x28]
	nop	
	call	strlen
	mov	ecx, 3
	mov	rbp, rbp
	cmp	rax, 1
	ja	.label_2052
.label_2246:
	cmp	ebx, 3
	mov	rbp, rbp
	jne	.label_2168
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xa8]
	call	strlen
	nop	
	mov	ecx, 3
	cmp	rax, 1
	nop	
	ja	.label_2052
.label_2168:
	mov	rbp, rbp
	cmp	r15d, 3
	nop	
	je	.label_2164
	test	r15d, r15d
	mov	rbp, rbp
	jne	.label_2253
	mov	al, byte ptr [rsp + 0x28]
	jmp	.label_2134
.label_2094:
	nop	
	mov	eax, ebx
	neg	eax
	cdqe	
	mov	rbp, rbp
	add	qword ptr [rbp + 0x48], rax
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 8], 1
	mov	r9, r13
.label_2069:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r9
	mov	rsp, rsp
	mov	eax, r15d
	cmp	r15d, 3
	mov	rbp, rbp
	ja	.label_2189
	jmp	qword ptr [word ptr [+ (rax * 8) + label_2196]]
.label_2039:
	mov	rbp, qword ptr [rsp + 0x28]
	nop	
	mov	rdi, rbp
	call	strlen
	lea	rsi, [rsi]
	cmp	rax, 1
	lea	rdi, [rdi]
	jne	.label_2247
	mov	cl, byte ptr [rbp]
	mov	rbp, rbp
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	or	qword ptr [r13 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_2106:
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 8]
.label_2065:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	nop	
	movzx	eax, byte ptr [rax + 8]
	lea	rsi, [rsi]
	cmp	eax, 0x15
	jne	.label_2214
	mov	rbp, rbp
	movsxd	rax, ebx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0xe0]
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_2217
	movdqu	xmm0, xmmword ptr [r13]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	nop	
	movdqu	xmmword ptr [r13], xmm0
	movdqu	xmm0, xmmword ptr [r13 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r13 + 0x10], xmm0
.label_2217:
	mov	eax, dword ptr [r9 + 0xb4]
	mov	rsp, rsp
	cmp	eax, 2
	nop	
	jl	.label_2237
	mov	rcx, qword ptr [r9 + 0x78]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx]
	mov	rbp, rbp
	and	qword ptr [r13], rdx
	nop	
	mov	rdx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	and	qword ptr [r13 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	and	qword ptr [r13 + 0x10], rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r13 + 0x18], rcx
.label_2237:
	cmp	qword ptr [r15 + 0x28], 0
	mov	rsp, rsp
	jne	.label_2148
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x30], 0
	mov	rbp, rbp
	jne	.label_2148
	cmp	qword ptr [r15 + 0x38], 0
	mov	rsp, rsp
	jne	.label_2148
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x40], 0
	lea	rsi, [rsi]
	jne	.label_2148
	mov	rsp, rsp
	cmp	eax, 2
	jl	.label_2263
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_2148
	test	byte ptr [r15 + 0x20], 1
	nop	
	jne	.label_2148
.label_2263:
	mov	rdi, qword ptr [r15]
	mov	rbp, r9
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x10]
	nop	
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rsp, rsp
	mov	rdi, r15
	call	free
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	nop	
	je	.label_2032
	mov	rax, qword ptr [r9 + 0x70]
.label_2195:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r13
	mov	dword ptr [rax + rcx + 0x38], 3
	jmp	.label_2040
.label_2148:
	nop	
	or	byte ptr [r9 + 0xb0], 2
	lea	rsi, [rsi]
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_2059
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + 0x70]
.label_2105:
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdi, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x30], r15
	lea	rdi, [rdi]
	mov	dword ptr [rax + rcx + 0x38], 6
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	qword ptr [r13], 0
	nop	
	jne	.label_2072
	nop	
	cmp	qword ptr [r13 + 8], 0
	jne	.label_2072
	nop	
	cmp	qword ptr [r13 + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_2072
	cmp	qword ptr [r13 + 0x18], 0
	je	.label_2102
.label_2072:
	nop	
	mov	qword ptr [rsp + 0x60], r13
	mov	rsp, rsp
	mov	eax, dword ptr [r9 + 0x80]
	mov	rbp, rbp
	cmp	eax, 0xf
	mov	rsp, rsp
	je	.label_2138
	mov	rbp, qword ptr [r9 + 0x70]
.label_2037:
	mov	rbp, rbp
	lea	ecx, [rax + 1]
	lea	rdi, [rdi]
	mov	dword ptr [r9 + 0x80], ecx
	movsxd	rbx, eax
	mov	rbp, rbp
	shl	rbx, 6
	nop	
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	nop	
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	rax, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp + rbx + 0x30], rax
	mov	dword ptr [rbp + rbx + 0x38], 3
	mov	rsp, rsp
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbp + rbx + 0x40], -1
	nop	
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_2259
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + 0x70]
.label_2068:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rcx + 1]
	mov	dword ptr [r9 + 0x80], esi
	movsxd	rcx, ecx
	lea	rsi, [rsi]
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x10], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	mov	qword ptr [rdx], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rdi], rbp
	jmp	.label_2046
.label_2101:
	lea	rsi, [rsi]
	mov	dword ptr [r15], 5
	mov	rbp, rbp
	mov	r13, r15
	lea	r15, [r9 + 0x80]
	lea	rsi, [rsi]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	je	.label_2172
	mov	rax, qword ptr [r9 + 0x70]
.label_2090:
	lea	ecx, [rbp + 1]
	nop	
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	nop	
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	mov	rbp, rbp
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	mov	rsp, rsp
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rdi, [rdi]
	mov	ecx, 0xa
.label_2118:
	mov	dword ptr [r13], ecx
	lea	rdi, [rdi]
	mov	ebx, dword ptr [r15]
	lea	rdi, [rdi]
	cmp	ebx, 0xf
	lea	rsi, [rsi]
	je	.label_2199
	mov	rax, qword ptr [r9 + 0x70]
.label_2179:
	lea	ecx, [rbx + 1]
	nop	
	mov	dword ptr [r15], ecx
	nop	
	movsxd	rcx, ebx
	shl	rcx, 6
	mov	rbp, rbp
	lea	rbx, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x40], -1
.label_2176:
	mov	rbp, rbp
	mov	ecx, dword ptr [r15]
	nop	
	cmp	ecx, 0xf
	lea	rsi, [rsi]
	je	.label_2224
	mov	rax, qword ptr [r9 + 0x70]
.label_2193:
	lea	edx, [rcx + 1]
	lea	rdi, [rdi]
	mov	dword ptr [r15], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	nop	
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbp
	mov	qword ptr [rax + rcx + 0x18], rbx
	lea	rdi, [rdi]
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_2231
	mov	qword ptr [rbp], r15
.label_2231:
	test	rbx, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	nop	
	je	.label_2091
	mov	rsp, rsp
	mov	qword ptr [rbx], r15
	nop	
	test	rbp, rbp
	jne	.label_2249
	jmp	.label_2091
.label_2208:
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x80]
	lea	rdi, [rdi]
	cmp	ecx, 0xf
	je	.label_2162
	mov	rsp, rsp
	mov	r13, r15
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0x70]
.label_2205:
	lea	rdi, [rdi]
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], edx
	lea	rsi, [rsi]
	movsxd	rcx, ecx
	lea	rdi, [rdi]
	shl	rcx, 6
	nop	
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	lea	rdi, [rdi]
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
.label_2249:
	nop	
	mov	rdi, r13
	mov	rbx, qword ptr [rsp + 0x58]
	mov	rsi, rbx
	call	peek_token
	lea	rdi, [rdi]
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_2038
.label_2159:
	mov	rbp, r9
	nop	
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rsp, rsp
	je	.label_2091
	lea	rdi, [rdi]
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	jmp	.label_2047
.label_2053:
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	dword ptr [r12], eax
	mov	r9, qword ptr [rsp + 0x18]
	jmp	.label_2045
.label_2223:
	mov	dword ptr [r12], 2
	jmp	.label_2071
.label_2229:
	mov	dword ptr [r12], 7
.label_2240:
	mov	qword ptr [rsp + 0x18], r9
	jmp	.label_2079
.label_2252:
	mov	r9, rbp
	mov	rbp, r15
	jmp	.label_2046
.label_2215:
	mov	rbp, rbp
	mov	rbx, r9
	mov	rbp, rbp
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	test	rax, rax
	je	.label_2091
	nop	
	mov	r9, rbx
	nop	
	mov	rcx, qword ptr [r9 + 0x70]
	nop	
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_2093
.label_2146:
	mov	dword ptr [r12], 6
	jmp	.label_2058
.label_2188:
	nop	
	mov	rbx, r9
	mov	rsp, rsp
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	mov	rbp, rbp
	test	rax, rax
	mov	rsi, qword ptr [rsp]
	je	.label_2091
	lea	rsi, [rsi]
	mov	r9, rbx
	nop	
	mov	rcx, qword ptr [r9 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	nop	
	jmp	.label_2115
.label_2204:
	mov	rdi, r13
	mov	rsp, rsp
	call	free
	mov	rdi, rbx
	call	free
	lea	rdi, [rdi]
	jmp	.label_2091
.label_2157:
	mov	rsp, rsp
	mov	rbp, r9
	mov	edi, 0x3c8
	nop	
	call	malloc
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_2091
	mov	rsp, rsp
	mov	r9, rbp
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	rbp, rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2145
.label_2266:
	nop	
	mov	r15, rsi
	mov	rsp, rsp
	mov	rbp, r9
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	test	rax, rax
	je	.label_2091
	lea	rdi, [rdi]
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rsi, r15
	jmp	.label_2163
.label_2199:
	mov	edi, 0x3c8
	mov	rbx, r9
	call	malloc
	mov	r9, rbx
	lea	rdi, [rdi]
	xor	ebx, ebx
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2176
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_2179
.label_2224:
	mov	qword ptr [rsp + 0x18], r9
	mov	rbp, rbp
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rbp, rbp
	je	.label_2091
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	lea	rsi, [rsi]
	jmp	.label_2193
.label_2247:
	mov	dword ptr [r12], 3
	mov	r9, qword ptr [rsp + 0x18]
	jmp	.label_2045
.label_2076:
	nop	
	mov	r13, r9
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	r9, r13
	mov	rdx, qword ptr [rax]
	inc	rbx
.label_2235:
	lea	rdi, [rdi]
	mov	rsi, rbx
	xor	eax, eax
	nop	dword ptr [rax]
.label_2269:
	test	byte ptr [rdx + rsi*2 - 2], 8
	je	.label_2209
	lea	rsi, [rsi]
	mov	edi, 1
	mov	cl, al
	mov	rsp, rsp
	shl	rdi, cl
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_2209:
	cmp	esi, 0x5f
	mov	rbp, rbp
	je	.label_2216
	mov	rsp, rsp
	movzx	ecx, word ptr [rdx + rsi*2]
	lea	rsi, [rsi]
	and	ecx, 8
	lea	rdi, [rdi]
	test	cx, cx
	nop	
	je	.label_2173
.label_2216:
	lea	ecx, [rax + 1]
	mov	edi, 1
	shl	rdi, cl
	lea	rsi, [rsi]
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_2173:
	mov	rsp, rsp
	add	rax, 2
	add	rsi, 2
	nop	
	cmp	rax, 0x40
	mov	rbp, rbp
	jne	.label_2269
	inc	rbp
	mov	rsp, rsp
	add	rbx, 0x40
	cmp	ebp, 4
	lea	rdi, [rdi]
	jne	.label_2235
	jmp	.label_2073
.label_2059:
	mov	qword ptr [rsp + 0x60], r13
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2035
	mov	r9, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], 0
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_2105
.label_2138:
	nop	
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x18], r9
	nop	
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_2035
	mov	r9, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	lea	rdi, [rdi]
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	rdi, rbx
	lea	rsi, [rsi]
	jmp	.label_2037
.label_2259:
	lea	rdi, [rdi]
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	nop	
	call	malloc
	test	rax, rax
	je	.label_2035
	mov	r9, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	nop	
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdi, r15
	mov	rbp, rbp
	jmp	.label_2068
.label_2084:
	mov	dword ptr [r12], 7
	mov	rsp, rsp
	jmp	.label_2045
.label_2110:
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	mov	ecx, 9
	mov	rsp, rsp
	xor	ebp, ebp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2056
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_2067
.label_2172:
	nop	
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	mov	ecx, 0xa
	xor	ebp, ebp
	test	rax, rax
	je	.label_2086
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rdi, [rdi]
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_2090
.label_2162:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2091
	mov	r13, r15
	mov	r9, rbx
	mov	rbp, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	nop	
	mov	dword ptr [r9 + 0x80], 0
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	jmp	.label_2205
.label_2091:
	lea	rdi, [rdi]
	mov	dword ptr [r12], 0xc
	lea	rsi, [rsi]
	jmp	.label_2058
.label_2098:
	mov	dword ptr [r12], 7
	jmp	.label_2119
.label_2102:
	mov	rbp, rdi
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rbx, r9
	lea	rdi, [rdi]
	call	free
	mov	r9, rbx
	lea	rdi, [rdi]
	jmp	.label_2046
.label_2256:
	lea	rsi, [rsi]
	test	rsi, rsi
	je	.label_2132
	mov	rsp, rsp
	mov	r14d, 0x400ff
.label_2143:
	nop	
	mov	rbp, rsi
	mov	rsi, qword ptr [rbp + 8]
	test	rsi, rsi
	jne	.label_2143
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	test	rsi, rsi
	jne	.label_2143
.label_2170:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	mov	rsp, rsp
	je	.label_2149
	nop	
	cmp	eax, 6
	jne	.label_2151
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_2031
.label_2149:
	mov	rdi, qword ptr [rbp + 0x28]
.label_2031:
	nop	
	call	free
.label_2151:
	mov	rax, qword ptr [rbp]
	nop	
	test	rax, rax
	je	.label_2132
	mov	rsi, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	cmp	rsi, rbp
	mov	rsp, rsp
	mov	rbp, rax
	je	.label_2170
	test	rsi, rsi
	mov	rbp, rax
	je	.label_2170
	jmp	.label_2143
.label_2132:
	lea	rsi, [rsi]
	mov	dword ptr [r12], 8
	jmp	.label_2058
.label_2056:
	mov	r9, qword ptr [rsp + 0x18]
	jmp	.label_2118
.label_2086:
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jmp	.label_2118
.label_2124:
	mov	dword ptr [r12], eax
	mov	rbp, rbp
	jmp	.label_2119
.label_2032:
	mov	qword ptr [rsp + 0x60], r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_2035
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x60]
	jmp	.label_2195
.label_2035:
	mov	dword ptr [r12], 0xc
	mov	r13, qword ptr [rsp + 0x60]
.label_2071:
	nop	
	mov	r15, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jmp	.label_2079
.label_2203:
	call	free
	mov	rbp, rbp
	mov	rdi, r14
	call	free
	nop	
	mov	ecx, 0xc
.label_2052:
	mov	r12, qword ptr [rsp + 0x98]
	mov	dword ptr [r12], ecx
.label_2119:
	mov	rsp, rsp
	mov	r9, r13
.label_2045:
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r9
.label_2079:
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [r15]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 8]
	nop	
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	nop	
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	cmp	dword ptr [r12], 0
	mov	r15d, 0
	mov	r9, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	ebp, 0
	jne	.label_2038
.label_2046:
	mov	qword ptr [rsp + 0x18], r9
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp]
	mov	rdi, rbx
	mov	r13, qword ptr [rsp + 0x58]
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x30]
	mov	rdx, r14
	mov	rbp, rbp
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	nop	
	mov	eax, r14d
	nop	
	and	eax, 0x1000000
	mov	qword ptr [rsp + 0xd0], rax
	and	r14d, 0x200000
	mov	qword ptr [rsp + 0x50], r14
	nop	dword ptr [rax]
.label_2152:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx + 8]
	nop	
	cmp	eax, 0x17
	ja	.label_2262
	mov	rsp, rsp
	mov	ecx, 0x8c0800
	mov	rbp, rbp
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_2264
	mov	r14, qword ptr [r13 + 0x48]
	nop	
	movdqu	xmm0, xmmword ptr [rbx]
	nop	
	movdqa	xmmword ptr [rsp + 0xb0], xmm0
	mov	rdx, -1
	nop	
	cmp	eax, 0x17
	mov	rbp, rbp
	je	.label_2077
	mov	r14, rbp
	lea	rsi, [rsi]
	cmp	eax, 0x12
	nop	
	sete	cl
	movzx	r15d, cl
	cmp	eax, 0x13
	lea	rsi, [rsi]
	mov	rcx, -1
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rbp, rbp
	cmove	rcx, rax
	jmp	.label_2027
.label_2088:
	lea	rsi, [rsi]
	lea	rax, [r15 + r15*4]
	nop	
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	edx, 0x8000
	mov	rsp, rsp
	cmovle	rdx, rax
	nop	dword ptr [rax]
.label_2077:
	mov	rsp, rsp
	mov	r15, rdx
	mov	rdi, rbx
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	mov	dl, byte ptr [rbx]
	lea	rdi, [rdi]
	movzx	ecx, dl
	movzx	eax, byte ptr [rbx + 8]
	nop	
	mov	esi, 0x18
	cmp	eax, 0x18
	je	.label_2060
	nop	
	cmp	eax, 2
	je	.label_2070
	lea	rsi, [rsi]
	mov	dl, 0x2c
	cmp	ecx, 0x2c
	je	.label_2029
	nop	
	cmp	ecx, 0x30
	mov	rdx, -2
	nop	
	jb	.label_2077
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_2077
	cmp	r15, -2
	je	.label_2077
	cmp	ecx, 0x39
	nop	
	ja	.label_2077
	nop	
	cmp	r15, -1
	mov	rbp, rbp
	jne	.label_2088
	lea	rdx, [rcx - 0x30]
	nop	
	jmp	.label_2077
.label_2029:
	lea	rdi, [rdi]
	mov	esi, eax
	nop	dword ptr [rax]
.label_2060:
	cmp	r15, -1
	lea	rdi, [rdi]
	jne	.label_2165
	movzx	eax, dl
	cmp	eax, 0x2c
	lea	rdi, [rdi]
	jne	.label_2095
	cmp	esi, 1
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_2099
.label_2095:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe0], rbp
	mov	rbp, rbp
	jmp	.label_2103
	nop	word ptr cs:[rax + rax]
.label_2165:
	cmp	r15, -2
	je	.label_2070
	lea	rdi, [rdi]
	cmp	esi, 0x18
	mov	rsp, rsp
	je	.label_2113
	cmp	esi, 1
	lea	rsi, [rsi]
	jne	.label_2070
	movzx	ecx, dl
	cmp	ecx, 0x2c
	jne	.label_2070
.label_2099:
	mov	qword ptr [rsp + 0x60], r14
	nop	
	mov	r14, rbp
	mov	rbp, r12
	lea	rsi, [rsi]
	mov	rdx, -1
	jmp	.label_2064
.label_2113:
	mov	rbp, rbp
	mov	r14, rbp
	mov	rcx, r15
	mov	rbp, rbp
	jmp	.label_2129
.label_2097:
	lea	rax, [r12 + r12*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	nop	
	cmovg	rdx, rax
.label_2064:
	mov	r12, rdx
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	call	peek_token
	cdqe	
	lea	rsi, [rsi]
	add	qword ptr [r13 + 0x48], rax
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + 8]
	mov	rsp, rsp
	cmp	eax, 0x18
	lea	rsi, [rsi]
	je	.label_2150
	cmp	eax, 2
	je	.label_2160
	lea	rsi, [rsi]
	cmp	ecx, 0x2c
	je	.label_2150
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	mov	rdx, -2
	jb	.label_2064
	mov	rbp, rbp
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_2064
	cmp	r12, -2
	je	.label_2064
	lea	rdi, [rdi]
	movzx	eax, cl
	mov	rsp, rsp
	cmp	eax, 0x39
	nop	
	ja	.label_2064
	lea	rdi, [rdi]
	cmp	r12, -1
	mov	rsp, rsp
	jne	.label_2097
	nop	
	add	rcx, -0x30
	mov	rdx, rcx
	nop	
	jmp	.label_2064
.label_2150:
	mov	rcx, r12
	lea	rsi, [rsi]
	cmp	rcx, -2
	lea	rsi, [rsi]
	je	.label_2160
	cmp	rcx, -1
	mov	r12, rbp
	lea	rsi, [rsi]
	je	.label_2129
	cmp	r15, rcx
	mov	rsp, rsp
	jg	.label_2184
.label_2129:
	cmp	eax, 0x18
	nop	
	jne	.label_2184
	mov	rsp, rsp
	cmp	rcx, -1
	mov	rax, rcx
	cmove	rax, r15
	cmp	rax, 0x8000
	lea	rdi, [rdi]
	jge	.label_2190
	nop	dword ptr [rax]
.label_2027:
	lea	rdi, [rdi]
	mov	rbp, rcx
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	mov	rsp, rsp
	add	qword ptr [r13 + 0x48], rax
	test	r14, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe0], r14
	nop	
	mov	ecx, 0
	lea	rsi, [rsi]
	je	.label_2054
	lea	rsi, [rsi]
	mov	r9, rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r9
	mov	rax, r9
	lea	rsi, [rsi]
	or	rax, r15
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rax, rdi
	lea	rsi, [rsi]
	je	.label_2063
	test	r15, r15
	lea	rdi, [rdi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rax
	nop	
	mov	r12, rdi
	mov	r8, qword ptr [rsp + 0x18]
	pxor	xmm1, xmm1
	jg	.label_2181
.label_2225:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r12 + 0x30]
	mov	rsp, rsp
	cmp	eax, 0x11
	jne	.label_2232
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	word ptr cs:[rax + rax]
.label_2238:
	mov	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_2238
	mov	rdx, qword ptr [rcx + 0x10]
	nop	
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_2238
	nop	
.label_2197:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	movzx	esi, dl
	lea	rsi, [rsi]
	cmp	esi, 0x11
	mov	rsp, rsp
	jne	.label_2245
	cmp	qword ptr [rcx + 0x28], rax
	nop	
	jne	.label_2245
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_2245:
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_2232
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rsi
	je	.label_2197
	lea	rsi, [rsi]
	test	rdx, rdx
	nop	
	mov	rcx, rsi
	mov	rbp, rbp
	je	.label_2197
	jmp	.label_2238
	nop	dword ptr [rax + rax]
.label_2232:
	nop	
	mov	qword ptr [rsp + 0xe0], rdi
	nop	
	cmp	r9, -1
	sete	bl
	nop	
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	mov	rsp, rsp
	je	.label_2254
	mov	rsp, rsp
	mov	rax, qword ptr [r8 + 0x70]
.label_2192:
	lea	rdi, [rdi]
	movzx	edx, bl
	or	edx, 0xa
	lea	esi, [rcx + 1]
	nop	
	mov	dword ptr [r8 + 0x80], esi
	mov	rbp, rbp
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	nop	
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], edx
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rsp, rsp
	test	r12, r12
	je	.label_2025
	mov	rsp, rsp
	mov	qword ptr [r12], r13
.label_2025:
	lea	rsi, [rsi]
	add	r15, 2
	cmp	r15, r9
	jg	.label_2048
	nop	
	jmp	.label_2055
	nop	word ptr cs:[rax + rax]
.label_2063:
	mov	rbx, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_2063
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_2063
	nop	
.label_2112:
	nop	
	mov	eax, dword ptr [rbx + 0x30]
	mov	rbp, rbp
	mov	ecx, 0x400ff
	and	eax, ecx
	nop	
	cmp	eax, 3
	lea	rsi, [rsi]
	je	.label_2074
	mov	rbp, rbp
	cmp	eax, 6
	jne	.label_2082
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	nop	
	mov	rdi, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rsp, rsp
	mov	rdi, rbp
	jmp	.label_2131
	nop	dword ptr [rax]
.label_2074:
	mov	rdi, qword ptr [rbx + 0x28]
.label_2131:
	mov	rsp, rsp
	call	free
.label_2082:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_2054
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rsp, rsp
	je	.label_2112
	test	rax, rax
	mov	rbp, rbp
	mov	rbx, rdx
	je	.label_2112
	jmp	.label_2063
.label_2194:
	mov	qword ptr [rsp + 8], r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], r15
	lea	rdi, [rdi]
	mov	r15, r8
	lea	rsi, [rsi]
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2125
	mov	r8, r15
	mov	rcx, qword ptr [r8 + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	lea	rdi, [rdi]
	mov	dword ptr [r8 + 0x80], 0
	nop	
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_2128
.label_2261:
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	r12, rbx
	lea	rdi, [rdi]
	jmp	.label_2182
.label_2211:
	mov	edi, 0x3c8
	mov	rsp, rsp
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	
	mov	r8, rbp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2062
	mov	rsp, rsp
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2100
.label_2125:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_2136
.label_2080:
	mov	qword ptr [r14], 0
.label_2136:
	xor	r12d, r12d
.label_2182:
	mov	edi, 0x3c8
	lea	rsi, [rsi]
	call	malloc
	test	rax, rax
	mov	r8, r15
	lea	rsi, [rsi]
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 8]
	mov	rsp, rsp
	je	.label_2062
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r8 + 0x70]
	nop	
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2177
	nop	word ptr cs:[rax + rax]
.label_2055:
	mov	rsp, rsp
	mov	rbp, qword ptr [r12]
	mov	rsp, rsp
	mov	ecx, dword ptr [r8 + 0x80]
	nop	
	cmp	ecx, 0xf
	mov	rbp, rbp
	je	.label_2194
	mov	rax, qword ptr [r8 + 0x70]
.label_2128:
	lea	rdx, [r12 + 0x28]
	nop	
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	nop	
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbx, [rax + rcx + 8]
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	nop	
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], rbx
	mov	rbp, rbp
	mov	rcx, rbx
	mov	rsp, rsp
	lea	r14, [rsp + 0x70]
	jmp	.label_2201
	nop	dword ptr [rax + rax]
.label_2023:
	lea	rdx, [r12 + 0x28]
	mov	rbp, rbp
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	lea	rsi, [rsi]
	shl	rsi, 6
	nop	
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	mov	rsp, rsp
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	nop	
	lea	rcx, [rax + rsi + 8]
	nop	
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	nop	
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r14], rcx
.label_2201:
	mov	qword ptr [rcx], rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + 0x30], 0x40000
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r14]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_2242
	mov	rsp, rsp
	lea	r14, [rbp + 8]
	mov	r12, rax
	jmp	.label_2140
	nop	word ptr [rax + rax]
.label_2242:
	mov	rbp, rbp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2219:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	r12, rcx
	je	.label_2191
	test	r12, r12
	jne	.label_2226
.label_2191:
	mov	r12, qword ptr [rax]
	nop	
	mov	rbp, qword ptr [rbp]
	test	r12, r12
	jne	.label_2219
	nop	
	jmp	.label_2265
.label_2226:
	lea	r14, [rbp + 0x10]
.label_2140:
	mov	rbp, rbp
	mov	ecx, dword ptr [r8 + 0x80]
	nop	
	cmp	ecx, 0xf
	nop	
	je	.label_2121
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_2023
.label_2121:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_2080
	mov	r8, r15
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_2023
	nop	word ptr cs:[rax + rax]
.label_2265:
	mov	rsp, rsp
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	nop	
	je	.label_2261
	mov	rax, qword ptr [r8 + 0x70]
	nop	
	mov	r12, rbx
.label_2177:
	nop	
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	lea	rdi, [rdi]
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	nop	
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r13], rbx
	lea	rdi, [rdi]
	test	r12, r12
	je	.label_2062
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_2211
	lea	rsi, [rsi]
	mov	rax, qword ptr [r8 + 0x70]
.label_2100:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	nop	
	lea	r13, [rax + rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 8], 0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x10], rbx
	nop	
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0xa
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], r13
	cmp	r15, r9
	nop	
	lea	r15, [r15 + 1]
	lea	rdi, [rdi]
	jl	.label_2055
.label_2048:
	mov	rax, qword ptr [rsp + 0x38]
	test	rax, rax
	je	.label_2117
	mov	rbx, rax
	mov	rsp, rsp
	mov	ecx, dword ptr [r8 + 0x80]
	nop	
	cmp	ecx, 0xf
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x98]
	je	.label_2122
	lea	rsi, [rsi]
	mov	rax, qword ptr [r8 + 0x70]
.label_2089:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	nop	
	lea	rdx, [rax + rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r13], rdx
	mov	r13, rdx
	nop	
	jmp	.label_2133
.label_2117:
	mov	r12, qword ptr [rsp + 0x98]
.label_2133:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, r13
	nop	
	jmp	.label_2137
.label_2184:
	mov	qword ptr [rsp + 0xe0], r14
.label_2103:
	nop	
	mov	dword ptr [r12], 0xa
	lea	rsi, [rsi]
	xor	ecx, ecx
	jmp	.label_2054
.label_2181:
	mov	rbp, rbp
	cmp	r15, 2
	mov	r13, rdi
	mov	rbp, rbp
	mov	rbp, rdi
	jl	.label_2083
	mov	rax, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rax]
	mov	r13, rax
	mov	rbp, rbp
	mov	ebx, 2
	lea	rdi, [rdi]
	mov	rdi, rax
	jmp	.label_2175
.label_2254:
	mov	edi, 0x3c8
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	lea	rdi, [rdi]
	pxor	xmm1, xmm1
	mov	rbp, rbp
	mov	r8, rbp
	test	rax, rax
	je	.label_2062
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x70], rax
	mov	rsp, rsp
	mov	dword ptr [r8 + 0x80], 0
	mov	rbp, rbp
	xor	ecx, ecx
	jmp	.label_2192
.label_2160:
	mov	r12, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x60]
.label_2070:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x50], 0
	nop	
	je	.label_2202
	mov	qword ptr [r13 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xb0]
	nop	
	movdqu	xmmword ptr [rbx], xmm0
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 8], 1
	nop	
	mov	rcx, rbp
	mov	qword ptr [rsp + 0xe0], rbp
	jmp	.label_2054
.label_2234:
	nop	
	mov	qword ptr [rsp + 0x60], rdi
	mov	qword ptr [rsp + 8], r9
	mov	edi, 0x3c8
	mov	rsp, rsp
	call	malloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_2218
	mov	rbp, rbp
	mov	r14, rbp
	mov	r8, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_2244
.label_2210:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], rdi
	mov	rsp, rsp
	mov	r13, rbp
	jmp	.label_2220
.label_2218:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], 0
	lea	rdi, [rdi]
	jmp	.label_2239
.label_2126:
	lea	rsi, [rsi]
	mov	qword ptr [r12], 0
.label_2239:
	nop	
	xor	r13d, r13d
.label_2220:
	lea	rdi, [rdi]
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x18]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 8]
	nop	
	je	.label_2062
	mov	rbp, rbp
	mov	rcx, qword ptr [r8 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	jmp	.label_2255
	nop	
.label_2175:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	mov	rbp, rbp
	je	.label_2234
	mov	rsp, rsp
	mov	r14, rbp
	mov	rax, qword ptr [r8 + 0x70]
.label_2244:
	lea	rsi, [rsi]
	lea	rdx, [r13 + 0x28]
	mov	rbp, rbp
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	lea	rdi, [rdi]
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	mov	rbp, rbp
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], rbp
	lea	rdi, [rdi]
	mov	rcx, rbp
	lea	r12, [rsp + 0x70]
	jmp	.label_2270
	nop	word ptr cs:[rax + rax]
.label_2033:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	lea	rdi, [rdi]
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rsi, [rsi]
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r12], rcx
.label_2270:
	mov	rsp, rsp
	mov	qword ptr [rcx], r14
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12]
	lea	rsi, [rsi]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rdx, qword ptr [r12]
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2081
	lea	rdi, [rdi]
	mov	r14, rdx
	lea	r12, [r14 + 8]
	mov	r13, rax
	jmp	.label_2092
	nop	dword ptr [rax]
.label_2081:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2108:
	mov	rcx, rax
	mov	rax, r13
	mov	r13, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	r13, rcx
	je	.label_2248
	test	r13, r13
	lea	rdi, [rdi]
	jne	.label_2207
.label_2248:
	nop	
	mov	r13, qword ptr [rax]
	mov	rdx, qword ptr [rdx]
	test	r13, r13
	lea	rsi, [rsi]
	jne	.label_2108
	jmp	.label_2111
.label_2207:
	lea	rdi, [rdi]
	mov	r14, rdx
	lea	rsi, [rsi]
	lea	r12, [r14 + 0x10]
.label_2092:
	mov	rbp, rbp
	mov	ecx, dword ptr [r8 + 0x80]
	lea	rdi, [rdi]
	cmp	ecx, 0xf
	je	.label_2114
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_2033
.label_2114:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], rdi
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_2126
	mov	r8, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r8 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	mov	rsp, rsp
	pxor	xmm1, xmm1
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_2033
	nop	word ptr cs:[rax + rax]
.label_2111:
	mov	ecx, dword ptr [r8 + 0x80]
	mov	rbp, rbp
	cmp	ecx, 0xf
	lea	rsi, [rsi]
	je	.label_2210
	nop	
	mov	rax, qword ptr [r8 + 0x70]
	mov	r13, rbp
.label_2255:
	mov	rbp, rbp
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	nop	
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_2250
	mov	qword ptr [rdi], rdx
.label_2250:
	lea	rsi, [rsi]
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_2062
	lea	rdi, [rdi]
	mov	rbp, rdx
	nop	
	mov	qword ptr [r13], rbp
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	mov	rdi, rbp
	nop	
	jl	.label_2175
.label_2083:
	cmp	r15, r9
	mov	rsp, rsp
	jne	.label_2187
	mov	qword ptr [rsp + 0x18], r8
	lea	rdi, [rdi]
	mov	rcx, rbp
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	jmp	.label_2054
.label_2122:
	mov	qword ptr [rsp + 0x18], r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	nop	
	mov	ecx, 0
	lea	rsi, [rsi]
	je	.label_2054
	mov	r8, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	rbp, rbp
	mov	dword ptr [r8 + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	pxor	xmm1, xmm1
	jmp	.label_2089
.label_2187:
	mov	rbx, qword ptr [r13]
	mov	rbp, rbp
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_2212
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rbp
	lea	rdi, [rdi]
	mov	rax, qword ptr [r8 + 0x70]
.label_2109:
	nop	
	lea	rdx, [r13 + 0x28]
	lea	rdi, [rdi]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	mov	rsp, rsp
	movsxd	rcx, ecx
	mov	rsp, rsp
	shl	rcx, 6
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	mov	rsp, rsp
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r12, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], r12
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rbp, [rsp + 0x70]
	jmp	.label_2222
	nop	word ptr cs:[rax + rax]
.label_2051:
	nop	
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	lea	rsi, [rsi]
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	lea	rdi, [rdi]
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	mov	rbp, rbp
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	rbp, rbp
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	rbp, rbp
	mov	qword ptr [rbp], rcx
.label_2222:
	mov	rsp, rsp
	mov	qword ptr [rcx], rbx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp]
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	je	.label_2267
	lea	rbp, [rbx + 8]
	mov	r13, rax
	jmp	.label_2049
.label_2267:
	lea	rsi, [rsi]
	xor	eax, eax
.label_2036:
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	rax, r13
	nop	
	mov	r13, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	r13, rcx
	je	.label_2028
	test	r13, r13
	lea	rsi, [rsi]
	jne	.label_2034
.label_2028:
	mov	rsp, rsp
	mov	r13, qword ptr [rax]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbx]
	lea	rsi, [rsi]
	test	r13, r13
	nop	
	jne	.label_2036
	jmp	.label_2042
.label_2034:
	lea	rbp, [rbx + 0x10]
.label_2049:
	mov	ecx, dword ptr [r8 + 0x80]
	lea	rdi, [rdi]
	cmp	ecx, 0xf
	je	.label_2200
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_2051
.label_2200:
	mov	qword ptr [rsp + 8], r9
	mov	r14, r8
	mov	edi, 0x3c8
	nop	
	call	malloc
	test	rax, rax
	je	.label_2257
	mov	r8, r14
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	mov	rsp, rsp
	pxor	xmm1, xmm1
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_2051
.label_2202:
	mov	qword ptr [rsp + 0xe0], rbp
	cmp	eax, 2
	setne	al
	nop	
	movzx	eax, al
	mov	rbp, rbp
	add	eax, 9
	lea	rsi, [rsi]
	mov	dword ptr [r12], eax
	xor	ecx, ecx
	jmp	.label_2054
.label_2042:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xe0]
	jmp	.label_2225
.label_2190:
	mov	qword ptr [rsp + 0xe0], r14
	mov	rsp, rsp
	mov	dword ptr [r12], 0xf
	nop	
	xor	ecx, ecx
	jmp	.label_2054
.label_2212:
	lea	rsi, [rsi]
	mov	r14, r9
	nop	
	mov	r12, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rbp, rbp
	je	.label_2107
	nop	
	mov	qword ptr [rsp + 0x38], rbp
	lea	rdi, [rdi]
	mov	r8, r12
	mov	rsp, rsp
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x70], rax
	nop	
	mov	dword ptr [r8 + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	pxor	xmm1, xmm1
	mov	rsp, rsp
	mov	r9, r14
	lea	rdi, [rdi]
	jmp	.label_2109
.label_2107:
	mov	qword ptr [rsp + 0x70], 0
	nop	
	jmp	.label_2062
.label_2257:
	lea	rsi, [rsi]
	mov	qword ptr [rbp], 0
.label_2062:
	nop	
	mov	r12, qword ptr [rsp + 0x98]
	mov	dword ptr [r12], 0xc
	xor	ecx, ecx
.label_2054:
	test	rcx, rcx
	nop	
	sete	al
	jne	.label_2137
	lea	rsi, [rsi]
	mov	edx, dword ptr [r12]
	lea	rdi, [rdi]
	test	edx, edx
	mov	rbx, qword ptr [rsp]
	lea	rsi, [rsi]
	je	.label_2142
	lea	rsi, [rsi]
	jmp	.label_2147
	nop	word ptr cs:[rax + rax]
.label_2137:
	mov	rbx, qword ptr [rsp]
.label_2142:
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rbp, rcx
	nop	
	mov	r13, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	je	.label_2152
	nop	
	movzx	edx, byte ptr [rbx + 8]
	mov	rbp, rbp
	cmp	edx, 0x17
	mov	rbp, rbp
	je	.label_2161
	nop	
	cmp	edx, 0xb
	nop	
	mov	rbp, rcx
	mov	rbp, rbp
	jne	.label_2152
.label_2161:
	mov	rbp, rbp
	test	al, al
	jne	.label_2044
	mov	r14d, 0x400ff
	nop	word ptr cs:[rax + rax]
.label_2174:
	nop	
	mov	rbp, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	test	rcx, rcx
	jne	.label_2174
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	lea	rsi, [rsi]
	jne	.label_2174
	nop	
.label_2078:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp + 0x30]
	lea	rdi, [rdi]
	and	eax, r14d
	lea	rdi, [rdi]
	cmp	eax, 3
	mov	rbp, rbp
	je	.label_2180
	lea	rsi, [rsi]
	cmp	eax, 6
	nop	
	jne	.label_2183
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 8]
	nop	
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	nop	
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	nop	
	mov	rdi, rbx
	jmp	.label_2198
	nop	dword ptr [rax + rax]
.label_2180:
	mov	rdi, qword ptr [rbp + 0x28]
.label_2198:
	lea	rsi, [rsi]
	call	free
.label_2183:
	nop	
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_2044
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_2078
	test	rcx, rcx
	mov	rbp, rax
	je	.label_2078
	jmp	.label_2174
.label_2147:
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rcx, qword ptr [rsp + 0xe0]
	test	rcx, rcx
	nop	
	je	.label_2038
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_2130:
	mov	rbp, rcx
	nop	
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	lea	rsi, [rsi]
	jne	.label_2130
	nop	
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	lea	rdi, [rdi]
	jne	.label_2130
	nop	dword ptr [rax]
.label_2251:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_2230
	cmp	eax, 6
	jne	.label_2233
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	call	free
	mov	rdi, rbx
	jmp	.label_2243
	nop	
.label_2230:
	nop	
	mov	rdi, qword ptr [rbp + 0x28]
.label_2243:
	lea	rsi, [rsi]
	call	free
.label_2233:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_2038
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_2251
	test	rcx, rcx
	lea	rdi, [rdi]
	mov	rbp, rax
	je	.label_2251
	mov	rsp, rsp
	jmp	.label_2130
.label_2044:
	mov	dword ptr [r12], 0xd
.label_2058:
	lea	rsi, [rsi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_2038
.label_2262:
	lea	rdi, [rdi]
	mov	r15, rbp
	mov	rsp, rsp
	jmp	.label_2038
.label_2264:
	mov	r15, rbp
.label_2038:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_2189:
	mov	edi, OFFSET FLAT:.str.5_3
	mov	esi, OFFSET FLAT:.str.6_3
	lea	rdi, [rdi]
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41fc20

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x18
	mov	r15, r9
	mov	dword ptr [rsp + 0x14], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	rsp, rsp
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	r12, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], 0
	mov	edi, 0x20
	mov	esi, 1
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_2287
	mov	qword ptr [rsp], r15
	nop	
	mov	edi, 0x50
	nop	
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_2277
	lea	rdi, [rdi]
	mov	al, byte ptr [r15 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 0x14]
	or	al, cl
	lea	rdi, [rdi]
	mov	byte ptr [r15 + 0x20], al
	nop	
	lea	rcx, [rsp + 8]
	xor	r9d, r9d
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	rsi, rbx
	mov	rdx, r15
	mov	r8, r14
	nop	
	call	build_charclass
	mov	rbp, rbp
	mov	r14d, eax
	mov	rbp, rbp
	test	r14d, r14d
	jne	.label_2283
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_2285
	lea	rdi, [rdi]
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_2279:
	movsx	rcx, al
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	shl	rax, cl
	mov	rdx, rcx
	sar	rdx, 0x3f
	lea	rdi, [rdi]
	shr	rdx, 0x3a
	add	rdx, rcx
	lea	rsi, [rsi]
	sar	rdx, 6
	or	qword ptr [rbx + rdx*8], rax
	mov	al, byte ptr [rbp]
	mov	rbp, rbp
	inc	rbp
	lea	rdi, [rdi]
	test	al, al
	jne	.label_2279
.label_2285:
	mov	eax, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	test	al, al
	je	.label_2281
	movdqu	xmm0, xmmword ptr [rbx]
	lea	rdi, [rdi]
	pcmpeqd	xmm1, xmm1
	lea	rsi, [rsi]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	mov	rsp, rsp
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	mov	rbp, rbp
	pxor	xmm0, xmm1
	nop	
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_2281:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_2288
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax]
	lea	rdi, [rdi]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	nop	
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	and	qword ptr [rbx + 0x18], rax
.label_2288:
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	mov	rsp, rsp
	je	.label_2280
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x70]
.label_2276:
	lea	edx, [rcx + 1]
	mov	rsp, rsp
	mov	dword ptr [r12 + 0x80], edx
	mov	rsp, rsp
	movsxd	rcx, ecx
	mov	rsp, rsp
	shl	rcx, 6
	mov	rsp, rsp
	lea	r14, [rax + rcx + 8]
	mov	rsp, rsp
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x18], 0
	nop	
	mov	qword ptr [rax + rcx + 0x30], rbx
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], 3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	cmp	dword ptr [r12 + 0xb4], 2
	lea	rsi, [rsi]
	jl	.label_2282
	lea	rsi, [rsi]
	or	byte ptr [r12 + 0xb0], 2
	mov	rsp, rsp
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	lea	rsi, [rsi]
	je	.label_2275
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r12 + 0x70]
.label_2284:
	lea	rdi, [rdi]
	lea	ecx, [rax + 1]
	mov	dword ptr [r12 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r15
	lea	rdi, [rdi]
	mov	dword ptr [rbp + rbx + 0x38], 6
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	lea	rsi, [rsi]
	mov	eax, dword ptr [r12 + 0x80]
	nop	
	cmp	eax, 0xf
	je	.label_2286
	mov	rcx, qword ptr [r12 + 0x70]
.label_2272:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rax + 1]
	nop	
	mov	dword ptr [r12 + 0x80], esi
	movsxd	rsi, eax
	lea	rsi, [rsi]
	shl	rsi, 6
	nop	
	lea	rax, [rcx + rsi + 8]
	mov	rbp, rbp
	mov	qword ptr [rcx + rsi + 8], 0
	nop	
	mov	qword ptr [rcx + rsi + 0x10], r14
	lea	rdi, [rdi]
	mov	qword ptr [rcx + rsi + 0x18], rdx
	mov	dword ptr [rcx + rsi + 0x38], 0xa
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [rcx + rsi + 0x20], xmm0
	mov	qword ptr [rcx + rsi + 0x40], -1
	lea	rdi, [rdi]
	mov	qword ptr [r14], rax
	mov	qword ptr [rdx], rax
	jmp	.label_2278
.label_2282:
	mov	rdi, qword ptr [r15]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	nop	
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	nop	
	mov	rax, r14
	lea	rdi, [rdi]
	jmp	.label_2278
.label_2287:
	mov	rsp, rsp
	mov	dword ptr [r15], 0xc
	nop	
	jmp	.label_2271
.label_2277:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	jmp	.label_2274
.label_2283:
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r15]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 8]
	call	free
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
	jmp	.label_2271
.label_2280:
	lea	rsi, [rsi]
	mov	edi, 0x3c8
.label_3423:
	mov	rbp, rbp
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_2273
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_2276
.label_2275:
	mov	edi, 0x3c8
	call	malloc
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_2273
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x70], rbp
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x80], 0
	nop	
	xor	eax, eax
	jmp	.label_2284
.label_2273:
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 8]
	nop	
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rsp, rsp
	mov	rdi, r15
.label_2274:
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
.label_2271:
	xor	eax, eax
.label_2278:
	mov	rbp, rbp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_2286:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	mov	rbp, rbp
	xor	eax, eax
	test	rcx, rcx
	nop	
	je	.label_2278
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	rsp, rsp
	mov	dword ptr [r12 + 0x80], 0
	mov	rsp, rsp
	jmp	.label_2272
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x420130

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	lea	rsi, [rsi]
	jle	.label_2298
	mov	rcx, qword ptr [rsi + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	mov	rsp, rsp
	jl	.label_2293
	mov	rsp, rsp
	mov	r8, qword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_2293
	mov	rcx, qword ptr [rsi + 0x10]
	nop	
	cmp	dword ptr [rcx + r8*4], -1
	lea	rdi, [rdi]
	je	.label_2295
.label_2293:
	test	dl, 1
	mov	rsp, rsp
	je	.label_2291
	mov	rsp, rsp
	movzx	ecx, al
	cmp	ecx, 0x5c
	lea	rsi, [rsi]
	jne	.label_2291
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	lea	rsi, [rsi]
	jge	.label_2291
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x48], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	lea	rsi, [rsi]
	jmp	.label_2295
.label_2298:
	mov	byte ptr [rdi + 8], 2
	mov	rsp, rsp
	xor	eax, eax
	ret	
.label_2291:
	mov	rbp, rbp
	cmp	eax, 0x5b
	jne	.label_2301
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsi + 0x58]
	lea	rsi, [rsi]
	jge	.label_2290
	mov	rcx, qword ptr [rsi + 8]
	nop	
	mov	al, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	jmp	.label_2292
.label_2301:
	cmp	eax, 0x5e
	nop	
	je	.label_2297
	lea	rdi, [rdi]
	cmp	eax, 0x5d
	je	.label_2300
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_2295
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	lea	rsi, [rsi]
	ret	
.label_2295:
	mov	byte ptr [rdi + 8], 1
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	ret	
.label_2290:
	mov	rbp, rbp
	xor	eax, eax
.label_2292:
	mov	byte ptr [rdi], al
	nop	
	movzx	eax, al
	nop	
	cmp	eax, 0x3d
	je	.label_2296
	cmp	eax, 0x3a
	je	.label_2299
	lea	rdi, [rdi]
	cmp	eax, 0x2e
	jne	.label_2289
	mov	byte ptr [rdi + 8], 0x1a
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	ret	
.label_2300:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_2299:
	mov	rsp, rsp
	test	dl, 4
	mov	rsp, rsp
	jne	.label_2294
.label_2289:
	nop	
	mov	byte ptr [rdi + 8], 1
	mov	rbp, rbp
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_2297:
	lea	rdi, [rdi]
	mov	byte ptr [rdi + 8], 0x19
	mov	rsp, rsp
	mov	eax, 1
	ret	
.label_2296:
	mov	byte ptr [rdi + 8], 0x1c
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	ret	
.label_2294:
	mov	byte ptr [rdi + 8], 0x1e
	lea	rdi, [rdi]
	mov	eax, 2
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4202b0

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	r15
	push	r14
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x18
	mov	r15, rdx
	nop	
	mov	r14, rdi
	mov	rdx, qword ptr [rsi + 0x48]
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_2304
	lea	rax, [rdx + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	nop	
	jge	.label_2304
	nop	
	mov	r10, qword ptr [rsi + 0x10]
	lea	r11, [r10 + rdx*4]
	mov	edi, 1
	nop	
.label_2315:
	cmp	dword ptr [r11 + rdi*4], -1
	jne	.label_2320
	lea	rsi, [rsi]
	lea	rax, [rdx + rdi + 1]
	inc	rdi
	cmp	rax, rbx
	lea	rdi, [rdi]
	jl	.label_2315
.label_2320:
	cmp	edi, 2
	lea	rsi, [rsi]
	jl	.label_2304
	mov	dword ptr [r14], 1
	mov	rbp, rbp
	mov	eax, dword ptr [r10 + rdx*4]
	lea	rdi, [rdi]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	nop	
	add	rax, rdx
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_2307
.label_2304:
	movsxd	rax, ecx
	add	rdx, rax
	mov	qword ptr [rsi + 0x48], rdx
	movzx	edi, byte ptr [r15 + 8]
	mov	rbp, rbp
	lea	eax, [rdi - 0x16]
	cmp	eax, 8
	ja	.label_2313
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_2317]]
.label_3403:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], rdx
	mov	rsp, rsp
	jle	.label_2303
	mov	rbp, rbp
	mov	r11b, byte ptr [r15]
	xor	r12d, r12d
	jmp	.label_2321
	nop	dword ptr [rax]
.label_2306:
	inc	r12
	mov	rbp, rbp
	movzx	edi, byte ptr [r15 + 8]
.label_2321:
	lea	rsi, [rsi]
	movzx	edi, dil
	mov	rsp, rsp
	cmp	edi, 0x1e
	nop	
	jne	.label_2305
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_2309
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	nop	
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_2308
	nop	word ptr cs:[rax + rax]
.label_2305:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi + 8]
.label_2323:
	mov	bl, byte ptr [rbx + rdx]
.label_2308:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_2303
	nop	
	movzx	edx, r11b
	movzx	ecx, bl
	nop	
	cmp	ecx, edx
	jne	.label_2322
	mov	rcx, qword ptr [rsi + 8]
	movzx	ecx, byte ptr [rcx + rdi]
	cmp	ecx, 0x5d
	je	.label_2302
.label_2322:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	byte ptr [rcx + r12], bl
	lea	rdi, [rdi]
	cmp	r12, 0x1e
	lea	rdi, [rdi]
	jle	.label_2306
	jmp	.label_2303
.label_2309:
	mov	rbp, rbp
	cmp	byte ptr [rsi + 0x8c], 0
	lea	rdi, [rdi]
	je	.label_2311
	nop	
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	nop	
	cmp	r8, r9
	lea	rsi, [rsi]
	je	.label_2314
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	lea	rdi, [rdi]
	je	.label_2318
.label_2314:
	mov	rdx, qword ptr [rsi]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi + 0x18]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_2318
	nop	
	mov	edi, 1
	nop	
	cmp	dword ptr [rsi + 0x90], 1
	mov	rsp, rsp
	je	.label_2310
	lea	rdx, [r8 + 1]
	nop	
	cmp	rdx, r9
	jge	.label_2310
	lea	r10, [r8*4]
	lea	rdi, [rdi]
	add	r10, qword ptr [rsi + 0x10]
	lea	rsi, [rsi]
	mov	edi, 1
.label_2316:
	lea	rdi, [rdi]
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_2310
	lea	rdx, [r8 + rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	mov	rbp, rbp
	cmp	rdx, r9
	jl	.label_2316
.label_2310:
	movsxd	rdi, edi
	mov	rsp, rsp
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbp, rbp
	jmp	.label_2308
.label_2311:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdi]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbp, rbp
	mov	rbx, qword ptr [rsi]
	jmp	.label_2323
.label_2318:
	lea	rdi, [r8 + 1]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x48], rdi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_2308
.label_2302:
	mov	rsp, rsp
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbp, rbp
	movsxd	rax, r12d
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	mov	rsp, rsp
	movzx	ecx, byte ptr [r15 + 8]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	ecx, 0x1e
	je	.label_2312
	cmp	ecx, 0x1c
	je	.label_2319
	cmp	ecx, 0x1a
	mov	rbp, rbp
	jne	.label_2303
	mov	dword ptr [r14], 3
	nop	
	jmp	.label_2303
.label_2312:
	mov	dword ptr [r14], 4
	lea	rdi, [rdi]
	jmp	.label_2303
.label_2319:
	mov	dword ptr [r14], 2
	lea	rdi, [rdi]
	jmp	.label_2303
.label_3402:
	test	r9b, r9b
	lea	rsi, [rsi]
	jne	.label_2313
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	mov	rdx, r8
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	eax, 0xb
	cmp	ecx, 0x15
	jne	.label_2303
.label_2313:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_2307:
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
	#Procedure 0x4205e0

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r12, r8
	mov	r13, rcx
	nop	
	mov	rbx, rdx
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rsp, rsp
	test	r9d, 0x400000
	je	.label_2340
	nop	
	mov	esi, OFFSET FLAT:.str.7_2
	lea	rsi, [rsi]
	mov	rdi, r12
	call	strcmp
	nop	
	test	eax, eax
	nop	
	je	.label_2379
	mov	esi, OFFSET FLAT:.str.8_3
	mov	rsp, rsp
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_2340
.label_2379:
	nop	
	mov	r12d, OFFSET FLAT:.str.9_3
.label_2340:
	nop	
	mov	rbp, qword ptr [r13]
	nop	
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_2343
.label_2336:
	lea	rdi, [rdi]
	mov	rdi, r12
	call	wctype
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x48]
	mov	rsp, rsp
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:.str.1_11
	nop	
	mov	rdi, r12
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	je	.label_2362
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.10_3
	mov	rbp, rbp
	mov	rdi, r12
	nop	
	call	strcmp
	test	eax, eax
	nop	
	je	.label_2371
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.8_3
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_2378
	mov	esi, OFFSET FLAT:.str.3_7
	nop	
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_2383
	mov	esi, OFFSET FLAT:.str.9_3
	nop	
	mov	rdi, r12
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	je	.label_2387
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.11_3
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	je	.label_2332
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.12_3
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_2338
	mov	esi, OFFSET FLAT:.str.7_2
	mov	rsp, rsp
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2346
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.13_2
	lea	rdi, [rdi]
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_2353
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.14_2
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_2361
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, r12
	call	strcmp
	nop	
	test	eax, eax
	mov	rsp, rsp
	je	.label_2349
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.16_2
	lea	rdi, [rdi]
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	nop	
	mov	eax, 4
	lea	rdi, [rdi]
	test	ecx, ecx
	jne	.label_2329
	lea	rdi, [rdi]
	call	__ctype_b_loc
	xor	edx, edx
	mov	rbp, rbp
	test	r14, r14
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	jne	.label_2328
.label_2333:
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	mov	rbp, rbp
	je	.label_2348
	mov	eax, 1
	lea	rdi, [rdi]
	mov	cl, dl
	shl	rax, cl
	lea	rsi, [rsi]
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_2348:
	inc	rdx
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	jne	.label_2333
	mov	rsp, rsp
	jmp	.label_2329
.label_2362:
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	jne	.label_2342
	nop	
.label_2358:
	lea	rdi, [rdi]
	test	byte ptr [rsi + rdx*2], 8
	je	.label_2347
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, dl
	shl	rax, cl
	mov	rsp, rsp
	mov	rcx, rdx
	nop	
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_2347:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	mov	rbp, rbp
	cmp	rdx, 0x100
	jne	.label_2358
	jmp	.label_2329
	nop	dword ptr [rax]
.label_2342:
	test	byte ptr [rsi + rdx*2], 8
	je	.label_2367
	mov	cl, byte ptr [r14 + rdx]
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rsi, [rsi]
	shl	rax, cl
	mov	rbp, rbp
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2367:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rsi, [rsi]
	jne	.label_2342
	jmp	.label_2329
.label_2371:
	call	__ctype_b_loc
	mov	rsp, rsp
	xor	edx, edx
	test	r14, r14
	nop	
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	jne	.label_2356
	nop	word ptr cs:[rax + rax]
.label_2339:
	test	byte ptr [rsi + rdx*2], 2
	je	.label_2324
	lea	rdi, [rdi]
	mov	eax, 1
	mov	rsp, rsp
	mov	cl, dl
	shl	rax, cl
	lea	rsi, [rsi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	nop	
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	nop	
	or	qword ptr [r15 + rcx*8], rax
.label_2324:
	nop	
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdx, 0x100
	jne	.label_2339
	jmp	.label_2329
	nop	
.label_2356:
	test	byte ptr [rsi + rdx*2], 2
	lea	rsi, [rsi]
	je	.label_2384
	lea	rsi, [rsi]
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	nop	
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	lea	rsi, [rsi]
	or	qword ptr [r15 + rcx*8], rax
.label_2384:
	nop	
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	cmp	rdx, 0x100
	nop	
	jne	.label_2356
	nop	
	jmp	.label_2329
.label_2378:
	nop	
	call	__ctype_b_loc
	xor	edx, edx
	mov	rbp, rbp
	test	r14, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	jne	.label_2341
	nop	dword ptr [rax + rax]
.label_2357:
	mov	rbp, rbp
	test	byte ptr [rsi + rdx*2 + 1], 2
	je	.label_2373
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	lea	rsi, [rsi]
	mov	rcx, rdx
	nop	
	sar	rcx, 0x3f
	mov	rsp, rsp
	shr	rcx, 0x3a
	mov	rsp, rsp
	add	rcx, rdx
	mov	rbp, rbp
	sar	rcx, 6
	lea	rdi, [rdi]
	or	qword ptr [r15 + rcx*8], rax
.label_2373:
	inc	rdx
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	lea	rsi, [rsi]
	jne	.label_2357
	mov	rsp, rsp
	jmp	.label_2329
	nop	word ptr cs:[rax + rax]
.label_2341:
	lea	rsi, [rsi]
	test	byte ptr [rsi + rdx*2 + 1], 2
	mov	rsp, rsp
	je	.label_2352
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	mov	rbp, rbp
	shl	rax, cl
	shr	cl, 6
	mov	rbp, rbp
	movzx	ecx, cl
	mov	rsp, rsp
	or	qword ptr [r15 + rcx*8], rax
.label_2352:
	nop	
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_2341
	mov	rbp, rbp
	jmp	.label_2329
.label_2383:
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_2345
	nop	
.label_2369:
	mov	rsp, rsp
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_2354
	nop	
	mov	eax, 1
	mov	cl, dl
	lea	rdi, [rdi]
	shl	rax, cl
	mov	rcx, rdx
	mov	rbp, rbp
	sar	rcx, 0x3f
	lea	rdi, [rdi]
	shr	rcx, 0x3a
	nop	
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_2354:
	nop	
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_2369
	nop	
	jmp	.label_2329
.label_2345:
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_2376
	mov	cl, byte ptr [r14 + rdx]
	nop	
	mov	eax, 1
	shl	rax, cl
	nop	
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2376:
	lea	rsi, [rsi]
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	cmp	rdx, 0x100
	jne	.label_2345
	jmp	.label_2329
.label_2343:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xc
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_2329
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	mov	rsp, rsp
	jmp	.label_2336
.label_2387:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	nop	
	jne	.label_2344
	nop	word ptr cs:[rax + rax]
.label_2365:
	mov	rbp, rbp
	test	byte ptr [rsi + rdx*2 + 1], 4
	lea	rdi, [rdi]
	je	.label_2351
	nop	
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, dl
	mov	rbp, rbp
	shl	rax, cl
	mov	rbp, rbp
	mov	rcx, rdx
	sar	rcx, 0x3f
	mov	rbp, rbp
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_2351:
	nop	
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	mov	rsp, rsp
	jne	.label_2365
	jmp	.label_2329
.label_2344:
	test	byte ptr [rsi + rdx*2 + 1], 4
	je	.label_2375
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	mov	rbp, rbp
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	rsp, rsp
	or	qword ptr [r15 + rcx*8], rax
.label_2375:
	nop	
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_2344
	jmp	.label_2329
.label_2332:
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	jne	.label_2359
	nop	dword ptr [rax]
.label_2335:
	mov	rbp, rbp
	test	byte ptr [rsi + rdx*2 + 1], 8
	je	.label_2385
	mov	rbp, rbp
	mov	eax, 1
	mov	cl, dl
	lea	rdi, [rdi]
	shl	rax, cl
	lea	rdi, [rdi]
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	nop	
	add	rcx, rdx
	lea	rdi, [rdi]
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_2385:
	inc	rdx
	xor	eax, eax
	nop	
	cmp	rdx, 0x100
	jne	.label_2335
	mov	rbp, rbp
	jmp	.label_2329
.label_2359:
	test	byte ptr [rsi + rdx*2 + 1], 8
	nop	
	je	.label_2350
	mov	rbp, rbp
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	nop	
	shr	cl, 6
	nop	
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2350:
	lea	rsi, [rsi]
	inc	rdx
	mov	rbp, rbp
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rsp, rsp
	jne	.label_2359
	mov	rbp, rbp
	jmp	.label_2329
.label_2338:
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	test	r14, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	jne	.label_2337
	nop	dword ptr [rax + rax]
.label_2380:
	nop	
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_2334
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	mov	rsp, rsp
	add	rcx, rdx
	sar	rcx, 6
	nop	
	or	qword ptr [r15 + rcx*8], rax
.label_2334:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdx, 0x100
	jne	.label_2380
	jmp	.label_2329
.label_2337:
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_2330
	mov	rsp, rsp
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	lea	rsi, [rsi]
	shr	cl, 6
	movzx	ecx, cl
	mov	rsp, rsp
	or	qword ptr [r15 + rcx*8], rax
.label_2330:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_2337
	nop	
	jmp	.label_2329
.label_2346:
	nop	
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	jne	.label_2326
	nop	
.label_2363:
	nop	
	test	byte ptr [rsi + rdx*2 + 1], 1
	je	.label_2374
	lea	rsi, [rsi]
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rbp, rbp
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	nop	
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_2374:
	inc	rdx
	mov	rbp, rbp
	xor	eax, eax
	cmp	rdx, 0x100
	nop	
	jne	.label_2363
	jmp	.label_2329
.label_2326:
	test	byte ptr [rsi + rdx*2 + 1], 1
	lea	rdi, [rdi]
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
	mov	rbp, rbp
	jne	.label_2326
	jmp	.label_2329
.label_2353:
	nop	
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	jne	.label_2368
	nop	word ptr cs:[rax + rax]
.label_2386:
	test	byte ptr [rsi + rdx*2], 1
	lea	rdi, [rdi]
	je	.label_2325
	mov	eax, 1
	mov	cl, dl
	lea	rdi, [rdi]
	shl	rax, cl
	lea	rdi, [rdi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	mov	rbp, rbp
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_2325:
	mov	rsp, rsp
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2386
	jmp	.label_2329
.label_2368:
	test	byte ptr [rsi + rdx*2], 1
	lea	rsi, [rsi]
	je	.label_2377
	mov	cl, byte ptr [r14 + rdx]
	lea	rsi, [rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	rbp, rbp
	or	qword ptr [r15 + rcx*8], rax
.label_2377:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2368
	jmp	.label_2329
.label_2361:
	nop	
	call	__ctype_b_loc
	lea	rdi, [rdi]
	xor	edx, edx
	test	r14, r14
	nop	
	mov	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	jne	.label_2331
.label_2381:
	mov	rbp, rbp
	cmp	word ptr [rsi + rdx*2], 0
	nop	
	jns	.label_2366
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	lea	rsi, [rsi]
	shr	rcx, 0x3a
	add	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 6
	lea	rsi, [rsi]
	or	qword ptr [r15 + rcx*8], rax
.label_2366:
	mov	rsp, rsp
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2381
	nop	
	jmp	.label_2329
.label_2331:
	cmp	word ptr [rsi + rdx*2], 0
	mov	rbp, rbp
	jns	.label_2364
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	lea	rsi, [rsi]
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2364:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	nop	
	cmp	rdx, 0x100
	mov	rsp, rsp
	jne	.label_2331
	jmp	.label_2329
.label_2328:
	nop	
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	mov	rbp, rbp
	je	.label_2327
	mov	cl, byte ptr [r14 + rdx]
	mov	rbp, rbp
	mov	eax, 1
	nop	
	shl	rax, cl
	mov	rsp, rsp
	shr	cl, 6
	lea	rsi, [rsi]
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2327:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rbp, rbp
	jne	.label_2328
	mov	rsp, rsp
	jmp	.label_2329
.label_2349:
	call	__ctype_b_loc
	xor	edx, edx
	lea	rsi, [rsi]
	test	r14, r14
	nop	
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	jne	.label_2355
.label_2372:
	test	byte ptr [rsi + rdx*2], 4
	nop	
	je	.label_2360
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	lea	rdi, [rdi]
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_2360:
	nop	
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rbp, rbp
	jne	.label_2372
.label_2329:
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_2355:
	test	byte ptr [rsi + rdx*2], 4
	je	.label_2382
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	nop	
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2382:
	mov	rsp, rsp
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	nop	
	jne	.label_2355
	jmp	.label_2329
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x421020

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	movzx	eax, byte ptr [rsi + 0x30]
	nop	
	cmp	eax, 0x11
	mov	rbp, rbp
	je	.label_2388
	cmp	eax, 4
	jne	.label_2389
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	je	.label_2389
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	shl	eax, cl
	mov	rsp, rsp
	cdqe	
	lea	rsi, [rsi]
	or	qword ptr [rdi + 0xa0], rax
	nop	
	xor	eax, eax
	ret	
.label_2388:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_2389
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + 0x30]
	cmp	ecx, 0x11
	jne	.label_2389
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	je	.label_2390
	lea	rsi, [rsi]
	mov	qword ptr [rdx], rsi
.label_2390:
	nop	
	mov	rax, qword ptr [rsi + 0x28]
	nop	
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rsp, rsp
	mov	rax, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rsp, rsp
	cmp	rcx, 0x3f
	mov	rbp, rbp
	jg	.label_2389
	mov	rsp, rsp
	mov	rax, -2
	rol	rax, cl
	mov	rbp, rbp
	and	qword ptr [rdi + 0xa0], rax
.label_2389:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4210f0

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	lea	rdi, [rdi]
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rsi + 0x30]
	mov	rbp, rbp
	lea	ebx, [rdx - 2]
	cmp	ebx, 0xe
	ja	.label_2399
	xor	eax, eax
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_2395]]
.label_3392:
	mov	rsp, rsp
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_617]]
	lea	rsi, [rsi]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	lea	rsi, [rsi]
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_2394
	mov	qword ptr [rax], r15
	mov	rsp, rsp
	jmp	.label_2392
.label_3393:
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + 0x38]
	test	rdx, rdx
	lea	rsi, [rsi]
	lea	rax, [rdx + 0x18]
	cmove	rax, rsi
	test	r14, r14
	nop	
	js	.label_2401
	nop	
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	lea	rsi, [rsi]
	js	.label_2402
	lea	rdi, [rdi]
	mov	r12, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	lea	rbx, [rcx + rcx*2]
	mov	rbp, rbp
	mov	qword ptr [r12 + rbx*8], 2
	mov	rsp, rsp
	mov	edi, 0x10
	call	malloc
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	qword ptr [r12 + rbx*8 + 0x10], rcx
	lea	rdi, [rdi]
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2396
	lea	rax, [r12 + rbx*8 + 8]
	mov	rbp, rbp
	cmp	r14, r15
	mov	rsp, rsp
	jne	.label_2393
	mov	qword ptr [rax], 1
	mov	rsp, rsp
	mov	qword ptr [rcx], r14
	lea	rsi, [rsi]
	jmp	.label_2392
.label_3390:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	nop	
	je	.label_2396
	nop	
	mov	edi, OFFSET FLAT:.str.17_3
	nop	
	mov	esi, OFFSET FLAT:.str.6_3
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_3391:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	mov	rsp, rsp
	movzx	eax, byte ptr [rsi + 0x30]
	lea	rsi, [rsi]
	cmp	eax, 4
	mov	rbp, rbp
	jne	.label_2392
	nop	
	mov	r14, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_617]]
	mov	rsp, rsp
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_2397
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbx
	mov	rsp, rsp
	jmp	.label_2392
.label_2399:
	mov	rbp, rbp
	test	dl, 8
	jne	.label_2391
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	jmp	.label_2392
.label_2393:
	mov	qword ptr [rax], 2
	jge	.label_2398
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	lea	rdi, [rdi]
	jmp	.label_2392
.label_2398:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_2392:
	xor	eax, eax
.label_2396:
	lea	rdi, [rdi]
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
.label_2394:
	lea	rax, [r14 + rbx*8]
.label_2400:
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_2396
.label_2397:
	mov	rbp, rbp
	lea	rax, [r14 + r15*8]
	jmp	.label_2400
.label_2401:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.18_3
	mov	esi, OFFSET FLAT:.str.6_3
	mov	edx, 0x5af
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_2402:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.19_2
	mov	esi, OFFSET FLAT:.str.6_3
	mov	rbp, rbp
	mov	edx, 0x5b0
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rsp, rsp
	call	__assert_fail
.label_2391:
	mov	edi, OFFSET FLAT:.str.20_1
	mov	esi, OFFSET FLAT:.str.6_3
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rbp, rbp
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4213a0

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbp, rdi
	nop	
	mov	rbx, qword ptr [rsi]
	mov	rsp, rsp
	mov	r13, qword ptr [r14 + 8]
	mov	rsp, rsp
	test	r13, r13
	mov	rsp, rsp
	je	.label_2414
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	lea	rdi, [rdi]
	je	.label_2414
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x28]
	lea	rsi, [rsi]
	cmp	rax, 0x3f
	mov	rsp, rsp
	jg	.label_2413
	mov	rcx, qword ptr [rbx + 0xa0]
	bt	rcx, rax
	jae	.label_2413
.label_2414:
	mov	r12d, dword ptr [rbx + 0x80]
	nop	
	cmp	r12d, 0xf
	mov	rsp, rsp
	je	.label_2404
	mov	rax, qword ptr [rbx + 0x70]
.label_2412:
	lea	rdi, [rdi]
	lea	ecx, [r12 + 1]
	lea	rdi, [rdi]
	mov	dword ptr [rbx + 0x80], ecx
	mov	rsp, rsp
	movsxd	rcx, r12d
	mov	rbp, rbp
	shl	rcx, 6
	mov	rbp, rbp
	lea	r12, [rax + rcx + 8]
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 8
	mov	rbp, rbp
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x40], -1
.label_2407:
	mov	qword ptr [rsp], rbp
	mov	rbp, rbp
	mov	r15d, dword ptr [rbx + 0x80]
	mov	rbp, rbp
	cmp	r15d, 0xf
	je	.label_2417
	mov	rax, qword ptr [rbx + 0x70]
.label_2409:
	lea	rsi, [rsi]
	lea	ecx, [r15 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	mov	rsp, rsp
	movsxd	rcx, r15d
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], 9
	lea	rsi, [rsi]
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_2405:
	test	r13, r13
	lea	rsi, [rsi]
	mov	rbp, r15
	nop	
	je	.label_2403
	mov	rbp, rbp
	mov	ebp, dword ptr [rbx + 0x80]
	nop	
	cmp	ebp, 0xf
	mov	rbp, rbp
	je	.label_2416
	mov	rax, qword ptr [rbx + 0x70]
.label_2406:
	nop	
	lea	ecx, [rbp + 1]
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rdi, [rdi]
	mov	qword ptr [r13], rbp
	lea	rdi, [rdi]
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_2403
	mov	qword ptr [r15], rbp
.label_2403:
	nop	
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	je	.label_2415
	mov	rax, qword ptr [rbx + 0x70]
.label_2408:
	lea	rdi, [rdi]
	lea	ecx, [r13 + 1]
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 0x80], ecx
	mov	rbp, rbp
	movsxd	rcx, r13d
	mov	rsp, rsp
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	nop	
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	nop	
	test	r12, r12
	je	.label_2418
	lea	rsi, [rsi]
	mov	qword ptr [r12], r13
.label_2418:
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_2411
	nop	
	mov	qword ptr [rbp], r13
.label_2411:
	test	r15, r15
	je	.label_2410
	mov	rbp, rbp
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_2410
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_2410
	test	r13, r13
	je	.label_2410
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [r15 + 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x28], rax
	lea	rdi, [rdi]
	mov	eax, 0x80000
	mov	rbp, rbp
	and	eax, dword ptr [r14 + 0x30]
	lea	rsi, [rsi]
	mov	ecx, 0xfff7ffff
	mov	rsp, rsp
	mov	edx, dword ptr [r15 + 0x30]
	and	edx, ecx
	mov	rbp, rbp
	or	edx, eax
	mov	dword ptr [r15 + 0x30], edx
	and	ecx, dword ptr [r12 + 0x30]
	or	ecx, eax
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x30], ecx
.label_2413:
	mov	rax, r13
	nop	
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_2404:
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	xor	r12d, r12d
	test	rax, rax
	nop	
	je	.label_2407
	mov	rcx, qword ptr [rbx + 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	nop	
	jmp	.label_2412
.label_2417:
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	lea	rdi, [rdi]
	xor	r15d, r15d
	test	rax, rax
	je	.label_2405
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x70]
	nop	
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_2409
.label_2415:
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	xor	r13d, r13d
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_2411
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	mov	rbp, rbp
	jmp	.label_2408
.label_2410:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_2413
.label_2416:
	mov	edi, 0x3c8
	call	malloc
	mov	rsp, rsp
	xor	ebp, ebp
	mov	rbp, rbp
	test	rax, rax
	je	.label_2403
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_2406
	nop	
	.section	.text
	.align	32
	#Procedure 0x421780

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x18
	mov	rbp, rbp
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	cmp	rax, r13
	jae	.label_2419
.label_2423:
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx]
	mov	rsp, rsp
	shl	rax, 4
	nop	
	mov	qword ptr [rcx + rax], r12
	mov	qword ptr [rcx + rax + 8], r14
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r14b
	cmp	eax, 5
	mov	rsp, rsp
	jne	.label_2420
	lea	rdi, [rdi]
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	lea	rsi, [rsi]
	jg	.label_2424
.label_2420:
	lea	rdi, [rdi]
	cmp	eax, 6
	lea	rdi, [rdi]
	sete	cl
.label_2424:
	nop	
	movzx	eax, cl
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x10]
	shl	rdx, 4
	shl	eax, 0x14
	mov	esi, 0xffefffff
	and	esi, dword ptr [rcx + rdx + 8]
	mov	rbp, rbp
	or	esi, eax
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x28]
	nop	
	lea	rax, [rax + rax*2]
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rcx + rax*8], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x30]
	nop	
	lea	rax, [rax + rax*2]
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	rsp, rsp
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	r15, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	lea	rax, [r15 + 1]
	nop	
	mov	qword ptr [rbx + 0x10], rax
.label_2422:
	mov	rax, r15
	mov	rsp, rsp
	add	rsp, 0x18
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_2419:
	lea	rbp, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rbp, rax
	lea	rdi, [rdi]
	ja	.label_2422
	nop	
	mov	rdi, qword ptr [rbx]
	nop	
	mov	rsi, r13
	lea	rdi, [rdi]
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_2422
	mov	qword ptr [rsp + 0x10], rbp
	nop	
	mov	qword ptr [rbx], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	shl	r13, 4
	mov	rsi, r13
	lea	rdi, [rdi]
	call	realloc
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, r13
	lea	rdi, [rdi]
	call	realloc
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	rdi, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	lea	rbp, [r13 + r13*2]
	mov	rbp, rbp
	mov	rsi, rbp
	nop	
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rsp, rsp
	call	realloc
	mov	rsp, rsp
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	nop	
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_2421
	nop	
	test	rax, rax
	mov	rsp, rsp
	je	.label_2421
	test	r13, r13
	mov	rbp, rbp
	je	.label_2421
	nop	
	test	rbp, rbp
	je	.label_2421
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	nop	
	mov	qword ptr [rbx + 0x28], r13
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], rbp
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	jmp	.label_2423
.label_2421:
	lea	rsi, [rsi]
	mov	rbx, rax
	call	free
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rbp, rbp
	call	free
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	jmp	.label_2422
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x421a10

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 0xc], ecx
	mov	r12, rdx
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbp + 0x28]
	lea	r14, [r12 + r12*2]
	mov	rax, qword ptr [r15 + r14*8 + 8]
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x38], 0
	lea	rdi, [rdi]
	lea	rdi, [rax*8 + 8]
	mov	rbp, rbp
	call	malloc
	mov	rcx, rax
	nop	
	mov	qword ptr [rsp + 0x40], rcx
	nop	
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2427
	mov	qword ptr [rsp + 0x28], rbx
	mov	rax, qword ptr [rbp + 0x30]
	nop	
	mov	qword ptr [rax + r14*8 + 8], -1
	nop	
	mov	rcx, qword ptr [rbp]
	mov	rbx, r12
	shl	rbx, 4
	mov	eax, dword ptr [rcx + rbx + 8]
	mov	rsp, rsp
	mov	r8d, eax
	mov	rbp, rbp
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_2425
	lea	rsi, [rsi]
	lea	rdx, [r15 + r14*8 + 8]
	mov	rbp, rbp
	cmp	qword ptr [rdx], 0
	je	.label_2425
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	mov	rsp, rsp
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_2425
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_2427
	mov	rax, qword ptr [rbp]
	mov	rbp, rbp
	mov	eax, dword ptr [rax + rbx + 8]
.label_2425:
	mov	rbx, r12
	lea	rdi, [rdi]
	test	al, 8
	jne	.label_2436
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_2432
.label_2436:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax + r14*8 + 8], 0
	nop	
	jle	.label_2435
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_2426:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r13*8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x30]
	lea	rdi, [rdi]
	lea	r12, [rdx + rdx*2]
	nop	
	mov	rcx, qword ptr [rax + r12*8 + 8]
	cmp	rcx, -1
	je	.label_2433
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	jne	.label_2428
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rbp, rbp
	lea	rdi, [rsp + 0x10]
	mov	rsp, rsp
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_2434
	jmp	.label_2427
.label_2428:
	mov	rcx, qword ptr [rax + r12*8 + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	movups	xmm0, xmmword ptr [rax + r12*8]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_2434:
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 0x10]
	call	re_node_set_merge
	test	eax, eax
	mov	rsp, rsp
	jne	.label_2427
	nop	
	mov	rax, qword ptr [rbp + 0x30]
	mov	rbp, rbp
	cmp	qword ptr [rax + r12*8 + 8], 0
	mov	rsp, rsp
	jne	.label_2430
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	call	free
.label_2433:
	mov	r15b, 1
.label_2430:
	mov	rbp, rbp
	inc	r13
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r13, qword ptr [rax + r14*8 + 8]
	mov	rbp, rbp
	jl	.label_2426
	jmp	.label_2432
.label_2435:
	mov	rbp, rbp
	xor	r15d, r15d
.label_2432:
	lea	rdi, [rsp + 0x30]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	lea	rsi, [rsi]
	mov	eax, 0xc
	je	.label_2427
	lea	rsi, [rsi]
	test	r15b, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x30]
	nop	
	je	.label_2429
	mov	ecx, dword ptr [rsp + 0xc]
	test	cl, cl
	jne	.label_2429
	nop	
	mov	qword ptr [rax + r14*8 + 8], 0
	nop	
	jmp	.label_2431
.label_2429:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rsp + 0x30]
	mov	rsp, rsp
	movups	xmmword ptr [rax + r14*8], xmm0
.label_2431:
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rcx], xmm0
	lea	rsi, [rsi]
	xor	eax, eax
.label_2427:
	add	rsp, 0x48
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x421cc0

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r13d, r8d
	mov	qword ptr [rsp + 8], rcx
	mov	rbx, rdx
	mov	r12, rsi
	nop	
	mov	r14, rdi
.label_2452:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x24], r13d
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x20], eax
	lea	rsi, [rsi]
	mov	r15, r12
	nop	word ptr cs:[rax + rax]
.label_2444:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14]
	mov	rbp, rbp
	mov	rdx, r15
	shl	rdx, 4
	movzx	ecx, byte ptr [rax + rdx + 8]
	cmp	ecx, 4
	jne	.label_2443
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 0x18]
	mov	rdx, qword ptr [r14 + 0x28]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rcx + r15*8]
	lea	r12, [rbx + rbx*2]
	mov	rsp, rsp
	mov	qword ptr [rdx + r12*8 + 8], 0
	lea	rdi, [rdi]
	mov	rbp, r13
	nop	
	shl	rbp, 4
	mov	rsi, qword ptr [rax + rbp]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + rbp + 8]
	mov	rbp, rbp
	mov	rdi, r14
	mov	qword ptr [rsp + 0x10], rbx
	mov	rsp, rsp
	call	re_dfa_add_node
	nop	
	mov	rbx, rax
	lea	rsi, [rsi]
	cmp	rbx, -1
	je	.label_2440
	nop	
	mov	dword ptr [rsp + 0x1c], 0xc
	mov	rbp, rbp
	mov	rax, qword ptr [r14]
	mov	rcx, rbx
	mov	rbp, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	rbp, rbp
	mov	esi, 0xfffc00ff
	nop	
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	nop	
	mov	dword ptr [rax + rcx + 8], edx
	mov	rsp, rsp
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	mov	rbp, rbp
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + rcx + 8], 0x40000
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r13
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x18]
	nop	
	mov	rcx, qword ptr [rax + r15*8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + rdx*8], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	re_node_set_insert
	test	al, al
	mov	r15, r13
	mov	r13d, dword ptr [rsp + 0x24]
	jne	.label_2444
	jmp	.label_2437
	nop	dword ptr [rax]
.label_2443:
	nop	
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rbp, [r15 + r15*2]
	mov	rsi, qword ptr [rcx + rbp*8 + 8]
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_2438
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rbp*8 + 0x10]
	mov	r12, qword ptr [rdi]
	lea	rdi, [rdi]
	lea	rdi, [rbx + rbx*2]
	mov	qword ptr [rcx + rdi*8 + 8], 0
	nop	
	cmp	rsi, 1
	je	.label_2448
	mov	qword ptr [rsp + 0x10], rbp
	nop	
	mov	r15, rdi
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	lea	rsi, [rsi]
	jle	.label_2442
	lea	rdi, [rdi]
	mov	rdx, rsi
	shl	rdx, 4
	mov	rbp, rbp
	mov	ebp, dword ptr [rax + rdx + 8]
	lea	rdi, [rdi]
	mov	edx, ebp
	mov	rsp, rsp
	and	edx, 0x40000
	je	.label_2442
	mov	rdx, qword ptr [r14 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
	nop	
.label_2453:
	cmp	qword ptr [rdx + rsi*8], r12
	mov	rsp, rsp
	jne	.label_2449
	mov	rbp, rbp
	shr	ebp, 8
	nop	
	and	ebp, 0x3ff
	cmp	ebp, r13d
	lea	rsi, [rsi]
	je	.label_2447
.label_2449:
	dec	rsi
	test	rsi, rsi
	jle	.label_2442
	mov	rbp, rbp
	mov	ebp, dword ptr [rdi]
	mov	rbp, rbp
	mov	ebx, ebp
	mov	rsp, rsp
	and	ebx, 0x40000
	mov	rsp, rsp
	add	rdi, -0x10
	test	ebx, ebx
	jne	.label_2453
	mov	rbp, rbp
	jmp	.label_2442
.label_2447:
	cmp	rsi, -1
	je	.label_2442
	mov	rbp, r15
	lea	rdi, [rcx + rbp*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x1c], 0xc
	nop	
	test	al, al
	lea	rdi, [rdi]
	jne	.label_2445
	mov	rbp, rbp
	jmp	.label_2437
	nop	word ptr [rax + rax]
.label_2442:
	nop	
	mov	rbp, r12
	mov	rsp, rsp
	shl	rbp, 4
	nop	
	mov	rsi, qword ptr [rax + rbp]
	mov	rdx, qword ptr [rax + rbp + 8]
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	call	re_dfa_add_node
	mov	rsp, rsp
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_2451
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], 0xc
	mov	rax, qword ptr [r14]
	nop	
	mov	rcx, rbx
	nop	
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	mov	rsp, rsp
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rax + rcx + 8], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	lea	rsi, [rsi]
	mov	esi, 0x3ff00
	and	edx, esi
	mov	rsp, rsp
	or	dword ptr [rax + rcx + 8], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	nop	
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r12
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdi, [rdi]
	mov	rbp, r15
	lea	rdi, [rax + rbp*8]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	je	.label_2437
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 0x1c], eax
	nop	
	test	eax, eax
	nop	
	jne	.label_2437
.label_2445:
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	r15, qword ptr [rcx + 8]
	mov	rbx, r15
	mov	rsp, rsp
	shl	rbx, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + rbx]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	cmp	rax, -1
	je	.label_2450
	mov	dword ptr [rsp + 0x1c], 0xc
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	shl	rcx, 4
	mov	rbp, rbp
	mov	edx, dword ptr [rdi + rcx + 8]
	mov	esi, 0xfffc00ff
	nop	
	and	edx, esi
	mov	rbp, rbp
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rdi + rcx + 8], edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	mov	esi, 0x3ff00
	lea	rsi, [rsi]
	and	edx, esi
	mov	rsp, rsp
	or	dword ptr [rdi + rcx + 8], edx
	mov	rsp, rsp
	mov	rdx, qword ptr [r14]
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + rax*8], r15
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x28]
	nop	
	lea	rdi, [rcx + rbp*8]
	mov	rsi, rax
	mov	rbx, rax
	lea	rsi, [rsi]
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	jne	.label_2444
	mov	rsp, rsp
	jmp	.label_2437
.label_2448:
	cmp	r15, qword ptr [rsp + 8]
	jne	.label_2439
	mov	rsp, rsp
	cmp	rbx, r15
	jne	.label_2441
.label_2439:
	nop	
	mov	r15, rdi
	lea	rsi, [rsi]
	lea	rcx, [rax + rdx + 8]
	mov	rbp, rbp
	mov	ebp, dword ptr [rcx]
	mov	rbx, r12
	shl	rbx, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbx]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rsp, rsp
	mov	rdi, r14
	call	re_dfa_add_node
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x1c], 0xc
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_2437
	shr	ebp, 8
	and	ebp, 0x3ff
	or	r13d, ebp
	nop	
	mov	rbp, qword ptr [r14]
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	shl	rcx, 4
	nop	
	mov	edx, r13d
	shl	edx, 8
	and	edx, 0x3ff00
	mov	rsp, rsp
	mov	esi, dword ptr [rbp + rcx + 8]
	mov	edi, 0xfffc00ff
	and	esi, edi
	or	esi, edx
	mov	rbp, rbp
	mov	dword ptr [rbp + rcx + 8], esi
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	nop	
	mov	esi, 0x3ff00
	lea	rsi, [rsi]
	and	edx, esi
	or	dword ptr [rdi + rcx + 8], edx
	mov	rsp, rsp
	mov	rdx, qword ptr [r14]
	mov	rsp, rsp
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x20]
	mov	qword ptr [rcx + rax*8], r12
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rsp, rsp
	lea	rdi, [rcx + r15*8]
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	mov	rbx, rax
	nop	
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	jne	.label_2452
	jmp	.label_2437
.label_2440:
	nop	
	mov	dword ptr [rsp + 0x1c], 0xc
	jmp	.label_2437
.label_2451:
	mov	dword ptr [rsp + 0x1c], 0xc
	jmp	.label_2437
.label_2450:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], 0xc
	lea	rsi, [rsi]
	jmp	.label_2437
.label_2438:
	mov	rax, qword ptr [r14 + 0x18]
	nop	
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbx*8], rcx
.label_2446:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], 0
.label_2437:
	mov	eax, dword ptr [rsp + 0x1c]
	mov	rsp, rsp
	add	rsp, 0x28
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_2441:
	lea	rdi, [rcx + rdi*8]
	mov	rsi, r12
	nop	
	call	re_node_set_insert
	nop	
	mov	dword ptr [rsp + 0x1c], 0xc
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_2437
	nop	
	jmp	.label_2446
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x422290

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	mov	r15, rsi
	mov	r14, rdi
	test	r15, r15
	je	.label_2456
	nop	
	mov	rax, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_2456
	mov	rsp, rsp
	mov	rbx, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	lea	rdx, [rcx + rax*2]
	nop	
	cmp	rbx, rdx
	lea	rsi, [rsi]
	jge	.label_2467
	add	rbx, rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	mov	rsp, rsp
	shl	rsi, 4
	lea	rdi, [rdi]
	call	realloc
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xc
	nop	
	test	rcx, rcx
	je	.label_2465
	nop	
	add	rbx, rbx
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x10], rcx
	lea	rdi, [rdi]
	mov	qword ptr [r14], rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 8]
.label_2467:
	test	rcx, rcx
	je	.label_2460
	nop	
	lea	rbx, [rcx + rax*2]
	lea	rdi, [rdi]
	dec	rax
	dec	rcx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	or	rdx, rcx
	nop	
	js	.label_2463
	mov	rbp, rbp
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	nop	
	jmp	.label_2455
.label_2464:
	dec	rax
.label_2454:
	dec	rcx
	jmp	.label_2457
	nop	word ptr cs:[rax + rax]
.label_2455:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi + rax*8]
	mov	rbp, rbp
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_2464
	jge	.label_2454
	nop	
	dec	rax
	mov	rsp, rsp
	mov	qword ptr [rdx + rbx*8 - 8], rdi
	lea	rsi, [rsi]
	dec	rbx
.label_2457:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_2455
.label_2463:
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	js	.label_2462
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	sub	rbx, rcx
	mov	rbp, rbp
	lea	rdi, [rbx*8]
	lea	rdi, [rdi]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_2462:
	mov	r10, qword ptr [r14 + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 8]
	lea	rcx, [r10 + rax*2 - 1]
	mov	rdx, rcx
	sub	rdx, rbx
	lea	rdi, [rdi]
	inc	rdx
	lea	rsi, [rsi]
	je	.label_2456
	lea	rdi, [rdi]
	lea	rax, [rdx + r10]
	mov	qword ptr [r14 + 8], rax
	lea	r9, [r10 - 1]
.label_2459:
	lea	rdi, [rdi]
	lea	r8, [r10 - 1]
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	lea	r11, [rdi + r9*8]
.label_2466:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rsi, qword ptr [rdi + r10*8 - 8]
	cmp	rax, rsi
	lea	rsi, [rsi]
	jle	.label_2458
	nop	
	dec	rcx
	nop	
	mov	qword ptr [r11 + rdx*8], rax
	dec	rdx
	jne	.label_2466
	nop	
	jmp	.label_2456
	nop	word ptr cs:[rax + rax]
.label_2458:
	lea	rax, [rdx + r8]
	mov	qword ptr [rdi + rax*8], rsi
	dec	r9
	mov	rbp, rbp
	cmp	r10, 1
	nop	
	mov	r10, r8
	jg	.label_2459
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + rbx*8]
	mov	rbp, rbp
	jmp	.label_2461
.label_2460:
	mov	qword ptr [r14 + 8], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 8]
	nop	
	mov	rsi, qword ptr [r15 + 0x10]
.label_2461:
	shl	rdx, 3
	lea	rsi, [rsi]
	call	memcpy
.label_2456:
	xor	eax, eax
.label_2465:
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4224b0

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
	je	.label_2477
	mov	rcx, qword ptr [r14 + 8]
	mov	rsp, rsp
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_2469
	cmp	rsi, rcx
	lea	rdi, [rdi]
	jne	.label_2471
	lea	rax, [rsi + rsi]
	nop	
	mov	qword ptr [r14], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_2479
	mov	qword ptr [r14 + 0x10], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_2481
.label_2477:
	lea	rsi, [rsi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_617]]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	nop	
	mov	qword ptr [r14 + 0x10], rax
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_2476
	lea	rsi, [rsi]
	mov	qword ptr [rax], rbx
	jmp	.label_2480
.label_2469:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	mov	rbp, rbp
	jmp	.label_2468
.label_2471:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0x10]
.label_2481:
	lea	rsi, [rsi]
	cmp	qword ptr [rax], rbx
	mov	rsp, rsp
	jle	.label_2473
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_2470
	nop	word ptr [rax + rax]
.label_2475:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rdi, [rdi]
	lea	rcx, [rcx - 1]
	jg	.label_2475
	lea	rdi, [rdi]
	jmp	.label_2470
.label_2473:
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	rsp, rsp
	jmp	.label_2472
	nop	dword ptr [rax + rax]
.label_2478:
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_2472:
	cmp	rdx, rbx
	mov	rsp, rsp
	jg	.label_2478
.label_2470:
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
.label_2468:
	inc	qword ptr [r14 + 8]
.label_2480:
	lea	rdi, [rdi]
	mov	al, 1
.label_2474:
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	ret	
.label_2476:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_2474
.label_2479:
	xor	eax, eax
	jmp	.label_2474
	nop	
	.section	.text
	.align	32
	#Procedure 0x4225f0

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	nop	
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	r13d, ecx
	mov	r8, qword ptr [rdx + 8]
	mov	rsp, rsp
	test	r8, r8
	lea	rdi, [rdi]
	je	.label_2513
	nop	
	mov	qword ptr [rsp], rdi
	mov	r14d, r13d
	add	r14, r8
	lea	rdi, [rdi]
	test	r8, r8
	mov	rsp, rsp
	jle	.label_2490
	mov	rcx, qword ptr [rdx + 0x10]
	xor	ebx, ebx
	cmp	r8, 4
	jb	.label_2499
	lea	rsi, [rsi]
	mov	rbx, r8
	and	rbx, 0xfffffffffffffffc
	nop	
	je	.label_2507
	nop	
	movq	xmm0, r14
	nop	
	lea	r9, [r8 - 4]
	lea	rsi, [rsi]
	mov	eax, r9d
	shr	eax, 2
	nop	
	inc	eax
	xor	edi, edi
	test	al, 3
	mov	rsp, rsp
	je	.label_2509
	mov	rsp, rsp
	lea	ebp, [r8 - 4]
	shr	ebp, 2
	inc	ebp
	and	ebp, 3
	neg	rbp
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_2517:
	nop	
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	lea	rdi, [rdi]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	lea	rsi, [rsi]
	add	rdi, 4
	inc	rbp
	jne	.label_2517
	jmp	.label_2502
.label_2513:
	mov	dword ptr [rdi], 0
	jmp	.label_2504
.label_2507:
	lea	rsi, [rsi]
	xor	ebx, ebx
	mov	rsp, rsp
	jmp	.label_2499
.label_2509:
	pxor	xmm1, xmm1
.label_2502:
	mov	rsp, rsp
	cmp	r9, 0xc
	jb	.label_2511
	mov	rax, r8
	and	rax, 0xfffffffffffffffc
	lea	rsi, [rsi]
	sub	rax, rdi
	mov	rsp, rsp
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	word ptr cs:[rax + rax]
.label_2485:
	nop	
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	mov	rsp, rsp
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	mov	rsp, rsp
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	paddq	xmm4, xmm2
	mov	rsp, rsp
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	mov	rsp, rsp
	movdqu	xmm1, xmmword ptr [rdi]
	mov	rsp, rsp
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x80
	add	rax, -0x10
	jne	.label_2485
.label_2511:
	paddq	xmm1, xmm0
	lea	rdi, [rdi]
	pshufd	xmm0, xmm1, 0x4e
	lea	rsi, [rsi]
	paddq	xmm0, xmm1
	mov	rbp, rbp
	movq	r14, xmm0
	cmp	r8, rbx
	je	.label_2490
.label_2499:
	mov	rax, r8
	sub	rax, rbx
	lea	rcx, [rcx + rbx*8]
	nop	
.label_2501:
	add	r14, qword ptr [rcx]
	add	rcx, 8
	nop	
	dec	rax
	lea	rdi, [rdi]
	jne	.label_2501
.label_2490:
	mov	rax, qword ptr [rsi + 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsi + 0x88]
	and	rcx, r14
	lea	rcx, [rcx + rcx*2]
	mov	r10, qword ptr [rax + rcx*8]
	test	r10, r10
	lea	rsi, [rsi]
	jle	.label_2512
	lea	rsi, [rsi]
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	mov	rsp, rsp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_2510:
	nop	
	mov	r15, qword ptr [r9 + rbx*8]
	cmp	qword ptr [r15], r14
	lea	rdi, [rdi]
	jne	.label_2482
	movzx	eax, byte ptr [r15 + 0x68]
	nop	
	and	eax, 0xf
	nop	
	cmp	eax, r13d
	lea	rsi, [rsi]
	jne	.label_2482
	test	rdx, rdx
	je	.label_2482
	mov	rdi, qword ptr [r15 + 0x50]
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_2482
	nop	
	cmp	qword ptr [rdi + 8], r8
	mov	rsp, rsp
	jne	.label_2482
	lea	rsi, [rsi]
	mov	rax, r8
.label_2498:
	test	rax, rax
	jle	.label_2496
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 0x10]
	nop	
	mov	rbp, qword ptr [rcx + rax*8 - 8]
	mov	rcx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [rcx + rax*8 - 8]
	lea	rax, [rax - 1]
	je	.label_2498
	nop	dword ptr [rax + rax]
.label_2482:
	nop	
	inc	rbx
	nop	
	cmp	rbx, r10
	lea	rdi, [rdi]
	jl	.label_2510
.label_2512:
	mov	rsp, rsp
	mov	rbx, rdx
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	rsp, rsp
	mov	r15, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], r15
	lea	rdi, [rdi]
	test	r15, r15
	mov	rbp, rbp
	je	.label_2483
	nop	
	mov	r10, r15
	add	r10, 8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r10
	mov	r9, rbx
	nop	
	mov	qword ptr [rsp + 0x28], r9
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r9 + 8]
	mov	qword ptr [r15 + 0x10], rdi
	mov	rbx, qword ptr [r9 + 8]
	test	rbx, rbx
	jle	.label_2491
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r10
	mov	rbp, r15
	lea	rsi, [rsi]
	mov	r15, r9
	mov	qword ptr [rbp + 8], rdi
	shl	rdi, 3
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp + 0x18], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_2514
	mov	rbp, rbp
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	mov	r9, r15
	mov	rdi, r12
	mov	rbp, rbp
	mov	r15, rbp
	mov	rbp, rbp
	mov	r10, qword ptr [rsp + 0x18]
	jmp	.label_2489
.label_2491:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r10], xmm0
	mov	qword ptr [r10 + 0x10], 0
	lea	rdi, [rdi]
	mov	rdi, r12
.label_2489:
	mov	rsp, rsp
	mov	al, byte ptr [r15 + 0x68]
	mov	rsp, rsp
	mov	cl, r13b
	and	cl, 0xf
	and	al, 0xf0
	lea	rdi, [rdi]
	or	al, cl
	mov	rsp, rsp
	mov	byte ptr [r15 + 0x68], al
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x50], r10
	cmp	qword ptr [r9 + 8], 0
	jle	.label_2508
	mov	rsp, rsp
	mov	ebp, r13d
	lea	rdi, [rdi]
	and	ebp, 1
	lea	rsi, [rsi]
	mov	eax, r13d
	and	eax, 2
	mov	dword ptr [rsp + 0x34], eax
	lea	rdi, [rdi]
	and	r13d, 4
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xc], r13d
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	r8d, r8d
	nop	
.label_2486:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 0x10]
	mov	rcx, qword ptr [rcx + r12*8]
	shl	rcx, 4
	nop	
	mov	esi, dword ptr [rax + rcx + 8]
	lea	rsi, [rsi]
	movzx	edx, sil
	mov	r13d, esi
	shr	r13d, 8
	mov	ecx, r13d
	lea	rsi, [rsi]
	and	ecx, 0x3ff
	lea	rdi, [rdi]
	cmp	edx, 1
	jne	.label_2494
	mov	rbp, rbp
	test	ecx, ecx
	nop	
	je	.label_2505
.label_2494:
	shr	esi, 0x14
	mov	bl, byte ptr [r15 + 0x68]
	mov	al, bl
	mov	rbp, rbp
	shr	al, 5
	lea	rsi, [rsi]
	movzx	eax, al
	lea	rsi, [rsi]
	or	eax, esi
	lea	rsi, [rsi]
	shl	al, 5
	nop	
	and	al, 0x20
	mov	rsp, rsp
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r15 + 0x68], bl
	cmp	edx, 4
	je	.label_2516
	mov	rbp, rbp
	cmp	edx, 2
	lea	rsi, [rsi]
	jne	.label_2492
	or	bl, 0x10
	mov	rbp, rbp
	jmp	.label_2506
.label_2516:
	lea	rdi, [rdi]
	or	bl, 0x40
.label_2506:
	lea	rsi, [rsi]
	mov	byte ptr [r15 + 0x68], bl
.label_2492:
	nop	
	test	ecx, ecx
	je	.label_2505
	cmp	qword ptr [r15 + 0x50], r10
	jne	.label_2519
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdi
	lea	rsi, [rsi]
	mov	edi, 0x18
	nop	
	call	malloc
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x50], rbx
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_2515
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	r15, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], r15
	test	r15, r15
	jle	.label_2484
	lea	rsi, [rsi]
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rbp, rbp
	mov	rdi, r15
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_2497
	nop	
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	lea	rsi, [rsi]
	jmp	.label_2488
.label_2484:
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [rbx], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x10], 0
.label_2488:
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x20]
	or	byte ptr [r15 + 0x68], 0x80
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x18]
.label_2519:
	test	ebp, ebp
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	jne	.label_2495
	mov	rsp, rsp
	mov	eax, r13d
	mov	rbp, rbp
	and	eax, 1
	mov	rbp, rbp
	jne	.label_2493
.label_2495:
	nop	
	test	ebp, ebp
	lea	rdi, [rdi]
	je	.label_2500
	lea	rsi, [rsi]
	mov	eax, r13d
	and	eax, 2
	nop	
	jne	.label_2493
.label_2500:
	mov	rsp, rsp
	cmp	dword ptr [rsp + 0x34], 0
	nop	
	jne	.label_2518
	mov	rbp, rbp
	mov	eax, r13d
	and	eax, 0x10
	mov	rsp, rsp
	jne	.label_2493
.label_2518:
	nop	
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_2505
	lea	rdi, [rdi]
	and	r13d, 0x40
	je	.label_2505
	nop	word ptr cs:[rax + rax]
.label_2493:
	mov	rax, r12
	lea	rdi, [rdi]
	sub	rax, r8
	js	.label_2487
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	rcx, rax
	jle	.label_2487
	dec	rcx
	nop	
	mov	qword ptr [r15 + 0x10], rcx
	lea	rsi, [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jle	.label_2487
	lea	rax, [r12*8]
	mov	rsp, rsp
	add	rax, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	mov	rcx, r8
	lea	rdi, [rdi]
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_2503:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [r12 + rcx + 1]
	mov	rbp, rbp
	inc	rcx
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [r15 + 0x10]
	jl	.label_2503
	nop	word ptr cs:[rax + rax]
.label_2487:
	lea	rdi, [rdi]
	inc	r8
.label_2505:
	lea	rdi, [rdi]
	inc	r12
	cmp	r12, qword ptr [r9 + 8]
	nop	
	jl	.label_2486
.label_2508:
	nop	
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	
	call	register_state
	test	eax, eax
	je	.label_2496
.label_2515:
	mov	rdi, r15
	call	free_state
	mov	rbp, rbp
	jmp	.label_2483
.label_2497:
	mov	rsp, rsp
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [rbx], xmm0
	jmp	.label_2483
.label_2514:
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rsp, rsp
	call	free
.label_2483:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
.label_2504:
	xor	r15d, r15d
.label_2496:
	mov	rsp, rsp
	mov	rax, r15
	lea	rsi, [rsi]
	add	rsp, 0x38
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x422ca0

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r12, rdi
	mov	rsp, rsp
	mov	qword ptr [rbx], r15
	mov	r13, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x20], r13
	mov	qword ptr [rbx + 0x28], 0
	mov	rsp, rsp
	lea	rdi, [r13*8]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbx + 0x30], rax
	mov	rsp, rsp
	mov	ecx, 0xc
	test	rax, rax
	mov	rsp, rsp
	je	.label_2524
	mov	rbp, rbp
	test	r13, r13
	jle	.label_2522
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_2526:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	lea	rsi, [rsi]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_2520
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	cmp	rdx, rcx
	lea	rsi, [rsi]
	jne	.label_2521
	lea	rcx, [rdx + rdx + 2]
	mov	rsp, rsp
	lea	rdx, [rdx + rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_2527
	mov	qword ptr [rbx + 0x30], rax
	nop	
	mov	rcx, qword ptr [rbx + 0x28]
.label_2521:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_2520:
	inc	rbp
	cmp	rbp, r13
	jl	.label_2526
.label_2522:
	lea	rdi, [rdi]
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rsi, [rsi]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	lea	rsi, [rsi]
	jle	.label_2523
	nop	
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_2525:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
	jmp	.label_2524
.label_2527:
	nop	
	mov	ecx, 0xc
.label_2524:
	mov	eax, ecx
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_2523:
	mov	rbp, rbp
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	mov	rsp, rsp
	lea	rsi, [rax*8 + 0x10]
	lea	rdi, [rdi]
	call	realloc
	mov	rsp, rsp
	test	rax, rax
	mov	ecx, 0xc
	mov	rsp, rsp
	je	.label_2524
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	lea	rsi, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rsi], rax
	mov	rbp, rbp
	mov	qword ptr [rcx], rdx
	lea	rsi, [rsi]
	mov	r15, qword ptr [r14]
	lea	rdi, [rdi]
	jmp	.label_2525
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x422e60

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x38
	mov	r15d, edx
	mov	r13, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	lea	rbp, [rbx + 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r13
	jle	.label_2554
	cmp	dword ptr [rbx + 0x90], 2
	lea	rsi, [rsi]
	jl	.label_2571
	mov	qword ptr [rbx + 0x20], 0
.label_2571:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x58], rax
	mov	rax, qword ptr [rbx + 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	mov	rsp, rsp
	lea	eax, [r15 + r15]
	and	eax, 2
	xor	eax, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp], xmm0
	mov	rbp, rbp
	mov	qword ptr [rbp + 0x10], 0
	mov	dword ptr [rbx + 0x70], eax
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8b], 0
	lea	rsi, [rsi]
	mov	r14, r13
	jne	.label_2558
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	r14, r13
.label_2558:
	mov	rbp, rbp
	test	r14, r14
	je	.label_2566
	mov	r12, qword ptr [rbx + 0x38]
	mov	rbp, rbp
	cmp	r14, r12
	lea	rdi, [rdi]
	jge	.label_2536
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x8c], 0
	mov	rbp, rbp
	jne	.label_2541
	mov	rbp, rbp
	lea	rsi, [r14 - 1]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	edx, r15d
	mov	rsp, rsp
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	mov	rsp, rsp
	jl	.label_2555
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	lea	rsi, [rsi]
	shl	rdx, 2
	call	memmove
.label_2555:
	nop	
	cmp	byte ptr [rbx + 0x8b], 0
	mov	rbp, rbp
	jne	.label_2567
.label_2585:
	nop	
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_2534:
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x8b], 0
	lea	rsi, [rsi]
	jne	.label_2566
	lea	rsi, [rsi]
	add	qword ptr [rbx + 8], r14
.label_2566:
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x28], r13
	mov	rsp, rsp
	mov	rdx, qword ptr [rbx + 0x58]
	lea	rdi, [rdi]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2577
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_2586
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	build_wcs_upper_buffer
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_2592
	jmp	.label_2532
.label_2577:
	cmp	byte ptr [rbx + 0x8b], 0
	nop	
	jne	.label_2528
	mov	qword ptr [rbx + 0x30], rdx
	lea	rdi, [rdi]
	jmp	.label_2532
.label_2586:
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	build_wcs_buffer
.label_2532:
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_2592:
	mov	rbp, rbp
	add	rsp, 0x38
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_2554:
	mov	r14, r13
	lea	rsi, [rsi]
	sub	r14, rax
	lea	rdi, [rdi]
	jmp	.label_2558
.label_2536:
	mov	r10, qword ptr [rbx + 0x30]
	mov	cx, word ptr [rbx + 0x8c]
	mov	rbp, rbp
	test	cl, cl
	jne	.label_2552
.label_2581:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x30], 0
	movsxd	rsi, dword ptr [rbx + 0x90]
	cmp	rsi, 2
	lea	rdi, [rdi]
	jl	.label_2560
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rbp
	cmp	byte ptr [rbx + 0x89], 0
	mov	rsp, rsp
	je	.label_2569
	mov	rdi, qword ptr [rbx]
	lea	r8, [rdi + rax]
	nop	
	mov	rdx, r14
	sub	rdx, rsi
	mov	rbp, rbp
	add	rdx, r8
	cmp	rdx, rdi
	cmovb	rdx, rdi
	lea	r11, [r8 + r14]
	lea	rsi, [r14 + rax]
	mov	rsp, rsp
	lea	rsi, [rdi + rsi - 1]
	nop	word ptr cs:[rax + rax]
.label_2591:
	mov	rbp, rsi
	cmp	rbp, rdx
	mov	rsp, rsp
	jb	.label_2569
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp]
	and	cl, 0xc0
	movzx	ecx, cl
	mov	rbp, rbp
	lea	rsi, [rbp - 1]
	cmp	ecx, 0x80
	je	.label_2591
	add	r8, qword ptr [rbx + 0x58]
	mov	rdx, r8
	sub	rdx, rbp
	mov	r9, qword ptr [rbx + 0x78]
	mov	rsp, rsp
	test	r9, r9
	jne	.label_2530
	mov	qword ptr [rsp + 0x20], r11
	lea	rdi, [rdi]
	mov	r12, r10
	nop	
	mov	rsi, rbp
.label_2563:
	mov	qword ptr [rsp], 0
	lea	rdi, [rsp + 0x34]
	lea	rcx, [rsp]
	call	rpl_mbrtowc
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rsp, rsp
	mov	rcx, rax
	sub	rcx, rdx
	jb	.label_2540
	mov	rbp, rbp
	cmp	rax, -3
	lea	rdi, [rdi]
	mov	r10, r12
	ja	.label_2557
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsp + 0x34]
	jmp	.label_2557
.label_2541:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rbp
	mov	rbp, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x20], rdx
	mov	rsp, rsp
	xor	ecx, ecx
.label_2587:
	lea	rsi, [rsi]
	lea	rsi, [rcx + rdx]
	mov	rsp, rsp
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	nop	
	sar	rax, 1
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + rax*8]
	cmp	rsi, r14
	mov	rdi, rax
	jg	.label_2575
	mov	rbp, rbp
	jge	.label_2583
	nop	
	lea	rcx, [rax + 1]
	mov	rbp, rbp
	mov	rdi, rdx
.label_2575:
	cmp	rcx, rdi
	mov	rbp, rbp
	mov	rdx, rdi
	jl	.label_2587
.label_2583:
	nop	
	cmp	rsi, r14
	lea	rdi, [rdi]
	setl	cl
	movzx	ecx, cl
	lea	r12, [rcx + rax]
	lea	rsi, [rcx + rax - 1]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, rsi
	sub	rdx, r14
	jle	.label_2539
	lea	rdi, [rdi]
	cmp	r12, r14
	mov	rbp, rbp
	jne	.label_2539
	lea	rsi, [rsi]
	cmp	qword ptr [rbp + r14*8], r14
	mov	rbp, rbp
	jne	.label_2539
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r14*4]
	mov	rsp, rsp
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	nop	
	lea	rsi, [rdi + r14]
	mov	rsp, rsp
	call	memmove
	movdqu	xmm0, xmmword ptr [rbx + 0x30]
	movq	xmm1, r14
	pshufd	xmm1, xmm1, 0x44
	lea	rsi, [rsi]
	psubq	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x30], xmm0
	movq	rax, xmm0
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, qword ptr [rsp + 0x18]
	nop	
	jle	.label_2534
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsp, rsp
	lea	rcx, [rax + r14*8]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2578:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	lea	rsi, [rsi]
	mov	qword ptr [rax + rdx*8], rsi
	mov	rbp, rbp
	inc	rdx
	nop	
	cmp	rdx, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	jl	.label_2578
	jmp	.label_2534
.label_2567:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	lea	rdi, [rdi]
	call	memmove
	jmp	.label_2585
.label_2539:
	mov	rax, r14
	sub	rax, r13
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	nop	dword ptr [rax + rax]
.label_2544:
	mov	rax, r12
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	jle	.label_2535
	nop	
	lea	r12, [rax - 1]
	mov	rsp, rsp
	cmp	qword ptr [rbp + rax*8 - 8], r14
	lea	rdi, [rdi]
	je	.label_2544
.label_2535:
	cmp	rax, rsi
	mov	rsp, rsp
	jge	.label_2546
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x10]
	nop	
.label_2542:
	cmp	dword ptr [rcx + rax*4], -1
	lea	rdi, [rdi]
	jne	.label_2546
	mov	rbp, rbp
	inc	rax
	cmp	rax, rsi
	jl	.label_2542
.label_2546:
	mov	rbp, rbp
	cmp	rax, rsi
	lea	rdi, [rdi]
	jne	.label_2561
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], 0
	nop	
	xor	ebp, ebp
	lea	rdi, [rdi]
	jmp	.label_2565
.label_2528:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_2570
	mov	rsp, rsp
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	cmp	r14, rdx
	lea	rdi, [rdi]
	cmovg	r14, rdx
	cmp	r15, r14
	mov	rbp, rbp
	jge	.label_2574
	lea	rdi, [rdi]
	jmp	.label_2580
	nop	dword ptr [rax]
.label_2537:
	mov	rbp, r12
	mov	r13, qword ptr [rbp]
.label_2580:
	lea	rdi, [rdi]
	inc	r15
	lea	rdi, [rdi]
	mov	r12, rbp
	mov	rsp, rsp
	add	r13, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	al, byte ptr [r15 + r13 - 1]
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_2582
.label_2548:
	movzx	ebp, al
	mov	rbp, rbp
	lea	eax, [rbp + 0x80]
	mov	rbp, rbp
	cmp	eax, 0x17f
	mov	rsp, rsp
	ja	.label_2529
	call	__ctype_toupper_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	ebp, dword ptr [rax + rbp*4]
.label_2529:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	byte ptr [rax + r15 - 1], bpl
	lea	rsi, [rsi]
	cmp	r15, r14
	nop	
	jl	.label_2537
	lea	rdi, [rdi]
	jmp	.label_2545
.label_2582:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx]
	mov	rbp, rbp
	jmp	.label_2548
.label_2560:
	add	rax, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx]
	mov	al, byte ptr [rdx + rax - 1]
	movzx	edx, al
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_2551
	lea	rsi, [rsi]
	mov	al, byte ptr [rsi + rdx]
.label_2551:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + 0x80]
	movzx	edx, al
	shr	al, 6
	movzx	eax, al
	mov	rsi, qword ptr [rsi + rax*8]
	mov	eax, 1
	bt	rsi, rdx
	jb	.label_2562
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0xa
	nop	
	jne	.label_2562
	lea	rdi, [rdi]
	movzx	eax, cx
	cmp	eax, 0xff
	seta	al
	movzx	eax, al
	lea	rsi, [rsi]
	add	eax, eax
.label_2562:
	mov	dword ptr [rbx + 0x70], eax
	mov	rbp, rbp
	jmp	.label_2534
.label_2561:
	mov	rbp, qword ptr [rbp + rax*8]
	sub	rbp, r14
	mov	qword ptr [rbx + 0x30], rbp
	lea	rsi, [rsi]
	je	.label_2565
	test	rbp, rbp
	lea	rdi, [rdi]
	jle	.label_2584
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	edx, 1
	mov	rsp, rsp
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	lea	rsi, [rsi]
	call	memset
.label_2584:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	memset
	mov	rbp, qword ptr [rbx + 0x30]
.label_2565:
	mov	qword ptr [rbx + 0x38], rbp
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_2534
.label_2570:
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_2532
	nop	
	mov	rax, qword ptr [rbx + 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x40]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	mov	rbp, rbp
	cmovg	rcx, rdx
	mov	rsp, rsp
	cmp	rax, rcx
	jge	.label_2547
	add	r13, rax
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r13]
	mov	rbp, rbp
	mov	dl, byte ptr [rsi + rdx]
	mov	rsp, rsp
	jmp	.label_2556
.label_2572:
	mov	rdx, qword ptr [rbx + 0x78]
	mov	rsi, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	movzx	esi, byte ptr [rax + rsi]
	mov	dl, byte ptr [rdx + rsi]
.label_2556:
	mov	rbp, rbp
	mov	byte ptr [rdi + rax], dl
	inc	rax
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_2572
	mov	rax, rcx
.label_2547:
	mov	qword ptr [rbx + 0x30], rax
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_2532
.label_2545:
	nop	
	mov	r15, r14
.label_2574:
	mov	qword ptr [rbx + 0x30], r15
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_2532
.label_2552:
	nop	
	mov	rdx, r14
	sub	rdx, r13
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + 0x50]
	lea	rsi, [rsi]
	add	rsi, rdx
	mov	qword ptr [rbx + 0x58], rsi
	add	rdx, qword ptr [rbx + 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x68], rdx
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_2581
.label_2540:
	mov	rbp, rbp
	mov	r10, r12
.label_2557:
	lea	rdi, [rdi]
	cmp	esi, -1
	jne	.label_2531
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	mov	r12, qword ptr [rbx + 0x38]
.label_2569:
	add	r12, rax
	mov	rbp, r12
	mov	rbp, rbp
	sub	rbp, r13
	jge	.label_2589
	mov	qword ptr [rsp + 0x10], r10
	lea	rax, [rbx + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_2543
.label_2579:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	cmp	rbp, r12
	lea	rsi, [rsi]
	je	.label_2550
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	je	.label_2538
	mov	rax, qword ptr [rbx]
	movzx	esi, byte ptr [rax + r12]
	nop	
	jmp	.label_2538
.label_2550:
	mov	rcx, qword ptr [rsp + 8]
.label_2538:
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	jmp	.label_2564
	nop	
.label_2543:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, qword ptr [rbx + 0x50]
	mov	rdx, rbp
	sub	rdx, r12
	mov	rsi, qword ptr [rbx]
	lea	rdi, [rdi]
	add	rsi, r12
	mov	rbp, rbp
	lea	rdi, [rsp]
	mov	rcx, qword ptr [rsp + 0x20]
	nop	
	call	rpl_mbrtowc
	test	rax, rax
	je	.label_2579
	mov	rcx, rax
	or	rcx, 1
	mov	rsp, rsp
	cmp	rcx, -1
	nop	
	je	.label_2579
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsp]
.label_2564:
	add	r12, rax
	mov	rbp, r12
	mov	rbp, rbp
	sub	rbp, r13
	nop	
	jl	.label_2543
	mov	qword ptr [rbx + 0x30], rbp
	nop	
	cmp	esi, -1
	mov	r10, qword ptr [rsp + 0x10]
	je	.label_2576
.label_2531:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2593
.label_2568:
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	esi, 0xa
	lea	rsi, [rsi]
	jne	.label_2533
	mov	ecx, 2
	nop	
	cmp	byte ptr [rbx + 0x8d], 0
	lea	rsi, [rsi]
	jne	.label_2533
	nop	
	xor	ecx, ecx
.label_2533:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rbp, rbp
	mov	rbp, qword ptr [rbx + 0x30]
	jmp	.label_2549
.label_2589:
	mov	qword ptr [rbx + 0x30], rbp
.label_2576:
	dec	r10
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, r10
	mov	rbp, rbp
	mov	edx, r15d
	nop	
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
.label_2549:
	mov	rbp, rbp
	test	rbp, rbp
	jne	.label_2553
.label_2573:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_2534
.label_2553:
	lea	rdi, [rdi]
	jle	.label_2588
	mov	rdi, qword ptr [rbx + 0x10]
	test	rbp, rbp
	mov	edx, 1
	nop	
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_2588:
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8b], 0
	mov	rsp, rsp
	je	.label_2573
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	memset
	lea	rsi, [rsi]
	jmp	.label_2573
.label_2593:
	lea	rdi, [rdi]
	mov	ebp, esi
	mov	edi, ebp
	call	iswalnum
	lea	rsi, [rsi]
	mov	esi, ebp
	lea	rdi, [rdi]
	cmp	esi, 0x5f
	mov	rbp, rbp
	mov	ecx, 1
	je	.label_2533
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_2568
	jmp	.label_2533
.label_2530:
	lea	rsi, [rsp + 0x2e]
	cmp	rdx, 6
	mov	ecx, 6
	mov	rsp, rsp
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_2594
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], r11
	lea	rsi, [rsi]
	lea	rdi, [rbp - 1]
	sub	rdi, r8
	mov	rbp, rbp
	cmp	rdi, -8
	lea	rdi, [rdi]
	mov	rcx, -7
	mov	rsp, rsp
	cmovg	rcx, rdi
	nop	
	xor	rcx, 0xffffffffffffffff
	shl	rcx, 0x20
	sar	rcx, 0x20
	mov	rsp, rsp
	inc	rcx
.label_2590:
	mov	rsp, rsp
	movzx	edi, byte ptr [rbp + rcx - 2]
	mov	al, byte ptr [r9 + rdi]
	mov	rsp, rsp
	mov	byte ptr [rsp + rcx + 0x2c], al
	dec	rcx
	mov	rsp, rsp
	cmp	rcx, 1
	nop	
	jg	.label_2590
	nop	
	jmp	.label_2559
.label_2594:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r11
.label_2559:
	mov	r12, r10
	nop	
	jmp	.label_2563
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x423890

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	r14
	push	rbx
	push	rax
	nop	
	mov	r14, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	edx, eax
	call	re_string_context_at
	mov	r10, qword ptr [r14 + 0x10]
	xor	ecx, ecx
	mov	rbp, rbp
	test	r10, r10
	jle	.label_2597
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x98]
	mov	rbp, rbp
	mov	r11, qword ptr [r14 + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx]
	mov	r9d, eax
	and	r9d, 1
	lea	rdi, [rdi]
	mov	r8d, eax
	and	r8d, 2
	mov	rsp, rsp
	and	eax, 8
	mov	rsp, rsp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_2596:
	mov	rbp, rbp
	mov	rcx, qword ptr [r11 + rbx*8]
	mov	rbp, rbp
	mov	rdx, rcx
	shl	rdx, 4
	mov	edx, dword ptr [rdi + rdx + 8]
	movzx	esi, dl
	cmp	esi, 2
	jne	.label_2595
	shr	edx, 8
	mov	rsp, rsp
	test	dx, 0x3ff
	je	.label_2597
	test	r9d, r9d
	nop	
	jne	.label_2600
	mov	rsp, rsp
	mov	esi, edx
	and	esi, 4
	jne	.label_2595
.label_2600:
	lea	rdi, [rdi]
	test	r9d, r9d
	lea	rsi, [rsi]
	je	.label_2599
	mov	esi, edx
	mov	rbp, rbp
	and	esi, 8
	mov	rbp, rbp
	jne	.label_2595
.label_2599:
	test	r8d, r8d
	lea	rsi, [rsi]
	jne	.label_2598
	lea	rdi, [rdi]
	mov	esi, edx
	and	esi, 0x20
	mov	rbp, rbp
	jne	.label_2595
.label_2598:
	test	eax, eax
	jne	.label_2597
	nop	
	test	dl, dl
	jns	.label_2597
.label_2595:
	lea	rsi, [rsi]
	inc	rbx
	lea	rdi, [rdi]
	cmp	rbx, r10
	mov	ecx, 0
	mov	rsp, rsp
	jl	.label_2596
.label_2597:
	lea	rsi, [rsi]
	mov	rax, rcx
	nop	
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4239a0

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	lea	rsi, [rsi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rdi
	nop	
	cmp	qword ptr [r14 + 0xe8], 0
	mov	rbp, rbp
	jle	.label_2601
	nop	
	xor	r12d, r12d
	nop	
.label_2603:
	mov	rax, qword ptr [r14 + 0xf8]
	nop	
	mov	r15, qword ptr [rax + r12*8]
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x20], 0
	lea	rdi, [rdi]
	mov	ebx, 0
	lea	rsi, [rsi]
	jle	.label_2602
	nop	word ptr cs:[rax + rax]
.label_2604:
	nop	
	mov	rax, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	lea	rsi, [rsi]
	mov	rdi, r13
	call	free
	mov	rbp, rbp
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_2604
.label_2602:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x28]
	nop	
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	mov	rbp, rbp
	je	.label_2605
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	call	free
.label_2605:
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	call	free
	mov	rbp, rbp
	inc	r12
	mov	rsp, rsp
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_2603
.label_2601:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x423ab0

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x98
	lea	rdi, [rdi]
	mov	rbx, rcx
	nop	
	mov	qword ptr [rbp - 0x88], rbx
	mov	r14, rdx
	mov	qword ptr [rbp - 0x58], r14
	mov	r12, rsi
	mov	qword ptr [rbp - 0x30], r12
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi]
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + label_2616]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_2617]]
	movaps	xmmword ptr [rbp - 0x50], xmm0
	xor	r13d, r13d
	test	r8b, r8b
	lea	rdi, [rdi]
	je	.label_2618
	mov	qword ptr [rbp - 0x78], rcx
	mov	r15, r14
	mov	edi, 0x60
	lea	rdi, [rdi]
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	r14d, 0xc
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_2624
	nop	
	lea	r13, [rbp - 0x50]
	nop	
	mov	r14, r15
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
.label_2618:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rcx
	mov	qword ptr [rbp - 0xb8], r13
	mov	r15, qword ptr [rcx + 0x90]
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x70], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	lea	rdi, [rdi]
	mov	rdx, r14
	mov	rsp, rsp
	shl	rdx, 4
	mov	rsp, rsp
	cmp	rdx, 0xfbf
	lea	rdi, [rdi]
	ja	.label_2637
	mov	rax, rsp
	mov	rsp, rsp
	lea	rcx, [rdx + 0xf]
	nop	
	and	rcx, 0xfffffffffffffff0
	lea	rsi, [rsi]
	sub	rax, rcx
	mov	rsp, rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], 0
	lea	rdi, [rdi]
	jmp	.label_2647
.label_2637:
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x98], rdx
	nop	
	call	malloc
	test	rax, rax
	je	.label_2661
	mov	cl, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], ecx
	nop	
	mov	rdx, qword ptr [rbp - 0x98]
.label_2647:
	mov	qword ptr [rbp - 0x98], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	mov	rdi, rax
	mov	rsi, rbx
	call	memcpy
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx]
	xor	edi, edi
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbx + 8]
	nop	
	jg	.label_2608
	lea	rax, [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_2614
.label_2661:
	mov	r14d, 0xc
	test	r13, r13
	mov	rbp, rbp
	je	.label_2624
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [r13], 0
	jle	.label_2633
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_2643:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	lea	rdi, [rdi]
	cmp	r15, qword ptr [r13]
	lea	rdi, [rdi]
	jl	.label_2643
	mov	rsp, rsp
	jmp	.label_2633
.label_2642:
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	r14, rax
	jmp	.label_2615
	nop	dword ptr [rax]
.label_2614:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rax]
	nop	
	mov	rdx, r15
	shl	rdx, 4
	lea	rax, [rcx + rdx]
	mov	ecx, dword ptr [rcx + rdx + 8]
	movzx	edx, cl
	nop	
	cmp	edx, 9
	nop	
	je	.label_2652
	cmp	edx, 8
	jne	.label_2611
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r14
	mov	rbp, rbp
	jge	.label_2611
	shl	rax, 4
	nop	
	mov	qword ptr [rbx + rax], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbx + rax + 8], -1
	lea	rdi, [rdi]
	jmp	.label_2611
	nop	dword ptr [rax]
.label_2652:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r14
	lea	rsi, [rsi]
	jge	.label_2611
	lea	rsi, [rsi]
	shl	rax, 4
	cmp	qword ptr [rbx + rax], rsi
	mov	rbp, rbp
	jge	.label_2619
	mov	qword ptr [rbx + rax + 8], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	r13, rsi
	mov	rsi, rbx
	mov	rsp, rsp
	jmp	.label_2627
.label_2619:
	test	ecx, 0x80000
	je	.label_2634
	nop	
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax], -1
	mov	rsp, rsp
	je	.label_2634
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	r13, rsi
	mov	rsi, qword ptr [rbp - 0xb0]
.label_2627:
	mov	rdx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	call	memcpy
	mov	rsi, r13
	lea	rdi, [rdi]
	jmp	.label_2611
.label_2634:
	mov	qword ptr [rbx + rax + 8], rsi
	nop	word ptr cs:[rax + rax]
.label_2611:
	mov	qword ptr [rbp - 0xa8], rsi
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rbx + 8]
	mov	rsp, rsp
	jne	.label_2649
	cmp	r15, qword ptr [r12 + 0xb0]
	nop	
	jne	.label_2649
	mov	rbp, rbp
	mov	r13, r12
	lea	rdi, [rdi]
	mov	r12, qword ptr [rbp - 0xb8]
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_2658
	test	r14, r14
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	eax, 0
	mov	rdx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	je	.label_2609
.label_2612:
	mov	rsp, rsp
	cmp	qword ptr [rcx - 8], 0
	js	.label_2606
	cmp	qword ptr [rcx], -1
	mov	rsp, rsp
	je	.label_2609
.label_2606:
	inc	rax
	lea	rsi, [rsi]
	add	rcx, 0x10
	cmp	rax, r14
	jb	.label_2612
.label_2609:
	lea	rdi, [rdi]
	cmp	rax, r14
	je	.label_2659
	mov	rcx, qword ptr [r12]
	nop	
	lea	rax, [rcx - 1]
	lea	rsi, [rsi]
	mov	qword ptr [r12], rax
	test	rcx, rcx
	jle	.label_2625
	mov	rcx, qword ptr [r12 + 0x10]
	shl	rax, 4
	mov	rsp, rsp
	lea	rbx, [rax + rax*2]
	nop	
	mov	rax, qword ptr [rcx + rbx]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	call	memcpy
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r15, qword ptr [rax + rbx + 8]
	mov	r12, r13
.label_2649:
	mov	rbx, qword ptr [r12 + 0x98]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	mov	r13, r15
	lea	rdi, [rdi]
	shl	r13, 4
	mov	eax, dword ptr [rsi + r13 + 8]
	mov	rbp, rbp
	test	al, 8
	mov	rsp, rsp
	jne	.label_2657
	nop	
	test	eax, 0x100000
	lea	rdi, [rdi]
	jne	.label_2665
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 4
	jne	.label_2670
	mov	rax, qword ptr [rsi + r13]
	nop	
	shl	rax, 4
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rax + rcx + 0x10]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rax + rcx + 0x18]
	nop	
	mov	rdx, r14
	mov	rbp, rbp
	sub	rdx, rdi
	cmp	qword ptr [rbp - 0xb8], 0
	lea	rdi, [rdi]
	je	.label_2610
	cmp	r14, -1
	je	.label_2622
	cmp	rdi, -1
	je	.label_2622
	cmp	r14, rdi
	je	.label_2610
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x30]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	cmp	rax, rdx
	lea	rsi, [rsi]
	jl	.label_2622
	mov	rsi, qword ptr [r12 + 8]
	mov	r12, rdi
	lea	rdi, [rdi]
	lea	rdi, [rsi + r12]
	nop	
	add	rsi, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x80], rdx
	call	memcmp
	lea	rdi, [rdi]
	mov	rdi, r12
	nop	
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_2622
.label_2610:
	cmp	r14, rdi
	lea	rsi, [rsi]
	jne	.label_2630
	lea	rdi, [rbp - 0x70]
	mov	rsi, r15
	mov	r14, rdx
	lea	rsi, [rsi]
	call	re_node_set_insert
	mov	rdx, r14
	lea	rsi, [rsi]
	test	al, al
	je	.label_2607
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + rcx*8]
	nop	
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	mov	rsp, rsp
	jle	.label_2630
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rdi, [rdi]
	lea	rsi, [r15 + r15*2]
	mov	rsi, qword ptr [rdi + rsi*8 + 0x10]
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsi]
	dec	rax
	mov	r8, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	ecx, 0
	nop	
	je	.label_2662
	nop	word ptr cs:[rax + rax]
.label_2632:
	lea	rsi, [rcx + rax]
	mov	rsp, rsp
	shr	rsi, 1
	lea	rdi, [rdi]
	cmp	qword ptr [r8 + rsi*8], r14
	lea	rdi, [rsi + 1]
	cmovl	rcx, rdi
	cmovge	rax, rsi
	cmp	rcx, rax
	jb	.label_2632
.label_2662:
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_2630
	mov	rbp, rbp
	cmp	qword ptr [r8 + rcx*8], r14
	mov	rbp, rbp
	je	.label_2638
	jmp	.label_2630
	nop	word ptr cs:[rax + rax]
.label_2657:
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rcx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	r12, qword ptr [rax + rcx*8]
	mov	rbx, qword ptr [rbx + 0x28]
	lea	rdi, [rbp - 0x70]
	mov	rbp, rbp
	mov	rsi, r15
	call	re_node_set_insert
	nop	
	test	al, al
	je	.label_2607
	lea	rdi, [rdi]
	lea	rax, [r15 + r15*2]
	mov	r9, qword ptr [rbx + rax*8 + 8]
	lea	rdi, [rdi]
	test	r9, r9
	jle	.label_2628
	nop	
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	mov	r10, qword ptr [r12 + 0x10]
	mov	rsp, rsp
	lea	r11, [r10 - 1]
	mov	rbp, rbp
	mov	r14, -1
	xor	r15d, r15d
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbp - 0xb8]
	nop	word ptr cs:[rax + rax]
.label_2640:
	nop	
	test	r10, r10
	jle	.label_2635
	mov	rbx, qword ptr [r8 + r15*8]
	test	r11, r11
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rsi, r11
	mov	eax, 0
	je	.label_2644
	nop	dword ptr [rax]
.label_2626:
	lea	rdx, [rax + rsi]
	mov	rsp, rsp
	shr	rdx, 1
	cmp	qword ptr [rcx + rdx*8], rbx
	lea	rdi, [rdx + 1]
	cmovl	rax, rdi
	nop	
	cmovge	rsi, rdx
	cmp	rax, rsi
	nop	
	jb	.label_2626
.label_2644:
	cmp	rax, -1
	lea	rdi, [rdi]
	je	.label_2635
	cmp	qword ptr [rcx + rax*8], rbx
	jne	.label_2635
	cmp	r14, -1
	lea	rdi, [rdi]
	jne	.label_2621
	mov	r14, rbx
.label_2635:
	inc	r15
	cmp	r15, r9
	jl	.label_2640
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	jmp	.label_2615
	nop	word ptr [rax + rax]
.label_2665:
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r15
	mov	rdx, r12
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	call	check_node_accept_bytes
	mov	rbp, rbp
	movsxd	rdx, eax
.label_2630:
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_2654
	mov	rsi, qword ptr [rbx]
	mov	r12, qword ptr [rbp - 0x30]
.label_2670:
	add	rsi, r13
	mov	rdi, r12
	nop	
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	call	check_node_accept
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rdi, [rdi]
	je	.label_2628
.label_2654:
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0xa8]
	nop	
	cmp	qword ptr [rbp - 0xb8], 0
	mov	rax, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rax + r15*8]
	je	.label_2668
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rax + 0xa8]
	lea	rsi, [rsi]
	jg	.label_2622
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + rdx*8]
	mov	rbp, rbp
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_2622
	nop	
	mov	rax, qword ptr [rcx + 0x10]
	nop	
	test	rax, rax
	nop	
	jle	.label_2622
	dec	rax
	mov	rcx, qword ptr [rcx + 0x18]
	mov	ebx, 0
	je	.label_2645
	nop	word ptr cs:[rax + rax]
.label_2650:
	mov	rbp, rbp
	lea	rsi, [rbx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r14
	lea	rdi, [rsi + 1]
	lea	rsi, [rsi]
	cmovl	rbx, rdi
	nop	
	cmovge	rax, rsi
	mov	rsp, rsp
	cmp	rbx, rax
	jb	.label_2650
.label_2645:
	cmp	rbx, -1
	lea	rdi, [rdi]
	je	.label_2628
	cmp	qword ptr [rcx + rbx*8], r14
	lea	rdi, [rdi]
	jne	.label_2628
.label_2668:
	mov	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	jmp	.label_2655
.label_2621:
	mov	r15, qword ptr [rbp - 0x68]
	test	r15, r15
	jle	.label_2648
	mov	rcx, r15
	dec	rcx
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	edx, 0
	je	.label_2666
	nop	word ptr cs:[rax + rax]
.label_2669:
	lea	rsi, [rdx + rcx]
	nop	
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r14
	lea	rdi, [rsi + 1]
	mov	rbp, rbp
	cmovl	rdx, rdi
	nop	
	cmovge	rcx, rsi
	cmp	rdx, rcx
	mov	rbp, rbp
	jb	.label_2669
.label_2666:
	cmp	rdx, -1
	setne	cl
	cmp	qword ptr [rax + rdx*8], r14
	mov	rbp, rbp
	sete	dl
	lea	rsi, [rsi]
	and	dl, cl
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	cmovne	rax, rbx
	test	dl, dl
	lea	rsi, [rsi]
	jne	.label_2642
	nop	
	test	r13, r13
	mov	rdx, qword ptr [rbp - 0xa8]
	jne	.label_2667
	lea	rdi, [rdi]
	mov	r14, rax
	jmp	.label_2615
.label_2648:
	lea	rsi, [rsi]
	test	r13, r13
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa8]
	nop	
	je	.label_2615
.label_2667:
	mov	rcx, r13
	mov	rbp, rbp
	mov	r13, qword ptr [rcx]
	lea	rax, [r13 + 1]
	nop	
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_2663
	mov	rdi, qword ptr [rcx + 0x10]
	nop	
	shl	rax, 5
	nop	
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r12, rax
	lea	rdi, [rdi]
	test	r12, r12
	je	.label_2607
	mov	rax, qword ptr [rbp - 0xb8]
	shl	qword ptr [rax + 8], 1
	nop	
	mov	qword ptr [rax + 0x10], r12
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0xa8]
	jmp	.label_2641
.label_2663:
	lea	rsi, [rsi]
	mov	r12, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
.label_2641:
	mov	qword ptr [rbp - 0x98], rdi
	lea	rsi, [rsi]
	lea	r13, [r13 + r13*2]
	shl	r13, 4
	lea	rdi, [rdi]
	mov	qword ptr [r12 + r13], rdx
	lea	rdi, [rdi]
	mov	qword ptr [r12 + r13 + 8], rbx
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [r12 + r13 + 0x10], rax
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_2607
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x88]
	nop	
	mov	rdx, qword ptr [rbp - 0x98]
	nop	
	call	memcpy
	lea	rbx, [r12 + r13 + 0x18]
	mov	qword ptr [r12 + r13 + 0x20], r15
	test	r15, r15
	nop	
	jle	.label_2629
	mov	qword ptr [rbx], r15
	nop	
	shl	r15, 3
	mov	rdi, r15
	mov	rbp, rbp
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [r12 + r13 + 0x28], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_2639
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, r15
	call	memcpy
	jmp	.label_2638
.label_2629:
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x10], 0
.label_2638:
	mov	rdx, qword ptr [rbp - 0xa8]
.label_2655:
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbp - 0xb8]
.label_2615:
	test	r14, r14
	mov	rbp, rbp
	js	.label_2653
	mov	r12, qword ptr [rbp - 0x88]
	nop	
	jmp	.label_2660
.label_2653:
	mov	qword ptr [rbp - 0xb8], r13
	mov	rsp, rsp
	cmp	r14, -2
	lea	rsi, [rsi]
	je	.label_2607
	nop	dword ptr [rax]
.label_2628:
	cmp	qword ptr [rbp - 0xb8], 0
	je	.label_2664
.label_2622:
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [r13]
	lea	rax, [rcx - 1]
	lea	rdi, [rdi]
	mov	qword ptr [r13], rax
	mov	rbp, rbp
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_2625
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	r12, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rdx, qword ptr [rbp - 0x98]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rbp, rbp
	mov	rdx, r14
	mov	rax, qword ptr [r13 + 0x10]
	nop	
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rcx
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	nop	
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r14, qword ptr [rax + rbx + 8]
.label_2660:
	cmp	rdx, qword ptr [r12 + 8]
	mov	r15, r14
	mov	rsi, rdx
	mov	rbx, r12
	mov	rbp, rbp
	mov	r14, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	r12, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	jle	.label_2614
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
.label_2608:
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x9c]
	test	al, al
	mov	rsp, rsp
	je	.label_2656
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb0]
	call	free
.label_2656:
	xor	r14d, r14d
	test	r13, r13
	je	.label_2624
	xor	r14d, r14d
	nop	
	cmp	qword ptr [r13], 0
	jle	.label_2633
	nop	
	xor	ebx, ebx
	nop	
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_2620:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	lea	rsi, [rsi]
	inc	r15
	add	rbx, 0x30
	mov	rsp, rsp
	cmp	r15, qword ptr [r13]
	mov	rbp, rbp
	jl	.label_2620
.label_2633:
	mov	rdi, qword ptr [r13 + 0x10]
	lea	rdi, [rdi]
	jmp	.label_2631
.label_2664:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	r14d, 1
	lea	rsi, [rsi]
	jmp	.label_2636
.label_2658:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x60]
	nop	
	call	free
	xor	r14d, r14d
.label_2636:
	nop	
	mov	eax, dword ptr [rbp - 0x9c]
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_2624
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	jmp	.label_2631
.label_2659:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x9c]
	test	al, al
	lea	rsi, [rsi]
	je	.label_2646
	nop	
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	call	free
.label_2646:
	mov	rsp, rsp
	xor	r14d, r14d
	cmp	qword ptr [r12], 0
	lea	rdi, [rdi]
	jle	.label_2613
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rsp, rsp
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_2671:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	nop	
	call	free
	inc	r15
	lea	rdi, [rdi]
	add	rbx, 0x30
	lea	rdi, [rdi]
	cmp	r15, qword ptr [r12]
	lea	rsi, [rsi]
	jl	.label_2671
	jmp	.label_2613
.label_2639:
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.label_2607:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_2623
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	call	free
.label_2623:
	mov	rsp, rsp
	mov	r14d, 0xc
	mov	r12, qword ptr [rbp - 0xb8]
	nop	
	test	r12, r12
	je	.label_2624
	xor	ebx, ebx
	cmp	qword ptr [r12], 0
	mov	rsp, rsp
	jle	.label_2613
	nop	
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2651:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rsp, rsp
	inc	r15
	mov	rbp, rbp
	add	rbx, 0x30
	lea	rdi, [rdi]
	cmp	r15, qword ptr [r12]
	mov	rbp, rbp
	jl	.label_2651
.label_2613:
	nop	
	mov	rdi, qword ptr [r12 + 0x10]
.label_2631:
	mov	rsp, rsp
	call	free
.label_2624:
	lea	rdi, [rdi]
	mov	eax, r14d
	mov	rbp, rbp
	lea	rsp, [rbp - 0x28]
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_2625:
	mov	edi, OFFSET FLAT:.str.26
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.22_1
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x424810

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	nop	
	push	rbp
	mov	rsp, rsp
	push	rbx
	push	rax
	nop	
	mov	rbx, rdi
	lea	rsi, [rsi]
	test	rsi, rsi
	js	.label_2676
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_2674
	nop	
	cmp	dword ptr [rbx + 0x90], 2
	nop	
	jl	.label_2677
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	inc	rsi
	nop	dword ptr [rax]
.label_2680:
	mov	rbp, rbp
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	lea	rdi, [rdi]
	cmp	ebp, -1
	jne	.label_2673
	nop	
	dec	rsi
	mov	rbp, rbp
	test	rsi, rsi
	jg	.label_2680
	nop	
	mov	edx, dword ptr [rbx + 0x70]
	nop	
	jmp	.label_2672
.label_2677:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rsi]
	lea	rsi, [rsi]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edx, 1
	mov	rsp, rsp
	bt	rcx, rax
	jb	.label_2672
	xor	edx, edx
	nop	
	movzx	eax, al
	mov	rsp, rsp
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_2672
	jmp	.label_2678
.label_2673:
	cmp	byte ptr [rbx + 0x8e], 0
	nop	
	jne	.label_2679
.label_2675:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_2672
.label_2678:
	mov	edx, 2
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_2672
	xor	edx, edx
	lea	rdi, [rdi]
	jmp	.label_2672
.label_2676:
	mov	edx, dword ptr [rbx + 0x70]
	mov	rbp, rbp
	jmp	.label_2672
.label_2674:
	and	edx, 2
	xor	edx, 0xa
.label_2672:
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
	je	.label_2672
	test	eax, eax
	jne	.label_2672
	jmp	.label_2675
	nop	
	.section	.text
	.align	32
	#Procedure 0x424910

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	qword ptr [rsp], rdx
	mov	r12, rsi
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	test	rcx, rcx
	jle	.label_2684
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	lea	rdi, [rdi]
	jmp	.label_2682
.label_2685:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0xf8]
	nop	
	mov	rsi, r14
	shl	rsi, 4
	lea	rdi, [rdi]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_2684
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	rbp, rbp
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_2683
	nop	dword ptr [rax]
.label_2682:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rsp, rsp
	mov	rdx, rbp
	shl	rdx, 4
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax + rdx + 8]
	cmp	esi, 8
	lea	rdi, [rdi]
	jne	.label_2681
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rdx]
	lea	rdi, [rdi]
	cmp	rax, 0x3f
	nop	
	jg	.label_2681
	mov	rdx, qword ptr [r13 + 0xa0]
	mov	rbp, rbp
	bt	rdx, rax
	lea	rdi, [rdi]
	jae	.label_2681
	lea	rdi, [rdi]
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	lea	rdi, [rdi]
	je	.label_2685
.label_2683:
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 0x30
	mov	rsp, rsp
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 0xe8]
	mov	rdx, qword ptr [r15 + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [r15 + 0xf8]
	mov	rdx, qword ptr [rax + rcx*8]
	mov	eax, 0xc
	nop	
	test	rdx, rdx
	je	.label_2684
	mov	qword ptr [rdx + 8], rbp
	lea	rdi, [rdi]
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	nop	
	mov	rcx, qword ptr [r12 + 8]
	nop	dword ptr [rax + rax]
.label_2681:
	lea	rdi, [rdi]
	inc	rbx
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbx, rcx
	mov	rbp, rbp
	jl	.label_2682
.label_2684:
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x424ab0

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0xa8
	mov	qword ptr [rsp + 0x80], rsi
	lea	rdi, [rdi]
	mov	r13, rdi
	cmp	qword ptr [rsi + 8], 0
	lea	rsi, [rsi]
	jle	.label_2722
	lea	rsi, [rsi]
	mov	r15, qword ptr [r13 + 0x98]
	nop	
	mov	qword ptr [rsp + 0x90], r15
	nop	
	mov	r8, qword ptr [r13 + 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x88], r8
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_2716:
	mov	qword ptr [rsp + 0x38], rcx
	mov	rax, qword ptr [rsp + 0x80]
	mov	rax, qword ptr [rax + 0x10]
	mov	r14, qword ptr [rax + rcx*8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x70], r14
	mov	rsp, rsp
	mov	rax, qword ptr [r15]
	lea	rsi, [rsi]
	shl	r14, 4
	mov	rbp, rbp
	mov	ebx, dword ptr [rax + r14 + 8]
	lea	rsi, [rsi]
	movzx	eax, bl
	lea	rdi, [rdi]
	cmp	eax, 4
	nop	
	jne	.label_2690
	lea	rsi, [rsi]
	mov	ebp, ebx
	mov	rsp, rsp
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_2693
	mov	edx, dword ptr [r13 + 0xa0]
	lea	rsi, [rsi]
	mov	rdi, r13
	nop	
	mov	rsi, r8
	mov	r12, r8
	call	re_string_context_at
	mov	r8, r12
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_2732
	test	ecx, ecx
	je	.label_2690
.label_2732:
	lea	rsi, [rsi]
	test	bh, 8
	je	.label_2721
	test	ecx, ecx
	nop	
	jne	.label_2690
.label_2721:
	test	bh, 0x20
	je	.label_2724
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	and	ecx, 2
	je	.label_2690
.label_2724:
	test	bpl, bpl
	jns	.label_2693
	and	eax, 8
	je	.label_2690
	nop	dword ptr [rax]
.label_2693:
	mov	rbp, rbp
	mov	r12, qword ptr [r13 + 0xc8]
	mov	qword ptr [rsp + 0x48], r12
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	r9, qword ptr [r13 + 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r9
	mov	rbp, rbp
	test	r12, r12
	mov	eax, 0
	jle	.label_2734
	mov	rcx, qword ptr [r13 + 0xd8]
	xor	eax, eax
	mov	rdx, r12
	nop	word ptr cs:[rax + rax]
.label_2696:
	lea	rdi, [rdi]
	lea	rsi, [rdx + rax]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rsi*8 + 8], r8
	cmovge	rdx, rdi
	nop	
	lea	rsi, [rdi + 1]
	mov	rsp, rsp
	cmovl	rax, rsi
	lea	rdi, [rdi]
	cmp	rax, rdx
	jl	.label_2696
.label_2734:
	lea	rsi, [rsi]
	cmp	rax, r12
	jge	.label_2701
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_2701
	mov	rcx, qword ptr [r13 + 0xd8]
	lea	rax, [rax + rax*4]
	nop	
	cmp	qword ptr [rcx + rax*8 + 8], r8
	mov	rsp, rsp
	jne	.label_2701
	lea	rax, [rcx + rax*8]
	nop	word ptr cs:[rax + rax]
.label_2723:
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	cmp	qword ptr [rax], rcx
	lea	rsi, [rsi]
	je	.label_2719
	lea	rdi, [rdi]
	cmp	byte ptr [rax + 0x20], 0
	lea	rdi, [rdi]
	lea	rax, [rax + 0x28]
	mov	rbp, rbp
	jne	.label_2723
.label_2701:
	cmp	qword ptr [r13 + 0xe8], 0
	lea	rdi, [rdi]
	mov	rax, r12
	lea	rsi, [rsi]
	jle	.label_2704
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x90], r15
	mov	rax, qword ptr [r9]
	mov	rsp, rsp
	mov	r10, qword ptr [rax + r14]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r10
	lea	rdi, [rdi]
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_2733
	nop	word ptr cs:[rax + rax]
.label_2735:
	mov	rbp, rbp
	mov	rax, qword ptr [r9]
.label_2733:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r13 + 0xf8]
	nop	
	mov	r14, qword ptr [rcx + r11*8]
	mov	qword ptr [rsp + 0x68], r14
	mov	rcx, qword ptr [r14 + 8]
	shl	rcx, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rax + rcx], r10
	mov	rbp, rbp
	jne	.label_2689
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], r11
	mov	rsp, rsp
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x20]
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	jle	.label_2702
	nop	
	mov	rbx, r8
	xor	r12d, r12d
	jmp	.label_2691
.label_2702:
	mov	rdx, r8
	mov	rdi, r15
	xor	r12d, r12d
	nop	
	jmp	.label_2708
.label_2717:
	nop	
	mov	r9, qword ptr [r13 + 0x58]
	mov	rsp, rsp
	cmp	rdi, r9
	nop	
	jg	.label_2713
	mov	qword ptr [rsp + 0x40], rdx
	mov	rax, qword ptr [r13 + 0x40]
	mov	r8, qword ptr [r13 + 0xc0]
	cmp	rax, rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], rdi
	nop	
	mov	rdi, r13
	nop	
	mov	rdx, r14
	jg	.label_2715
	mov	rsp, rsp
	cmp	rax, r9
	lea	rsi, [rsi]
	jl	.label_2699
.label_2715:
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rsp + 0x98]
	jg	.label_2725
	cmp	rcx, r9
	lea	rdi, [rdi]
	jge	.label_2725
.label_2699:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	lea	esi, [rax + 1]
	mov	r14, rdi
	mov	r13, r8
	call	extend_buffers
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rdi, r14
	mov	r8, r13
	mov	r13d, eax
	mov	rbp, rbp
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_2692
.label_2725:
	mov	r14, rdx
	nop	
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	sub	rdx, r8
	mov	rsp, rsp
	mov	r13, rdi
	jle	.label_2705
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r8*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	nop	
	call	memset
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	qword ptr [r13 + 0xc0], rax
.label_2705:
	mov	rax, qword ptr [r13 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	jmp	.label_2707
	nop	dword ptr [rax + rax]
.label_2691:
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rdx, qword ptr [rcx + r12*8]
	mov	rcx, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rdi, rcx
	nop	
	sub	rdi, r15
	mov	rsp, rsp
	add	rdi, rbx
	lea	rsi, [rsi]
	mov	rbp, rcx
	sub	rbp, r15
	jle	.label_2711
	mov	rbp, rbp
	mov	rcx, qword ptr [r13 + 0x30]
	cmp	rdi, rcx
	lea	rsi, [rsi]
	jg	.label_2717
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x98], rdi
.label_2707:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rdi, [rax + rbx]
	lea	rsi, [rax + r15]
	mov	rdx, rbp
	nop	
	call	memcmp
	test	eax, eax
	mov	r8, qword ptr [rsp + 0x88]
	mov	rdi, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x40]
	jne	.label_2730
.label_2711:
	mov	rsp, rsp
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r14
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rbp, r8
	call	get_subexp_sub
	mov	rcx, r13
	mov	r13d, eax
	cmp	r13d, 1
	nop	
	ja	.label_2692
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa0], rax
	inc	r12
	nop	
	mov	rax, qword ptr [r14 + 0x20]
	cmp	r12, rax
	mov	rdx, rbx
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	r15, rdi
	mov	r13, rcx
	mov	r8, rbp
	lea	rsi, [rsi]
	jl	.label_2691
	mov	rbp, rbp
	jmp	.label_2708
.label_2730:
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x20]
.label_2713:
	mov	rdx, rbx
	mov	rdi, r15
.label_2708:
	mov	rsp, rsp
	cmp	r12, rax
	lea	rsi, [rsi]
	jge	.label_2710
	mov	r12, qword ptr [rsp + 0x48]
	mov	r9, qword ptr [rsp + 0x28]
	mov	r10, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x78]
	jmp	.label_2689
.label_2710:
	test	r12, r12
	setg	al
	mov	rbp, rbp
	movzx	ebp, al
	mov	rbp, rbp
	add	rbp, rdi
	lea	rdi, [rdi]
	cmp	rbp, r8
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x28]
	mov	r10, qword ptr [rsp + 0x20]
	mov	r11, qword ptr [rsp + 0x78]
	jg	.label_2689
	jmp	.label_2695
.label_2737:
	cmp	r14, -1
	je	.label_2728
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x78], r11
	mov	qword ptr [rsp + 0x28], r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], r8
	nop	
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	mov	rbx, r13
	jne	.label_2731
	nop	
	lea	rsi, [rbp + 1]
	sub	rsi, qword ptr [r15]
	mov	rsp, rsp
	mov	edi, 0x18
	call	rpl_calloc
	mov	qword ptr [r15 + 0x10], rax
	test	rax, rax
	mov	r13d, 0xc
	je	.label_2692
.label_2731:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
	mov	dword ptr [rsp], 9
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rax
	mov	r8, r14
	mov	rbp, rbp
	mov	r9, rbp
	call	check_arrival
	lea	rsi, [rsi]
	mov	r13d, eax
	cmp	r13d, 1
	mov	r8, qword ptr [rsp + 0x88]
	mov	r12, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x28]
	nop	
	mov	r10, qword ptr [rsp + 0x20]
	mov	r11, qword ptr [rsp + 0x78]
	nop	
	mov	rdx, qword ptr [rsp + 0x98]
	je	.label_2687
	test	r13d, r13d
	jne	.label_2692
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbx, qword ptr [r15 + 0x20]
	lea	rsi, [rsi]
	cmp	rbx, qword ptr [r15 + 0x18]
	mov	r12, r15
	lea	rdi, [rdi]
	je	.label_2718
.label_2697:
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, 0x28
	call	rpl_calloc
	mov	r13d, 0xc
	test	rax, rax
	mov	rbx, qword ptr [rsp + 0x18]
	je	.label_2692
	mov	rcx, qword ptr [r12 + 0x20]
	mov	rdx, qword ptr [r12 + 0x28]
	mov	rbp, rbp
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	mov	qword ptr [rax], r14
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], rbp
	inc	rcx
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x20], rcx
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rdx, rax
	mov	rcx, qword ptr [rsp + 0x70]
	nop	
	mov	r8, qword ptr [rsp + 0x88]
	call	get_subexp_sub
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rbp, rbp
	cmp	r13d, 1
	ja	.label_2692
	mov	r15, r12
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x88]
	mov	r12, qword ptr [rsp + 0x48]
	mov	r9, qword ptr [rsp + 0x28]
	mov	r10, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x78]
	jmp	.label_2700
.label_2706:
	cmp	rdx, qword ptr [r13 + 0x58]
	jge	.label_2689
	mov	qword ptr [rsp + 0x78], r11
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], r10
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x48], r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], r8
	lea	rbx, [rdx + 1]
	lea	rdi, [rdi]
	mov	r15, rdx
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	esi, ebx
	call	extend_buffers
	mov	rcx, r13
	mov	rbp, rbp
	mov	r13d, eax
	mov	rsp, rsp
	test	r13d, r13d
	jne	.label_2692
	mov	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	r13, rcx
	mov	r8, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x48]
	mov	r9, qword ptr [rsp + 0x28]
	mov	r10, qword ptr [rsp + 0x20]
	mov	r11, qword ptr [rsp + 0x78]
	mov	rdx, r15
	jmp	.label_2727
.label_2718:
	lea	rsi, [rsi]
	lea	rax, [rbx + rbx]
	mov	rdi, qword ptr [r12 + 0x28]
	lea	rsi, [rax*8 + 8]
	lea	rdi, [rdi]
	call	realloc
	mov	rbp, rbp
	mov	r13d, 0xc
	nop	
	test	rax, rax
	je	.label_2692
	mov	rbp, rbp
	lea	rcx, [rbx + rbx + 1]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x28], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_2697
	nop	dword ptr [rax]
.label_2695:
	cmp	rbp, qword ptr [r14]
	mov	rbp, rbp
	jle	.label_2703
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [r13 + 0x30]
	jge	.label_2706
	lea	rbx, [rdx + 1]
.label_2727:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xa0]
	movzx	eax, byte ptr [rbp + rcx - 1]
	nop	
	movzx	ecx, byte ptr [rcx + rdx]
	cmp	ecx, eax
	mov	rdx, rbx
	jne	.label_2689
.label_2703:
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rcx, qword ptr [rax + rbp*8]
	mov	rsp, rsp
	test	rcx, rcx
	je	.label_2698
	mov	rax, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	test	rax, rax
	jle	.label_2698
	mov	qword ptr [rsp + 0x98], rdx
	mov	r15, r14
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [r9]
	lea	rdi, [rdi]
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_2738:
	mov	r14, qword ptr [rcx + rsi*8]
	mov	rdi, r14
	nop	
	shl	rdi, 4
	movzx	ebx, byte ptr [rdx + rdi + 8]
	cmp	ebx, 9
	mov	rsp, rsp
	jne	.label_2739
	cmp	qword ptr [rdx + rdi], r10
	je	.label_2737
.label_2739:
	nop	
	inc	rsi
	cmp	rsi, rax
	mov	rbp, rbp
	jl	.label_2738
.label_2728:
	lea	rdi, [rdi]
	mov	rbx, r13
.label_2700:
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	jmp	.label_2687
	nop	word ptr cs:[rax + rax]
.label_2698:
	nop	
	mov	r15, r14
	lea	rsi, [rsi]
	mov	rbx, r13
.label_2687:
	lea	rsi, [rsi]
	cmp	rbp, r8
	lea	rsi, [rsi]
	lea	rbp, [rbp + 1]
	mov	r13, rbx
	lea	rsi, [rsi]
	mov	r14, r15
	mov	rsp, rsp
	jl	.label_2695
	nop	dword ptr [rax]
.label_2689:
	inc	r11
	lea	rsi, [rsi]
	cmp	r11, qword ptr [r13 + 0xe8]
	jl	.label_2735
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0xc8]
	mov	r15, qword ptr [rsp + 0x90]
	jmp	.label_2704
.label_2719:
	mov	rax, r12
.label_2704:
	mov	dword ptr [rsp + 0x14], 0
	mov	rbp, rbp
	cmp	r12, rax
	jge	.label_2690
	mov	rsp, rsp
	lea	rax, [r12 + r12*4]
	lea	rbp, [rax*8 + 0x18]
	nop	dword ptr [rax]
.label_2720:
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0xd8]
	nop	
	mov	rbx, r13
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	cmp	qword ptr [rax + rbp - 0x18], rcx
	lea	rsi, [rsi]
	jne	.label_2686
	cmp	qword ptr [rax + rbp - 0x10], r8
	mov	rsp, rsp
	jne	.label_2686
	mov	rdx, qword ptr [rax + rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbp]
	mov	r13, qword ptr [r15 + 0x30]
	cmp	rsi, rdx
	jne	.label_2729
	mov	qword ptr [rsp + 0x48], r12
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0x70]
	lea	rcx, [rcx + rcx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	lea	rdi, [rdi]
	jmp	.label_2736
.label_2729:
	mov	qword ptr [rsp + 0x48], r12
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rax, [rax*8]
	lea	rsi, [rsi]
	add	rax, qword ptr [r15 + 0x18]
.label_2736:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	r15, [rax + rax*2]
	lea	r14, [rsi + r8]
	mov	qword ptr [rsp + 0xa0], rsi
	sub	r14, rdx
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdi, [rdi]
	lea	rsi, [r14 - 1]
	nop	
	mov	r12, rbx
	mov	rbp, rbp
	mov	edx, dword ptr [r12 + 0xa0]
	mov	rdi, r12
	nop	
	mov	rbx, r8
	lea	rdi, [rdi]
	call	re_string_context_at
	mov	rdx, rbx
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	rsi, qword ptr [rcx + r14*8]
	mov	rcx, qword ptr [rcx + rdx*8]
	lea	rsi, [rsi]
	test	rcx, rcx
	nop	
	mov	edx, 0
	mov	rbp, rbp
	je	.label_2714
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 0x10]
.label_2714:
	mov	qword ptr [rsp + 0x98], rdx
	lea	rdx, [r13 + r15*8]
	test	rsi, rsi
	nop	
	lea	rdi, [rsp + 0x50]
	je	.label_2709
	mov	r15d, eax
	mov	rsi, qword ptr [rsi + 0x50]
	nop	
	mov	qword ptr [rsp + 0x40], rdx
	nop	
	mov	rbx, rdi
	mov	rsp, rsp
	call	re_node_set_init_union
	nop	
	mov	r13d, eax
	mov	dword ptr [rsp + 0x14], r13d
	test	r13d, r13d
	jne	.label_2726
	nop	
	lea	rdi, [rsp + 0x14]
	nop	
	mov	rsi, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	call	re_acquire_state_context
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbp, rbp
	mov	rbx, r12
	mov	rsp, rsp
	cmp	qword ptr [rax + r14*8], 0
	jne	.label_2688
	lea	rsi, [rsi]
	mov	r13d, dword ptr [rsp + 0x14]
	test	r13d, r13d
	je	.label_2688
	lea	rdi, [rdi]
	jmp	.label_2694
.label_2709:
	nop	
	lea	rdi, [rsp + 0x14]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 0x40], rdx
	lea	rdi, [rdi]
	mov	ecx, eax
	call	re_acquire_state_context
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbx, r12
	cmp	qword ptr [rax + r14*8], 0
	jne	.label_2688
	lea	rdi, [rdi]
	mov	r13d, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	test	r13d, r13d
	mov	r15, qword ptr [rsp + 0x90]
	mov	r8, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x48]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0xa0]
	je	.label_2712
	mov	rsp, rsp
	jmp	.label_2694
.label_2688:
	mov	r15, qword ptr [rsp + 0x90]
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xa0]
.label_2712:
	nop	
	cmp	rdx, rcx
	jne	.label_2686
	mov	rax, qword ptr [rax + r8*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x98]
	cmp	qword ptr [rax + 0x10], rcx
	mov	rbp, rbp
	jle	.label_2686
	nop	
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	rdx, r8
	mov	r14, r8
	call	check_subexp_matching_top
	mov	rcx, r14
	mov	r13d, eax
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], r13d
	test	r13d, r13d
	jne	.label_2694
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x40]
	mov	r14, rcx
	mov	rbp, rbp
	call	transit_state_bkref
	mov	r8, r14
	lea	rdi, [rdi]
	mov	r13d, eax
	nop	
	mov	dword ptr [rsp + 0x14], r13d
	test	r13d, r13d
	jne	.label_2694
.label_2686:
	inc	r12
	add	rbp, 0x28
	lea	rdi, [rdi]
	mov	r13, rbx
	cmp	r12, qword ptr [r13 + 0xc8]
	jl	.label_2720
	nop	word ptr [rax + rax]
.label_2690:
	mov	rcx, qword ptr [rsp + 0x38]
	inc	rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x80]
	cmp	rcx, qword ptr [rax + 8]
	jl	.label_2716
.label_2722:
	nop	
	mov	dword ptr [rsp + 0x14], 0
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_2694
.label_2692:
	mov	dword ptr [rsp + 0x14], r13d
.label_2694:
	nop	
	mov	eax, r13d
	add	rsp, 0xa8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2726:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	jmp	.label_2694
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x425700

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r12
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	ecx, esi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x40]
	mov	eax, 0xc
	movabs	rdx, 0xffffffffffffffe
	lea	rsi, [rsi]
	cmp	rsi, rdx
	mov	rbp, rbp
	ja	.label_2740
	movsxd	rax, ecx
	mov	rcx, qword ptr [r14 + 0x58]
	add	rsi, rsi
	mov	rsp, rsp
	cmp	rcx, rsi
	lea	rdi, [rdi]
	cmovle	rsi, rcx
	cmp	rax, rsi
	cmovge	rsi, rax
	lea	rdi, [rdi]
	mov	rdi, r14
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_2740
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0xb8]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_2748
	mov	rax, qword ptr [r14 + 0x40]
	nop	
	lea	rsi, [rax*8 + 8]
	mov	rbp, rbp
	call	realloc
	mov	rbp, rbp
	mov	rcx, rax
	test	rcx, rcx
	lea	rsi, [rsi]
	mov	eax, 0xc
	je	.label_2740
	mov	qword ptr [r14 + 0xb8], rcx
.label_2748:
	nop	
	cmp	byte ptr [r14 + 0x88], 0
	mov	eax, dword ptr [r14 + 0x90]
	je	.label_2749
	mov	rsp, rsp
	cmp	eax, 2
	lea	rdi, [rdi]
	jl	.label_2753
	mov	rdi, r14
	call	build_wcs_upper_buffer
	test	eax, eax
	je	.label_2742
	jmp	.label_2740
.label_2749:
	mov	rsp, rsp
	cmp	eax, 2
	jl	.label_2746
	mov	rdi, r14
	lea	rsi, [rsi]
	call	build_wcs_buffer
	nop	
	jmp	.label_2742
.label_2753:
	mov	rbx, qword ptr [r14 + 0x30]
	nop	
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	cmp	r15, rax
	cmovg	r15, rax
	lea	rdi, [rdi]
	cmp	rbx, r15
	jge	.label_2752
	lea	rsi, [rsi]
	jmp	.label_2743
.label_2750:
	nop	
	mov	cl, byte ptr [rax + rdx]
	jmp	.label_2745
	nop	word ptr cs:[rax + rax]
.label_2743:
	mov	rcx, qword ptr [r14]
	nop	
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	mov	rsp, rsp
	mov	cl, byte ptr [rbx + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_2750
.label_2745:
	mov	rbp, rbp
	movzx	r12d, cl
	lea	eax, [r12 + 0x80]
	cmp	eax, 0x17f
	nop	
	ja	.label_2741
	nop	
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	r12d, dword ptr [rax + r12*4]
.label_2741:
	mov	rax, qword ptr [r14 + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rbx], r12b
	mov	rbp, rbp
	inc	rbx
	cmp	rbx, r15
	nop	
	jl	.label_2743
	mov	rsp, rsp
	mov	rbx, r15
.label_2752:
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x30], rbx
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x38], rbx
	jmp	.label_2742
.label_2746:
	mov	rdx, qword ptr [r14 + 0x78]
	nop	
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_2742
	mov	rax, qword ptr [r14 + 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [r14 + 0x58]
	mov	rbp, rbp
	cmp	rcx, rsi
	cmovg	rcx, rsi
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_2751
	mov	rsi, qword ptr [r14 + 0x28]
	add	rsi, rax
	mov	rdi, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	rbp, rbp
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbx + rax], dl
	jmp	.label_2744
	nop	word ptr cs:[rax + rax]
.label_2747:
	mov	rdx, qword ptr [r14 + 0x78]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r14]
	mov	rdi, qword ptr [r14 + 8]
	add	rsi, qword ptr [r14 + 0x28]
	nop	
	movzx	esi, byte ptr [rax + rsi]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rdx + rsi]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rax], dl
.label_2744:
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rbp, rbp
	jl	.label_2747
	lea	rdi, [rdi]
	mov	rax, rcx
.label_2751:
	mov	rbp, rbp
	mov	qword ptr [r14 + 0x30], rax
	mov	qword ptr [r14 + 0x38], rax
.label_2742:
	lea	rdi, [rdi]
	xor	eax, eax
.label_2740:
	mov	rbp, rbp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x425960

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	r15, rdi
	mov	rsp, rsp
	mov	r14, qword ptr [r13 + 0x48]
	lea	rdi, [rdi]
	mov	r12, qword ptr [r13 + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	cmp	r14, qword ptr [r13 + 0xc0]
	jle	.label_2759
	mov	rsp, rsp
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_2754
.label_2759:
	mov	rcx, qword ptr [rax + r14*8]
	lea	rsi, [rsi]
	test	rcx, rcx
	je	.label_2758
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbx, rbx
	je	.label_2756
	mov	rbp, rbp
	mov	rbx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbx
	call	re_node_set_init_union
	mov	rsp, rsp
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_2760
	mov	rsi, qword ptr [r13 + 0x48]
	test	rbx, rbx
	sete	bpl
	nop	
	jmp	.label_2761
.label_2758:
	mov	rbp, rbp
	mov	qword ptr [rax + r14*8], rbx
	mov	rbp, rbp
	jmp	.label_2754
.label_2756:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp], xmm0
	mov	bpl, 1
	mov	rsi, r14
.label_2761:
	nop	
	dec	rsi
	mov	edx, dword ptr [r13 + 0xa0]
	lea	rdi, [rdi]
	mov	rdi, r13
	lea	rdi, [rdi]
	call	re_string_context_at
	mov	rsp, rsp
	lea	rdx, [rsp]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	ecx, eax
	mov	rsp, rsp
	call	re_acquire_state_context
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rax + r14*8], rbx
	test	bpl, bpl
	lea	rdi, [rdi]
	jne	.label_2754
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_2754:
	test	rbx, rbx
	je	.label_2762
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_2755
	lea	r12, [rbx + 8]
	mov	rsp, rsp
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rdx, r14
	lea	rsi, [rsi]
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	lea	rsi, [rsi]
	xor	eax, eax
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_2757
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	lea	rdi, [rdi]
	je	.label_2757
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, r12
	call	transit_state_bkref
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	nop	
	xor	eax, eax
	test	ecx, ecx
	jne	.label_2757
	nop	
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + r14*8]
	mov	rsp, rsp
	jmp	.label_2757
.label_2762:
	mov	rsp, rsp
	mov	rax, rbx
	nop	
	jmp	.label_2757
.label_2755:
	mov	rax, rbx
.label_2757:
	nop	
	add	rsp, 0x18
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_2760:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_2757
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x425b30

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	r15, rdx
	mov	rbp, rbp
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	rbp, rdi
	lea	rdi, [rdi]
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_2769
	lea	rsi, [rsi]
	mov	r13, qword ptr [r12 + 8]
	mov	rsp, rsp
	test	r15, r15
	je	.label_2772
	lea	rsi, [rsi]
	test	r13, r13
	lea	rsi, [rsi]
	jle	.label_2772
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_2772
	lea	rsi, [rsi]
	add	rdi, r13
	mov	rsp, rsp
	mov	qword ptr [rbp], rdi
	mov	rsp, rsp
	shl	rdi, 3
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, 0xc
	nop	
	je	.label_2770
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rbp
	lea	rsi, [rsi]
	xor	r14d, r14d
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rcx, rbx
	jmp	.label_2774
.label_2772:
	test	r13, r13
	jle	.label_2769
	mov	qword ptr [rbp + 8], r13
	lea	rdi, [rdi]
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_2766
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2764
	mov	rsp, rsp
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, r15
	call	memcpy
	mov	rsp, rsp
	jmp	.label_2771
.label_2769:
	test	r15, r15
	je	.label_2766
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_2766
	mov	qword ptr [rbp + 8], rdi
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	lea	rdi, [rdi]
	jle	.label_2766
	lea	rdi, [rdi]
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_2764
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	shl	rbx, 3
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	jmp	.label_2771
.label_2766:
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_2771
.label_2767:
	mov	rcx, rbx
	nop	dword ptr [rax]
.label_2774:
	mov	rbp, rbp
	cmp	rcx, qword ptr [r15 + 8]
	mov	rsp, rsp
	jge	.label_2763
	mov	rdx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rdx + rbp*8]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rsi + rcx*8]
	lea	rdi, [rdi]
	cmp	rdx, rsi
	nop	
	jle	.label_2768
	mov	rbp, rbp
	inc	rcx
	mov	qword ptr [rax + r14*8], rsi
	inc	r14
	mov	rsp, rsp
	mov	r13, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	cmp	rbp, r13
	nop	
	jl	.label_2774
	jmp	.label_2763
.label_2768:
	nop	
	sete	bl
	mov	rbp, rbp
	movzx	ebx, bl
	add	rbx, rcx
	inc	rbp
	mov	qword ptr [rax + r14*8], rdx
	inc	r14
	mov	rsp, rsp
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	nop	
	jl	.label_2767
	jmp	.label_2765
.label_2763:
	mov	rsp, rsp
	mov	rbx, rcx
.label_2765:
	nop	
	sub	r13, rbp
	jle	.label_2775
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	nop	
	mov	rdx, r13
	call	memcpy
	lea	rsi, [rsi]
	sub	r14, rbp
	add	r14, qword ptr [r12 + 8]
	jmp	.label_2773
.label_2775:
	mov	rdx, qword ptr [r15 + 8]
	nop	
	sub	rdx, rbx
	jle	.label_2773
	mov	rsp, rsp
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rax + rbx*8]
	mov	rsp, rsp
	shl	rdx, 3
	lea	rdi, [rdi]
	call	memcpy
	nop	
	sub	r14, rbx
	add	r14, qword ptr [r15 + 8]
.label_2773:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	nop	
	mov	qword ptr [rax + 8], r14
.label_2771:
	xor	ecx, ecx
.label_2770:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_2764:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	lea	rdi, [rdi]
	jmp	.label_2770
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x425dd0

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	r14, r8
	lea	rdi, [rdi]
	mov	rbx, rcx
	mov	rbp, rbp
	mov	r12, rdx
	mov	r15, rsi
	mov	r13, rdi
	lea	rsi, [r12 + 0x10]
	mov	rdx, qword ptr [r12]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 8]
	mov	dword ptr [rsp], 8
	mov	rsp, rsp
	mov	r8, rbx
	mov	r9, r14
	call	check_arrival
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2779
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r15
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_2784
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [r13 + 0xd8]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	mov	rbp, rbp
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_2776
	mov	qword ptr [r13 + 0xd8], rax
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rsp, rsp
	mov	rbp, qword ptr [r13 + 0xd0]
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	mov	rbp, rbp
	add	rbp, rbp
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0xd0], rbp
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x10]
.label_2784:
	nop	
	test	r15, r15
	nop	
	jle	.label_2782
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rsi, [rsi]
	lea	rcx, [rcx + rcx*4]
	nop	
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_2781
	nop	
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_2781
.label_2782:
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0xd8]
.label_2781:
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rbx
	mov	rbp, rbp
	mov	qword ptr [rax + rcx*8 + 8], r14
	nop	
	mov	qword ptr [rax + rcx*8 + 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rax + rcx*8 + 0x18], rdi
	mov	rbp, rbp
	xor	edx, edx
	sub	rdi, rsi
	mov	si, 0xffff
	mov	rbp, rbp
	cmovne	si, dx
	mov	rbp, rbp
	mov	word ptr [rax + rcx*8 + 0x22], si
	nop	
	inc	r15
	mov	qword ptr [r13 + 0xc8], r15
	nop	
	mov	byte ptr [rax + rcx*8 + 0x20], 0
	movsxd	rax, dword ptr [r13 + 0xe0]
	cmp	rax, rdi
	jge	.label_2777
	mov	dword ptr [r13 + 0xe0], edi
.label_2777:
	lea	rdi, [rdi]
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x18]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	lea	rsi, [rsi]
	mov	r15, qword ptr [r13 + 0xc0]
	nop	
	cmp	rax, r14
	jg	.label_2783
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_2778
.label_2783:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	mov	rbp, rbp
	jg	.label_2780
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_2780
.label_2778:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	mov	rsp, rsp
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	mov	rbp, rbp
	jne	.label_2779
.label_2780:
	xor	ebp, ebp
	mov	rdx, r14
	nop	
	sub	rdx, r15
	jle	.label_2779
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0xc0], r14
.label_2779:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	nop	
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_2776:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	lea	rdi, [rdi]
	mov	ebp, 0xc
	jmp	.label_2779
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x426030

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	nop	
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0xc8
	mov	qword ptr [rsp + 0x98], r9
	mov	rbp, rcx
	mov	r15, rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0xb0], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, rdx
	lea	rdi, [rdi]
	shl	rcx, 4
	mov	rsp, rsp
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rbx, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rdi + 0xe0]
	mov	rsp, rsp
	lea	rcx, [rax + r9]
	cmp	rbx, rcx
	mov	rbp, rbp
	jle	.label_2796
	nop	
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x60], r8
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [r15 + 0x10]
.label_2813:
	mov	qword ptr [rsp + 0x28], r12
	nop	
	mov	r14, qword ptr [r15]
	test	r14, r14
	cmove	r14, rbp
	mov	rdi, r12
	mov	r12, qword ptr [rdi + 0x48]
	mov	rsp, rsp
	mov	rbx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rdi + 0xb8], r13
	mov	qword ptr [rdi + 0x48], r14
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	call	re_string_context_at
	cmp	r14, rbp
	lea	rsi, [rsi]
	jne	.label_2787
	mov	dword ptr [rsp + 0x18], eax
	mov	rbp, rbp
	mov	rbp, r14
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_617]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	lea	rsi, [rsi]
	call	malloc
	nop	
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_2790
	mov	qword ptr [rsp + 8], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], r15
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], rcx
	mov	dword ptr [rsp + 0x14], 0
	nop	
	lea	rsi, [rsp + 0x40]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rsp + 0x100]
	mov	rbp, rbp
	call	check_arrival_expand_ecl
	lea	rsi, [rsi]
	mov	r14d, eax
	mov	dword ptr [rsp + 0x14], r14d
	nop	
	test	r14d, r14d
	nop	
	jne	.label_2800
	mov	qword ptr [rsp + 0xb8], r12
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x28]
	mov	r8, rbp
	jmp	.label_2810
.label_2787:
	mov	rbp, qword ptr [r13 + r14*8]
	lea	rsi, [rsi]
	mov	rcx, r14
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_2814
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rbx
	nop	
	mov	qword ptr [rsp + 0xb8], r12
	mov	qword ptr [rsp + 0x30], r15
	test	byte ptr [rbp + 0x68], 0x40
	jne	.label_2816
	mov	dword ptr [rsp + 0x18], eax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], 0
	xor	ebx, ebx
	nop	
	mov	r13, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	r8, rcx
	jmp	.label_2818
.label_2814:
	mov	qword ptr [rsp + 8], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xb8], r12
	mov	qword ptr [rsp + 0x30], r15
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], 0
	lea	rdi, [rdi]
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x28]
	mov	r8, rcx
	nop	
	jmp	.label_2785
.label_2816:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rbx
	mov	r14, qword ptr [rbp + 0x10]
	test	r14, r14
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	r8, rcx
	nop	
	jle	.label_2804
	mov	r12, r8
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x18], eax
	mov	qword ptr [rsp + 0x40], rbx
	lea	rdi, [rdi]
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	nop	
	test	rax, rax
	nop	
	je	.label_2790
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x18]
	lea	rsi, [rsi]
	shl	r14, 3
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memcpy
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], 0
	nop	
	mov	r13, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	r8, r12
	jmp	.label_2818
.label_2796:
	mov	rsp, rsp
	movabs	rsi, 0x7fffffffffffffff
	sub	rsi, rbx
	mov	rbp, rbp
	mov	r14d, 0xc
	lea	rsi, [rsi]
	cmp	rsi, rcx
	jle	.label_2788
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], r8
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rcx, [rax + rcx + 1]
	lea	rsi, [rcx + rbx]
	mov	rsp, rsp
	mov	rax, rsi
	lea	rsi, [rsi]
	shr	rax, 0x3d
	mov	rbp, rbp
	jne	.label_2788
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	rbp, rbp
	mov	r12, rdi
	mov	rdi, qword ptr [r15 + 0x10]
	mov	qword ptr [rsp + 0x68], rsi
	lea	rdi, [rdi]
	lea	rsi, [rsi*8]
	lea	rdi, [rdi]
	call	realloc
	mov	r13, rax
	test	r13, r13
	mov	rbp, rbp
	je	.label_2788
	mov	qword ptr [r15 + 0x10], r13
	mov	rax, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 8], rax
	mov	rbp, rbp
	lea	rdi, [r13 + rbx*8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x18]
	nop	
	shl	rdx, 3
	mov	rsp, rsp
	xor	esi, esi
	call	memset
	nop	
	jmp	.label_2813
.label_2804:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x18], eax
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], 0
	xor	ebx, ebx
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], 0
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x28]
.label_2818:
	test	byte ptr [rbp + 0x68], 0x40
	mov	rsp, rsp
	je	.label_2785
.label_2810:
	test	rbx, rbx
	nop	
	mov	rcx, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	je	.label_2791
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x40]
	mov	rbp, rbp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rdx, r8
	mov	rbx, r8
	mov	r8d, dword ptr [rsp + 0x100]
	mov	rbp, rbp
	call	expand_bkref_cache
	lea	rdi, [rdi]
	mov	r8, rbx
	mov	r14d, eax
	mov	dword ptr [rsp + 0x14], r14d
	nop	
	test	r14d, r14d
	jne	.label_2800
.label_2791:
	mov	rbx, r8
	lea	rdi, [rsp + 0x14]
	mov	rbp, rbp
	lea	rdx, [rsp + 0x40]
	mov	rsi, r15
	nop	
	mov	ecx, dword ptr [rsp + 0x18]
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_2806
	mov	eax, dword ptr [rsp + 0x14]
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_2794
.label_2806:
	mov	rax, qword ptr [r13 + 0xb8]
	mov	r8, rbx
	lea	rdi, [rdi]
	mov	qword ptr [rax + r8*8], rbp
.label_2785:
	mov	r15, qword ptr [rsp + 0x98]
	cmp	r8, r15
	jge	.label_2809
	nop	
	lea	rbx, [rsp + 0x40]
	xor	ecx, ecx
.label_2820:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], r8
	nop	
	mov	qword ptr [rsp + 0x18], rbp
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [r13 + 0xe0]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jg	.label_2811
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], 0
	nop	
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsi, qword ptr [rax + r8*8 + 8]
	test	rsi, rsi
	mov	r15, rbx
	je	.label_2786
	add	rsi, 8
	mov	rdi, r15
	mov	rsp, rsp
	mov	rbx, r8
	mov	rsp, rsp
	call	re_node_set_merge
	lea	rsi, [rsi]
	mov	r8, rbx
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_2794
.label_2786:
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_2798
	mov	rbx, qword ptr [r13 + 0x98]
	mov	dword ptr [rsp + 0x94], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	cmp	qword ptr [rbp + 0x28], 0
	mov	edi, 0
	jle	.label_2799
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_2789:
	mov	rax, qword ptr [rbp + 0x30]
	mov	rbp, rbp
	mov	r15, qword ptr [rax + r12*8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx]
	mov	rbp, r15
	shl	rbp, 4
	test	byte ptr [rsi + rbp + 0xa], 0x10
	mov	rsp, rsp
	je	.label_2807
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, r13
	mov	rsp, rsp
	mov	rcx, r8
	mov	rbp, rbp
	mov	r14, r8
	lea	rsi, [rsi]
	call	check_node_accept_bytes
	cmp	eax, 2
	mov	rbp, rbp
	jl	.label_2812
	mov	rcx, qword ptr [rbx + 0x18]
	nop	
	mov	rdx, r14
	mov	r14, rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + r15*8]
	lea	rdi, [rdi]
	movsxd	rbp, eax
	add	rbp, rdx
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	qword ptr [rsp + 0x78], 0
	test	rsi, rsi
	lea	r13, [rsp + 0x70]
	nop	
	je	.label_2815
	add	rsi, 8
	mov	rdi, r13
	mov	rsp, rsp
	mov	rbx, rcx
	mov	rbp, rbp
	call	re_node_set_merge
	mov	rsp, rsp
	mov	rcx, rbx
	mov	ebx, eax
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x94], ebx
	test	ebx, ebx
	lea	rdi, [rdi]
	jne	.label_2795
.label_2815:
	mov	rdi, r13
	mov	rsi, rcx
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	je	.label_2801
	lea	rdi, [rsp + 0x94]
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, r13
	call	re_acquire_state
	mov	r13, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rcx + rbp*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	qword ptr [rax + rbp*8], 0
	mov	rbp, rbp
	jne	.label_2805
	mov	ebx, dword ptr [rsp + 0x94]
	test	ebx, ebx
	je	.label_2805
	jmp	.label_2795
	nop	word ptr cs:[rax + rax]
.label_2812:
	mov	r14, rbx
	test	eax, eax
	jne	.label_2805
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r14]
	mov	r8, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_2807:
	mov	r14, rbx
	add	rsi, rbp
	mov	rdi, r13
	mov	rdx, r8
	call	check_node_accept
	test	al, al
	lea	rsi, [rsi]
	je	.label_2817
.label_2805:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	lea	rdi, [rsp + 0x40]
	call	re_node_set_insert
	mov	rbp, rbp
	test	al, al
	mov	rbp, rbp
	je	.label_2801
.label_2817:
	inc	r12
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	cmp	r12, qword ptr [rbp + 0x28]
	mov	r8, qword ptr [rsp + 0x20]
	mov	rbx, r14
	jl	.label_2789
	mov	rdi, qword ptr [rsp + 0x80]
	lea	r15, [rsp + 0x40]
.label_2799:
	nop	
	mov	rbx, r8
	mov	rsp, rsp
	call	free
	nop	
	mov	r8, rbx
	mov	dword ptr [rsp + 0x14], 0
.label_2798:
	lea	r14, [r8 + 1]
	cmp	qword ptr [rsp + 0x48], 0
	lea	rsi, [rsi]
	je	.label_2802
	lea	rsi, [rsi]
	mov	r12, r8
	mov	rdi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rsp + 0x100]
	nop	
	mov	ecx, ebp
	mov	rbp, rbp
	call	check_arrival_expand_ecl
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_2794
	nop	
	mov	rdi, r13
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, r14
	mov	rcx, rbx
	mov	rbp, rbp
	mov	r8d, ebp
	call	expand_bkref_cache
	mov	dword ptr [rsp + 0x14], eax
	lea	rdi, [rdi]
	test	eax, eax
	mov	r8, r12
	nop	
	jne	.label_2794
.label_2802:
	mov	rbp, rbp
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	mov	rsi, r8
	mov	r12, r8
	call	re_string_context_at
	mov	rsp, rsp
	lea	rdi, [rsp + 0x14]
	nop	
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rdx, r15
	mov	rbx, r15
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_2793
	nop	
	mov	eax, dword ptr [rsp + 0x14]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_2794
.label_2793:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x68]
	nop	
	inc	rcx
	test	rbp, rbp
	mov	rax, qword ptr [r13 + 0xb8]
	nop	
	mov	qword ptr [rax + r12*8 + 8], rbp
	mov	rsp, rsp
	mov	eax, 0
	lea	rsi, [rsi]
	cmovne	rcx, rax
	mov	r15, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	cmp	r14, r15
	mov	r8, r14
	jl	.label_2820
	lea	rdi, [rdi]
	jmp	.label_2803
.label_2809:
	mov	rsp, rsp
	mov	r14, r8
.label_2803:
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + r15*8]
	lea	rax, [rcx + 8]
	test	rcx, rcx
	nop	
	cmove	rax, rcx
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], r14
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r13 + 0xb8], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0x48], rcx
	nop	
	je	.label_2808
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rbp, rbp
	test	rcx, rcx
	lea	rsi, [rsi]
	jle	.label_2808
	xor	r14d, r14d
	mov	rbp, rbp
	dec	rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	je	.label_2819
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x60]
	nop	word ptr cs:[rax + rax]
.label_2792:
	lea	rsi, [rsi]
	lea	rsi, [rdx + rcx]
	mov	rbp, rbp
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	nop	
	cmp	rdx, rcx
	jb	.label_2792
	lea	rsi, [rsi]
	jmp	.label_2797
.label_2801:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	call	free
	mov	ebx, 0xc
	mov	dword ptr [rsp + 0x14], ebx
	mov	rbp, rbp
	jmp	.label_2794
.label_2795:
	mov	rdi, qword ptr [rsp + 0x80]
	nop	
	call	free
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], ebx
.label_2794:
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	call	free
	mov	r14d, dword ptr [rsp + 0x14]
	nop	
	jmp	.label_2788
.label_2819:
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x60]
.label_2797:
	cmp	rdx, -1
	nop	
	je	.label_2808
	cmp	qword ptr [rax + rdx*8], rbp
	nop	
	je	.label_2788
.label_2808:
	lea	rsi, [rsi]
	mov	r14d, 1
.label_2788:
	mov	rbp, rbp
	mov	eax, r14d
	lea	rdi, [rdi]
	add	rsp, 0xc8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_2800:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	nop	
	jmp	.label_2788
.label_2790:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x14], 0xc
	lea	rdi, [rdi]
	mov	r14d, 0xc
	nop	
	jmp	.label_2788
.label_2811:
	mov	r14, r8
	jmp	.label_2803
	nop	
	.section	.text
	.align	32
	#Procedure 0x426a00

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	r15d, ecx
	mov	r13, rdx
	mov	rbp, rbp
	mov	r14, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	r12, qword ptr [r14 + 8]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], 0
	lea	rsi, [rsi]
	lea	rdi, [r12*8]
	call	malloc
	nop	
	mov	qword ptr [rsp + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_2826
	test	r12, r12
	mov	rbp, rbp
	jle	.label_2822
	mov	rbp, rbp
	xor	r12d, r12d
	jmp	.label_2823
	nop	dword ptr [rax]
.label_2828:
	lea	rdi, [rdi]
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	nop	
	jl	.label_2823
	lea	rsi, [rsi]
	jmp	.label_2822
	nop	word ptr cs:[rax + rax]
.label_2825:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_2827
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	nop	
	jmp	.label_2824
	nop	
.label_2823:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	r8, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	lea	r9, [rdx + rdx*2]
	lea	rsi, [rsi]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_2827
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	dword ptr [rax]
.label_2829:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	lea	rdi, [rdi]
	shl	rcx, 4
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rbx + rcx + 8]
	lea	rdi, [rdi]
	cmp	esi, r15d
	mov	rsp, rsp
	jne	.label_2821
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + rcx], r13
	je	.label_2825
.label_2821:
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jl	.label_2829
.label_2827:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_2824:
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	je	.label_2828
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	lea	rsi, [rsi]
	jmp	.label_2826
.label_2822:
	nop	
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0x10], rax
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	mov	rsp, rsp
	xor	ebx, ebx
.label_2826:
	mov	eax, ebx
	nop	
	add	rsp, 0x28
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x426bc0

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x68
	mov	r15, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x20], r14
	nop	
	mov	r10, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r10
	mov	rax, qword ptr [r10 + 0x98]
	nop	
	mov	qword ptr [rsp + 0x60], rax
	mov	r9, qword ptr [r10 + 0xc8]
	xor	eax, eax
	test	r9, r9
	lea	rdi, [rdi]
	mov	edx, 0
	lea	rdi, [rdi]
	jle	.label_2844
	nop	
	mov	rsi, qword ptr [r10 + 0xd8]
	nop	
	xor	edx, edx
	mov	rdi, r9
	nop	
.label_2845:
	mov	rbp, rbp
	lea	rbp, [rdi + rdx]
	mov	rbx, rbp
	shr	rbx, 0x3f
	lea	rsi, [rsi]
	add	rbx, rbp
	mov	rsp, rsp
	sar	rbx, 1
	lea	rbp, [rbx + rbx*4]
	cmp	qword ptr [rsi + rbp*8 + 8], r15
	cmovge	rdi, rbx
	lea	rbp, [rbx + 1]
	lea	rsi, [rsi]
	cmovl	rdx, rbp
	mov	rbp, rbp
	cmp	rdx, rdi
	jl	.label_2845
.label_2844:
	mov	rsp, rsp
	cmp	rdx, r9
	mov	rsp, rsp
	jge	.label_2849
	cmp	rdx, -1
	mov	rbp, rbp
	je	.label_2849
	mov	qword ptr [rsp + 0x28], rcx
	mov	dword ptr [rsp + 0x38], r8d
	mov	rbp, rbp
	mov	rcx, qword ptr [r10 + 0xd8]
	lea	rdx, [rdx + rdx*4]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	mov	rsp, rsp
	jne	.label_2849
	mov	dword ptr [rsp + 0x3c], eax
	mov	rbp, rbp
	jmp	.label_2838
.label_2858:
	mov	rcx, qword ptr [r10 + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_2838:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	lea	r13, [rcx + rax*8]
	nop	
.label_2842:
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_2834
	mov	rdx, qword ptr [r13]
	dec	rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, rcx
	mov	esi, 0
	je	.label_2854
	nop	
.label_2830:
	mov	rsp, rsp
	lea	rbp, [rsi + rdi]
	lea	rsi, [rsi]
	shr	rbp, 1
	mov	rsp, rsp
	cmp	qword ptr [rax + rbp*8], rdx
	nop	
	lea	rbx, [rbp + 1]
	lea	rsi, [rsi]
	cmovl	rsi, rbx
	mov	rbp, rbp
	cmovge	rdi, rbp
	cmp	rsi, rdi
	mov	rbp, rbp
	jb	.label_2830
.label_2854:
	mov	rbp, rbp
	cmp	rsi, -1
	je	.label_2834
	cmp	qword ptr [rax + rsi*8], rdx
	mov	rbp, rbp
	jne	.label_2834
	mov	rsp, rsp
	mov	r12, qword ptr [r13 + 0x18]
	lea	rsi, [rsi]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	lea	rdi, [rdi]
	cmp	r12, r15
	lea	rsi, [rsi]
	jne	.label_2848
	lea	rdi, [rdi]
	test	rcx, rcx
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x60]
	nop	
	mov	rsi, qword ptr [rsi + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsi + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	edx, 0
	mov	rbp, rbp
	je	.label_2859
	nop	dword ptr [rax + rax]
.label_2836:
	lea	rsi, [rdx + rcx]
	lea	rdi, [rdi]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbx
	lea	rdi, [rsi + 1]
	mov	rbp, rbp
	cmovl	rdx, rdi
	mov	rsp, rsp
	cmovge	rcx, rsi
	mov	rsp, rsp
	cmp	rdx, rcx
	jb	.label_2836
.label_2859:
	cmp	rdx, -1
	lea	rdi, [rdi]
	je	.label_2847
	lea	rsi, [rsi]
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], rbx
	jne	.label_2847
	mov	rbp, r14
	jmp	.label_2833
.label_2848:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r10 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_2856
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x10]
	test	rdi, rdi
	mov	rbp, rbp
	jle	.label_2835
	lea	rsi, [rsi]
	mov	rcx, rdi
	dec	rcx
	nop	
	mov	rax, qword ptr [rbx + 0x18]
	mov	edx, 0
	mov	rbp, rbp
	je	.label_2840
.label_2860:
	lea	rsi, [rdx + rcx]
	mov	rsp, rsp
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r14
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	lea	rsi, [rsi]
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_2860
.label_2840:
	lea	rdi, [rdi]
	cmp	rdx, -1
	je	.label_2835
	mov	ecx, 4
	mov	rsp, rsp
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_2855
.label_2835:
	nop	
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	test	rbp, rbp
	jle	.label_2861
	mov	qword ptr [rsp + 0x40], rdi
	shl	rdi, 3
	mov	rbp, rbp
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_2852
	mov	rsi, qword ptr [rbx + 0x18]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	nop	
	call	memcpy
	lea	rdi, [rdi]
	jmp	.label_2850
.label_2847:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r10
	lea	rsi, [rsi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_617]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rax
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_2851
	mov	qword ptr [rax], rbx
	mov	rsp, rsp
	xor	eax, eax
.label_2853:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x5c], eax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], eax
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	lea	r12, [rsp + 0x40]
	mov	rsi, r12
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x28]
	mov	ecx, dword ptr [rsp + 0x38]
	call	check_arrival_expand_ecl
	lea	rdi, [rdi]
	mov	ebx, eax
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rbp, r14
	mov	rsi, r12
	call	re_node_set_merge
	mov	r14d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	edx, dword ptr [rsp + 0x5c]
	mov	rsp, rsp
	mov	eax, ebx
	or	eax, edx
	mov	ecx, 2
	mov	rsp, rsp
	or	eax, r14d
	mov	r10, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	jne	.label_2839
.label_2841:
	mov	r14, rbp
	jmp	.label_2833
.label_2856:
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_617]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	nop	
	mov	edi, 8
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_2843
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_2846
.label_2861:
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], 0
.label_2850:
	mov	rsp, rsp
	xor	ebx, ebx
.label_2831:
	mov	dword ptr [rsp + 0xc], ebx
	mov	rsp, rsp
	lea	rdi, [rsp + 0x40]
	nop	
	mov	rsi, r14
	call	re_node_set_insert
	lea	rdi, [rdi]
	test	ebx, ebx
	jne	.label_2832
	xor	al, 1
	mov	rsp, rsp
	jne	.label_2832
.label_2846:
	lea	rdi, [rsp + 0xc]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	lea	rdx, [rsp + 0x40]
	call	re_acquire_state
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	rbp, rbp
	mov	r10, rbx
	mov	rax, qword ptr [r10 + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	nop	
	sete	al
	mov	edx, dword ptr [rsp + 0xc]
	nop	
	test	edx, edx
	lea	rsi, [rsi]
	setne	cl
	mov	rbp, rbp
	and	cl, al
	movzx	ecx, cl
	nop	
	mov	eax, dword ptr [rsp + 0x3c]
	lea	rsi, [rsi]
	cmovne	eax, edx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x3c], eax
.label_2855:
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x20]
.label_2833:
	test	ecx, ecx
	je	.label_2834
	nop	
	cmp	ecx, 4
	nop	
	jne	.label_2857
	nop	dword ptr [rax + rax]
.label_2834:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	rdi, [rdi]
	lea	r13, [r13 + 0x28]
	mov	rbp, rbp
	jne	.label_2842
	nop	
	jmp	.label_2849
.label_2851:
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	lea	rdi, [rdi]
	mov	eax, 0xc
	lea	rsi, [rsi]
	jmp	.label_2853
.label_2839:
	lea	rsi, [rsi]
	test	ebx, ebx
	cmovne	r14d, ebx
	test	edx, edx
	cmovne	r14d, edx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xc], r14d
	mov	rsp, rsp
	mov	ecx, 1
	mov	dword ptr [rsp + 0x3c], r14d
	mov	rbp, rbp
	jmp	.label_2841
.label_2832:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	ebx, ebx
	lea	rdi, [rdi]
	mov	eax, 0xc
	lea	rdi, [rdi]
	cmove	ebx, eax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xc], ebx
	nop	
	mov	ecx, 1
	mov	dword ptr [rsp + 0x3c], ebx
	lea	rsi, [rsi]
	jmp	.label_2837
.label_2843:
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc], 0xc
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x3c], 0xc
	lea	rdi, [rdi]
	mov	ecx, 1
.label_2837:
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_2833
.label_2852:
	mov	rbp, rbp
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	ebx, 0xc
	nop	
	jmp	.label_2831
.label_2857:
	lea	rdi, [rdi]
	cmp	ecx, 2
	lea	rsi, [rsi]
	je	.label_2858
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x3c]
.label_2849:
	add	rsp, 0x68
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4271d0

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r15d, r8d
	lea	rdi, [rdi]
	mov	r14, rcx
	mov	rbp, rbp
	mov	rbp, rdx
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	r12, rdi
	nop	
	jmp	.label_2867
	nop	
.label_2865:
	mov	rsp, rsp
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, rbp
	mov	rbp, qword ptr [rax]
.label_2867:
	nop	
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_2863
	mov	rsp, rsp
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	lea	rdi, [rdi]
	je	.label_2866
	nop	dword ptr [rax]
.label_2870:
	lea	rsi, [rdx + rax]
	mov	rbp, rbp
	shr	rsi, 1
	mov	rsp, rsp
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	mov	rbp, rbp
	cmovl	rdx, rdi
	nop	
	cmovge	rax, rsi
	lea	rdi, [rdi]
	cmp	rdx, rax
	lea	rsi, [rsi]
	jb	.label_2870
.label_2866:
	mov	rsp, rsp
	cmp	rdx, -1
	lea	rsi, [rsi]
	je	.label_2863
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_2868
.label_2863:
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	lea	rdi, [rdi]
	jne	.label_2869
	lea	rdi, [rdi]
	cmp	qword ptr [rax + rcx], r14
	je	.label_2864
.label_2869:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	nop	
	mov	eax, 0xc
	mov	rsp, rsp
	test	cl, cl
	je	.label_2862
	mov	rax, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	lea	rbp, [rbp + rbp*2]
	nop	
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_2871
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_2865
	jmp	.label_2868
	nop	word ptr cs:[rax + rax]
.label_2871:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rsp, rsp
	mov	rcx, r14
	mov	rsp, rsp
	mov	r8d, r15d
	lea	rsi, [rsi]
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	mov	rsp, rsp
	jne	.label_2862
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_2865
.label_2864:
	cmp	r15d, 9
	jne	.label_2868
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, rbp
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	nop	
	je	.label_2862
.label_2868:
	nop	
	xor	eax, eax
.label_2862:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x427370

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	r14, rdi
	nop	
	mov	r8, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	r8, r8
	je	.label_2894
	mov	rsp, rsp
	mov	r15, r8
	jle	.label_2879
	mov	rcx, qword ptr [r12 + 0x10]
	xor	eax, eax
	cmp	r8, 4
	mov	r15, r8
	jb	.label_2883
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	nop	
	mov	r15, r8
	je	.label_2883
	movq	xmm0, r8
	lea	rbx, [r8 - 4]
	mov	rsp, rsp
	mov	eax, ebx
	shr	eax, 2
	lea	rsi, [rsi]
	inc	eax
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	test	al, 3
	nop	
	je	.label_2889
	nop	
	lea	ebp, [r8 - 4]
	nop	
	shr	ebp, 2
	nop	
	inc	ebp
	and	ebp, 3
	neg	rbp
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_2876:
	nop	
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	lea	rdi, [rdi]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	mov	rbp, rbp
	paddq	xmm0, xmm2
	nop	
	paddq	xmm1, xmm3
	add	rdi, 4
	mov	rbp, rbp
	inc	rbp
	lea	rsi, [rsi]
	jne	.label_2876
	jmp	.label_2886
.label_2889:
	pxor	xmm1, xmm1
.label_2886:
	mov	rbp, rbp
	cmp	rbx, 0xc
	mov	rsp, rsp
	jb	.label_2887
	nop	
	mov	rax, r8
	and	rax, 0xfffffffffffffffc
	lea	rdi, [rdi]
	sub	rax, rdi
	mov	rbp, rbp
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	word ptr cs:[rax + rax]
.label_2895:
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	lea	rsi, [rsi]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	lea	rdi, [rdi]
	paddq	xmm3, xmm1
	nop	
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	lea	rsi, [rsi]
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	mov	rbp, rbp
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	nop	
	paddq	xmm4, xmm2
	mov	rbp, rbp
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [rdi]
	mov	rsp, rsp
	paddq	xmm0, xmm4
	mov	rsp, rsp
	paddq	xmm1, xmm5
	add	rdi, 0x80
	lea	rsi, [rsi]
	add	rax, -0x10
	mov	rsp, rsp
	jne	.label_2895
.label_2887:
	lea	rsi, [rsi]
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	mov	rbp, rbp
	paddq	xmm0, xmm1
	movq	r15, xmm0
	cmp	r8, rdx
	mov	rax, rdx
	je	.label_2879
.label_2883:
	mov	rdx, r8
	lea	rdi, [rdi]
	sub	rdx, rax
	nop	
	lea	rcx, [rcx + rax*8]
	nop	word ptr cs:[rax + rax]
.label_2881:
	add	r15, qword ptr [rcx]
	lea	rsi, [rsi]
	add	rcx, 8
	dec	rdx
	jne	.label_2881
.label_2879:
	mov	rdx, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	mov	rsp, rsp
	and	rcx, r15
	nop	
	lea	rax, [rcx + rcx*2]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx + rax*8]
	mov	rsp, rsp
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_2885
	nop	
	mov	rdx, qword ptr [rdx + rax*8 + 0x10]
	xor	ebx, ebx
	nop	
.label_2882:
	lea	rsi, [rsi]
	test	r12, r12
	nop	
	je	.label_2892
	mov	r13, qword ptr [rdx + rbx*8]
	lea	rsi, [rsi]
	cmp	r15, qword ptr [r13]
	jne	.label_2892
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_2892
	nop	
	mov	rdi, r8
.label_2874:
	test	rdi, rdi
	nop	
	jle	.label_2872
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rax + rdi*8 - 8]
	lea	rsi, [rsi]
	lea	rdi, [rdi - 1]
	mov	rbp, rbp
	je	.label_2874
	nop	dword ptr [rax]
.label_2892:
	mov	rsp, rsp
	inc	rbx
	cmp	rbx, rcx
	lea	rsi, [rsi]
	jl	.label_2882
.label_2885:
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rsi
	mov	edi, 0x70
	mov	esi, 1
	mov	rsp, rsp
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_2890
	mov	rbp, rbp
	mov	rbp, r13
	add	rbp, 8
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12 + 8]
	nop	
	test	rbx, rbx
	jle	.label_2891
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x18], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2877
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r14
	lea	r14, [r12 + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [r12 + 0x10]
	mov	rbp, rbp
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	nop	
	call	memcpy
	mov	rsp, rsp
	mov	qword ptr [r13 + 0x50], rbp
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jmp	.label_2896
.label_2891:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r14
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	mov	rsp, rsp
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rbp
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	jle	.label_2893
	mov	rbp, rbp
	lea	r14, [r12 + 0x10]
.label_2896:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2888:
	mov	r8, qword ptr [rdi]
	mov	rcx, qword ptr [r14]
	mov	rdx, qword ptr [rcx + rax*8]
	nop	
	shl	rdx, 4
	mov	ebp, dword ptr [r8 + rdx + 8]
	lea	rsi, [rsi]
	mov	ecx, ebp
	nop	
	and	ecx, 0x3ffff
	cmp	ecx, 1
	je	.label_2884
	movzx	esi, bpl
	mov	rsp, rsp
	shr	ebp, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	cl, bl
	mov	rbp, rbp
	shr	cl, 5
	movzx	ecx, cl
	or	ecx, ebp
	shl	cl, 5
	and	cl, 0x20
	mov	rsp, rsp
	and	bl, 0xdf
	mov	rsp, rsp
	or	bl, cl
	mov	byte ptr [r13 + 0x68], bl
	lea	rsi, [rsi]
	cmp	esi, 0xc
	je	.label_2897
	mov	rbp, rbp
	cmp	esi, 4
	je	.label_2875
	cmp	esi, 2
	lea	rsi, [rsi]
	jne	.label_2878
	or	bl, 0x10
	jmp	.label_2880
.label_2875:
	or	bl, 0x40
	jmp	.label_2880
.label_2878:
	lea	rdi, [rdi]
	lea	rcx, [r8 + rdx + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_2884
.label_2897:
	mov	rbp, rbp
	or	bl, 0x80
.label_2880:
	mov	rsp, rsp
	mov	byte ptr [r13 + 0x68], bl
.label_2884:
	mov	rbp, rbp
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_2888
.label_2893:
	mov	rsi, r13
	lea	rsi, [rsi]
	mov	rdx, r15
	lea	rdi, [rdi]
	call	register_state
	test	eax, eax
	mov	rbp, rbp
	je	.label_2872
	mov	rbp, rbp
	mov	rdi, r13
	call	free_state
	mov	r14, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	jmp	.label_2890
.label_2894:
	lea	rsi, [rsi]
	mov	dword ptr [r14], 0
	jmp	.label_2873
.label_2877:
	mov	rdi, r13
	call	free
.label_2890:
	mov	rbp, rbp
	mov	dword ptr [r14], 0xc
.label_2873:
	lea	rsi, [rsi]
	xor	r13d, r13d
.label_2872:
	mov	rbp, rbp
	mov	rax, r13
	nop	
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4277c0

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	mov	r9, qword ptr [rdi]
	nop	
	shl	rsi, 4
	movzx	r10d, byte ptr [r9 + rsi + 8]
	lea	rdi, [rdi]
	cmp	r10d, 7
	je	.label_2913
	mov	rsp, rsp
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	lea	rsi, [rsi]
	cmp	r8d, 1
	lea	rdi, [rdi]
	je	.label_2902
	lea	rax, [rcx + 1]
	nop	
	mov	r11, qword ptr [rdx + 0x30]
	mov	rsp, rsp
	cmp	rax, r11
	lea	rsi, [rsi]
	jge	.label_2902
	lea	rax, [rcx*4]
	mov	rbp, rbp
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_2911:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_2902
	mov	rbp, rbp
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	lea	rdi, [rdi]
	jl	.label_2911
.label_2902:
	cmp	r10d, 5
	jne	.label_2917
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_2901
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_2920
	mov	rsp, rsp
	mov	rsi, qword ptr [rdx + 8]
	movzx	esi, byte ptr [rsi + rcx]
	nop	
	cmp	esi, 0xa
	nop	
	je	.label_2901
.label_2920:
	test	al, al
	js	.label_2924
	mov	r14d, ebx
	jmp	.label_2901
.label_2917:
	mov	rsp, rsp
	cmp	ebx, 1
	setg	al
	mov	rbp, rbp
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_2901
	lea	rsi, [rsi]
	test	al, al
	lea	rdi, [rdi]
	je	.label_2901
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	nop	
	test	rsi, rsi
	lea	rdi, [rdi]
	jne	.label_2915
	cmp	qword ptr [r15 + 0x48], 0
	mov	rbp, rbp
	jne	.label_2915
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2919
.label_2915:
	cmp	r8d, 1
	jne	.label_2922
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	jmp	.label_2919
.label_2922:
	nop	
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_2919:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_2923
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	dword ptr [rax]
.label_2906:
	nop	
	cmp	r12d, dword ptr [rcx + rdx*4]
	nop	
	je	.label_2904
	inc	rdx
	cmp	rdx, rax
	mov	rbp, rbp
	jl	.label_2906
.label_2923:
	cmp	qword ptr [r15 + 0x48], 0
	nop	
	jle	.label_2909
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_2914:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rdi]
	mov	edi, r12d
	call	iswctype
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_2904
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_2914
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x40]
.label_2909:
	nop	
	xor	ecx, ecx
	test	rsi, rsi
	lea	rdi, [rdi]
	jle	.label_2908
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2910:
	cmp	dword ptr [rax + rdx*4], r12d
	lea	rdi, [rdi]
	jg	.label_2918
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	cmp	r12d, dword ptr [rcx + rdx*4]
	nop	
	jle	.label_2905
.label_2918:
	lea	rdi, [rdi]
	inc	rdx
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_2910
	jmp	.label_2908
.label_2904:
	lea	rsi, [rsi]
	mov	ecx, ebx
.label_2908:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_2907
	mov	r14d, ecx
	jmp	.label_2901
.label_2907:
	test	ecx, ecx
	mov	rbp, rbp
	jg	.label_2901
	test	ebx, ebx
	mov	r14d, 1
	mov	rsp, rsp
	cmovg	r14d, ebx
	jmp	.label_2901
.label_2924:
	mov	rbp, rbp
	mov	rax, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	byte ptr [rax + rcx], 0
	je	.label_2901
	mov	rbp, rbp
	mov	r14d, ebx
	nop	
	jmp	.label_2901
.label_2913:
	mov	rax, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	xor	r14d, r14d
	cmp	esi, 0xc2
	jae	.label_2900
.label_2901:
	mov	rbp, rbp
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
.label_2905:
	nop	
	mov	ecx, ebx
	jmp	.label_2908
.label_2900:
	nop	
	lea	rdi, [rcx + 2]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rdi, rdx
	jg	.label_2901
	mov	bl, byte ptr [rcx + rax + 1]
	lea	rsi, [rsi]
	movzx	edi, sil
	mov	rsp, rsp
	cmp	edi, 0xdf
	mov	rsp, rsp
	ja	.label_2916
	lea	rsi, [rsi]
	movzx	eax, bl
	lea	rdi, [rdi]
	cmp	eax, 0xc0
	sbb	eax, eax
	mov	rbp, rbp
	and	eax, 2
	xor	r14d, r14d
	test	bl, bl
	cmovs	r14d, eax
	jmp	.label_2901
.label_2916:
	cmp	edi, 0xef
	nop	
	ja	.label_2898
	mov	esi, 3
	lea	rdi, [rdi]
	cmp	edi, 0xe0
	jne	.label_2899
	lea	rsi, [rsi]
	movzx	edi, bl
	cmp	edi, 0xa0
	mov	rsp, rsp
	jb	.label_2901
	jmp	.label_2899
.label_2898:
	cmp	edi, 0xf7
	nop	
	ja	.label_2912
	mov	esi, 4
	cmp	edi, 0xf0
	jne	.label_2899
	mov	rsp, rsp
	movzx	edi, bl
	mov	rsp, rsp
	cmp	edi, 0x90
	lea	rdi, [rdi]
	jb	.label_2901
	jmp	.label_2899
.label_2912:
	mov	rsp, rsp
	cmp	edi, 0xfb
	ja	.label_2921
	nop	
	mov	esi, 5
	lea	rsi, [rsi]
	cmp	edi, 0xf8
	jne	.label_2899
	movzx	edi, bl
	cmp	edi, 0x88
	lea	rdi, [rdi]
	jb	.label_2901
	mov	rsp, rsp
	jmp	.label_2899
.label_2921:
	cmp	edi, 0xfd
	ja	.label_2901
	mov	esi, 6
	cmp	edi, 0xfc
	jne	.label_2899
	mov	rbp, rbp
	movzx	edi, bl
	cmp	edi, 0x84
	mov	rbp, rbp
	jb	.label_2901
.label_2899:
	lea	rdi, [rdi]
	mov	edi, esi
	mov	rbp, rbp
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	nop	
	jg	.label_2901
	nop	
	add	rax, rcx
	mov	rbp, rbp
	mov	ecx, 1
.label_2903:
	nop	
	mov	dl, byte ptr [rax + rcx]
	mov	rsp, rsp
	test	dl, dl
	lea	rsi, [rsi]
	jns	.label_2901
	movzx	edx, dl
	cmp	edx, 0xbf
	ja	.label_2901
	mov	rsp, rsp
	inc	rcx
	cmp	rcx, rdi
	mov	rsp, rsp
	jl	.label_2903
	mov	r14d, esi
	jmp	.label_2901
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x427bb0

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	lea	rsi, [rsi]
	push	rbp
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rax, qword ptr [rdi + 8]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax + rdx]
	mov	ebx, dword ptr [rsi + 8]
	mov	rbp, rbp
	movzx	ebp, bl
	mov	rbp, rbp
	xor	eax, eax
	nop	
	dec	ebp
	cmp	ebp, 6
	lea	rsi, [rsi]
	ja	.label_2926
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rbp * 8) + label_2929]]
.label_3509:
	movzx	eax, byte ptr [rsi]
	cmp	eax, ecx
	je	.label_2925
	lea	rsi, [rsi]
	xor	eax, eax
	jmp	.label_2926
.label_3510:
	mov	rsi, qword ptr [rsi]
	nop	
	mov	al, cl
	lea	rdi, [rdi]
	shr	al, 6
	mov	rsp, rsp
	movzx	eax, al
	mov	rax, qword ptr [rsi + rax*8]
	bt	rax, rcx
	mov	rsp, rsp
	jb	.label_2925
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_2926
.label_3512:
	lea	rdi, [rdi]
	test	cl, cl
	js	.label_2931
.label_3511:
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_2933
	movzx	eax, cl
	nop	
	cmp	eax, 0xa
	lea	rsi, [rsi]
	jne	.label_2925
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x98]
	mov	rsp, rsp
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_2925
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_2926
.label_2933:
	mov	rax, qword ptr [rdi + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	lea	rsi, [rsi]
	js	.label_2930
.label_2925:
	mov	ebp, ebx
	mov	rsp, rsp
	shr	ebp, 8
	mov	al, 1
	lea	rsi, [rsi]
	test	bp, 0x3ff
	lea	rsi, [rsi]
	je	.label_2926
	lea	rsi, [rsi]
	mov	eax, dword ptr [rdi + 0xa0]
	mov	rbp, rbp
	mov	rsi, rdx
	mov	edx, eax
	mov	rsp, rsp
	call	re_string_context_at
	nop	
	mov	ecx, eax
	and	ecx, 1
	lea	rsi, [rsi]
	test	bpl, 4
	mov	rsp, rsp
	je	.label_2927
	mov	rsp, rsp
	test	ecx, ecx
	jne	.label_2927
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_2926
.label_2927:
	lea	rdi, [rdi]
	test	bh, 8
	lea	rdi, [rdi]
	je	.label_2928
	nop	
	test	ecx, ecx
	lea	rdi, [rdi]
	je	.label_2928
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_2926
.label_2931:
	xor	eax, eax
	nop	
	jmp	.label_2926
.label_2928:
	test	bh, 0x20
	mov	rsp, rsp
	je	.label_2932
	mov	ecx, eax
	mov	rbp, rbp
	and	ecx, 2
	lea	rdi, [rdi]
	jne	.label_2932
	mov	rbp, rbp
	xor	eax, eax
	jmp	.label_2926
.label_2930:
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_2926
.label_2932:
	lea	rdi, [rdi]
	and	eax, 8
	nop	
	test	bpl, bpl
	mov	rsp, rsp
	setns	cl
	mov	rsp, rsp
	shr	eax, 3
	mov	rbp, rbp
	or	al, cl
.label_2926:
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x427d40

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	lea	rdi, [rdi]
	mov	r13, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], r13
	mov	r12, rdi
	mov	qword ptr [rbp - 0xa8], r12
	mov	edi, 0x3800
	call	malloc
	mov	rsi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe0], rsi
	lea	rsi, [rsi]
	test	rsi, rsi
	je	.label_3012
	lea	rax, [r13 + 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [r13 + 0x58], xmm0
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	nop	
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	lea	rsi, [rsi]
	xor	r14d, r14d
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_2993
	lea	rax, [rsi + 0x1800]
	mov	qword ptr [rbp - 0x30], rax
	xor	ebx, ebx
	mov	rsp, rsp
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_2990:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rbx
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + rbx*8]
	mov	rcx, qword ptr [r12]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rdx
	nop	
	mov	eax, dword ptr [rcx + rax + 8]
	mov	rbp, rbp
	movzx	r10d, al
	cmp	r10d, 1
	mov	rsp, rsp
	jne	.label_3017
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rcx]
	mov	edx, 1
	mov	rbp, rbp
	shl	rdx, cl
	mov	rbp, rbp
	shr	cl, 6
	lea	rdi, [rdi]
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x90], rdx
	jmp	.label_2971
	nop	word ptr cs:[rax + rax]
.label_3017:
	cmp	r10d, 7
	je	.label_2962
	cmp	r10d, 5
	je	.label_2964
	lea	rdi, [rdi]
	cmp	r10d, 3
	nop	
	jne	.label_2935
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rcx]
	movups	xmm0, xmmword ptr [rcx]
	orps	xmm0, xmmword ptr [rbp - 0x90]
	movaps	xmmword ptr [rbp - 0x90], xmm0
	movdqu	xmm0, xmmword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	por	xmm0, xmmword ptr [rbp - 0x80]
	nop	
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	jmp	.label_2971
.label_2962:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], -1
	mov	rbp, rbp
	mov	rcx, qword ptr [r12 + 0xd8]
	mov	rsp, rsp
	mov	rdx, -2
	mov	rsp, rsp
	test	cl, 0x40
	jne	.label_2982
	nop	
	mov	qword ptr [rbp - 0x90], -0x401
	mov	rdx, -0x402
.label_2982:
	nop	
	test	cl, cl
	lea	rsi, [rsi]
	jns	.label_2971
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rdx
	lea	rdi, [rdi]
	jmp	.label_2971
.label_2964:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_3000
	mov	rsp, rsp
	mov	rcx, qword ptr [r12 + 0x78]
	nop	
	movdqu	xmm0, xmmword ptr [rcx]
	nop	
	por	xmm0, xmmword ptr [rbp - 0x90]
	mov	rbp, rbp
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	mov	rbp, rbp
	por	xmm1, xmmword ptr [rbp - 0x80]
	movdqa	xmmword ptr [rbp - 0x80], xmm1
	lea	rsi, [rsi]
	movq	rcx, xmm0
	jmp	.label_3001
.label_3000:
	mov	qword ptr [rbp - 0x78], -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], -1
	mov	qword ptr [rbp - 0x90], -1
	lea	rsi, [rsi]
	mov	rcx, -1
.label_3001:
	mov	rdx, qword ptr [r12 + 0xd8]
	test	dl, 0x40
	mov	rbp, rbp
	jne	.label_3031
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x90], rcx
.label_3031:
	test	dl, dl
	jns	.label_2971
	lea	rdi, [rdi]
	and	rcx, 0xfffffffffffffffe
	mov	qword ptr [rbp - 0x90], rcx
	nop	dword ptr [rax]
.label_2971:
	mov	rsp, rsp
	mov	ecx, eax
	shr	ecx, 8
	mov	edx, ecx
	and	edx, 0x3ff
	mov	rbp, rbp
	je	.label_3011
	lea	rdi, [rdi]
	test	cl, 0x20
	mov	rsp, rsp
	je	.label_3032
	nop	
	mov	rdx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	test	dh, 4
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	mov	rsp, rsp
	je	.label_2935
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], 0x400
.label_3032:
	nop	
	test	cl, cl
	js	.label_2950
	lea	rsi, [rsi]
	test	cl, 4
	je	.label_2953
	mov	rbp, rbp
	mov	edx, eax
	mov	rbp, rbp
	and	edx, 0x4000ff
	cmp	edx, 1
	je	.label_2950
	cmp	dword ptr [r12 + 0xb4], 1
	jle	.label_2961
	mov	rdx, qword ptr [r12 + 0x78]
	mov	rbp, rbp
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	movdqu	xmm1, xmmword ptr [rdx]
	nop	
	pcmpeqd	xmm2, xmm2
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x90]
	movdqa	xmmword ptr [rbp - 0x90], xmm1
	movq	r8, xmm1
	mov	rbp, rbp
	pshufd	xmm0, xmm1, 0x4e
	mov	rsp, rsp
	movq	r9, xmm0
	nop	
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	movdqu	xmm1, xmmword ptr [rdx + 0x10]
	nop	
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	lea	rdi, [rdi]
	pand	xmm1, xmmword ptr [rbp - 0x80]
	mov	rdi, rbx
	movq	rbx, xmm1
	or	rbx, r8
	or	rbx, r9
	movdqa	xmmword ptr [rbp - 0x80], xmm1
	pshufd	xmm0, xmm1, 0x4e
	lea	rdi, [rdi]
	movq	rdx, xmm0
	mov	rsp, rsp
	or	rdx, rbx
	nop	
	mov	rbx, rdi
	mov	rsp, rsp
	jmp	.label_2966
.label_2961:
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	lea	rsi, [rsi]
	pand	xmm0, xmmword ptr [rbp - 0x90]
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	movq	rdx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	r8, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	pand	xmm0, xmmword ptr [rbp - 0x80]
	movq	rdi, xmm0
	mov	rsp, rsp
	or	rdi, rdx
	or	rdi, r8
	nop	
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	lea	rdi, [rdi]
	pshufd	xmm0, xmm0, 0x4e
	movq	rdx, xmm0
	or	rdx, rdi
.label_2966:
	test	rdx, rdx
	je	.label_2935
.label_2953:
	lea	rsi, [rsi]
	test	cl, 8
	mov	rbp, rbp
	je	.label_3011
	mov	rbp, rbp
	cmp	r10d, 1
	setne	cl
	nop	
	test	eax, 0x400000
	lea	rsi, [rsi]
	je	.label_3013
	mov	rbp, rbp
	test	cl, cl
	mov	rbp, rbp
	jne	.label_3013
	nop	word ptr cs:[rax + rax]
.label_2950:
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	mov	rsp, rsp
	jmp	.label_2935
.label_3013:
	nop	
	cmp	dword ptr [r12 + 0xb4], 1
	lea	rdi, [rdi]
	jle	.label_2984
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x78]
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	movdqu	xmm1, xmmword ptr [rax]
	nop	
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x90]
	mov	rbp, rbp
	movdqa	xmmword ptr [rbp - 0x90], xmm1
	lea	rsi, [rsi]
	movq	rcx, xmm1
	lea	rsi, [rsi]
	pshufd	xmm0, xmm1, 0x4e
	mov	rsp, rsp
	movq	rdx, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	mov	rsp, rsp
	movdqu	xmm1, xmmword ptr [rax + 0x10]
	pand	xmm1, xmm0
	nop	
	pandn	xmm1, xmmword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	movq	rdi, xmm1
	or	rdi, rcx
	mov	rsp, rsp
	or	rdi, rdx
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rbp - 0x80], xmm1
	nop	
	pshufd	xmm0, xmm1, 0x4e
	movq	rax, xmm0
	or	rax, rdi
	jmp	.label_2948
.label_2984:
	movdqu	xmm0, xmmword ptr [r12 + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x90]
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	movq	rax, xmm0
	pshufd	xmm0, xmm0, 0x4e
	nop	
	movq	rcx, xmm0
	movdqu	xmm0, xmmword ptr [r12 + 0xc8]
	lea	rsi, [rsi]
	pandn	xmm0, xmmword ptr [rbp - 0x80]
	nop	
	movq	rdx, xmm0
	or	rdx, rax
	mov	rbp, rbp
	or	rdx, rcx
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	mov	rsp, rsp
	pshufd	xmm0, xmm0, 0x4e
	lea	rdi, [rdi]
	movq	rax, xmm0
	mov	rsp, rsp
	or	rax, rdx
.label_2948:
	test	rax, rax
	mov	rbp, rbp
	je	.label_2935
	nop	
.label_3011:
	nop	
	test	r14, r14
	nop	
	jle	.label_2987
	mov	qword ptr [rbp - 0x58], rsi
	mov	r13, qword ptr [rbp - 0x30]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, r10d
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x50], edx
	nop	word ptr cs:[rax + rax]
.label_3030:
	lea	rdi, [rdi]
	cmp	edx, 1
	jne	.label_2996
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	movzx	eax, byte ptr [rax]
	mov	cl, al
	shr	cl, 6
	nop	
	movzx	ecx, cl
	mov	rcx, qword ptr [r13 + rcx*8]
	bt	rcx, rax
	jae	.label_2997
.label_2996:
	nop	
	mov	qword ptr [rbp - 0xb0], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], r14
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	r12, qword ptr [r13]
	mov	r14, qword ptr [r13 + 8]
	lea	rdi, [rdi]
	mov	r9, r12
	mov	rsp, rsp
	and	r9, rax
	mov	r10, r14
	and	r10, rcx
	lea	rsi, [rsi]
	mov	rbx, r10
	mov	rbp, rbp
	or	rbx, r9
	mov	rdi, qword ptr [rbp - 0x80]
	mov	r15, qword ptr [r13 + 0x10]
	mov	r11, r15
	and	r11, rdi
	lea	rdi, [rdi]
	or	rbx, r11
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r13 + 0x18]
	mov	r8, rsi
	and	r8, rdx
	or	rbx, r8
	mov	rbp, rbp
	je	.label_3002
	lea	rdi, [rdi]
	mov	rbx, rax
	not	rbx
	and	rbx, r12
	lea	rdi, [rdi]
	not	r12
	lea	rdi, [rdi]
	and	r12, rax
	mov	qword ptr [rbp - 0x68], r12
	mov	qword ptr [rbp - 0x90], r12
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	not	rdx
	nop	
	and	rdx, r14
	lea	rdi, [rdi]
	mov	rax, rdx
	or	rax, rbx
	lea	rdi, [rdi]
	not	r14
	lea	rdi, [rdi]
	and	r14, rcx
	mov	qword ptr [rbp - 0x88], r14
	lea	rdi, [rdi]
	mov	rcx, rdi
	not	rcx
	and	rcx, r15
	or	rax, rcx
	lea	rsi, [rsi]
	not	r15
	and	r15, rdi
	mov	qword ptr [rbp - 0x80], r15
	mov	r12, qword ptr [rbp - 0xb8]
	mov	rdi, r12
	not	rdi
	and	rdi, rsi
	not	rsi
	and	rsi, r12
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rsi
	nop	
	or	rax, rdi
	mov	rbp, rbp
	mov	r12, rsi
	je	.label_2970
	mov	qword ptr [rbp - 0xb8], r12
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rax, rsi
	shl	rax, 5
	mov	rsp, rsp
	mov	r12, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + rax], rbx
	lea	rdi, [rdi]
	mov	qword ptr [r12 + rax + 8], rdx
	mov	rbp, rbp
	mov	qword ptr [r12 + rax + 0x10], rcx
	mov	rsp, rsp
	mov	qword ptr [r12 + rax + 0x18], rdi
	mov	qword ptr [r13], r9
	mov	qword ptr [r13 + 8], r10
	nop	
	mov	qword ptr [r13 + 0x10], r11
	mov	qword ptr [r13 + 0x18], r8
	nop	
	lea	r12, [rsi + rsi*2]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp - 0xe0]
	lea	rcx, [rbx + r12*8]
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rdi, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + r12*8 + 8], rdi
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	jle	.label_2958
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	mov	qword ptr [rcx], rdi
	mov	qword ptr [rbp - 0xc8], rcx
	mov	rbp, rbp
	shl	rdi, 3
	lea	rdi, [rdi]
	call	malloc
	mov	qword ptr [rbx + r12*8 + 0x10], rax
	lea	rsi, [rsi]
	test	rax, rax
	mov	r12, qword ptr [rbp - 0xb8]
	je	.label_2994
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0xc0]
	nop	
	shl	rdx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	call	memcpy
	nop	
	jmp	.label_3026
	nop	word ptr cs:[rax + rax]
.label_3002:
	mov	r14, qword ptr [rbp - 0xa0]
	mov	rbx, qword ptr [rbp - 0xd0]
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	edx, dword ptr [rbp - 0x50]
	jmp	.label_2997
.label_2958:
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
	mov	r12, qword ptr [rbp - 0xb8]
.label_3026:
	mov	rsp, rsp
	inc	qword ptr [rbp - 0xa0]
.label_2970:
	mov	rbx, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + rbx*8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	re_node_set_insert
	lea	rdi, [rdi]
	test	al, al
	je	.label_3022
	mov	rsp, rsp
	or	r14, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	or	r15, r12
	or	r15, r14
	lea	rsi, [rsi]
	mov	r14, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	je	.label_2940
.label_2997:
	mov	rsp, rsp
	inc	rdi
	mov	rsp, rsp
	add	r13, 0x20
	mov	rsp, rsp
	add	qword ptr [rbp - 0x58], 0x18
	nop	
	cmp	rdi, r14
	jl	.label_3030
	nop	
	jmp	.label_2940
.label_2987:
	xor	edi, edi
.label_2940:
	cmp	rdi, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	jne	.label_2935
	lea	rsi, [rsi]
	mov	rax, rdi
	lea	rsi, [rsi]
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x90]
	nop	
	movdqa	xmm1, xmmword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x30]
	movdqu	xmmword ptr [rcx + rax + 0x10], xmm1
	lea	rdi, [rdi]
	movups	xmmword ptr [rcx + rax], xmm0
	mov	rsp, rsp
	mov	r15, rbx
	lea	rsi, [rsi]
	lea	rbx, [rdi + rdi*2]
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsp, rsp
	mov	r14, qword ptr [rax + r15*8]
	mov	rbp, rbp
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_617]]
	movdqu	xmmword ptr [rsi + rbx*8], xmm0
	mov	rbp, rbp
	mov	r12, rdi
	mov	rbp, rbp
	mov	edi, 8
	mov	rsp, rsp
	call	malloc
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	qword ptr [rsi + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_2976
	lea	rdi, [rdi]
	mov	qword ptr [rax], r14
	inc	r12
	nop	
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x80], xmm0
	nop	
	movdqa	xmmword ptr [rbp - 0x90], xmm0
	mov	r14, r12
	mov	rbx, r15
	mov	r12, qword ptr [rbp - 0xa8]
	nop	dword ptr [rax]
.label_2935:
	mov	rbp, rbp
	inc	rbx
	mov	rsp, rsp
	cmp	rbx, qword ptr [r13 + 0x10]
	mov	rsp, rsp
	jl	.label_2990
	lea	rsi, [rsi]
	test	r14, r14
	lea	rsi, [rsi]
	jle	.label_2993
	mov	r15, rsi
	lea	rax, [r14 + 1]
	mov	qword ptr [rbp - 0xf8], rax
	mov	qword ptr [rbp - 0xf0], 0
	mov	rbp, rbp
	lea	rdi, [r14*8 + 8]
	call	malloc
	mov	qword ptr [rbp - 0xe8], rax
	nop	
	xor	ecx, ecx
	test	rax, rax
	lea	rdi, [rdi]
	mov	edx, 0xc
	mov	rsp, rsp
	cmovne	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
	lea	rsi, [rsi]
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r14, rcx
	ja	.label_2968
	mov	rbp, rbp
	test	rax, rax
	je	.label_2968
	nop	
	lea	rax, [r14*8]
	lea	rsi, [rsi]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_3021
	mov	qword ptr [rbp - 0x60], r13
	mov	rsp, rsp
	mov	rax, rsp
	lea	rsi, [rsi]
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	nop	
	mov	dword ptr [rbp - 0xc0], 0
	jmp	.label_3018
.label_2994:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0xc8]
	movdqu	xmmword ptr [rax], xmm0
.label_3022:
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	r12, qword ptr [rbp - 0xa0]
.label_2957:
	mov	r14, -1
	test	r12, r12
	nop	
	jle	.label_2993
	mov	rbx, rsi
	mov	r15, rsi
	add	rbx, 0x10
	nop	word ptr [rax + rax]
.label_2943:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	mov	rsp, rsp
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_2943
	mov	rsi, r15
.label_2993:
	mov	rdi, rsi
	nop	
	call	free
	test	r14, r14
	mov	rsp, rsp
	je	.label_2946
	xor	eax, eax
	nop	
	jmp	.label_2934
.label_2946:
	mov	edi, 8
	lea	rdi, [rdi]
	mov	esi, 0x100
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	test	rax, rax
	setne	al
	mov	rbp, rbp
	jmp	.label_2934
.label_3012:
	xor	eax, eax
	jmp	.label_2934
.label_3021:
	nop	
	call	malloc
	test	rax, rax
	nop	
	je	.label_2968
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], r13
	mov	cl, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc0], ecx
.label_3018:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	lea	rax, [rax + r14*8]
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	lea	rax, [rax + r14*8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], r14
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rsi, [rsi]
	xor	eax, eax
	mov	qword ptr [rbp - 0xb8], rax
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rsp, rsp
	xor	r14d, r14d
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc8], rax
.label_3003:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0xd0], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf0], 0
	nop	
	lea	rcx, [r14 + r14*2]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + rcx*8 + 8]
	mov	qword ptr [rbp - 0xe0], r15
	test	rax, rax
	jle	.label_2991
	mov	rdx, qword ptr [rbp - 0xe0]
	lea	rbx, [rdx + rcx*8 + 8]
	mov	rbp, rbp
	mov	r13, qword ptr [rdx + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_3016:
	nop	
	mov	rcx, qword ptr [r13 + r15*8]
	nop	
	mov	rdx, qword ptr [r12 + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	je	.label_3028
	mov	rax, qword ptr [r12 + 0x30]
	mov	rbp, rbp
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xf8]
	mov	rbp, rbp
	call	re_node_set_merge
	mov	dword ptr [rbp - 0xd4], eax
	mov	rbp, rbp
	test	eax, eax
	jne	.label_2985
	mov	rax, qword ptr [rbx]
.label_3028:
	nop	
	inc	r15
	mov	rsp, rsp
	cmp	r15, rax
	nop	
	jl	.label_3016
.label_2991:
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	lea	rdi, [rbp - 0xd4]
	mov	rbp, rbp
	mov	rsi, r12
	nop	
	lea	rdx, [rbp - 0xf8]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx + r14*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	jne	.label_3025
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xd4]
	nop	
	test	ecx, ecx
	nop	
	jne	.label_2985
.label_3025:
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x68], 0
	js	.label_3029
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + r14*8]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + r14*8], rax
	jmp	.label_2980
.label_3029:
	mov	rbp, rbp
	mov	ecx, 1
	mov	rsp, rsp
	lea	rdi, [rbp - 0xd4]
	mov	rsi, r12
	lea	rdx, [rbp - 0xf8]
	lea	rdi, [rdi]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + r14*8], rax
	test	rax, rax
	jne	.label_2952
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xd4]
	test	ecx, ecx
	nop	
	jne	.label_2985
.label_2952:
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + r14*8], rax
	mov	rsp, rsp
	je	.label_2959
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	cmp	dword ptr [r12 + 0xb4], 1
	mov	rbp, rbp
	jg	.label_2963
	mov	rax, qword ptr [rbp - 0xc8]
.label_2963:
	mov	qword ptr [rbp - 0xc8], rax
.label_2959:
	mov	ecx, 2
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xd4]
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rdx, [rbp - 0xf8]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + r14*8], rax
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	jne	.label_2980
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_2985
.label_2980:
	mov	rbp, rbp
	mov	rax, r14
	shl	rax, 5
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0xb0]
	or	rdx, qword ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rdx
	mov	rsi, qword ptr [rbp - 0x98]
	or	rsi, qword ptr [rcx + rax + 8]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rdx, qword ptr [rbp - 0xd0]
	nop	
	or	rdx, qword ptr [rcx + rax + 0x18]
	inc	r14
	mov	rbp, rbp
	cmp	r14, qword ptr [rbp - 0xa0]
	mov	r15, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	jl	.label_3003
	mov	r15, rsi
	mov	r13, rdx
	mov	rax, qword ptr [rbp - 0xc8]
	and	al, 1
	mov	qword ptr [rbp - 0xc8], rax
	mov	edi, 8
	jne	.label_3006
	lea	rsi, [rsi]
	mov	esi, 0x100
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_2985
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb0]
	test	rcx, rcx
	mov	r14, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	je	.label_3015
	mov	rsp, rsp
	lea	r8, [r14 + 0x1800]
	nop	
	mov	edx, 1
	lea	rsi, [rsi]
	xor	r9d, r9d
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	jmp	.label_2949
.label_2945:
	mov	rsi, rbx
	lea	rbx, [rsi + 1]
	mov	rbp, rbp
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	mov	rbp, rbp
	je	.label_2945
	test	qword ptr [r12 + 0xb8], rdx
	nop	
	je	.label_3033
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	jmp	.label_2936
.label_3033:
	nop	
	mov	rcx, qword ptr [r10 + rsi*8 + 8]
.label_2936:
	lea	rsi, [rsi]
	mov	qword ptr [rax + r9*8], rcx
	lea	rdi, [rdi]
	jmp	.label_2941
.label_2949:
	mov	rbx, -1
	lea	rsi, [rsi]
	test	dil, 1
	mov	rcx, r8
	jne	.label_2945
.label_2941:
	mov	rbp, rbp
	add	rdx, rdx
	shr	rdi, 1
	lea	rsi, [rsi]
	inc	r9
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_2949
.label_3015:
	nop	
	mov	rsi, r15
	mov	rbp, rbp
	test	rsi, rsi
	lea	rdi, [rdi]
	mov	r15, qword ptr [rbp - 0xa0]
	je	.label_2956
	mov	rbp, rbp
	lea	r8, [r14 + 0x1808]
	mov	edx, 1
	mov	r9d, 0x40
	jmp	.label_2965
.label_2983:
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	lea	rdi, [rbx + 1]
	lea	rdi, [rdi]
	test	qword ptr [rcx], rdx
	nop	
	lea	rcx, [rcx + 0x20]
	je	.label_2983
	test	qword ptr [r12 + 0xc0], rdx
	mov	rsp, rsp
	je	.label_2973
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_2975
.label_2973:
	mov	rcx, qword ptr [r10 + rbx*8 + 8]
.label_2975:
	mov	rbp, rbp
	mov	qword ptr [rax + r9*8], rcx
	lea	rdi, [rdi]
	jmp	.label_2979
.label_2965:
	lea	rsi, [rsi]
	mov	rdi, -1
	test	sil, 1
	mov	rcx, r8
	jne	.label_2983
.label_2979:
	lea	rsi, [rsi]
	add	rdx, rdx
	lea	rsi, [rsi]
	shr	rsi, 1
	inc	r9
	nop	
	test	rsi, rsi
	lea	rdi, [rdi]
	jne	.label_2965
.label_2956:
	mov	r9, r10
	mov	r10, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	test	r10, r10
	mov	r11d, dword ptr [rbp - 0xc0]
	je	.label_2989
	nop	
	lea	r8, [r14 + 0x1810]
	mov	rbp, rbp
	mov	edx, 1
	mov	rsp, rsp
	mov	esi, 0x80
	jmp	.label_2995
.label_2981:
	mov	rbx, rdi
	nop	
	lea	rdi, [rbx + 1]
	mov	rbp, rbp
	test	qword ptr [rcx], rdx
	mov	rsp, rsp
	lea	rcx, [rcx + 0x20]
	nop	
	je	.label_2981
	test	qword ptr [r12 + 0xc8], rdx
	je	.label_3004
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	jmp	.label_3019
.label_3004:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + rbx*8 + 8]
.label_3019:
	mov	qword ptr [rax + rsi*8], rcx
	mov	rsp, rsp
	jmp	.label_3007
.label_2995:
	mov	rdi, -1
	test	r10b, 1
	lea	rdi, [rdi]
	mov	rcx, r8
	lea	rdi, [rdi]
	jne	.label_2981
.label_3007:
	add	rdx, rdx
	shr	r10, 1
	lea	rsi, [rsi]
	inc	rsi
	test	r10, r10
	nop	
	jne	.label_2995
.label_2989:
	test	r13, r13
	je	.label_2944
	nop	
	lea	r8, [r14 + 0x1818]
	nop	
	mov	edx, 1
	lea	rsi, [rsi]
	mov	esi, 0xc0
	jmp	.label_2937
.label_3020:
	nop	
	mov	rbx, rdi
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	lea	rdi, [rdi]
	je	.label_3020
	nop	
	test	qword ptr [r12 + 0xd0], rdx
	je	.label_3023
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	mov	rsp, rsp
	jmp	.label_3027
.label_3023:
	mov	rcx, qword ptr [r9 + rbx*8 + 8]
.label_3027:
	mov	rsp, rsp
	mov	qword ptr [rax + rsi*8], rcx
	lea	rsi, [rsi]
	jmp	.label_3010
.label_2937:
	mov	rdi, -1
	lea	rdi, [rdi]
	test	r13b, 1
	nop	
	mov	rcx, r8
	mov	rsp, rsp
	jne	.label_3020
.label_3010:
	add	rdx, rdx
	shr	r13, 1
	mov	rbp, rbp
	inc	rsi
	test	r13, r13
	nop	
	jne	.label_2937
.label_2944:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb0]
	test	ch, 4
	je	.label_2942
	lea	rdi, [rdi]
	lea	rdx, [r14 + 0x1800]
	xor	ecx, ecx
.label_2954:
	mov	rsp, rsp
	test	byte ptr [rdx + 1], 4
	lea	rdi, [rdi]
	jne	.label_3008
	mov	rbp, rbp
	inc	rcx
	add	rdx, 0x20
	cmp	rcx, r15
	jl	.label_2954
	nop	
	jmp	.label_2942
.label_2976:
	mov	rsp, rsp
	lea	rax, [rsi + rbx*8]
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rax], xmm0
	lea	rsi, [rsi]
	jmp	.label_2957
.label_2968:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	jmp	.label_2969
.label_3008:
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	test	dl, dl
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_2942
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x850], rcx
.label_2942:
	test	r11b, r11b
	nop	
	je	.label_2978
	mov	rdi, r9
	lea	rsi, [rsi]
	call	free
.label_2978:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xe8]
	nop	
	call	free
	mov	rbx, r14
	add	rbx, 0x10
.label_2988:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rsp, rsp
	add	rbx, 0x18
	dec	r15
	jne	.label_2988
	lea	rdi, [rdi]
	mov	rdi, r14
	nop	
	call	free
	nop	
	mov	al, 1
	jmp	.label_2934
.label_3006:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rcx + 0x60], rax
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_2985
	mov	rcx, qword ptr [rbp - 0xb0]
	test	rcx, rcx
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp - 0x58]
	je	.label_2999
	mov	rbp, rbp
	lea	r8, [r14 + 0x1800]
	mov	edx, 1
	xor	r9d, r9d
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jmp	.label_2955
.label_2985:
	mov	eax, dword ptr [rbp - 0xc0]
	mov	rsp, rsp
	test	al, al
	mov	rbp, rbp
	je	.label_3009
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
.label_3009:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe8]
	call	free
	mov	r14, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	test	r14, r14
	mov	r15, qword ptr [rbp - 0xe0]
	jle	.label_3014
.label_2969:
	lea	rdi, [rdi]
	mov	rbx, r15
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_3024:
	nop	
	mov	rdi, qword ptr [rbx]
	call	free
	lea	rdi, [rdi]
	add	rbx, 0x18
	dec	r14
	jne	.label_3024
.label_3014:
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	nop	
	xor	eax, eax
.label_2934:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_2947:
	mov	rsi, rbx
	mov	rbp, rbp
	lea	rbx, [rsi + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2947
	mov	rbp, rbp
	mov	rcx, qword ptr [r10 + rsi*8 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r9*8], rcx
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + r9*8 + 0x800], rcx
	nop	
	jmp	.label_2939
.label_2955:
	mov	rbx, -1
	test	dil, 1
	lea	rdi, [rdi]
	mov	rcx, r8
	lea	rdi, [rdi]
	jne	.label_2947
.label_2939:
	lea	rdi, [rdi]
	add	rdx, rdx
	mov	rbp, rbp
	shr	rdi, 1
	mov	rbp, rbp
	inc	r9
	nop	
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_2955
.label_2999:
	mov	rbp, rbp
	mov	rsi, r15
	test	rsi, rsi
	lea	rdi, [rdi]
	mov	r15, qword ptr [rbp - 0xa0]
	je	.label_2960
	mov	rbp, rbp
	lea	r8, [r14 + 0x1808]
	lea	rdi, [rdi]
	mov	edx, 1
	mov	r9d, 0x40
	lea	rsi, [rsi]
	jmp	.label_2967
.label_2986:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	mov	rsp, rsp
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_2986
	mov	rsp, rsp
	mov	rdi, qword ptr [r10 + rcx*8 + 8]
	mov	qword ptr [rax + r9*8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + r9*8 + 0x800], rcx
	mov	rsp, rsp
	jmp	.label_2977
.label_2967:
	lea	rsi, [rsi]
	mov	rbx, -1
	test	sil, 1
	lea	rsi, [rsi]
	mov	rdi, r8
	lea	rdi, [rdi]
	jne	.label_2986
.label_2977:
	add	rdx, rdx
	lea	rdi, [rdi]
	shr	rsi, 1
	mov	rbp, rbp
	inc	r9
	test	rsi, rsi
	jne	.label_2967
.label_2960:
	mov	r9, r10
	nop	
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	test	rcx, rcx
	mov	r11d, dword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	je	.label_2992
	lea	r8, [r14 + 0x1810]
	mov	rsp, rsp
	mov	edx, 1
	mov	rsp, rsp
	mov	esi, 0x80
	nop	
	jmp	.label_2998
.label_2974:
	mov	rcx, rbx
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	nop	
	lea	rdi, [rdi + 0x20]
	nop	
	je	.label_2974
	mov	rdi, qword ptr [r9 + rcx*8 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rsi*8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_3005
.label_2998:
	lea	rsi, [rsi]
	mov	rbx, -1
	test	cl, 1
	mov	rbp, rbp
	mov	r10, rcx
	lea	rdi, [rdi]
	mov	rdi, r8
	lea	rdi, [rdi]
	jne	.label_2974
.label_3005:
	lea	rsi, [rsi]
	add	rdx, rdx
	mov	rsp, rsp
	mov	rcx, r10
	shr	rcx, 1
	mov	rbp, rbp
	inc	rsi
	test	rcx, rcx
	jne	.label_2998
.label_2992:
	nop	
	test	r13, r13
	mov	rbp, rbp
	je	.label_2944
	lea	rdi, [rdi]
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	mov	esi, 0xc0
	mov	rsp, rsp
	jmp	.label_2951
.label_2938:
	mov	rcx, rbx
	mov	rbp, rbp
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	lea	rdi, [rdi]
	je	.label_2938
	mov	rdi, qword ptr [r9 + rcx*8 + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + rsi*8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	mov	rsp, rsp
	jmp	.label_2972
.label_2951:
	mov	rbp, rbp
	mov	rbx, -1
	test	r13b, 1
	nop	
	mov	rdi, r8
	lea	rsi, [rsi]
	jne	.label_2938
.label_2972:
	lea	rsi, [rsi]
	add	rdx, rdx
	mov	rbp, rbp
	shr	r13, 1
	lea	rsi, [rsi]
	inc	rsi
	test	r13, r13
	nop	
	je	.label_2944
	lea	rsi, [rsi]
	jmp	.label_2951
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x429250

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x58
	nop	
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15 + 0x18]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 0x10]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_617]]
	nop	
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	edi, 8
	nop	
	call	malloc
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_3038
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x20]
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rdx, r13
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_3045
	lea	rdi, [rdi]
	lea	rax, [r15 + 0x20]
	nop	
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x4c], 0
	nop	
.label_3048:
	lea	rdi, [rdi]
	mov	rdx, r13
	mov	rbp, rbp
	test	rdx, rdx
	mov	rsp, rsp
	jle	.label_3049
	mov	rdi, qword ptr [r15]
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + rdx*8], 0
	je	.label_3052
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_3034
	nop	dword ptr [rax]
.label_3052:
	mov	eax, dword ptr [rsp + 0x4c]
	lea	rdi, [rdi]
	inc	eax
.label_3034:
	lea	rsi, [rsi]
	cmp	eax, dword ptr [r14 + 0xe0]
	jg	.label_3040
	mov	dword ptr [rsp + 0x4c], eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], 0
	lea	r13, [rdx - 1]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rax, qword ptr [rax + rdx*8 - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rdx
	test	rax, rax
	je	.label_3050
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_3050
	mov	rcx, qword ptr [r14 + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_3041:
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	r12, qword ptr [rax + rbx*8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r12
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	shl	r12, 4
	lea	rdi, [rdi]
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_3042
	mov	rax, r15
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rcx
	mov	rdx, r14
	mov	r14, rax
	mov	rbp, rbp
	mov	rbp, qword ptr [rdx + 0x98]
	mov	rbp, rbp
	mov	rdi, rbp
	nop	
	mov	rsi, qword ptr [rsp + 8]
	mov	r15, r13
	mov	r13, rdx
	mov	rcx, r15
	nop	
	call	check_node_accept_bytes
	test	eax, eax
	lea	rsi, [rsi]
	jle	.label_3053
	movsxd	rcx, eax
	add	rcx, r15
	cmp	rcx, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	jle	.label_3037
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	rbp, rbp
	mov	r14, r13
	mov	r13, r15
	mov	rbp, rbp
	mov	r15, rcx
	mov	rsp, rsp
	jmp	.label_3039
.label_3053:
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r14, r13
	mov	r13, r15
	mov	r15, rcx
	jne	.label_3039
	mov	rbp, rbp
	jmp	.label_3042
.label_3037:
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsi]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + rcx*8]
	nop	
	test	rdx, rdx
	mov	rsp, rsp
	mov	r14, r13
	mov	rsp, rsp
	mov	r13, r15
	mov	r15, rsi
	nop	
	je	.label_3042
	mov	rsi, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	test	rsi, rsi
	lea	rdi, [rdi]
	jle	.label_3042
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	nop	
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_3036
	nop	word ptr [rax + rax]
.label_3047:
	mov	rbp, rbp
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	mov	rbp, rbp
	cmovge	rsi, rbp
	lea	rsi, [rsi]
	cmp	rdi, rsi
	jb	.label_3047
.label_3036:
	mov	rbp, rbp
	test	eax, eax
	je	.label_3042
	lea	rsi, [rsi]
	cmp	rdi, -1
	nop	
	je	.label_3042
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_3039
.label_3042:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	add	r12, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r13
	nop	
	call	check_node_accept
	nop	
	test	al, al
	nop	
	je	.label_3035
	mov	rax, qword ptr [r15]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_3035
	mov	rax, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	test	rax, rax
	jle	.label_3035
	mov	rcx, qword ptr [rsp + 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx + rsi*8]
	lea	rsi, [rsi]
	dec	rax
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	mov	rbp, rbp
	je	.label_3046
.label_3051:
	lea	rdi, [rsi + rax]
	mov	rbp, rbp
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	mov	rbp, rbp
	lea	rbp, [rdi + 1]
	nop	
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	mov	rbp, rbp
	jb	.label_3051
.label_3046:
	lea	rsi, [rsi]
	cmp	rsi, -1
	nop	
	je	.label_3035
	mov	eax, 1
	nop	
	cmp	qword ptr [rdx + rsi*8], rcx
	lea	rsi, [rsi]
	jne	.label_3035
	nop	
.label_3039:
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_3044
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	add	rcx, r13
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x18]
	nop	
	mov	r8, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + r8*8]
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	r9, r13
	call	check_dst_limits
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	jne	.label_3035
.label_3044:
	mov	rbp, rbp
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_insert
	mov	ebp, 0xc
	test	al, al
	mov	rsp, rsp
	je	.label_3045
.label_3035:
	inc	rbx
	nop	
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rbx, qword ptr [rax + 0x28]
	mov	rbp, rbp
	jl	.label_3041
.label_3050:
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, r13
	nop	
	lea	rcx, [rsp + 0x20]
	call	update_cur_sifted_state
	mov	rsp, rsp
	mov	ebp, eax
	mov	rsp, rsp
	test	ebp, ebp
	je	.label_3048
	mov	rbp, rbp
	jmp	.label_3045
.label_3049:
	lea	rdi, [rdi]
	xor	ebp, ebp
	jmp	.label_3045
.label_3040:
	nop	
	shl	rdx, 3
	lea	rdi, [rdi]
	xor	ebp, ebp
	xor	esi, esi
	lea	rdi, [rdi]
	call	memset
.label_3045:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
.label_3043:
	mov	eax, ebp
	mov	rbp, rbp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_3038:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	ebp, 0xc
	lea	rdi, [rdi]
	jmp	.label_3043
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4296c0

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	r11, rcx
	nop	
	mov	rbp, rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rbp
	nop	
	mov	r13, rdi
	mov	rsp, rsp
	mov	r12, qword ptr [r13 + 0x98]
	mov	dword ptr [rsp + 0xc], 0
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rbx, qword ptr [rax + rdx*8]
	lea	rax, [rbx + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	cmove	rax, rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	cmp	qword ptr [r11 + 8], 0
	lea	rdi, [rdi]
	je	.label_3111
	mov	qword ptr [rsp + 0x68], rdx
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_3072
	mov	rbp, rbp
	mov	qword ptr [rsp], rbx
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x10], 0
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], r12
	mov	rdx, r11
	mov	rbx, r11
	call	re_acquire_state
	lea	rsi, [rsi]
	mov	r14, rax
	mov	r12d, dword ptr [rsp + 0x10]
	nop	
	test	r12d, r12d
	mov	rbp, rbp
	jne	.label_3110
	lea	rdi, [rdi]
	mov	r15, r14
	lea	rsi, [rsi]
	add	r15, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	mov	rsp, rsp
	jne	.label_3097
	mov	rdi, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x38], rdi
	mov	qword ptr [r14 + 0x40], 0
	lea	rdi, [rdi]
	shl	rdi, 3
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rax
	mov	rsp, rsp
	xor	ecx, ecx
	test	rax, rax
	mov	r12d, 0xc
	cmove	ecx, r12d
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], ecx
	je	.label_3110
	mov	rsp, rsp
	cmp	qword ptr [rbx + 8], 0
	jle	.label_3097
	mov	r14, rbp
	mov	rsp, rsp
	xor	ebp, ebp
	nop	
.label_3074:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	mov	rbp, rbp
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r15
	call	re_node_set_merge
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_3068
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jl	.label_3074
	mov	dword ptr [rsp + 0x10], 0
	mov	rbp, r14
.label_3097:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	r14, rbx
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, r15
	lea	rdi, [rdi]
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc], r12d
	test	r12d, r12d
	nop	
	mov	rbx, qword ptr [rsp]
	jne	.label_3086
	mov	rax, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	test	rax, rax
	mov	r11, r14
	mov	r12, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	je	.label_3072
	mov	qword ptr [rsp + 0x80], r13
	nop	
	mov	r10, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	jle	.label_3100
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x80]
	mov	r13, qword ptr [rax + 0xd8]
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_3090:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x30]
	mov	rax, qword ptr [rax + r15*8]
	lea	rax, [rax + rax*4]
	lea	rsi, [rsi]
	cmp	qword ptr [r13 + rax*8 + 0x10], r10
	lea	rdi, [rdi]
	jge	.label_3073
	lea	rdi, [rdi]
	cmp	qword ptr [r13 + rax*8 + 8], r10
	lea	rdi, [rdi]
	jl	.label_3073
	mov	rdx, qword ptr [r13 + rax*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12]
	nop	
	shl	rdx, 4
	mov	rsp, rsp
	mov	r8, qword ptr [rcx + rdx]
	mov	qword ptr [rsp + 0x48], r8
	mov	rbp, rbp
	cmp	qword ptr [r13 + rax*8 + 0x18], r10
	mov	rax, qword ptr [r11 + 8]
	jne	.label_3054
	nop	
	test	rax, rax
	nop	
	jle	.label_3073
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], r12
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r11 + 0x10]
	mov	r14, -1
	lea	rsi, [rsi]
	mov	rsi, -1
	nop	
.label_3105:
	mov	rbp, qword ptr [rdx]
	mov	rdi, rbp
	shl	rdi, 4
	mov	rbp, rbp
	movzx	ebx, byte ptr [rcx + rdi + 8]
	cmp	ebx, 9
	nop	
	je	.label_3084
	lea	rdi, [rdi]
	cmp	ebx, 8
	jne	.label_3092
	cmp	r8, qword ptr [rcx + rdi]
	mov	rbp, rbp
	je	.label_3094
	mov	rbp, rsi
.label_3094:
	lea	rsi, [rsi]
	mov	rsi, rbp
	jmp	.label_3092
	nop	word ptr cs:[rax + rax]
.label_3084:
	nop	
	cmp	r8, qword ptr [rcx + rdi]
	je	.label_3101
	mov	rbp, r14
.label_3101:
	lea	rsi, [rsi]
	mov	r14, rbp
.label_3092:
	mov	rbp, rbp
	add	rdx, 8
	dec	rax
	jne	.label_3105
	lea	rdi, [rdi]
	test	rsi, rsi
	lea	rdi, [rdi]
	mov	rbp, r11
	js	.label_3108
	mov	rdi, qword ptr [rsp + 0x98]
	mov	rdx, rbp
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	mov	rbx, r10
	call	sub_epsilon_src_nodes
	mov	r10, rbx
	lea	rsi, [rsi]
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_3061
.label_3108:
	test	r14, r14
	mov	rbp, rbp
	mov	r11, rbp
	mov	r12, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	js	.label_3073
	mov	rbp, rbp
	mov	r8, qword ptr [r11 + 8]
	test	r8, r8
	mov	ebp, 0
	jle	.label_3073
	nop	dword ptr [rax]
.label_3113:
	mov	rsp, rsp
	mov	rax, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x38]
	lea	r9, [rsi + rsi*2]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	mov	rbp, rbp
	test	rdx, rdx
	jle	.label_3091
	mov	rbp, rbp
	dec	rdx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + r9*8 + 0x10]
	mov	rbp, rbp
	mov	eax, 0
	je	.label_3117
	nop	dword ptr [rax]
.label_3088:
	mov	rsp, rsp
	lea	rbx, [rax + rdx]
	lea	rdi, [rdi]
	shr	rbx, 1
	mov	rsp, rsp
	cmp	qword ptr [rdi + rbx*8], r14
	lea	rcx, [rbx + 1]
	mov	rsp, rsp
	cmovl	rax, rcx
	cmovge	rdx, rbx
	mov	rbp, rbp
	cmp	rax, rdx
	jb	.label_3088
.label_3117:
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_3091
	mov	rbp, rbp
	cmp	qword ptr [rdi + rax*8], r14
	lea	rdi, [rdi]
	je	.label_3078
.label_3091:
	nop	
	mov	rax, qword ptr [r12 + 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	lea	rdi, [rdi]
	test	rdx, rdx
	jle	.label_3056
	nop	
	dec	rdx
	mov	rcx, qword ptr [rax + r9*8 + 0x10]
	lea	rdi, [rdi]
	mov	eax, 0
	je	.label_3109
	nop	dword ptr [rax]
.label_3065:
	lea	rdi, [rax + rdx]
	shr	rdi, 1
	nop	
	cmp	qword ptr [rcx + rdi*8], r14
	nop	
	lea	rbx, [rdi + 1]
	mov	rsp, rsp
	cmovl	rax, rbx
	cmovge	rdx, rdi
	mov	rbp, rbp
	cmp	rax, rdx
	jb	.label_3065
.label_3109:
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_3056
	mov	rbp, rbp
	cmp	qword ptr [rcx + rax*8], r14
	mov	rsp, rsp
	je	.label_3078
.label_3056:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x98], r15
	mov	r15, r13
	nop	
	mov	rdi, r12
	nop	
	mov	r13, r12
	lea	rsi, [rsi]
	mov	rdx, r11
	nop	
	mov	rcx, qword ptr [rsp + 0x70]
	mov	r12, r10
	nop	
	mov	rbx, r11
	call	sub_epsilon_src_nodes
	mov	r10, r12
	nop	
	mov	r12d, eax
	test	r12d, r12d
	nop	
	jne	.label_3061
	mov	rsp, rsp
	dec	rbp
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbx + 8]
	mov	r11, rbx
	mov	r12, r13
	nop	
	mov	r13, r15
	mov	r15, qword ptr [rsp + 0x98]
.label_3078:
	inc	rbp
	nop	
	cmp	rbp, r8
	jl	.label_3113
	jmp	.label_3073
.label_3054:
	nop	
	test	rax, rax
	mov	ebp, 0
	jg	.label_3096
	jmp	.label_3073
	nop	dword ptr [rax]
.label_3076:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
.label_3096:
	mov	rbp, rbp
	mov	rdx, qword ptr [r11 + 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + rbp*8]
	mov	rbp, rbp
	mov	rdx, rsi
	mov	rsp, rsp
	shl	rdx, 4
	nop	
	mov	edi, dword ptr [rcx + rdx + 8]
	mov	ebx, 0xfe
	mov	rbp, rbp
	and	edi, ebx
	nop	
	or	edi, 1
	cmp	edi, 9
	jne	.label_3116
	cmp	r8, qword ptr [rcx + rdx]
	jne	.label_3116
	mov	rbp, rbp
	mov	r14, r15
	mov	r15, r13
	mov	rsp, rsp
	mov	rdi, r12
	mov	r13, r12
	mov	rsp, rsp
	mov	rdx, r11
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	r12, r10
	mov	rbx, r11
	lea	rsi, [rsi]
	call	sub_epsilon_src_nodes
	mov	rbp, rbp
	mov	r10, r12
	mov	r12d, eax
	mov	rsp, rsp
	test	r12d, r12d
	lea	rdi, [rdi]
	jne	.label_3061
	mov	rax, qword ptr [rbx + 8]
	nop	
	mov	r11, rbx
	lea	rsi, [rsi]
	mov	r12, r13
	lea	rsi, [rsi]
	mov	r13, r15
	mov	r15, r14
	mov	r8, qword ptr [rsp + 0x48]
.label_3116:
	mov	rsp, rsp
	inc	rbp
	cmp	rbp, rax
	jl	.label_3076
	nop	word ptr cs:[rax + rax]
.label_3073:
	inc	r15
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	cmp	r15, qword ptr [rbp + 0x28]
	jl	.label_3090
.label_3100:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], r10
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc], 0
	mov	r13, qword ptr [rsp + 0x80]
	mov	rbx, qword ptr [rsp]
.label_3072:
	nop	
	lea	rdi, [rsp + 0xc]
	mov	rsi, r12
	mov	rdx, r11
	mov	rbp, rbp
	call	re_acquire_state
	mov	rcx, qword ptr [rbp]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	qword ptr [rcx + rdx*8], rax
	mov	rsp, rsp
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rbp, rbp
	test	r12d, r12d
	lea	rsi, [rsi]
	je	.label_3104
	jmp	.label_3086
.label_3111:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rax + rdx*8], 0
.label_3104:
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_3080
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + rdx*8]
	test	byte ptr [rax + 0x68], 0x40
	nop	
	je	.label_3080
	mov	rbx, rbp
	mov	r11, qword ptr [r13 + 0x98]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r13 + 0xc8]
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	rbp, rbp
	mov	rbp, rbp
	jle	.label_3059
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r13 + 0xd8]
	xor	r15d, r15d
	mov	rax, rbp
	nop	
.label_3075:
	mov	rbp, rbp
	lea	rsi, [rax + r15]
	nop	
	mov	rdi, rsi
	lea	rdi, [rdi]
	shr	rdi, 0x3f
	mov	rsp, rsp
	add	rdi, rsi
	sar	rdi, 1
	nop	
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rcx + rsi*8 + 8], rdx
	lea	rdi, [rdi]
	cmovge	rax, rdi
	mov	rbp, rbp
	lea	rsi, [rdi + 1]
	cmovl	r15, rsi
	lea	rsi, [rsi]
	cmp	r15, rax
	lea	rsi, [rsi]
	jl	.label_3075
.label_3059:
	mov	rsp, rsp
	cmp	r15, rbp
	jge	.label_3095
	cmp	r15, -1
	nop	
	je	.label_3095
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [r15 + r15*4]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xb0], rcx
	cmp	qword ptr [rax + rcx*8 + 8], rdx
	jne	.label_3095
	mov	qword ptr [rsp + 0x10], 0
	mov	rax, qword ptr [rsp + 0x70]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jle	.label_3107
	mov	rdi, r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], rdi
	mov	qword ptr [rsp + 0x68], rdx
	nop	
	mov	r10, rbx
	mov	qword ptr [rsp + 0xa8], r10
	mov	rbp, rbp
	lea	rax, [r10 + 0x20]
	mov	qword ptr [rsp + 0x78], rax
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	shl	qword ptr [rsp + 0xb0], 3
	xor	r13d, r13d
	nop	word ptr [rax + rax]
.label_3082:
	mov	qword ptr [rsp + 0x90], r13
	mov	rax, qword ptr [rsp + 0x70]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, qword ptr [rax + r13*8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rbp
	lea	rdi, [rdi]
	mov	rax, qword ptr [r11]
	mov	rcx, rbp
	nop	
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	rbp, qword ptr [r10 + 0x10]
	lea	rsi, [rsi]
	jne	.label_3067
	cmp	eax, 4
	mov	rbp, rbp
	mov	rcx, rdx
	jne	.label_3083
	cmp	qword ptr [r10 + 0x18], rcx
	jne	.label_3087
	nop	
	jmp	.label_3083
.label_3067:
	nop	
	cmp	eax, 4
	mov	rcx, rdx
	mov	rbp, rbp
	jne	.label_3083
.label_3087:
	mov	rbx, qword ptr [rdi + 0xd8]
	mov	rsp, rsp
	add	rbx, qword ptr [rsp + 0xb0]
	mov	r14, r15
	nop	dword ptr [rax]
.label_3118:
	cmp	qword ptr [rbx], rbp
	lea	rsi, [rsi]
	jne	.label_3060
	mov	rax, qword ptr [rbx + 0x10]
	nop	
	mov	rdx, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	mov	r9, rdx
	sub	r9, rax
	add	r9, rcx
	cmp	rdx, rax
	jne	.label_3103
	mov	rbp, rbp
	mov	rax, qword ptr [r11 + 0x28]
	nop	
	lea	rdx, [rbp + rbp*2]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rdx*8 + 0x10]
	jmp	.label_3112
	nop	dword ptr [rax]
.label_3103:
	lea	rdi, [rdi]
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r11 + 0x18]
.label_3112:
	cmp	r9, qword ptr [r10 + 0x18]
	jg	.label_3060
	lea	rsi, [rsi]
	mov	rax, qword ptr [r10]
	mov	rdx, qword ptr [rax + r9*8]
	lea	rsi, [rsi]
	test	rdx, rdx
	je	.label_3060
	mov	rax, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	test	rax, rax
	jle	.label_3060
	mov	rsp, rsp
	mov	r12, r10
	mov	r8, qword ptr [rsi]
	dec	rax
	lea	rdi, [rdi]
	mov	r10, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_3066
	nop	dword ptr [rax]
.label_3070:
	lea	rdi, [rdi]
	lea	rsi, [rdx + rax]
	mov	rbp, rbp
	shr	rsi, 1
	nop	
	cmp	qword ptr [r10 + rsi*8], r8
	lea	rdi, [rdi]
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	cmovge	rax, rsi
	cmp	rdx, rax
	lea	rdi, [rdi]
	jb	.label_3070
.label_3066:
	lea	rdi, [rdi]
	cmp	rdx, -1
	je	.label_3085
	nop	
	cmp	qword ptr [r10 + rdx*8], r8
	jne	.label_3085
	mov	qword ptr [rsp + 0x48], r11
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	call	check_dst_limits
	test	al, al
	lea	rdi, [rdi]
	mov	r10, r12
	je	.label_3089
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x68]
	nop	
	mov	rdi, qword ptr [rsp + 0x80]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_3099
.label_3085:
	lea	rdi, [rdi]
	mov	r10, r12
	nop	
	jmp	.label_3099
.label_3089:
	cmp	qword ptr [rsp], 0
	jne	.label_3077
	mov	rax, qword ptr [r10 + 0x30]
	mov	qword ptr [rsp + 0x40], rax
	movups	xmm0, xmmword ptr [r10]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [r10 + 0x10]
	mov	rbp, rbp
	movups	xmm2, xmmword ptr [r10 + 0x20]
	movaps	xmmword ptr [rsp + 0x30], xmm2
	movaps	xmmword ptr [rsp + 0x20], xmm1
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbx, qword ptr [r10 + 0x28]
	mov	qword ptr [rsp + 0x38], rbx
	mov	rbp, rbp
	test	rbx, rbx
	lea	rsi, [rsi]
	jle	.label_3114
	mov	rbp, rbp
	mov	rbp, r10
	mov	qword ptr [rsp + 0x30], rbx
	shl	rbx, 3
	mov	rdi, rbx
	mov	rbp, rbp
	call	malloc
	mov	qword ptr [rsp + 0x40], rax
	test	rax, rax
	nop	
	je	.label_3115
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x30]
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, rbx
	call	memcpy
	mov	rbp, rbp
	mov	r10, rbp
	jmp	.label_3077
.label_3114:
	lea	rax, [rsp + 0x30]
	nop	
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], 0
.label_3077:
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	lea	rdi, [rsp + 0x30]
	mov	rsi, r14
	mov	rsp, rsp
	mov	rbx, r10
	mov	rsp, rsp
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	rdx, rbx
	nop	
	mov	r12d, 0xc
	test	al, al
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x48]
	nop	
	je	.label_3058
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rcx, qword ptr [rbx + rcx*8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rcx
	mov	rdi, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	lea	rsi, [rsp + 0x10]
	lea	rdi, [rdi]
	mov	r12, rax
	nop	
	mov	rbp, rdx
	lea	rdi, [rdi]
	call	sift_states_backward
	mov	r10, rbp
	mov	rsp, rsp
	mov	r11, r12
	nop	
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_3058
	mov	rdi, qword ptr [r10 + 8]
	test	rdi, rdi
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rbx
	je	.label_3063
	lea	rdi, [rdi]
	mov	r13, -1
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	lea	rbp, [rsp + 0x50]
	js	.label_3071
	nop	dword ptr [rax]
.label_3057:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rdi + r13*8 + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + r13*8 + 8]
	mov	rbp, rbp
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_3079
	test	rdx, rdx
	lea	rsi, [rsi]
	je	.label_3062
	mov	rbp, rbp
	mov	rbx, rdi
	add	rsi, 8
	add	rdx, 8
	mov	rdi, rbp
	mov	rsp, rsp
	call	re_node_set_init_union
	lea	rdi, [rdi]
	mov	r12d, eax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xbc], r12d
	test	r12d, r12d
	lea	rdi, [rdi]
	jne	.label_3058
	mov	rsp, rsp
	lea	rdi, [rsp + 0xbc]
	mov	rsi, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	re_acquire_state
	mov	qword ptr [rbx + r13*8 + 8], rax
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	call	free
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rsp + 0xbc]
	test	r12d, r12d
	nop	
	mov	rcx, qword ptr [rsp + 0x68]
	mov	r10, qword ptr [rsp + 0xa8]
	mov	rbx, qword ptr [rsp]
	je	.label_3062
	jmp	.label_3058
.label_3079:
	lea	rsi, [rsi]
	mov	qword ptr [rdi + r13*8 + 8], rdx
.label_3062:
	inc	r13
	cmp	r13, rcx
	jl	.label_3057
.label_3071:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x90]
.label_3063:
	mov	qword ptr [rsp], rbx
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	qword ptr [rbx + rcx*8], rdx
	mov	r12, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	test	r12, r12
	jle	.label_3055
	mov	rbp, r12
	dec	rbp
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rdi, rbp
	mov	edx, 0
	je	.label_3081
	nop	
.label_3102:
	mov	rsp, rsp
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [rax + rbx*8], r14
	mov	rbp, rbp
	lea	rsi, [rbx + 1]
	cmovl	rdx, rsi
	cmovge	rdi, rbx
	cmp	rdx, rdi
	lea	rdi, [rdi]
	jb	.label_3102
.label_3081:
	cmp	qword ptr [rax + rdx*8], r14
	mov	rdi, rdx
	nop	
	je	.label_3098
	nop	
	mov	rdi, -1
.label_3098:
	test	rdi, rdi
	mov	rsp, rsp
	js	.label_3055
	lea	rsi, [rsi]
	cmp	r12, rdi
	jle	.label_3055
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rbp
	cmp	rbp, rdi
	nop	
	jle	.label_3055
	mov	rbp, rbp
	dec	r12
	lea	rdi, [rdx + 1]
	lea	rsi, [rsi]
	cmp	r12, rdi
	mov	rbx, rdi
	nop	
	cmovge	rbx, r12
	lea	rdi, [rdi]
	sub	rbx, rdx
	cmp	rbx, 4
	mov	rbp, rbp
	jb	.label_3069
	nop	
	mov	r8, rbx
	lea	rdi, [rdi]
	and	r8, 0xfffffffffffffffc
	nop	
	mov	r9, rbx
	and	r9, 0xfffffffffffffffc
	lea	rsi, [rsi]
	je	.label_3069
	mov	qword ptr [rsp + 0xa8], r10
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], r11
	lea	rsi, [rsi]
	cmp	r12, rdi
	mov	rsi, rdi
	cmovge	rsi, r12
	lea	rsi, [rsi]
	sub	rsi, rdx
	add	rsi, -4
	mov	r11, rsi
	nop	
	shr	r11, 2
	mov	rsp, rsp
	bt	rsi, 2
	mov	r10d, 0
	jb	.label_3064
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rax + rdx*8 + 8]
	movups	xmm1, xmmword ptr [rax + rdx*8 + 0x18]
	movups	xmmword ptr [rax + rdx*8], xmm0
	movups	xmmword ptr [rax + rdx*8 + 0x10], xmm1
	mov	r10d, 4
.label_3064:
	mov	rbp, rbp
	test	r11, r11
	lea	rdi, [rdi]
	je	.label_3119
	mov	rbp, rbp
	cmp	r12, rdi
	lea	rsi, [rsi]
	cmovge	rdi, r12
	sub	rdi, rdx
	and	rdi, 0xfffffffffffffffc
	sub	rdi, r10
	add	r10, rdx
	nop	
	lea	rsi, [rax + r10*8 + 0x38]
.label_3106:
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rsi - 0x30]
	movups	xmm1, xmmword ptr [rsi - 0x20]
	movups	xmmword ptr [rsi - 0x38], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rsi - 0x28], xmm1
	nop	
	movups	xmm0, xmmword ptr [rsi - 0x10]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rsi]
	movups	xmmword ptr [rsi - 0x18], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rsi - 8], xmm1
	add	rsi, 0x40
	mov	rsp, rsp
	add	rdi, -8
	mov	rbp, rbp
	jne	.label_3106
.label_3119:
	cmp	rbx, r9
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	r10, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	je	.label_3055
	add	rdx, r8
	nop	word ptr cs:[rax + rax]
.label_3069:
	mov	rsi, qword ptr [rax + rdx*8 + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	mov	rbp, rbp
	cmp	rdx, rbp
	jl	.label_3069
.label_3055:
	lea	rbx, [r14 + r14*4]
	mov	rbp, rbp
	shl	rbx, 3
	mov	rdi, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	add	rbx, qword ptr [rdi + 0xd8]
.label_3099:
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x98]
	nop	
.label_3060:
	mov	rbp, rbp
	inc	r14
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x20], 0
	mov	rbp, rbp
	lea	rbx, [rbx + 0x28]
	jne	.label_3118
.label_3083:
	mov	rdx, rcx
	nop	
	inc	r13
	xor	r12d, r12d
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	cmp	r13, qword ptr [rax + 8]
	jl	.label_3082
.label_3058:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_3093
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	call	free
.label_3093:
	mov	dword ptr [rsp + 0xc], r12d
	nop	
	test	r12d, r12d
	je	.label_3080
	mov	rsp, rsp
	jmp	.label_3086
.label_3095:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], 0
.label_3080:
	xor	r12d, r12d
.label_3086:
	mov	rbp, rbp
	mov	eax, r12d
	add	rsp, 0xc8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_3061:
	mov	dword ptr [rsp + 0xc], r12d
	nop	
	jmp	.label_3086
.label_3068:
	mov	dword ptr [rsp + 0x10], eax
.label_3110:
	nop	
	mov	dword ptr [rsp + 0xc], r12d
	lea	rdi, [rdi]
	jmp	.label_3086
.label_3107:
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_3080
.label_3115:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x30]
	nop	
	movups	xmmword ptr [rax], xmm0
	lea	rdi, [rdi]
	mov	r12d, 0xc
	jmp	.label_3058
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42a510

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	mov	rsp, rsp
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rdx, qword ptr [r15 + 8]
	nop	
	xor	eax, eax
	mov	rbp, rbp
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_3122
	mov	r10, qword ptr [r14 + 8]
	nop	
	test	r10, r10
	je	.label_3122
	lea	rax, [r10 + rdx]
	mov	rbx, qword ptr [r12]
	mov	rsi, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	lea	rcx, [rsi + rax]
	cmp	rcx, rbx
	mov	rsp, rsp
	jle	.label_3127
	add	rbx, rax
	nop	
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	mov	rsp, rsp
	test	rcx, rcx
	je	.label_3122
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], rbx
	mov	rsi, qword ptr [r12 + 8]
	mov	rdx, qword ptr [r15 + 8]
	mov	r10, qword ptr [r14 + 8]
	mov	rsp, rsp
	jmp	.label_3130
.label_3127:
	lea	rsi, [rsi]
	lea	r8, [r12 + 0x10]
.label_3130:
	lea	r9, [rdx + rsi]
	add	r9, r10
	dec	rsi
.label_3121:
	dec	rdx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x10]
	nop	
	mov	rcx, qword ptr [r14 + 0x10]
	nop	
	mov	rdi, r10
.label_3132:
	lea	rdi, [rdi]
	lea	r10, [rdi - 1]
	mov	rax, qword ptr [rcx + rdi*8 - 8]
	nop	dword ptr [rax]
.label_3138:
	nop	
	cmp	qword ptr [rbx + rdx*8], rax
	lea	rsi, [rsi]
	je	.label_3136
	nop	
	jl	.label_3137
	lea	rsi, [rsi]
	test	rdx, rdx
	mov	rsp, rsp
	lea	rdx, [rdx - 1]
	mov	rsp, rsp
	jg	.label_3138
	nop	
	jmp	.label_3126
	nop	word ptr cs:[rax + rax]
.label_3137:
	nop	
	cmp	rdi, 2
	nop	
	mov	rdi, r10
	jge	.label_3132
	jmp	.label_3126
	nop	dword ptr [rax]
.label_3136:
	mov	rbx, qword ptr [r8]
	test	rsi, rsi
	lea	rsi, [rsi]
	js	.label_3129
	nop	dword ptr [rax + rax]
.label_3125:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + rsi*8]
	cmp	rcx, rax
	jle	.label_3120
	test	rsi, rsi
	mov	rsp, rsp
	lea	rsi, [rsi - 1]
	nop	
	jg	.label_3125
	mov	rbp, rbp
	jmp	.label_3129
.label_3120:
	test	rsi, rsi
	js	.label_3129
	cmp	rcx, rax
	je	.label_3128
	nop	dword ptr [rax + rax]
.label_3129:
	mov	rbp, rbp
	mov	qword ptr [rbx + r9*8 - 8], rax
	dec	r9
.label_3128:
	mov	rbp, rbp
	test	rdx, rdx
	jle	.label_3126
	cmp	rdi, 2
	lea	rdi, [rdi]
	jge	.label_3121
.label_3126:
	mov	rcx, qword ptr [r12 + 8]
	mov	r11, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r14 + 8]
	lea	r14, [rcx + r11 - 1]
	add	r14, rdx
	mov	rax, r14
	sub	rax, r9
	lea	r10, [rax + 1]
	lea	rsi, [rax + rcx + 1]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 8], rsi
	lea	rdi, [rdi]
	test	rcx, rcx
	jle	.label_3131
	nop	
	test	rax, rax
	js	.label_3131
	lea	rdi, [rdi]
	add	r11, rdx
	mov	rbp, rbp
	add	r11, rcx
	dec	rcx
	sub	r11, r9
	xor	edx, edx
.label_3134:
	mov	rsp, rsp
	mov	rdi, qword ptr [r8]
	lea	rax, [rdi + r11*8]
	nop	dword ptr [rax + rax]
.label_3123:
	mov	rsi, qword ptr [rdi + r14*8]
	nop	
	mov	rbx, qword ptr [rdi + rcx*8]
	mov	rbp, rbp
	cmp	rsi, rbx
	lea	rdi, [rdi]
	jg	.label_3135
	mov	qword ptr [rax + rcx*8], rbx
	lea	rdi, [rdi]
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	lea	rdi, [rdi]
	jg	.label_3123
	jmp	.label_3124
.label_3135:
	mov	rsp, rsp
	dec	r14
	nop	
	dec	r11
	lea	rax, [r10 + rcx]
	dec	r10
	mov	qword ptr [rdi + rax*8], rsi
	nop	
	jne	.label_3134
	mov	rbp, rbp
	jmp	.label_3133
.label_3131:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r8]
.label_3124:
	mov	rdx, r10
.label_3133:
	lea	rsi, [rdi + r9*8]
	lea	rsi, [rsi]
	shl	rdx, 3
	call	memcpy
	lea	rdi, [rdi]
	xor	eax, eax
.label_3122:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42a770

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x40], rcx
	mov	r12, rdx
	lea	rsi, [rsi]
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x38]
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], 0
	nop	
	lea	rdx, [r15 + r15*2]
	mov	rsp, rsp
	mov	r9, qword ptr [rcx + rdx*8 + 8]
	test	r9, r9
	jle	.label_3146
	lea	rsi, [rsi]
	lea	rax, [rcx + rdx*8 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	nop	
	lea	r14, [rcx + rdx*8 + 0x10]
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rcx
	mov	rsp, rsp
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_3157:
	mov	rbp, rbp
	mov	r11, qword ptr [r14]
	mov	rbp, rbp
	mov	rcx, qword ptr [r11 + r13*8]
	lea	rsi, [rsi]
	cmp	rcx, r15
	je	.label_3139
	mov	rdx, qword ptr [rdi]
	mov	rax, rcx
	mov	rsp, rsp
	shl	rax, 4
	lea	rsi, [rsi]
	test	byte ptr [rdx + rax + 8], 8
	je	.label_3139
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rcx + rcx*2]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + r8*8 + 0x10]
	nop	
	mov	rsi, qword ptr [rcx]
	mov	rbp, rbp
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	lea	rdi, [rdi]
	jl	.label_3152
	mov	rsp, rsp
	mov	r10, qword ptr [rcx + 8]
.label_3152:
	test	r9, r9
	lea	rsi, [rsi]
	jle	.label_3149
	mov	rcx, r9
	dec	rcx
	mov	rbp, rbp
	mov	ebp, 0
	mov	rsp, rsp
	je	.label_3162
	nop	
.label_3140:
	mov	rbp, rbp
	lea	rbx, [rbp + rcx]
	lea	rdi, [rdi]
	shr	rbx, 1
	lea	rdi, [rdi]
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rax, [rbx + 1]
	mov	rbp, rbp
	cmovl	rbp, rax
	nop	
	cmovge	rcx, rbx
	mov	rsp, rsp
	cmp	rbp, rcx
	jb	.label_3140
.label_3162:
	cmp	rbp, -1
	je	.label_3149
	lea	rsi, [rsi]
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_3151
.label_3149:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	jle	.label_3151
	lea	rdi, [rdi]
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	ecx, 0
	je	.label_3156
	nop	word ptr cs:[rax + rax]
.label_3163:
	lea	rax, [rcx + rbp]
	mov	rbp, rbp
	shr	rax, 1
	nop	
	cmp	qword ptr [rbx + rax*8], rsi
	lea	rdx, [rax + 1]
	lea	rdi, [rdi]
	cmovl	rcx, rdx
	cmovge	rbp, rax
	mov	rsp, rsp
	cmp	rcx, rbp
	mov	rbp, rbp
	jb	.label_3163
.label_3156:
	lea	rdi, [rdi]
	cmp	rcx, -1
	nop	
	je	.label_3151
	cmp	qword ptr [rbx + rcx*8], rsi
	lea	rdi, [rdi]
	je	.label_3147
.label_3151:
	test	r10, r10
	jle	.label_3139
	test	r9, r9
	mov	rsp, rsp
	jle	.label_3143
	mov	rbp, r9
	mov	rsp, rsp
	dec	rbp
	mov	ecx, 0
	lea	rdi, [rdi]
	je	.label_3155
	nop	word ptr cs:[rax + rax]
.label_3159:
	lea	rax, [rcx + rbp]
	shr	rax, 1
	cmp	qword ptr [r11 + rax*8], r10
	mov	rbp, rbp
	lea	rdx, [rax + 1]
	mov	rsp, rsp
	cmovl	rcx, rdx
	cmovge	rbp, rax
	mov	rbp, rbp
	cmp	rcx, rbp
	lea	rdi, [rdi]
	jb	.label_3159
.label_3155:
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_3143
	cmp	qword ptr [r11 + rcx*8], r10
	lea	rdi, [rdi]
	je	.label_3139
.label_3143:
	mov	rsi, qword ptr [r12 + 8]
	mov	rbp, rbp
	test	rsi, rsi
	jle	.label_3139
	mov	rbp, rbp
	dec	rsi
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r12 + 0x10]
	mov	ecx, 0
	je	.label_3144
	nop	word ptr cs:[rax + rax]
.label_3164:
	nop	
	lea	rax, [rcx + rsi]
	shr	rax, 1
	cmp	qword ptr [rbp + rax*8], r10
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	mov	rsp, rsp
	cmovge	rsi, rax
	cmp	rcx, rsi
	mov	rbp, rbp
	jb	.label_3164
.label_3144:
	cmp	rcx, -1
	je	.label_3139
	cmp	qword ptr [rbp + rcx*8], r10
	lea	rsi, [rsi]
	jne	.label_3139
.label_3147:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x38]
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rdx, [rax + r8*8]
	nop	
	lea	rdi, [rsp + 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	call	re_node_set_add_intersect
	nop	
	mov	ebp, eax
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_3141
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rax]
	mov	rdi, rbx
	nop	word ptr [rax + rax]
.label_3139:
	inc	r13
	cmp	r13, r9
	jl	.label_3157
	test	r9, r9
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x18]
	jle	.label_3146
	lea	r8, [rsp + 0x30]
	mov	rsp, rsp
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	lea	r11, [r10 - 1]
	lea	rsi, [rsi]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_3154:
	lea	rsi, [rsi]
	test	r10, r10
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + r13*8]
	jle	.label_3145
	lea	rsi, [rsi]
	test	r11, r11
	lea	rsi, [rsi]
	mov	rdx, r11
	mov	rbp, rbp
	mov	ecx, 0
	je	.label_3150
	nop	word ptr cs:[rax + rax]
.label_3160:
	lea	rdi, [rdi]
	lea	rdi, [rcx + rdx]
	mov	rbp, rbp
	shr	rdi, 1
	mov	rbp, rbp
	cmp	qword ptr [rsi + rdi*8], rax
	lea	rbx, [rdi + 1]
	mov	rsp, rsp
	cmovl	rcx, rbx
	lea	rsi, [rsi]
	cmovge	rdx, rdi
	mov	rsp, rsp
	cmp	rcx, rdx
	jb	.label_3160
.label_3150:
	lea	rdi, [rdi]
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_3145
	cmp	qword ptr [rsi + rcx*8], rax
	mov	rsp, rsp
	je	.label_3142
.label_3145:
	mov	rsp, rsp
	mov	r14, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	r14, r14
	jle	.label_3142
	mov	r15, r14
	dec	r15
	mov	rsp, rsp
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdi, r15
	mov	edx, 0
	je	.label_3148
	nop	word ptr cs:[rax + rax]
.label_3161:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	mov	rbp, rbp
	cmp	qword ptr [rcx + rbx*8], rax
	lea	rbp, [rbx + 1]
	lea	rdi, [rdi]
	cmovl	rdx, rbp
	cmovge	rdi, rbx
	cmp	rdx, rdi
	nop	
	jb	.label_3161
.label_3148:
	cmp	qword ptr [rcx + rdx*8], rax
	mov	rax, rdx
	mov	rbp, rbp
	je	.label_3165
	nop	
	mov	rax, -1
.label_3165:
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_3142
	cmp	r14, rax
	jle	.label_3142
	mov	qword ptr [r12 + 8], r15
	cmp	r15, rax
	jle	.label_3142
	nop	
.label_3158:
	nop	
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	nop	
	mov	qword ptr [rcx + rdx*8], rax
	inc	rdx
	mov	rsp, rsp
	cmp	rdx, qword ptr [r12 + 8]
	jl	.label_3158
	nop	dword ptr [rax + rax]
.label_3142:
	inc	r13
	mov	rax, qword ptr [rsp + 0x10]
	cmp	r13, qword ptr [rax]
	mov	rsp, rsp
	jl	.label_3154
	jmp	.label_3166
.label_3146:
	mov	rbp, rbp
	lea	r8, [rsp + 0x30]
.label_3166:
	mov	rdi, qword ptr [r8]
	call	free
	xor	ebp, ebp
.label_3153:
	mov	eax, ebp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_3141:
	nop	
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	jmp	.label_3153
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x42ac10

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	nop	
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r8
	mov	qword ptr [rsp + 0x28], rcx
	nop	
	mov	qword ptr [rsp + 0x20], rdx
	lea	rsi, [rsi]
	mov	r10, rsi
	mov	qword ptr [rsp + 0x18], rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rdi + 0xc8]
	mov	rbp, rbp
	xor	r14d, r14d
	test	rax, rax
	jle	.label_3171
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r14d, r14d
	mov	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_3167:
	lea	rsi, [rdx + r14]
	mov	rbx, rsi
	mov	rsp, rsp
	shr	rbx, 0x3f
	add	rbx, rsi
	nop	
	sar	rbx, 1
	lea	rsi, [rbx + rbx*4]
	cmp	qword ptr [rbp + rsi*8 + 8], rcx
	cmovge	rdx, rbx
	mov	rbp, rbp
	lea	rsi, [rbx + 1]
	lea	rdi, [rdi]
	cmovl	r14, rsi
	cmp	r14, rdx
	jl	.label_3167
.label_3171:
	nop	
	cmp	r14, rax
	lea	rdi, [rdi]
	jge	.label_3179
	mov	rsi, qword ptr [rdi + 0xd8]
	lea	rdi, [rdi]
	lea	rdx, [r14 + r14*4]
	nop	
	cmp	qword ptr [rsi + rdx*8 + 8], rcx
	je	.label_3180
.label_3179:
	mov	r14, -1
.label_3180:
	nop	
	xor	r12d, r12d
	test	rax, rax
	nop	
	jle	.label_3174
	mov	rbp, qword ptr [rdi + 0xd8]
	mov	rbp, rbp
	xor	r12d, r12d
	lea	rsi, [rsi]
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_3168:
	lea	rsi, [rdx + r12]
	lea	rsi, [rsi]
	mov	rbx, rsi
	shr	rbx, 0x3f
	mov	rbp, rbp
	add	rbx, rsi
	sar	rbx, 1
	nop	
	lea	rsi, [rbx + rbx*4]
	cmp	qword ptr [rbp + rsi*8 + 8], r9
	mov	rsp, rsp
	cmovge	rdx, rbx
	lea	rsi, [rsi]
	lea	rsi, [rbx + 1]
	mov	rbp, rbp
	cmovl	r12, rsi
	lea	rdi, [rdi]
	cmp	r12, rdx
	jl	.label_3168
.label_3174:
	cmp	r12, rax
	jge	.label_3178
	mov	rax, qword ptr [rdi + 0xd8]
	nop	
	lea	rdx, [r12 + r12*4]
	cmp	qword ptr [rax + rdx*8 + 8], r9
	lea	rdi, [rdi]
	je	.label_3169
.label_3178:
	nop	
	mov	r12, -1
.label_3169:
	cmp	qword ptr [r10 + 8], 0
	jle	.label_3176
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_3173:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rsp, rsp
	mov	rdx, qword ptr [r10 + 0x10]
	mov	rbp, qword ptr [rdx + r15*8]
	lea	rsi, [rbp + rbp*4]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax + rsi*8]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rbx]
	lea	rdi, [rdi]
	shl	rdx, 4
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + rdx]
	mov	r11, qword ptr [rax + rsi*8 + 0x10]
	mov	r13d, 0xffffffff
	mov	rsp, rsp
	cmp	r11, rcx
	mov	rbp, rbp
	jle	.label_3177
	lea	rdi, [rdi]
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	jmp	.label_3172
.label_3177:
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + rsi*8 + 0x18]
	mov	ebx, 1
	cmp	rsi, rcx
	lea	rsi, [rsi]
	jl	.label_3172
	nop	
	cmp	r11, rcx
	mov	rsp, rsp
	sete	bl
	nop	
	movzx	r8d, bl
	lea	rdi, [rdi]
	cmp	rsi, rcx
	mov	rsp, rsp
	sete	bl
	movzx	esi, bl
	add	esi, esi
	xor	ebx, ebx
	or	esi, r8d
	je	.label_3172
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rdx
	nop	
	mov	r8, r14
	mov	rbx, r9
	lea	rsi, [rsi]
	mov	rbp, r10
	mov	rsp, rsp
	call	check_dst_limits_calc_pos_1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x18]
	nop	
	mov	r10, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9, rbx
	mov	ebx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [r10 + 0x10]
	nop	
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rbp, rbp
	lea	rsi, [rbp + rbp*4]
	nop	
	mov	r11, qword ptr [rax + rsi*8 + 0x10]
	nop	dword ptr [rax + rax]
.label_3172:
	mov	rbp, rbp
	cmp	r11, r9
	jg	.label_3170
	lea	rdi, [rdi]
	lea	rsi, [rbp + rbp*4]
	mov	rax, qword ptr [rax + rsi*8 + 0x18]
	mov	r13d, 1
	cmp	rax, r9
	jl	.label_3170
	lea	rsi, [rsi]
	cmp	r11, r9
	lea	rdi, [rdi]
	mov	esi, ebx
	mov	rsp, rsp
	sete	bl
	mov	rbp, rbp
	movzx	ebp, bl
	mov	ebx, esi
	mov	rbp, rbp
	cmp	rax, r9
	sete	al
	movzx	esi, al
	mov	rsp, rsp
	add	esi, esi
	mov	rbp, rbp
	xor	r13d, r13d
	or	esi, ebp
	nop	
	je	.label_3170
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, r12
	mov	rbp, r9
	mov	r13, r10
	call	check_dst_limits_calc_pos_1
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	r10, r13
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	r9, rbp
	mov	r13d, eax
	nop	dword ptr [rax + rax]
.label_3170:
	nop	
	cmp	r13d, ebx
	mov	al, 1
	jne	.label_3175
	nop	
	inc	r15
	cmp	r15, qword ptr [r10 + 8]
	jl	.label_3173
	lea	rsi, [rsi]
	xor	eax, eax
	jmp	.label_3175
.label_3176:
	xor	eax, eax
.label_3175:
	mov	rbp, rbp
	add	rsp, 0x38
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42af50

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x48
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	rbx, rdx
	mov	r13d, esi
	mov	qword ptr [rsp], rdi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x30]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	lea	rsi, [rsi]
	jle	.label_3183
	lea	rsi, [rsi]
	lea	rdx, [rax + rcx*8 + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rax + rcx*8 + 0x10]
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	eax, 1
	mov	cl, bl
	nop	
	shl	rax, cl
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rax
	xor	rax, 0xffff
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rdi]
	mov	eax, r13d
	mov	rbp, rbp
	and	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x3c], eax
	shr	eax, 1
	cmp	rbx, 0x3f
	setg	cl
	or	cl, al
	nop	
	mov	byte ptr [rsp + 0x3b], cl
	mov	eax, r13d
	nop	
	and	eax, 1
	mov	dword ptr [rsp + 0x24], eax
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_3190:
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rax + r15*8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp]
	mov	rsp, rsp
	mov	rdx, r12
	lea	rsi, [rsi]
	shl	rdx, 4
	lea	rcx, [rax + rdx]
	movzx	eax, byte ptr [rax + rdx + 8]
	nop	
	cmp	eax, 9
	lea	rsi, [rsi]
	je	.label_3191
	cmp	eax, 8
	mov	rsp, rsp
	je	.label_3185
	mov	rsp, rsp
	cmp	eax, 4
	jne	.label_3181
	cmp	qword ptr [rsp + 0x40], -1
	je	.label_3181
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x40]
	lea	r14, [rax + rax*4]
	shl	r14, 3
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	add	r14, qword ptr [rax + 0xd8]
	nop	
.label_3189:
	mov	rbp, rbp
	cmp	qword ptr [r14], r12
	jne	.label_3186
	lea	rsi, [rsi]
	cmp	rbx, 0x3f
	jg	.label_3188
	movzx	eax, word ptr [r14 + 0x22]
	test	qword ptr [rsp + 0x28], rax
	je	.label_3186
.label_3188:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x28]
	lea	rcx, [r12 + r12*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	je	.label_3194
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp]
	mov	esi, r13d
	mov	rdx, rbx
	mov	r8, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	call	check_dst_limits_calc_pos_1
	mov	ecx, eax
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_3192
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	nop	
	cmp	ecx, -1
	mov	rsp, rsp
	je	.label_3182
	lea	rdi, [rdi]
	cmp	rbx, 0x3f
	mov	rsp, rsp
	jg	.label_3186
	lea	rdi, [rdi]
	jmp	.label_3187
.label_3192:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x3b], 0
	mov	rsp, rsp
	je	.label_3187
	xor	eax, eax
	cmp	dword ptr [rsp + 0x3c], 0
	nop	
	je	.label_3186
	mov	rbp, rbp
	jmp	.label_3182
.label_3187:
	mov	rsp, rsp
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x18]
	nop	
	and	eax, ecx
	mov	word ptr [r14 + 0x22], ax
	nop	word ptr cs:[rax + rax]
.label_3186:
	mov	rsp, rsp
	cmp	byte ptr [r14 + 0x20], 0
	mov	rsp, rsp
	lea	r14, [r14 + 0x28]
	jne	.label_3189
	jmp	.label_3181
	nop	word ptr [rax + rax]
.label_3191:
	cmp	dword ptr [rsp + 0x3c], 0
	je	.label_3181
	xor	eax, eax
	jmp	.label_3184
	nop	dword ptr [rax + rax]
.label_3185:
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x24], 0
	nop	
	je	.label_3181
	mov	eax, 0xffffffff
.label_3184:
	nop	
	cmp	qword ptr [rcx], rbx
	je	.label_3182
.label_3181:
	inc	r15
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	cmp	r15, qword ptr [rax]
	jl	.label_3190
.label_3183:
	lea	rsi, [rsi]
	shr	r13d, 1
	nop	
	and	r13d, 1
	lea	rdi, [rdi]
	jmp	.label_3193
.label_3194:
	shl	r13d, 0x1f
	sar	r13d, 0x1f
.label_3193:
	lea	rdi, [rdi]
	mov	eax, r13d
.label_3182:
	add	rsp, 0x48
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x42b200

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	mov	rbp, rbp
	je	.label_3195
	mov	rbp, rbp
	mov	rdi, r14
	call	strlen
	nop	
	mov	r15, rax
	inc	r15
.label_3195:
	lea	rdi, [rdi]
	lea	rax, [r15 + 0x11]
	nop	
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	nop	
	cmovae	rdi, rax
	lea	rdi, [rdi]
	call	malloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	je	.label_3196
	mov	rsp, rsp
	mov	qword ptr [rbx], 0
	test	r14, r14
	lea	rdi, [rdi]
	setne	byte ptr [rbx + 8]
	nop	
	mov	byte ptr [rbx + 9], 0
	lea	rsi, [rsi]
	je	.label_3196
	mov	r12, rbx
	mov	rbp, rbp
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	lea	rsi, [rsi]
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_3196:
	mov	rax, rbx
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x42b2b0
	.globl tzfree
	.type tzfree, @function
tzfree:

	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	cmp	rdi, 2
	jb	.label_3198
	nop	dword ptr [rax]
.label_3197:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	jne	.label_3197
.label_3198:
	mov	rsp, rsp
	pop	rbx
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x42b2e0

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbp, rsi
	nop	
	mov	rbx, rdi
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_3199
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_3201
	mov	rdi, rbp
	mov	rsi, r15
	nop	
	call	localtime_r
	nop	
	mov	bpl, 1
	mov	rbp, rbp
	test	rax, rax
	je	.label_3200
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r15
	call	save_abbr
	lea	rdi, [rdi]
	mov	bpl, al
	xor	bpl, 1
.label_3200:
	mov	rdi, r14
	lea	rdi, [rdi]
	call	revert_tz
	mov	rbp, rbp
	xor	ecx, ecx
	xor	al, 1
	mov	rbp, rbp
	cmovne	r15, rcx
	nop	
	test	bpl, bpl
	lea	rsi, [rsi]
	cmovne	r15, rcx
	lea	rdi, [rdi]
	mov	rax, r15
	jmp	.label_3202
.label_3199:
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, r15
	lea	rdi, [rdi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	jmp	gmtime_r
.label_3201:
	xor	eax, eax
.label_3202:
	nop	
	add	rsp, 8
	pop	rbx
	nop	
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42b3c0

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r14, rdi
	mov	edi, OFFSET FLAT:.str_2
	call	getenv
	mov	r15, rax
	test	r15, r15
	mov	bl, byte ptr [r14 + 8]
	je	.label_3209
	lea	rdi, [rdi]
	test	bl, bl
	lea	rsi, [rsi]
	je	.label_3211
	lea	rdi, [rdi]
	lea	rdi, [r14 + 9]
	lea	rsi, [rsi]
	mov	rsi, r15
	call	strcmp
	mov	ecx, eax
	mov	rsp, rsp
	mov	eax, 1
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_3203
.label_3211:
	lea	rdi, [rdi]
	mov	rdi, r15
	call	strlen
	mov	r12, rax
	inc	r12
	mov	rsp, rsp
	mov	bpl, 1
	mov	rbp, rbp
	jmp	.label_3210
.label_3209:
	lea	rsi, [rsi]
	xor	ebp, ebp
	mov	eax, 1
	nop	
	test	bl, bl
	nop	
	mov	r12d, 0
	mov	rbp, rbp
	je	.label_3203
.label_3210:
	lea	rsi, [rsi]
	lea	rax, [r12 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r12, 0x77
	mov	edi, 0x80
	lea	rsi, [rsi]
	cmovae	rdi, rax
	mov	rsp, rsp
	call	malloc
	nop	
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	mov	rbp, rbp
	je	.label_3203
	lea	rdi, [rdi]
	mov	qword ptr [r13], 0
	lea	rsi, [rsi]
	mov	byte ptr [r13 + 8], bpl
	mov	rbp, rbp
	mov	byte ptr [r13 + 9], 0
	lea	rsi, [rsi]
	test	bpl, bpl
	je	.label_3206
	nop	
	lea	rbp, [r13 + 9]
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, r12
	call	memcpy
	nop	
	mov	byte ptr [rbp + r12], 0
.label_3206:
	lea	rdi, [rdi]
	test	bl, bl
	lea	rdi, [rdi]
	je	.label_3207
	mov	rbp, rbp
	add	r14, 9
	mov	edi, OFFSET FLAT:.str_2
	mov	rsp, rsp
	mov	edx, 1
	mov	rsi, r14
	call	setenv
	mov	rsp, rsp
	jmp	.label_3212
.label_3207:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_2
	mov	rbp, rbp
	call	unsetenv
.label_3212:
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	je	.label_3205
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	r14, rax
	mov	rsp, rsp
	mov	ebp, dword ptr [r14]
	mov	rsp, rsp
	cmp	r13, 2
	jb	.label_3208
	nop	word ptr cs:[rax + rax]
.label_3204:
	mov	rbx, qword ptr [r13]
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_3204
.label_3208:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_3203
.label_3205:
	nop	
	call	tzset
	lea	rdi, [rdi]
	mov	rax, r13
.label_3203:
	nop	
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42b590

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rbp, rbp
	mov	r14b, 1
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_3216
	cmp	r15, rbx
	ja	.label_3215
	nop	
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	lea	rsi, [rsi]
	jb	.label_3216
.label_3215:
	mov	ebp, OFFSET FLAT:.str_3
	nop	
	cmp	byte ptr [rbx], 0
	je	.label_3219
	lea	rbp, [r12 + 9]
	jmp	.label_3221
.label_3220:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	mov	rbp, rbp
	cmovne	r12, rax
.label_3221:
	lea	r13, [r12 + 9]
.label_3218:
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_3219
	cmp	byte ptr [rbp], 0
	mov	rsp, rsp
	jne	.label_3222
	lea	rsi, [rsi]
	cmp	rbp, r13
	jne	.label_3223
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + 8], 0
	je	.label_3213
.label_3222:
	mov	rbp, rbp
	mov	rdi, rbp
	call	strlen
	nop	
	lea	rcx, [rax + rbp + 1]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + rbp + 1], 0
	mov	rbp, rcx
	jne	.label_3218
	lea	rdi, [rdi]
	jmp	.label_3220
.label_3213:
	lea	rdi, [rdi]
	mov	rbp, r13
.label_3223:
	mov	rdi, rbx
	mov	rbp, rbp
	call	strlen
	lea	rdx, [rax + 1]
	nop	
	mov	rcx, rbp
	lea	rsi, [rsi]
	sub	rcx, r13
	mov	rbp, rbp
	mov	rsi, rcx
	not	rsi
	lea	rsi, [rsi]
	cmp	rdx, rsi
	jbe	.label_3214
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
.label_3225:
	xor	r14d, r14d
	jmp	.label_3216
.label_3214:
	add	rcx, rdx
	mov	rbp, rbp
	cmp	rcx, 0x76
	ja	.label_3224
	nop	
	mov	rdi, rbp
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	mov	qword ptr [r15 + 0x30], rbp
	jmp	.label_3216
.label_3224:
	add	rax, 0x12
	lea	rdi, [rdi]
	and	rax, 0xfffffffffffffff8
	lea	rsi, [rsi]
	cmp	rdx, 0x77
	mov	rsp, rsp
	mov	r13, rdx
	mov	rbp, rbp
	mov	edi, 0x80
	cmovae	rdi, rax
	mov	rsp, rsp
	call	malloc
	mov	rbp, rbp
	test	rax, rax
	je	.label_3217
	nop	
	mov	qword ptr [rax], 0
	mov	word ptr [rax + 8], 1
	lea	rsi, [rsi]
	mov	rbp, rax
	add	rbp, 9
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, r13
	mov	rbx, rax
	mov	rsp, rsp
	call	memcpy
	mov	byte ptr [rbx + r13 + 9], 0
	mov	qword ptr [r12], rbx
	mov	byte ptr [rbx + 8], 0
.label_3219:
	mov	qword ptr [r15 + 0x30], rbp
.label_3216:
	mov	rbp, rbp
	mov	al, r14b
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_3217:
	mov	qword ptr [r12], 0
	jmp	.label_3225
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x42b790

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	mov	rbp, rdi
	mov	r12b, 1
	cmp	rbp, 1
	je	.label_3231
	nop	
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	r15d, dword ptr [r14]
	lea	rsi, [rsi]
	cmp	byte ptr [rbp + 8], 0
	je	.label_3232
	lea	rsi, [rbp + 9]
	mov	edi, OFFSET FLAT:.str_2
	mov	edx, 1
	call	setenv
	jmp	.label_3227
.label_3232:
	mov	edi, OFFSET FLAT:.str_2
	call	unsetenv
.label_3227:
	test	eax, eax
	je	.label_3230
	mov	r15d, dword ptr [r14]
	xor	r12d, r12d
	jmp	.label_3229
.label_3230:
	call	tzset
	mov	r12b, 1
.label_3229:
	cmp	rbp, 2
	mov	rsp, rsp
	jb	.label_3226
	nop	dword ptr [rax]
.label_3228:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp]
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_3228
.label_3226:
	mov	dword ptr [r14], r15d
.label_3231:
	mov	al, r12b
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42b850

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	nop	
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x40
	nop	
	mov	r15, rsi
	mov	rbx, rdi
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_3235
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	set_tz
	mov	r14, rax
	mov	rbp, rbp
	test	r14, r14
	je	.label_3236
	mov	rdi, r15
	lea	rsi, [rsi]
	call	mktime
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, rbp
	cmp	rax, -1
	jne	.label_3237
	nop	
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp]
	call	localtime_r
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_3234
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	xor	rax, qword ptr [r15]
	mov	rsp, rsp
	xor	rcx, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	edx, ecx
	or	edx, eax
	lea	rsi, [rsi]
	shr	rax, 0x20
	or	edx, eax
	nop	
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x10]
	xor	rax, qword ptr [r15 + 0x10]
	mov	esi, eax
	or	esi, ecx
	lea	rsi, [rsi]
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	edi, dword ptr [r15 + 0x20]
	nop	
	mov	edx, dword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	test	edi, edi
	lea	rsi, [rsi]
	sete	sil
	test	edx, edx
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	xor	cl, sil
	or	edx, edi
	setns	dl
	and	dl, cl
	movzx	ecx, dl
	lea	rdi, [rdi]
	or	ecx, eax
	jne	.label_3234
.label_3237:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r15
	call	save_abbr
	nop	
	test	al, al
	lea	rdi, [rdi]
	jne	.label_3234
	mov	qword ptr [rsp + 0x38], -1
.label_3234:
	mov	rdi, r14
	mov	rbp, rbp
	call	revert_tz
	test	al, al
	mov	rsp, rsp
	je	.label_3236
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x38]
	jmp	.label_3233
.label_3236:
	lea	rdi, [rdi]
	mov	rax, -1
.label_3233:
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r14
	pop	r15
	ret	
.label_3235:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	jmp	timegm
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x42b9c0

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
	jne	.label_3238
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_3239
	test	cl, cl
	mov	rsp, rsp
	jne	.label_3239
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_3239
.label_3238:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_3239
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_3239:
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
	#Procedure 0x42ba50

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42ba70

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	nop	
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_3240
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_3242
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	nop	
	jne	.label_3242
	mov	rsp, rsp
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	je	.label_3243
.label_3242:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 1]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x10], rdx
	mov	rbp, rbp
	test	rdx, rcx
	jne	.label_3241
	mov	al, 1
	test	rdx, rdx
	lea	rsi, [rsi]
	je	.label_3243
	mov	rax, qword ptr [rsi]
	nop	
	mov	qword ptr [rdi + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_3241:
	mov	rsp, rsp
	xor	eax, eax
.label_3243:
	ret	
.label_3240:
	push	rax
	mov	edi, OFFSET FLAT:.str_15
	mov	esi, OFFSET FLAT:.str.1_12
	mov	edx, 0x3c
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	nop	
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42bb00

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_3244
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x70], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_3244:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_3245
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rsp, rsp
	lea	rax, [rsp + 0xd0]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], 0x10
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	lea	rdi, [rdi]
	ja	.label_3246
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_3247
.label_3246:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_3247:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_3245:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	call	open
	mov	edi, eax
	mov	rsp, rsp
	call	fd_safer
	mov	rbp, rbp
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42bc20

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
	je	.label_3249
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_3248
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_3250
.label_3248:
	nop	
	mov	esi, OFFSET FLAT:.str.1_13
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_3249
.label_3250:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_3249:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x42bc70

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	rsp, rsp
	mov	byte ptr [rdi + 0x1c], 1
	lea	rdi, [rdi]
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x18], 0
	lea	rdi, [rdi]
	movd	xmm0, esi
	lea	rsi, [rsi]
	pshufd	xmm0, xmm0, 0
	movdqu	xmmword ptr [rdi], xmm0
	mov	rbp, rbp
	mov	dword ptr [rdi + 0x10], esi
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42bcb0

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42bcc0

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	movzx	ecx, byte ptr [rdi + 0x1c]
	lea	rsi, [rsi]
	xor	ecx, 1
	add	ecx, dword ptr [rdi + 0x14]
	mov	edx, ecx
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	mov	rbp, rbp
	cmp	edx, dword ptr [rdi + 0x18]
	jne	.label_3251
	lea	rsi, [rsi]
	mov	dl, byte ptr [rdi + 0x1c]
	mov	rbp, rbp
	xor	dl, 1
	movzx	edx, dl
	mov	rbp, rbp
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_3251:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42bd10

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	nop	
	cmp	byte ptr [rdi + 0x1c], 0
	lea	rdi, [rdi]
	jne	.label_3252
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rdi + 0x10]
	mov	rbp, rbp
	mov	edx, dword ptr [rdi + 0x14]
	mov	rbp, rbp
	mov	eax, dword ptr [rdi + rdx*4]
	mov	rbp, rbp
	mov	dword ptr [rdi + rdx*4], ecx
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rdi + 0x14]
	lea	rsi, [rsi]
	cmp	ecx, dword ptr [rdi + 0x18]
	mov	rsp, rsp
	jne	.label_3253
	lea	rsi, [rsi]
	mov	byte ptr [rdi + 0x1c], 1
	lea	rdi, [rdi]
	ret	
.label_3253:
	add	ecx, 3
	and	ecx, 3
	lea	rsi, [rsi]
	mov	dword ptr [rdi + 0x14], ecx
	ret	
.label_3252:
	push	rax
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42bd70

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
	mov	ecx, OFFSET FLAT:.str_3
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_14
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_3254
	nop	
	mov	rax, rcx
.label_3254:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42bdb0
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	mov	rbp, rbp
	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_3255
	lea	rdi, [rdi]
	mov	edi, ebx
	call	iswcntrl
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	sete	al
	movzx	eax, al
.label_3255:
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x42bde0
	.globl mb_copy
	.type mb_copy, @function
mb_copy:

	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsi, qword ptr [rbx]
	lea	rax, [rbx + 0x18]
	mov	rbp, rbp
	cmp	rsi, rax
	mov	rsp, rsp
	jne	.label_3256
	mov	rbp, rbp
	lea	r15, [r14 + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_3256:
	mov	qword ptr [r14], rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	test	al, al
	lea	rdi, [rdi]
	mov	byte ptr [r14 + 0x10], al
	mov	rsp, rsp
	je	.label_3257
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x14], eax
.label_3257:
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x42be60
	.globl is_basic
	.type is_basic, @function
is_basic:

	mov	rsp, rsp
	mov	eax, edi
	mov	rbp, rbp
	shr	eax, 3
	mov	rsp, rsp
	and	eax, 0x1c
	mov	eax,  dword ptr [dword ptr [rax + is_basic_table]]
	nop	
	bt	eax, edi
	mov	rsp, rsp
	setb	al
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x42be90

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	nop	
	sub	rsp, 0xd8
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_3258
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x70], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x80], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x90], xmm4
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_3258:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	dl, 0x40
	je	.label_3260
	lea	rdi, [rdi]
	lea	rax, [rsp + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_3261
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	rbp, rbp
	mov	dword ptr [rsp], ecx
	jmp	.label_3259
.label_3261:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rcx
.label_3259:
	mov	ecx, dword ptr [rax]
.label_3260:
	xor	eax, eax
	call	openat
	lea	rsi, [rsi]
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42bf90

	.globl opendirat
	.type opendirat, @function
opendirat:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	push	r14
	push	rbx
	mov	r14, rcx
	mov	rsp, rsp
	or	edx, 0x90900
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rsp, rsp
	xor	eax, eax
	call	openat_safer
	lea	rsi, [rsi]
	mov	ebp, eax
	test	ebp, ebp
	js	.label_3262
	mov	rsp, rsp
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_3263
	mov	dword ptr [r14], ebp
	mov	rsp, rsp
	jmp	.label_3262
.label_3263:
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	mov	rsp, rsp
	call	close
	lea	rsi, [rsi]
	mov	dword ptr [rbx], r14d
	lea	rsi, [rsi]
	xor	ebx, ebx
.label_3262:
	nop	
	mov	rax, rbx
	mov	rsp, rsp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x42c010

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	mov	ebx, edi
	mov	rbp, rbp
	cmp	ebx, 2
	ja	.label_3264
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rax
	nop	
	mov	r15d, dword ptr [rbp]
	mov	rsp, rsp
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	rsp, rsp
	mov	eax, r14d
	jmp	.label_3265
.label_3264:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_3265:
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x42c080

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0xd0
	mov	rsp, rsp
	mov	ebx, edi
	test	al, al
	je	.label_3266
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_3266:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	nop	
	mov	qword ptr [rsp + 0x18], rcx
	nop	
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0xf0]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb0], 0x10
	lea	rsi, [rsi]
	cmp	esi, 0xb
	mov	rsp, rsp
	ja	.label_3279
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_3274
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_3273
	mov	rsp, rsp
	test	esi, esi
	jne	.label_3279
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_3278
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_3286
.label_3279:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_3272
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_3273
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_3275
.label_3274:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_3271
.label_3273:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_3277
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_3282
.label_3277:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_3282:
	mov	edx, dword ptr [rax]
.label_3267:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_3271:
	mov	ebp, eax
.label_3269:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_3275:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_3272
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_3276
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_3280
.label_3272:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_3285
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_3268
.label_3278:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_3286:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_3267
.label_3276:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_3280:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_3281
	mov	esi, 0x406
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, ebx
	mov	edx, r14d
	lea	rsi, [rsi]
	call	fcntl
	lea	rdi, [rdi]
	mov	ebp, eax
	lea	rsi, [rsi]
	test	ebp, ebp
	jns	.label_3270
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_3270
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	nop	
	mov	edx, r14d
	lea	rdi, [rdi]
	call	fcntl
	nop	
	mov	ebp, eax
	lea	rdi, [rdi]
	test	ebp, ebp
	js	.label_3269
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_3284
.label_3270:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_3269
.label_3285:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_3268:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_3271
.label_3281:
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, ebx
	nop	
	mov	edx, r14d
	lea	rsi, [rsi]
	call	fcntl
	mov	ebp, eax
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_3284:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_3269
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_3269
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_3283
	or	ecx, 1
	mov	esi, 2
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	edi, ebp
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	call	fcntl
	lea	rdi, [rdi]
	cmp	eax, -1
	jne	.label_3269
.label_3283:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	nop	
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	mov	rsp, rsp
	jmp	.label_3269
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x42c450

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
	.section .text
	.align	32
	#Procedure 0x42c470

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 3
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	rpl_fcntl
	nop	word ptr cs:[rax + rax]
	nop
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]