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
.label_3620:
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
.label_3649:
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
.label_3650:
	or	dword ptr [rsp + 0xa4], 0x40
	jmp	.label_14
.label_3651:
	mov	byte ptr [byte ptr [rip + apparent_size]],  1
	jmp	.label_14
.label_3652:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + exclude]]
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	mov	edx, 0x10000000
	mov	rsp, rsp
	call	add_exclude
	jmp	.label_14
.label_3653:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_14
.label_3654:
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0x90
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + output_block_size]],  1
	lea	rdi, [rdi]
	jmp	.label_14
.label_3655:
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
.label_3656:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	nop	
	mov	qword ptr [word ptr [rip + time_style]],  rax
	jmp	.label_14
.label_3657:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + opt_inodes]],  1
	jmp	.label_14
.label_3621:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + opt_all]],  1
	mov	rsp, rsp
	jmp	.label_14
.label_3622:
	mov	byte ptr [byte ptr [rip + apparent_size]],  1
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + output_block_size]],  1
	jmp	.label_14
.label_3623:
	nop	
	mov	byte ptr [byte ptr [rip + print_grand_total]],  1
	mov	rbp, rbp
	jmp	.label_14
.label_3624:
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
.label_3625:
	nop	
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0xb0
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + output_block_size]],  1
	mov	rbp, rbp
	jmp	.label_14
.label_3626:
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + output_block_size]],  0x400
	lea	rsi, [rsi]
	jmp	.label_14
.label_3627:
	mov	byte ptr [byte ptr [rip + opt_count_all]],  1
	jmp	.label_14
.label_3628:
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
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbx
	lea	rsi, [rsi]
	mov	r15, rdi
	call	strlen
	mov	r12, rax
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	je	.label_150
	lea	rdi, [rdi]
	test	r14, r14
	nop	
	je	.label_152
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r14
	mov	rbp, rbp
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_146:
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_144
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	lea	rsi, [rsi]
	cmp	rax, r12
	lea	rsi, [rsi]
	je	.label_151
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_149
	mov	rdi, rax
	mov	rsp, rsp
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, r13
	mov	rbp, rbp
	call	memcmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_144
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_144
.label_149:
	mov	qword ptr [rsp + 0x18], rbx
	nop	dword ptr [rax + rax]
.label_144:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	lea	rsi, [rsi]
	add	r14, r13
	test	rbp, rbp
	jne	.label_146
	nop	
	jmp	.label_145
.label_150:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], -1
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	nop	
	jmp	.label_145
.label_152:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_147:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_148
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	nop	
	cmp	rax, r12
	je	.label_151
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	rax, -1
	nop	
	cmove	rax, rbx
	mov	qword ptr [rsp + 0x18], rax
	je	.label_148
	lea	rdi, [rdi]
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	dword ptr [rax + rax]
.label_148:
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	nop	
	jne	.label_147
.label_145:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 0x18]
.label_151:
	lea	rdi, [rdi]
	mov	rax, rbx
	lea	rdi, [rdi]
	add	rsp, 0x28
	nop	
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4049a0
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
	je	.label_153
	mov	esi, OFFSET FLAT:.str.1_1
	nop	
	jmp	.label_154
.label_153:
	nop	
	mov	esi, OFFSET FLAT:.str_4
.label_154:
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
	#Procedure 0x404a40

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
	je	.label_157
	lea	rdi, [rdi]
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_159:
	test	r15, r15
	mov	rbp, rbp
	je	.label_158
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_156
.label_158:
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
	jmp	.label_155
	nop	dword ptr [rax]
.label_156:
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
.label_155:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_159
.label_157:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_160
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
.label_160:
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
	#Procedure 0x404bc0

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
	jns	.label_162
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_163
	mov	esi, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	jmp	.label_161
.label_163:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_4
.label_161:
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
.label_162:
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
	#Procedure 0x404ce0
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
	je	.label_164
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_165:
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
	je	.label_164
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_165
.label_164:
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
	#Procedure 0x404d70

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
	je	.label_166
	nop	
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	mov	qword ptr [rax + 0x20], rbx
	mov	qword ptr [rax + 0x28], rbx
	mov	rbp, rbp
	mov	rcx, rax
.label_166:
	mov	rax, rcx
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404dc0

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
	je	.label_167
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rax + 0x18], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rax + 8], xmm0
	mov	rcx, rax
.label_167:
	nop	
	mov	rax, rcx
	nop	
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e10

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
	je	.label_168
	lea	rsi, [rsi]
	lea	rdi, [rbx + 0x10]
	lea	rsi, [rbx + 0x18]
	xor	edx, edx
	mov	rsp, rsp
	call	getdelim
	test	rax, rax
	js	.label_169
	mov	dword ptr [r14], 1
	mov	rsp, rsp
	inc	qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_170
.label_168:
	mov	rax, qword ptr [rbx + 0x28]
	nop	
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_171
	mov	dword ptr [r14], 1
	mov	rax, qword ptr [rbx + 0x28]
	lea	rcx, [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x28], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	jmp	.label_170
.label_169:
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
	jmp	.label_170
.label_171:
	mov	rbp, rbp
	mov	dword ptr [r14], 2
	lea	rdi, [rdi]
	xor	eax, eax
.label_170:
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ed0

	.globl argv_iter_n_args
	.type argv_iter_n_args, @function
argv_iter_n_args:
	mov	rbp, rbp
	cmp	qword ptr [rdi], 0
	je	.label_172
	nop	
	mov	rax, qword ptr [rdi + 8]
	nop	
	ret	
.label_172:
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
	#Procedure 0x404f00

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
	je	.label_173
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
.label_173:
	mov	rdi, rbx
	lea	rdi, [rdi]
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404f30
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
	#Procedure 0x404f40
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f50

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
	je	.label_175
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_174
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_174
.label_175:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_177
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_174:
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
	jne	.label_176
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
.label_177:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_176:
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
	#Procedure 0x405050

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
	je	.label_178
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
	je	.label_179
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 8], xmm0
	lea	rsi, [rsi]
	jmp	.label_178
.label_179:
	mov	rdi, rbx
	mov	rbp, rbp
	call	free
	xor	ebx, ebx
.label_178:
	lea	rsi, [rsi]
	mov	rax, rbx
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4050c0

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
	#Procedure 0x4050e0

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
	#Procedure 0x405100

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
	#Procedure 0x405130

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
	#Procedure 0x405160

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
	je	.label_180
	cmp	qword ptr [rbx], r15
	jne	.label_182
	nop	
	mov	r15, qword ptr [rbx + 8]
	nop	
	jmp	.label_185
.label_180:
	mov	edi, 0x10
	mov	rsp, rsp
	call	malloc
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	mov	qword ptr [r12 + 0x10], rbx
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_181
.label_182:
	mov	qword ptr [rbx], r15
	mov	rdi, qword ptr [r12]
	mov	rsi, rbx
	mov	rsp, rsp
	call	hash_insert
	test	rax, rax
	je	.label_181
	nop	
	cmp	rax, rbx
	je	.label_183
	mov	rsp, rsp
	mov	r15, qword ptr [rax + 8]
	jmp	.label_186
.label_183:
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
.label_186:
	nop	
	mov	qword ptr [rbx + 8], r15
.label_185:
	lea	rsi, [rsi]
	test	r15, r15
	je	.label_181
	lea	rsi, [rsi]
	movabs	rax, 0x7ffffffffffffffe
	lea	rdi, [rdi]
	lea	rcx, [r14 - 1]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jb	.label_184
	mov	rbp, rbp
	mov	rdi, qword ptr [r12 + 8]
	mov	rbp, rbp
	test	rdi, rdi
	jne	.label_187
	inc	rax
	lea	rsi, [rsi]
	mov	rdi, rax
	call	ino_map_alloc
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 8], rdi
	test	rdi, rdi
	je	.label_181
.label_187:
	mov	rsi, r14
	nop	
	call	ino_map_insert
	mov	r14, rax
	mov	rbp, rbp
	cmp	r14, -1
	je	.label_181
.label_184:
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
.label_181:
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
	#Procedure 0x4052c0

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
	je	.label_188
	lea	rdi, [rdi]
	cmp	qword ptr [rbx], rbp
	mov	rsp, rsp
	jne	.label_195
	mov	r12, qword ptr [rbx + 8]
	jmp	.label_189
.label_188:
	mov	edi, 0x10
	mov	rbp, rbp
	call	malloc
	nop	
	mov	rbx, rax
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], rbx
	mov	r13d, 0xffffffff
	test	rbx, rbx
	je	.label_191
.label_195:
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
	je	.label_191
	lea	rsi, [rsi]
	cmp	rax, rbx
	lea	rsi, [rsi]
	je	.label_192
	nop	
	mov	r12, qword ptr [rax + 8]
	nop	
	jmp	.label_193
.label_192:
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
.label_193:
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], r12
.label_189:
	lea	rdi, [rdi]
	mov	r13d, 0xffffffff
	test	r12, r12
	je	.label_191
	movabs	rdi, 0x7ffffffffffffffe
	nop	
	lea	rax, [r14 - 1]
	mov	rbp, rbp
	cmp	rax, rdi
	lea	rdi, [rdi]
	jb	.label_194
	mov	rax, qword ptr [r15 + 8]
	mov	rbp, rbp
	test	rax, rax
	jne	.label_190
	lea	rsi, [rsi]
	inc	rdi
	lea	rsi, [rsi]
	call	ino_map_alloc
	mov	qword ptr [r15 + 8], rax
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_191
.label_190:
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, r14
	nop	
	call	ino_map_insert
	mov	r14, rax
	cmp	r14, -1
	je	.label_191
.label_194:
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
.label_191:
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
	#Procedure 0x405440

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
	#Procedure 0x405460
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
	#Procedure 0x4054b0

	.globl fnmatch_pattern_has_wildcards
	.type fnmatch_pattern_has_wildcards, @function
fnmatch_pattern_has_wildcards:
	mov	rbp, rbp
	mov	ecx, esi
	mov	rbp, rbp
	and	ecx, 0x8000000
	lea	rdi, [rdi]
	mov	eax, esi
	and	eax, 2
	test	sil, 0x20
	jne	.label_224
	test	ecx, ecx
	mov	rbp, rbp
	je	.label_199
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_229
	mov	rbp, rbp
	movabs	rax, 0x500000001
	mov	rbp, rbp
	movabs	rcx, 0x8000470000000000
	nop	dword ptr [rax]
.label_203:
	mov	rsp, rsp
	movsx	edx, byte ptr [rdi]
	cmp	edx, 0x3f
	ja	.label_196
	bt	rcx, rdx
	jb	.label_198
	test	rdx, rdx
	lea	rdi, [rdi]
	je	.label_202
.label_196:
	nop	
	inc	rdi
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x22
	ja	.label_203
	mov	rsp, rsp
	bt	rax, rdx
	jae	.label_203
	jmp	.label_198
	nop	
.label_217:
	movzx	ecx, cl
	add	rdi, rcx
.label_199:
	mov	rsp, rsp
	movsx	ecx, byte ptr [rdi]
	inc	rdi
	nop	
	cmp	ecx, 0x5a
	nop	
	jle	.label_209
	cmp	ecx, 0x5c
	mov	rbp, rbp
	jne	.label_213
	test	eax, eax
	jne	.label_215
	mov	rbp, rbp
	cmp	byte ptr [rdi], 0
	setne	cl
	lea	rsi, [rsi]
	jmp	.label_217
.label_209:
	test	ecx, ecx
	je	.label_218
	mov	rbp, rbp
	cmp	ecx, 0x2a
	je	.label_198
	nop	
	cmp	ecx, 0x3f
	jne	.label_199
	jmp	.label_198
	nop	
.label_213:
	cmp	ecx, 0x5b
	jne	.label_199
	mov	rsp, rsp
	jmp	.label_198
	nop	dword ptr [rax]
.label_215:
	xor	ecx, ecx
	jmp	.label_217
.label_224:
	mov	rbp, rbp
	test	ecx, ecx
	jne	.label_222
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_223
	mov	eax, 0x80000401
	mov	rbp, rbp
	movabs	rcx, 0x400000040000200
	jmp	.label_204
.label_201:
	lea	rdi, [rdi]
	cmp	byte ptr [rdi], 0
	mov	rsp, rsp
	setne	dl
	mov	rbp, rbp
	movzx	edx, dl
	mov	rsp, rsp
	add	rdi, rdx
	nop	word ptr cs:[rax + rax]
.label_204:
	movsx	edx, byte ptr [rdi]
	lea	rdi, [rdi]
	inc	rdi
	lea	esi, [rdx - 0x21]
	cmp	esi, 0x3b
	mov	rbp, rbp
	ja	.label_221
	lea	rsi, [rsi]
	bt	rax, rsi
	lea	rdi, [rdi]
	jb	.label_197
	cmp	rsi, 0x3b
	je	.label_201
	bt	rcx, rsi
	mov	rbp, rbp
	jb	.label_198
.label_221:
	lea	rsi, [rsi]
	test	edx, edx
	jne	.label_204
	lea	rsi, [rsi]
	jmp	.label_205
	nop	word ptr cs:[rax + rax]
.label_197:
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rdi]
	cmp	edx, 0x28
	jne	.label_204
	lea	rsi, [rsi]
	jmp	.label_198
.label_222:
	mov	rsp, rsp
	inc	rdi
	nop	
	movabs	rcx, 0x80200000000
	movabs	rdx, 0x8000470000000000
	test	eax, eax
	je	.label_212
	mov	rsp, rsp
	jmp	.label_219
	nop	word ptr [rax + rax]
.label_200:
	lea	rdi, [rdi]
	inc	rdi
.label_212:
	movsx	esi, byte ptr [rdi - 1]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	cmp	esi, 0x3f
	jg	.label_220
	mov	rbp, rbp
	mov	esi, esi
	ja	.label_200
	bt	rcx, rsi
	mov	rbp, rbp
	jb	.label_225
	mov	rsp, rsp
	bt	rdx, rsi
	mov	rsp, rsp
	jb	.label_198
	test	rsi, rsi
	jne	.label_200
	mov	rsp, rsp
	jmp	.label_214
	nop	word ptr cs:[rax + rax]
.label_220:
	mov	rsp, rsp
	cmp	esi, 0x5a
	jg	.label_227
	lea	rdi, [rdi]
	cmp	esi, 0x40
	nop	
	jne	.label_200
.label_225:
	movzx	eax, byte ptr [rdi]
	nop	
	cmp	eax, 0x28
	lea	rdi, [rdi]
	jne	.label_200
	jmp	.label_198
.label_227:
	lea	rdi, [rdi]
	cmp	esi, 0x5b
	mov	rsp, rsp
	je	.label_198
	mov	rsp, rsp
	cmp	esi, 0x7b
	je	.label_198
	nop	
	cmp	esi, 0x7d
	jne	.label_200
	jmp	.label_198
	nop	dword ptr [rax]
.label_206:
	inc	rdi
.label_219:
	mov	rsp, rsp
	movsx	esi, byte ptr [rdi - 1]
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	esi, 0x3f
	jg	.label_231
	mov	esi, esi
	ja	.label_206
	mov	rsp, rsp
	bt	rcx, rsi
	mov	rbp, rbp
	jb	.label_207
	lea	rsi, [rsi]
	bt	rdx, rsi
	jb	.label_198
	nop	
	test	rsi, rsi
	mov	rbp, rbp
	jne	.label_206
	jmp	.label_214
	nop	
.label_231:
	cmp	esi, 0x5a
	jg	.label_216
	cmp	esi, 0x40
	mov	rsp, rsp
	jne	.label_206
.label_207:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x28
	mov	rsp, rsp
	jne	.label_206
	lea	rdi, [rdi]
	jmp	.label_198
.label_216:
	cmp	esi, 0x5b
	nop	
	je	.label_198
	cmp	esi, 0x7b
	je	.label_198
	cmp	esi, 0x7d
	jne	.label_206
	nop	
	jmp	.label_198
.label_229:
	movabs	rax, 0x500000001
	movabs	rcx, 0x8000470000000000
	nop	word ptr cs:[rax + rax]
.label_210:
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rdi]
	cmp	edx, 0x3f
	ja	.label_226
	bt	rcx, rdx
	lea	rdi, [rdi]
	jb	.label_198
	test	rdx, rdx
	je	.label_230
.label_226:
	nop	
	inc	rdi
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x22
	ja	.label_210
	bt	rax, rdx
	jae	.label_210
	nop	
	jmp	.label_198
.label_223:
	inc	rdi
	mov	eax, 0x80000401
	mov	rsp, rsp
	movabs	rcx, 0x400000040000200
	lea	rsi, [rsi]
	jmp	.label_232
	nop	word ptr cs:[rax + rax]
.label_208:
	inc	rdi
.label_232:
	movsx	edx, byte ptr [rdi - 1]
	mov	rsp, rsp
	lea	esi, [rdx - 0x21]
	lea	rsi, [rsi]
	cmp	esi, 0x3a
	mov	rbp, rbp
	ja	.label_228
	lea	rsi, [rsi]
	bt	rax, rsi
	jae	.label_211
	movzx	edx, byte ptr [rdi]
	nop	
	cmp	edx, 0x28
	mov	rsp, rsp
	jne	.label_208
	jmp	.label_198
.label_211:
	mov	rbp, rbp
	bt	rcx, rsi
	jb	.label_198
.label_228:
	test	edx, edx
	mov	rbp, rbp
	jne	.label_208
	mov	rbp, rbp
	xor	eax, eax
	ret	
.label_198:
	lea	rdi, [rdi]
	mov	al, 1
.label_214:
	ret	
.label_218:
	mov	rsp, rsp
	xor	eax, eax
	ret	
.label_205:
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
.label_202:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	ret	
.label_230:
	mov	rsp, rsp
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405890

	.globl new_exclude
	.type new_exclude, @function
new_exclude:
	nop	
	mov	edi, 0x10
	jmp	xzalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058a0
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
	jmp	.label_233
	nop	dword ptr [rax]
.label_234:
	mov	rdi, r12
	mov	rbp, rbp
	call	free
.label_233:
	mov	rsp, rsp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_235
	lea	rsi, [rsi]
	mov	r12, r15
	mov	rbp, rbp
	mov	r15, qword ptr [r12]
	mov	eax, dword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_239
	cmp	eax, 1
	jne	.label_234
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x20]
	nop	
	test	rax, rax
	je	.label_240
	mov	rbp, rbp
	mov	ebx, 8
	mov	rsp, rsp
	xor	r13d, r13d
	nop	word ptr [rax + rax]
.label_241:
	mov	rdi, qword ptr [r12 + 0x10]
	nop	
	test	byte ptr [rdi + rbx - 5], 8
	je	.label_236
	mov	rsp, rsp
	add	rdi, rbx
	call	rpl_regfree
	mov	rax, qword ptr [r12 + 0x20]
.label_236:
	lea	rsi, [rsi]
	inc	r13
	add	rbx, 0x48
	cmp	r13, rax
	jb	.label_241
.label_240:
	nop	
	mov	rdi, qword ptr [r12 + 0x10]
	nop	
	call	free
	jmp	.label_234
	nop	dword ptr [rax]
.label_239:
	mov	rdi, qword ptr [r12 + 0x10]
	call	hash_free
	mov	rbp, rbp
	jmp	.label_234
.label_235:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_237
	nop	
.label_238:
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
	jne	.label_238
.label_237:
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
	#Procedure 0x4059d0
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
	jne	.label_243
	nop	
	mov	dl, byte ptr [rbx]
	test	ecx, ecx
	setne	cl
	test	dl, dl
	je	.label_243
	lea	rdi, [rdi]
	test	cl, cl
	lea	rdi, [rdi]
	je	.label_243
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_244:
	lea	rsi, [rsi]
	movzx	ecx, dl
	nop	
	cmp	ecx, 0x2f
	jne	.label_242
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x2f
	je	.label_242
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
.label_242:
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_243
	mov	rbp, rbp
	mov	dl, byte ptr [rbx]
	mov	rbp, rbp
	inc	rbx
	test	dl, dl
	jne	.label_244
.label_243:
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
	#Procedure 0x405ab0

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
	jne	.label_248
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rsi, r14
	add	rsp, 8
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_250
	nop	
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	nop	
	jmp	mbscasecmp
.label_248:
	nop	
	test	eax, eax
	je	.label_245
	mov	rsp, rsp
	mov	rdi, r14
	call	xstrdup
	lea	rsi, [rsi]
	mov	r14, rax
	mov	esi, 0x2f
	mov	rdi, r14
	jmp	.label_252
.label_251:
	mov	rsp, rsp
	mov	byte ptr [rbx], 0x2f
	nop	
	inc	rbx
	mov	esi, 0x2f
	mov	rdi, rbx
.label_252:
	mov	rbp, rbp
	call	strchr
	mov	rbx, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_249
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
	jg	.label_251
	lea	rdi, [rdi]
	jmp	.label_247
.label_250:
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	jmp	strcmp
.label_245:
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
	jne	.label_246
	nop	
	movsx	eax, byte ptr [r14 + rbx]
	lea	rsi, [rsi]
	xor	ebp, ebp
	cmp	eax, 0x2f
	lea	rsi, [rsi]
	cmovne	ebp, eax
	jmp	.label_246
.label_249:
	mov	rbp, rbp
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r14
	call	mbscasecmp
	mov	ebp, eax
.label_247:
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	call	free
.label_246:
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
	#Procedure 0x405c00

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
	sub	rsp, 0x28
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi]
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_253
	lea	rdi, [rdi]
	lea	rcx, [rsi + 1]
	nop	
	mov	qword ptr [rsp + 0x18], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rsi
	lea	rsi, [rsi]
	xor	r15d, r15d
.label_274:
	mov	r14, rax
	mov	rax, qword ptr [r14 + 8]
	test	eax, eax
	je	.label_267
	mov	rbx, qword ptr [r14 + 0x20]
	nop	
	mov	qword ptr [rsp + 8], rbx
	test	rbx, rbx
	je	.label_259
	lea	rsi, [rsi]
	mov	qword ptr [rsp], r15
	mov	qword ptr [rsp + 0x20], r14
	mov	r14, qword ptr [r14 + 0x10]
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_273:
	lea	rax, [r15 + r15*8]
	mov	rsp, rsp
	mov	ebp, dword ptr [r14 + rax*8]
	mov	rsp, rsp
	test	ebp, 0x8000000
	lea	rdi, [r14 + rax*8 + 8]
	jne	.label_254
	nop	
	mov	r12, qword ptr [rdi]
	test	ebp, 0x10000000
	lea	rdi, [rdi]
	mov	r13d, OFFSET FLAT:fnmatch_no_wildcards
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:fnmatch
	cmovne	r13, rax
	mov	rbp, rbp
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	edx, ebp
	call	r13
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	test	ebp, 0x40000000
	jne	.label_264
	lea	rsi, [rsi]
	mov	dl, byte ptr [rbx]
	test	eax, eax
	nop	
	setne	al
	test	dl, dl
	mov	rbp, rbp
	je	.label_264
	nop	
	test	al, al
	mov	rbx, qword ptr [rsp + 0x18]
	je	.label_264
	nop	word ptr cs:[rax + rax]
.label_268:
	movzx	eax, dl
	nop	
	cmp	eax, 0x2f
	jne	.label_256
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx]
	nop	
	cmp	eax, 0x2f
	je	.label_256
	mov	rdi, r12
	nop	
	mov	rsi, rbx
	mov	edx, ebp
	mov	rsp, rsp
	call	r13
	mov	rsp, rsp
	test	eax, eax
	nop	
	sete	cl
.label_256:
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_264
	mov	dl, byte ptr [rbx]
	lea	rdi, [rdi]
	inc	rbx
	test	dl, dl
	mov	rbp, rbp
	jne	.label_268
	nop	word ptr cs:[rax + rax]
.label_264:
	xor	r13d, r13d
	test	cl, 1
	mov	rbx, qword ptr [rsp + 8]
	nop	
	je	.label_266
	lea	rsi, [rsi]
	jmp	.label_260
	nop	word ptr cs:[rax + rax]
.label_254:
	nop	
	xor	r13d, r13d
	nop	
	xor	edx, edx
	mov	rsp, rsp
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rsi, qword ptr [rsp + 0x10]
	call	rpl_regexec
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_260
.label_266:
	inc	r15
	nop	
	cmp	r15, rbx
	nop	
	jb	.label_273
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp]
	mov	rsp, rsp
	jmp	.label_259
	nop	word ptr cs:[rax + rax]
.label_267:
	lea	rsi, [rsi]
	test	r15, r15
	je	.label_271
	lea	rdi, [rdi]
	shr	rax, 0x20
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_272
.label_271:
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x10]
	nop	
	mov	rdi, rbx
	call	strlen
	lea	rdi, [rax + 1]
	call	xmalloc
	mov	rsp, rsp
	mov	r15, rax
	mov	eax, dword ptr [r14 + 0xc]
.label_272:
	mov	rsp, rsp
	mov	r12, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	mov	ecx, eax
	and	ecx, 0x40000000
	test	al, 8
	nop	
	jne	.label_270
	test	ecx, ecx
	mov	rsp, rsp
	mov	rbp, rbx
	mov	qword ptr [rsp + 0x10], rbx
	jne	.label_262
	nop	word ptr [rax + rax]
.label_275:
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, rbp
	nop	
	call	strcpy
	nop	
	mov	rdi, r12
	mov	rsi, r15
	mov	rsp, rsp
	call	hash_lookup
	xor	r13d, r13d
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_263
	mov	esi, 0x2f
	nop	
	mov	rdi, rbp
	call	strchr
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	lea	rbp, [rax + 1]
	lea	rsi, [rsi]
	jne	.label_275
	jmp	.label_259
.label_270:
	lea	rdi, [rdi]
	test	ecx, ecx
	mov	rbp, rbx
	jne	.label_257
.label_261:
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rbp, rbp
	call	strcpy
	mov	rdi, r12
	nop	
	mov	rsi, r15
	lea	rdi, [rdi]
	call	hash_lookup
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_265
	nop	dword ptr [rax + rax]
.label_276:
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, r15
	call	hash_lookup
.label_265:
	test	rax, rax
	jne	.label_263
	mov	esi, 0x2f
	mov	rbp, rbp
	mov	rdi, r15
	call	strrchr
	test	rax, rax
	mov	rbp, rbp
	jne	.label_276
	mov	rsp, rsp
	mov	esi, 0x2f
	lea	rdi, [rdi]
	mov	rdi, rbp
	call	strchr
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	lea	rbp, [rax + 1]
	jne	.label_261
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rbx
	jmp	.label_259
.label_262:
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x10]
	call	strcpy
	mov	rsp, rsp
	mov	rdi, r12
	mov	rsi, r15
	mov	rsp, rsp
	call	hash_lookup
	xor	r13d, r13d
	test	rax, rax
	je	.label_259
	mov	rbp, rbp
	jmp	.label_263
.label_257:
	mov	rdi, r15
	mov	rsi, rbx
	mov	qword ptr [rsp + 0x10], rbx
	lea	rsi, [rsi]
	call	strcpy
	mov	rdi, r12
	mov	rsi, r15
	lea	rdi, [rdi]
	call	hash_lookup
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_255
	nop	word ptr cs:[rax + rax]
.label_269:
	mov	byte ptr [rax], 0
	mov	rdi, r12
	mov	rsi, r15
	mov	rsp, rsp
	call	hash_lookup
.label_255:
	lea	rsi, [rsi]
	test	rax, rax
	jne	.label_263
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, r15
	lea	rdi, [rdi]
	call	strrchr
	test	rax, rax
	mov	rbp, rbp
	jne	.label_269
	nop	word ptr cs:[rax + rax]
.label_259:
	nop	
	mov	rax, qword ptr [r14]
	mov	r13d, 1
	test	rax, rax
	jne	.label_274
	lea	rdi, [rdi]
	jmp	.label_263
.label_253:
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_258
.label_260:
	mov	r14, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	r15, qword ptr [rsp]
.label_263:
	lea	rdi, [rdi]
	mov	rdi, r15
	call	free
	mov	eax, dword ptr [r14 + 0xc]
	lea	rdi, [rdi]
	shr	eax, 0x1d
	nop	
	not	eax
	and	eax, 1
	lea	rsi, [rsi]
	cmp	r13d, eax
	setne	al
.label_258:
	add	rsp, 0x28
	pop	rbx
	nop	
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406050

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
	mov	r14, rsi
	mov	r15, rdi
	test	r13d, 0x18000000
	lea	rsi, [rsi]
	je	.label_280
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	esi, r13d
	mov	rsp, rsp
	call	fnmatch_pattern_has_wildcards
	lea	rsi, [rsi]
	test	al, al
	lea	rdi, [rdi]
	je	.label_280
	mov	rsp, rsp
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_289
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 8]
	cmp	eax, 1
	jne	.label_289
	lea	rsi, [rsi]
	shr	rax, 0x20
	mov	rbp, rbp
	xor	eax, r13d
	mov	rbp, rbp
	test	eax, 0x20000000
	lea	rsi, [rsi]
	je	.label_291
.label_289:
	mov	edi, 0x28
	mov	rsp, rsp
	call	xzalloc
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 8], 1
	mov	rsp, rsp
	mov	dword ptr [rbx + 0xc], r13d
	mov	rax, qword ptr [r15]
	mov	qword ptr [rbx], rax
	nop	
	mov	qword ptr [r15], rbx
.label_291:
	mov	rax, qword ptr [rbx + 0x20]
	cmp	rax, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	jne	.label_277
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x10]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_279
	movabs	rcx, 0x12f684bda12f684
	mov	rbp, rbp
	cmp	rax, rcx
	jae	.label_285
	mov	rbp, rbp
	mov	rcx, rax
	shr	rcx, 1
	lea	rcx, [rax + rcx + 1]
	jmp	.label_290
.label_280:
	nop	
	mov	rbx, qword ptr [r15]
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_292
	mov	rax, qword ptr [rbx + 8]
	nop	
	test	eax, eax
	mov	rbp, rbp
	jne	.label_292
	mov	rsp, rsp
	shr	rax, 0x20
	mov	rsp, rsp
	xor	eax, r13d
	nop	
	test	eax, 0x60000018
	mov	rsp, rsp
	je	.label_296
.label_292:
	mov	edi, 0x28
	mov	rbp, rbp
	call	xzalloc
	mov	rbp, rbp
	mov	rbx, rax
	mov	rbp, rbp
	mov	dword ptr [rbx + 8], 0
	mov	dword ptr [rbx + 0xc], r13d
	nop	
	mov	eax, r13d
	and	eax, 0x10
	shr	eax, 4
	mov	eax, OFFSET FLAT:string_hasher_ci
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:string_hasher
	nop	
	cmovne	rdx, rax
	mov	eax, OFFSET FLAT:string_compare_ci
	mov	ecx, OFFSET FLAT:string_compare
	cmovne	rcx, rax
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:string_free
	call	hash_initialize
	mov	qword ptr [rbx + 0x10], rax
	mov	rax, qword ptr [r15]
	mov	qword ptr [rbx], rax
	mov	qword ptr [r15], rbx
.label_296:
	mov	rsp, rsp
	mov	rdi, r14
	call	xstrdup
	lea	rsi, [rsi]
	mov	rbp, rax
	nop	
	and	r13d, 0x10000002
	cmp	r13d, 0x10000000
	lea	rdi, [rdi]
	jne	.label_298
	lea	rsi, [rsi]
	mov	rax, rbp
	mov	rcx, rbp
	nop	dword ptr [rax + rax]
.label_293:
	movzx	edx, byte ptr [rcx]
	mov	rbp, rbp
	cmp	edx, 0x5c
	lea	rsi, [rsi]
	jne	.label_284
	mov	rbp, rbp
	cmp	byte ptr [rcx + 1], 0
	setne	sil
	movzx	edx, sil
	mov	rbp, rbp
	mov	dl, byte ptr [rcx + rdx]
	lea	rdi, [rdi]
	jmp	.label_288
	nop	dword ptr [rax + rax]
.label_284:
	xor	esi, esi
.label_288:
	mov	rbp, rbp
	movzx	esi, sil
	lea	rcx, [rcx + rsi + 1]
	lea	rdi, [rdi]
	mov	byte ptr [rax], dl
	lea	rsi, [rsi]
	inc	rax
	test	dl, dl
	nop	
	jne	.label_293
.label_298:
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rsi, rbp
	call	hash_insert
	lea	rdi, [rdi]
	cmp	rax, rbp
	je	.label_278
	mov	rdi, rbp
	add	rsp, 0x18
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	jmp	free
.label_277:
	mov	rbp, qword ptr [rbx + 0x10]
	jmp	.label_294
.label_279:
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	mov	ecx, 1
	mov	rsp, rsp
	cmovne	rcx, rax
	movabs	rax, 0x1c71c71c71c71c8
	cmp	rcx, rax
	jae	.label_286
.label_290:
	mov	qword ptr [rbx + 0x18], rcx
	shl	rcx, 3
	lea	rsi, [rsi]
	lea	rsi, [rcx + rcx*8]
	nop	
	call	xrealloc
	mov	rbp, rax
	mov	qword ptr [rbx + 0x10], rbp
	mov	rax, qword ptr [rbx + 0x20]
.label_294:
	lea	r12, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x20], r12
	mov	rsp, rsp
	lea	rax, [rax + rax*8]
	mov	dword ptr [rbp + rax*8], r13d
	mov	rbp, rbp
	test	r13d, 0x8000000
	jne	.label_297
	mov	rbx, rax
	test	r13d, 0x4000000
	mov	rbp, rbp
	je	.label_281
	mov	rsp, rsp
	mov	rdi, r14
	call	xstrdup
	mov	rbp, rbp
	mov	r14, rax
	lea	rsi, [rsi]
	mov	edi, 0x10
	call	xmalloc
	nop	
	mov	qword ptr [rax + 8], r14
	nop	
	mov	rcx, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 8], rax
.label_281:
	mov	rbp, rbp
	mov	qword ptr [rbp + rbx*8 + 8], r14
	jmp	.label_278
.label_297:
	mov	rbp, rbp
	mov	r15d, r13d
	lea	rsi, [rsi]
	shr	r15d, 3
	mov	rsp, rsp
	and	r15d, 2
	lea	rdi, [rdi]
	or	r15d, 9
	test	r13b, 8
	jne	.label_295
	lea	rdi, [rbp + rax*8 + 8]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	edx, r15d
	call	rpl_regcomp
	mov	ebp, eax
	jmp	.label_282
.label_295:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], rbp
	mov	rdi, r14
	nop	
	call	strlen
	mov	rsp, rsp
	mov	rbp, rax
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_283:
	cmp	rbp, 1
	je	.label_287
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r14 + rbp - 2]
	lea	rdi, [rdi]
	dec	rbp
	mov	rsp, rsp
	cmp	eax, 0x2f
	lea	rsi, [rsi]
	je	.label_283
	lea	rsi, [rsi]
	lea	rdi, [rbp + 7]
	lea	rsi, [rsi]
	call	xmalloc
	mov	r13, rax
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r14
	mov	rdx, rbp
	mov	rbp, rbp
	call	memcpy
	lea	rsi, [rsi]
	mov	byte ptr [r13 + rbp + 6], 0
	lea	rdi, [rdi]
	mov	word ptr [r13 + rbp + 4], 0x3f29
	mov	dword ptr [r13 + rbp], 0x2a2e2f28
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	lea	rdi, [rax + rcx*8 + 8]
	mov	rsi, r13
	mov	edx, r15d
	mov	rsp, rsp
	call	rpl_regcomp
	mov	rbp, rbp
	mov	ebp, eax
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	call	free
.label_282:
	mov	rbp, rbp
	test	ebp, ebp
	je	.label_278
	lea	rsi, [rsi]
	mov	r12, qword ptr [rbx + 0x20]
.label_287:
	lea	rdi, [rdi]
	dec	r12
	nop	
	mov	qword ptr [rbx + 0x20], r12
.label_278:
	add	rsp, 0x18
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_285:
	call	xalloc_die
.label_286:
	nop	
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4064b0

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
	jmp	.label_311
.label_299:
	lea	rsi, [rsi]
	mov	byte ptr [rbp + r13], r15b
	nop	
	inc	r13
.label_311:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 8]
	cmp	rax, qword ptr [r12 + 0x10]
	jae	.label_301
	nop	
	lea	rcx, [rax + 1]
	mov	qword ptr [r12 + 8], rcx
	mov	rbp, rbp
	movzx	r15d, byte ptr [rax]
.label_303:
	mov	rbp, rbp
	cmp	r13, qword ptr [rsp + 0x18]
	jne	.label_299
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rsi, rbx
	call	x2realloc
	mov	rbp, rax
	jmp	.label_299
.label_301:
	mov	rdi, r12
	lea	rsi, [rsi]
	call	__uflow
	mov	r15d, eax
	cmp	r15d, -1
	jne	.label_303
	xor	eax, eax
	lea	rsi, [rsi]
	test	byte ptr [r12], 0x20
	mov	rsp, rsp
	je	.label_306
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	eax, dword ptr [rax]
.label_306:
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
	je	.label_300
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r13 + rbp - 1]
	movzx	ecx, r12b
	lea	rsi, [rsi]
	cmp	eax, ecx
	setne	al
	mov	rsp, rsp
	jmp	.label_310
.label_300:
	xor	eax, eax
.label_310:
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
	jae	.label_305
	lea	rsi, [rsi]
	movzx	r12d, r12b
	add	r13, r15
	mov	r15, rbp
	nop	
	add	r15, r13
	mov	rbx, rbp
	nop	word ptr cs:[rax + rax]
.label_309:
	movzx	eax, byte ptr [rbp]
	cmp	eax, r12d
	lea	rdi, [rdi]
	jne	.label_307
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	test	byte ptr [rax + r12*2 + 1], 0x20
	mov	rbp, rbp
	mov	rcx, rbp
	mov	rdx, rbp
	lea	rsi, [rsi]
	je	.label_312
	nop	dword ptr [rax]
.label_304:
	mov	rbp, rbp
	cmp	rbx, rcx
	je	.label_302
	mov	rbp, rbp
	movzx	esi, byte ptr [rcx - 1]
	mov	rbp, rbp
	mov	rdx, rcx
	nop	
	dec	rcx
	test	byte ptr [rax + rsi*2 + 1], 0x20
	lea	rdi, [rdi]
	jne	.label_304
.label_312:
	mov	rsp, rsp
	mov	byte ptr [rdx], 0
	mov	rdi, r14
	mov	rsi, rbx
	mov	edx, dword ptr [rsp + 0x14]
	mov	rcx, qword ptr [rsp + 0x20]
	call	qword ptr [rsp + 8]
.label_302:
	mov	rsp, rsp
	inc	rbp
	lea	rsi, [rsi]
	mov	rbx, rbp
	lea	rsi, [rsi]
	jmp	.label_308
	nop	dword ptr [rax]
.label_307:
	nop	
	inc	rbp
.label_308:
	cmp	rbp, r15
	jne	.label_309
.label_305:
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
	#Procedure 0x4066e0

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
	jne	.label_313
	cmp	byte ptr [rdx + 1], 0
	je	.label_314
.label_313:
	mov	esi, OFFSET FLAT:.str.1_0
	mov	rdi, rdx
	call	fopen
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_315
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
	jmp	.label_315
.label_314:
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
.label_315:
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
	#Procedure 0x4067c0

	.globl call_addfn
	.type call_addfn, @function
call_addfn:
	mov	rax, qword ptr [rcx]
	mov	rsp, rsp
	jmp	rax
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4067d0

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
	je	.label_319
	mov	rbp, rbp
	test	edi, edi
	mov	rsp, rsp
	je	.label_317
.label_319:
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	r15, [rsp]
	nop	word ptr [rax + rax]
.label_318:
	mov	rbp, rbp
	test	al, al
	je	.label_316
	lea	rsi, [rsi]
	call	towlower
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x10]
	jmp	.label_320
	nop	dword ptr [rax]
.label_316:
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	movsx	eax, byte ptr [rcx]
.label_320:
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
	je	.label_318
	test	edi, edi
	nop	
	jne	.label_318
.label_317:
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
	#Procedure 0x4068e0

	.globl string_hasher
	.type string_hasher, @function
string_hasher:
	jmp	hash_string
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068f0

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
	#Procedure 0x406910

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
	#Procedure 0x406930

	.globl string_free
	.type string_free, @function
string_free:
	jmp	free
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406940

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
	#Procedure 0x406970

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
	sub	rsp, 0x4a8
	mov	dword ptr [rsp + 0x84], r8d
	mov	dword ptr [rsp + 0x94], ecx
	mov	qword ptr [rsp + 0x48], rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	qword ptr [rsp + 0x70], rdi
	mov	eax, dword ptr [rdx + 8]
	mov	rcx, qword ptr [rdx + 0x30]
	nop	
	test	rcx, rcx
	mov	edx, OFFSET FLAT:.str_3
	mov	rbp, rbp
	cmovne	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	rbp, rbp
	mov	edx, 0xc
	cmovne	edx, eax
	nop	
	cmp	eax, 0xc
	mov	rsp, rsp
	cmovg	edx, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x80], edx
	nop	
	mov	al, byte ptr [r13]
	lea	rdi, [rdi]
	test	al, al
	lea	rsi, [rsi]
	mov	ebp, 0
	lea	rdi, [rdi]
	je	.label_355
	lea	rcx, [rsp + 0x20]
	mov	rdx, -0x17
	sub	rdx, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rdx
	nop	
	movabs	rdi, 0x1000000000002500
	nop	
	xor	ebp, ebp
	jmp	.label_415
.label_398:
	mov	rbp, rbp
	mov	esi, 3
	jmp	.label_425
	nop	
.label_415:
	nop	
	movzx	ecx, al
	xor	r12d, r12d
	cmp	ecx, 0x25
	jne	.label_427
	nop	
	mov	qword ptr [rsp + 0x68], rbp
	mov	eax, dword ptr [rsp + 0x94]
	mov	r15b, al
	xor	ebp, ebp
	lea	rsi, [rsi]
	jmp	.label_430
	nop	word ptr cs:[rax + rax]
.label_427:
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
	mov	rdx, rbp
	not	rdx
	cmp	rbx, rdx
	jae	.label_337
	mov	r14, qword ptr [rsp + 0x70]
	test	r14, r14
	je	.label_440
	mov	rsp, rsp
	mov	r15, rdi
	lea	rdi, [rdi]
	cmp	ecx, 2
	lea	rdi, [rdi]
	jb	.label_441
	cmp	r9d, 1
	je	.label_441
	mov	r12, rbp
	movsxd	rbp, r9d
	lea	rsi, [rsi]
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_451:
	mov	edi, 0x20
	mov	rbp, rbp
	mov	rsi, r14
	nop	
	call	fputc
	mov	rbp, rbp
	dec	rbp
	jne	.label_451
	mov	rsp, rsp
	mov	al, byte ptr [r13]
	mov	rbp, r12
.label_441:
	movsx	edi, al
	mov	rsi, r14
	call	fputc
	mov	rdi, r15
.label_440:
	add	rbp, rbx
	jmp	.label_334
	nop	dword ptr [rax]
.label_465:
	nop	
	mov	r12b, 1
	mov	rsp, rsp
	mov	al, r15b
	lea	rdi, [rdi]
	jmp	.label_430
	nop	
.label_464:
	inc	r13
	mov	ebp, edx
.label_468:
	mov	cl, byte ptr [r13]
	mov	rbp, rbp
	movsx	edx, cl
	lea	esi, [rdx - 0x23]
	nop	
	cmp	esi, 0x3c
	mov	rbp, rbp
	ja	.label_460
	lea	rdi, [rdi]
	bt	rdi, rsi
	jb	.label_464
	mov	al, 1
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_465
	mov	rbp, rbp
	cmp	rsi, 0x3b
	mov	rbp, rbp
	jne	.label_460
.label_430:
	mov	r15b, al
	inc	r13
	jmp	.label_468
	nop	word ptr cs:[rax + rax]
.label_460:
	add	edx, -0x30
	xor	eax, eax
	cmp	edx, 9
	ja	.label_473
	nop	word ptr [rax + rax]
.label_482:
	mov	rsp, rsp
	mov	r9d, 0x7fffffff
	lea	rdi, [rdi]
	cmp	eax, 0xccccccc
	lea	rsi, [rsi]
	jg	.label_475
	movsx	ecx, cl
	lea	rsi, [rsi]
	cmp	eax, 0xccccccc
	mov	rbp, rbp
	jne	.label_480
	lea	rsi, [rsi]
	lea	edx, [rcx - 0x30]
	mov	rsp, rsp
	cmp	edx, 7
	mov	rsp, rsp
	jg	.label_475
.label_480:
	lea	eax, [rax + rax*4]
	lea	rsi, [rsi]
	lea	r9d, [rcx + rax*2 - 0x30]
.label_475:
	mov	rbp, rbp
	movsx	ecx, byte ptr [r13 + 1]
	inc	r13
	nop	
	mov	eax, ecx
	lea	rdi, [rdi]
	add	eax, -0x30
	nop	
	cmp	eax, 0xa
	mov	eax, r9d
	mov	rbp, rbp
	jb	.label_482
.label_473:
	lea	rsi, [rsi]
	movsx	r10d, cl
	cmp	r10d, 0x4f
	je	.label_487
	lea	rsi, [rsi]
	cmp	r10d, 0x45
	mov	rsp, rsp
	jne	.label_491
.label_487:
	mov	cl, byte ptr [r13 + 1]
	inc	r13
	jmp	.label_324
.label_491:
	xor	r10d, r10d
.label_324:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.3_1
	movsx	r8d, cl
	mov	rbp, rbp
	xor	edx, edx
	mov	edi, 1
	nop	
	lea	ebx, [r8 - 0x25]
	cmp	ebx, 0x55
	ja	.label_329
	mov	dword ptr [rsp + 0x18], r9d
	lea	rdi, [rdi]
	mov	r9b, 0x72
	mov	r14d, 0xffffffff
	lea	rsi, [rsi]
	xor	r11d, r11d
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_338]]
.label_3587:
	nop	
	cmp	r10d, 0x45
	lea	rsi, [rsi]
	je	.label_323
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	r9d, dword ptr [rsi + 0x14]
	mov	edx, dword ptr [rsi + 0x18]
	mov	rbp, rbp
	mov	eax, r9d
	nop	
	sar	eax, 0x1f
	and	eax, 0x190
	lea	r11d, [r9 + rax - 0x64]
	nop	
	mov	ebx, dword ptr [rsi + 0x1c]
	lea	esi, [rbx + 0x17e]
	lea	rsi, [rsi]
	sub	esi, edx
	movsxd	rsi, esi
	lea	rdi, [rdi]
	imul	rdi, rsi, -0x6db6db6d
	mov	rsp, rsp
	shr	rdi, 0x20
	add	edi, esi
	mov	eax, edi
	shr	eax, 0x1f
	sar	edi, 2
	add	edi, eax
	lea	rsi, [rsi]
	lea	eax, [rdi*8]
	sub	eax, edi
	sub	esi, eax
	lea	r12d, [rbx + 3]
	mov	rbp, rbp
	sub	r12d, esi
	lea	rdi, [rdi]
	js	.label_347
	mov	rsp, rsp
	mov	esi, 0x16d
	test	r11b, 3
	mov	rsp, rsp
	jne	.label_382
	nop	
	movsxd	rax, r11d
	imul	rax, rax, 0x51eb851f
	mov	rsi, rax
	lea	rsi, [rsi]
	sar	rsi, 0x25
	mov	rsp, rsp
	mov	r14, rax
	nop	
	shr	r14, 0x3f
	add	esi, r14d
	lea	rsi, [rsi]
	imul	esi, esi, 0x64
	sar	rax, 0x27
	lea	rdi, [rdi]
	add	eax, r14d
	nop	
	imul	eax, eax, 0x190
	cmp	r11d, eax
	sete	al
	mov	rbp, rbp
	movzx	eax, al
	add	eax, 0x16d
	lea	rdi, [rdi]
	cmp	r11d, esi
	mov	rbp, rbp
	mov	esi, 0x16e
	cmove	esi, eax
.label_382:
	sub	ebx, esi
	lea	eax, [rbx + 0x17e]
	sub	eax, edx
	lea	rsi, [rsi]
	cdqe	
	imul	rsi, rax, -0x6db6db6d
	shr	rsi, 0x20
	add	esi, eax
	mov	rsp, rsp
	mov	edi, esi
	lea	rdi, [rdi]
	shr	edi, 0x1f
	sar	esi, 2
	nop	
	add	esi, edi
	lea	edi, [rsi*8]
	sub	edi, esi
	sub	eax, edi
	mov	rbp, rbp
	add	ebx, 3
	nop	
	sub	ebx, eax
	cmovns	r12d, ebx
	shr	ebx, 0x1f
	xor	ebx, 1
	lea	rdi, [rdi]
	jmp	.label_381
	nop	word ptr cs:[rax + rax]
.label_397:
	inc	rdi
.label_3581:
	mov	rsp, rsp
	movzx	eax, byte ptr [r13 + rdi]
	nop	
	cmp	eax, 0x3a
	mov	rbp, rbp
	je	.label_397
	mov	rbp, rbp
	movzx	eax, al
	nop	
	cmp	eax, 0x7a
	lea	rsi, [rsi]
	jne	.label_323
	add	r13, rdi
	mov	rdx, rdi
.label_3618:
	mov	rsp, rsp
	mov	rsi, rdx
	mov	r11, qword ptr [rsp + 0x48]
	cmp	dword ptr [r11 + 0x20], 0
	js	.label_406
	mov	rsp, rsp
	mov	eax, dword ptr [r11 + 0x28]
	mov	r8b, 1
	mov	rbp, rbp
	test	eax, eax
	js	.label_418
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_414
	xor	r8d, r8d
	mov	rsp, rsp
	jmp	.label_418
.label_3601:
	lea	rsi, [rsi]
	test	r12b, r12b
	je	.label_421
	mov	r15b, 1
.label_421:
	xor	r11d, r11d
	cmp	r10d, 0x45
	mov	rbp, rbp
	je	.label_323
	lea	rdi, [rdi]
	mov	r9b, cl
	nop	
	jmp	.label_346
.label_329:
	lea	rsi, [rsi]
	test	r8d, r8d
	jne	.label_429
	mov	dword ptr [rsp + 0x18], r9d
	mov	rsp, rsp
	dec	r13
	jmp	.label_323
.label_3580:
	test	r10d, r10d
	jne	.label_323
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, dword ptr [rsp + 0x18]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	mov	rbp, rbp
	cmp	ecx, 1
	mov	r14d, 1
	lea	rsi, [rsi]
	cmova	r14, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	not	rcx
	cmp	r14, rcx
	jae	.label_337
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x70]
	test	r12, r12
	je	.label_402
	cmp	eax, 2
	jb	.label_340
	movsxd	rbx, edx
	mov	rbp, rbp
	lea	r15, [rbx - 1]
	mov	rbp, rbp
	cmp	ebp, 0x30
	je	.label_445
	cmp	ebp, 0x2b
	lea	rsi, [rsi]
	jne	.label_449
.label_445:
	lea	rsi, [rsi]
	test	r15, r15
	mov	rsp, rsp
	je	.label_340
	dec	rbx
.label_455:
	mov	rbp, rbp
	mov	edi, 0x30
	lea	rsi, [rsi]
	mov	rsi, r12
	call	fputc
	dec	rbx
	nop	
	jne	.label_455
	mov	rsp, rsp
	jmp	.label_340
.label_3582:
	test	r10d, r10d
	lea	rsi, [rsi]
	jne	.label_323
	mov	rbp, rbp
	test	r12b, r12b
	nop	
	je	.label_456
	nop	
	mov	r15b, 1
.label_456:
	xor	r11d, r11d
	nop	
	mov	r9b, 0x41
	jmp	.label_346
.label_3583:
	cmp	r10d, 0x45
	je	.label_323
	lea	rdi, [rdi]
	test	r12b, r12b
	lea	rsi, [rsi]
	je	.label_462
	nop	
	mov	r15b, 1
.label_462:
	xor	r11d, r11d
	mov	r9b, 0x42
	jmp	.label_346
.label_3584:
	cmp	r10d, 0x45
	lea	rsi, [rsi]
	jne	.label_467
	xor	r11d, r11d
	mov	r9b, 0x43
	nop	
	jmp	.label_346
.label_3585:
	mov	esi, OFFSET FLAT:.str.1_3
	test	r10d, r10d
	jne	.label_323
	jmp	.label_331
.label_3586:
	lea	rsi, [rsi]
	test	r10d, r10d
	jne	.label_323
	mov	esi, OFFSET FLAT:.str.2_0
	test	ebp, ebp
	mov	r14d, dword ptr [rsp + 0x18]
	mov	rsp, rsp
	jne	.label_476
	mov	rsp, rsp
	test	r14d, r14d
	jns	.label_476
	nop	
	mov	ebp, 0x2b
	mov	rsp, rsp
	mov	r14d, 4
	jmp	.label_331
.label_3588:
	cmp	r10d, 0x45
	mov	rbp, rbp
	je	.label_323
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [r11 + 8]
	jmp	.label_326
.label_3589:
	cmp	r10d, 0x45
	lea	rsi, [rsi]
	je	.label_323
	mov	esi, 2
	mov	eax, dword ptr [rsp + 0x80]
	lea	rsi, [rsi]
	jmp	.label_488
.label_3590:
	cmp	r10d, 0x45
	je	.label_323
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	edx, dword ptr [r11 + 4]
	mov	rsp, rsp
	jmp	.label_326
.label_3591:
	lea	rdi, [rdi]
	cmp	r10d, 0x45
	lea	rsi, [rsi]
	je	.label_323
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + 0x18]
	cmp	esi, -1
	je	.label_336
	cmp	esi, 8
	lea	rdi, [rdi]
	jg	.label_342
	mov	edi, 9
	sub	edi, esi
	mov	rsp, rsp
	mov	eax, 8
	lea	rdi, [rdi]
	sub	eax, esi
	test	dil, 3
	mov	edx, dword ptr [rsp + 0x4e8]
	mov	ebx, esi
	mov	rbp, rbp
	je	.label_413
	and	edi, 3
	neg	edi
	mov	edx, dword ptr [rsp + 0x4e8]
	nop	
	mov	ebx, esi
	nop	dword ptr [rax]
.label_350:
	movsxd	rdx, edx
	mov	rsp, rsp
	imul	rdx, rdx, 0x66666667
	mov	rsi, rdx
	lea	rdi, [rdi]
	shr	rsi, 0x3f
	mov	rbp, rbp
	sar	rdx, 0x22
	add	edx, esi
	inc	ebx
	mov	rbp, rbp
	inc	edi
	lea	rsi, [rsi]
	jne	.label_350
.label_413:
	nop	
	cmp	eax, 3
	mov	r11, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	jb	.label_358
	lea	rsi, [rsi]
	mov	eax, 9
	mov	rsp, rsp
	sub	eax, ebx
	nop	word ptr [rax + rax]
.label_365:
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
	jne	.label_365
.label_358:
	mov	eax, dword ptr [rsp + 0x18]
	mov	esi, eax
	nop	
	jmp	.label_343
.label_3592:
	mov	al, 1
.label_3610:
	mov	rbp, rbp
	xor	edx, edx
	lea	rsi, [rsi]
	test	r12b, r12b
	je	.label_372
	nop	
	mov	r15d, 0
.label_372:
	je	.label_375
	mov	al, 1
.label_375:
	nop	
	mov	r9b, 0x70
	mov	r11b, al
	jmp	.label_376
.label_3593:
	nop	
	cmp	r10d, 0x45
	mov	rsp, rsp
	je	.label_323
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	edx, dword ptr [r11]
	mov	rsp, rsp
	jmp	.label_326
.label_3594:
	mov	esi, OFFSET FLAT:.str.4_1
.label_331:
	nop	
	mov	qword ptr [rsp + 0x58], rsi
	nop	
	test	r15b, r15b
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x78], r15
	setne	al
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0x4e8]
	mov	dword ptr [rsp + 8], ecx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x4e0]
	mov	qword ptr [rsp], rcx
	movzx	ecx, al
	lea	rdi, [rdi]
	xor	ebx, ebx
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	r8d, ebp
	nop	
	mov	r9d, r14d
	lea	rsi, [rsi]
	call	__strftime_internal
	mov	esi, dword ptr [rsp + 0x18]
	nop	
	test	esi, esi
	cmovns	ebx, esi
	movsxd	rcx, ebx
	cmp	rax, rcx
	lea	rsi, [rsi]
	mov	rdi, rax
	cmovb	rdi, rcx
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	not	rdx
	cmp	rdi, rdx
	jae	.label_337
	cmp	qword ptr [rsp + 0x70], 0
	je	.label_408
	mov	qword ptr [rsp + 0x40], rdi
	cmp	rax, rcx
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	jae	.label_367
	lea	rsi, [rsi]
	movsxd	rcx, esi
	mov	r15, rcx
	sub	r15, rax
	lea	rsi, [rsi]
	cmp	ebp, 0x30
	je	.label_339
	cmp	ebp, 0x2b
	jne	.label_420
.label_339:
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	rcx, rax
	je	.label_367
	nop	word ptr cs:[rax + rax]
.label_431:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	lea	rdi, [rdi]
	inc	rbx
	cmp	rbx, r15
	lea	rsi, [rsi]
	jb	.label_431
	jmp	.label_367
.label_3595:
	lea	rdi, [rdi]
	cmp	r10d, 0x45
	je	.label_323
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	eax, dword ptr [r11 + 0x1c]
	nop	
	add	eax, 7
	lea	rdi, [rdi]
	sub	eax, dword ptr [r11 + 0x18]
	nop	
	movsxd	rdx, eax
	lea	rsi, [rsi]
	jmp	.label_435
.label_3596:
	cmp	r10d, 0x45
	lea	rdi, [rdi]
	je	.label_323
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	eax, dword ptr [r11 + 0x18]
	mov	edx, dword ptr [r11 + 0x1c]
	lea	esi, [rax + 6]
	movsxd	rsi, esi
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	lea	eax, [rdi + rax + 6]
	mov	edi, eax
	shr	edi, 0x1f
	sar	eax, 2
	lea	rsi, [rsi]
	add	eax, edi
	lea	rdi, [rdi]
	lea	edi, [rax*8]
	sub	edi, eax
	sub	esi, edi
	nop	
	add	edx, 7
	sub	edx, esi
	mov	rbp, rbp
	movsxd	rdx, edx
.label_435:
	imul	rax, rdx, -0x6db6db6d
	shr	rax, 0x20
	nop	
	add	edx, eax
	mov	rsp, rsp
	mov	eax, edx
	shr	eax, 0x1f
	mov	rsp, rsp
	sar	edx, 2
	mov	rsp, rsp
	add	edx, eax
	mov	rsp, rsp
	jmp	.label_326
.label_3597:
	lea	rsi, [rsi]
	cmp	r10d, 0x4f
	lea	rsi, [rsi]
	je	.label_323
	mov	rsp, rsp
	xor	r11d, r11d
	mov	r9b, 0x58
	jmp	.label_346
.label_3598:
	nop	
	cmp	r10d, 0x45
	mov	rbp, rbp
	je	.label_457
	nop	
	cmp	r10d, 0x4f
	mov	rsp, rsp
	je	.label_323
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [r11 + 0x14]
	cmp	edx, 0xfffff894
	setl	r8b
	nop	
	add	edx, 0x76c
	lea	rsi, [rsi]
	mov	esi, 4
	jmp	.label_432
.label_3599:
	mov	qword ptr [rsp + 0x78], r15
	nop	
	mov	rdi, qword ptr [rsp + 0x88]
	call	strlen
	mov	rbx, rax
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, dword ptr [rsp + 0x18]
	test	edx, edx
	lea	rsi, [rsi]
	cmovns	eax, edx
	mov	rbp, rbp
	cdqe	
	lea	rdi, [rdi]
	cmp	rbx, rax
	nop	
	mov	rsi, rbx
	cmovb	rsi, rax
	mov	rcx, qword ptr [rsp + 0x68]
	not	rcx
	mov	rbp, rbp
	cmp	rsi, rcx
	jae	.label_337
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x58], rsi
	mov	r14, qword ptr [rsp + 0x70]
	nop	
	test	r14, r14
	je	.label_335
	cmp	rbx, rax
	jae	.label_325
	lea	rsi, [rsi]
	movsxd	rax, edx
	nop	
	mov	r15, rax
	nop	
	sub	r15, rbx
	nop	
	cmp	ebp, 0x30
	mov	rsp, rsp
	je	.label_484
	mov	rbp, rbp
	cmp	ebp, 0x2b
	mov	rsp, rsp
	jne	.label_489
.label_484:
	xor	ebp, ebp
	cmp	rax, rbx
	je	.label_325
	nop	dword ptr [rax + rax]
.label_380:
	mov	rsp, rsp
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, r15
	lea	rdi, [rdi]
	jb	.label_380
	nop	
	jmp	.label_325
.label_3600:
	lea	rdi, [rdi]
	test	r10d, r10d
	lea	rsi, [rsi]
	jne	.label_323
	test	r12b, r12b
	je	.label_410
	mov	rbp, rbp
	mov	r15b, 1
.label_410:
	xor	r11d, r11d
	mov	r9b, 0x61
	jmp	.label_346
.label_3602:
	nop	
	cmp	r10d, 0x4f
	je	.label_323
	xor	r11d, r11d
	mov	rsp, rsp
	mov	r9b, 0x63
	jmp	.label_346
.label_3603:
	lea	rsi, [rsi]
	cmp	r10d, 0x45
	lea	rsi, [rsi]
	je	.label_323
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [r11 + 0xc]
	mov	rsp, rsp
	jmp	.label_326
.label_3604:
	lea	rdi, [rdi]
	cmp	r10d, 0x45
	lea	rdi, [rdi]
	je	.label_323
	mov	r11, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [r11 + 0xc]
	lea	rsi, [rsi]
	jmp	.label_341
.label_3605:
	cmp	r10d, 0x45
	mov	rsp, rsp
	je	.label_323
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [r11 + 0x1c]
	lea	rsi, [rsi]
	cmp	edx, -1
	mov	rbp, rbp
	setl	r8b
	nop	
	inc	edx
	lea	rdi, [rdi]
	mov	esi, 3
	jmp	.label_361
.label_3606:
	mov	rsp, rsp
	cmp	r10d, 0x45
	je	.label_323
	nop	
	mov	r11, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	edx, dword ptr [r11 + 8]
	jmp	.label_341
.label_3607:
	lea	rdi, [rdi]
	cmp	r10d, 0x45
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x80]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	je	.label_323
.label_341:
	lea	rdi, [rdi]
	test	ebp, ebp
	mov	rbp, rbp
	mov	eax, 0x5f
	mov	rsp, rsp
	cmove	ebp, eax
.label_326:
	lea	rsi, [rsi]
	mov	esi, 2
	nop	
	jmp	.label_343
.label_3608:
	nop	
	cmp	r10d, 0x45
	nop	
	je	.label_323
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	edx, dword ptr [r11 + 0x10]
	cmp	edx, -1
	setl	r8b
	inc	edx
	mov	esi, 2
	lea	rdi, [rdi]
	jmp	.label_361
.label_3609:
	xor	eax, eax
	mov	edx, dword ptr [rsp + 0x18]
	test	edx, edx
	cmovns	eax, edx
	lea	rdi, [rdi]
	movsxd	rcx, eax
	cmp	ecx, 1
	lea	rdi, [rdi]
	mov	r14d, 1
	cmova	r14, rcx
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	not	rcx
	lea	rdi, [rdi]
	cmp	r14, rcx
	jae	.label_337
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	test	r12, r12
	je	.label_402
	lea	rdi, [rdi]
	cmp	eax, 2
	jb	.label_360
	mov	rsp, rsp
	movsxd	rbx, edx
	lea	r15, [rbx - 1]
	cmp	ebp, 0x30
	nop	
	je	.label_407
	cmp	ebp, 0x2b
	nop	
	jne	.label_411
.label_407:
	lea	rdi, [rdi]
	test	r15, r15
	mov	rbp, rbp
	je	.label_360
	lea	rdi, [rdi]
	dec	rbx
	nop	word ptr cs:[rax + rax]
.label_423:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	mov	rbp, rbp
	dec	rbx
	mov	rsp, rsp
	jne	.label_423
	jmp	.label_360
.label_3611:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	imul	edx, dword ptr [r11 + 0x10], 0xb
	sar	edx, 5
	nop	
	inc	edx
	mov	esi, 1
	nop	
	xor	ebx, ebx
	xor	r9d, r9d
	xor	r8d, r8d
	nop	
	jmp	.label_390
.label_3612:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0xd0], rax
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0xc0], xmm2
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xb0], xmm1
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	lea	rsi, [rsp + 0xa0]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x4e0]
	call	mktime_z
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	mov	r8, rcx
	shr	r8, 0x3f
	lea	rdi, [rdi]
	lea	r12, [rsp + 0x37]
	nop	
	je	.label_443
	nop	word ptr cs:[rax + rax]
.label_379:
	lea	rsi, [rsi]
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	nop	
	shr	rax, 0x3f
	lea	rsi, [rsi]
	sar	rdx, 2
	mov	rsp, rsp
	lea	esi, [rdx + rax]
	add	esi, esi
	mov	rbp, rbp
	lea	esi, [rsi + rsi*4]
	nop	
	mov	edi, ecx
	sub	edi, esi
	lea	rsi, [rsi]
	add	rdx, rax
	mov	al, 0x30
	lea	rdi, [rdi]
	sub	al, dil
	lea	rsi, [rsi]
	mov	byte ptr [r12 - 1], al
	nop	
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_379
	mov	rsp, rsp
	jmp	.label_461
	nop	word ptr cs:[rax + rax]
.label_443:
	nop	
	movabs	rdx, 0x6666666666666667
	nop	
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	mov	rsp, rsp
	sar	rdx, 2
	lea	esi, [rdx + rax]
	add	esi, esi
	nop	
	lea	esi, [rsi + rsi*4]
	mov	edi, ecx
	sub	edi, esi
	add	rdx, rax
	add	dil, 0x30
	mov	byte ptr [r12 - 1], dil
	dec	r12
	add	rcx, 9
	mov	rsp, rsp
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_443
.label_461:
	mov	r10d, 1
	lea	rsi, [rsi]
	xor	r9d, r9d
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0x18]
	jmp	.label_478
.label_3613:
	xor	eax, eax
	mov	edx, dword ptr [rsp + 0x18]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r14d, 1
	cmova	r14, rcx
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	not	rcx
	cmp	r14, rcx
	jae	.label_337
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_402
	lea	rsi, [rsi]
	cmp	eax, 2
	jb	.label_332
	movsxd	rbx, edx
	lea	r15, [rbx - 1]
	cmp	ebp, 0x30
	je	.label_322
	cmp	ebp, 0x2b
	nop	
	jne	.label_327
.label_322:
	lea	rsi, [rsi]
	test	r15, r15
	je	.label_332
	dec	rbx
	nop	dword ptr [rax + rax]
.label_388:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	mov	rsp, rsp
	dec	rbx
	lea	rsi, [rsi]
	jne	.label_388
	jmp	.label_332
.label_3614:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	eax, dword ptr [r11 + 0x18]
	nop	
	lea	edx, [rax + 6]
	nop	
	movsxd	rdx, edx
	mov	rsp, rsp
	imul	rsi, rdx, -0x6db6db6d
	mov	rsp, rsp
	shr	rsi, 0x20
	mov	rbp, rbp
	lea	eax, [rsi + rax + 6]
	mov	esi, eax
	shr	esi, 0x1f
	mov	rbp, rbp
	sar	eax, 2
	mov	rbp, rbp
	add	eax, esi
	nop	
	lea	esi, [rax*8]
	lea	rdi, [rdi]
	sub	esi, eax
	lea	rsi, [rsi]
	sub	edx, esi
	lea	rsi, [rsi]
	inc	edx
	mov	esi, 1
	lea	rdi, [rdi]
	jmp	.label_343
.label_3615:
	lea	rdi, [rdi]
	cmp	r10d, 0x45
	je	.label_323
	mov	r11, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [r11 + 0x18]
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	jmp	.label_343
.label_3616:
	cmp	r10d, 0x4f
	mov	rsp, rsp
	je	.label_323
	xor	r11d, r11d
	mov	r9b, 0x78
	jmp	.label_346
.label_3617:
	cmp	r10d, 0x45
	nop	
	jne	.label_368
	nop	
	xor	r11d, r11d
	mov	r9b, 0x79
	mov	rbp, rbp
	jmp	.label_346
.label_429:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x18], r9d
	nop	
	jmp	.label_323
.label_347:
	dec	r11d
	nop	
	mov	r14d, 0x16d
	mov	rbp, rbp
	test	r11b, 3
	jne	.label_373
	nop	
	movsxd	rax, r11d
	imul	rax, rax, 0x51eb851f
	mov	rsp, rsp
	mov	rsi, rax
	sar	rsi, 0x25
	mov	rdi, rax
	shr	rdi, 0x3f
	mov	rsp, rsp
	add	esi, edi
	imul	esi, esi, 0x64
	sar	rax, 0x27
	add	eax, edi
	lea	rsi, [rsi]
	imul	eax, eax, 0x190
	cmp	r11d, eax
	sete	al
	nop	
	movzx	eax, al
	add	eax, 0x16d
	cmp	r11d, esi
	mov	r14d, 0x16e
	cmove	r14d, eax
.label_373:
	lea	eax, [r14 + rbx + 0x17e]
	sub	eax, edx
	cdqe	
	nop	
	imul	rsi, rax, -0x6db6db6d
	mov	rsp, rsp
	shr	rsi, 0x20
	lea	rsi, [rsi]
	add	esi, eax
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 2
	mov	rsp, rsp
	add	esi, edi
	lea	edi, [rsi*8]
	nop	
	sub	edi, esi
	nop	
	sub	eax, edi
	nop	
	lea	r12d, [r14 + rbx + 3]
	sub	r12d, eax
	mov	rsp, rsp
	mov	ebx, 0xffffffff
.label_381:
	cmp	r8d, 0x47
	lea	rdi, [rdi]
	je	.label_401
	lea	rdi, [rdi]
	cmp	r8d, 0x67
	mov	rbp, rbp
	jne	.label_450
	movsxd	rax, r9d
	mov	rsp, rsp
	imul	rax, rax, 0x51eb851f
	mov	rsp, rsp
	mov	rdx, rax
	mov	rbp, rbp
	shr	rdx, 0x3f
	lea	rsi, [rsi]
	sar	rax, 0x25
	add	eax, edx
	imul	eax, eax, 0x64
	lea	rdi, [rdi]
	mov	edx, r9d
	nop	
	sub	edx, eax
	mov	rbp, rbp
	add	edx, ebx
	nop	
	movsxd	rdx, edx
	imul	rax, rdx, 0x51eb851f
	mov	rsi, rax
	mov	rbp, rbp
	shr	rsi, 0x3f
	lea	rdi, [rdi]
	sar	rax, 0x25
	mov	rbp, rbp
	add	eax, esi
	lea	rsi, [rsi]
	imul	eax, eax, 0x64
	sub	edx, eax
	nop	
	mov	esi, 2
	mov	r11, qword ptr [rsp + 0x48]
	js	.label_328
	mov	rbp, rbp
	xor	r8d, r8d
	jmp	.label_432
.label_406:
	mov	rbp, qword ptr [rsp + 0x68]
	movabs	rdi, 0x1000000000002500
	lea	rdi, [rdi]
	jmp	.label_334
.label_467:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	movsxd	rax, dword ptr [r11 + 0x14]
	cmp	rax, -0x76c
	setl	r8b
	setg	bl
	imul	rdx, rax, 0x51eb851f
	mov	rsp, rsp
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	lea	rdi, [rdi]
	imul	esi, edx, 0x64
	cmp	eax, esi
	mov	rbp, rbp
	sets	al
	and	al, bl
	movzx	eax, al
	lea	rdi, [rdi]
	sub	edx, eax
	mov	rsp, rsp
	add	edx, 0x13
	nop	
	mov	esi, 2
	jmp	.label_432
.label_368:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [r11 + 0x14]
	imul	rdx, rax, 0x51eb851f
	lea	rsi, [rsi]
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	lea	rsi, [rsi]
	add	edx, esi
	mov	rsp, rsp
	imul	esi, edx, 0x64
	nop	
	mov	edx, eax
	sub	edx, esi
	lea	rdi, [rdi]
	mov	esi, 2
	js	.label_448
	lea	rdi, [rdi]
	xor	r8d, r8d
	lea	rsi, [rsi]
	jmp	.label_432
.label_401:
	mov	eax, 0xfffff894
	sub	eax, ebx
	cmp	r9d, eax
	setl	r8b
	nop	
	lea	edx, [rbx + r9 + 0x76c]
	nop	
	mov	esi, 4
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_432
.label_450:
	movsxd	rax, r12d
	mov	rbp, rbp
	imul	rdx, rax, -0x6db6db6d
	mov	rbp, rbp
	shr	rdx, 0x20
	add	eax, edx
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	sar	edx, 2
	nop	
	shr	eax, 0x1f
	mov	rbp, rbp
	lea	edx, [rdx + rax + 1]
	mov	esi, 2
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_343
.label_457:
	xor	r11d, r11d
	lea	rdi, [rdi]
	mov	r9b, 0x59
.label_346:
	xor	edx, edx
	mov	rsp, rsp
	jmp	.label_376
.label_420:
	xor	ebx, ebx
	cmp	rcx, rax
	lea	rdi, [rdi]
	je	.label_367
	nop	dword ptr [rax + rax]
.label_481:
	mov	edi, 0x20
	mov	rsp, rsp
	mov	rsi, r12
	call	fputc
	lea	rsi, [rsi]
	inc	rbx
	cmp	rbx, r15
	lea	rdi, [rdi]
	jb	.label_481
.label_367:
	mov	qword ptr [rsp + 0x70], r12
	mov	rax, qword ptr [rsp + 0x78]
	mov	rbp, rbp
	test	al, al
	setne	al
	nop	
	mov	ecx, dword ptr [rsp + 0x4e8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], ecx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x4e0]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rcx
	movzx	ecx, al
	mov	rbp, rbp
	mov	rdi, r12
	nop	
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	r8d, ebp
	nop	
	mov	r9d, r14d
	lea	rdi, [rdi]
	call	__strftime_internal
	mov	rdi, qword ptr [rsp + 0x40]
.label_408:
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x68]
	add	rbp, rdi
	mov	rsp, rsp
	movabs	rdi, 0x1000000000002500
	mov	rsp, rsp
	jmp	.label_334
.label_414:
	mov	rdx, qword ptr [rsp + 0x88]
	movzx	edx, byte ptr [rdx]
	lea	rsi, [rsi]
	cmp	edx, 0x2d
	sete	r8b
.label_418:
	mov	rbp, rbp
	mov	r9, rsi
	lea	rdi, [rdi]
	cmp	r9, 3
	ja	.label_323
	movsxd	rdx, eax
	mov	rsp, rsp
	imul	rsi, rdx, -0x77777777
	shr	rsi, 0x20
	lea	rsi, [rsi]
	add	esi, eax
	mov	edi, esi
	shr	edi, 0x1f
	mov	rsp, rsp
	sar	esi, 5
	add	esi, edi
	imul	rdx, rdx, -0x6e5d4c3b
	shr	rdx, 0x20
	lea	rsi, [rsi]
	add	edx, eax
	mov	edi, edx
	nop	
	shr	edi, 0x1f
	sar	edx, 0xb
	mov	rbp, rbp
	add	edx, edi
	movsxd	rdi, esi
	imul	rsi, rdi, -0x77777777
	nop	
	shr	rsi, 0x20
	add	esi, edi
	mov	ebx, esi
	shr	ebx, 0x1f
	mov	rbp, rbp
	sar	esi, 5
	add	esi, ebx
	nop	
	imul	esi, esi, 0x3c
	nop	
	imul	ebx, edi, 0x3c
	sub	edi, esi
	nop	
	sub	eax, ebx
	jmp	qword ptr [word ptr [+ (r9 * 8) + label_490]]
.label_3843:
	mov	rsp, rsp
	imul	edx, edx, 0x64
	add	edx, edi
	mov	rbp, rbp
	mov	esi, 5
.label_425:
	mov	rsp, rsp
	mov	r9b, 1
	lea	rsi, [rsi]
	xor	ebx, ebx
	nop	
	jmp	.label_390
.label_323:
	mov	qword ptr [rsp + 0x78], r15
	mov	rbp, rbp
	lea	rbx, [r13 + 1]
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_434:
	inc	r14
	nop	
	movzx	eax, byte ptr [rbx - 1]
	dec	rbx
	lea	rdi, [rdi]
	cmp	eax, 0x25
	mov	rbp, rbp
	jne	.label_434
	nop	
	mov	edx, dword ptr [rsp + 0x18]
	mov	rbp, rbp
	test	edx, edx
	mov	eax, edx
	mov	rsp, rsp
	mov	ecx, 0
	cmovs	eax, ecx
	lea	rdi, [rdi]
	cmp	r14d, eax
	mov	ecx, eax
	cmova	ecx, r14d
	mov	rsp, rsp
	movsxd	rsi, ecx
	mov	rcx, qword ptr [rsp + 0x68]
	not	rcx
	cmp	rsi, rcx
	jae	.label_337
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rsi
	nop	
	mov	r12, qword ptr [rsp + 0x70]
	nop	
	test	r12, r12
	nop	
	je	.label_385
	movsxd	rcx, r14d
	mov	qword ptr [rsp + 0x40], rcx
	nop	
	cmp	r14d, eax
	mov	rsp, rsp
	mov	r15, r12
	mov	rbp, rbp
	jae	.label_389
	mov	rbp, rbp
	movsxd	r12, edx
	sub	r12, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	cmp	ebp, 0x30
	mov	rbp, rbp
	je	.label_391
	cmp	ebp, 0x2b
	jne	.label_396
.label_391:
	mov	rsp, rsp
	cmp	edx, r14d
	mov	rsp, rsp
	mov	ebp, 0
	mov	rbp, rbp
	je	.label_389
	nop	word ptr cs:[rax + rax]
.label_405:
	mov	edi, 0x30
	mov	rsi, r15
	call	fputc
	mov	rbp, rbp
	inc	rbp
	cmp	rbp, r12
	lea	rdi, [rdi]
	jb	.label_405
	lea	rsi, [rsi]
	jmp	.label_389
.label_396:
	lea	rdi, [rdi]
	cmp	edx, r14d
	mov	ebp, 0
	mov	rsp, rsp
	je	.label_389
.label_416:
	mov	edi, 0x20
	mov	rsi, r15
	mov	rsp, rsp
	call	fputc
	lea	rsi, [rsi]
	inc	rbp
	cmp	rbp, r12
	jb	.label_416
.label_389:
	mov	r12, r15
	mov	rax, qword ptr [rsp + 0x78]
	test	al, 1
	nop	
	jne	.label_419
	mov	edx, 1
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rcx, r12
	call	fwrite
	lea	rdi, [rdi]
	jmp	.label_385
.label_419:
	mov	rsp, rsp
	call	__ctype_toupper_loc
	lea	rdi, [rdi]
	mov	r15, rax
	movsxd	rbp, r14d
	neg	rbp
	nop	word ptr cs:[rax + rax]
.label_438:
	movzx	eax, byte ptr [rbx]
	mov	rcx, qword ptr [r15]
	mov	rsp, rsp
	mov	edi, dword ptr [rcx + rax*4]
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rbp, rbp
	call	fputc
	mov	rbp, rbp
	inc	rbx
	mov	rbp, rbp
	inc	rbp
	mov	rsp, rsp
	jne	.label_438
.label_385:
	mov	qword ptr [rsp + 0x70], r12
.label_395:
	mov	rbp, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	add	rbp, qword ptr [rsp + 0x58]
	movabs	rdi, 0x1000000000002500
	lea	rdi, [rdi]
	jmp	.label_334
.label_476:
	xor	eax, eax
	mov	rbp, rbp
	add	r14d, -6
	lea	rdi, [rdi]
	cmovs	r14d, eax
	nop	
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rdi, [rdi]
	jmp	.label_331
.label_336:
	lea	rsi, [rsi]
	mov	esi, 9
	mov	eax, dword ptr [rsp + 0x4e8]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x18], 9
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_343
.label_328:
	mov	eax, 0xfffff894
	sub	eax, ebx
	mov	edi, edx
	neg	edi
	add	edx, 0x64
	lea	rsi, [rsi]
	cmp	r9d, eax
	jmp	.label_452
.label_448:
	mov	edi, edx
	mov	rsp, rsp
	neg	edi
	nop	
	add	edx, 0x64
	mov	rsp, rsp
	cmp	eax, 0xfffff894
.label_452:
	lea	rdi, [rdi]
	cmovl	edx, edi
	lea	rdi, [rdi]
	xor	r8d, r8d
.label_432:
	test	ebp, ebp
	cmove	ebp, dword ptr [rsp + 0x84]
	xor	ebx, ebx
	cmp	ebp, 0x2b
	lea	rdi, [rdi]
	mov	r9d, 0
	jne	.label_390
	lea	rsi, [rsi]
	mov	rdi, rsi
	lea	rdi, [rdi]
	cmp	edi, 2
	lea	rsi, [rsi]
	mov	eax, 0x63
	mov	esi, 0x270f
	nop	
	cmove	esi, eax
	cmp	esi, edx
	setb	al
	cmp	edi, dword ptr [rsp + 0x18]
	mov	rsi, rdi
	nop	
	setl	r9b
	mov	rsp, rsp
	or	r9b, al
	jmp	.label_390
.label_3846:
	test	eax, eax
	je	.label_472
.label_3845:
	imul	edx, edx, 0x2710
	imul	esi, edi, 0x64
	mov	rsp, rsp
	add	edx, eax
	add	edx, esi
	mov	rsp, rsp
	mov	esi, 9
	mov	r9b, 1
	lea	rdi, [rdi]
	mov	ebx, 0x14
	mov	rbp, rbp
	jmp	.label_390
.label_342:
	nop	
	mov	eax, dword ptr [rsp + 0x4e8]
.label_488:
	mov	edx, eax
	nop	
	mov	r11, qword ptr [rsp + 0x48]
.label_343:
	mov	r8d, edx
	lea	rdi, [rdi]
	shr	r8d, 0x1f
.label_361:
	xor	ebx, ebx
	lea	rsi, [rsi]
	xor	r9d, r9d
.label_390:
	nop	
	mov	qword ptr [rsp + 0x48], r11
	mov	rbp, rbp
	cmp	r10d, 0x4f
	mov	rsp, rsp
	jne	.label_469
	lea	rsi, [rsi]
	test	r8b, r8b
	lea	rdi, [rdi]
	jne	.label_469
	lea	rsi, [rsi]
	xor	r11d, r11d
	mov	rbp, rbp
	mov	r9b, cl
	mov	rdx, rsi
.label_376:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x78], r11d
	mov	rbx, rdx
	mov	word ptr [rsp + 0x63], 0x2520
	lea	rsi, [rsi]
	test	r10d, r10d
	lea	rcx, [rsp + 0x65]
	je	.label_321
	mov	byte ptr [rsp + 0x65], r10b
	lea	rdi, [rdi]
	lea	rcx, [rsp + 0x66]
.label_321:
	mov	rbp, rbp
	mov	byte ptr [rcx], r9b
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0xa0]
	lea	rdx, [rsp + 0x63]
	nop	
	mov	esi, 0x400
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	call	strftime
	mov	rsp, rsp
	test	rax, rax
	je	.label_345
	lea	rdi, [rdi]
	lea	r14, [rax - 1]
	xor	ecx, ecx
	nop	
	mov	edx, dword ptr [rsp + 0x18]
	test	edx, edx
	mov	rsp, rsp
	cmovns	ecx, edx
	movsxd	rdi, ecx
	nop	
	cmp	r14, rdi
	mov	rbp, rbp
	mov	rsi, r14
	cmovb	rsi, rdi
	mov	rcx, qword ptr [rsp + 0x68]
	not	rcx
	cmp	rsi, rcx
	jae	.label_337
	mov	qword ptr [rsp + 0x40], rax
	mov	qword ptr [rsp + 0x58], rsi
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x70]
	nop	
	test	r12, r12
	je	.label_351
	mov	rsp, rsp
	cmp	r14, rdi
	setae	al
	mov	rsp, rsp
	test	ebx, ebx
	mov	rbp, rbp
	jne	.label_357
	test	al, al
	jne	.label_357
	movsxd	rax, edx
	mov	rbx, rax
	sub	rbx, r14
	cmp	ebp, 0x30
	mov	rsp, rsp
	je	.label_363
	cmp	ebp, 0x2b
	mov	rsp, rsp
	jne	.label_477
.label_363:
	xor	ebp, ebp
	mov	rbp, rbp
	cmp	rax, r14
	je	.label_357
	nop	word ptr cs:[rax + rax]
.label_374:
	mov	edi, 0x30
	lea	rdi, [rdi]
	mov	rsi, r12
	call	fputc
	inc	rbp
	cmp	rbp, rbx
	lea	rdi, [rdi]
	jb	.label_374
	jmp	.label_357
.label_469:
	mov	rsp, rsp
	mov	eax, edx
	neg	eax
	test	r8b, r8b
	cmove	eax, edx
	mov	rsp, rsp
	lea	r12, [rsp + 0x37]
	mov	rbp, rbp
	mov	edi, dword ptr [rsp + 0x18]
	mov	r10, rsi
	nop	
.label_386:
	test	bl, 1
	je	.label_483
	lea	rdi, [rdi]
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_483:
	sar	ebx, 1
	mov	edx, eax
	mov	ecx, 0xcccccccd
	lea	rdi, [rdi]
	imul	rcx, rdx
	mov	rbp, rbp
	shr	rcx, 0x23
	mov	rsp, rsp
	lea	edx, [rcx + rcx]
	nop	
	lea	edx, [rdx + rdx*4]
	mov	esi, eax
	sub	esi, edx
	or	esi, 0x30
	mov	byte ptr [r12 - 1], sil
	dec	r12
	cmp	eax, 9
	mov	eax, ecx
	mov	rbp, rbp
	ja	.label_386
	test	ebx, ebx
	mov	rbp, rbp
	mov	eax, ecx
	nop	
	jne	.label_386
.label_478:
	lea	rsi, [rsi]
	cmp	r10d, edi
	mov	rbp, rbp
	cmovl	r10d, edi
	test	r9b, r9b
	mov	rsp, rsp
	je	.label_394
	lea	rsi, [rsi]
	mov	r9b, 0x2b
.label_394:
	test	r8b, r8b
	mov	bl, 0x2d
	nop	
	jne	.label_400
	mov	bl, r9b
.label_400:
	lea	rdi, [rdi]
	cmp	ebp, 0x2d
	jne	.label_403
	nop	
	test	bl, bl
	je	.label_404
	mov	qword ptr [rsp + 0x78], r15
	mov	rbp, rbp
	xor	eax, eax
	test	edi, edi
	cmovns	eax, edi
	movsxd	rcx, eax
	mov	rsp, rsp
	cmp	ecx, 1
	mov	rsp, rsp
	mov	r14d, 1
	cmova	r14, rcx
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	not	rcx
	nop	
	cmp	r14, rcx
	nop	
	jae	.label_337
	cmp	qword ptr [rsp + 0x70], 0
	nop	
	je	.label_352
	mov	byte ptr [rsp + 0x40], bl
	mov	dword ptr [rsp + 0x18], edi
	mov	rsp, rsp
	cmp	eax, 2
	lea	rsi, [rsi]
	setb	al
	mov	rbp, rbp
	test	r10d, r10d
	mov	qword ptr [rsp + 0x58], r10
	mov	r15, qword ptr [rsp + 0x70]
	jne	.label_359
	mov	rsp, rsp
	test	al, al
	jne	.label_359
	nop	
	cmp	dword ptr [rsp + 0x18], 1
	je	.label_359
	movsxd	rbx, dword ptr [rsp + 0x18]
	dec	rbx
	nop	word ptr cs:[rax + rax]
.label_439:
	mov	edi, 0x20
	lea	rsi, [rsi]
	mov	rsi, r15
	call	fputc
	dec	rbx
	mov	rbp, rbp
	jne	.label_439
.label_359:
	mov	rbp, rbp
	movzx	edi, byte ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	rsi, r15
	call	fputc
	mov	edi, dword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	r10, qword ptr [rsp + 0x58]
.label_352:
	mov	rdx, qword ptr [rsp + 0x68]
	add	rdx, r14
	jmp	.label_349
.label_345:
	mov	rbp, qword ptr [rsp + 0x68]
	movabs	rdi, 0x1000000000002500
	jmp	.label_334
.label_403:
	movsxd	rax, r10d
	mov	rcx, r12
	lea	rdx, [rsp + 0x37]
	mov	rbp, rbp
	sub	rcx, rdx
	mov	rsp, rsp
	mov	dl, bl
	lea	rsi, [rsi]
	neg	dl
	lea	rsi, [rsi]
	sbb	rsi, rsi
	add	rsi, rcx
	mov	rsp, rsp
	add	rsi, rax
	mov	rsp, rsp
	test	esi, esi
	nop	
	jle	.label_447
	mov	qword ptr [rsp + 0x78], r15
	lea	rsi, [rsi]
	cmp	ebp, 0x5f
	jne	.label_453
	movsxd	r15, esi
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x68]
	nop	
	not	rax
	mov	rsp, rsp
	cmp	r15, rax
	mov	rbp, rbp
	jae	.label_337
	mov	qword ptr [rsp + 0x38], rsi
	nop	
	mov	byte ptr [rsp + 0x40], bl
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], r10
	mov	dword ptr [rsp + 0x18], edi
	mov	rbx, qword ptr [rsp + 0x70]
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_393
	test	r15, r15
	nop	
	mov	r14d, 0
	je	.label_393
	nop	dword ptr [rax]
.label_470:
	nop	
	mov	edi, 0x20
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	fputc
	mov	rbp, rbp
	inc	r14
	cmp	r14, r15
	jb	.label_470
.label_393:
	mov	rdx, qword ptr [rsp + 0x68]
	add	rdx, r15
	mov	eax, dword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x38]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	esi, 0
	cmovg	esi, eax
	mov	al, byte ptr [rsp + 0x40]
	mov	rbp, rbp
	test	al, al
	je	.label_471
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	test	esi, esi
	lea	rdi, [rdi]
	cmovns	eax, esi
	movsxd	rcx, eax
	cmp	ecx, 1
	lea	rdi, [rdi]
	mov	edi, 1
	cmova	rdi, rcx
	mov	rcx, rdx
	mov	qword ptr [rsp + 0x68], rdx
	not	rcx
	cmp	rdi, rcx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x58]
	jae	.label_337
	cmp	qword ptr [rsp + 0x70], 0
	lea	rdi, [rdi]
	je	.label_485
	mov	qword ptr [rsp + 0x38], rdi
	mov	qword ptr [rsp + 0x18], rsi
	lea	rdi, [rdi]
	cmp	eax, 2
	setb	al
	mov	rbp, rbp
	test	r10d, r10d
	mov	r14, qword ptr [rsp + 0x70]
	jne	.label_333
	mov	rsp, rsp
	test	al, al
	jne	.label_333
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	r15, eax
	mov	rsp, rsp
	xor	ebx, ebx
	dec	r15
	lea	rdi, [rdi]
	je	.label_333
	nop	word ptr cs:[rax + rax]
.label_422:
	nop	
	mov	edi, 0x20
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	fputc
	mov	rsp, rsp
	inc	rbx
	cmp	rbx, r15
	mov	rsp, rsp
	jb	.label_422
.label_333:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, r14
	call	fputc
	mov	r10, qword ptr [rsp + 0x58]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x38]
.label_485:
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	add	rdx, rdi
	lea	rsi, [rsi]
	mov	edi, esi
	jmp	.label_349
.label_404:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x78], r15
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	jmp	.label_349
.label_447:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x78], r15
	test	bl, bl
	nop	
	je	.label_354
	lea	rsi, [rsi]
	xor	eax, eax
	test	edi, edi
	lea	rsi, [rsi]
	cmovns	eax, edi
	mov	rbp, rbp
	movsxd	rcx, eax
	cmp	ecx, 1
	lea	rsi, [rsi]
	mov	esi, 1
	cmova	rsi, rcx
	mov	rcx, qword ptr [rsp + 0x68]
	not	rcx
	lea	rdi, [rdi]
	cmp	rsi, rcx
	jae	.label_337
	cmp	qword ptr [rsp + 0x70], 0
	je	.label_370
	mov	qword ptr [rsp + 0x38], rsi
	nop	
	mov	byte ptr [rsp + 0x40], bl
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x18], edi
	lea	rdi, [rdi]
	cmp	eax, 2
	lea	rdi, [rdi]
	setb	al
	lea	rdi, [rdi]
	test	r10d, r10d
	mov	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x70]
	jne	.label_369
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	jne	.label_369
	lea	rsi, [rsi]
	mov	rax, rsi
	mov	rsp, rsp
	movsxd	r15, dword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	lea	r14, [r15 - 1]
	cmp	ebp, 0x30
	je	.label_378
	mov	rbp, rbp
	cmp	ebp, 0x2b
	nop	
	jne	.label_384
.label_378:
	test	r14, r14
	lea	rdi, [rdi]
	mov	rsi, rax
	je	.label_369
	mov	rsp, rsp
	dec	r15
	nop	dword ptr [rax + rax]
.label_392:
	mov	rsp, rsp
	mov	edi, 0x30
	lea	rsi, [rsi]
	mov	rbx, rsi
	lea	rsi, [rsi]
	call	fputc
	mov	rsi, rbx
	lea	rsi, [rsi]
	dec	r15
	jne	.label_392
	jmp	.label_369
.label_453:
	mov	rcx, qword ptr [rsp + 0x68]
	not	rcx
	lea	rsi, [rsi]
	cmp	rax, rcx
	jae	.label_337
	mov	rsp, rsp
	test	bl, bl
	je	.label_433
	xor	eax, eax
	mov	rbp, rbp
	test	edi, edi
	lea	rsi, [rsi]
	cmovns	eax, edi
	movsxd	r8, eax
	lea	rdi, [rdi]
	cmp	r8d, 1
	nop	
	mov	edx, 1
	cmova	rdx, r8
	cmp	rdx, rcx
	jae	.label_337
	cmp	qword ptr [rsp + 0x70], 0
	mov	rbp, rbp
	je	.label_409
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rsi
	mov	byte ptr [rsp + 0x40], bl
	cmp	eax, 2
	nop	
	setb	al
	test	r10d, r10d
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x70]
	jne	.label_348
	nop	
	test	al, al
	mov	rsp, rsp
	jne	.label_348
	movsxd	rbx, edi
	nop	
	lea	r15, [rbx - 1]
	mov	rsp, rsp
	cmp	ebp, 0x30
	je	.label_426
	cmp	ebp, 0x2b
	mov	rbp, rbp
	jne	.label_458
.label_426:
	test	r15, r15
	je	.label_348
	dec	rbx
	nop	word ptr cs:[rax + rax]
.label_454:
	mov	edi, 0x30
	lea	rdi, [rdi]
	mov	rsi, r14
	call	fputc
	dec	rbx
	jne	.label_454
	mov	rbp, rbp
	jmp	.label_348
.label_477:
	mov	rbp, rbp
	xor	ebp, ebp
	cmp	rax, r14
	je	.label_357
	nop	word ptr [rax + rax]
.label_442:
	mov	edi, 0x20
	mov	rsp, rsp
	mov	rsi, r12
	lea	rdi, [rdi]
	call	fputc
	lea	rsi, [rsi]
	inc	rbp
	cmp	rbp, rbx
	jb	.label_442
.label_357:
	mov	eax, dword ptr [rsp + 0x78]
	test	al, 1
	jne	.label_444
	lea	rsi, [rsi]
	test	r15b, 1
	jne	.label_353
	lea	rsi, [rsi]
	mov	edx, 1
	lea	rdi, [rsp + 0xa1]
	mov	rsi, r14
	mov	rcx, r12
	call	fwrite
	jmp	.label_351
.label_444:
	mov	rsp, rsp
	test	r14, r14
	je	.label_351
	mov	rsp, rsp
	call	__ctype_tolower_loc
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rbp, rbp
	mov	ebx, 1
	sub	rbx, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	lea	rbp, [rsp + 0xa1]
	nop	word ptr cs:[rax + rax]
.label_463:
	movzx	eax, byte ptr [rbp]
	mov	rcx, qword ptr [r14]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rcx + rax*4]
	lea	rdi, [rdi]
	mov	rsi, r12
	call	fputc
	inc	rbp
	nop	
	inc	rbx
	mov	rbp, rbp
	jne	.label_463
	lea	rsi, [rsi]
	jmp	.label_351
.label_353:
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_351
	mov	rbp, rbp
	call	__ctype_toupper_loc
	mov	r14, rax
	mov	ebx, 1
	mov	rbp, rbp
	sub	rbx, qword ptr [rsp + 0x40]
	lea	rbp, [rsp + 0xa1]
	nop	word ptr cs:[rax + rax]
.label_479:
	movzx	eax, byte ptr [rbp]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r14]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r12
	call	fputc
	nop	
	inc	rbp
	inc	rbx
	mov	rbp, rbp
	jne	.label_479
.label_351:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], r12
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x68]
	add	rbp, qword ptr [rsp + 0x58]
	movabs	rdi, 0x1000000000002500
	jmp	.label_334
.label_354:
	mov	rdx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	jmp	.label_349
.label_471:
	lea	rsi, [rsi]
	mov	edi, esi
	mov	r10, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	jmp	.label_349
.label_489:
	xor	ebp, ebp
	cmp	rax, rbx
	lea	rsi, [rsi]
	je	.label_325
.label_428:
	mov	edi, 0x20
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_428
.label_325:
	mov	rsp, rsp
	test	r12b, r12b
	je	.label_330
	test	rbx, rbx
	je	.label_335
	call	__ctype_tolower_loc
	mov	r15, rax
	mov	rbp, qword ptr [rsp + 0x88]
	nop	word ptr [rax + rax]
.label_417:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp]
	mov	rcx, qword ptr [r15]
	mov	edi, dword ptr [rcx + rax*4]
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fputc
	inc	rbp
	dec	rbx
	nop	
	jne	.label_417
	mov	rsp, rsp
	jmp	.label_335
.label_330:
	nop	
	mov	rax, qword ptr [rsp + 0x78]
	nop	
	test	al, al
	lea	rsi, [rsi]
	je	.label_437
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_335
	nop	
	call	__ctype_toupper_loc
	lea	rsi, [rsi]
	mov	r15, rax
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x88]
	nop	
.label_356:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp]
	mov	rsp, rsp
	mov	rcx, qword ptr [r15]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r14
	call	fputc
	inc	rbp
	nop	
	dec	rbx
	lea	rsi, [rsi]
	jne	.label_356
	jmp	.label_335
.label_411:
	test	r15, r15
	je	.label_360
	nop	
.label_364:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	r15
	jne	.label_364
.label_360:
	lea	rdi, [rdi]
	mov	edi, 0xa
	jmp	.label_366
.label_327:
	test	r15, r15
	je	.label_332
	nop	word ptr cs:[rax + rax]
.label_371:
	mov	edi, 0x20
	lea	rdi, [rdi]
	mov	rsi, r12
	call	fputc
	dec	r15
	jne	.label_371
.label_332:
	lea	rdi, [rdi]
	mov	edi, 9
	jmp	.label_366
.label_384:
	test	r14, r14
	mov	rsi, rax
	nop	
	je	.label_369
.label_377:
	mov	edi, 0x20
	mov	rbx, rsi
	mov	rbp, rbp
	call	fputc
	nop	
	mov	rsi, rbx
	lea	rdi, [rdi]
	dec	r14
	nop	
	jne	.label_377
.label_369:
	mov	qword ptr [rsp + 0x70], rsi
	lea	rdi, [rdi]
	movzx	edi, byte ptr [rsp + 0x40]
	lea	rdi, [rdi]
	call	fputc
	mov	edi, dword ptr [rsp + 0x18]
	nop	
	mov	r10, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x38]
.label_370:
	mov	rdx, qword ptr [rsp + 0x68]
	nop	
	add	rdx, rsi
	mov	rbp, rbp
	jmp	.label_349
.label_437:
	lea	rsi, [rsi]
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rcx, r14
	mov	rsp, rsp
	call	fwrite
.label_335:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], r14
	jmp	.label_395
.label_472:
	nop	
	test	edi, edi
	je	.label_398
.label_3844:
	imul	edx, edx, 0x64
	add	edx, edi
	mov	esi, 6
	mov	rsp, rsp
	mov	r9b, 1
	mov	ebx, 4
	mov	rbp, rbp
	jmp	.label_390
.label_458:
	mov	rsp, rsp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_348
.label_412:
	mov	rbp, rbp
	mov	edi, 0x20
	mov	rbp, rbp
	mov	rsi, r14
	call	fputc
	mov	rbp, rbp
	dec	r15
	jne	.label_412
.label_348:
	nop	
	mov	qword ptr [rsp + 0x70], r14
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, r14
	nop	
	call	fputc
	mov	r10, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x18]
.label_409:
	lea	rdi, [rdi]
	add	qword ptr [rsp + 0x68], rdx
.label_433:
	cmp	qword ptr [rsp + 0x70], 0
	movsxd	r14, esi
	je	.label_424
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], r10
	mov	rbp, rbp
	xor	ebx, ebx
	test	r14, r14
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x70]
	je	.label_383
	nop	word ptr cs:[rax + rax]
.label_436:
	mov	edi, 0x30
	lea	rsi, [rsi]
	mov	rsi, r15
	lea	rdi, [rdi]
	call	fputc
	lea	rdi, [rdi]
	inc	rbx
	mov	rsp, rsp
	cmp	rbx, r14
	jb	.label_436
	mov	rbx, r14
	jmp	.label_383
.label_424:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], r10
	mov	rbx, r14
	mov	r15, qword ptr [rsp + 0x70]
.label_383:
	mov	qword ptr [rsp + 0x70], r15
	nop	
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	add	rdx, rbx
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	r10, qword ptr [rsp + 0x58]
.label_349:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x68], rdx
	lea	rdi, [rdi]
	lea	r15, [rsp + 0x37]
	sub	r15, r12
	nop	
	xor	eax, eax
	test	edi, edi
	cmovns	eax, edi
	cdqe	
	cmp	r15, rax
	mov	rbx, r15
	cmovb	rbx, rax
	mov	rbp, rbp
	mov	rcx, rdx
	lea	rdi, [rdi]
	not	rcx
	cmp	rbx, rcx
	lea	rsi, [rsi]
	jae	.label_337
	mov	r14, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_362
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbx
	lea	rsi, [rsi]
	cmp	r15, rax
	setae	al
	lea	rsi, [rsi]
	test	r10d, r10d
	jne	.label_399
	test	al, al
	jne	.label_399
	nop	
	movsxd	rax, edi
	mov	rbx, rax
	sub	rbx, r15
	nop	
	cmp	ebp, 0x30
	je	.label_446
	cmp	ebp, 0x2b
	jne	.label_459
.label_446:
	xor	ebp, ebp
	nop	
	cmp	rax, r15
	nop	
	je	.label_399
	nop	
.label_466:
	mov	rsp, rsp
	mov	edi, 0x30
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rdi, [rdi]
	call	fputc
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, rbx
	jb	.label_466
	mov	rsp, rsp
	jmp	.label_399
.label_459:
	xor	ebp, ebp
	cmp	rax, r15
	lea	rdi, [rdi]
	je	.label_399
.label_387:
	mov	edi, 0x20
	mov	rsi, r14
	mov	rsp, rsp
	call	fputc
	lea	rdi, [rdi]
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, rbx
	nop	
	jb	.label_387
.label_399:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x78]
	test	al, al
	je	.label_474
	mov	rbp, rbp
	lea	rax, [rsp + 0x37]
	lea	rdi, [rdi]
	cmp	rax, r12
	mov	rbx, qword ptr [rsp + 0x18]
	je	.label_362
	lea	rsi, [rsi]
	call	__ctype_toupper_loc
	mov	r15, rax
	mov	rax, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	lea	rbp, [rax + r12]
	nop	word ptr [rax + rax]
.label_486:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r12]
	mov	rcx, qword ptr [r15]
	nop	
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	fputc
	lea	rdi, [rdi]
	inc	r12
	lea	rdi, [rdi]
	inc	rbp
	jne	.label_486
	lea	rdi, [rdi]
	jmp	.label_362
.label_474:
	mov	rbp, rbp
	mov	edx, 1
	nop	
	mov	rdi, r12
	mov	rsi, r15
	mov	rcx, r14
	call	fwrite
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x18]
.label_362:
	mov	qword ptr [rsp + 0x70], r14
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x68]
	add	rbp, rbx
	lea	rsi, [rsi]
	movabs	rdi, 0x1000000000002500
	mov	rbp, rbp
	jmp	.label_334
.label_449:
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_340
.label_344:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	r15
	mov	rsp, rsp
	jne	.label_344
.label_340:
	movsx	edi, byte ptr [r13]
.label_366:
	nop	
	mov	rsi, r12
	lea	rsi, [rsi]
	call	fputc
.label_402:
	mov	rbp, qword ptr [rsp + 0x68]
	add	rbp, r14
	mov	rbp, rbp
	movabs	rdi, 0x1000000000002500
	nop	word ptr cs:[rax + rax]
.label_334:
	mov	al, byte ptr [r13 + 1]
	lea	rsi, [rsi]
	inc	r13
	mov	rsp, rsp
	mov	r9d, 0xffffffff
	test	al, al
	nop	
	jne	.label_415
	lea	rsi, [rsi]
	jmp	.label_355
.label_337:
	mov	rsp, rsp
	xor	ebp, ebp
.label_355:
	mov	rax, rbp
	lea	rdi, [rdi]
	add	rsp, 0x4a8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408ce0

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
	je	.label_494
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	je	.label_497
	mov	rbp, rbp
	cmp	eax, 2
	je	.label_500
	lea	rsi, [rsi]
	mov	edi, 2
	mov	rsp, rsp
	mov	esi, 2
	mov	rsp, rsp
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_500:
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
	jmp	.label_501
.label_494:
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_492
.label_497:
	nop	
	xor	r15d, r15d
.label_501:
	nop	
	xor	r13d, r13d
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_498
	nop	
	mov	edi, OFFSET FLAT:.str_6
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	nop	
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_498
	lea	rsi, [rsi]
	mov	r13b, 1
	lea	rdi, [rdi]
	jmp	.label_499
.label_498:
	nop	
	test	r12b, r12b
	je	.label_496
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_6
	nop	
	xor	esi, esi
	nop	
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_499
.label_496:
	lea	rdi, [rdi]
	test	r15b, r15b
	lea	rdi, [rdi]
	je	.label_492
	mov	edi, OFFSET FLAT:.str_6
	xor	esi, esi
	xor	eax, eax
	call	open
	nop	
	cmp	eax, 2
	jne	.label_499
.label_492:
	mov	rdi, rbp
	nop	
	mov	rsi, r14
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_495
.label_499:
	xor	r14d, r14d
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	js	.label_495
	mov	edi, eax
	call	close
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_495:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	lea	rsi, [rsi]
	test	r15b, r15b
	nop	
	je	.label_504
	nop	
	mov	edi, 2
	call	close
.label_504:
	mov	rbp, rbp
	test	r12b, r12b
	je	.label_493
	mov	edi, 1
	nop	
	call	close
.label_493:
	test	r13b, r13b
	je	.label_503
	nop	
	xor	edi, edi
	mov	rsp, rsp
	call	close
.label_503:
	nop	
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_502
	lea	rdi, [rdi]
	mov	dword ptr [rbx], ebp
.label_502:
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
	#Procedure 0x408eb0
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ec0
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ed0
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ee0
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
	jae	.label_505
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
	jb	.label_510
	xor	eax, eax
	nop	
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_512
	mov	rbp, rbp
	mov	rdi, rcx
	nop	dword ptr [rax]
.label_508:
	nop	
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	mov	rsp, rsp
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_508
.label_512:
	add	rcx, 0x10
.label_510:
	nop	
	test	rsi, rsi
	je	.label_505
	nop	word ptr cs:[rax + rax]
.label_511:
	cmp	qword ptr [rcx], 0
	nop	
	mov	esi, 0
	mov	rdi, rcx
	mov	rbp, rbp
	je	.label_506
	nop	word ptr cs:[rax + rax]
.label_507:
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_507
	mov	rbp, rbp
	cmp	rsi, rax
	lea	rsi, [rsi]
	cmova	rax, rsi
.label_506:
	cmp	qword ptr [rcx + 0x10], 0
	nop	
	je	.label_513
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_509:
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	inc	rsi
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_509
	mov	rsp, rsp
	cmp	rsi, rax
	nop	
	cmova	rax, rsi
.label_513:
	mov	rsp, rsp
	add	rcx, 0x20
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rsp, rsp
	jb	.label_511
.label_505:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ff0
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
	jae	.label_516
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
	jb	.label_517
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_526
	mov	esi, 1
	mov	rax, rcx
	nop	dword ptr [rax + rax]
.label_520:
	mov	rbp, rbp
	inc	rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	test	rax, rax
	jne	.label_520
	mov	rsp, rsp
	jmp	.label_522
.label_517:
	mov	rbp, rbp
	xor	esi, esi
	jmp	.label_524
.label_526:
	xor	esi, esi
.label_522:
	add	rcx, 0x10
.label_524:
	test	r8, r8
	nop	
	je	.label_516
	nop	dword ptr [rax]
.label_518:
	cmp	qword ptr [rcx], 0
	mov	rbp, rbp
	mov	rax, rcx
	je	.label_514
	nop	dword ptr [rax]
.label_525:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_525
	lea	rdi, [rdi]
	inc	rsi
.label_514:
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_523
	lea	rax, [rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_515:
	lea	rdi, [rdi]
	inc	rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_515
	inc	rsi
.label_523:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_518
.label_516:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_519
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	cmp	rdx, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	je	.label_521
.label_519:
	xor	eax, eax
.label_521:
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409100
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
	jae	.label_527
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
	jb	.label_529
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_532
	mov	rsp, rsp
	mov	rdi, rax
	nop	word ptr [rax + rax]
.label_533:
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	nop	
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_533
.label_532:
	add	rax, 0x10
.label_529:
	test	rsi, rsi
	je	.label_527
	nop	dword ptr [rax]
.label_538:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	je	.label_528
	nop	word ptr cs:[rax + rax]
.label_530:
	mov	rdi, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	inc	rsi
	nop	
	test	rdi, rdi
	jne	.label_530
	mov	rbp, rbp
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_528:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_531
	lea	rdi, [rax + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_534:
	mov	rdi, qword ptr [rdi + 8]
	mov	rsp, rsp
	inc	rsi
	test	rdi, rdi
	jne	.label_534
	mov	rbp, rbp
	cmp	rsi, rbx
	mov	rbp, rbp
	cmova	rbx, rsi
.label_531:
	add	rax, 0x20
	nop	
	cmp	rax, rdx
	jb	.label_538
.label_527:
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
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_535]]
	punpckldq	xmm1, xmm2
	lea	rsi, [rsi]
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_536]]
	nop	
	subpd	xmm1, xmm3
	lea	rdi, [rdi]
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	lea	rsi, [rsi]
	mulsd	xmm0,  qword ptr [word ptr [rip + label_537]]
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
	#Procedure 0x409310

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
	jae	.label_542
	mov	rbx, qword ptr [r14]
	nop	
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	mov	rsp, rsp
	test	rsi, rsi
	je	.label_540
	lea	rsi, [rsi]
	add	rbx, rax
	je	.label_540
	cmp	rsi, r12
	je	.label_539
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_541:
	nop	
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_543
	nop	
	mov	rbx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_540
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	nop	
	cmp	rsi, r12
	lea	rdi, [rdi]
	jne	.label_541
.label_539:
	mov	r15, r12
	jmp	.label_540
.label_543:
	nop	
	mov	r15, qword ptr [rbx]
.label_540:
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
.label_542:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4093d0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	mov	rbp, rbp
	je	.label_544
	nop	
	mov	rcx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi + 8]
	mov	rbp, rbp
	jmp	.label_547
	nop	dword ptr [rax]
.label_545:
	add	rcx, 0x10
.label_547:
	cmp	rcx, rdx
	jae	.label_546
	mov	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_545
.label_544:
	mov	rsp, rsp
	ret	
.label_546:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x409410
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
	jae	.label_552
	nop	
	mov	rcx, qword ptr [r14]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	lea	rdx, [rcx + rax]
	nop	word ptr [rax + rax]
.label_553:
	nop	
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	je	.label_549
	test	rdx, rdx
	jne	.label_553
	lea	rdi, [rdi]
	jmp	.label_550
.label_549:
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_550
	mov	rax, qword ptr [rdx]
	jmp	.label_548
.label_550:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	dword ptr [rax]
.label_551:
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	eax, 0
	mov	rbp, rbp
	jae	.label_548
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_551
.label_548:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_552:
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4094b0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_554
	nop	word ptr cs:[rax + rax]
.label_556:
	add	r9, 0x10
.label_554:
	nop	
	cmp	r9, r8
	lea	rdi, [rdi]
	jae	.label_555
	lea	rsi, [rsi]
	cmp	qword ptr [r9], 0
	je	.label_556
	test	r9, r9
	mov	rbp, rbp
	mov	r10, r9
	mov	rbp, rbp
	je	.label_556
	nop	word ptr cs:[rax + rax]
.label_557:
	mov	rsp, rsp
	cmp	rax, rdx
	jae	.label_555
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
	jne	.label_557
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_556
.label_555:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409530
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
	jmp	.label_561
	nop	dword ptr [rax]
.label_559:
	lea	rsi, [rsi]
	add	r13, 0x10
.label_561:
	nop	
	cmp	r13, rax
	lea	rsi, [rsi]
	jae	.label_560
	mov	rdi, qword ptr [r13]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_559
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_559
	mov	rsi, r14
	lea	rsi, [rsi]
	call	r15
	mov	rbp, rbp
	test	al, al
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_560
	nop	word ptr [rax + rax]
.label_562:
	mov	rsp, rsp
	inc	rbx
	mov	rbp, rbp
	mov	rbp, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_558
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_562
	jmp	.label_560
	nop	word ptr cs:[rax + rax]
.label_558:
	mov	rax, qword ptr [r12 + 8]
	mov	rbp, rbp
	jmp	.label_559
.label_560:
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
	#Procedure 0x409600

	.globl hash_string
	.type hash_string, @function
hash_string:
	nop
	mov	al, byte ptr [rdi]
	nop	
	xor	edx, edx
	test	al, al
	je	.label_564
	inc	rdi
	nop	
	xor	edx, edx
.label_563:
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
	jne	.label_563
.label_564:
	mov	rax, rdx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409640
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	mov	eax,  dword ptr [dword ptr [rip + label_565]]
	mov	dword ptr [rdi + 0x10], eax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409660

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
	je	.label_574
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	mov	rbp, rbp
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_569
	movss	xmm0, dword ptr [rbx + 8]
	mov	rsp, rsp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_576]]
	jbe	.label_566
	lea	rsi, [rsi]
	movss	xmm1,  dword ptr [dword ptr [rip + label_580]]
	ucomiss	xmm1, xmm0
	jbe	.label_566
	mov	rbp, rbp
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_572]]
	lea	rsi, [rsi]
	jbe	.label_566
	movss	xmm1, dword ptr [rbx]
	lea	rsi, [rsi]
	xorps	xmm2, xmm2
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm2
	jb	.label_566
	addss	xmm1,  dword ptr [dword ptr [rip + label_576]]
	ucomiss	xmm0, xmm1
	lea	rdi, [rdi]
	jbe	.label_566
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbx + 4]
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_577]]
	ucomiss	xmm2, xmm0
	jb	.label_566
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	mov	rsp, rsp
	jbe	.label_566
.label_569:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_581
	lea	rsi, [rsi]
	mov	eax, r12d
	and	eax, 1
	nop	
	test	r12, r12
	js	.label_568
	mov	rbp, rbp
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_573
.label_568:
	shr	r12, 1
	mov	rsp, rsp
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_573:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_578]]
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
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_579]]
	nop	
	jae	.label_566
.label_581:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	mov	rsp, rsp
	jmp	.label_571
.label_570:
	mov	rbp, rbp
	add	rbx, 2
.label_571:
	cmp	rbx, -1
	mov	rbp, rbp
	je	.label_566
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	mov	edi, 9
	mov	rbp, rbp
	mov	ecx, 3
	lea	rdi, [rdi]
	jb	.label_575
	nop	word ptr cs:[rax + rax]
.label_567:
	xor	edx, edx
	mov	rax, rbx
	lea	rsi, [rsi]
	div	rcx
	test	rdx, rdx
	nop	
	je	.label_575
	mov	rbp, rbp
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	mov	rsp, rsp
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_567
.label_575:
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_570
	mov	rbp, rbp
	mov	rax, rbx
	lea	rdi, [rdi]
	shr	rax, 0x3c
	jne	.label_566
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_566
	mov	esi, 0x10
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_566
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
	jmp	.label_574
.label_566:
	nop	
	mov	rdi, r15
	call	free
	nop	
	xor	eax, eax
.label_574:
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
	#Procedure 0x409940

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
	#Procedure 0x409960

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
	#Procedure 0x409970
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
	jmp	.label_586
.label_582:
	mov	rsp, rsp
	add	r14, 0x10
.label_586:
	cmp	r14, rax
	jae	.label_587
	lea	rdi, [rdi]
	cmp	qword ptr [r14], 0
	nop	
	je	.label_582
	mov	rsp, rsp
	mov	rbx, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	nop	
	setne	cl
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_585
	nop	word ptr [rax + rax]
.label_584:
	nop	
	test	cl, 1
	je	.label_583
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	rax
	nop	
	mov	rax, qword ptr [r15 + 0x40]
.label_583:
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
	jne	.label_584
.label_585:
	test	cl, cl
	je	.label_588
	mov	rdi, qword ptr [r14]
	call	rax
.label_588:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	nop	
	jmp	.label_582
.label_587:
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
	#Procedure 0x409a50

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
	je	.label_593
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x20], 0
	lea	rdi, [rdi]
	je	.label_593
	mov	r15, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	mov	rbp, rbp
	jmp	.label_598
	nop	word ptr [rax + rax]
.label_594:
	mov	rsp, rsp
	add	r15, 0x10
.label_598:
	lea	rdi, [rdi]
	cmp	r15, rax
	jae	.label_593
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_594
	test	r15, r15
	je	.label_594
	mov	rbp, rbp
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_590
	nop	dword ptr [rax]
.label_589:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_590:
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_589
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_594
.label_593:
	mov	r15, qword ptr [r14]
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	jmp	.label_599
	nop	dword ptr [rax + rax]
.label_591:
	mov	rbp, rbp
	add	r15, 0x10
.label_599:
	cmp	r15, rax
	jae	.label_597
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_591
	nop	dword ptr [rax + rax]
.label_595:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_595
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_591
.label_597:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_596
	nop	word ptr cs:[rax + rax]
.label_592:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	call	free
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	jne	.label_592
.label_596:
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
	#Procedure 0x409b80

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
	jne	.label_600
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	and	ecx, 1
	lea	rsi, [rsi]
	test	rsi, rsi
	js	.label_610
	lea	rdi, [rdi]
	cvtsi2ss	xmm0, rsi
	lea	rdi, [rdi]
	jmp	.label_618
.label_610:
	shr	rsi, 1
	or	rcx, rsi
	mov	rsp, rsp
	cvtsi2ss	xmm0, rcx
	mov	rbp, rbp
	addss	xmm0, xmm0
.label_618:
	nop	
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_578]]
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
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_579]]
	mov	rbp, rbp
	jae	.label_601
.label_600:
	mov	rsp, rsp
	cmp	rsi, 0xa
	mov	rbp, rbp
	mov	ebx, 0xa
	mov	rbp, rbp
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_614
	nop	word ptr cs:[rax + rax]
.label_613:
	lea	rsi, [rsi]
	add	rbx, 2
.label_614:
	cmp	rbx, -1
	je	.label_601
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	nop	
	mov	edi, 9
	lea	rsi, [rsi]
	mov	ecx, 3
	lea	rsi, [rsi]
	jb	.label_604
.label_615:
	nop	
	xor	edx, edx
	mov	rax, rbx
	nop	
	div	rcx
	test	rdx, rdx
	je	.label_604
	lea	rdi, [rdi + rsi + 4]
	nop	
	add	rcx, 2
	add	rsi, 8
	lea	rsi, [rsi]
	cmp	rdi, rbx
	jb	.label_615
.label_604:
	mov	rsp, rsp
	xor	edx, edx
	nop	
	mov	rax, rbx
	div	rcx
	mov	rsp, rsp
	test	rdx, rdx
	je	.label_613
	nop	
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	ja	.label_601
	mov	bpl, 1
	mov	rbp, rbp
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_608
	nop	
	mov	esi, 0x10
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_601
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
	je	.label_609
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
	jmp	.label_608
.label_609:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rax
	nop	
	mov	r12, qword ptr [rsp]
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_606
.label_602:
	add	r12, 0x10
.label_606:
	nop	
	cmp	r12, r15
	lea	rsi, [rsi]
	jae	.label_605
	cmp	qword ptr [r12], 0
	je	.label_602
	mov	rbp, rbp
	mov	rbp, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_616
	mov	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_617:
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp]
	nop	
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	lea	rsi, [rsi]
	jae	.label_603
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	nop	
	shl	rax, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + rax], 0
	je	.label_607
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp + 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_612
	nop	
.label_607:
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
.label_612:
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rcx
	nop	
	jne	.label_617
.label_616:
	nop	
	mov	qword ptr [r12 + 8], 0
	nop	
	jmp	.label_602
.label_605:
	nop	
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_611
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	call	free
.label_601:
	mov	rbp, rbp
	xor	ebp, ebp
.label_608:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_603:
	mov	rbp, rbp
	call	abort
.label_611:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ef0

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
	mov	qword ptr [rsp], rsi
	mov	r15, rdi
	mov	rbp, rbp
	mov	r13, qword ptr [rsi]
	mov	rbp, rbp
	mov	rax, qword ptr [rsi + 8]
	nop	
	cmp	r13, rax
	nop	
	jae	.label_627
	nop	
	test	dl, dl
	je	.label_628
	nop	dword ptr [rax]
.label_621:
	nop	
	cmp	qword ptr [r13], 0
	mov	rbp, rbp
	je	.label_629
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_639
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x10]
	nop	dword ptr [rax]
.label_637:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	nop	
	call	qword ptr [r15 + 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	cmp	rax, rsi
	jae	.label_632
	mov	rbp, rbp
	mov	rdx, qword ptr [r15]
	mov	rcx, qword ptr [rbp + 8]
	nop	
	shl	rax, 4
	mov	rsp, rsp
	cmp	qword ptr [rdx + rax], 0
	lea	rsi, [rsi]
	je	.label_619
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rdx + rax + 8], rbp
	nop	
	jmp	.label_635
	nop	word ptr cs:[rax + rax]
.label_619:
	mov	rbp, rbp
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r15 + 0x18]
	nop	
	mov	qword ptr [rbp], 0
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbp + 8], rax
	nop	
	mov	qword ptr [r15 + 0x48], rbp
.label_635:
	test	rcx, rcx
	mov	rbp, rcx
	mov	rsp, rsp
	jne	.label_637
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
.label_639:
	mov	rsp, rsp
	mov	qword ptr [r13 + 8], 0
.label_629:
	mov	rsp, rsp
	add	r13, 0x10
	mov	rsp, rsp
	cmp	r13, rax
	jb	.label_621
	jmp	.label_627
	nop	word ptr cs:[rax + rax]
.label_628:
	mov	rbp, rbp
	mov	r12, qword ptr [r13]
	mov	rbp, rbp
	test	r12, r12
	mov	rsp, rsp
	je	.label_633
	lea	rdi, [rdi]
	mov	r14, qword ptr [r13 + 8]
	test	r14, r14
	mov	rsi, qword ptr [r15 + 0x10]
	nop	
	je	.label_620
	nop	dword ptr [rax + rax]
.label_624:
	mov	rbx, qword ptr [r14]
	mov	rdi, rbx
	nop	
	call	qword ptr [r15 + 0x30]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	cmp	rax, rsi
	jae	.label_632
	mov	rdx, qword ptr [r15]
	nop	
	mov	rcx, qword ptr [r14 + 8]
	nop	
	shl	rax, 4
	nop	
	cmp	qword ptr [rdx + rax], 0
	mov	rsp, rsp
	je	.label_638
	mov	rdi, qword ptr [rdx + rax + 8]
	nop	
	mov	qword ptr [r14 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r14
	lea	rdi, [rdi]
	jmp	.label_625
	nop	word ptr [rax + rax]
.label_638:
	add	rdx, rax
	nop	
	mov	qword ptr [rdx], rbx
	mov	rbp, rbp
	inc	qword ptr [r15 + 0x18]
	mov	qword ptr [r14], 0
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x48]
	nop	
	mov	qword ptr [r14 + 8], rax
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x48], r14
.label_625:
	mov	rbp, rbp
	test	rcx, rcx
	mov	r14, rcx
	jne	.label_624
	mov	r12, qword ptr [r13]
.label_620:
	mov	rbp, rbp
	mov	qword ptr [r13 + 8], 0
	mov	rbp, rbp
	mov	rdi, r12
	call	qword ptr [r15 + 0x30]
	nop	
	mov	rbx, rax
	mov	rbp, rbp
	cmp	rbx, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	jae	.label_622
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + rbx], 0
	je	.label_626
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x48]
	test	rax, rax
	je	.label_630
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x48], rcx
	jmp	.label_634
	nop	word ptr cs:[rax + rax]
.label_626:
	lea	rsi, [rsi]
	add	rbp, rbx
	mov	rbp, rbp
	mov	qword ptr [rbp], r12
	inc	qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	jmp	.label_623
.label_630:
	mov	rbp, rbp
	mov	edi, 0x10
	mov	rsp, rsp
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_636
.label_634:
	mov	qword ptr [rax], r12
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp + rbx + 8], rax
.label_623:
	mov	qword ptr [r13], 0
	nop	
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	dec	qword ptr [rax + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
.label_633:
	mov	rsp, rsp
	add	r13, 0x10
	cmp	r13, rax
	nop	
	jb	.label_628
.label_627:
	nop	
	mov	al, 1
.label_631:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_636:
	xor	eax, eax
	jmp	.label_631
.label_632:
	call	abort
.label_622:
	mov	rsp, rsp
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a200

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
	je	.label_640
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
	jae	.label_640
	mov	rbx, qword ptr [r13]
	mov	rbp, rbp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	nop	
	test	rsi, rsi
	je	.label_641
	mov	rsp, rsp
	cmp	rsi, r14
	je	.label_670
	mov	rdi, r14
	nop	
	call	qword ptr [r13 + 0x38]
	test	al, al
	lea	rdi, [rdi]
	je	.label_643
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	jmp	.label_662
.label_670:
	mov	rax, r14
	jmp	.label_648
.label_643:
	mov	rax, qword ptr [rbx + rbp + 8]
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_641
	lea	rbp, [rbx + rbp + 8]
	nop	
.label_664:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	mov	rsp, rsp
	je	.label_654
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	jne	.label_661
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_664
	nop	
	jmp	.label_641
.label_654:
	mov	rbp, rbp
	mov	rax, r14
	jmp	.label_662
.label_661:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp]
.label_662:
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_641
.label_648:
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	r15, r15
	je	.label_646
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	jmp	.label_646
.label_641:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsp, rsp
	mov	edx, eax
	and	edx, 1
	nop	
	test	rax, rax
	mov	rbp, rbp
	js	.label_657
	cvtsi2ss	xmm1, rax
	jmp	.label_652
.label_657:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	lea	rdi, [rdi]
	addss	xmm1, xmm1
.label_652:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	edx, ecx
	and	edx, 1
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_663
	cvtsi2ss	xmm0, rcx
	jmp	.label_669
.label_663:
	shr	rcx, 1
	or	rdx, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, rdx
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_669:
	lea	rdi, [rdi]
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm3
	nop	
	jbe	.label_642
	nop	
	mov	ecx, OFFSET FLAT:default_tuning
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rbp, rbp
	je	.label_651
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_576]]
	jbe	.label_656
	nop	
	movss	xmm3,  dword ptr [dword ptr [rip + label_580]]
	ucomiss	xmm3, xmm2
	jbe	.label_656
	mov	rbp, rbp
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_572]]
	jbe	.label_656
	movss	xmm3, dword ptr [rax]
	lea	rsi, [rsi]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	lea	rdi, [rdi]
	jb	.label_656
	addss	xmm3,  dword ptr [dword ptr [rip + label_576]]
	ucomiss	xmm2, xmm3
	jbe	.label_656
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_577]]
	ucomiss	xmm5, xmm4
	mov	rbp, rbp
	jb	.label_656
	lea	rsi, [rsi]
	ucomiss	xmm4, xmm3
	lea	rsi, [rsi]
	ja	.label_645
.label_656:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_644]]
	jmp	.label_645
.label_651:
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:default_tuning
.label_645:
	movaps	xmm3, xmm2
	mov	rsp, rsp
	mulss	xmm3, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm3
	jbe	.label_642
	nop	
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rbp, rbp
	jne	.label_665
	mov	rbp, rbp
	mulss	xmm0, xmm2
.label_665:
	lea	rsi, [rsi]
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_579]]
	mov	rsp, rsp
	jae	.label_646
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_578]]
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
	je	.label_646
	mov	rsi, qword ptr [r13 + 0x10]
	nop	
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	lea	rsi, [rsi]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_640
	nop	
	mov	r15, qword ptr [r13]
	mov	rsp, rsp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [r15 + rbp]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_642
	cmp	rsi, r14
	mov	rbp, rbp
	mov	rax, r14
	lea	rdi, [rdi]
	je	.label_667
	mov	rdi, r14
	mov	rbp, rbp
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_650
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	jmp	.label_667
.label_650:
	mov	rax, qword ptr [r15 + rbp + 8]
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_642
	lea	rbp, [r15 + rbp + 8]
.label_668:
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	lea	rdi, [rdi]
	je	.label_660
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_666
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	mov	rsp, rsp
	add	rbp, 8
	test	rax, rax
	mov	rsp, rsp
	jne	.label_668
	lea	rsi, [rsi]
	jmp	.label_642
.label_660:
	mov	rax, r14
	lea	rdi, [rdi]
	jmp	.label_667
.label_666:
	mov	rax, qword ptr [rbp]
.label_667:
	mov	rsp, rsp
	test	rax, rax
	jne	.label_647
.label_642:
	cmp	qword ptr [r12], 0
	je	.label_649
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	mov	rbp, rbp
	je	.label_653
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0x48], rcx
	nop	
	jmp	.label_655
.label_649:
	lea	rsi, [rsi]
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_658]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	mov	rsp, rsp
	jmp	.label_659
.label_653:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_646
.label_655:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_659:
	lea	rdi, [rdi]
	mov	ebp, 1
.label_646:
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
.label_640:
	mov	rsp, rsp
	call	abort
.label_647:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a640

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
	je	.label_671
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rax, rbx
.label_671:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a690

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
	jae	.label_682
	mov	rbp, rbp
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	nop	
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_678
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_685
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_689
	mov	r14, qword ptr [r13]
.label_685:
	nop	
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_692
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
	jmp	.label_677
.label_689:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_678
	lea	rsi, [rsi]
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_691:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_684
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	mov	rsp, rsp
	jne	.label_686
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	lea	rsi, [rsi]
	jne	.label_691
	lea	rsi, [rsi]
	jmp	.label_678
.label_692:
	mov	qword ptr [r13], 0
	lea	rsi, [rsi]
	jmp	.label_677
.label_684:
	mov	rcx, rax
	jmp	.label_680
.label_686:
	mov	r14, qword ptr [rcx]
.label_680:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x48], rcx
.label_677:
	lea	rdi, [rdi]
	xor	r12d, r12d
	test	r14, r14
	je	.label_678
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	mov	rbp, rbp
	jne	.label_673
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_687
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	jmp	.label_675
.label_687:
	shr	rax, 1
	mov	rsp, rsp
	or	rcx, rax
	mov	rsp, rsp
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_675:
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	nop	
	test	rcx, rcx
	js	.label_681
	cvtsi2ss	xmm0, rcx
	mov	rsp, rsp
	jmp	.label_683
.label_681:
	mov	rbp, rbp
	shr	rcx, 1
	or	rdx, rcx
	nop	
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_683:
	movaps	xmm3, xmm2
	nop	
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_673
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_688
	lea	rdi, [rdi]
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_576]]
	nop	
	jbe	.label_672
	mov	rsp, rsp
	movss	xmm4,  dword ptr [dword ptr [rip + label_580]]
	ucomiss	xmm4, xmm3
	mov	rsp, rsp
	jbe	.label_672
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_672
	mov	rbp, rbp
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_572]]
	jbe	.label_672
	lea	rsi, [rsi]
	movss	xmm4,  dword ptr [dword ptr [rip + label_576]]
	addss	xmm4, xmm2
	mov	rbp, rbp
	ucomiss	xmm3, xmm4
	jbe	.label_672
	movss	xmm3, dword ptr [rax + 4]
	nop	
	movss	xmm5,  dword ptr [dword ptr [rip + label_577]]
	nop	
	ucomiss	xmm5, xmm3
	jb	.label_672
	ucomiss	xmm3, xmm4
	ja	.label_674
.label_672:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_674
.label_688:
	mov	eax, OFFSET FLAT:default_tuning
.label_674:
	mulss	xmm2, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm2, xmm1
	jbe	.label_673
	mulss	xmm0, dword ptr [rax + 4]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x10], 0
	mov	rsp, rsp
	jne	.label_679
	mulss	xmm0, dword ptr [rax + 8]
.label_679:
	movss	xmm1,  dword ptr [dword ptr [rip + label_578]]
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
	jne	.label_673
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_690
.label_676:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	mov	rsp, rsp
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	jne	.label_676
.label_690:
	nop	
	mov	qword ptr [r15 + 0x48], 0
.label_673:
	nop	
	mov	r12, r14
.label_678:
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
.label_682:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a9e0

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
	jbe	.label_731
	nop	
	test	r13, r13
	mov	r8d, r14d
	mov	rdi, qword ptr [rsp + 0x120]
	mov	rsp, rsp
	je	.label_695
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, rsi
	mov	rbp, rbp
	div	r13
	mov	rsp, rsp
	test	rdx, rdx
	jne	.label_695
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
	jmp	.label_739
.label_731:
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
	jne	.label_695
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
	jne	.label_695
.label_739:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x110], rbx
	mov	rbp, rbp
	mov	r14d, r8d
	nop	
	and	r14d, 0x10
	mov	r13d, 0xffffffff
	nop	
	je	.label_741
	mov	rsp, rsp
	mov	ebx, dword ptr [rsp + 0xdc]
	nop	
	mov	edi, ebx
	xor	r13d, r13d
	mov	rbp, rbp
	cmp	rdi, r15
	mov	rbp, rbp
	jbe	.label_744
	nop	
	mov	r12, qword ptr [rsp + 0x110]
	jmp	.label_703
.label_695:
	mov	qword ptr [rsp + 0xe8], rsi
	mov	rbp, rbp
	test	rsi, rsi
	setns	al
	lea	rsi, [rsi]
	movzx	eax, al
	fild	qword ptr [rsp + 0xe8]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_707]]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rdi
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_707]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], r13
	lea	rsi, [rsi]
	test	r13, r13
	setns	al
	nop	
	movzx	eax, al
	fild	qword ptr [rsp + 0x78]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_707]]
	fdivrp	st(2)
	mov	rsp, rsp
	fmulp	st(1)
	nop	
	test	r8b, 0x10
	lea	rsi, [rsi]
	jne	.label_708
	nop	
	mov	ecx, dword ptr [rsp + 0x84]
	lea	rdi, [rdi]
	cmp	ecx, 1
	lea	rsi, [rsi]
	je	.label_735
	mov	rsp, rsp
	fld	xword ptr [word ptr [rip + label_705]]
	fucomip	st(1)
	mov	r15, qword ptr [rsp + 0x68]
	jbe	.label_740
	mov	qword ptr [rsp + 0x140], rsi
	nop	
	mov	dword ptr [rsp + 0x120], r8d
	fld	dword ptr [dword ptr [rip + label_578]]
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
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_707]]
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
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_707]]
	jmp	.label_728
.label_708:
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
.label_726:
	fstp	st(0)
	mov	rsp, rsp
	fmul	st(1), st(0)
	inc	r13d
	fld	st(0)
	mov	rsp, rsp
	fmul	st(2)
	cmp	r13d, 7
	lea	rsi, [rsi]
	jg	.label_723
	lea	rdi, [rdi]
	fxch	st(3)
	fucomi	st(3)
	fstp	st(3)
	nop	
	fldz	
	mov	rbp, rbp
	jae	.label_726
.label_723:
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
	je	.label_729
	fstp	st(0)
	lea	rdi, [rdi]
	fld	xword ptr [word ptr [rip + label_705]]
	mov	rbp, rbp
	fucomip	st(1)
	fld	st(0)
	jbe	.label_729
	nop	
	fstp	st(0)
	fld	dword ptr [dword ptr [rip + label_578]]
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
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_707]]
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
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_707]]
.label_729:
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
	jb	.label_710
	inc	rdx
	mov	ecx, dword ptr [rsp + 0x120]
	test	cl, 8
	jne	.label_720
	nop	
	mov	r14, rdx
	nop	
	jmp	.label_730
.label_741:
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x110]
	jmp	.label_703
.label_735:
	mov	qword ptr [rsp + 0x140], rsi
	mov	dword ptr [rsp + 0x120], r8d
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	jmp	.label_728
.label_740:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x140], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x120], r8d
.label_728:
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
	jmp	.label_730
.label_720:
	movzx	ecx, byte ptr [rax + r15 - 1]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_743
.label_710:
	fld	xword ptr [rsp + 0x110]
	fmul	dword ptr [dword ptr [rip + label_697]]
	nop	
	cmp	r14d, 1
	lea	rsi, [rsi]
	je	.label_698
	nop	
	fld	xword ptr [word ptr [rip + label_705]]
	fucomip	st(1)
	mov	rbp, rbp
	jbe	.label_698
	mov	rsp, rsp
	fld	dword ptr [dword ptr [rip + label_578]]
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
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_707]]
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
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_707]]
.label_698:
	fdiv	dword ptr [dword ptr [rip + label_697]]
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
	jmp	.label_730
.label_744:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x140], rsi
	nop	word ptr cs:[rax + rax]
.label_709:
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
	jae	.label_738
	add	edx, ebp
	lea	rsi, [rsi]
	setne	al
	movzx	ebp, al
	nop	
	jmp	.label_737
	nop	word ptr cs:[rax + rax]
.label_738:
	add	edx, ebp
	cmp	ebx, edx
	lea	rsi, [rsi]
	sbb	ebp, ebp
	and	ebp, 1
	nop	
	or	ebp, 2
.label_737:
	nop	
	inc	r13d
	cmp	r13d, 7
	mov	rsp, rsp
	jg	.label_704
	lea	rdi, [rdi]
	cmp	rdi, r15
	lea	rsi, [rsi]
	jbe	.label_709
.label_704:
	cmp	r15, 9
	ja	.label_711
	mov	eax, dword ptr [rsp + 0x84]
	cmp	eax, 1
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x68]
	jne	.label_712
	mov	eax, ecx
	and	eax, 1
	add	eax, ebp
	nop	
	cmp	eax, 2
	lea	rsi, [rsi]
	ja	.label_718
	mov	rsp, rsp
	jmp	.label_724
.label_743:
	mov	r14, rdx
.label_730:
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
	jmp	.label_721
.label_711:
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	jmp	.label_736
.label_712:
	nop	
	test	eax, eax
	jne	.label_724
	mov	rsp, rsp
	test	ebp, ebp
	mov	rbp, rbp
	je	.label_724
.label_718:
	inc	ecx
	xor	ebp, ebp
	cmp	ecx, 0xa
	jne	.label_724
	inc	r15
	mov	rsp, rsp
	xor	ecx, ecx
	nop	
	cmp	r15, 9
	mov	rbp, rbp
	mov	ebp, 0
	ja	.label_742
.label_724:
	nop	
	test	r8b, 8
	lea	rdi, [rdi]
	je	.label_694
	test	ecx, ecx
	jne	.label_694
	mov	r12, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	jmp	.label_696
.label_694:
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
.label_696:
	lea	rsi, [rsi]
	xor	ecx, ecx
.label_736:
	mov	rsi, qword ptr [rsp + 0x140]
.label_703:
	mov	eax, dword ptr [rsp + 0x84]
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_722
	cmp	eax, 1
	jne	.label_713
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
	jle	.label_713
	lea	rsi, [rsi]
	jmp	.label_733
.label_722:
	add	ecx, ebp
	nop	
	jle	.label_713
.label_733:
	inc	r15
	mov	eax, dword ptr [rsp + 0xdc]
	cmp	r13d, 7
	nop	
	jg	.label_713
	test	r14d, r14d
	lea	rsi, [rsi]
	je	.label_713
	cmp	r15, rax
	jne	.label_713
	mov	qword ptr [rsp + 0x140], rsi
	inc	r13d
	mov	r15d, 1
	mov	rbp, rbp
	test	r8b, 8
	jne	.label_702
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
	jmp	.label_702
.label_713:
	mov	qword ptr [rsp + 0x140], rsi
.label_702:
	mov	rbx, qword ptr [rsp + 0x110]
	nop	
	mov	edi, dword ptr [rsp + 0xf4]
	lea	rdi, [rdi]
	movabs	rcx, 0xcccccccccccccccd
	mov	rbp, rbp
	mov	rbp, r12
	nop	dword ptr [rax + rax]
.label_717:
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
	ja	.label_717
.label_721:
	nop	
	test	r8b, 4
	jne	.label_732
	mov	rsp, rsp
	mov	r12, rbp
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x140]
	mov	rsp, rsp
	jmp	.label_734
.label_732:
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
	jmp	.label_699
	nop	dword ptr [rax]
.label_701:
	add	r12, r15
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	mov	rdx, r14
	nop	
	call	memcpy
.label_699:
	movzx	eax, byte ptr [r13]
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_716
	nop	
	cmp	eax, 0x7f
	cmovae	rax, rbx
	mov	rbp, rbp
	inc	r13
	lea	rsi, [rsi]
	mov	rbp, rax
.label_716:
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
	jne	.label_701
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0xf4]
	mov	rbx, qword ptr [rsp + 0x110]
	mov	r8d, dword ptr [rsp + 0x120]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x140]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 0x84]
.label_734:
	nop	
	test	r8b, r8b
	mov	rbp, rbp
	jns	.label_727
	test	r13d, r13d
	lea	rdi, [rdi]
	jns	.label_693
	xor	r13d, r13d
	cmp	rsi, 2
	jb	.label_693
	mov	eax, dword ptr [rsp + 0xdc]
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edx, 1
	nop	
.label_700:
	mov	r13d, 8
	cmp	ecx, 7
	je	.label_693
	mov	rbp, rbp
	inc	ecx
	nop	
	imul	rdx, rax
	cmp	rdx, rsi
	mov	r13d, ecx
	jb	.label_700
.label_693:
	nop	
	mov	eax, r8d
	and	eax, 0x100
	mov	rbp, rbp
	test	r8b, 0x40
	lea	rsi, [rsi]
	je	.label_706
	mov	rbp, rbp
	mov	ecx, r13d
	mov	rbp, rbp
	or	ecx, eax
	mov	rsp, rsp
	je	.label_706
	mov	rbx, qword ptr [rsp + 0x68]
	mov	byte ptr [rbx + 0x287], 0x20
	mov	rsp, rsp
	add	rbx, 0x288
.label_706:
	lea	rsi, [rsi]
	test	r13d, r13d
	je	.label_719
	test	edi, edi
	lea	rdi, [rdi]
	jne	.label_714
	mov	cl, 0x6b
	cmp	r13d, 1
	je	.label_725
.label_714:
	lea	rsi, [rsi]
	movsxd	rcx, r13d
	mov	cl,  byte ptr [byte ptr [rcx + power_letter]]
.label_725:
	nop	
	mov	byte ptr [rbx], cl
	lea	rdi, [rdi]
	inc	rbx
.label_719:
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_727
	mov	rsp, rsp
	test	edi, edi
	je	.label_715
	test	r13d, r13d
	lea	rsi, [rsi]
	je	.label_715
	mov	byte ptr [rbx], 0x69
	inc	rbx
.label_715:
	lea	rsi, [rsi]
	mov	byte ptr [rbx], 0x42
	mov	rsp, rsp
	inc	rbx
.label_727:
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
.label_742:
	xor	ebp, ebp
	mov	r12, qword ptr [rsp + 0x110]
	lea	rdi, [rdi]
	mov	r15d, 0xa
	jmp	.label_736
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b7f0

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
	jne	.label_749
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.4_2
	nop	
	call	getenv
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	test	rdi, rdi
	jne	.label_749
	mov	edi, OFFSET FLAT:.str.5_0
	call	getenv
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_754
.label_749:
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
	js	.label_746
	cdqe	
	lea	rsi, [rsi]
	or	ebp,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	lea	rdi, [rdi]
	mov	qword ptr [r15], 1
.label_745:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_753
.label_746:
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
	je	.label_748
	lea	rsi, [rsi]
	mov	dword ptr [r14], 0
.label_753:
	cmp	qword ptr [r15], 0
	mov	rsp, rsp
	jne	.label_752
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
.label_752:
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
.label_748:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbx]
	lea	rsi, [rsi]
	add	al, 0xd0
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0xa
	jb	.label_745
	mov	rax, qword ptr [rsp]
	nop	dword ptr [rax]
.label_750:
	mov	rbp, rbp
	cmp	rax, rbx
	je	.label_751
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbx + 1]
	nop	
	inc	rbx
	add	cl, 0xd0
	movzx	ecx, cl
	nop	
	cmp	ecx, 0xa
	nop	
	jae	.label_750
	jmp	.label_745
.label_754:
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
	jmp	.label_745
.label_751:
	mov	ecx, ebp
	mov	rbp, rbp
	or	ecx, 0x80
	or	ebp, 0x180
	mov	rbp, rbp
	movzx	edx, byte ptr [rax - 1]
	cmp	edx, 0x42
	cmove	ecx, ebp
	lea	rsi, [rsi]
	jne	.label_747
	nop	
	movzx	eax, byte ptr [rax - 2]
	lea	rdi, [rdi]
	cmp	eax, 0x69
	mov	rsp, rsp
	jne	.label_745
.label_747:
	lea	rsi, [rsi]
	or	ecx, 0x20
	mov	ebp, ecx
	jmp	.label_745
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b9f0

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
	je	.label_755
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
	je	.label_756
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], r14
	mov	qword ptr [rbx + 0x10], 0
	jmp	.label_755
.label_756:
	mov	rdi, rbx
	call	free
	xor	ebx, ebx
.label_755:
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
	#Procedure 0x40ba70

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
	#Procedure 0x40ba80

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
	#Procedure 0x40ba90
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
	#Procedure 0x40bac0

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
	je	.label_757
	cmp	qword ptr [rbx], r15
	jne	.label_760
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	jmp	.label_758
.label_757:
	mov	edi, 0x10
	call	malloc
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x10], rbx
	mov	rax, -1
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_758
.label_760:
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
	je	.label_758
	cmp	rcx, rbx
	lea	rsi, [rsi]
	je	.label_759
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + 8]
	jmp	.label_761
.label_759:
	nop	
	mov	qword ptr [r14 + 0x10], 0
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], rcx
.label_761:
	mov	qword ptr [rbx + 8], rax
.label_758:
	lea	rdi, [rdi]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bb70

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	lea	rsi, [rsi]
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	lea	rsi, [rsi]
	js	.label_762
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
.label_764:
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
	ja	.label_764
	mov	rbp, rbp
	jmp	.label_765
.label_762:
	add	rsi, 0x15
	movabs	r8, 0x6666666666666667
.label_763:
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
	ja	.label_763
	mov	rbp, rbp
	mov	byte ptr [rsi - 2], 0x2d
	mov	rsp, rsp
	add	rsi, -2
.label_765:
	nop	
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bc60

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
	je	.label_769
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	cmp	rax, 1
	lea	rdi, [rdi]
	jbe	.label_770
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
	je	.label_779
	shr	rax, 0x20
	je	.label_774
.label_779:
	lea	rsi, [rsi]
	lea	r14, [rsp + 0x40]
	mov	rsp, rsp
	lea	r15, [rsp]
	nop	word ptr cs:[rax + rax]
.label_766:
	mov	rdi, r14
	mov	rbp, rbp
	call	mbuiter_multi_next
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x60]
	nop	
	test	al, al
	je	.label_772
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	shr	rcx, 0x20
	lea	rsi, [rsi]
	je	.label_774
.label_772:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x20]
	test	dil, dil
	nop	
	je	.label_777
	mov	r12d, 0xffffffff
	mov	rbp, rbp
	test	al, al
	je	.label_769
	lea	rdi, [rdi]
	shr	rdi, 0x20
	mov	rbp, rbp
	call	towlower
	mov	r12d, eax
	mov	edi, dword ptr [rsp + 0x64]
	lea	rsi, [rsi]
	call	towlower
	sub	r12d, eax
	jmp	.label_767
.label_777:
	lea	rdi, [rdi]
	mov	r12d, 1
	nop	
	test	al, al
	lea	rdi, [rdi]
	jne	.label_769
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	cmp	rdx, rax
	mov	rsp, rsp
	jne	.label_771
	nop	
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x50]
	call	memcmp
	lea	rdi, [rdi]
	mov	r12d, eax
.label_767:
	test	r12d, r12d
	lea	rsi, [rsi]
	jne	.label_769
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
	je	.label_766
	shr	rax, 0x20
	jne	.label_766
.label_774:
	mov	rsp, rsp
	lea	rdi, [rsp]
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	mov	r12d, 1
	mov	rsp, rsp
	je	.label_769
	lea	rdi, [rdi]
	shr	rax, 0x20
	jne	.label_769
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
	jmp	.label_769
.label_770:
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	r15, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_781:
	movzx	r12d, byte ptr [rbx]
	test	byte ptr [r15 + r12*2 + 1], 1
	nop	
	je	.label_773
	mov	rbp, rbp
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	movzx	r12d, byte ptr [rax + r12*4]
.label_773:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r14]
	lea	rsi, [rsi]
	test	byte ptr [r15 + r13*2 + 1], 1
	mov	rbp, rbp
	je	.label_776
	mov	rbp, rbp
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movzx	r13d, byte ptr [rax + r13*4]
.label_776:
	mov	rsp, rsp
	test	r12d, r12d
	je	.label_780
	inc	rbx
	mov	rsp, rsp
	inc	r14
	cmp	r12d, r13d
	mov	rsp, rsp
	je	.label_781
	nop	
	jmp	.label_768
.label_780:
	xor	r12d, r12d
.label_768:
	mov	rbp, rbp
	sub	r12d, r13d
.label_769:
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
.label_771:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x10]
	nop	
	mov	rsi, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	jae	.label_775
	lea	rsi, [rsi]
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	setg	al
	mov	rbp, rbp
	jmp	.label_778
.label_775:
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	call	memcmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	setns	al
.label_778:
	movzx	eax, al
	mov	rsp, rsp
	lea	r12d, [rax + rax - 1]
	nop	
	jmp	.label_769
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bf90

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
	jne	.label_788
	cmp	byte ptr [rbx], 0
	mov	r15, qword ptr [rbx + 0x10]
	je	.label_790
	lea	r14, [rbx + 4]
	jmp	.label_791
.label_790:
	movzx	eax, byte ptr [r15]
	mov	rbp, rbp
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx,  dword ptr [dword ptr [+ (rcx * 4) + is_basic_table]]
	mov	rbp, rbp
	bt	ecx, eax
	jae	.label_792
	mov	qword ptr [rbx + 0x18], 1
	movsx	eax, byte ptr [r15]
	mov	rbp, rbp
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_786
.label_792:
	lea	rsi, [rsi]
	lea	r14, [rbx + 4]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_782
	lea	rsi, [rsi]
	mov	byte ptr [rbx], 1
.label_791:
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
	je	.label_789
	test	rax, rax
	je	.label_783
	nop	
	cmp	rax, -1
	nop	
	jne	.label_787
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_786
.label_789:
	mov	rdi, qword ptr [rbx + 0x10]
	nop	
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_786
.label_783:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_784
	lea	rdi, [rdi]
	cmp	dword ptr [r12], 0
	lea	rsi, [rsi]
	jne	.label_785
.label_787:
	mov	byte ptr [rbx + 0x20], 1
	mov	rdi, r14
	nop	
	call	mbsinit
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	je	.label_786
	mov	rsp, rsp
	mov	byte ptr [rbx], 0
.label_786:
	lea	rsi, [rsi]
	mov	byte ptr [rbx + 0xc], 1
.label_788:
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_784:
	mov	edi, OFFSET FLAT:.str.2_4
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	nop	
	call	__assert_fail
.label_785:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.3_4
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0xb3
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_782:
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
	#Procedure 0x40c130
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c140
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
	je	.label_793
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 4]
	nop	
	mov	qword ptr [r14 + 4], rax
	jmp	.label_796
.label_793:
	mov	rbp, rbp
	mov	qword ptr [r14 + 4], 0
.label_796:
	mov	al, byte ptr [rbx + 0xc]
	lea	rdi, [rdi]
	mov	byte ptr [r14 + 0xc], al
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rax, [rbx + 0x28]
	mov	rsp, rsp
	cmp	rsi, rax
	jne	.label_795
	lea	rdi, [rdi]
	lea	r15, [r14 + 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	memcpy
	mov	rsi, r15
.label_795:
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
	je	.label_794
	lea	rdi, [rdi]
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x24], eax
.label_794:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c1f0

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
	je	.label_797
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
	jl	.label_799
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_799
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
	jne	.label_798
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_798:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_799:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_797:
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
	#Procedure 0x40c2e0
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
	#Procedure 0x40c330
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
	#Procedure 0x40c350
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
	#Procedure 0x40c370
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
	#Procedure 0x40c3e0
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
	#Procedure 0x40c400
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
	je	.label_800
	test	rdx, rdx
	nop	
	je	.label_800
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_800:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c440
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
	#Procedure 0x40c4f0

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
	sub	rsp, 0xf8
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x24], ebx
	mov	r12d, r8d
	mov	r15, rcx
	mov	qword ptr [rsp + 0xe0], rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	qword ptr [rsp + 0xb8], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x140]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x138]
	mov	qword ptr [rsp + 0x18], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa8], rax
	mov	dl, bl
	mov	rbp, rbp
	shr	dl, 1
	mov	rbp, rbp
	and	dl, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x94], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x5c], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	eax, 0
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xc8], rcx
.label_905:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_920
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_901]]
.label_3808:
	mov	r15d, edi
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_0
	nop	
	mov	esi, r12d
	mov	r14, r10
	nop	
	mov	r13b, r8b
	mov	bl, dl
	mov	rbp, rbp
	call	gettext_quote
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	rsp, rsp
	mov	esi, r12d
	call	gettext_quote
	mov	rsp, rsp
	mov	dl, bl
	mov	rsp, rsp
	mov	edi, r15d
	mov	r8b, r13b
	mov	r10, r14
	nop	
	mov	qword ptr [rsp + 0x98], rax
.label_3809:
	nop	
	mov	qword ptr [rsp + 0xd8], r10
	mov	byte ptr [rsp + 0xf7], r8b
	mov	dword ptr [rsp + 0x38], edi
	test	dl, 1
	mov	rbp, rbp
	mov	r15b, dl
	mov	rbp, rbp
	mov	r14d, 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jne	.label_830
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_830
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_856:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_849
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_849:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_856
.label_830:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x98]
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	r9d, r12d
	mov	qword ptr [rsp + 0x68], rbx
	mov	r13b, 1
	mov	rbp, rbp
	mov	sil, r15b
	mov	r10, qword ptr [rsp + 0xd8]
	nop	
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	edi, dword ptr [rsp + 0x38]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	jmp	.label_801
.label_3801:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_801
.label_3804:
	lea	rsi, [rsi]
	mov	al, 1
.label_3802:
	lea	rsi, [rsi]
	mov	dl, 1
.label_3805:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_890
	mov	rbp, rbp
	mov	cl, al
.label_890:
	mov	al, cl
.label_3803:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_895
	test	rbp, rbp
	je	.label_899
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_891
.label_895:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_891
.label_3806:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_908
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_913
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_813
.label_3807:
	mov	r13b, 1
	mov	rsp, rsp
	mov	r9d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xa0], rax
	mov	sil, 1
	lea	rsi, [rsi]
	jmp	.label_801
.label_899:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_891:
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_801
.label_908:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_813
.label_913:
	nop	
	mov	r14d, 1
.label_813:
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0x68], rax
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	lea	rdi, [rdi]
	mov	r13b, 1
	mov	sil, dl
	nop	word ptr cs:[rax + rax]
.label_801:
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x46], r13b
	cmp	qword ptr [rsp + 0x130], 0
	mov	rbp, rbp
	setne	r12b
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	r15b
	sete	al
	mov	cl, r13b
	mov	rsp, rsp
	and	cl, 1
	mov	byte ptr [rsp + 0x37], cl
	lea	rsi, [rsi]
	sete	byte ptr [rsp + 0xf6]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0x83], bl
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0xa0], 0
	lea	rsi, [rsi]
	setne	cl
	mov	dl, cl
	lea	rsi, [rsi]
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x56], dl
	mov	rbp, rbp
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc6], bl
	sete	dl
	lea	rdi, [rdi]
	and	al, bl
	mov	byte ptr [rsp + 0x47], al
	and	r12b, bl
	mov	byte ptr [rsp + 0x57], r12b
	mov	rsp, rsp
	or	dl, r15b
	mov	byte ptr [rsp + 0xc7], dl
	and	r13b, sil
	mov	rbp, rbp
	and	r13b, cl
	mov	byte ptr [rsp + 0xb7], r13b
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_833
	nop	dword ptr [rax]
.label_825:
	mov	rsp, rsp
	inc	r15
.label_833:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_883
	cmp	r15, r10
	jne	.label_885
	jmp	.label_886
	nop	dword ptr [rax]
.label_883:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_888
.label_885:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_892
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_826
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_826
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	rdi, r11
	mov	r12b, r8b
	mov	r13, r9
	mov	r15, r14
	lea	rsi, [rsi]
	mov	r14, r11
	nop	
	call	strlen
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, r15
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x38]
	mov	r9, r13
	mov	r8b, r12b
	mov	r10, rax
.label_826:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_918
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_836
	nop	dword ptr [rax]
.label_892:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_836
	nop	word ptr cs:[rax + rax]
.label_918:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], r14
	mov	r15d, edi
	lea	rdi, [rdi]
	mov	r13, r9
	mov	rsp, rsp
	mov	r12b, r8b
	lea	rsi, [rsi]
	mov	rbx, r10
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [r11 + rax]
	nop	
	mov	r14, r11
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xa0]
	call	memcmp
	lea	rsi, [rsi]
	test	eax, eax
	sete	al
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x84], eax
	mov	rsp, rsp
	jne	.label_829
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xc6], 0
	mov	rsp, rsp
	mov	r10, rbx
	nop	
	mov	r8b, r12b
	lea	rsi, [rsi]
	mov	r9, r13
	nop	
	mov	edi, r15d
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	r15, qword ptr [rsp + 0x88]
	je	.label_836
	jmp	.label_805
.label_829:
	mov	r10, rbx
	mov	r8b, r12b
	mov	r9, r13
	mov	edi, r15d
	lea	rsi, [rsi]
	mov	r11, r14
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 0x88]
	nop	dword ptr [rax + rax]
.label_836:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_860
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_867]]
.label_3838:
	test	r15, r15
	jne	.label_832
	jmp	.label_874
.label_3842:
	xor	eax, eax
	cmp	r10, -1
	je	.label_877
	test	r15, r15
	jne	.label_845
	nop	
	cmp	r10, 1
	je	.label_874
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_819
.label_3831:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_861
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_805
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_870
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_870
	cmp	r14, rbp
	jae	.label_898
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_898:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_878
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_878:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_911
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_911:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_870:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_917
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_917:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_922
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_927
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_802
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_811
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_811:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_820
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_820:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_819
.label_3832:
	mov	bl, 0x62
	nop	
	jmp	.label_831
.label_3833:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_824
.label_3834:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_831
.label_3835:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_831
.label_3836:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_824
.label_3839:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_847
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_852
	nop	
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, rcx
	mov	rsp, rsp
	test	rdx, rdx
	setne	cl
	lea	rsi, [rsi]
	or	cl, al
	mov	rbp, rbp
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x48], rdx
	mov	rsp, rsp
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_857
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_857:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_876
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_876:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_862
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_862:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_847:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_819
.label_3840:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_894
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_832
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_832
	nop	
	jmp	.label_904
.label_3841:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_906
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_910
	jmp	.label_914
.label_860:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_929
	mov	rbp, rbp
	mov	rbx, r10
	mov	rbp, r11
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	r11, rbp
	nop	
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r12*2]
	shr	r13d, 0xe
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rsi, [rsi]
	jmp	.label_925
.label_877:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_809
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_809
.label_874:
	mov	dl, 1
.label_3837:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_816
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_819
.label_861:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_825
	jmp	.label_832
.label_906:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_824
.label_910:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_815
.label_824:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_841
.label_831:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_819
	jmp	.label_846
.label_929:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_850
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_850:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_838
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_842:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [r11 + rax]
	mov	rsp, rsp
	mov	rdx, r10
	lea	rsi, [rsi]
	sub	rdx, rax
	lea	rdi, [rsp + 0x58]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	rbx, rax
	cmp	rbx, -2
	lea	rdi, [rdi]
	je	.label_887
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_843
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_822
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_902
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_921:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_916
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_875
.label_916:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_921
.label_902:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_924
	mov	rbp, rbp
	xor	r13d, r13d
.label_924:
	lea	rbp, [rsp + 0x70]
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	add	rax, rbx
	mov	rdi, rbp
	nop	
	mov	rbx, rax
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	je	.label_842
	jmp	.label_848
	nop	
.label_838:
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, r10
	lea	rdi, [rdi]
	sub	rdx, rax
	mov	rsp, rsp
	lea	rdi, [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	rbp, rbp
	mov	rbx, rbp
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_839
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_843
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_887
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_853
	xor	r13d, r13d
.label_853:
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	add	rax, rbp
	mov	rsp, rsp
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_838
	lea	rsi, [rsi]
	jmp	.label_848
.label_809:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_819
.label_894:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_832
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_832
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_832
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_889
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_893
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_855
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_903
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_903:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_909
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_909:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_827
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_827:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_864
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_864:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_819
.label_832:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_819:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_834
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_810
	nop	
	jmp	.label_818
	nop	dword ptr [rax + rax]
.label_834:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_818
.label_810:
	lea	rdi, [rdi]
	mov	cl, r12b
	lea	rdi, [rdi]
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	lea	rsi, [rsi]
	mov	cl, r12b
	shl	esi, cl
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
	jne	.label_821
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_835
	nop	word ptr cs:[rax + rax]
.label_818:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_835:
	mov	bl, r12b
	je	.label_815
	jmp	.label_846
.label_821:
	mov	bl, r12b
.label_846:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_805
	cmp	r9d, 2
	jne	.label_803
	mov	al, dil
	and	al, 1
	jne	.label_803
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_854
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_854:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_859
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_859:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_868
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_868:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_803:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_873
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_873:
	mov	rbp, rbp
	inc	r14
	jmp	.label_881
.label_845:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_819
.label_922:
	xor	r13d, r13d
	jmp	.label_819
.label_927:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_819
.label_802:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_819
.label_843:
	xor	r13d, r13d
.label_839:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_848
.label_887:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_900
	lea	rax, [r11 + r15]
.label_808:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_912
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_808
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_848
.label_900:
	xor	r13d, r13d
	jmp	.label_848
.label_912:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_848
.label_822:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_848:
	mov	rbp, rbp
	mov	rbx, r10
.label_925:
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	cl, r13b
	lea	rdi, [rdi]
	or	cl, byte ptr [rsp + 0xf6]
	cmp	rdx, 1
	mov	rbp, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0xd0]
	mov	edi, dword ptr [rsp + 0x38]
	ja	.label_817
	test	cl, cl
	je	.label_817
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_819
.label_817:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_823
	nop	dword ptr [rax]
.label_814:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_823:
	mov	rsp, rsp
	test	cl, cl
	je	.label_837
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_840
	cmp	r14, rbp
	jae	.label_844
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_844:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_840:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_851
	nop	dword ptr [rax + rax]
.label_837:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_858
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_884
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_884
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_806
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_806:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_812
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_812:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_880
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_880:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_884:
	cmp	r14, rbp
	jae	.label_907
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_907:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_807
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_807:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_869
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_869:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_851:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_815
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_866
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_866
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_896
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_896:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_863
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_863:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_866:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_814
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_814
	nop	word ptr cs:[rax + rax]
.label_815:
	test	dil, 1
	je	.label_828
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_828
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_928
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_928:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_865
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_865:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_828:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_881:
	cmp	r14, rbp
	jae	.label_919
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_919:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_825
.label_889:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_819
.label_893:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_819
	nop	word ptr [rax + rax]
.label_886:
	nop	
	mov	rcx, r15
.label_888:
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	al
	mov	rbp, rbp
	test	r14, r14
	mov	rsp, rsp
	setne	dl
	cmp	byte ptr [rsp + 0xc6], 0
	lea	rsi, [rsi]
	je	.label_872
	mov	rsp, rsp
	or	al, dl
	je	.label_879
.label_872:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], r11
	cmp	r9d, 2
	nop	
	setne	al
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x46]
	nop	
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	je	.label_882
	mov	rsp, rsp
	or	al, dl
	jne	.label_882
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_897
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_882
	mov	rbp, rbp
	test	rbp, rbp
	mov	rbp, rbp
	mov	r12d, r9d
	mov	al, bl
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	dl, sil
	mov	r13, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	je	.label_905
.label_882:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_915
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_915
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_915
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_926:
	cmp	r14, rbp
	jae	.label_923
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_923:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_926
.label_915:
	cmp	r14, rbp
	jae	.label_804
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_804
.label_816:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_805
.label_875:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_805
.label_858:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_805
.label_879:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_805
.label_841:
	nop	
	mov	r9d, 2
.label_805:
	cmp	byte ptr [rsp + 0x37], 0
	mov	r8d, 4
	mov	rbp, rbp
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], 0
	nop	
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, r11
	nop	
	mov	rcx, r10
.label_871:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_804:
	lea	rdi, [rdi]
	mov	rax, r14
	lea	rdi, [rdi]
	add	rsp, 0xf8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_897:
	mov	rax, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x130]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x24]
	jmp	.label_871
.label_852:
	mov	r9d, 2
	jmp	.label_805
.label_914:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_805
.label_904:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_805
.label_855:
	mov	r9d, 5
	nop	
	jmp	.label_805
.label_920:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d990
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
	#Procedure 0x40dad0
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
	je	.label_930
	mov	qword ptr [rax], rbx
.label_930:
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
	#Procedure 0x40dc20
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_931
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_935:
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
	jl	.label_935
.label_931:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_934
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_932]], OFFSET FLAT:slot0
.label_934:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_933
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_933:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dce0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x40dcf0

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
	js	.label_941
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_937
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_938
.label_937:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_940
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
	jne	.label_942
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_942:
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
.label_938:
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
	ja	.label_939
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
	je	.label_936
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_936:
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
.label_939:
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
.label_941:
	lea	rdi, [rdi]
	call	abort
.label_940:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40df60
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40df70
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
	#Procedure 0x40dfa0
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
	#Procedure 0x40dfd0

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
	je	.label_943
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
.label_943:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e060
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
	je	.label_944
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
.label_944:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e100

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
	je	.label_945
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
.label_945:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e190
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
	je	.label_946
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
.label_946:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40e200
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_947]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_948]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_949]]
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
	#Procedure 0x40e2a0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_947]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_948]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_949]]
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
	#Procedure 0x40e340

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_947]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_948]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_949]]
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
	#Procedure 0x40e3b0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_947]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_948]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_949]]
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
	#Procedure 0x40e420

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
	je	.label_950
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
.label_950:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40e500
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_947]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_948]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_949]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_951
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_951
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
.label_951:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40e590
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_947]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_948]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_949]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_952
	test	rdx, rdx
	je	.label_952
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
.label_952:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e620
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_947]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_948]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_949]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_953
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_953
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
.label_953:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e6c0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_947]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_948]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_949]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_954
	test	rsi, rsi
	je	.label_954
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
.label_954:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e760
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e770
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
	#Procedure 0x40e790

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
	#Procedure 0x40e7b0

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
	#Procedure 0x40e7e0

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
	jne	.label_956
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_958
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_957
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_957
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_957
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_957
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_957
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_957
	nop	
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_956
	mov	eax, OFFSET FLAT:.str.15
	jmp	.label_956
.label_958:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_957
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_957
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_957
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_957
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_957
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_957
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_955
.label_957:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_956:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_955:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_956
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_956
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e950

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
	#Procedure 0x40e9a0

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
	je	.label_964
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
	jmp	.label_966
.label_964:
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
.label_966:
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
	ja	.label_968
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_959]]
.label_3784:
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
.label_968:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_962
.label_3785:
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
.label_3786:
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
.label_3787:
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
	jmp	.label_963
.label_3788:
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
	jmp	.label_961
.label_3789:
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
	jmp	.label_960
.label_3790:
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
.label_960:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_961:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_963:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_967
.label_3792:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_962:
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
	jmp	.label_965
.label_3791:
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
.label_965:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_967:
	mov	rbp, rbp
	call	__fprintf_chk
.label_3783:
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
	#Procedure 0x40ed90
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_969:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_969
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40edc0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_973:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_970
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_972
	nop	word ptr cs:[rax + rax]
.label_970:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_972:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_971
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_973
.label_971:
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
	#Procedure 0x40ee50

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_974
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
.label_974:
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
.label_976:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_975
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_977
	nop	dword ptr [rax + rax]
.label_975:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_977:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_978
	inc	r9
	cmp	r9, 0xa
	jb	.label_976
.label_978:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ef90
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
	#Procedure 0x40f020
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
	jb	.label_979
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_980
	test	rax, rax
	je	.label_979
.label_980:
	nop	
	pop	rbx
	ret	
.label_979:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f070

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_981
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_982
.label_981:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_982:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f0a0
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
	jb	.label_984
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_983
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_983
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_983:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_985
	test	rax, rax
	je	.label_984
.label_985:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_984:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f120

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_986
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_986
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_986:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_987
	test	rax, rax
	nop	
	je	.label_988
.label_987:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_988:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f170
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_993
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_989
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_995
.label_993:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_992
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_992:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_994
.label_995:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_991
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_991
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_991:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_990
	test	rax, rax
	mov	rbp, rbp
	je	.label_989
.label_990:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_989:
	call	xalloc_die
.label_994:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f250
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_997
	test	rax, rax
	mov	rbp, rbp
	je	.label_996
.label_997:
	pop	rbx
	ret	
.label_996:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40f270

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_1001
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_1002
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_1000
	call	free
	xor	eax, eax
	jmp	.label_998
.label_1001:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_999
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_1000:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_998
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_999
.label_998:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_999:
	mov	rbp, rbp
	call	xalloc_die
.label_1002:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f300

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
	je	.label_1003
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_1004
.label_1003:
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
.label_1004:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f360

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
	jb	.label_1005
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_1005
	pop	rcx
	ret	
.label_1005:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f390

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
	je	.label_1007
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_1006
.label_1007:
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
.label_1006:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f3f0

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
	je	.label_1008
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_1009
.label_1008:
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
.label_1009:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f450

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
	#Procedure 0x40f4a0

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1011
	mov	rsp, rsp
	pop	rcx
	ret	
.label_1011:
	nop	
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x16
	lea	rdi, [rdi]
	jne	.label_1010
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_11
	nop	
	mov	esi, OFFSET FLAT:.str.1_9
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	lea	rsi, [rsi]
	call	__assert_fail
.label_1010:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f500

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	mov	rbp, rbp
	je	.label_1012
	cmp	ecx, 0x11
	lea	rdi, [rdi]
	jne	.label_1013
	mov	rsp, rsp
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_1012:
	lea	rsi, [rsi]
	ret	
.label_1013:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f530

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
	jae	.label_1029
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
	je	.label_1054
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15]
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_1056
	mov	rbp, rbp
	mov	r13d, 4
	lea	rsi, [rsi]
	cmp	eax, 0x22
	jne	.label_1014
	mov	rsp, rsp
	mov	r13d, 1
.label_1056:
	test	r14, r14
	nop	
	je	.label_1066
	lea	rsi, [rsi]
	mov	r12d, r13d
	mov	rbp, rbp
	jmp	.label_1070
.label_1054:
	mov	rbp, rbp
	mov	r13d, 4
	test	r14, r14
	je	.label_1014
	lea	rsi, [rsi]
	mov	r15, rcx
	nop	
	movsx	esi, byte ptr [r12]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_1014
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
	je	.label_1014
.label_1070:
	nop	
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_1036
	mov	qword ptr [rsp + 0x20], rcx
	mov	rdi, r14
	mov	rsp, rsp
	mov	esi, r13d
	call	strchr
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1033
	lea	rsi, [rsi]
	mov	r15d, 1
	mov	r8d, 0x400
	mov	rsp, rsp
	lea	eax, [r13 - 0x45]
	mov	rsp, rsp
	cmp	eax, 0x2f
	nop	
	ja	.label_1026
	lea	rdi, [rdi]
	movabs	rcx, 0x814400308945
	mov	rbp, rbp
	bt	rcx, rax
	lea	rdi, [rdi]
	jae	.label_1026
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
	je	.label_1026
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x20]
	movsx	eax, byte ptr [rax + 1]
	mov	r15d, 1
	lea	rdi, [rdi]
	mov	r8d, 0x400
	mov	rsp, rsp
	cmp	eax, 0x42
	je	.label_1020
	lea	rdi, [rdi]
	cmp	eax, 0x44
	mov	rbp, rbp
	je	.label_1020
	cmp	eax, 0x69
	lea	rdi, [rdi]
	jne	.label_1026
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	movzx	eax, byte ptr [rax + 2]
	mov	r15d, 3
	cmp	eax, 0x42
	nop	
	je	.label_1071
	mov	r15d, 1
.label_1071:
	mov	r8d, 0x400
	jmp	.label_1026
.label_1066:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	jmp	.label_1014
.label_1036:
	mov	rbp, rbp
	mov	r13, rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	jmp	.label_1037
.label_1020:
	mov	r15d, 2
	mov	r8d, 0x3e8
.label_1026:
	movabs	r9, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	r13d, 0x59
	jg	.label_1038
	lea	eax, [r13 - 0x42]
	lea	rdi, [rdi]
	cmp	eax, 0xe
	ja	.label_1046
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1051]]
.label_3762:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	lea	rsi, [rsi]
	jl	.label_1017
	nop	
	mov	r13, rbp
	shl	r13, 0xa
	movabs	rax, 0x1fffffffffffff
	lea	rsi, [rsi]
	jmp	.label_1021
.label_1038:
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_1061
	lea	rsi, [rsi]
	lea	eax, [r13 - 0x62]
	cmp	eax, 0xb
	ja	.label_1044
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r13, rbp
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1069]]
.label_3774:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	nop	
	jl	.label_1017
	mov	r13, rbp
	shl	r13, 9
	lea	rsi, [rsi]
	movabs	rax, 0x3fffffffffffff
	jmp	.label_1021
.label_1046:
	lea	rdi, [rdi]
	cmp	r13d, 0x54
	je	.label_1031
	cmp	r13d, 0x59
	jne	.label_1033
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
	jl	.label_1034
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
.label_1034:
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_1019
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
.label_1019:
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
	jl	.label_1062
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
.label_1062:
	or	ebx, edi
	lea	rsi, [rsi]
	cmp	rcx, r10
	mov	rsp, rsp
	mov	rsi, r13
	jl	.label_1030
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
.label_1030:
	or	r11d, ebx
	cmp	rsi, r10
	mov	r14d, 1
	mov	rcx, r13
	nop	
	mov	ebx, 1
	nop	
	jl	.label_1039
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
.label_1039:
	or	ebx, r11d
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_1053
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
.label_1053:
	or	r14d, ebx
	cmp	rsi, r10
	mov	ebx, 1
	mov	rcx, r13
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_1028
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
.label_1028:
	lea	rsi, [rsi]
	or	edi, r14d
	cmp	rcx, r10
	jl	.label_1024
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
.label_1024:
	mov	rbp, rbp
	or	ebx, edi
	nop	
	jmp	.label_1015
.label_1061:
	cmp	r13d, 0x74
	je	.label_1031
	cmp	r13d, 0x77
	jne	.label_1033
	mov	rbp, rbp
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_1041
.label_1017:
	inc	r9
	mov	rsp, rsp
	mov	ebx, 1
	mov	r13, r9
	lea	rsi, [rsi]
	jmp	.label_1015
.label_3764:
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
	jl	.label_1048
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
.label_1048:
	nop	
	cmp	rcx, rdi
	mov	rsi, r13
	jl	.label_1067
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
.label_1067:
	lea	rsi, [rsi]
	or	r10d, ebx
	cmp	rsi, rdi
	mov	rbp, rbp
	mov	ebx, 1
	nop	
	jl	.label_1058
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
.label_1058:
	lea	rdi, [rdi]
	or	ebx, r10d
	jmp	.label_1015
.label_3765:
	lea	rsi, [rsi]
	lea	r13, [r9 + 1]
	lea	rdi, [rdi]
	mov	rax, r13
	cqo	
	idiv	r8
	cmp	rbp, rax
	mov	ebx, 1
	jl	.label_1015
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
	jmp	.label_1015
.label_3766:
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
	jl	.label_1055
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
.label_1055:
	lea	rsi, [rsi]
	cmp	rcx, rdi
	nop	
	jl	.label_1072
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
.label_1072:
	or	ebx, r10d
	lea	rdi, [rdi]
	jmp	.label_1015
.label_1031:
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
	jl	.label_1032
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
.label_1032:
	cmp	rcx, r10
	mov	rsi, r13
	nop	
	jl	.label_1047
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
.label_1047:
	mov	rsp, rsp
	or	r11d, edi
	lea	rdi, [rdi]
	cmp	rsi, r10
	mov	rsp, rsp
	mov	ebx, 1
	mov	rcx, r13
	mov	rbp, rbp
	mov	edi, 1
	jl	.label_1057
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
.label_1057:
	lea	rdi, [rdi]
	or	edi, r11d
	cmp	rcx, r10
	mov	rbp, rbp
	jl	.label_1018
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
.label_1018:
	or	ebx, edi
	jmp	.label_1015
.label_1044:
	nop	
	cmp	r13d, 0x5a
	jne	.label_1033
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
	jl	.label_1035
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
.label_1035:
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	mov	rsp, rsp
	jl	.label_1049
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
.label_1049:
	nop	
	or	edi, ebx
	cmp	rsi, r10
	lea	rdi, [rdi]
	mov	r11d, 1
	mov	rcx, r13
	mov	ebx, 1
	nop	
	jl	.label_1059
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
.label_1059:
	lea	rdi, [rdi]
	or	ebx, edi
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	mov	rbp, rbp
	jl	.label_1043
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
.label_1043:
	or	r11d, ebx
	mov	rbp, rbp
	cmp	rsi, r10
	mov	rsp, rsp
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	lea	rdi, [rdi]
	jl	.label_1060
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
.label_1060:
	or	ebx, r11d
	mov	rbp, rbp
	cmp	rcx, r10
	mov	rsp, rsp
	mov	rsi, r13
	mov	rsp, rsp
	jl	.label_1045
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
.label_1045:
	or	edi, ebx
	cmp	rsi, r10
	nop	
	mov	ebx, 1
	nop	
	jl	.label_1023
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
.label_1023:
	nop	
	or	ebx, edi
	mov	rsp, rsp
	jmp	.label_1015
.label_1033:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	or	r12d, 2
	lea	rsi, [rsi]
	mov	r13d, r12d
	lea	rsi, [rsi]
	jmp	.label_1014
.label_3763:
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
	jl	.label_1065
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
.label_1065:
	mov	rsp, rsp
	cmp	rcx, r10
	mov	rbp, rbp
	mov	rbx, r13
	jl	.label_1042
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
.label_1042:
	or	r14d, edi
	lea	rdi, [rdi]
	cmp	rbx, r10
	mov	rsp, rsp
	mov	r11d, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_1063
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
.label_1063:
	or	ecx, r14d
	nop	
	cmp	rsi, r10
	mov	rdi, r13
	lea	rsi, [rsi]
	jl	.label_1064
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
.label_3769:
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
.label_1064:
	or	r11d, ecx
	cmp	rdi, r10
	mov	ebx, 1
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	r14d, 1
	lea	rsi, [rsi]
	jl	.label_1025
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
.label_1025:
	or	r14d, r11d
	cmp	rsi, r10
	jl	.label_1022
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
.label_1022:
	nop	
	or	ebx, r14d
	lea	rdi, [rdi]
	jmp	.label_1015
.label_3767:
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
	jl	.label_1050
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
.label_1050:
	lea	rsi, [rsi]
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_1068
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
.label_1068:
	lea	rdi, [rdi]
	or	r14d, edi
	cmp	rsi, r10
	mov	rsp, rsp
	mov	r11d, 1
	mov	rbx, r13
	mov	edi, 1
	nop	
	jl	.label_1027
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
.label_1027:
	or	edi, r14d
	mov	rsp, rsp
	cmp	rbx, r10
	mov	rsi, r13
	jl	.label_1040
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
.label_1040:
	or	r11d, edi
	cmp	rsi, r10
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_1052
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
.label_1052:
	or	ebx, r11d
	mov	rsp, rsp
	jmp	.label_1015
.label_1041:
	lea	r13, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_1021:
	nop	
	cmp	rbp, rax
	setg	al
	cmovg	r13, r9
	mov	rsp, rsp
	movzx	ebx, al
.label_1015:
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
	je	.label_1016
	or	ebx, 2
.label_1016:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	r12d, ebx
.label_1037:
	lea	rdi, [rdi]
	mov	qword ptr [rax], r13
	mov	r13d, r12d
.label_1014:
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
.label_1029:
	mov	edi, OFFSET FLAT:.str_12
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410280

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
	jae	.label_1073
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
.label_1094:
	mov	rbp, rbp
	movzx	eax, byte ptr [rdx]
	inc	rdx
	mov	rbp, rbp
	test	byte ptr [rcx + rax*2 + 1], 0x20
	lea	rdi, [rdi]
	jne	.label_1094
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
	je	.label_1075
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
	je	.label_1084
	mov	eax, dword ptr [r15]
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1092
	cmp	eax, 0x22
	lea	rsi, [rsi]
	jne	.label_1075
	mov	ebx, 1
.label_1092:
	test	r14, r14
	jne	.label_1097
	mov	rbp, rbp
	jmp	.label_1088
.label_1084:
	mov	rsp, rsp
	test	r14, r14
	je	.label_1075
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	lea	rdi, [rdi]
	je	.label_1075
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
	je	.label_1075
.label_1097:
	movsx	r13d, byte ptr [r12]
	nop	
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_1088
	mov	rsp, rsp
	mov	qword ptr [rsp], rcx
	nop	
	mov	rdi, r14
	mov	esi, r13d
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	je	.label_1085
	mov	rsp, rsp
	mov	r15d, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1076
	movabs	rdx, 0x814400308945
	lea	rsi, [rsi]
	bt	rdx, rax
	lea	rdi, [rdi]
	jae	.label_1076
	mov	esi, 0x30
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strchr
	nop	
	mov	r15d, 1
	mov	rbp, rbp
	mov	esi, 0x400
	test	rax, rax
	je	.label_1076
	movsx	eax, byte ptr [r12 + 1]
	mov	rsp, rsp
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	nop	
	je	.label_1090
	nop	
	cmp	eax, 0x44
	je	.label_1090
	cmp	eax, 0x69
	jne	.label_1076
	mov	rbp, rbp
	movzx	eax, byte ptr [r12 + 2]
	lea	rsi, [rsi]
	mov	r15d, 3
	cmp	eax, 0x42
	je	.label_1096
	mov	r15d, 1
.label_1096:
	lea	rdi, [rdi]
	mov	esi, 0x400
	mov	rsp, rsp
	jmp	.label_1076
.label_1090:
	mov	r15d, 2
	nop	
	mov	esi, 0x3e8
.label_1076:
	cmp	r13d, 0x59
	jg	.label_1079
	lea	eax, [r13 - 0x42]
	mov	rbp, rbp
	cmp	eax, 0xe
	ja	.label_1081
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1083]]
.label_3688:
	nop	
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	mov	rsp, rsp
	shl	rbp, 0xa
	jmp	.label_1087
.label_1079:
	cmp	r13d, 0x73
	mov	rbp, rbp
	jg	.label_1093
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_1077
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1095]]
.label_3798:
	nop	
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_1087:
	cmp	rax, 1
	mov	rbp, rbp
	sbb	rax, rax
	not	rax
	lea	rdi, [rdi]
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_1082
.label_1081:
	lea	rdi, [rdi]
	cmp	r13d, 0x54
	lea	rdi, [rdi]
	je	.label_1078
	mov	rbp, rbp
	cmp	r13d, 0x59
	jne	.label_1085
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
	jmp	.label_1086
.label_1093:
	nop	
	cmp	r13d, 0x74
	mov	rbp, rbp
	je	.label_1078
	mov	rsp, rsp
	cmp	r13d, 0x77
	jne	.label_1085
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
	jmp	.label_1082
.label_3690:
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
	jmp	.label_1080
.label_3691:
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
	jmp	.label_1074
.label_3692:
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
	jmp	.label_1080
.label_1078:
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
	jmp	.label_1080
.label_1077:
	cmp	r13d, 0x5a
	lea	rdi, [rdi]
	jne	.label_1085
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
.label_1086:
	lea	rsi, [rsi]
	movzx	eax, dl
	and	eax, 1
	jmp	.label_1074
.label_1085:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	mov	rsp, rsp
	jmp	.label_1089
.label_3689:
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
.label_1080:
	lea	rdi, [rdi]
	and	dl, 1
	lea	rsi, [rsi]
	movzx	eax, dl
.label_1074:
	mov	rbp, rsi
.label_1082:
	or	eax, ebx
	nop	
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp]
	mov	rbp, rbp
	mov	qword ptr [rdx], rcx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + r15], 0
	mov	rbp, rbp
	je	.label_1091
	or	eax, 2
.label_1091:
	mov	ebx, eax
.label_1088:
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	qword ptr [rax], rbp
.label_1089:
	mov	r13d, ebx
.label_1075:
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
.label_3693:
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
	jmp	.label_1074
.label_1073:
	mov	edi, OFFSET FLAT:.str_12
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410b60

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
	jae	.label_1098
	movsxd	rsi, edi
	mov	rsi,  qword ptr [word ptr [+ (rsi * 8) + label_1100]]
	mov	rbp, rbp
	cdqe	
	test	eax, eax
	nop	
	jns	.label_1101
	nop	
	lea	r14, [rsp + 6]
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:.str_13
	mov	rsp, rsp
	sub	rbx, rax
	mov	byte ptr [rsp + 6], dl
	mov	byte ptr [rsp + 7], 0
	mov	rsp, rsp
	jmp	.label_1099
.label_1101:
	mov	rbp, rbp
	shl	rax, 5
	mov	r14, qword ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:.str_13
.label_1099:
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
.label_1098:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410c10

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
	jae	.label_1105
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
.label_1109:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_1109
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
	je	.label_1102
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
	je	.label_1116
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rsp, rsp
	je	.label_1119
	mov	rsp, rsp
	cmp	eax, 0x22
	jne	.label_1102
	mov	dword ptr [rsp + 4], 1
.label_1119:
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_1126
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	lea	rsi, [rsi]
	jmp	.label_1102
.label_1116:
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_1102
	movsx	esi, byte ptr [rbx]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_1102
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
	je	.label_1102
.label_1126:
	lea	rdi, [rdi]
	movsx	r13d, byte ptr [r12]
	mov	rbp, rbp
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_1121
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
	je	.label_1104
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1107
	nop	
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_1107
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
	je	.label_1107
	movsx	eax, byte ptr [r12 + 1]
	lea	rdi, [rdi]
	mov	ecx, 1
	nop	
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_1122
	cmp	eax, 0x44
	nop	
	je	.label_1122
	cmp	eax, 0x69
	jne	.label_1107
	movzx	eax, byte ptr [r12 + 2]
	mov	rbp, rbp
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_1108
	lea	rdi, [rdi]
	mov	ecx, 1
.label_1108:
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_1107
.label_1121:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_1115
.label_1122:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_1107:
	cmp	r13d, 0x59
	lea	rdi, [rdi]
	jg	.label_1120
	mov	rsp, rsp
	lea	eax, [r13 - 0x42]
	nop	
	cmp	eax, 0xe
	nop	
	ja	.label_1123
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1125]]
.label_3816:
	mov	rax, rbp
	mov	rsp, rsp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_1127
.label_1120:
	lea	rsi, [rsi]
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_1103
	mov	rbp, rbp
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	mov	rbp, rbp
	ja	.label_1111
	mov	rsp, rsp
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1112]]
.label_3827:
	mov	rax, rbp
	shr	rax, 0x37
	lea	rsi, [rsi]
	setne	dl
	nop	
	shl	rbp, 9
.label_1127:
	cmp	rax, 1
	nop	
	sbb	rax, rax
	lea	rdi, [rdi]
	not	rax
	or	rbp, rax
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	jmp	.label_1117
.label_1123:
	cmp	r13d, 0x54
	nop	
	je	.label_1110
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_1104
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
	jmp	.label_1128
.label_1103:
	cmp	r13d, 0x74
	je	.label_1110
	mov	rbp, rbp
	cmp	r13d, 0x77
	mov	rbp, rbp
	jne	.label_1104
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
	jmp	.label_1117
.label_3818:
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
	jmp	.label_1124
.label_3819:
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
	jmp	.label_1113
.label_3820:
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
	jmp	.label_1106
.label_1110:
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
	jmp	.label_1118
.label_1111:
	cmp	r13d, 0x5a
	jne	.label_1104
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
.label_1128:
	movzx	eax, dl
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsi]
	jmp	.label_1113
.label_1104:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	lea	rdi, [rdi]
	mov	r13d, eax
	jmp	.label_1102
.label_3817:
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
	jmp	.label_1106
.label_3821:
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
.label_1118:
	or	dl, r10b
.label_1124:
	lea	rsi, [rsi]
	or	dl, bl
.label_1106:
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
.label_1113:
	mov	rsp, rsp
	mov	rbp, rsi
.label_1117:
	lea	rsi, [rsi]
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + rcx], 0
	je	.label_1114
	or	eax, 2
.label_1114:
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 0x10]
.label_1115:
	mov	qword ptr [rax], rbp
.label_1102:
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
.label_1105:
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
	#Procedure 0x4114d0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_1129
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1130
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
	je	.label_1130
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
.label_1129:
	mov	ecx, 1
.label_1130:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411540

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
	js	.label_1131
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_1133
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
	je	.label_1131
.label_1133:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1131
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_1132
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_1132:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_1131:
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
	#Procedure 0x4115f0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1134
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_1134
	test	byte ptr [rbx + 1], 1
	je	.label_1134
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_1134:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411630

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
	je	.label_1135
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_1135
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
	jns	.label_1135
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 9
	jne	.label_1135
	nop	
	mov	edi, OFFSET FLAT:.str_6
	mov	rbp, rbp
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	mov	rsp, rsp
	je	.label_1136
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
	js	.label_1135
.label_1136:
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
.label_1135:
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
	#Procedure 0x411710

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
	jne	.label_1137
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1137
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1138
.label_1137:
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
.label_1138:
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
	je	.label_1139
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1139:
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
	#Procedure 0x4117c0

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
	mov	r14, rdx
	mov	ebx, esi
	mov	r12, rdi
	cmp	ebx, 0x1000
	jae	.label_1143
	mov	rbp, rbp
	mov	eax, ebx
	lea	rdi, [rdi]
	and	eax, 0x204
	nop	
	cmp	eax, 0x204
	je	.label_1143
	mov	rsp, rsp
	test	bl, 0x12
	nop	
	je	.label_1143
	mov	rsp, rsp
	mov	edi, 0x80
	mov	rsp, rsp
	call	malloc
	mov	r15, rax
	xor	eax, eax
	nop	
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_1149
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x70], xmm0
	movups	xmmword ptr [r15 + 0x60], xmm0
	movups	xmmword ptr [r15 + 0x50], xmm0
	movups	xmmword ptr [r15 + 0x40], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r15 + 0x30], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r15 + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r15 + 0x10], xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x40], r14
	mov	eax, ebx
	and	eax, 0xfffffdfb
	mov	rsp, rsp
	or	eax, 4
	lea	rdi, [rdi]
	test	bl, 2
	lea	rdi, [rdi]
	cmove	eax, ebx
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 0x48], eax
	mov	rbp, rbp
	mov	dword ptr [r15 + 0x2c], 0xffffff9c
	mov	rdi, qword ptr [r12]
	mov	ebp, 1
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_1152
	mov	r13d, ebx
	mov	rbp, rbp
	lea	rbx, [r12 + 8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1176:
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
	jne	.label_1176
	inc	rbp
	mov	rsp, rsp
	mov	ebx, r13d
.label_1152:
	cmp	rbp, 0x1000
	lea	rsi, [rsi]
	mov	esi, 0x1000
	cmova	rsi, rbp
	mov	rsp, rsp
	add	rsi, 0x100
	nop	
	mov	qword ptr [r15 + 0x30], rsi
	xor	edi, edi
	mov	rsp, rsp
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_1146
	mov	qword ptr [r15 + 0x20], rbp
	mov	qword ptr [rsp + 0x30], r15
	lea	rdi, [rdi]
	mov	r13, qword ptr [r12]
	mov	qword ptr [rsp + 0x20], r12
	xor	r12d, r12d
	lea	rsi, [rsi]
	test	r13, r13
	je	.label_1150
	lea	rsi, [rsi]
	mov	edi, 0x110
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rbp, rbp
	je	.label_1156
	mov	byte ptr [r12 + 0x108], 0
	mov	qword ptr [r12 + 0x60], 0
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [r12 + 0x50], rax
	nop	
	mov	qword ptr [r12 + 0x38], rbp
	mov	dword ptr [r12 + 0x40], 0
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x18], 0
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x72], 0
	mov	rsp, rsp
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_1150:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x17], 1
	test	r14, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r14
	je	.label_1177
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	lea	rdi, [rdi]
	shr	al, 2
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x17], al
.label_1177:
	mov	rsp, rsp
	xor	r14d, r14d
	mov	rsp, rsp
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_1141
	mov	qword ptr [rsp + 0x18], r12
	xor	r12d, r12d
	test	bh, 8
	jne	.label_1147
	xor	r15d, r15d
	mov	rsp, rsp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1178:
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	lea	rsi, [rsi]
	cmp	rbp, 3
	jb	.label_1154
	movzx	eax, byte ptr [rbp + r13 - 1]
	cmp	eax, 0x2f
	lea	rdi, [rdi]
	jne	.label_1155
	mov	qword ptr [rsp + 0x28], rbx
	nop	word ptr [rax + rax]
.label_1166:
	movzx	eax, byte ptr [r13 + rbp - 2]
	nop	
	cmp	eax, 0x2f
	lea	rdi, [rdi]
	jne	.label_1162
	lea	rsi, [rsi]
	dec	rbp
	cmp	rbp, 1
	mov	rsp, rsp
	ja	.label_1166
	lea	rsi, [rsi]
	jmp	.label_1162
.label_1154:
	mov	qword ptr [rsp + 0x28], rbx
	jmp	.label_1162
.label_1155:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rbx
.label_1162:
	lea	rdi, [rdi]
	lea	rdi, [rbp + 0x110]
	lea	rsi, [rsi]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1173
	mov	r14, rbx
	mov	rbp, rbp
	add	r14, 0x108
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	memcpy
	nop	
	mov	byte ptr [rbx + rbp + 0x108], 0
	mov	qword ptr [rbx + 0x60], rbp
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	qword ptr [rbx + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x72], 0
	nop	
	mov	word ptr [rbx + 0x74], 3
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], rax
	nop	
	mov	qword ptr [rbx + 0x30], r14
	test	r15, r15
	mov	rsp, rsp
	setne	al
	lea	rdi, [rdi]
	test	byte ptr [rsp + 0x17], al
	je	.label_1179
	mov	rsp, rsp
	mov	word ptr [rbx + 0x70], 0xb
	mov	qword ptr [rbx + 0xa8], 2
	jmp	.label_1158
.label_1179:
	xor	edx, edx
	mov	rsi, rbx
	mov	rsp, rsp
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
.label_1158:
	nop	
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_1159
	mov	r14, rbx
	mov	qword ptr [rbx + 0x10], r15
	mov	rbx, qword ptr [rsp + 0x28]
	jmp	.label_1171
.label_1159:
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x10], 0
	test	r15, r15
	nop	
	mov	r14, rbx
	je	.label_1171
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], rbx
	mov	rsp, rsp
	mov	r14, r15
.label_1171:
	nop	
	inc	r12
	mov	rax, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rax + 8]
	mov	rbp, rbp
	add	rax, 8
	nop	
	mov	qword ptr [rsp + 0x20], rax
	test	r13, r13
	mov	rsp, rsp
	mov	r15, r14
	mov	rsp, rsp
	jne	.label_1178
	lea	rdi, [rdi]
	jmp	.label_1142
.label_1143:
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x16
	nop	
	xor	eax, eax
.label_1149:
	add	rsp, 0x38
	nop	
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_1146:
	mov	rdi, qword ptr [r15 + 0x20]
	mov	rsp, rsp
	jmp	.label_1151
.label_1147:
	xor	eax, eax
	xor	r15d, r15d
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_1168:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r15
	mov	rbp, rbp
	mov	r14, rax
	mov	rdi, r13
	lea	rsi, [rsi]
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	nop	
	and	rdi, 0xfffffffffffffff8
	nop	
	call	malloc
	mov	r15, rax
	mov	rbp, rbp
	test	r15, r15
	je	.label_1165
	mov	rbp, r15
	add	rbp, 0x108
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	nop	
	mov	byte ptr [r15 + rbx + 0x108], 0
	mov	qword ptr [r15 + 0x60], rbx
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	qword ptr [r15 + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 0x40], 0
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x18], 0
	mov	word ptr [r15 + 0x72], 0
	mov	rbp, rbp
	mov	word ptr [r15 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	mov	qword ptr [r15 + 0x58], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [r15 + 0x30], rbp
	lea	rdi, [rdi]
	mov	rbx, r14
	mov	rbp, rbp
	test	rbx, rbx
	lea	rdi, [rdi]
	setne	al
	mov	rbp, rbp
	and	al, byte ptr [rsp + 0x17]
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_1170
	lea	rsi, [rsi]
	mov	word ptr [r15 + 0x70], 0xb
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0xa8], 2
	jmp	.label_1153
.label_1170:
	nop	
	xor	edx, edx
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
.label_1153:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 8], rax
	test	rax, rax
	je	.label_1161
	mov	r14, r15
	nop	
	mov	qword ptr [r15 + 0x10], rbx
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x28]
	jmp	.label_1163
.label_1161:
	mov	qword ptr [r15 + 0x10], 0
	test	rbx, rbx
	mov	r14, r15
	je	.label_1163
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax + 0x10], r15
	nop	
	mov	r14, rbx
.label_1163:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rax + r12*8 + 8]
	lea	rdi, [rdi]
	inc	r12
	test	r13, r13
	mov	rax, r14
	jne	.label_1168
.label_1142:
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 8], 0
	je	.label_1164
	lea	rdi, [rdi]
	cmp	r12, 2
	nop	
	jb	.label_1164
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, r14
	mov	rdx, r12
	mov	rbp, rbp
	call	fts_sort
	mov	rsp, rsp
	mov	r14, rax
.label_1164:
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x18]
.label_1141:
	nop	
	mov	edi, 0x110
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1140
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x108], 0
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x60], 0
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x30]
	mov	qword ptr [rax + 0x50], r15
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15 + 0x20]
	mov	qword ptr [rax + 0x38], rcx
	nop	
	mov	dword ptr [rax + 0x40], 0
	mov	qword ptr [rax + 0x18], 0
	mov	rsp, rsp
	mov	word ptr [rax + 0x72], 0
	lea	rdi, [rdi]
	mov	word ptr [rax + 0x74], 3
	mov	rsp, rsp
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rax + 0x20], xmm0
	mov	qword ptr [r15], rax
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x10], r14
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 9
	mov	qword ptr [rax + 0x58], 1
	movzx	eax, word ptr [r15 + 0x48]
	test	ax, 0x102
	je	.label_1145
	nop	
	mov	edi, 0x1f
	xor	esi, esi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:free
	lea	rdi, [rdi]
	call	hash_initialize
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x58], rax
	test	rax, rax
	jne	.label_1172
	jmp	.label_1174
.label_1156:
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	jmp	.label_1175
.label_1140:
	mov	r15, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [r15], 0
	nop	
	jmp	.label_1174
.label_1145:
	nop	
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r15 + 0x58], rax
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1174
	mov	rdi, rax
	call	cycle_check_init
.label_1172:
	lea	rdi, [rdi]
	mov	eax, dword ptr [r15 + 0x48]
	mov	rbp, rbp
	test	ax, 0x204
	lea	rsi, [rsi]
	jne	.label_1144
	nop	
	mov	edx, eax
	mov	rsp, rsp
	and	edx, 0x10
	mov	rsp, rsp
	shl	edx, 0xd
	or	edx, 0x90900
	lea	rdi, [rdi]
	test	ah, 2
	lea	rsi, [rsi]
	jne	.label_1148
	mov	edi, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, edx
	lea	rdi, [rdi]
	call	open_safer
	jmp	.label_1157
.label_1173:
	mov	r14, r15
.label_1165:
	mov	r15, qword ptr [rsp + 0x30]
	mov	r12, qword ptr [rsp + 0x18]
.label_1174:
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_1160
	nop	word ptr cs:[rax + rax]
.label_1169:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_1167
	lea	rsi, [rsi]
	call	closedir
.label_1167:
	mov	rdi, r14
	mov	rbp, rbp
	call	free
	test	rbx, rbx
	lea	rdi, [rdi]
	mov	r14, rbx
	nop	
	jne	.label_1169
.label_1160:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	call	free
	nop	
	mov	rbp, qword ptr [r15 + 0x20]
.label_1175:
	mov	rdi, rbp
.label_1151:
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	nop	
	xor	eax, eax
	nop	
	jmp	.label_1149
.label_1148:
	lea	rdi, [rdi]
	mov	edi, dword ptr [r15 + 0x2c]
	mov	esi, OFFSET FLAT:.str_1
	xor	eax, eax
	lea	rdi, [rdi]
	call	openat_safer
.label_1157:
	mov	dword ptr [r15 + 0x28], eax
	test	eax, eax
	jns	.label_1144
	or	byte ptr [r15 + 0x48], 4
.label_1144:
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rsi, [rsi]
	add	rdi, 0x60
	mov	esi, 0xffffffff
	lea	rdi, [rdi]
	call	i_ring_init
	mov	rax, r15
	lea	rdi, [rdi]
	jmp	.label_1149
	nop	
	.section	.text
	.align	32
	#Procedure 0x412030

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
	jne	.label_1183
	test	al, 1
	nop	
	je	.label_1183
	lea	rsi, [rsi]
	mov	dl, 1
.label_1183:
	mov	rbp, rbp
	lea	rbx, [r14 + 0x78]
	lea	rdi, [rdi]
	test	dl, dl
	lea	rdi, [rdi]
	jne	.label_1185
	and	eax, 2
	jne	.label_1185
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
	je	.label_1182
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	jmp	.label_1187
.label_1185:
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
	je	.label_1182
	lea	rdi, [rdi]
	call	__errno_location
	mov	r15, rax
	mov	eax, dword ptr [r15]
	cmp	eax, 2
	jne	.label_1187
	mov	rsi, qword ptr [r14 + 0x30]
	nop	
	mov	edi, 1
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rsp, rsp
	call	__lxstat
	test	eax, eax
	mov	rbp, rbp
	je	.label_1189
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15]
.label_1187:
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
.label_1180:
	movzx	eax, ax
	nop	
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1182:
	mov	rbp, rbp
	mov	ecx, 0xf000
	and	ecx, dword ptr [r14 + 0x90]
	lea	rsi, [rsi]
	mov	ax, 0xc
	cmp	ecx, 0xa000
	je	.label_1180
	cmp	ecx, 0x8000
	nop	
	je	.label_1188
	cmp	ecx, 0x4000
	mov	rbp, rbp
	jne	.label_1181
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x88]
	mov	rcx, -1
	lea	rdi, [rdi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_1184
	cmp	qword ptr [r14 + 0x58], 0
	jle	.label_1184
	mov	ecx, dword ptr [r15 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
.label_1184:
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x68], rcx
	mov	ecx, dword ptr [r14 + 0x108]
	mov	ax, 1
	mov	rsp, rsp
	movzx	edx, cl
	cmp	edx, 0x2e
	mov	rsp, rsp
	jne	.label_1180
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_1186
	mov	rbp, rbp
	movzx	edx, dl
	lea	rsi, [rsi]
	cmp	edx, 0x2e
	jne	.label_1180
	lea	rsi, [rsi]
	test	ecx, 0xff0000
	lea	rdi, [rdi]
	jne	.label_1180
.label_1186:
	nop	
	mov	ax, 1
	cmp	qword ptr [r14 + 0x58], 0
	mov	rsp, rsp
	je	.label_1180
	mov	ax, 5
	jmp	.label_1180
.label_1188:
	mov	ax, 8
	jmp	.label_1180
.label_1181:
	lea	rdi, [rdi]
	mov	ax, 3
	lea	rsi, [rsi]
	jmp	.label_1180
.label_1189:
	mov	dword ptr [r15], 0
	mov	ax, 0xd
	jmp	.label_1180
	nop	
	.section	.text
	.align	32
	#Procedure 0x412260

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
	jae	.label_1195
	lea	rsi, [r14 + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rbp, rbp
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_1192
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
	je	.label_1192
	mov	qword ptr [r13], rdi
	lea	rdi, [rdi]
	jmp	.label_1199
.label_1195:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	add	r12, 0x10
	mov	r13, r12
.label_1199:
	mov	rsp, rsp
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_1200
	nop	dword ptr [rax]
.label_1190:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_1190
	mov	rdi, qword ptr [r13]
.label_1200:
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
	je	.label_1198
	nop	
	mov	rcx, qword ptr [r9 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rsp, rsp
	mov	rcx, r14
	add	rcx, -2
	mov	rsp, rsp
	je	.label_1193
	mov	rsp, rsp
	lea	rdx, [r9 + 8]
	lea	rsi, [rsi]
	lea	edi, [r14 + 2]
	mov	rsp, rsp
	lea	r8, [r14 - 3]
	lea	rsi, [rsi]
	test	dil, 3
	mov	rbp, rbp
	je	.label_1196
	lea	rsi, [rsi]
	lea	edi, [r14 + 2]
	and	edi, 3
	neg	rdi
	nop	
.label_1191:
	mov	rsi, qword ptr [rdx]
	nop	
	mov	rax, qword ptr [rdx + 8]
	lea	rdx, [rdx + 8]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x10], rax
	dec	rcx
	nop	
	inc	rdi
	jne	.label_1191
.label_1196:
	lea	rsi, [rsi]
	cmp	r8, 3
	mov	rbp, rbp
	jb	.label_1193
	nop	dword ptr [rax + rax]
.label_1197:
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
	jne	.label_1197
.label_1193:
	mov	rsp, rsp
	mov	rcx, qword ptr [r9 + r14*8 - 8]
.label_1198:
	mov	qword ptr [rcx + 0x10], 0
	jmp	.label_1194
.label_1192:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
.label_1194:
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
	#Procedure 0x412460

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
	je	.label_1211
	lea	rsi, [rsi]
	cmp	qword ptr [rdi + 0x58], 0
	lea	rsi, [rsi]
	js	.label_1219
	nop	word ptr [rax + rax]
.label_1207:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rdi + 0x10]
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_1202
	mov	rbx, qword ptr [rdi + 8]
.label_1202:
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x58], 0
	lea	rsi, [rsi]
	mov	rdi, rbx
	jns	.label_1207
	mov	rsp, rsp
	jmp	.label_1209
.label_1219:
	mov	rbx, rdi
.label_1209:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	free
.label_1211:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1213
	nop	dword ptr [rax]
.label_1218:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1216
	lea	rsi, [rsi]
	call	closedir
.label_1216:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	lea	rdi, [rdi]
	mov	rbx, rbp
	jne	.label_1218
.label_1213:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [r14 + 0x48]
	lea	rdi, [rdi]
	test	ah, 2
	jne	.label_1204
	xor	ebp, ebp
	mov	rbp, rbp
	test	al, 4
	jne	.label_1206
	nop	
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_1210
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_1210:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	lea	rsi, [rsi]
	test	ebp, ebp
	nop	
	je	.label_1214
	nop	
	jmp	.label_1206
.label_1204:
	mov	rsp, rsp
	mov	edi, dword ptr [r14 + 0x2c]
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rdi, [rdi]
	test	edi, edi
	js	.label_1206
	nop	
	call	close
.label_1214:
	nop	
	test	eax, eax
	nop	
	je	.label_1206
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
.label_1206:
	lea	rsi, [rsi]
	lea	rbx, [r14 + 0x60]
	jmp	.label_1201
	nop	
.label_1208:
	mov	edi, eax
	mov	rsp, rsp
	call	close
.label_1201:
	mov	rsp, rsp
	mov	rdi, rbx
	call	i_ring_empty
	lea	rdi, [rdi]
	test	al, al
	jne	.label_1205
	mov	rbp, rbp
	mov	rdi, rbx
	call	i_ring_pop
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	jns	.label_1208
	nop	
	jmp	.label_1201
.label_1205:
	mov	rsp, rsp
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_1212
	nop	
	call	hash_free
.label_1212:
	nop	
	movzx	eax, word ptr [r14 + 0x48]
	mov	rbp, rbp
	test	ax, 0x102
	je	.label_1215
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x58]
	mov	rbp, rbp
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1217
	lea	rdi, [rdi]
	call	hash_free
	nop	
	jmp	.label_1217
.label_1215:
	mov	rdi, qword ptr [r14 + 0x58]
	lea	rdi, [rdi]
	call	free
.label_1217:
	mov	rdi, r14
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	xor	eax, eax
	test	ebp, ebp
	je	.label_1203
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], ebp
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
.label_1203:
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
	#Procedure 0x412650

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
	je	.label_1220
	mov	rsp, rsp
	mov	eax, dword ptr [r14 + 0x48]
	xor	r15d, r15d
	mov	rbp, rbp
	test	ah, 0x20
	mov	rsp, rsp
	jne	.label_1220
	lea	rdi, [rdi]
	movzx	ecx, word ptr [r12 + 0x74]
	nop	
	mov	word ptr [r12 + 0x74], 3
	mov	rsp, rsp
	cmp	ecx, 1
	nop	
	je	.label_1272
	movzx	edx, cx
	cmp	edx, 2
	mov	rsp, rsp
	jne	.label_1243
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r12 + 0x70]
	mov	rsp, rsp
	mov	esi, ecx
	and	esi, 0xfffe
	mov	rbp, rbp
	cmp	esi, 0xc
	jne	.label_1244
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_1248
	mov	eax, dword ptr [r14 + 0x48]
	mov	rbp, rbp
	test	al, 4
	lea	rdi, [rdi]
	jne	.label_1248
	mov	edx, eax
	nop	
	and	edx, 0x10
	shl	edx, 0xd
	lea	rdi, [rdi]
	or	edx, 0x90900
	mov	rsp, rsp
	test	ah, 2
	jne	.label_1254
	nop	
	mov	edi, OFFSET FLAT:.str_1
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, edx
	call	open_safer
	nop	
	jmp	.label_1262
.label_1272:
	xor	edx, edx
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r12
	call	fts_stat
	mov	rbp, rbp
	mov	word ptr [r12 + 0x70], ax
	mov	r15, r12
	jmp	.label_1220
.label_1243:
	lea	r13, [r12 + 0x70]
	mov	ecx, dword ptr [r12 + 0x70]
	jmp	.label_1267
.label_1244:
	mov	rbp, rbp
	lea	r13, [r12 + 0x70]
.label_1267:
	movzx	esi, cx
	mov	rsp, rsp
	cmp	esi, 1
	jne	.label_1271
	cmp	edx, 4
	je	.label_1273
	lea	rsi, [rsi]
	test	al, 0x40
	je	.label_1275
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r12 + 0x78]
	nop	
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_1273
.label_1275:
	mov	rbx, qword ptr [r14 + 8]
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_1278
	test	ah, 0x10
	jne	.label_1247
	nop	
	mov	rcx, qword ptr [r12 + 0x30]
	mov	edx, 0xffffffff
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r12
	call	fts_safe_changedir
	test	eax, eax
	mov	rbp, rbp
	je	.label_1228
	call	__errno_location
	mov	eax, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x40], eax
	or	byte ptr [r12 + 0x72], 1
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rdi, [rdi]
	jmp	.label_1282
.label_1225:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
.label_1282:
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_1225
	nop	
	jmp	.label_1228
.label_1271:
	mov	rbx, r12
	nop	
.label_1237:
	mov	r12, qword ptr [rbx + 0x10]
	test	r12, r12
	je	.label_1246
	lea	rsi, [rsi]
	mov	qword ptr [r14], r12
	mov	rbp, rbp
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r12 + 0x58], 0
	je	.label_1235
	movzx	eax, word ptr [r12 + 0x74]
	cmp	eax, 4
	nop	
	mov	rbx, r12
	lea	rsi, [rsi]
	je	.label_1237
	movzx	eax, ax
	nop	
	cmp	eax, 2
	lea	rdi, [rdi]
	jne	.label_1238
	mov	edx, 1
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_1241
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	lea	rdi, [rdi]
	jne	.label_1241
	mov	edx, eax
	lea	rdi, [rdi]
	and	edx, 0x10
	lea	rsi, [rsi]
	shl	edx, 0xd
	lea	rsi, [rsi]
	or	edx, 0x90900
	test	ah, 2
	mov	rbp, rbp
	jne	.label_1245
	mov	edi, OFFSET FLAT:.str_1
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_1249
.label_1273:
	test	ecx, 0x20000
	mov	rbp, rbp
	je	.label_1250
	mov	rsp, rsp
	mov	edi, dword ptr [r12 + 0x44]
	nop	
	call	close
.label_1250:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	nop	
	je	.label_1253
	nop	word ptr cs:[rax + rax]
.label_1263:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_1255
	call	closedir
.label_1255:
	mov	rdi, rbx
	nop	
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	mov	rbp, rbp
	jne	.label_1263
	nop	
	mov	qword ptr [r14 + 8], 0
.label_1253:
	mov	word ptr [r12 + 0x70], 6
.label_1242:
	mov	rdi, r14
	mov	rsi, r12
	mov	rsp, rsp
	call	leave_dir
	mov	rbp, rbp
	mov	r15, r12
	lea	rsi, [rsi]
	jmp	.label_1220
.label_1246:
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbx + 8]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_1270
	mov	qword ptr [r14], r15
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rbp, rbp
	mov	rdi, r14
	call	fts_build
	mov	r12, rax
	nop	
	test	r12, r12
	je	.label_1279
	mov	rdi, rbx
	nop	
	call	free
	mov	rbp, rbp
	jmp	.label_1238
.label_1235:
	mov	rdi, r14
	lea	rdi, [rdi]
	call	restore_initial_cwd
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_1264
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_1220
.label_1264:
	nop	
	test	ax, 0x102
	je	.label_1221
	mov	rbp, rbp
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_1223
	call	hash_free
	nop	
	jmp	.label_1223
.label_1247:
	and	eax, 0xffffefff
	mov	rbp, rbp
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr [rax + rax]
.label_1234:
	mov	rbp, qword ptr [rbx + 0x10]
	nop	
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1229
	call	closedir
.label_1229:
	nop	
	mov	rdi, rbx
	call	free
	nop	
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_1234
	mov	qword ptr [r14 + 8], 0
.label_1278:
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rdi, r14
	lea	rsi, [rsi]
	call	fts_build
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_1239
.label_1228:
	lea	rsi, [rsi]
	mov	r12, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], 0
	jmp	.label_1238
.label_1239:
	xor	r15d, r15d
	mov	rsp, rsp
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_1220
	cmp	dword ptr [r12 + 0x40], 0
	lea	rdi, [rdi]
	je	.label_1242
	mov	rsp, rsp
	movzx	eax, word ptr [r13]
	lea	rsi, [rsi]
	cmp	eax, 4
	lea	rdi, [rdi]
	je	.label_1242
	mov	word ptr [r13], 7
	nop	
	jmp	.label_1242
.label_1254:
	nop	
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_1
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	call	openat_safer
.label_1262:
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x44], eax
	lea	rdi, [rdi]
	test	eax, eax
	js	.label_1259
	or	byte ptr [r12 + 0x72], 2
	mov	rsp, rsp
	jmp	.label_1248
.label_1279:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_1220
	mov	r15, qword ptr [rbx + 8]
.label_1270:
	lea	rdi, [rdi]
	mov	qword ptr [r14], r15
	mov	rbp, rbp
	mov	rdi, rbx
	call	free
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x58], -1
	lea	rdi, [rdi]
	je	.label_1260
	movzx	eax, word ptr [r15 + 0x70]
	mov	rbp, rbp
	cmp	eax, 0xb
	mov	rsp, rsp
	je	.label_1224
	nop	
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	nop	
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1266
	movzx	eax, word ptr [r15 + 0x72]
	lea	rsi, [rsi]
	test	al, 2
	lea	rsi, [rsi]
	jne	.label_1269
	test	al, 1
	jne	.label_1256
	mov	rsi, qword ptr [r15 + 8]
	nop	
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_7
	mov	rdi, r14
	lea	rdi, [rdi]
	call	fts_safe_changedir
	jmp	.label_1277
.label_1260:
	mov	rdi, r15
	call	free
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_1220
.label_1259:
	call	__errno_location
	mov	rsp, rsp
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x70], 7
	jmp	.label_1248
.label_1221:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_1223:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r12 + 0x60]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x48], rdx
	mov	rbp, rbp
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [r12 + 0x108]
	mov	rsp, rsp
	inc	rdx
	nop	
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1231
	cmp	rbx, r15
	mov	rsp, rsp
	jne	.label_1232
	cmp	byte ptr [r12 + 0x109], 0
	lea	rdi, [rdi]
	je	.label_1231
.label_1232:
	inc	rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	call	strlen
	nop	
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, rbx
	nop	
	call	memmove
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x60], r13
.label_1231:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x30], rax
	lea	rdi, [rdi]
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	lea	rdi, [rdi]
	je	.label_1240
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_1248
.label_1240:
	lea	rsi, [rsi]
	mov	edi, 0x20
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1248
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_1248
.label_1266:
	mov	rdi, r14
	mov	rbp, rbp
	call	restore_initial_cwd
.label_1277:
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_1256
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_1256
.label_1269:
	mov	eax, dword ptr [r14 + 0x48]
	mov	rbp, rbp
	lea	rbx, [r15 + 0x44]
	test	al, 4
	mov	rbp, rbp
	jne	.label_1257
	mov	rbp, rbp
	test	ah, 2
	mov	ebp, dword ptr [r15 + 0x44]
	lea	rsi, [rsi]
	jne	.label_1265
	mov	edi, ebp
	nop	
	call	fchdir
	mov	rbp, rbp
	test	eax, eax
	je	.label_1257
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	rsp, rsp
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_1257
.label_1245:
	nop	
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	xor	eax, eax
	call	openat_safer
.label_1249:
	mov	dword ptr [r12 + 0x44], eax
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	js	.label_1276
	or	byte ptr [r12 + 0x72], 2
	jmp	.label_1241
.label_1276:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	mov	word ptr [r12 + 0x70], 7
.label_1241:
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x74], 3
.label_1238:
	mov	rax, qword ptr [r14 + 0x20]
	nop	
	mov	rcx, qword ptr [r12 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	mov	rbp, rbp
	movzx	edx, byte ptr [rdx + rcx - 1]
	mov	rbp, rbp
	cmp	edx, 0x2f
	jne	.label_1281
	dec	rcx
.label_1281:
	lea	rdi, [rax + rcx + 1]
	mov	byte ptr [rax + rcx], 0x2f
	lea	rsi, [r12 + 0x108]
	mov	rsp, rsp
	mov	rdx, qword ptr [r12 + 0x60]
	mov	rsp, rsp
	inc	rdx
	call	memmove
.label_1248:
	mov	rsp, rsp
	mov	qword ptr [r14], r12
	mov	rsp, rsp
	movzx	eax, word ptr [r12 + 0x70]
	cmp	eax, 0xb
	mov	rbp, rbp
	jne	.label_1226
	mov	rax, qword ptr [r12 + 0xa8]
	cmp	rax, 1
	je	.label_1230
	cmp	rax, 2
	mov	rsp, rsp
	jne	.label_1224
	lea	rdi, [rdi]
	mov	r15, qword ptr [r12 + 8]
	cmp	qword ptr [r15 + 0x68], 0
	jne	.label_1236
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	nop	
	cmp	eax, 0x18
	lea	rdi, [rdi]
	jne	.label_1236
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, r15
	call	filesystem_type
	cmp	rax, 0x52654973
	mov	rbp, rbp
	je	.label_1230
	cmp	rax, 0x58465342
	je	.label_1230
.label_1236:
	xor	edx, edx
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r12
	mov	rsp, rsp
	call	fts_stat
	mov	rbp, rbp
	mov	word ptr [r12 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r12 + 0x90]
	cmp	ecx, 0x4000
	nop	
	jne	.label_1226
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x58], 0
	lea	rsi, [rsi]
	je	.label_1230
	mov	rax, qword ptr [r15 + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	lea	rsi, [rsi]
	jb	.label_1230
	dec	rax
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x68], rax
.label_1230:
	lea	rsi, [rsi]
	movzx	eax, word ptr [r12 + 0x70]
.label_1226:
	movzx	eax, ax
	nop	
	cmp	eax, 1
	jne	.label_1251
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x58], 0
	mov	rbp, rbp
	jne	.label_1252
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_1252:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	mov	rbp, rbp
	je	.label_1258
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_1261
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [r12 + 0x78]
	mov	rsp, rsp
	movups	xmmword ptr [rbx], xmm0
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x10], r12
	mov	rdi, qword ptr [r14 + 0x58]
	nop	
	mov	rsi, rbx
	call	hash_insert
	mov	rsp, rsp
	mov	r14, rax
	cmp	r14, rbx
	nop	
	je	.label_1268
	mov	rdi, rbx
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_1261
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [r12], rax
	jmp	.label_1274
.label_1251:
	mov	r15, r12
	mov	rsp, rsp
	jmp	.label_1220
.label_1258:
	mov	rdi, qword ptr [r14 + 0x58]
	lea	rsi, [r12 + 0x78]
	call	cycle_check
	test	al, al
	mov	rsp, rsp
	je	.label_1280
	mov	qword ptr [r12], r12
.label_1274:
	lea	rsi, [rsi]
	mov	word ptr [r12 + 0x70], 2
	mov	r15, r12
	lea	rdi, [rdi]
	jmp	.label_1220
.label_1261:
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	nop	
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_1220
.label_1280:
	mov	r15, r12
	mov	rbp, rbp
	jmp	.label_1220
.label_1268:
	mov	r15, r12
	jmp	.label_1220
.label_1265:
	mov	rbp, rbp
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, ebp
	jne	.label_1222
	mov	rsp, rsp
	cmp	esi, -0x64
	lea	rsi, [rsi]
	jne	.label_1224
.label_1222:
	mov	rbp, rbp
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_1227
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	close
.label_1227:
	lea	rsi, [rsi]
	mov	dword ptr [r14 + 0x2c], ebp
.label_1257:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbx]
	mov	rbp, rbp
	call	close
.label_1256:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	lea	rsi, [rsi]
	je	.label_1233
	nop	
	mov	eax, dword ptr [r15 + 0x40]
	cmp	eax, 0
	mov	rbp, rbp
	setne	cl
	nop	
	movzx	ecx, cl
	or	ecx, 6
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_1233
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rsp, rsp
	call	leave_dir
.label_1233:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	lea	rsi, [rsi]
	cmovne	r15, rax
.label_1220:
	nop	
	mov	rax, r15
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1224:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4130d0

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_1284
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
	je	.label_1285
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	add	rsp, 0x18
	ret	
.label_1284:
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 8]
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1283
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x58], 0
	nop	
	js	.label_1283
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	mov	rsp, rsp
	je	.label_1285
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x80]
	lea	rdi, [rdi]
	jne	.label_1283
	nop	
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	mov	rbp, rbp
	jne	.label_1283
	mov	rdx, qword ptr [rax + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_1283:
	lea	rdi, [rdi]
	add	rsp, 0x18
	ret	
.label_1285:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413190

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
	je	.label_1305
	mov	rbp, rbp
	movzx	edx, byte ptr [rbx]
	lea	rsi, [rsi]
	mov	ecx, 0x2e
	lea	rsi, [rsi]
	mov	eax, 0x2e
	sub	eax, edx
	lea	rsi, [rsi]
	jne	.label_1288
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + 1]
	lea	rsi, [rsi]
	sub	ecx, eax
	lea	rsi, [rsi]
	mov	eax, ecx
	jne	.label_1288
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_1288:
	test	eax, eax
	lea	rsi, [rsi]
	sete	r14b
	lea	rdi, [rdi]
	jmp	.label_1304
.label_1305:
	xor	r14d, r14d
.label_1304:
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	mov	rsp, rsp
	jne	.label_1287
	nop	
	test	r13d, r13d
	jns	.label_1291
	mov	rbp, rbp
	mov	cl, r14b
	mov	rbp, rbp
	xor	cl, 1
	jne	.label_1290
	nop	
	mov	qword ptr [rsp + 0x90], rsi
	and	eax, 0x200
	mov	rbp, rbp
	je	.label_1292
	lea	rbp, [r15 + 0x60]
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	i_ring_empty
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	jne	.label_1292
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	mov	rsp, rsp
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
	nop	
	jmp	.label_1292
.label_1287:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_1286
	and	eax, 0x200
	je	.label_1286
	lea	rdi, [rdi]
	mov	edi, r13d
	mov	rsp, rsp
	call	close
	nop	
	jmp	.label_1286
.label_1291:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x90], rsi
	nop	
	jmp	.label_1292
.label_1290:
	mov	qword ptr [rsp + 0x90], rsi
.label_1292:
	test	r13d, r13d
	mov	rbp, rbp
	mov	r12d, r13d
	jns	.label_1295
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
	jne	.label_1298
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	esi, edx
	call	open_safer
	mov	rbp, rbp
	jmp	.label_1306
.label_1298:
	mov	rbp, rbp
	mov	edi, dword ptr [r15 + 0x2c]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, rbx
	nop	
	call	openat_safer
.label_1306:
	mov	rbp, rbp
	mov	r12d, eax
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	test	r12d, r12d
	lea	rdi, [rdi]
	js	.label_1286
.label_1295:
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	nop	
	jne	.label_1294
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1296
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x2e
	jne	.label_1296
	movzx	ecx, byte ptr [rbx + 1]
	cmp	ecx, 0x2e
	jne	.label_1296
	cmp	byte ptr [rbx + 2], 0
	mov	rsp, rsp
	jne	.label_1296
.label_1294:
	lea	rdx, [rsp]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, r12d
	lea	rdi, [rdi]
	call	__fxstat
	test	eax, eax
	jne	.label_1307
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	jne	.label_1289
	nop	
	mov	rax, qword ptr [rcx + 0x80]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsp + 8]
	nop	
	jne	.label_1289
	mov	eax, dword ptr [r15 + 0x48]
.label_1296:
	mov	rbp, rbp
	test	ah, 2
	jne	.label_1293
	nop	
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	mov	rbp, rbp
	jmp	.label_1297
.label_1293:
	mov	esi, dword ptr [r15 + 0x2c]
	lea	rsi, [rsi]
	cmp	esi, r12d
	jne	.label_1299
	cmp	esi, -0x64
	jne	.label_1300
.label_1299:
	lea	rdi, [rdi]
	test	r14b, r14b
	je	.label_1301
	test	al, 4
	lea	rsi, [rsi]
	jne	.label_1302
	nop	
	test	esi, esi
	js	.label_1302
	mov	rbp, rbp
	mov	edi, esi
	jmp	.label_1303
.label_1289:
	nop	
	call	__errno_location
	mov	dword ptr [rax], 2
.label_1307:
	mov	ebp, 0xffffffff
.label_1297:
	test	r13d, r13d
	jns	.label_1286
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	nop	
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_1286
.label_1301:
	lea	rsi, [rsi]
	lea	rdi, [r15 + 0x60]
	lea	rsi, [rsi]
	call	i_ring_push
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_1302
	mov	edi, eax
.label_1303:
	mov	rsp, rsp
	call	close
.label_1302:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_1286:
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
.label_1300:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413470

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
	sub	rsp, 0x98
	lea	rsi, [rsi]
	mov	ebp, esi
	lea	rdi, [rdi]
	mov	rdx, rdi
	mov	r12, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x60], r12
	nop	
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_1328
	mov	rsp, rsp
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x80], rdi
	call	dirfd
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x54], eax
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_1343
	mov	dword ptr [rsp + 0x1c], ebp
	nop	
	mov	qword ptr [rsp + 0x30], -1
	nop	
	mov	rdi, rbx
	cmp	qword ptr [rdi + 0x40], 0
	jne	.label_1359
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x30], rax
.label_1359:
	lea	rax, [rdi + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	lea	rbp, [rdi + 0x48]
	mov	rsp, rsp
	mov	cl, 1
	jmp	.label_1310
.label_1328:
	mov	qword ptr [rsp + 0x80], rdi
	mov	rsp, rsp
	mov	eax, dword ptr [rdx + 0x48]
	mov	ecx, eax
	mov	rsp, rsp
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	nop	
	cmp	ecx, 0x200
	mov	rsp, rsp
	jne	.label_1357
	mov	edi, dword ptr [rdx + 0x2c]
.label_1357:
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rsi, qword ptr [r12 + 0x30]
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	test	al, 0x10
	nop	
	je	.label_1364
	nop	
	test	al, 1
	lea	rsi, [rsi]
	je	.label_1368
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x58], 0
	lea	rdi, [rdi]
	je	.label_1364
.label_1368:
	nop	
	mov	edx, 0x20000
.label_1364:
	lea	rcx, [rsp + 0x54]
	call	opendirat
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x18], rax
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_1372
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ebp
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	lea	r15, [rdi + 0x48]
	movzx	eax, word ptr [r12 + 0x70]
	cmp	eax, 0xb
	jne	.label_1336
	lea	rdi, [rdi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rsi, r12
	call	fts_stat
	mov	rdi, rbx
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_1312
.label_1343:
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
.label_1372:
	lea	rsi, [rsi]
	xor	ebx, ebx
	cmp	ebp, 3
	jne	.label_1308
	nop	
	mov	word ptr [r12 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x40], eax
	mov	rsp, rsp
	xor	ebx, ebx
	jmp	.label_1308
.label_1336:
	test	byte ptr [r15 + 1], 1
	nop	
	je	.label_1312
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rbx, rdi
	call	leave_dir
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r12
	call	fts_stat
	mov	rsp, rsp
	movzx	eax, word ptr [rbx + 0x48]
	mov	rbp, rbp
	test	ax, 0x102
	mov	rsp, rsp
	je	.label_1322
	mov	rbp, rbp
	mov	rbp, rbx
	lea	rdi, [rdi]
	mov	edi, 0x18
	lea	rdi, [rdi]
	call	malloc
	mov	rbx, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_1326
	movups	xmm0, xmmword ptr [r12 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	nop	
	mov	qword ptr [rbx + 0x10], r12
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsp, rsp
	mov	rsi, rbx
	nop	
	call	hash_insert
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbp, rbp
	cmp	rbp, rbx
	je	.label_1312
	mov	r14, rdi
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	test	rbp, rbp
	nop	
	je	.label_1326
	mov	rax, qword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [r12], rax
	mov	rbp, rbp
	mov	word ptr [r12 + 0x70], 2
	mov	rsp, rsp
	mov	rdi, r14
	jmp	.label_1312
.label_1322:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x58]
	lea	rsi, [r12 + 0x78]
	lea	rsi, [rsi]
	call	cycle_check
	mov	rbp, rbp
	mov	rdi, rbx
	test	al, al
	lea	rdi, [rdi]
	je	.label_1312
	mov	qword ptr [r12], r12
	mov	word ptr [r12 + 0x70], 2
.label_1312:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], -1
	mov	rbp, rbp
	cmp	qword ptr [rdi + 0x40], 0
	jne	.label_1356
	mov	eax, 0x186a0
	nop	
	mov	qword ptr [rsp + 0x30], rax
.label_1356:
	mov	rbp, rbp
	lea	rax, [rdi + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	cmp	dword ptr [rsp + 0x1c], 2
	lea	rsi, [rsi]
	mov	rbp, r15
	mov	rbp, rbp
	je	.label_1363
	mov	rbp, rbp
	mov	eax, dword ptr [rbp]
	mov	rsp, rsp
	and	eax, 0x38
	cmp	eax, 0x18
	nop	
	jne	.label_1341
	cmp	qword ptr [r12 + 0x88], 2
	lea	rdi, [rdi]
	jne	.label_1341
	nop	
	mov	rbx, rdi
	nop	
	mov	esi, dword ptr [rsp + 0x54]
	mov	rdi, r12
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_1374
	cmp	rax, 0x9fa0
	nop	
	mov	rdi, rbx
	nop	
	je	.label_1341
	mov	ecx, 0xff534d42
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_1341
	cmp	rax, 0x5346414f
	mov	rsp, rsp
	je	.label_1341
	jmp	.label_1363
.label_1326:
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	xor	ebx, ebx
	jmp	.label_1308
.label_1374:
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	je	.label_1341
	lea	rdi, [rdi]
	cmp	rax, 0x6969
	jne	.label_1363
.label_1341:
	cmp	dword ptr [rsp + 0x1c], 3
	lea	rsi, [rsi]
	sete	r13b
	mov	r14b, 1
	lea	rdi, [rdi]
	jmp	.label_1385
.label_1363:
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0x1c], 3
	lea	rdi, [rdi]
	sete	r13b
	mov	r14d, 0
	jne	.label_1310
.label_1385:
	test	byte ptr [rbp + 1], 2
	mov	qword ptr [rsp + 0x90], rbp
	mov	ebp, dword ptr [rsp + 0x54]
	je	.label_1315
	mov	esi, 0x406
	lea	rdi, [rdi]
	mov	r15, rdi
	nop	
	mov	edx, 3
	mov	rsp, rsp
	xor	eax, eax
	mov	edi, ebp
	call	rpl_fcntl
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	mov	ebp, eax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x54], ebp
.label_1315:
	test	ebp, ebp
	js	.label_1324
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rbx, rdi
	nop	
	mov	edx, ebp
	call	fts_safe_changedir
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	cl, 1
	test	eax, eax
	mov	rbp, rbp
	je	.label_1330
.label_1324:
	mov	rbp, rdi
	and	r13b, r14b
	movzx	eax, r13b
	cmp	eax, 1
	jne	.label_1334
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x40], eax
.label_1334:
	or	byte ptr [r12 + 0x72], 1
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 0x18]
	mov	rsp, rsp
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x90]
	mov	rsp, rsp
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	test	ah, 2
	mov	rsp, rsp
	je	.label_1351
	mov	edi, dword ptr [rsp + 0x54]
	test	edi, edi
	lea	rdi, [rdi]
	js	.label_1351
	call	close
.label_1351:
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x18], 0
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rdi, rbp
.label_1330:
	mov	rbp, qword ptr [rsp + 0x90]
.label_1310:
	mov	rax, qword ptr [r12 + 0x38]
	mov	rdx, qword ptr [r12 + 0x48]
	mov	rbp, rbp
	movzx	eax, byte ptr [rax + rdx - 1]
	cmp	eax, 0x2f
	jne	.label_1354
	mov	rsp, rsp
	dec	rdx
.label_1354:
	mov	rsp, rsp
	mov	dword ptr [rsp + 4], ecx
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp], 4
	mov	r13, rbp
	mov	rsp, rsp
	je	.label_1361
	mov	rax, qword ptr [rdi + 0x20]
	nop	
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x58], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_1361:
	mov	rsp, rsp
	lea	rax, [rdx + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], rax
	nop	
	mov	rcx, qword ptr [rdi + 0x30]
	mov	qword ptr [rsp + 0x88], rdi
	lea	rdi, [rdi]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x90], rcx
	mov	rax, qword ptr [r12 + 0x58]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	add	rdx, 0x102
	nop	
	mov	qword ptr [rsp + 0x68], rdx
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x40], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	mov	rsp, rsp
	xor	eax, eax
	xor	ebp, ebp
	lea	rsi, [rsi]
	xor	r15d, r15d
.label_1371:
	mov	rsp, rsp
	mov	rbx, qword ptr [r12 + 0x18]
	test	rbx, rbx
	je	.label_1318
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	nop	
	mov	qword ptr [rsp + 0x10], rbp
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	qword ptr [rsp + 0x78], rax
	lea	rdi, [rdi]
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_1335:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x78]
	nop	
	mov	dword ptr [rax], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_1316
	mov	rbp, rbp
	mov	r13, r14
	mov	rbp, rbp
	add	r13, 0x13
	lea	rsi, [rsi]
	test	byte ptr [rbp], 0x20
	jne	.label_1319
	mov	rbp, rbp
	movzx	eax, byte ptr [r13]
	mov	rbp, rbp
	cmp	eax, 0x2e
	lea	rdi, [rdi]
	jne	.label_1319
	movzx	eax, byte ptr [r14 + 0x14]
	mov	rbp, rbp
	cmp	eax, 0x2e
	mov	rbp, rbp
	je	.label_1323
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	je	.label_1327
	lea	rsi, [rsi]
	jmp	.label_1319
	nop	
.label_1323:
	cmp	byte ptr [r14 + 0x15], 0
	lea	rdi, [rdi]
	jne	.label_1319
.label_1327:
	mov	rbx, qword ptr [r12 + 0x18]
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_1335
	jmp	.label_1377
.label_1319:
	lea	rdi, [rdi]
	mov	rdi, r13
	nop	
	call	strlen
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	lea	rdi, [rbx + 0x110]
	lea	rsi, [rsi]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbp, rbp
	mov	r12, rax
	test	r12, r12
	je	.label_1320
	mov	rsp, rsp
	mov	rdi, r12
	lea	rdi, [rdi]
	add	rdi, 0x108
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, rbp
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	byte ptr [r12 + rbx + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbx
	mov	rcx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x50], rcx
	mov	r13, qword ptr [rcx + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x38], r13
	lea	rsi, [rsi]
	mov	dword ptr [r12 + 0x40], 0
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x18], 0
	mov	rbp, rbp
	mov	word ptr [r12 + 0x72], 0
	mov	rbp, rbp
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r12 + 0x20], xmm0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	rsp, rsp
	cmp	rbx, rax
	jae	.label_1309
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x70]
	jmp	.label_1346
	nop	word ptr cs:[rax + rax]
.label_1309:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rsi, [rax + rbx]
	lea	rsi, [rsi]
	add	rsi, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	jb	.label_1375
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x90], rbp
	mov	qword ptr [rcx + 0x30], rsi
	mov	rdi, r13
	mov	rsp, rsp
	mov	rbp, rcx
	call	realloc
	test	rax, rax
	mov	rbp, rbp
	je	.label_1381
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	nop	
	mov	rcx, rbp
	je	.label_1352
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x70]
	add	rax, r13
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x90]
	test	byte ptr [rbp], 4
	mov	rdx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	cmovne	rdx, rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rdx
	mov	al, 1
	mov	qword ptr [rsp + 0x38], rax
	jmp	.label_1383
.label_1352:
	mov	rbp, qword ptr [rsp + 0x90]
	mov	r13, qword ptr [rsp + 0x70]
.label_1383:
	mov	rax, qword ptr [rcx + 0x30]
	sub	rax, r13
.label_1346:
	add	rbx, r13
	lea	rsi, [rsi]
	jb	.label_1317
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x90], rax
	nop	
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r12 + 0x58], rax
	mov	rax, qword ptr [rcx]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbx
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x80], rax
	mov	rsp, rsp
	test	byte ptr [rbp], 4
	mov	rbp, rbp
	jne	.label_1366
	mov	qword ptr [rsp + 0x88], rcx
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_1329
	nop	word ptr [rax + rax]
.label_1366:
	mov	qword ptr [rsp + 0x88], rcx
	mov	rax, qword ptr [r12 + 0x38]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	nop	
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsi, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	call	memmove
.label_1329:
	mov	qword ptr [rsp + 0x70], r13
	mov	edx, dword ptr [rbp]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	je	.label_1344
	mov	eax, edx
	and	eax, 0x400
	nop	
	jne	.label_1344
	mov	r13, rbp
	xor	edx, edx
	nop	
	mov	rdi, qword ptr [rsp + 0x88]
	mov	rsi, r12
	call	fts_stat
	mov	rbp, rbp
	mov	word ptr [r12 + 0x70], ax
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_1380
	nop	dword ptr [rax]
.label_1344:
	mov	r13, rbp
	mov	rbp, rbp
	and	edx, 0x18
	mov	rsp, rsp
	movzx	ecx, byte ptr [r14 + 0x12]
	mov	rsp, rsp
	xor	eax, eax
	cmp	edx, 0x18
	mov	rbp, rbp
	mov	edx, 0
	jne	.label_1355
	mov	rbp, rbp
	cmp	ecx, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
.label_1355:
	mov	word ptr [r12 + 0x70], 0xb
	mov	rsp, rsp
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	rbp, qword ptr [rsp + 0x10]
	nop	
	ja	.label_1376
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [+ (rcx * 4) + label_1369]]
.label_1376:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	mov	rbp, rbp
	adc	rax, 0
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0xa8], rax
.label_1380:
	mov	qword ptr [r12 + 0x10], 0
	lea	rdi, [rdi]
	test	r15, r15
	lea	rsi, [rsi]
	mov	rax, r12
	je	.label_1362
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, r15
.label_1362:
	mov	r15, rax
	cmp	rbp, 0x2710
	nop	
	jne	.label_1373
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	jne	.label_1373
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + 0x54]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x60]
	call	filesystem_type
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	nop	
	cmp	rax, 0x6969
	je	.label_1373
	cmp	rax, 0x1021994
	mov	rbp, rbp
	je	.label_1373
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_1373
	mov	al, 1
	lea	rdi, [rdi]
	mov	dword ptr [rsp], eax
	nop	word ptr [rax + rax]
.label_1373:
	mov	rsp, rsp
	inc	rbp
	cmp	qword ptr [rsp + 0x30], rbp
	mov	rsp, rsp
	mov	rax, r12
	mov	r12, qword ptr [rsp + 0x60]
	ja	.label_1371
	jmp	.label_1318
.label_1316:
	mov	r13, rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x78]
	mov	eax, dword ptr [rax]
	test	eax, eax
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x10]
	je	.label_1358
	mov	dword ptr [r12 + 0x40], eax
	mov	rax, qword ptr [rsp + 0x80]
	or	rax, rbp
	mov	rbp, rbp
	mov	ax, 7
	lea	rdi, [rdi]
	mov	cx, 4
	mov	rbp, rbp
	cmovne	cx, ax
	mov	word ptr [r12 + 0x70], cx
.label_1358:
	nop	
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_1318
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	jmp	.label_1318
.label_1377:
	mov	r13, rbp
	mov	rbp, qword ptr [rsp + 0x10]
.label_1318:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	test	al, 1
	mov	rdi, qword ptr [rsp + 0x80]
	je	.label_1353
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x20]
	nop	
	jmp	.label_1314
	nop	word ptr cs:[rax + rax]
.label_1350:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_1314:
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_1348
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	lea	rdi, [rdi]
	je	.label_1350
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	nop	
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_1350
.label_1348:
	cmp	qword ptr [r15 + 0x58], 0
	js	.label_1353
	lea	rdi, [rdi]
	mov	rcx, r15
	nop	word ptr cs:[rax + rax]
.label_1370:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	lea	rdi, [rdi]
	cmp	rdx, rsi
	mov	rsp, rsp
	je	.label_1360
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rcx + 0x38]
	nop	
	add	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rdx
.label_1360:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	test	rdx, rdx
	jne	.label_1367
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 8]
.label_1367:
	mov	rsp, rsp
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	lea	rdi, [rdi]
	jns	.label_1370
.label_1353:
	test	byte ptr [r13], 4
	mov	rsp, rsp
	je	.label_1339
	mov	rax, qword ptr [rsp + 0x58]
	mov	rdx, rax
	mov	rbp, rbp
	lea	rax, [rdx - 1]
	mov	rcx, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x70]
	cmp	rsi, qword ptr [rcx + 0x30]
	cmove	rdx, rax
	test	rbp, rbp
	cmove	rdx, rax
	mov	byte ptr [rdx], 0
.label_1339:
	nop	
	test	rdi, rdi
	jne	.label_1313
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	mov	rbp, rbp
	je	.label_1313
	cmp	dword ptr [rsp + 0x1c], 1
	je	.label_1379
	lea	rsi, [rsi]
	test	rbp, rbp
	jne	.label_1313
.label_1379:
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x58], 0
	je	.label_1382
	mov	rsi, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_7
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x88]
	call	fts_safe_changedir
	jmp	.label_1311
.label_1382:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x88]
	call	restore_initial_cwd
.label_1311:
	test	eax, eax
	je	.label_1313
	mov	word ptr [r12 + 0x70], 7
	nop	
	or	byte ptr [r13 + 1], 0x20
	nop	
	xor	ebx, ebx
	test	r15, r15
	je	.label_1308
	nop	
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1325:
	mov	rbp, rbp
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_1321
	mov	rsp, rsp
	call	closedir
.label_1321:
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_1325
	nop	
	jmp	.label_1308
.label_1313:
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_1331
	mov	eax, dword ptr [rsp]
	test	al, 1
	jne	.label_1333
	cmp	rbp, 2
	nop	
	jb	.label_1337
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1340
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, rbp
	nop	
	call	fts_sort
	mov	rbx, rax
	lea	rdi, [rdi]
	jmp	.label_1308
.label_1331:
	cmp	dword ptr [rsp + 0x1c], 3
	nop	
	jne	.label_1349
	movzx	eax, word ptr [r12 + 0x70]
	lea	rsi, [rsi]
	cmp	eax, 4
	nop	
	je	.label_1349
	mov	rsp, rsp
	movzx	eax, ax
	cmp	eax, 7
	lea	rdi, [rdi]
	je	.label_1349
	mov	word ptr [r12 + 0x70], 6
.label_1349:
	xor	ebx, ebx
	mov	rsp, rsp
	test	r15, r15
	je	.label_1308
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1365:
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_1345
	call	closedir
.label_1345:
	mov	rbp, rbp
	mov	rdi, r15
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	test	rbp, rbp
	lea	rdi, [rdi]
	mov	r15, rbp
	jne	.label_1365
	jmp	.label_1308
.label_1333:
	mov	r14, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:fts_compare_ino
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x88]
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, rbp
	nop	
	call	fts_sort
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	qword ptr [r14], 0
	jmp	.label_1308
.label_1337:
	mov	rbx, r15
	mov	rsp, rsp
	jmp	.label_1308
.label_1340:
	lea	rdi, [rdi]
	mov	rbx, r15
	lea	rdi, [rdi]
	jmp	.label_1308
.label_1317:
	lea	rdi, [rdi]
	mov	rdi, r12
	call	free
	lea	rdi, [rdi]
	test	r15, r15
	je	.label_1378
	nop	dword ptr [rax]
.label_1384:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_1332
	mov	rbp, rbp
	call	closedir
.label_1332:
	mov	rsp, rsp
	mov	rdi, r15
	call	free
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	mov	r15, rbx
	jne	.label_1384
.label_1378:
	mov	rbx, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	or	byte ptr [rbp + 1], 0x20
	mov	rax, qword ptr [rsp + 0x78]
	mov	dword ptr [rax], 0x24
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_1308
.label_1375:
	mov	rdi, r13
	mov	rbx, rcx
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	nop	
	mov	rax, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x24
	mov	qword ptr [rsp + 0x40], r12
	jmp	.label_1320
.label_1381:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 0x20], 0
	mov	qword ptr [rsp + 0x40], r12
	mov	rbp, qword ptr [rsp + 0x90]
.label_1320:
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	call	free
	test	r15, r15
	mov	r12, qword ptr [rsp + 0x60]
	nop	
	je	.label_1338
	nop	word ptr cs:[rax + rax]
.label_1347:
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_1342
	nop	
	call	closedir
.label_1342:
	mov	rdi, r15
	call	free
	nop	
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_1347
.label_1338:
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x70], 7
	lea	rsi, [rsi]
	or	byte ptr [rbp + 1], 0x20
	mov	rax, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	mov	dword ptr [rax], r14d
	xor	ebx, ebx
.label_1308:
	mov	rax, rbx
	mov	rsp, rsp
	add	rsp, 0x98
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414330

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
	jne	.label_1390
	nop	
	test	ah, 2
	lea	rsi, [rsi]
	jne	.label_1387
	mov	edi, dword ptr [rbx + 0x28]
	mov	rsp, rsp
	call	fchdir
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	setne	al
	jmp	.label_1388
.label_1390:
	xor	eax, eax
	jmp	.label_1388
.label_1387:
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	mov	rbp, rbp
	call	i_ring_push
	test	eax, eax
	mov	rbp, rbp
	js	.label_1392
	mov	rsp, rsp
	mov	edi, eax
	lea	rdi, [rdi]
	call	close
.label_1392:
	nop	
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	lea	rsi, [rsi]
	xor	eax, eax
.label_1388:
	mov	rsp, rsp
	movzx	ebp, al
	lea	rsi, [rsi]
	add	rbx, 0x60
	jmp	.label_1386
	nop	dword ptr [rax]
.label_1391:
	mov	edi, eax
	mov	rbp, rbp
	call	close
.label_1386:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	i_ring_empty
	mov	rsp, rsp
	test	al, al
	nop	
	jne	.label_1389
	mov	rdi, rbx
	call	i_ring_pop
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jns	.label_1391
	lea	rsi, [rsi]
	jmp	.label_1386
.label_1389:
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
	#Procedure 0x414400

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	mov	rsp, rsp
	cmp	edx, 5
	jb	.label_1393
	nop	
	push	rax
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	mov	rbp, rbp
	add	rsp, 8
	ret	
.label_1393:
	mov	rsp, rsp
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414430
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
	jne	.label_1409
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
	jne	.label_1404
	movzx	ecx, word ptr [r15 + 0x70]
	mov	rbp, rbp
	xor	eax, eax
	cmp	ecx, 1
	je	.label_1400
	movzx	ecx, cx
	cmp	ecx, 9
	nop	
	jne	.label_1404
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_1404
.label_1409:
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x16
	mov	rsp, rsp
	xor	eax, eax
	nop	
	jmp	.label_1404
.label_1400:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	nop	
	je	.label_1398
	nop	word ptr cs:[rax + rax]
.label_1394:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_1406
	call	closedir
.label_1406:
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	mov	rbx, rbp
	jne	.label_1394
.label_1398:
	mov	ebx, 1
	lea	rsi, [rsi]
	cmp	r12d, 0x1000
	jne	.label_1399
	or	byte ptr [r13 + 0x49], 0x10
	mov	rsp, rsp
	mov	ebx, 2
.label_1399:
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x58], 0
	nop	
	jne	.label_1397
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x30]
	mov	rsp, rsp
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	je	.label_1397
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	lea	rdi, [rdi]
	jne	.label_1397
	mov	edx, eax
	and	edx, 0x10
	lea	rsi, [rsi]
	shl	edx, 0xd
	or	edx, 0x90900
	mov	rsp, rsp
	test	ah, 2
	jne	.label_1401
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str_1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, edx
	mov	rbp, rbp
	call	open_safer
	jmp	.label_1395
.label_1397:
	mov	rdi, r13
	mov	esi, ebx
	mov	rbp, rbp
	call	fts_build
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 8], rax
.label_1404:
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
.label_1401:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_1
	xor	eax, eax
	call	openat_safer
.label_1395:
	mov	r15d, eax
	test	r15d, r15d
	mov	rbp, rbp
	js	.label_1403
	mov	rbp, rbp
	mov	rdi, r13
	mov	esi, ebx
	lea	rsi, [rsi]
	call	fts_build
	mov	rsp, rsp
	mov	qword ptr [r13 + 8], rax
	mov	rbp, rbp
	test	byte ptr [r13 + 0x49], 2
	jne	.label_1405
	nop	
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_1410
	lea	rdi, [rdi]
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	rsp, rsp
	mov	dword ptr [r14], ebx
	mov	rsp, rsp
	xor	eax, eax
	nop	
	jmp	.label_1404
.label_1403:
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 8], 0
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_1404
.label_1405:
	mov	esi, dword ptr [r13 + 0x2c]
	mov	rbp, rbp
	cmp	esi, r15d
	mov	rsp, rsp
	jne	.label_1408
	lea	rsi, [rsi]
	cmp	esi, -0x64
	jne	.label_1396
.label_1408:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	mov	rbp, rbp
	js	.label_1402
	mov	edi, eax
	mov	rbp, rbp
	call	close
.label_1402:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_1407
.label_1410:
	lea	rsi, [rsi]
	mov	edi, r15d
	call	close
.label_1407:
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_1404
.label_1396:
	mov	rbp, rbp
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414690

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
	#Procedure 0x4146b0

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	mov	rbp, rbp
	jne	.label_1411
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	mov	rsp, rsp
	ret	
.label_1411:
	mov	rsp, rsp
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4146e0

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
	je	.label_1412
	mov	rbp, qword ptr [rbx + 0x50]
	mov	rbp, rbp
	test	rbp, rbp
	jne	.label_1417
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
	je	.label_1414
.label_1417:
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
	je	.label_1413
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	jmp	.label_1412
.label_1413:
	mov	r12b, 1
	mov	r14, rbp
.label_1414:
	xor	eax, eax
	nop	
	test	r15d, r15d
	js	.label_1412
	lea	rsi, [rsp + 0x10]
	mov	edi, r15d
	mov	rbp, rbp
	call	fstatfs
	mov	ecx, eax
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	test	ecx, ecx
	jne	.label_1412
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_1416
	mov	edi, 0x10
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rax
	nop	
	test	rbp, rbp
	je	.label_1416
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
	je	.label_1415
	nop	
	cmp	rax, rbp
	lea	rsi, [rsi]
	je	.label_1416
	lea	rdi, [rdi]
	call	abort
.label_1415:
	mov	rdi, rbp
	call	free
.label_1416:
	mov	rax, qword ptr [rsp + 0x10]
.label_1412:
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
	#Procedure 0x414850

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
	#Procedure 0x414870

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
	#Procedure 0x414880

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
	#Procedure 0x4148c0

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
	je	.label_1418
	nop	
	cmp	r15, -2
	jb	.label_1418
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_1418
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_1418:
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
	#Procedure 0x414950

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
	mov	rbp, rax
	nop	
	mov	qword ptr [rsp + 0x38], rbp
	mov	rsp, rsp
	test	rbp, rbp
	nop	
	je	.label_1438
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], 0
	nop	
	mov	qword ptr [rsp + 0x20], 0
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x40]
	lea	rsi, [rsp + 0x20]
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	rcx, rbp
	call	__getdelim
	lea	r12, [rsp + 0x50]
	cmp	rax, -1
	je	.label_1442
	mov	rsp, rsp
	lea	rbx, [rsp + 0x6b]
	lea	r14, [rsp + 0x30]
	lea	r15, [rsp + 0x48]
	nop	
.label_1445:
	mov	rdi, qword ptr [rsp + 0x40]
	nop	
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp], r15
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.2_8
	xor	eax, eax
	mov	rbp, rbp
	lea	rdx, [rsp + 0x60]
	lea	rcx, [rsp + 0x2c]
	lea	rdi, [rdi]
	lea	r8, [rsp + 0x34]
	lea	rsi, [rsi]
	lea	r9, [rsp + 0x4c]
	nop	
	call	sscanf
	or	eax, 4
	lea	rdi, [rdi]
	cmp	eax, 7
	nop	
	jne	.label_1427
	mov	rsp, rsp
	movsxd	rdi, dword ptr [rsp + 0x30]
	mov	rbp, rbp
	add	rdi, qword ptr [rsp + 0x40]
	mov	esi, OFFSET FLAT:.str.3_6
	lea	rsi, [rsi]
	call	strstr
	nop	
	mov	r13, rax
	test	r13, r13
	je	.label_1427
	mov	rsp, rsp
	mov	qword ptr [rsp], rbx
	mov	esi, OFFSET FLAT:.str.4_4
	xor	eax, eax
	mov	rdi, r13
	mov	rsp, rsp
	lea	rdx, [rsp + 0x6c]
	lea	rcx, [rsp + 0x28]
	lea	r8, [rsp + 0x64]
	lea	r9, [rsp + 0x5c]
	call	sscanf
	or	eax, 4
	cmp	eax, 5
	jne	.label_1427
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rsp + 0x4c]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x40]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	byte ptr [rcx + rax], 0
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rsp + 0x28]
	mov	byte ptr [r13 + rax], 0
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rsp + 0x5c]
	lea	rdi, [rdi]
	mov	byte ptr [r13 + rax], 0
	movsxd	rbp, dword ptr [rsp + 0x64]
	nop	
	add	rbp, r13
	mov	rsp, rsp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strlen
	nop	
	inc	rax
	je	.label_1448
	mov	rbp, rbp
	mov	rcx, rbp
	lea	rsi, [rsi]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1433:
	mov	rbp, rbp
	mov	r9b, byte ptr [rbp + rdx]
	lea	rsi, [rdx + 4]
	cmp	rsi, rax
	lea	rsi, [rsi]
	jae	.label_1424
	movzx	esi, r9b
	cmp	esi, 0x5c
	jne	.label_1424
	mov	sil, byte ptr [rdx + rbp + 1]
	nop	
	mov	bl, sil
	lea	rsi, [rsi]
	and	bl, 0xfc
	lea	rsi, [rsi]
	movzx	edi, bl
	mov	rsp, rsp
	cmp	edi, 0x30
	jne	.label_1424
	nop	
	mov	dil, byte ptr [rdx + rbp + 2]
	mov	bl, dil
	and	bl, 0xf8
	lea	rsi, [rsi]
	movzx	ebx, bl
	cmp	ebx, 0x30
	jne	.label_1424
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rbp + rdx + 3]
	mov	bl, r8b
	mov	rsp, rsp
	and	bl, 0xf8
	movzx	ebx, bl
	cmp	ebx, 0x30
	lea	rsi, [rsi]
	jne	.label_1424
	mov	rbp, rbp
	add	rdx, 3
	nop	
	shl	sil, 6
	shl	dil, 3
	add	dil, sil
	mov	rbp, rbp
	add	dil, r8b
	mov	rbp, rbp
	add	dil, 0x50
	lea	rsi, [rsi]
	mov	byte ptr [rcx], dil
	jmp	.label_1440
	nop	dword ptr [rax]
.label_1424:
	mov	rsp, rsp
	mov	byte ptr [rcx], r9b
.label_1440:
	inc	rdx
	lea	rsi, [rsi]
	inc	rcx
	cmp	rdx, rax
	jb	.label_1433
.label_1448:
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x40]
	movsxd	rbp, dword ptr [rsp + 0x48]
	add	rbp, rbx
	mov	rdi, rbp
	mov	rsp, rsp
	call	strlen
	inc	rax
	je	.label_1447
	mov	rsp, rsp
	mov	rcx, rbp
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1439:
	mov	r9b, byte ptr [rbp + rdx]
	lea	rsi, [rdx + 4]
	mov	rbp, rbp
	cmp	rsi, rax
	jae	.label_1419
	movzx	esi, r9b
	lea	rsi, [rsi]
	cmp	esi, 0x5c
	nop	
	jne	.label_1419
	mov	sil, byte ptr [rdx + rbp + 1]
	nop	
	mov	bl, sil
	lea	rsi, [rsi]
	and	bl, 0xfc
	movzx	edi, bl
	cmp	edi, 0x30
	jne	.label_1419
	mov	dil, byte ptr [rdx + rbp + 2]
	mov	bl, dil
	and	bl, 0xf8
	mov	rsp, rsp
	movzx	ebx, bl
	cmp	ebx, 0x30
	mov	rbp, rbp
	jne	.label_1419
	mov	r8b, byte ptr [rbp + rdx + 3]
	mov	bl, r8b
	and	bl, 0xf8
	movzx	ebx, bl
	nop	
	cmp	ebx, 0x30
	jne	.label_1419
	mov	rsp, rsp
	add	rdx, 3
	lea	rsi, [rsi]
	shl	sil, 6
	shl	dil, 3
	mov	rsp, rsp
	add	dil, sil
	add	dil, r8b
	add	dil, 0x50
	mov	rsp, rsp
	mov	byte ptr [rcx], dil
	jmp	.label_1437
	nop	dword ptr [rax]
.label_1419:
	nop	
	mov	byte ptr [rcx], r9b
.label_1437:
	lea	rsi, [rsi]
	inc	rdx
	inc	rcx
	cmp	rdx, rax
	jb	.label_1439
	mov	rbx, qword ptr [rsp + 0x40]
.label_1447:
	movsxd	rbp, dword ptr [rsp + 0x34]
	add	rbp, rbx
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strlen
	mov	rsp, rsp
	inc	rax
	nop	
	je	.label_1444
	lea	rdi, [rdi]
	mov	rcx, rbp
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1426:
	mov	r9b, byte ptr [rbp + rdx]
	lea	rsi, [rdx + 4]
	cmp	rsi, rax
	jae	.label_1422
	lea	rsi, [rsi]
	movzx	esi, r9b
	nop	
	cmp	esi, 0x5c
	lea	rsi, [rsi]
	jne	.label_1422
	mov	sil, byte ptr [rdx + rbp + 1]
	lea	rdi, [rdi]
	mov	bl, sil
	lea	rdi, [rdi]
	and	bl, 0xfc
	mov	rbp, rbp
	movzx	edi, bl
	cmp	edi, 0x30
	jne	.label_1422
	mov	rsp, rsp
	mov	dil, byte ptr [rdx + rbp + 2]
	mov	rbp, rbp
	mov	bl, dil
	and	bl, 0xf8
	movzx	ebx, bl
	lea	rdi, [rdi]
	cmp	ebx, 0x30
	mov	rsp, rsp
	jne	.label_1422
	mov	r8b, byte ptr [rbp + rdx + 3]
	mov	bl, r8b
	and	bl, 0xf8
	movzx	ebx, bl
	cmp	ebx, 0x30
	lea	rsi, [rsi]
	jne	.label_1422
	add	rdx, 3
	shl	sil, 6
	nop	
	shl	dil, 3
	mov	rsp, rsp
	add	dil, sil
	add	dil, r8b
	add	dil, 0x50
	lea	rsi, [rsi]
	mov	byte ptr [rcx], dil
	mov	rbp, rbp
	jmp	.label_1436
	nop	dword ptr [rax]
.label_1422:
	mov	byte ptr [rcx], r9b
.label_1436:
	inc	rdx
	inc	rcx
	cmp	rdx, rax
	jb	.label_1426
.label_1444:
	mov	edi, 0x38
	call	xmalloc
	mov	rbp, rax
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rsp + 0x64]
	lea	rdi, [rdi]
	add	rdi, r13
	nop	
	call	xstrdup
	mov	qword ptr [rbp], rax
	movsxd	rdi, dword ptr [rsp + 0x48]
	add	rdi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	call	xstrdup
	mov	rsp, rsp
	mov	qword ptr [rbp + 8], rax
	movsxd	rdi, dword ptr [rsp + 0x34]
	add	rdi, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	call	xstrdup
	mov	qword ptr [rbp + 0x10], rax
	movsxd	rdi, dword ptr [rsp + 0x6c]
	mov	rbp, rbp
	add	rdi, r13
	lea	rdi, [rdi]
	call	xstrdup
	mov	r13, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x18], r13
	lea	rdi, [rdi]
	mov	bl, byte ptr [rbp + 0x28]
	or	bl, 4
	mov	byte ptr [rbp + 0x28], bl
	mov	eax, dword ptr [rsp + 0x60]
	mov	ecx, dword ptr [rsp + 0x2c]
	movzx	edx, cl
	mov	esi, eax
	nop	
	shl	esi, 8
	nop	
	and	esi, 0xfff00
	lea	rdi, [rdi]
	or	esi, edx
	nop	
	and	ecx, 0xffffff00
	shl	rcx, 0xc
	and	eax, 0xfffff000
	mov	rsp, rsp
	shl	rax, 0x20
	or	rax, rcx
	mov	rbp, rbp
	or	rax, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp + 0x20], rax
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.5_2
	mov	rsp, rsp
	mov	rdi, r13
	call	strcmp
	lea	rdi, [rdi]
	mov	r14b, 1
	lea	rdi, [rdi]
	test	eax, eax
	mov	al, 1
	lea	rsi, [rsi]
	je	.label_1421
	mov	esi, OFFSET FLAT:.str.6_2
	lea	rsi, [rsi]
	mov	rdi, r13
	call	strcmp
	nop	
	test	eax, eax
	mov	al, 1
	nop	
	je	.label_1421
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsp, rsp
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	je	.label_1421
	nop	
	mov	esi, OFFSET FLAT:.str.8_2
	nop	
	mov	rdi, r13
	lea	rdi, [rdi]
	call	strcmp
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	je	.label_1421
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.9_2
	mov	rdi, r13
	lea	rsi, [rsi]
	call	strcmp
	nop	
	test	eax, eax
	mov	al, 1
	mov	rbp, rbp
	je	.label_1421
	mov	esi, OFFSET FLAT:.str.10_2
	lea	rdi, [rdi]
	mov	rdi, r13
	call	strcmp
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	mov	al, 1
	je	.label_1421
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.11_2
	mov	rbp, rbp
	mov	rdi, r13
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	mov	al, 1
	nop	
	je	.label_1421
	mov	esi, OFFSET FLAT:.str.12_2
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	je	.label_1421
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.13_1
	mov	rsp, rsp
	mov	rdi, r13
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	lea	rdi, [rdi]
	mov	al, 1
	je	.label_1421
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.14_1
	mov	rdi, r13
	lea	rdi, [rdi]
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	mov	al, 1
	je	.label_1421
	mov	esi, OFFSET FLAT:.str.15_1
	nop	
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	mov	al, 1
	nop	
	je	.label_1421
	mov	esi, OFFSET FLAT:.str.16_1
	nop	
	mov	rdi, r13
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	je	.label_1421
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.17_2
	mov	rbp, rbp
	mov	rdi, r13
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	sete	al
	nop	
.label_1421:
	lea	rsi, [rsi]
	and	bl, 0xfe
	or	bl, al
	mov	rsp, rsp
	mov	byte ptr [rbp + 0x28], bl
	mov	r15, qword ptr [rbp]
	mov	esi, 0x3a
	lea	rdi, [rdi]
	mov	rdi, r15
	call	strchr
	test	rax, rax
	mov	rsp, rsp
	jne	.label_1430
	movzx	eax, byte ptr [r15]
	lea	rdi, [rdi]
	cmp	eax, 0x2f
	mov	rsp, rsp
	jne	.label_1435
	movzx	eax, byte ptr [r15 + 1]
	cmp	eax, 0x2f
	jne	.label_1435
	mov	esi, OFFSET FLAT:.str.18_2
	mov	rdi, r13
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	je	.label_1430
	mov	esi, OFFSET FLAT:.str.19_1
	mov	rbp, rbp
	mov	rdi, r13
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	je	.label_1430
.label_1435:
	mov	edi, OFFSET FLAT:.str.20_0
	nop	
	mov	rsi, r15
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	sete	r14b
.label_1430:
	lea	rdi, [rdi]
	add	r14b, r14b
	nop	
	and	bl, 0xfd
	mov	rsp, rsp
	or	bl, r14b
	mov	byte ptr [rbp + 0x28], bl
	mov	rsp, rsp
	mov	qword ptr [r12], rbp
	lea	rsi, [rsi]
	add	rbp, 0x30
	mov	r12, rbp
	mov	rbp, qword ptr [rsp + 0x38]
	lea	rbx, [rsp + 0x6b]
	lea	rsi, [rsi]
	lea	r14, [rsp + 0x30]
	lea	r15, [rsp + 0x48]
.label_1427:
	mov	edx, 0xa
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x40]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rcx, rbp
	call	__getdelim
	lea	rdi, [rdi]
	cmp	rax, -1
	lea	rsi, [rsi]
	jne	.label_1445
.label_1442:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	test	byte ptr [rbp], 0x20
	jne	.label_1449
	mov	rbp, rbp
	mov	rdi, rbp
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_1423
	jmp	.label_1425
.label_1438:
	mov	edi, OFFSET FLAT:.str.21_0
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_0
	call	setmntent
	mov	rbx, rax
	mov	qword ptr [rsp + 0x38], rbx
	xor	eax, eax
	nop	
	test	rbx, rbx
	nop	
	je	.label_1428
	lea	r13, [rsp + 0x50]
	mov	rdi, rbx
	call	getmntent
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_1434
	nop	dword ptr [rax]
.label_1429:
	mov	esi, OFFSET FLAT:.str.22_0
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbp, rbp
	call	hasmntopt
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	mov	rsp, rsp
	mov	edi, 0x38
	call	xmalloc
	lea	rdi, [rdi]
	mov	r12, rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp]
	nop	
	call	xstrdup
	mov	qword ptr [r12], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp + 8]
	nop	
	call	xstrdup
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x10], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp + 0x10]
	call	xstrdup
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x18], rbp
	mov	r14b, byte ptr [r12 + 0x28]
	or	r14b, 4
	mov	byte ptr [r12 + 0x28], r14b
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.5_2
	mov	rdi, rbp
	mov	rbp, rbp
	call	strcmp
	lea	rdi, [rdi]
	mov	r15b, 1
	test	eax, eax
	lea	rsi, [rsi]
	mov	bl, 1
	je	.label_1420
	mov	esi, OFFSET FLAT:.str.6_2
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	lea	rdi, [rdi]
	mov	bl, 1
	nop	
	je	.label_1420
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_1
	nop	
	mov	rdi, rbp
	nop	
	call	strcmp
	test	eax, eax
	mov	bl, 1
	je	.label_1420
	mov	esi, OFFSET FLAT:.str.8_2
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	mov	bl, 1
	je	.label_1420
	mov	esi, OFFSET FLAT:.str.9_2
	mov	rdi, rbp
	mov	rbp, rbp
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	mov	bl, 1
	je	.label_1420
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rdi, rbp
	nop	
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	mov	bl, 1
	je	.label_1420
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.11_2
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	mov	bl, 1
	je	.label_1420
	mov	esi, OFFSET FLAT:.str.12_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	bl, 1
	mov	rbp, rbp
	je	.label_1420
	mov	esi, OFFSET FLAT:.str.13_1
	nop	
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	bl, 1
	je	.label_1420
	nop	
	mov	esi, OFFSET FLAT:.str.14_1
	mov	rdi, rbp
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	mov	bl, 1
	je	.label_1420
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.15_1
	nop	
	mov	rdi, rbp
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	mov	bl, 1
	je	.label_1420
	mov	esi, OFFSET FLAT:.str.16_1
	nop	
	mov	rdi, rbp
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	bl, 1
	je	.label_1420
	nop	
	cmp	qword ptr [rsp + 0x70], 0
	sete	bl
	mov	esi, OFFSET FLAT:.str.17_2
	mov	rbp, rbp
	mov	rdi, rbp
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1420
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1420:
	and	r14b, 0xfe
	or	r14b, bl
	mov	rsp, rsp
	mov	byte ptr [r12 + 0x28], r14b
	mov	rbx, qword ptr [r12]
	mov	esi, 0x3a
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strchr
	test	rax, rax
	jne	.label_1441
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2f
	mov	rbp, rbp
	jne	.label_1431
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx + 1]
	nop	
	cmp	eax, 0x2f
	lea	rdi, [rdi]
	jne	.label_1431
	mov	esi, OFFSET FLAT:.str.18_2
	mov	rsp, rsp
	mov	rdi, rbp
	nop	
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	je	.label_1441
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.19_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	nop	
	je	.label_1441
	nop	word ptr cs:[rax + rax]
.label_1431:
	mov	edi, OFFSET FLAT:.str.20_0
	mov	rsi, rbx
	nop	
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	sete	r15b
.label_1441:
	nop	
	add	r15b, r15b
	lea	rsi, [rsi]
	and	r14b, 0xfd
	lea	rdi, [rdi]
	or	r14b, r15b
	mov	byte ptr [r12 + 0x28], r14b
	mov	qword ptr [r12 + 0x20], -1
	mov	qword ptr [r13], r12
	lea	rdi, [rdi]
	add	r12, 0x30
	nop	
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rdi, rbx
	call	getmntent
	mov	rbp, rax
	test	rbp, rbp
	lea	rsi, [rsi]
	mov	r13, r12
	lea	rsi, [rsi]
	jne	.label_1429
	nop	
	jmp	.label_1432
.label_1449:
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	nop	
	mov	rdi, rbp
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbx], r14d
	lea	rsi, [rsi]
	jmp	.label_1425
.label_1434:
	mov	r12, r13
.label_1432:
	nop	
	mov	rdi, rbx
	call	endmntent
	test	eax, eax
	nop	
	je	.label_1425
.label_1423:
	mov	qword ptr [r12], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	jmp	.label_1428
.label_1425:
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	r15, rax
	mov	rbp, rbp
	mov	r14d, dword ptr [r15]
	mov	qword ptr [r12], 0
	mov	rbx, qword ptr [rsp + 0x50]
	test	rbx, rbx
	je	.label_1443
	nop	word ptr cs:[rax + rax]
.label_1450:
	mov	rdi, qword ptr [rbx]
	mov	rbp, qword ptr [rbx + 0x30]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	nop	
	test	byte ptr [rbx + 0x28], 4
	mov	rsp, rsp
	je	.label_1446
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
.label_1446:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rbp
	lea	rdi, [rdi]
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_1450
.label_1443:
	mov	rsp, rsp
	mov	dword ptr [r15], r14d
	xor	eax, eax
.label_1428:
	mov	rbp, rbp
	add	rsp, 0x78
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415540

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
	je	.label_1451
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
.label_1451:
	mov	rdi, rbx
	lea	rdi, [rdi]
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x415590
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
	je	.label_1452
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	mov	rbp, rbp
	jmp	dcgettext
.label_1452:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x415600

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
	mov	r14, rdx
	mov	r13, rsi
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
	jbe	.label_1551
.label_1610:
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
	cmp	r14, rax
	ja	.label_1480
	lea	rdi, [r14 + 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [r12 + 8], rdi
	shl	rdi, 4
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	dword ptr [rax + rax]
.label_1561:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	lea	rdi, [rdi]
	cmp	rbx, r14
	nop	
	jbe	.label_1561
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
	jne	.label_1457
	nop	
	mov	cl, byte ptr [rax + 1]
	lea	rdi, [rdi]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x74
	mov	rbp, rbp
	jne	.label_1457
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 2]
	lea	rsi, [rsi]
	or	cl, 0x20
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, 0x66
	mov	rsp, rsp
	jne	.label_1457
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	lea	rdi, [rdi]
	sete	cl
	nop	
	movzx	ecx, cl
	movzx	edx, byte ptr [rax + rcx + 3]
	cmp	edx, 0x38
	jne	.label_1457
	nop	
	cmp	byte ptr [rax + rcx + 4], 0
	lea	rsi, [rsi]
	jne	.label_1457
	or	byte ptr [r12 + 0xb0], 4
.label_1457:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_1460
	lea	rsi, [rsi]
	test	al, 4
	lea	rsi, [rsi]
	jne	.label_1471
	mov	edi, 0x20
	mov	rsp, rsp
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	nop	
	xor	ebx, ebx
	test	rax, rax
	mov	rsp, rsp
	je	.label_1480
	lea	rdi, [rdi]
	xor	ebp, ebp
	nop	
.label_1494:
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	lea	rdi, [rdi]
	je	.label_1487
	mov	edx, 1
	nop	
	mov	cl, bl
	shl	rdx, cl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_1487:
	mov	rsp, rsp
	cmp	ebx, 0x7f
	lea	rsi, [rsi]
	ja	.label_1473
	nop	
	cmp	ebx, eax
	mov	rsp, rsp
	je	.label_1473
	or	byte ptr [r12 + 0xb0], 8
.label_1473:
	inc	rbx
	mov	rbp, rbp
	cmp	rbx, 0x40
	lea	rdi, [rdi]
	jne	.label_1494
	nop	
	mov	qword ptr [rsp + 0xd0], r15
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1511:
	mov	rsp, rsp
	lea	r15, [rbp + 0x40]
	mov	edi, r15d
	mov	rsp, rsp
	call	btowc
	cmp	eax, -1
	je	.label_1505
	lea	rdi, [rdi]
	mov	edx, 1
	mov	cl, bpl
	mov	rsp, rsp
	shl	rdx, cl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x78]
	mov	rbp, rbp
	or	qword ptr [rcx + 8], rdx
.label_1505:
	lea	rsi, [rsi]
	cmp	r15d, eax
	mov	rbp, rbp
	je	.label_1509
	or	byte ptr [r12 + 0xb0], 8
.label_1509:
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, 0x40
	jne	.label_1511
	xor	ebp, ebp
	mov	r15, qword ptr [rsp + 0xd0]
	nop	word ptr cs:[rax + rax]
.label_1527:
	mov	rsp, rsp
	lea	edi, [rbx + 0x80]
	call	btowc
	cmp	eax, -1
	lea	rsi, [rsi]
	je	.label_1486
	mov	eax, 1
	lea	rdi, [rdi]
	mov	cl, bl
	mov	rsp, rsp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	mov	rsp, rsp
	or	qword ptr [rcx + 0x10], rax
.label_1486:
	mov	rbp, rbp
	inc	rbx
	mov	rsp, rsp
	cmp	rbx, 0x40
	jne	.label_1527
	nop	word ptr cs:[rax + rax]
.label_1546:
	lea	rdi, [rdi]
	lea	edi, [rbp + 0xc0]
	mov	rsp, rsp
	call	btowc
	lea	rsi, [rsi]
	cmp	eax, -1
	je	.label_1574
	mov	eax, 1
	mov	cl, bpl
	nop	
	shl	rax, cl
	mov	rsp, rsp
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_1574:
	mov	rbp, rbp
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, 0x40
	jne	.label_1546
	jmp	.label_1460
.label_1471:
	mov	qword ptr [word ptr [r12 + 120]], OFFSET FLAT:utf8_sb_map
.label_1460:
	cmp	qword ptr [r12], 0
	je	.label_1480
	cmp	qword ptr [r12 + 0x40], 0
	nop	
	je	.label_1480
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
	mov	qword ptr [rsp + 0x20], r13
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x78], r14
	mov	qword ptr [rsp + 0x70], r14
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
	mov	qword ptr [rsp + 0x88], r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x80], r14
	mov	rsp, rsp
	xor	eax, eax
	test	r14, r14
	jle	.label_1555
	mov	rsp, rsp
	cmp	edx, 2
	lea	rsi, [rsi]
	jl	.label_1604
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
	ja	.label_1489
	lea	rsi, [rax*4]
	xor	edi, edi
	nop	
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	je	.label_1489
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0xd0]
.label_1604:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	test	bpl, bpl
	mov	rbp, rbp
	mov	edx, 0
	mov	rbp, rbp
	je	.label_1619
	mov	qword ptr [rsp + 0xd0], r15
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	rsi, qword ptr [rsp + 0x18]
	call	realloc
	nop	
	mov	r15d, 0xc
	test	rax, rax
	je	.label_1489
	mov	qword ptr [rsp + 0x28], rax
	nop	
	mov	dl, bpl
	mov	r15, qword ptr [rsp + 0xd0]
.label_1619:
	mov	rcx, qword ptr [rsp + 0x18]
	nop	
	mov	qword ptr [rsp + 0x60], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	lea	rdi, [rdi]
	mov	bpl, dl
	mov	rsp, rsp
	jmp	.label_1455
.label_1480:
	mov	dword ptr [rsp + 0x14], 0xc
	mov	rsp, rsp
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	rsp, rsp
	mov	eax, 0xc
	mov	rbp, rbp
	jmp	.label_1463
.label_1555:
	mov	rsp, rsp
	shr	rcx, 0x20
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rdx
.label_1455:
	test	bpl, bpl
	lea	rdi, [rdi]
	cmove	rax, r13
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	cmp	qword ptr [rsp + 0xc0], 0
	je	.label_1477
	mov	rbp, rbp
	cmp	ecx, 2
	mov	rbp, rbp
	jl	.label_1593
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], r15
	lea	rdi, [rsp + 0x20]
	lea	rsi, [rsi]
	call	build_wcs_upper_buffer
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_1489
	lea	r13, [rsp + 0x20]
.label_1536:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r14
	jge	.label_1483
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x50]
	cmp	rbp, rax
	lea	rdi, [rdi]
	jg	.label_1483
	nop	
	lea	rbx, [rbp + rbp]
	mov	rsp, rsp
	cmp	dword ptr [rsp + 0xb0], 2
	jl	.label_1502
	mov	r15d, 0xc
	movabs	rax, 0x1fffffffffffffff
	cmp	rbx, rax
	ja	.label_1489
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	lea	rsi, [rbp*8]
	nop	
	call	realloc
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1489
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_1502
	lea	rdi, [rdi]
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	je	.label_1489
	mov	qword ptr [rsp + 0x38], rax
.label_1502:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xab], 0
	je	.label_1522
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, rbx
	call	realloc
	mov	r15d, 0xc
	test	rax, rax
	je	.label_1489
	nop	
	mov	qword ptr [rsp + 0x28], rax
.label_1522:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rbx
	mov	rsp, rsp
	mov	rdi, r13
	call	build_wcs_upper_buffer
	mov	r15d, eax
	test	r15d, r15d
	mov	rbp, rbp
	je	.label_1536
.label_1489:
	mov	dword ptr [rsp + 0x14], r15d
	lea	rsi, [rsi]
	jmp	.label_1464
.label_1477:
	nop	
	cmp	ecx, 2
	lea	rsi, [rsi]
	jl	.label_1542
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], r15
	lea	rdi, [rsp + 0x20]
	nop	
	call	build_wcs_buffer
	jmp	.label_1483
.label_1593:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	cmp	rax, r14
	cmovg	rax, r14
	nop	
	mov	r14, rax
	mov	rbp, rbp
	xor	eax, eax
	test	r14, r14
	mov	rsp, rsp
	jle	.label_1453
	xor	eax, eax
	mov	ebp, 1
	mov	rbp, rbp
	jmp	.label_1556
	nop	word ptr cs:[rax + rax]
.label_1576:
	mov	r13, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x98]
	inc	rbp
.label_1556:
	mov	rsp, rsp
	add	r13, rax
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp + r13 - 1]
	mov	rsp, rsp
	movzx	ecx, al
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_1563
.label_1581:
	movzx	ebx, al
	mov	rbp, rbp
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	mov	rbp, rbp
	ja	.label_1570
	call	__ctype_toupper_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1570:
	mov	rax, qword ptr [rsp + 0x28]
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r14
	mov	rbp, rbp
	jl	.label_1576
	jmp	.label_1579
.label_1563:
	mov	al, byte ptr [rbx + rcx]
	jmp	.label_1581
.label_1542:
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_1582
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, r14
	cmovg	rcx, r14
	mov	rbp, rbp
	mov	rdi, rcx
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	
	test	rdi, rdi
	jle	.label_1584
	movzx	ecx, byte ptr [r13]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbx + rcx]
	nop	
	mov	byte ptr [rax], cl
	mov	ecx, 1
	lea	rsi, [rsi]
	cmp	rdi, 2
	jl	.label_1584
	nop	dword ptr [rax]
.label_1595:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x28]
	add	rax, qword ptr [rsp + 0x48]
	movzx	eax, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	al, byte ptr [rsi + rax]
	nop	
	mov	byte ptr [rdx + rcx], al
	lea	rsi, [rsi]
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rdi
	jl	.label_1595
	mov	rcx, rdi
.label_1584:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], r15
	mov	qword ptr [rsp + 0x50], rcx
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_1483
.label_1551:
	mov	esi, 0xe8
	mov	rdi, r12
	lea	rdi, [rdi]
	call	realloc
	mov	rbp, rbp
	mov	r12, rax
	mov	eax, 0xc
	test	r12, r12
	je	.label_1463
	mov	rsp, rsp
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_1610
.label_1579:
	mov	rbp, rbp
	mov	rax, r14
.label_1453:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], r15
	nop	
	jmp	.label_1613
.label_1582:
	mov	qword ptr [rsp + 0xd0], r15
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
.label_1613:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_1483:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], 0
	nop	
	mov	r15, qword ptr [rsp + 0xd0]
	nop	
	mov	qword ptr [r15 + 0x30], 0
	mov	rbp, rbp
	mov	rbx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rsp, rsp
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rsp, rsp
	mov	rdx, rbp
	or	rdx, 0x800000
	lea	r14, [rsp + 0xe0]
	lea	r13, [rsp + 0x20]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, r13
	call	peek_token
	cdqe	
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0x68], rax
	lea	r9, [rsp + 0x14]
	lea	rdi, [rdi]
	xor	r8d, r8d
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsi, r15
	nop	
	mov	rdx, r14
	mov	rcx, rbp
	lea	rsi, [rsi]
	call	parse_reg_exp
	lea	rsi, [rsi]
	mov	r14, rax
	test	r14, r14
	jne	.label_1468
	mov	eax, dword ptr [rsp + 0x14]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1469
.label_1468:
	mov	rsp, rsp
	mov	ebp, dword ptr [rbx + 0x80]
	nop	
	cmp	ebp, 0xf
	je	.label_1476
	mov	rax, qword ptr [rbx + 0x70]
.label_1466:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	mov	rbp, rbp
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	nop	
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 2
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1461:
	lea	rsi, [rsi]
	test	r14, r14
	lea	rsi, [rsi]
	mov	rcx, rbp
	lea	rdi, [rdi]
	je	.label_1493
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbx + 0x80]
	lea	rsi, [rsi]
	cmp	ecx, 0xf
	je	.label_1497
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x70]
.label_1498:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbx + 0x80], edx
	movsxd	rdx, ecx
	mov	rbp, rbp
	shl	rdx, 6
	lea	rcx, [rax + rdx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + rdx + 8], 0
	mov	rsp, rsp
	mov	qword ptr [rax + rdx + 0x10], r14
	lea	rsi, [rsi]
	mov	qword ptr [rax + rdx + 0x18], rbp
	mov	dword ptr [rax + rdx + 0x38], 0x10
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rdx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rdx + 0x40], -1
	mov	qword ptr [r14], rcx
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_1496
	mov	qword ptr [rbp], rcx
.label_1493:
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_1496
	nop	
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_1496
	mov	qword ptr [r12 + 0x68], rcx
	mov	rsp, rsp
	mov	r15, qword ptr [r15]
	mov	rdi, qword ptr [r15 + 8]
	nop	
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + 0x18], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 8]
	nop	
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x28], rax
	mov	rax, qword ptr [r15 + 8]
	nop	
	shl	rax, 3
	lea	rdi, [rdi]
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [r15 + 0x30], rax
	nop	
	cmp	qword ptr [r15 + 0x18], 0
	lea	rsi, [rsi]
	je	.label_1544
	nop	
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_1547
	mov	rbp, rbp
	test	rax, rax
	je	.label_1495
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	test	rax, rax
	je	.label_1553
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rax + 0x30]
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [r15 + 0xe0], rax
	test	rax, rax
	je	.label_1560
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_1514
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xd0]
	mov	rcx, qword ptr [rcx + 0x30]
	nop	
	cmp	rcx, 1
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rsi, [rsi]
	cmova	rdx, rcx
	mov	rsp, rsp
	xor	edi, edi
	cmp	rdx, 4
	lea	rsi, [rsi]
	jb	.label_1562
	xor	edi, edi
	mov	rsi, rdx
	lea	rsi, [rsi]
	and	rsi, 0xfffffffffffffffc
	je	.label_1562
	lea	rsi, [rsi]
	cmp	rcx, 1
	mov	ebp, 1
	nop	
	cmova	rbp, rcx
	mov	rbp, rbp
	add	rbp, -4
	mov	rbx, rbp
	nop	
	shr	rbx, 2
	lea	rsi, [rsi]
	xor	edi, edi
	bt	rbp, 2
	jb	.label_1577
	mov	rsp, rsp
	mov	edi, 1
	mov	rbp, rbp
	movq	xmm0, rdi
	nop	
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_1586]]
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + 0x10], xmm0
	mov	rsp, rsp
	mov	edi, 4
.label_1577:
	test	rbx, rbx
	je	.label_1594
	lea	rsi, [rsi]
	mov	ebp, 1
	movq	xmm0, rbp
	pslldq	xmm0, 8
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_1586]]
.label_1585:
	movq	xmm2, rdi
	mov	rsp, rsp
	pshufd	xmm2, xmm2, 0x44
	lea	rdi, [rdi]
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	lea	rdi, [rdi]
	paddq	xmm2, xmm1
	nop	
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	nop	
	lea	rbp, [rdi + 4]
	movq	xmm2, rbp
	mov	rbp, rbp
	pshufd	xmm2, xmm2, 0x44
	lea	rdi, [rdi]
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdi*8 + 0x20], xmm3
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rdi*8 + 0x30], xmm2
	mov	rbp, rbp
	add	rdi, 8
	cmp	rdi, rsi
	mov	rsp, rsp
	jne	.label_1585
.label_1594:
	cmp	rdx, rsi
	mov	rdi, rsi
	je	.label_1514
	nop	word ptr cs:[rax + rax]
.label_1562:
	mov	qword ptr [rax + rdi*8], rdi
	inc	rdi
	mov	rsp, rsp
	cmp	rdi, rcx
	nop	
	jb	.label_1562
.label_1514:
	mov	rdx, qword ptr [r15 + 0x68]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rdx + 0x30]
	nop	
	cmp	ecx, 0x11
	lea	rdi, [rdi]
	je	.label_1618
	cmp	ecx, 4
	jne	.label_1475
	movsxd	rcx, dword ptr [rdx + 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rdx + 0x28], rcx
	mov	esi, 1
	lea	rdi, [rdi]
	shl	esi, cl
	movsxd	rcx, esi
	or	qword ptr [r15 + 0xa0], rcx
	jmp	.label_1475
.label_1544:
	mov	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_1464
.label_1547:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_1464
.label_1560:
	mov	rsp, rsp
	lea	r14, [r15 + 0x68]
	jmp	.label_1485
.label_1476:
	mov	edi, 0x3c8
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rbp
	xor	ebp, ebp
	test	rax, rax
	je	.label_1461
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1466
.label_1618:
	mov	rsp, rsp
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_1475
	movzx	esi, byte ptr [rcx + 0x30]
	cmp	esi, 0x11
	jne	.label_1475
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rdx + 8], rsi
	test	rsi, rsi
	je	.label_1481
	lea	rsi, [rsi]
	mov	qword ptr [rsi], rdx
.label_1481:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + 0x28]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rsi*8]
	nop	
	mov	qword ptr [rax + rcx*8], rsi
	cmp	rcx, 0x3f
	jg	.label_1475
	mov	rbp, rbp
	mov	rsi, -2
	lea	rsi, [rsi]
	rol	rsi, cl
	and	qword ptr [r15 + 0xa0], rsi
.label_1475:
	lea	r14, [r15 + 0x68]
	mov	rbp, rbp
	jmp	.label_1492
.label_1497:
	mov	edi, 0x3c8
	nop	
	call	malloc
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1496
	mov	rcx, qword ptr [rbx + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	jmp	.label_1498
.label_1496:
	mov	dword ptr [rsp + 0x14], 0xc
.label_1469:
	mov	qword ptr [r12 + 0x68], 0
	lea	rsi, [rsi]
	jmp	.label_1506
.label_1495:
	mov	rsp, rsp
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_1464
.label_1553:
	lea	rdi, [rdi]
	mov	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], eax
	lea	rdi, [rdi]
	jmp	.label_1464
.label_1590:
	mov	rsi, -2
	mov	rsp, rsp
	rol	rsi, cl
	and	qword ptr [r15 + 0xa0], rsi
.label_1492:
	mov	rsi, rax
.label_1541:
	test	rsi, rsi
	nop	
	jne	.label_1518
.label_1537:
	mov	rsi, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	nop	
	mov	ecx, 0
	jne	.label_1520
	nop	
.label_1531:
	nop	
	mov	rdi, rcx
	nop	
	mov	rcx, rsi
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	cmp	rdx, rdi
	mov	rsp, rsp
	je	.label_1523
	test	rdx, rdx
	jne	.label_1520
.label_1523:
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	mov	rsp, rsp
	jne	.label_1531
	lea	rsi, [rsi]
	jmp	.label_1532
.label_1520:
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rdx + 0x30]
	cmp	ecx, 0x11
	nop	
	je	.label_1534
	lea	rdi, [rdi]
	cmp	ecx, 4
	lea	rsi, [rsi]
	mov	esi, 0
	mov	rsp, rsp
	jne	.label_1537
	mov	rbp, rbp
	jmp	.label_1541
.label_1534:
	nop	
	mov	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	test	rcx, rcx
	je	.label_1537
	movzx	esi, byte ptr [rcx + 0x30]
	cmp	esi, 0x11
	lea	rdi, [rdi]
	jne	.label_1537
	lea	rsi, [rdx + 8]
	lea	rdi, [rdx + 0x28]
	jmp	.label_1548
.label_1573:
	nop	
	movsxd	rcx, dword ptr [rdi]
	nop	
	mov	rcx, qword ptr [rsi + rcx*8]
	mov	rbp, rbp
	mov	qword ptr [rdi], rcx
	mov	edi, 1
	shl	edi, cl
	lea	rdi, [rdi]
	movsxd	rcx, edi
	or	qword ptr [r15 + 0xa0], rcx
.label_1518:
	mov	rdi, rdx
	mov	rdx, qword ptr [rdi + 8]
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	ecx, 0
	jne	.label_1557
	nop	dword ptr [rax]
.label_1565:
	lea	rsi, [rsi]
	mov	rbp, rcx
	nop	
	mov	rcx, rdi
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	cmp	rdx, rbp
	lea	rdi, [rdi]
	je	.label_1583
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_1557
.label_1583:
	mov	rdi, qword ptr [rcx]
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	rsp, rsp
	jne	.label_1565
	nop	
	jmp	.label_1532
.label_1557:
	lea	rdi, [rdx + 0x28]
	movzx	ecx, byte ptr [rdx + 0x30]
	cmp	ecx, 0x11
	je	.label_1569
	cmp	ecx, 4
	jne	.label_1518
	jmp	.label_1573
.label_1569:
	mov	rsp, rsp
	mov	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	test	rcx, rcx
	je	.label_1518
	mov	rsp, rsp
	movzx	ebp, byte ptr [rcx + 0x30]
	cmp	ebp, 0x11
	jne	.label_1518
	lea	rdi, [rdi]
	lea	rsi, [rdx + 8]
.label_1548:
	mov	rbp, rbp
	mov	rbp, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rsi], rbp
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_1580
	mov	rbp, rbp
	mov	qword ptr [rbp], rdx
.label_1580:
	mov	rsi, qword ptr [rdi]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rsi*8]
	mov	rsp, rsp
	mov	qword ptr [rax + rcx*8], rsi
	cmp	rcx, 0x3f
	mov	rsi, rax
	jg	.label_1541
	jmp	.label_1590
.label_1532:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xd0]
	nop	
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	xor	edx, edx
	lea	rdi, [rdi]
	test	rcx, rcx
	je	.label_1591
	mov	rax, qword ptr [r15 + 0xe0]
	mov	rbp, rbp
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1599:
	cmp	rdx, qword ptr [rax + rdx*8]
	lea	rsi, [rsi]
	jne	.label_1591
	lea	rdi, [rdi]
	inc	rdx
	mov	rsp, rsp
	cmp	rdx, rcx
	nop	
	jb	.label_1599
.label_1591:
	mov	rbp, rbp
	cmp	rdx, rcx
	nop	
	jne	.label_1485
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	qword ptr [r15 + 0xe0], 0
.label_1485:
	mov	rax, qword ptr [r14]
	lea	rbx, [rsp + 0xe0]
	nop	word ptr cs:[rax + rax]
.label_1479:
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	nop	
	jne	.label_1479
	mov	rax, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, 0
	jne	.label_1479
	jmp	.label_1614
.label_1474:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	rbp, rdx
.label_1614:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xe0], 0
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_1616
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rcx + 0x30]
	nop	
	cmp	eax, 0x11
	jne	.label_1616
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	mov	edx, dword ptr [rax + 0x38]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	lower_subexp
	mov	qword ptr [rbp + 8], rax
	test	rax, rax
	je	.label_1616
	mov	qword ptr [rax], rbp
	nop	dword ptr [rax + rax]
.label_1616:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_1501
	movzx	eax, byte ptr [rcx + 0x30]
	cmp	eax, 0x11
	jne	.label_1501
	nop	
	mov	rax, qword ptr [rsp + 0xd0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	edx, dword ptr [rax + 0x38]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	lower_subexp
	mov	qword ptr [rbp + 0x10], rax
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_1501
	mov	rbp, rbp
	mov	qword ptr [rax], rbp
	nop	dword ptr [rax]
.label_1501:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0xe0]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1467
	mov	rdx, qword ptr [rbp]
	test	rdx, rdx
	je	.label_1470
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbp
	je	.label_1474
	test	rax, rax
	je	.label_1474
	jmp	.label_1479
.label_1470:
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	mov	ebx, 0xfffc00ff
.label_1482:
	mov	rbp, rbp
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_1482
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_1482
	nop	dword ptr [rax + rax]
.label_1515:
	movzx	eax, byte ptr [rbp + 0x30]
	lea	rsi, [rsi]
	cmp	eax, 0x10
	lea	rsi, [rsi]
	jne	.label_1459
	mov	rax, qword ptr [rbp + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbp + 0x18], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp + 0x38], rax
	jmp	.label_1491
.label_1459:
	mov	qword ptr [rbp + 0x18], rbp
	mov	rsi, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp + 0x30]
	mov	rdi, r15
	lea	rsi, [rsi]
	call	re_dfa_add_node
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x38], rax
	mov	rsp, rsp
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_1504
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp + 0x30]
	cmp	ecx, 0xc
	jne	.label_1491
	mov	ecx, dword ptr [rbp + 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15]
	nop	
	shl	rax, 4
	mov	rsp, rsp
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	nop	
	and	esi, ebx
	nop	
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_1491:
	mov	rcx, qword ptr [rbp]
	lea	rdi, [rdi]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_1512
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	lea	rsi, [rsi]
	mov	rbp, rcx
	je	.label_1515
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	mov	rbp, rcx
	mov	rbp, rbp
	je	.label_1515
	mov	rbp, rbp
	jmp	.label_1482
.label_1512:
	nop	
	mov	rbx, qword ptr [r14]
	movzx	eax, byte ptr [rbx + 0x30]
	cmp	eax, 0x10
	mov	rsp, rsp
	je	.label_1525
	mov	rbp, rbp
	cmp	eax, 0xb
	jne	.label_1528
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rax + 0x20], rbx
	mov	rsp, rsp
	jmp	.label_1533
.label_1504:
	lea	rdi, [rdi]
	mov	eax, 0xc
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_1464
.label_1525:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x20], rdx
	jmp	.label_1538
.label_1528:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	test	rax, rax
	je	.label_1543
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1543:
	mov	rcx, qword ptr [rbx + 0x10]
	test	rcx, rcx
	nop	
	je	.label_1533
.label_1538:
	nop	
	mov	rdx, qword ptr [rbx + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_1533:
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	jmp	.label_1472
.label_1567:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rdx + 0x18]
	nop	
	mov	qword ptr [rax + 0x20], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	nop	
	mov	rdx, rcx
.label_1472:
	mov	rsp, rsp
	xor	esi, esi
	mov	rsp, rsp
	test	rax, rax
	mov	rcx, rax
	nop	
	jne	.label_1550
.label_1564:
	mov	rax, rsi
	lea	rsi, [rsi]
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	rcx, rax
	je	.label_1524
	mov	rbp, rbp
	test	rcx, rcx
	nop	
	jne	.label_1550
.label_1524:
	mov	rdx, qword ptr [rsi]
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_1564
	nop	
	jmp	.label_1566
.label_1550:
	movzx	eax, byte ptr [rcx + 0x30]
	cmp	eax, 0x10
	lea	rdi, [rdi]
	je	.label_1567
	lea	rsi, [rsi]
	cmp	eax, 0xb
	jne	.label_1571
	mov	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x20], rcx
	lea	rsi, [rsi]
	mov	rdx, rcx
	jmp	.label_1472
.label_1571:
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	je	.label_1575
	mov	rdx, qword ptr [rcx + 0x20]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x20], rdx
.label_1575:
	mov	rsi, qword ptr [rcx + 0x10]
	nop	
	test	rsi, rsi
	mov	rdx, rcx
	nop	
	je	.label_1472
	mov	rdx, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, rcx
	jmp	.label_1472
.label_1566:
	mov	rdi, r15
	nop	
	mov	rsi, rbx
	nop	
	call	link_nfa_nodes
	test	eax, eax
	jne	.label_1467
.label_1602:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	mov	eax, 0
	lea	rsi, [rsi]
	jne	.label_1588
	nop	word ptr cs:[rax + rax]
.label_1596:
	mov	rsp, rsp
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	lea	rdi, [rdi]
	je	.label_1552
	test	rbp, rbp
	mov	rbp, rbp
	jne	.label_1588
.label_1552:
	mov	rbx, qword ptr [rax]
	test	rbx, rbx
	jne	.label_1596
	jmp	.label_1598
.label_1588:
	mov	rdi, r15
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	link_nfa_nodes
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	mov	rbx, rbp
	lea	rdi, [rdi]
	je	.label_1602
	mov	rsp, rsp
	jmp	.label_1467
.label_1598:
	xor	eax, eax
	lea	r14, [rsp + 0xe0]
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_1603
	nop	
.label_1615:
	inc	rbp
	nop	
	mov	rax, rbp
.label_1603:
	nop	
	cmp	rax, qword ptr [r15 + 0x10]
	jne	.label_1607
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	r13b, 1
	mov	rsp, rsp
	mov	r13d, 0
	mov	rbp, rbp
	jne	.label_1609
	nop	
	jmp	.label_1612
.label_1607:
	lea	rdi, [rdi]
	mov	rbp, rax
.label_1609:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x30]
	mov	rbp, rbp
	lea	rbx, [rbp + rbp*2]
	mov	rsp, rsp
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_1615
	mov	ecx, 1
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, rbp
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_1467
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x30]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	mov	rsp, rsp
	jne	.label_1615
	mov	rdi, qword ptr [rsp + 0xf0]
	call	free
	mov	r13b, 1
	jmp	.label_1615
.label_1467:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], eax
.label_1464:
	mov	r15, qword ptr [rsp + 0xd0]
.label_1506:
	mov	rbx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_1624
	nop	dword ptr [rax]
.label_1458:
	mov	rbp, qword ptr [rdi]
	call	free
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	mov	rdi, rbp
	nop	
	jne	.label_1458
.label_1624:
	nop	
	mov	qword ptr [rbx + 0x70], 0
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x20], 0
	nop	
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	call	free
	cmp	byte ptr [rsp + 0xab], 0
	je	.label_1478
	mov	rdi, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	call	free
.label_1478:
	mov	rdi, r12
	call	free_dfa_content
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
.label_1529:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x14]
.label_1463:
	mov	rbp, rbp
	add	rsp, 0xf8
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_1612:
	mov	rcx, qword ptr [rsp + 0xd0]
	mov	rbp, rbp
	test	byte ptr [rcx + 0x38], 0x10
	jne	.label_1490
	mov	rcx, qword ptr [rsp + 0xd0]
	cmp	qword ptr [rcx + 0x30], 0
	je	.label_1490
	mov	rbp, rbp
	test	byte ptr [r15 + 0xb0], 1
	jne	.label_1499
.label_1490:
	cmp	qword ptr [r15 + 0x98], 0
	je	.label_1503
.label_1499:
	mov	rsp, rsp
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x38], rax
	test	rax, rax
	je	.label_1507
	cmp	qword ptr [r15 + 0x10], 0
	nop	
	je	.label_1503
	mov	rsp, rsp
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [r15 + 0x10]
	mov	ecx, 1
	mov	rbp, rbp
	mov	edx, 0x18
	cmp	rax, 1
	jbe	.label_1510
.label_1517:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x38]
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	add	rdx, 0x18
	cmp	rcx, rax
	lea	rsi, [rsi]
	jb	.label_1517
.label_1510:
	mov	rbp, rbp
	test	rax, rax
	je	.label_1503
	mov	r8, qword ptr [r15 + 0x30]
	xor	r10d, r10d
.label_1608:
	mov	qword ptr [rsp + 0xc8], r10
	lea	r9, [r10 + r10*2]
	mov	qword ptr [rsp + 0x18], r9
	mov	rsp, rsp
	cmp	qword ptr [r8 + r9*8 + 8], 0
	jle	.label_1530
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rdi
	xor	ebx, ebx
.label_1568:
	mov	rbp, rbp
	mov	r13, qword ptr [r15 + 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + rbx*8]
	lea	rbp, [rax + rax*2]
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + rbp*8]
	nop	
	lea	r14, [r13 + rbp*8 + 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [r13 + rbp*8 + 8]
	nop	
	cmp	rax, rdx
	jne	.label_1540
	lea	rcx, [r13 + rbp*8]
	lea	rsi, [rsi]
	lea	rdx, [rax + rax + 2]
	mov	rbp, rbp
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rsp, rsp
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1558
	nop	
	lea	rcx, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r14]
	nop	
	mov	r8, qword ptr [r15 + 0x30]
	mov	r10, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jmp	.label_1559
.label_1540:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_1559:
	lea	rdi, [rdi]
	lea	rsi, [rdx + 1]
	mov	qword ptr [r14], rsi
	mov	qword ptr [rax + rdx*8], r10
	inc	rbx
	nop	
	cmp	rbx, qword ptr [r8 + r9*8 + 8]
	jl	.label_1568
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x10]
.label_1530:
	inc	r10
	lea	rsi, [rsi]
	cmp	r10, rax
	jb	.label_1608
.label_1503:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], 0
	cmp	qword ptr [rsp + 0xc0], 0
	jne	.label_1578
	mov	al, byte ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 4
	nop	
	je	.label_1578
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xd0]
	cmp	qword ptr [rcx + 0x28], 0
	mov	rbp, rbp
	jne	.label_1578
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r12 + 0x10]
	test	rdx, rdx
	je	.label_1589
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12]
	xor	r9d, r9d
	mov	rbp, rbp
	movabs	r8, 0x1000000010001
	mov	rbp, rbp
	mov	rcx, rbx
	lea	rsi, [rsi]
	xor	r10d, r10d
	lea	rsi, [rsi]
	xor	ebp, ebp
.label_1617:
	movzx	esi, byte ptr [rcx + 8]
	dec	esi
	mov	rsp, rsp
	cmp	esi, 0xb
	lea	rsi, [rsi]
	ja	.label_1597
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_1622]]
.label_3701:
	lea	rsi, [rsi]
	mov	sil, 1
	cmp	byte ptr [rcx], 0
	lea	rdi, [rdi]
	js	.label_1601
	lea	rdi, [rdi]
	mov	sil, r10b
.label_1601:
	lea	rsi, [rsi]
	mov	r10b, sil
	jmp	.label_1605
.label_3702:
	mov	rsi, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_1578
	nop	
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_1605
	jmp	.label_1578
.label_3703:
	mov	rsp, rsp
	mov	r9b, 1
	mov	rsp, rsp
	jmp	.label_1605
.label_3704:
	mov	esi, dword ptr [rcx]
	mov	rsp, rsp
	lea	edi, [rsi - 0x10]
	cmp	edi, 0x30
	lea	rsi, [rsi]
	ja	.label_1611
	lea	rsi, [rsi]
	bt	r8, rdi
	mov	rsp, rsp
	jb	.label_1605
.label_1611:
	cmp	esi, 0x80
	lea	rdi, [rdi]
	jne	.label_1578
.label_1605:
	inc	rbp
	nop	
	add	rcx, 0x10
	cmp	rbp, rdx
	mov	rsp, rsp
	jb	.label_1617
	lea	rdi, [rdi]
	mov	cl, r9b
	lea	rdi, [rdi]
	and	cl, 1
	mov	rbp, rbp
	or	r10b, r9b
	lea	rsi, [rsi]
	xor	edx, edx
	mov	esi, 8
	lea	rdi, [rdi]
	test	r10b, 1
	je	.label_1462
	jmp	.label_1606
.label_1600:
	mov	rbp, rbp
	add	rsi, 0x10
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12]
.label_1606:
	nop	
	mov	eax, dword ptr [rbx + rsi]
	movzx	edi, al
	cmp	edi, 5
	je	.label_1621
	cmp	edi, 1
	lea	rdi, [rdi]
	jne	.label_1454
	nop	
	cmp	byte ptr [rbx + rsi - 8], 0
	jns	.label_1454
	nop	
	and	eax, 0xffdfffff
	lea	rdi, [rdi]
	jmp	.label_1456
.label_1621:
	and	eax, 0xffffff00
	mov	rsp, rsp
	or	eax, 7
.label_1456:
	mov	dword ptr [rbx + rsi], eax
.label_1454:
	inc	rdx
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [r12 + 0x10]
	jb	.label_1600
	mov	rbp, rbp
	mov	al, byte ptr [r12 + 0xb0]
	lea	rsi, [rsi]
	jmp	.label_1462
.label_1558:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	lea	rdi, [rdi]
	jmp	.label_1464
.label_1589:
	xor	ecx, ecx
.label_1462:
	mov	dword ptr [r12 + 0xb4], 1
	cmp	qword ptr [r12 + 0x98], 0
	setg	dl
	or	dl, cl
	add	dl, dl
	mov	rsp, rsp
	and	al, 0xf9
	or	al, dl
	mov	rbp, rbp
	mov	byte ptr [r12 + 0xb0], al
.label_1578:
	nop	
	mov	rax, qword ptr [r12 + 0x68]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x90], rax
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12 + 0x30]
	lea	r13, [rax + rax*2]
	mov	r15, qword ptr [rbx + r13*8 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xe8], r15
	mov	rsp, rsp
	mov	r14, qword ptr [rbx + r13*8 + 8]
	test	r14, r14
	jle	.label_1484
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe0], r15
	mov	rsp, rsp
	lea	rdi, [r15*8]
	call	malloc
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	qword ptr [rsp + 0xf0], rbp
	nop	
	test	rbp, rbp
	je	.label_1500
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + r13*8 + 0x10]
	lea	rsi, [rsi]
	shl	r14, 3
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0xdc], 0
	test	r15, r15
	lea	rsi, [rsi]
	jle	.label_1508
	mov	rax, qword ptr [r12 + 0x98]
	lea	rdi, [rdi]
	test	rax, rax
	jle	.label_1508
	lea	rsi, [rsi]
	xor	eax, eax
	lea	r14, [rsp + 0xe0]
	jmp	.label_1513
.label_1572:
	mov	rbp, qword ptr [rsp + 0xf0]
.label_1513:
	mov	r8, qword ptr [rbp + rax*8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r12]
	mov	rsp, rsp
	mov	rsi, r8
	shl	rsi, 4
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rdx + rsi + 8]
	cmp	ecx, 4
	mov	rbp, rbp
	jne	.label_1519
	test	r15, r15
	nop	
	mov	edi, 0
	nop	
	jle	.label_1526
	add	rsi, rdx
	xor	edi, edi
.label_1539:
	mov	rcx, qword ptr [rbp + rdi*8]
	shl	rcx, 4
	mov	rsp, rsp
	movzx	ebx, byte ptr [rdx + rcx + 8]
	cmp	ebx, 9
	mov	rbp, rbp
	jne	.label_1535
	mov	rsp, rsp
	mov	rcx, qword ptr [rdx + rcx]
	nop	
	cmp	rcx, qword ptr [rsi]
	mov	rbp, rbp
	je	.label_1526
.label_1535:
	inc	rdi
	mov	rsp, rsp
	cmp	rdi, r15
	jl	.label_1539
.label_1526:
	cmp	rdi, r15
	nop	
	je	.label_1519
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	test	r15, r15
	jle	.label_1545
	mov	rsp, rsp
	mov	rsi, r15
	dec	rsi
	mov	edx, 0
	nop	
	je	.label_1549
.label_1554:
	lea	rdi, [rdx + rsi]
	mov	rbp, rbp
	shr	rdi, 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + rdi*8], rcx
	lea	rbx, [rdi + 1]
	mov	rbp, rbp
	cmovl	rdx, rbx
	lea	rsi, [rsi]
	cmovge	rsi, rdi
	cmp	rdx, rsi
	jb	.label_1554
.label_1549:
	cmp	rdx, -1
	mov	rbp, rbp
	je	.label_1545
	lea	rsi, [rsi]
	cmp	qword ptr [rbp + rdx*8], rcx
	nop	
	je	.label_1519
.label_1545:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rsi]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	lea	rsi, [rsi]
	call	re_node_set_merge
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1488
	nop	
	mov	r15, qword ptr [rsp + 0xe8]
	xor	eax, eax
.label_1519:
	inc	rax
	cmp	rax, r15
	jl	.label_1572
	mov	rsp, rsp
	jmp	.label_1508
.label_1484:
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqa	xmmword ptr [rsp + 0xe0], xmm0
	mov	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xdc], 0
.label_1508:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0xdc]
	lea	rdx, [rsp + 0xe0]
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rsi, r12
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x48], rax
	nop	
	test	rax, rax
	je	.label_1587
	cmp	byte ptr [rax + 0x68], 0
	lea	rsi, [rsi]
	js	.label_1521
	nop	
	mov	qword ptr [r12 + 0x60], rax
	nop	
	mov	qword ptr [r12 + 0x58], rax
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1592
.label_1521:
	lea	rbx, [rsp + 0xdc]
	lea	rbp, [rsp + 0xe0]
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x50], rax
	mov	ecx, 2
	nop	
	mov	rdi, rbx
	mov	rsi, r12
	nop	
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	re_acquire_state_context
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x58], rax
	mov	rsp, rsp
	mov	ecx, 6
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbp
	nop	
	call	re_acquire_state_context
	nop	
	mov	qword ptr [r12 + 0x60], rax
	cmp	qword ptr [r12 + 0x50], 0
	lea	rdi, [rdi]
	je	.label_1516
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1516
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	mov	rsp, rsp
	je	.label_1516
.label_1592:
	mov	rdi, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
.label_1488:
	mov	dword ptr [rsp + 0x14], eax
	mov	r14, qword ptr [rsp + 0xd0]
	mov	rbx, qword ptr [r14]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_1620
.label_1623:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	mov	rsp, rsp
	jne	.label_1623
.label_1620:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	nop	
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x20], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x30]
	nop	
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xab], 0
	lea	rdi, [rdi]
	je	.label_1465
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	call	free
.label_1465:
	mov	rbp, rbp
	xor	eax, eax
	cmp	dword ptr [rsp + 0x14], 0
	nop	
	je	.label_1463
	mov	rdi, r12
	lea	rdi, [rdi]
	call	free_dfa_content
	nop	
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	lea	rdi, [rdi]
	jmp	.label_1529
.label_1516:
	mov	eax, dword ptr [rsp + 0xdc]
	jmp	.label_1488
.label_1507:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_1464
.label_1587:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0xdc]
	mov	rbp, rbp
	jmp	.label_1488
.label_1500:
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xe0], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xdc], 0xc
	mov	eax, 0xc
	jmp	.label_1488
.label_1597:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4174f0
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
	#Procedure 0x417510
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
	je	.label_1625
	nop	
	mov	rdi, r14
	mov	rdx, rbx
	nop	
	call	re_compile_fastmap_iter
	nop	
	mov	rax, qword ptr [r15 + 0x48]
.label_1625:
	nop	
	mov	rsi, qword ptr [r15 + 0x58]
	nop	
	cmp	rax, rsi
	mov	rbp, rbp
	je	.label_1626
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	nop	
	mov	rax, qword ptr [r15 + 0x48]
.label_1626:
	nop	
	mov	rsi, qword ptr [r15 + 0x60]
	lea	rdi, [rdi]
	cmp	rax, rsi
	lea	rsi, [rsi]
	je	.label_1627
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rbp, rbp
	call	re_compile_fastmap_iter
.label_1627:
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
	#Procedure 0x417620

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
	sub	rsp, 0x138
	lea	rdi, [rdi]
	mov	r15, rdx
	nop	
	mov	qword ptr [rsp + 0x20], rsi
	mov	r13, rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r13
	mov	rax, qword ptr [r13]
	cmp	dword ptr [rax + 0xb4], 1
	nop	
	jne	.label_1670
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	al, byte ptr [r13 + 0x1a]
	lea	rdi, [rdi]
	and	al, 0x40
	lea	rsi, [rsi]
	shr	al, 6
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x130], eax
	nop	
	jmp	.label_1654
.label_1670:
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0x130], 0
.label_1654:
	mov	rsp, rsp
	cmp	qword ptr [rsi + 0x10], 0
	nop	
	jle	.label_1665
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rsp, rsp
	lea	r14, [rsp + 0x30]
	nop	word ptr cs:[rax + rax]
.label_1673:
	mov	rax, qword ptr [rsi + 0x18]
	nop	
	mov	rbp, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	r12, rbp
	shl	r12, 4
	mov	rsp, rsp
	lea	rcx, [rax + r12]
	movzx	ebx, byte ptr [rax + r12 + 8]
	cmp	ebx, 1
	lea	rdi, [rdi]
	je	.label_1660
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rdx
	mov	rsp, rsp
	cmp	ebx, 6
	mov	rbp, rbp
	je	.label_1674
	mov	rsp, rsp
	cmp	ebx, 3
	mov	rsp, rsp
	jne	.label_1632
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax]
	mov	eax, dword ptr [rsp + 0x130]
	lea	rdi, [rdi]
	test	al, al
	mov	ebx, 0
	mov	eax, 0
	mov	rbp, rbp
	je	.label_1634
	nop	word ptr cs:[rax + rax]
.label_1662:
	bt	rbp, rbx
	jae	.label_1647
	mov	byte ptr [r15 + rbx], 1
	lea	eax, [rbx + 0x80]
	lea	rsi, [rsi]
	cmp	eax, 0x180
	mov	rbp, rbp
	jae	.label_1650
	nop	
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax + rbx*4]
	jmp	.label_1659
	nop	
.label_1650:
	mov	eax, ebx
.label_1659:
	mov	rbp, rbp
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1647:
	inc	rbx
	cmp	rbx, 0x40
	lea	rdi, [rdi]
	jne	.label_1662
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + r12]
	mov	rbx, qword ptr [rax + 8]
	xor	ebp, ebp
.label_1628:
	bt	rbx, rbp
	nop	
	jae	.label_1669
	mov	byte ptr [r15 + rbp + 0x40], 1
	mov	rbp, rbp
	lea	eax, [rbp + 0xc0]
	cmp	eax, 0x180
	jae	.label_1671
	mov	rbp, rbp
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax + rbp*4 + 0x100]
	jmp	.label_1677
	nop	word ptr cs:[rax + rax]
.label_1671:
	lea	rax, [rbp + 0x40]
.label_1677:
	lea	rdi, [rdi]
	cdqe	
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rax], 1
.label_1669:
	lea	rsi, [rsi]
	inc	rbp
	cmp	rbp, 0x40
	nop	
	jne	.label_1628
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbx, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1661:
	lea	rdi, [rdi]
	bt	rbx, rbp
	lea	rdi, [rdi]
	jae	.label_1656
	mov	rsp, rsp
	mov	byte ptr [r15 + rbp + 0x80], 1
	lea	eax, [rbp + 0x100]
	mov	rsp, rsp
	cmp	eax, 0x180
	jae	.label_1643
	lea	rsi, [rsi]
	call	__ctype_tolower_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x200]
	jmp	.label_1653
	nop	dword ptr [rax]
.label_1643:
	lea	rax, [rbp + 0x80]
.label_1653:
	mov	rbp, rbp
	cdqe	
	mov	rsp, rsp
	mov	byte ptr [r15 + rax], 1
.label_1656:
	nop	
	inc	rbp
	cmp	rbp, 0x40
	nop	
	jne	.label_1661
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbx, qword ptr [rax + 0x18]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1629:
	mov	rbp, rbp
	bt	rbx, rbp
	jae	.label_1657
	mov	rsp, rsp
	mov	byte ptr [r15 + rbp + 0xc0], 1
	lea	rdi, [rdi]
	lea	eax, [rbp + 0x140]
	cmp	eax, 0x180
	lea	rdi, [rdi]
	jae	.label_1651
	call	__ctype_tolower_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x300]
	jmp	.label_1640
	nop	word ptr [rax + rax]
.label_1651:
	lea	rsi, [rsi]
	lea	rax, [rbp + 0xc0]
.label_1640:
	lea	rdi, [rdi]
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1657:
	lea	rdi, [rdi]
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, 0x40
	mov	rsp, rsp
	jne	.label_1629
	jmp	.label_1633
	nop	dword ptr [rax + rax]
.label_1634:
	bt	rbp, rax
	jae	.label_1636
	mov	byte ptr [r15 + rax], 1
.label_1636:
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	bt	rbp, rcx
	lea	rsi, [rsi]
	jae	.label_1639
	mov	rbp, rbp
	mov	byte ptr [r15 + rax + 1], 1
.label_1639:
	mov	rbp, rbp
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, 0x40
	nop	
	mov	rax, rcx
	jne	.label_1634
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	nop	
	mov	rax, qword ptr [rax + 8]
	xor	ecx, ecx
	nop	
.label_1664:
	nop	
	bt	rax, rcx
	jae	.label_1668
	mov	rsp, rsp
	mov	byte ptr [r15 + rcx + 0x40], 1
.label_1668:
	lea	edx, [rcx + 1]
	bt	rax, rdx
	mov	rsp, rsp
	jae	.label_1676
	mov	rsp, rsp
	mov	byte ptr [r15 + rcx + 0x41], 1
.label_1676:
	mov	rbp, rbp
	add	rcx, 2
	cmp	rcx, 0x40
	mov	rsp, rsp
	jne	.label_1664
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1652:
	bt	rax, rcx
	lea	rsi, [rsi]
	jae	.label_1663
	mov	byte ptr [r15 + rcx + 0x80], 1
.label_1663:
	nop	
	lea	edx, [rcx + 1]
	bt	rax, rdx
	jae	.label_1678
	mov	byte ptr [r15 + rcx + 0x81], 1
.label_1678:
	add	rcx, 2
	cmp	rcx, 0x40
	mov	rsp, rsp
	jne	.label_1652
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + r12]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1646:
	bt	rax, rcx
	mov	rbp, rbp
	jae	.label_1666
	mov	rbp, rbp
	mov	byte ptr [r15 + rcx + 0xc0], 1
.label_1666:
	lea	rdi, [rdi]
	lea	edx, [rcx + 1]
	bt	rax, rdx
	mov	rsp, rsp
	jae	.label_1642
	mov	byte ptr [r15 + rcx + 0xc1], 1
.label_1642:
	lea	rsi, [rsi]
	add	rcx, 2
	lea	rdi, [rdi]
	cmp	rcx, 0x40
	lea	rdi, [rdi]
	jne	.label_1646
	lea	rdi, [rdi]
	jmp	.label_1633
	nop	dword ptr [rax + rax]
.label_1674:
	mov	r12, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	cmp	dword ptr [rax + 0xb4], 1
	lea	rsi, [rsi]
	jle	.label_1658
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_1644
	lea	rsi, [rsi]
	test	byte ptr [r12 + 0x20], 1
	nop	
	jne	.label_1644
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x40], 0
	nop	
	je	.label_1658
.label_1644:
	mov	rbp, rbp
	mov	byte ptr [rsp + 8], 0
	lea	rdi, [rdi]
	lea	rbp, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_1630:
	mov	qword ptr [rsp + 0x30], 0
	nop	
	xor	edi, edi
	mov	edx, 1
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rsp + 8]
	lea	rdi, [rdi]
	cmp	rax, -2
	jne	.label_1679
	mov	byte ptr [r15 + rcx], 1
.label_1679:
	mov	rbp, rbp
	inc	cl
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 8], cl
	mov	rsp, rsp
	jne	.label_1630
	mov	rbp, rbp
	jmp	.label_1633
	nop	word ptr cs:[rax + rax]
.label_1660:
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	nop	
	movzx	ebx, byte ptr [rcx]
	lea	rsi, [rsi]
	mov	byte ptr [r15 + rbx], 1
	mov	eax, dword ptr [rsp + 0x130]
	lea	rdi, [rdi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_1641
	mov	rsp, rsp
	lea	eax, [rbx + 0x80]
	nop	
	cmp	eax, 0x17f
	ja	.label_1649
	lea	rdi, [rdi]
	call	__ctype_tolower_loc
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1649:
	nop	
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_1641:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_1633
	mov	rax, qword ptr [rsp + 0x10]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_1633
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rcx]
	nop	
	mov	al, byte ptr [rax + r12]
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x30], al
	mov	rdx, rcx
	mov	rbp, rbp
	inc	rbp
	mov	rsp, rsp
	cmp	rbp, qword ptr [rdx + 0x10]
	lea	r13, [rsp + 0x31]
	mov	esi, 0x2000ff
	mov	rbp, rbp
	jae	.label_1667
	mov	rsp, rsp
	add	r12, 0x18
	lea	r13, [rsp + 0x31]
	nop	dword ptr [rax]
.label_1680:
	mov	rax, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + r12]
	mov	rbp, rbp
	and	ecx, esi
	cmp	ecx, 0x200001
	jne	.label_1667
	mov	rbp, rbp
	mov	al, byte ptr [rax + r12 - 8]
	lea	rdi, [rdi]
	mov	byte ptr [r13], al
	lea	rdi, [rdi]
	inc	r13
	nop	
	inc	rbp
	nop	
	add	r12, 0x10
	mov	rsp, rsp
	cmp	rbp, qword ptr [rdx + 0x10]
	jb	.label_1680
.label_1667:
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], 0
	mov	rsp, rsp
	sub	r13, r14
	lea	rdi, [rsp + 0x134]
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rdx, r13
	lea	rsi, [rsi]
	lea	rbx, [rsp + 8]
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_1648
	mov	edi, dword ptr [rsp + 0x134]
	call	towlower
	mov	rdi, r14
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	wcrtomb
	lea	rsi, [rsi]
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_1648
	nop	
	movzx	eax, byte ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	byte ptr [r15 + rax], 1
.label_1648:
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x28]
	nop	
	jmp	.label_1633
	nop	dword ptr [rax]
.label_1632:
	cmp	ebx, 2
	je	.label_1645
	mov	eax, ebx
	or	eax, 2
	cmp	eax, 7
	jne	.label_1633
	mov	rbp, rbp
	jmp	.label_1645
.label_1658:
	lea	rdi, [rdi]
	cmp	qword ptr [r12 + 0x28], 0
	mov	rbp, rbp
	jle	.label_1633
	mov	eax, dword ptr [rsp + 0x130]
	test	al, al
	lea	rsi, [rsi]
	mov	ebp, 0
	lea	rdi, [rdi]
	mov	ebx, 0
	mov	rsp, rsp
	je	.label_1675
	nop	word ptr cs:[rax + rax]
.label_1672:
	mov	qword ptr [rsp + 8], 0
	nop	
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	mov	rbp, rbp
	mov	rdi, r14
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1637
	mov	rsp, rsp
	movzx	ebx, byte ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	byte ptr [r15 + rbx], 1
	mov	rbp, rbp
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_1638
	mov	rsp, rsp
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	ebx, dword ptr [rax + rbx*4]
.label_1638:
	lea	rdi, [rdi]
	movsxd	rax, ebx
	mov	rsp, rsp
	mov	byte ptr [r15 + rax], 1
.label_1637:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_1655
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_1655
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	mov	rbp, rbp
	call	towlower
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	esi, eax
	lea	rdx, [rsp + 8]
	mov	rsp, rsp
	call	wcrtomb
	mov	rsp, rsp
	cmp	rax, -1
	je	.label_1655
	nop	
	movzx	eax, byte ptr [rsp + 0x30]
	mov	rsp, rsp
	mov	byte ptr [r15 + rax], 1
	nop	dword ptr [rax]
.label_1655:
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [r12 + 0x28]
	mov	rbp, rbp
	jl	.label_1672
	mov	rbp, rbp
	jmp	.label_1633
	nop	dword ptr [rax]
.label_1675:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbx*4]
	mov	rdi, r14
	lea	rdi, [rdi]
	lea	rbp, [rsp + 8]
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	wcrtomb
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_1631
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_1631:
	mov	rbp, rbp
	test	byte ptr [r13 + 0x1a], 0x40
	lea	rsi, [rsi]
	je	.label_1635
	mov	rax, qword ptr [rsp + 0x10]
	cmp	dword ptr [rax + 0xb4], 2
	mov	rsp, rsp
	jl	.label_1635
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	mov	edi, dword ptr [rax + rbx*4]
	lea	rsi, [rsi]
	call	towlower
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rbp, rbp
	call	wcrtomb
	cmp	rax, -1
	je	.label_1635
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	dword ptr [rax + rax]
.label_1635:
	inc	rbx
	mov	rsp, rsp
	cmp	rbx, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	jl	.label_1675
	nop	word ptr cs:[rax + rax]
.label_1633:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	jl	.label_1673
.label_1665:
	nop	
	add	rsp, 0x138
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_1645:
	mov	rsp, rsp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	edx, 0x100
	mov	rdi, r15
	call	memset
	lea	rsi, [rsi]
	cmp	ebx, 2
	mov	rbp, rbp
	jne	.label_1665
	lea	rsi, [rsi]
	or	byte ptr [r13 + 0x38], 1
	lea	rsi, [rsi]
	jmp	.label_1665
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417f10

	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
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
	je	.label_1681
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
	jne	.label_1685
	lea	r12, [r15 + 0x38]
	lea	rsi, [rsi]
	mov	al, byte ptr [r15 + 0x38]
	lea	rdi, [rdi]
	and	al, 0x7f
	jmp	.label_1687
.label_1685:
	and	ebx, 0x143b2be
	nop	
	or	rbx, 0x100
	lea	r12, [r15 + 0x38]
	mov	rbp, rbp
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_1687:
	nop	
	mov	byte ptr [r15 + 0x38], al
	add	ebp, ebp
	nop	
	and	bpl, 0x10
	and	al, 0xef
	lea	rdi, [rdi]
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x28], 0
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, r14
	mov	rdx, rax
	mov	rcx, rbx
	call	re_compile_internal
	lea	rdi, [rdi]
	cmp	eax, 0x10
	mov	ebx, 8
	nop	
	cmovne	ebx, eax
	nop	
	test	ebx, ebx
	mov	rsp, rsp
	jne	.label_1684
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [r15 + 0x20]
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbp + 0xf0], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbp + 0xe0], xmm0
	movups	xmmword ptr [rbp + 0xd0], xmm0
	movups	xmmword ptr [rbp + 0xc0], xmm0
	movups	xmmword ptr [rbp + 0xb0], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbp + 0xa0], xmm0
	movups	xmmword ptr [rbp + 0x90], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbp + 0x80], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rbp + 0x70], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbp + 0x60], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbp + 0x50], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbp + 0x40], xmm0
	movups	xmmword ptr [rbp + 0x30], xmm0
	movups	xmmword ptr [rbp + 0x20], xmm0
	movups	xmmword ptr [rbp + 0x10], xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx + 0x50]
	nop	
	cmp	rax, rsi
	lea	rsi, [rsi]
	je	.label_1686
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_1686:
	nop	
	mov	rsi, qword ptr [rbx + 0x58]
	mov	rsp, rsp
	cmp	rax, rsi
	mov	rsp, rsp
	je	.label_1682
	mov	rdi, r15
	mov	rdx, rbp
	nop	
	call	re_compile_fastmap_iter
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x48]
.label_1682:
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + 0x60]
	cmp	rax, rsi
	je	.label_1683
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
.label_1683:
	or	byte ptr [r12], 8
	xor	ebx, ebx
.label_1681:
	lea	rdi, [rdi]
	mov	eax, ebx
	mov	rsp, rsp
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_1684:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	lea	rdi, [rdi]
	jmp	.label_1681
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418140
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
	jae	.label_1688
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
	je	.label_1690
	lea	rdi, [rdi]
	cmp	rbx, r15
	mov	rsp, rsp
	mov	rdx, rbx
	ja	.label_1689
.label_1691:
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r12
	call	memcpy
.label_1690:
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
.label_1689:
	mov	rsp, rsp
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rbp, rbp
	jmp	.label_1691
.label_1688:
	lea	rdi, [rdi]
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4181f0

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
	je	.label_1692
	call	free_dfa_content
.label_1692:
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
	#Procedure 0x418250

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
	je	.label_1704
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r12d, 8
	cmp	qword ptr [r14 + 0x10], 0
	lea	rdi, [rdi]
	je	.label_1704
	mov	ebp, 0x400ff
	jmp	.label_1696
	nop	word ptr cs:[rax + rax]
.label_1697:
	mov	rbp, rbp
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_1696:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	lea	rsi, [rsi]
	je	.label_1700
	nop	
	cmp	ecx, 6
	jne	.label_1701
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
	jmp	.label_1693
	nop	dword ptr [rax]
.label_1700:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_1693:
	lea	rsi, [rsi]
	call	free
.label_1701:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_1697
.label_1704:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	nop	
	je	.label_1699
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	nop	
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	dword ptr [rax + rax]
.label_1710:
	mov	rax, qword ptr [r12]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1702
	mov	rdi, qword ptr [rax + rbx]
	mov	rsp, rsp
	call	free
.label_1702:
	mov	rax, qword ptr [r15]
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1705
	mov	rdi, qword ptr [rax + rbx]
	lea	rsi, [rsi]
	call	free
.label_1705:
	mov	rax, qword ptr [r13]
	nop	
	test	rax, rax
	je	.label_1708
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1708:
	mov	rsp, rsp
	inc	rbp
	add	rbx, 0x18
	lea	rdi, [rdi]
	cmp	rbp, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	jb	.label_1710
	lea	rdi, [rdi]
	jmp	.label_1698
.label_1699:
	mov	rsp, rsp
	lea	r13, [r14 + 0x28]
	mov	rbp, rbp
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_1698:
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
	je	.label_1707
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_1709
	nop	word ptr cs:[rax + rax]
.label_1706:
	mov	rdi, qword ptr [r14 + 0x40]
.label_1709:
	lea	rsi, [rsi]
	lea	rax, [r15 + r15*2]
	nop	
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	mov	rsp, rsp
	jle	.label_1695
	lea	rbx, [rdi + rax*8]
	mov	rsp, rsp
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1703:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	nop	
	cmp	rbp, qword ptr [rbx]
	nop	
	jl	.label_1703
.label_1695:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_1706
	mov	rdi, qword ptr [r14 + 0x40]
.label_1707:
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	lea	rsi, [rsi]
	cmp	rdi, rax
	nop	
	je	.label_1694
	call	free
.label_1694:
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
	#Procedure 0x4184d0

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
	ja	.label_1711
	test	bpl, 4
	nop	
	jne	.label_1715
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_1712
.label_1715:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
.label_1712:
	test	byte ptr [rbx + 0x38], 0x10
	nop	
	jne	.label_1713
	mov	dword ptr [rsp + 0x10], ebp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r15
	lea	rsi, [rsi]
	jmp	.label_1714
.label_1713:
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], 0
	nop	
	mov	qword ptr [rsp], 0
.label_1714:
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
.label_1711:
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
	#Procedure 0x4185b0

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
	mov	r15, rcx
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x2a0]
	mov	r11, qword ptr [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x230], xmm0
	movaps	xmmword ptr [rsp + 0x220], xmm0
	movaps	xmmword ptr [rsp + 0x210], xmm0
	movaps	xmmword ptr [rsp + 0x200], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x1f0], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x1e0], xmm0
	movaps	xmmword ptr [rsp + 0x1d0], xmm0
	movaps	xmmword ptr [rsp + 0x1c0], xmm0
	movaps	xmmword ptr [rsp + 0x1b0], xmm0
	movaps	xmmword ptr [rsp + 0x1a0], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x190], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x180], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x140], xmm0
	mov	qword ptr [rsp + 0x1d8], r11
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x20]
	xor	ebp, ebp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1814
	lea	rsi, [rsi]
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	movzx	ecx, cl
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	ecx, 8
	nop	
	cmovne	rax, rbx
	nop	
	cmp	r15, r8
	mov	rsp, rsp
	cmove	rax, rbx
	mov	rbp, rax
.label_1814:
	nop	
	mov	rax, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	lea	r14, [r13 - 1]
	mov	rcx, r14
	nop	
	sub	rcx, rax
	mov	rsp, rsp
	xor	ebx, ebx
	cmp	rax, r13
	mov	rsp, rsp
	cmovb	rbx, rcx
	lea	rsi, [rsi]
	mov	r12d, 1
	cmp	qword ptr [rdi + 0x10], 0
	mov	rsp, rsp
	je	.label_1736
	mov	rax, qword ptr [r11 + 0x48]
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_1736
	mov	rsp, rsp
	mov	rcx, qword ptr [r11 + 0x50]
	test	rcx, rcx
	je	.label_1736
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x128], rbp
	lea	rsi, [rsi]
	mov	r10, qword ptr [r11 + 0x58]
	test	r10, r10
	nop	
	je	.label_1736
	cmp	qword ptr [r11 + 0x60], 0
	nop	
	je	.label_1736
	mov	rbp, rbp
	mov	rbp, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x108], rbp
	cmp	qword ptr [rax + 0x10], 0
	nop	
	jne	.label_1886
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x10], 0
	jne	.label_1886
	cmp	qword ptr [r10 + 0x10], 0
	je	.label_1894
	lea	rsi, [rsi]
	cmp	byte ptr [rdi + 0x38], 0
	mov	rsp, rsp
	js	.label_1886
.label_1894:
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, rbp
	test	r15, r15
	mov	r10, rsi
	lea	rdi, [rdi]
	je	.label_1895
	lea	rdi, [rdi]
	test	r8, r8
	mov	rbp, rbp
	mov	r15d, 0
	lea	rdi, [rdi]
	jne	.label_1736
	jmp	.label_1763
.label_1886:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r8
	mov	r10, rsi
.label_1763:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xc0], r14
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x3f], 1
	mov	rsp, rsp
	cmp	rbx, r13
	mov	qword ptr [rsp + 0x98], rbx
	lea	rdi, [rdi]
	jne	.label_1830
	lea	rdi, [rdi]
	cmp	qword ptr [r11 + 0x98], 0
	mov	rbp, rbp
	setne	byte ptr [rsp + 0x3f]
.label_1830:
	mov	r13, qword ptr [r11 + 0x10]
	lea	rsi, [rsi]
	inc	r13
	mov	rcx, qword ptr [rdi + 0x18]
	movsxd	rax, dword ptr [r11 + 0xb4]
	mov	rsp, rsp
	cmp	rax, r13
	lea	rdi, [rdi]
	cmovge	r13, rax
	mov	rsp, rsp
	lea	rsi, [rdx + 1]
	cmp	rsi, r13
	cmovle	r13, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x140], r10
	mov	qword ptr [rsp + 0x198], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x190], rdx
	mov	qword ptr [rsp + 0x108], rbp
	mov	qword ptr [rsp + 0x1b8], rbp
	lea	rdi, [rdi]
	shr	rcx, 0x16
	lea	rsi, [rsi]
	and	cl, 1
	mov	byte ptr [rsp + 0x1c8], cl
	lea	rsi, [rsi]
	test	rbp, rbp
	setne	bl
	or	bl, cl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x1cb], bl
	mov	dword ptr [rsp + 0x1d0], eax
	mov	cl, byte ptr [r11 + 0xb0]
	lea	rdi, [rdi]
	shr	cl, 2
	mov	rbp, rbp
	and	cl, 1
	nop	
	mov	byte ptr [rsp + 0x1c9], cl
	mov	rbp, rbp
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 3
	lea	rdi, [rdi]
	and	cl, 1
	lea	rdi, [rdi]
	cmp	rax, 2
	mov	byte ptr [rsp + 0x1ca], cl
	mov	qword ptr [rsp + 0x1a8], rdx
	nop	
	mov	qword ptr [rsp + 0x1a0], rdx
	nop	
	jl	.label_1913
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x260], r11
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	mov	rsp, rsp
	mov	r12d, 0xc
	cmp	r13, rax
	lea	rsi, [rsi]
	ja	.label_1724
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x118], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x130], rdx
	mov	r14, rdi
	lea	rsi, [r13*4]
	xor	edi, edi
	mov	rbp, rbp
	call	realloc
	nop	
	test	rax, rax
	je	.label_1724
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x150], rax
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0x260]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x130]
	mov	r10, qword ptr [rsp + 0x118]
.label_1913:
	mov	qword ptr [rsp + 0x130], rdx
	mov	al, 1
	lea	rsi, [rsi]
	test	bl, bl
	je	.label_1798
	mov	r14, r10
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x260], r11
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, r13
	lea	rsi, [rsi]
	call	realloc
	mov	rsp, rsp
	mov	r12d, 0xc
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1724
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x148], rax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x260]
	mov	rdi, rbx
	mov	rsp, rsp
	mov	r10, r14
.label_1798:
	mov	qword ptr [rsp + 0x180], r13
	lea	rcx, [r11 + 0xb8]
	mov	qword ptr [rsp + 0x1c0], rcx
	mov	rcx, qword ptr [r11 + 0xb0]
	mov	dl, cl
	shr	dl, 4
	and	dl, 1
	mov	byte ptr [rsp + 0x1ce], dl
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_1802
	shr	rcx, 0x20
	mov	qword ptr [rsp + 0x148], r10
	xor	edx, edx
	mov	rsp, rsp
	cmp	ecx, 1
	mov	rbp, rbp
	cmovle	rdx, qword ptr [rsp + 0x130]
.label_1802:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x118], r10
	nop	
	mov	qword ptr [rsp + 0x170], rdx
	mov	qword ptr [rsp + 0x178], rdx
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x1a8], rax
	mov	qword ptr [rsp + 0x1a0], rax
	lea	rdi, [rdi]
	mov	al, byte ptr [rdi + 0x38]
	mov	qword ptr [rsp + 0xe8], rdi
	shr	al, 7
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x1cd], al
	mov	rbx, qword ptr [r11 + 0x98]
	mov	qword ptr [rsp + 0x260], r11
	lea	r14, [rbx + rbx]
	mov	eax, dword ptr [rsp + 0x2b0]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1e0], eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x1e8], -1
	mov	rsp, rsp
	test	rbx, rbx
	lea	rdi, [rdi]
	jle	.label_1839
	mov	r12d, 0xc
	mov	rbp, rbp
	movabs	rax, 0x666666666666666
	cmp	r14, rax
	ja	.label_1724
	lea	rsi, [rsi]
	shl	rbx, 4
	lea	rdi, [rdi]
	lea	rdi, [rbx + rbx*4]
	lea	rdi, [rdi]
	call	malloc
	mov	rsp, rsp
	mov	rbp, rax
	nop	
	mov	qword ptr [rsp + 0x218], rbp
	mov	rdi, rbx
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x238], rax
	mov	rbp, rbp
	test	rbp, rbp
	nop	
	je	.label_1724
	test	rax, rax
	mov	rbp, rbp
	je	.label_1724
.label_1839:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x2a0]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x248], rax
	mov	qword ptr [rsp + 0x210], r14
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x220], 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x230], r14
	nop	
	cmp	rax, 1
	mov	rax, qword ptr [rsp + 0x260]
	ja	.label_1747
	mov	rbx, qword ptr [rax + 0xb0]
	lea	rsi, [rsi]
	test	bl, 2
	jne	.label_1747
	shr	rbx, 0x20
	mov	qword ptr [rsp + 0x1f8], 0
	lea	rdi, [rdi]
	jmp	.label_1897
.label_1747:
	mov	r12d, 0xc
	lea	rsi, [rsi]
	movabs	rax, 0x1ffffffffffffffe
	cmp	r13, rax
	ja	.label_1724
	lea	rdi, [r13*8 + 8]
	lea	rdi, [rdi]
	call	malloc
	mov	qword ptr [rsp + 0x1f8], rax
	nop	
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1724
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x260]
	mov	ebx, dword ptr [rax + 0xb4]
.label_1897:
	nop	
	mov	qword ptr [rsp + 0x250], rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x260], rax
	mov	qword ptr [rsp + 0xa8], r15
	mov	eax, dword ptr [rsp + 0x2b0]
	lea	eax, [rax + rax]
	lea	rsi, [rsi]
	and	eax, 2
	lea	rdi, [rdi]
	xor	eax, 6
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1b0], eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x28]
	cmp	rsi, r15
	mov	rsp, rsp
	mov	r13, r15
	cmovle	r13, rsi
	mov	rbp, rsi
	cmovl	rbp, r15
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x138], rbp
	mov	rbp, rbp
	mov	ecx, 8
	mov	r14, qword ptr [rsp + 0x128]
	test	r14, r14
	mov	rdi, qword ptr [rsp + 0x108]
	nop	
	je	.label_1911
	cmp	ebx, 1
	nop	
	je	.label_1740
	mov	ecx, 0x400000
	mov	rsp, rsp
	xor	r8d, r8d
	mov	rbp, rbp
	test	rdi, rdi
	mov	rsp, rsp
	jne	.label_1744
	mov	rdx, qword ptr [rsp + 0xe8]
	lea	rsi, [rsi]
	and	rcx, qword ptr [rdx + 0x18]
	jne	.label_1744
.label_1740:
	lea	rsi, [rsi]
	mov	r8d, 4
.label_1744:
	test	rdi, rdi
	setne	cl
	cmp	r15, rsi
	lea	rdi, [rdi]
	setle	dl
	lea	rdi, [rdi]
	movzx	ecx, cl
	nop	
	movzx	edx, dl
	lea	ecx, [rcx + rdx*2]
	lea	rdi, [rdi]
	or	ecx, r8d
.label_1911:
	mov	qword ptr [rsp + 0x250], rbx
	mov	rbp, rbp
	mov	rbx, rdi
	xor	eax, eax
	cmp	r15, rsi
	setle	byte ptr [rsp + 0x247]
	lea	rdx, [rsp + 0xa8]
	cmovg	rdx, rax
	mov	qword ptr [rsp + 0x18], rdx
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0x110], rax
	lea	rsi, [rsi]
	cmp	rsi, r15
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rsi, [rsi]
	mov	rdx, -1
	cmovge	rdx, rax
	mov	qword ptr [rsp + 0x40], rdx
	add	ecx, -4
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa0], rcx
	mov	rsp, rsp
	jmp	.label_1760
.label_1847:
	mov	rax, qword ptr [rsp + 0x250]
	cmp	eax, 1
	je	.label_1789
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x170]
	test	rax, rax
	je	.label_1789
	mov	rax, qword ptr [rsp + 0x150]
	lea	rsi, [rsi]
	cmp	dword ptr [rax], -1
	lea	rdi, [rdi]
	je	.label_1793
.label_1789:
	nop	
	mov	dword ptr [rsp + 0x220], 0
	lea	rdi, [rdi]
	lea	rax, [rsp + 0x200]
	nop	
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rax], xmm0
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x1d8]
	mov	rdi, qword ptr [rsp + 0x188]
	mov	dword ptr [rsp + 0xf4], 0
	mov	r15, qword ptr [r12 + 0x48]
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 0x68], 0
	lea	rsi, [rsi]
	js	.label_1799
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x250]
	jmp	.label_1778
.label_1799:
	mov	rbp, rbp
	test	rdi, rdi
	jle	.label_1817
	lea	rax, [rdi - 1]
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x198], rax
	mov	rbp, rbp
	je	.label_1819
	cmp	dword ptr [rsp + 0x1d0], 2
	lea	rsi, [rsi]
	jl	.label_1824
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x150]
	mov	rsp, rsp
	mov	rcx, rdi
	nop	dword ptr [rax + rax]
.label_1836:
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	cmp	ebx, -1
	mov	rbp, rbp
	jne	.label_1832
	mov	rsp, rsp
	dec	rcx
	mov	rsp, rsp
	jg	.label_1836
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x1b0]
	mov	rsp, rsp
	jmp	.label_1837
.label_1824:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x148]
	mov	rdx, qword ptr [rsp + 0x1c0]
	mov	rsp, rsp
	movzx	eax, byte ptr [rcx + rax]
	nop	
	mov	cl, al
	mov	rbp, rbp
	shr	cl, 6
	mov	rbp, rbp
	movzx	ecx, cl
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx + rcx*8]
	lea	rsi, [rsi]
	bt	rcx, rax
	nop	
	jb	.label_1821
	mov	rsp, rsp
	movzx	eax, al
	nop	
	cmp	eax, 0xa
	mov	rsp, rsp
	je	.label_1853
	mov	rbx, qword ptr [rsp + 0x250]
	jmp	.label_1778
.label_1832:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x1ce], 0
	lea	rsi, [rsi]
	jne	.label_1858
.label_1904:
	cmp	ebx, 0xa
	jne	.label_1861
.label_1853:
	mov	ecx, 2
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x1cd], 0
	jne	.label_1837
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_1837
.label_1861:
	mov	rbx, qword ptr [rsp + 0x250]
	lea	rsi, [rsi]
	jmp	.label_1778
.label_1817:
	mov	ecx, dword ptr [rsp + 0x1b0]
	jmp	.label_1837
.label_1819:
	mov	ecx, dword ptr [rsp + 0x1e0]
	mov	rbp, rbp
	and	ecx, 2
	mov	rsp, rsp
	xor	ecx, 0xa
.label_1837:
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1821
	nop	
	test	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x250]
	nop	
	je	.label_1778
	mov	rsi, rbx
	mov	rbp, rbp
	mov	eax, ecx
	and	eax, 4
	sete	bl
	mov	edx, ecx
	and	edx, 2
	je	.label_1878
	nop	
	test	bl, bl
	nop	
	jne	.label_1878
	mov	rbp, rbp
	mov	r15, qword ptr [r12 + 0x60]
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rbp, rbp
	jmp	.label_1778
.label_1878:
	mov	rbp, rbp
	test	edx, edx
	jne	.label_1885
	mov	qword ptr [rsp + 0x128], rdi
	lea	rdi, [rdi]
	mov	r15, qword ptr [r12 + 0x48]
	test	eax, eax
	mov	rbx, rsi
	lea	rsi, [rsi]
	je	.label_1891
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 0x50]
	nop	
	lea	rdi, [rsp + 0xf4]
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rbp, rbp
	call	re_acquire_state_context
	lea	rdi, [rdi]
	mov	r15, rax
.label_1891:
	nop	
	mov	rdi, qword ptr [rsp + 0x128]
	jmp	.label_1778
.label_1885:
	nop	
	mov	r15, qword ptr [r12 + 0x58]
	lea	rsi, [rsi]
	mov	rbx, rsi
	jmp	.label_1778
.label_1858:
	mov	qword ptr [rsp + 0x128], rdi
	mov	rbp, rbp
	mov	edi, ebx
	mov	rbp, rbp
	call	iswalnum
	mov	rdi, qword ptr [rsp + 0x128]
	cmp	ebx, 0x5f
	lea	rdi, [rdi]
	je	.label_1821
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_1904
.label_1821:
	mov	r15, qword ptr [r12 + 0x50]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x250]
.label_1778:
	test	r15, r15
	mov	rbp, rbp
	je	.label_1909
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x1f8]
	test	rax, rax
	mov	cl, byte ptr [rsp + 0x247]
	mov	rbp, rbp
	mov	dl, cl
	mov	dword ptr [rsp + 0xf8], edx
	je	.label_1884
	mov	rbp, rbp
	mov	qword ptr [rax + rdi*8], r15
	cmp	qword ptr [r12 + 0x98], 0
	mov	rsp, rsp
	mov	al, cl
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xf8], eax
	mov	rbp, rbp
	jne	.label_1716
.label_1884:
	mov	byte ptr [rsp + 0x247], cl
	mov	rbp, rbp
	mov	al, byte ptr [r15 + 0x68]
	mov	rbx, -1
	test	al, 0x10
	mov	ecx, 0
	lea	rsi, [rsi]
	jne	.label_1726
.label_1898:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x188]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x18]
.label_1882:
	mov	qword ptr [rsp + 0x30], rdx
	cmp	qword ptr [rsp + 0x1a8], rax
	lea	rsi, [rsi]
	jle	.label_1742
	test	rcx, rcx
	sete	cl
	or	cl, byte ptr [rsp + 0x3f]
	mov	byte ptr [rsp + 0x97], cl
	nop	
	jmp	.label_1749
.label_1765:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xe0], rbx
	mov	qword ptr [rsp + 0x258], r13
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x10], 0
	jle	.label_1754
	mov	rdi, qword ptr [rsp + 0x1d8]
	lea	rsi, [rsi]
	xor	r12d, r12d
	jmp	.label_1758
.label_1785:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x188]
	mov	rbp, rbp
	test	rax, rax
	jle	.label_1764
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r15
	lea	rdx, [rax - 1]
	lea	rsi, [rsi]
	mov	ecx, 0xa
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x198], rdx
	je	.label_1728
	cmp	dword ptr [rsp + 0x1d0], 2
	jl	.label_1777
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x150]
.label_1786:
	nop	
	mov	ebx, dword ptr [rcx + rax*4 - 4]
	cmp	ebx, -1
	jne	.label_1783
	dec	rax
	lea	rsi, [rsi]
	jg	.label_1786
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0x1b0]
	jmp	.label_1728
.label_1863:
	cmp	qword ptr [rsp + 0x28], r15
	mov	rdi, qword ptr [rsp + 0x128]
	je	.label_1791
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xf8], 0
.label_1791:
	mov	rsp, rsp
	cmove	rdi, r12
	mov	rbp, rbp
	jmp	.label_1796
.label_1777:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x148]
	mov	rcx, qword ptr [rsp + 0x1c0]
	movzx	eax, byte ptr [rax + rdx]
	mov	dl, al
	nop	
	shr	dl, 6
	mov	rsp, rsp
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	rbp, rbp
	mov	ecx, 1
	mov	rsp, rsp
	bt	rdx, rax
	jb	.label_1728
	lea	rdi, [rdi]
	xor	ecx, ecx
	movzx	eax, al
	mov	rsp, rsp
	cmp	eax, 0xa
	nop	
	jne	.label_1728
	jmp	.label_1812
.label_1783:
	cmp	byte ptr [rsp + 0x1ce], 0
	mov	rsp, rsp
	jne	.label_1813
.label_1734:
	lea	rsi, [rsi]
	xor	ecx, ecx
	cmp	ebx, 0xa
	nop	
	jne	.label_1728
.label_1812:
	lea	rsi, [rsi]
	mov	ecx, 2
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x1cd], 0
	jne	.label_1728
	xor	ecx, ecx
	jmp	.label_1728
.label_1764:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r15
	mov	ecx, dword ptr [rsp + 0x1b0]
.label_1728:
	mov	rsp, rsp
	and	ecx, 1
	shl	rcx, 8
	or	rcx, rbp
	lea	rdi, [rdi]
	mov	r15, qword ptr [r12 + rcx*8]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0xe0]
	jmp	.label_1718
.label_1873:
	mov	r15, rdi
	mov	edi, ebx
	mov	rsp, rsp
	call	iswalnum
	cmp	ebx, 0x5f
	nop	
	mov	ecx, 1
	mov	rbp, rbp
	je	.label_1841
	lea	rsi, [rsi]
	test	eax, eax
	mov	rdi, r15
	mov	r15, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	je	.label_1846
	jmp	.label_1751
.label_1841:
	mov	rdi, r15
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x28]
	jmp	.label_1751
.label_1758:
	mov	rax, qword ptr [r15 + 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rdi]
	mov	rbp, rsi
	shl	rbp, 4
	mov	rbp, rbp
	mov	r13d, dword ptr [rax + rbp + 8]
	test	r13d, 0x100000
	mov	rsp, rsp
	je	.label_1721
	shr	r13d, 8
	test	r13w, 0x3ff
	lea	rdi, [rdi]
	je	.label_1733
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x188]
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_1903
	cmp	qword ptr [rsp + 0x198], rax
	mov	rbp, rbp
	je	.label_1865
	cmp	dword ptr [rsp + 0x1d0], 2
	mov	rsp, rsp
	jl	.label_1870
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x150]
	inc	rax
.label_1875:
	mov	rbp, rbp
	mov	ebx, dword ptr [rcx + rax*4 - 4]
	cmp	ebx, -1
	jne	.label_1874
	mov	rsp, rsp
	dec	rax
	lea	rsi, [rsi]
	test	rax, rax
	jg	.label_1875
	mov	ecx, dword ptr [rsp + 0x1b0]
	lea	rdi, [rdi]
	jmp	.label_1877
.label_1870:
	nop	
	mov	rcx, qword ptr [rsp + 0x148]
	mov	rdx, qword ptr [rsp + 0x1c0]
	nop	
	movzx	eax, byte ptr [rcx + rax]
	nop	
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	xor	ecx, ecx
	bt	rdx, rax
	jae	.label_1881
	mov	ecx, 1
	lea	rdi, [rdi]
	xor	edx, edx
	jmp	.label_1888
.label_1874:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x1ce], 0
	lea	rsi, [rsi]
	jne	.label_1889
.label_1910:
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	cmp	ebx, 0xa
	je	.label_1732
	jmp	.label_1877
.label_1881:
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0xa
	nop	
	jne	.label_1877
.label_1732:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x1cd], 0
	jne	.label_1877
	xor	ecx, ecx
	jmp	.label_1877
.label_1903:
	mov	ecx, dword ptr [rsp + 0x1b0]
	jmp	.label_1877
.label_1865:
	mov	ecx, dword ptr [rsp + 0x1e0]
	lea	rdi, [rdi]
	and	ecx, 2
	xor	ecx, 0xa
.label_1877:
	nop	
	mov	eax, ecx
	nop	
	and	eax, 1
	sete	dl
	test	r13b, 4
	lea	rdi, [rdi]
	je	.label_1888
	test	eax, eax
	je	.label_1721
	lea	rdi, [rdi]
	jmp	.label_1888
.label_1889:
	mov	qword ptr [rsp + 0x48], rsi
	mov	qword ptr [rsp + 8], rdi
	mov	edi, ebx
	nop	
	call	iswalnum
	xor	edx, edx
	cmp	ebx, 0x5f
	mov	ecx, 1
	lea	rsi, [rsi]
	je	.label_1869
	test	eax, eax
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	je	.label_1910
	lea	rdi, [rdi]
	jmp	.label_1888
.label_1869:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x48]
.label_1888:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax + rbp + 8]
	mov	rbp, rbp
	test	dl, dl
	jne	.label_1717
	mov	edx, eax
	mov	rsp, rsp
	and	edx, 0x800
	jne	.label_1721
.label_1717:
	mov	rsp, rsp
	test	cl, 2
	jne	.label_1725
	nop	
	mov	edx, eax
	and	edx, 0x2000
	lea	rdi, [rdi]
	jne	.label_1721
.label_1725:
	nop	
	test	cl, 8
	jne	.label_1733
	nop	
	shr	eax, 8
	mov	rsp, rsp
	test	al, al
	js	.label_1721
.label_1733:
	mov	rcx, qword ptr [rsp + 0x188]
	mov	rsp, rsp
	mov	rbx, rdi
	nop	
	lea	rdx, [rsp + 0x140]
	mov	rbp, rsi
	call	check_node_accept_bytes
	mov	rcx, rbp
	mov	rdi, rbx
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1721
	mov	qword ptr [rsp + 0x48], rcx
	lea	rdi, [rdi]
	mov	rbp, rdi
	mov	rbp, rbp
	movsxd	rsi, eax
	mov	rbp, rbp
	add	rsi, qword ptr [rsp + 0x188]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0x220]
	lea	rdi, [rdi]
	cmp	ecx, eax
	cmovl	ecx, eax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x220], ecx
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x200]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x180]
	nop	
	mov	rax, qword ptr [rsp + 0x198]
	nop	
	cmp	rcx, rsi
	jg	.label_1753
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_1770
.label_1753:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x170]
	cmp	rcx, rsi
	lea	rdi, [rdi]
	jg	.label_1771
	cmp	rcx, rax
	jge	.label_1771
.label_1770:
	mov	rbp, rbp
	mov	r13, rsi
	lea	esi, [r13 + 1]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x140]
	mov	rsp, rsp
	call	extend_buffers
	mov	rsp, rsp
	mov	rsi, r13
	test	eax, eax
	nop	
	jne	.label_1788
.label_1771:
	mov	rdx, rsi
	nop	
	sub	rdx, rbx
	mov	rbp, rbp
	jle	.label_1859
	mov	rax, qword ptr [rsp + 0x1f8]
	lea	rdi, [rax + rbx*8 + 8]
	shl	rdx, 3
	mov	rbx, rsi
	mov	rbp, rbp
	xor	esi, esi
	mov	rbp, rbp
	call	memset
	mov	rsi, rbx
	mov	qword ptr [rsp + 0x200], rsi
.label_1859:
	mov	dword ptr [rsp + 0xc8], 0
	lea	rdi, [rdi]
	mov	r13, rbp
	nop	
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rdx*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	mov	rsp, rsp
	add	rdx, qword ptr [r13 + 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x1f8]
	mov	rbp, rbp
	mov	rbp, qword ptr [rax + rsi*8]
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_1801
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp + 0x50]
	lea	rdi, [rsp + 0x50]
	mov	rbp, rbp
	call	re_node_set_init_union
	mov	rbp, rbp
	mov	rsi, rbx
	mov	dword ptr [rsp + 0xc8], eax
	test	eax, eax
	je	.label_1820
	jmp	.label_1826
.label_1801:
	nop	
	mov	rax, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rax
	nop	
	movups	xmm0, xmmword ptr [rdx]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x50], xmm0
.label_1820:
	nop	
	test	rsi, rsi
	mov	rsp, rsp
	jle	.label_1803
	mov	rsp, rsp
	lea	rax, [rsi - 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x198], rax
	lea	rdi, [rsp + 0xc8]
	je	.label_1737
	cmp	dword ptr [rsp + 0x1d0], 2
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x28]
	jl	.label_1781
	nop	
	mov	rax, qword ptr [rsp + 0x150]
	mov	rsp, rsp
	mov	rcx, rsi
.label_1852:
	nop	
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	mov	rbp, rbp
	cmp	ebx, -1
	mov	rsp, rsp
	jne	.label_1850
	dec	rcx
	lea	rdi, [rdi]
	jg	.label_1852
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rsi
	mov	ecx, dword ptr [rsp + 0x1b0]
	lea	rdi, [rdi]
	jmp	.label_1751
.label_1781:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rsi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x148]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x1c0]
	movzx	eax, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_1751
	xor	ecx, ecx
	mov	rbp, rbp
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_1751
	jmp	.label_1871
.label_1850:
	mov	qword ptr [rsp + 0x48], rsi
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0x1ce], 0
	jne	.label_1873
.label_1846:
	nop	
	xor	ecx, ecx
	nop	
	cmp	ebx, 0xa
	nop	
	jne	.label_1751
.label_1871:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x1cd], 0
	mov	rsp, rsp
	jne	.label_1751
	xor	ecx, ecx
	jmp	.label_1751
.label_1803:
	nop	
	mov	qword ptr [rsp + 0x48], rsi
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x1b0]
	lea	rdi, [rsp + 0xc8]
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x28]
	nop	
	jmp	.label_1751
.label_1737:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rsi
	mov	ecx, dword ptr [rsp + 0x1e0]
	mov	rsp, rsp
	and	ecx, 2
	lea	rsi, [rsi]
	xor	ecx, 0xa
	mov	r15, qword ptr [rsp + 0x28]
.label_1751:
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rbp, rbp
	lea	rdx, [rsp + 0x50]
	lea	rdi, [rdi]
	call	re_acquire_state_context
	test	rbp, rbp
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x1f8]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	qword ptr [rcx + rdx*8], rax
	je	.label_1792
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rbx, rdx
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rdx, rbx
.label_1792:
	mov	rax, qword ptr [rsp + 0x1f8]
	mov	rbp, rbp
	cmp	qword ptr [rax + rdx*8], 0
	mov	rdi, r13
	mov	rbp, rbp
	jne	.label_1721
	nop	
	mov	eax, dword ptr [rsp + 0xc8]
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1902
.label_1721:
	lea	rsi, [rsi]
	inc	r12
	mov	rbp, rbp
	cmp	r12, qword ptr [r15 + 0x10]
	jl	.label_1758
.label_1754:
	mov	dword ptr [rsp + 0xf4], 0
	mov	r13, qword ptr [rsp + 0x258]
	mov	rbx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	jmp	.label_1907
.label_1902:
	mov	qword ptr [rsp + 0x28], r15
	lea	rdi, [rdi]
	jmp	.label_1826
.label_1788:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r15
	mov	dword ptr [rsp + 0xc8], eax
.label_1826:
	mov	dword ptr [rsp + 0xf4], eax
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x258]
	mov	rbx, qword ptr [rsp + 0xe0]
	jmp	.label_1718
.label_1813:
	mov	edi, ebx
	call	iswalnum
	mov	rbp, rbp
	cmp	ebx, 0x5f
	mov	rsp, rsp
	mov	ecx, 1
	lea	rsi, [rsi]
	je	.label_1728
	test	eax, eax
	je	.label_1734
	mov	rsp, rsp
	jmp	.label_1728
.label_1749:
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x128], rdi
	lea	rdi, [rdi]
	lea	rbp, [rax + 1]
	nop	
	mov	rdx, qword ptr [rsp + 0x180]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x198]
	cmp	rbp, rdx
	lea	rdi, [rdi]
	jl	.label_1738
	cmp	rdx, rcx
	mov	rsp, rsp
	jl	.label_1752
.label_1738:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x170]
	cmp	rbp, rdx
	jl	.label_1784
	cmp	rdx, rcx
	jge	.label_1784
.label_1752:
	add	eax, 2
	lea	rdi, [rsp + 0x140]
	mov	esi, eax
	call	extend_buffers
	mov	dword ptr [rsp + 0xf4], eax
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1759
.label_1784:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], rbp
	lea	rsi, [rsi]
	test	byte ptr [r15 + 0x68], 0x20
	nop	
	jne	.label_1765
.label_1907:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x188]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x188], rcx
	mov	rcx, qword ptr [rsp + 0x148]
	lea	rsi, [rsi]
	movzx	ebp, byte ptr [rcx + rax]
.label_1900:
	nop	
	mov	rax, qword ptr [r15 + 0x58]
	test	rax, rax
	mov	rbp, rbp
	jne	.label_1780
	mov	qword ptr [rsp + 0xe0], rbx
	mov	r12, qword ptr [r15 + 0x60]
	mov	rbp, rbp
	test	r12, r12
	nop	
	jne	.label_1785
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x1d8]
	mov	rsi, r15
	call	build_trtable
	test	al, al
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0xe0]
	jne	.label_1900
	nop	
	mov	qword ptr [rsp + 0x28], r15
	mov	dword ptr [rsp + 0xf4], 0xc
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_1718
.label_1780:
	mov	qword ptr [rsp + 0x28], r15
	mov	r15, qword ptr [rax + rbp*8]
.label_1718:
	cmp	qword ptr [rsp + 0x1f8], 0
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	je	.label_1804
	nop	
	lea	rdi, [rsp + 0xf4]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x140]
	lea	rsi, [rsi]
	mov	rdx, r15
	lea	rsi, [rsi]
	call	merge_state_with_log
	mov	r15, rax
.label_1804:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x138]
	mov	rbp, rbp
	test	r15, r15
	jne	.label_1815
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0xf4], 0
	jne	.label_1750
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x1f8]
	test	rax, rax
	lea	rsi, [rsi]
	setne	cl
	nop	
	and	cl, byte ptr [rsp + 0x97]
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, 1
	je	.label_1822
	jmp	.label_1833
.label_1856:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x1f8]
	mov	rdi, rbp
.label_1822:
	mov	rdx, qword ptr [rsp + 0x188]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x200]
	nop	word ptr [rax + rax]
.label_1848:
	nop	
	cmp	rdx, rcx
	jge	.label_1845
	mov	rsp, rsp
	lea	rsi, [rdx + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x188], rsi
	nop	
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	nop	
	je	.label_1848
	mov	rbp, rdi
	xor	edx, edx
	lea	rdi, [rsp + 0xf4]
	lea	rsi, [rsp + 0x140]
	call	merge_state_with_log
	mov	r15, rax
	nop	
	test	r15, r15
	jne	.label_1855
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0xf4]
	nop	
	test	eax, eax
	je	.label_1856
.label_1855:
	mov	rsp, rsp
	test	r15, r15
	mov	rbp, rbp
	je	.label_1860
.label_1815:
	mov	eax, dword ptr [rsp + 0xf8]
	mov	rbp, rbp
	test	al, 1
	jne	.label_1863
	mov	rdi, qword ptr [rsp + 0x128]
.label_1796:
	mov	al, byte ptr [r15 + 0x68]
	test	al, 0x10
	je	.label_1867
	mov	rbp, rbp
	test	al, al
	nop	
	jns	.label_1868
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x188]
	mov	rsp, rsp
	mov	rbp, rdi
	lea	rdi, [rsp + 0x140]
	mov	rsi, r15
	call	check_halt_state_context
	lea	rsi, [rsi]
	mov	rdi, rbp
	test	rax, rax
	mov	rbp, rbp
	jne	.label_1868
.label_1867:
	mov	rax, qword ptr [rsp + 0x188]
	cmp	qword ptr [rsp + 0x1a8], rax
	jg	.label_1749
	jmp	.label_1742
.label_1868:
	mov	rax, qword ptr [rsp + 0x188]
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x3f], 0
	mov	rsp, rsp
	mov	rbx, rax
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	edx, 0
	mov	rbp, qword ptr [rsp + 0x138]
	nop	
	jne	.label_1882
	jmp	.label_1720
.label_1845:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x128]
.label_1742:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1892
	mov	rbp, rbp
	add	qword ptr [rax], rdi
	lea	rdi, [rdi]
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_1756
.label_1892:
	nop	
	mov	rax, rbx
.label_1756:
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x138]
.label_1720:
	lea	rsi, [rsi]
	cmp	rax, -1
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x108]
	je	.label_1741
	mov	rbp, rbp
	mov	r12d, 0xc
	cmp	rax, -2
	lea	rdi, [rdi]
	je	.label_1724
.label_1901:
	mov	qword ptr [rsp + 0x138], rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x258], r13
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x108], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x1e8], rax
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0xe8]
	mov	rsp, rsp
	mov	cl, byte ptr [rbx + 0x38]
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x248], 2
	mov	rbp, qword ptr [rsp + 0x260]
	jb	.label_1835
	mov	dl, cl
	and	dl, 0x10
	lea	rdi, [rdi]
	je	.label_1916
.label_1835:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + 0x98], 0
	je	.label_1719
.label_1916:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x1f8]
	mov	rsi, qword ptr [rcx + rax*8]
	nop	
	lea	rdi, [rsp + 0x140]
	mov	rdx, rax
	lea	rsi, [rsi]
	call	check_halt_state_context
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x1f0], rax
	nop	
	mov	cl, byte ptr [rbx + 0x38]
.label_1719:
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x248], 2
	mov	r9, qword ptr [rsp + 0x98]
	jb	.label_1735
	and	cl, 0x10
	nop	
	jne	.label_1735
	mov	rbp, rbp
	test	byte ptr [rbp + 0xb0], 1
	jne	.label_1743
.label_1735:
	mov	rsp, rsp
	cmp	qword ptr [rbp + 0x98], 0
	je	.label_1730
.label_1743:
	mov	rbp, qword ptr [rsp + 0x1e8]
	mov	rsp, rsp
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbp, rax
	lea	rdi, [rdi]
	ja	.label_1750
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rbx
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x1d8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x1f0]
	mov	qword ptr [rsp + 0x28], rax
	lea	rbx, [rbp*8 + 8]
	mov	rdi, rbx
	mov	rbp, rbp
	call	malloc
	mov	r12, rax
	mov	rsp, rsp
	test	r12, r12
	mov	r15d, 0
	nop	
	je	.label_1782
	cmp	qword ptr [r13 + 0x98], 0
	lea	rdi, [rdi]
	je	.label_1772
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf8], r13
	mov	rdi, rbx
	call	malloc
	mov	r15, rax
	test	r15, r15
	mov	rbp, rbp
	je	.label_1854
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	mov	rdx, rbx
	call	memset
	nop	
	mov	qword ptr [rsp + 0x50], r12
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], r15
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x68], rbp
	mov	rbp, rbp
	lea	rax, [rsp + 0x70]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	lea	rdi, [rsp + 0x140]
	lea	rsi, [rsp + 0x50]
	mov	rsp, rsp
	call	sift_states_backward
	mov	rbx, r12
	mov	qword ptr [rsp + 0x128], rbx
	mov	r12d, eax
	test	r12d, r12d
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x250]
	mov	r13, qword ptr [rsp + 0x258]
	jne	.label_1761
.label_1805:
	mov	rsi, qword ptr [rbx]
	test	rsi, rsi
	mov	rax, rbx
	jne	.label_1757
	lea	rsi, [rsi]
	cmp	qword ptr [r15], 0
	mov	esi, 0
	jne	.label_1757
	test	rbp, rbp
	jle	.label_1840
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x1f8]
	nop	
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_1834:
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rsi, [rsi]
	test	rsi, rsi
	je	.label_1828
	nop	
	test	byte ptr [rsi + 0x68], 0x10
	nop	
	jne	.label_1769
.label_1828:
	lea	rcx, [rbp - 1]
	lea	rsi, [rsi]
	inc	rbp
	cmp	rbp, 2
	mov	rsp, rsp
	mov	rbp, rcx
	mov	rsp, rsp
	jge	.label_1834
	lea	rsi, [rsi]
	jmp	.label_1840
.label_1769:
	mov	rsp, rsp
	lea	r12, [rsp + 0x140]
	mov	rdi, r12
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	check_halt_state_context
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rax
	lea	rdx, [rbp*8 + 8]
	xor	esi, esi
	mov	rdi, r15
	call	memset
	mov	rbx, qword ptr [rsp + 0x128]
	mov	qword ptr [rsp + 0x50], rbx
	nop	
	mov	qword ptr [rsp + 0x58], r15
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x68], rbp
	lea	rdi, [rdi]
	lea	rax, [rsp + 0x70]
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	mov	rdi, r12
	lea	rsi, [rsp + 0x50]
	lea	rsi, [rsi]
	call	sift_states_backward
	mov	rdx, qword ptr [rsp + 0x250]
	lea	rdi, [rdi]
	mov	r12d, eax
	test	r12d, r12d
	mov	rbp, rbp
	je	.label_1805
	jmp	.label_1761
.label_1772:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], r12
	mov	qword ptr [rsp + 0x128], r12
	mov	qword ptr [rsp + 0x58], 0
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x68], rbp
	lea	rax, [rsp + 0x70]
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rax], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x140]
	lea	rsi, [rsp + 0x50]
	mov	rsp, rsp
	call	sift_states_backward
	mov	r12d, eax
	mov	rbp, rbp
	test	r12d, r12d
	mov	rbp, rbp
	mov	r15d, 0
	mov	rdx, qword ptr [rsp + 0x250]
	mov	r13, qword ptr [rsp + 0x258]
	mov	rbp, rbp
	jne	.label_1761
	mov	rax, qword ptr [rsp + 0x128]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	r15d, 0
	nop	
	jne	.label_1893
.label_1840:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x250], rdx
	mov	rdi, qword ptr [rsp + 0x128]
	call	free
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	mov	rbx, qword ptr [rsp + 0x108]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x138]
.label_1741:
	lea	rdi, [rsp + 0x140]
	call	match_ctx_clean
.label_1793:
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0xa8]
	add	r15, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0xa8], r15
	cmp	r15, r13
	mov	r12d, 1
	jl	.label_1724
	nop	
	cmp	rbp, r15
	jge	.label_1760
	lea	rsi, [rsi]
	jmp	.label_1724
.label_1726:
	test	al, al
	mov	rsp, rsp
	js	.label_1914
	cmp	byte ptr [rsp + 0x3f], 0
	mov	rbp, rbp
	mov	rbx, rdi
	mov	ecx, 1
	jne	.label_1898
	mov	rsp, rsp
	mov	rax, rdi
	nop	
	jmp	.label_1720
.label_1716:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x138], rbp
	mov	qword ptr [rsp + 0x250], rbx
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	jle	.label_1722
	nop	
	mov	rbp, qword ptr [rsp + 0x1d8]
	xor	ebx, ebx
	lea	rdi, [rdi]
	jmp	.label_1731
.label_1914:
	lea	rsi, [rsi]
	mov	r12, rdi
	mov	rbp, rbp
	lea	rdi, [rsp + 0x140]
	mov	rsi, r15
	nop	
	mov	rdx, r12
	call	check_halt_state_context
	mov	rbp, rbp
	cmp	rax, 1
	sbb	rdx, rdx
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	sete	al
	lea	rsi, [rsi]
	setne	cl
	movzx	ecx, cl
	lea	rsi, [rsi]
	or	al, byte ptr [rsp + 0x3f]
	mov	rbp, rbp
	je	.label_1746
	mov	rsp, rsp
	or	rdx, r12
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rbx, rdx
	jmp	.label_1898
.label_1746:
	lea	rdi, [rdi]
	mov	rax, r12
	nop	
	jmp	.label_1720
.label_1833:
	mov	qword ptr [rsp + 0x138], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x128]
	lea	rsi, [rsi]
	jmp	.label_1742
.label_1757:
	test	rbp, rbp
	js	.label_1767
	nop	
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_1906
.label_1755:
	mov	rax, qword ptr [rsp + 0x128]
	mov	rsi, qword ptr [rax + rbx*8 + 8]
	inc	rbx
.label_1906:
	nop	
	mov	rdx, qword ptr [r15 + rbx*8]
	nop	
	test	rsi, rsi
	je	.label_1773
	nop	
	mov	qword ptr [rsp + 0x128], rax
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_1831
	mov	rsp, rsp
	add	rsi, 8
	mov	rbp, rbp
	add	rdx, 8
	lea	rdi, [rdi]
	lea	r13, [rsp + 0xc8]
	mov	rdi, r13
	call	re_node_set_init_union
	mov	r12d, eax
	mov	dword ptr [rsp + 0xf4], r12d
	nop	
	test	r12d, r12d
	jne	.label_1807
	lea	rdi, [rsp + 0xf4]
	mov	rsi, qword ptr [rsp + 0xf8]
	lea	rdi, [rdi]
	mov	rdx, r13
	nop	
	call	re_acquire_state
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x128]
	mov	rbp, rbp
	mov	qword ptr [rcx + rbx*8], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xd8]
	call	free
	mov	r12d, dword ptr [rsp + 0xf4]
	test	r12d, r12d
	je	.label_1831
	jmp	.label_1807
.label_1773:
	mov	rbp, rbp
	mov	qword ptr [rax + rbx*8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x128], rax
.label_1831:
	mov	rsp, rsp
	cmp	rbx, rbp
	jl	.label_1755
	lea	rsi, [rsi]
	jmp	.label_1816
.label_1849:
	nop	
	mov	rdi, qword ptr [rsp + 0x238]
	mov	rsp, rsp
	mov	rsi, r13
	shl	rsi, 4
	lea	rsi, [rsi]
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1823
	lea	rsi, [rsi]
	add	r13, r13
	mov	qword ptr [rsp + 0x238], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x230], r13
	jmp	.label_1896
.label_1731:
	mov	rcx, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rcx + rbx*8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp]
	mov	rbp, rbp
	mov	rdx, r12
	shl	rdx, 4
	movzx	esi, byte ptr [rcx + rdx + 8]
	cmp	esi, 8
	jne	.label_1774
	mov	rcx, qword ptr [rcx + rdx]
	nop	
	cmp	rcx, 0x3f
	jg	.label_1774
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp + 0xa0]
	bt	rdx, rcx
	jae	.label_1774
	mov	qword ptr [rsp + 0x128], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x258], r13
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x228]
	nop	
	cmp	r13, qword ptr [rsp + 0x230]
	je	.label_1849
.label_1896:
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, 0x30
	lea	rdi, [rdi]
	call	rpl_calloc
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x228]
	mov	rdx, qword ptr [rsp + 0x238]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x238]
	mov	rax, qword ptr [rax + rcx*8]
	nop	
	test	rax, rax
	je	.label_1823
	mov	rbp, rbp
	mov	qword ptr [rax + 8], r12
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x228], rcx
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [r15 + 0x10]
	mov	r13, qword ptr [rsp + 0x258]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x128]
.label_1774:
	lea	rsi, [rsi]
	inc	rbx
	cmp	rbx, rax
	jl	.label_1731
.label_1722:
	lea	rsi, [rsi]
	mov	rbp, r13
	mov	dword ptr [rsp + 0xf4], 0
	test	byte ptr [r15 + 0x68], 0x40
	jne	.label_1880
	nop	
	mov	dword ptr [rsp + 0xf8], 0
	nop	
	mov	r13, rbp
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x138]
	mov	cl, byte ptr [rsp + 0x247]
	jmp	.label_1884
.label_1880:
	mov	rbp, rbp
	mov	r12, rdi
	nop	
	lea	rsi, [r15 + 8]
	nop	
	lea	rdi, [rsp + 0x140]
	call	transit_state_bkref
	mov	dword ptr [rsp + 0xf4], eax
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1842
	mov	dword ptr [rsp + 0xf8], 0
	mov	rsp, rsp
	mov	r13, rbp
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x138]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rsp + 0x247]
	mov	rsp, rsp
	mov	rdi, r12
	nop	
	jmp	.label_1884
.label_1823:
	mov	eax, 0xc
	mov	rbx, qword ptr [rsp + 0x108]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x258]
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x138]
	lea	rdi, [rdi]
	jmp	.label_1901
.label_1767:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x128], rax
.label_1816:
	xor	r12d, r12d
.label_1807:
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	test	r12d, r12d
	mov	rbp, rbp
	mov	r15d, 0
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x250]
	nop	
	mov	r13, qword ptr [rsp + 0x258]
	je	.label_1893
.label_1761:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x258], r13
	mov	r13, rdx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x128]
	call	free
	mov	rbp, rbp
	mov	rdi, r15
	call	free
	test	r12d, r12d
	mov	rbp, qword ptr [rsp + 0x260]
	mov	r9, qword ptr [rsp + 0x98]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	je	.label_1730
	cmp	r12d, 1
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x108]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x250], r13
	nop	
	mov	r13, qword ptr [rsp + 0x258]
	mov	rbp, qword ptr [rsp + 0x138]
	lea	rdi, [rdi]
	je	.label_1741
	mov	rbp, rbp
	jmp	.label_1724
.label_1842:
	cdqe	
	mov	rbp, rbp
	mov	r13, rbp
	mov	rsp, rsp
	jmp	.label_1756
.label_1860:
	mov	rdi, qword ptr [rsp + 0x128]
	jmp	.label_1742
.label_1760:
	mov	rax, qword ptr [rsp + 0xa0]
	cmp	eax, 4
	ja	.label_1762
	mov	rsp, rsp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1766]]
.label_3736:
	cmp	r15, r13
	lea	rdi, [rdi]
	jge	.label_1768
	mov	rax, r15
	mov	rcx, qword ptr [rsp + 0x130]
	mov	rdx, qword ptr [rsp + 0x118]
	nop	
	jmp	.label_1729
.label_3738:
	nop	
	cmp	r15, rbp
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x118]
	lea	rsi, [rsi]
	jge	.label_1775
.label_1790:
	movzx	eax, byte ptr [rcx + r15]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + rax]
	mov	rbp, rbp
	cmp	byte ptr [r14 + rax], 0
	mov	rsp, rsp
	jne	.label_1775
	nop	
	inc	r15
	nop	
	mov	qword ptr [rsp + 0xa8], r15
	cmp	r15, rbp
	nop	
	jl	.label_1790
	mov	rbp, rbp
	jmp	.label_1775
.label_1762:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x168]
	nop	
	jmp	.label_1795
	nop	dword ptr [rax]
.label_1838:
	lea	rsi, [rsi]
	add	r15, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0xa8], r15
	mov	rbp, rbp
	cmp	r15, r13
	lea	rdi, [rdi]
	mov	r12d, 1
	lea	rsi, [rsi]
	jl	.label_1724
	cmp	r15, rbp
	lea	rdi, [rdi]
	jle	.label_1795
	lea	rdi, [rdi]
	jmp	.label_1724
.label_1825:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x140]
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	edx, dword ptr [rsp + 0x2b0]
	call	re_string_reconstruct
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_1724
	mov	r15, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x168]
	mov	rcx, r15
	sub	rcx, rax
	jmp	.label_1818
	nop	
.label_1795:
	lea	rdi, [rdi]
	mov	rcx, r15
	sub	rcx, rax
	nop	
	cmp	rcx, qword ptr [rsp + 0x178]
	mov	rbp, rbp
	jae	.label_1825
.label_1818:
	mov	rdx, qword ptr [rsp + 0x130]
	nop	
	cmp	r15, rdx
	lea	rsi, [rsi]
	mov	edx, 0
	jge	.label_1908
	mov	rdx, qword ptr [rsp + 0x148]
	mov	rsp, rsp
	movzx	edx, byte ptr [rdx + rcx]
.label_1908:
	nop	
	cmp	byte ptr [r14 + rdx], 0
	je	.label_1838
	jmp	.label_1844
.label_3737:
	cmp	r15, rbp
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x118]
	jge	.label_1775
	nop	dword ptr [rax]
.label_1851:
	movzx	eax, byte ptr [rcx + r15]
	cmp	byte ptr [r14 + rax], 0
	mov	rbp, rbp
	jne	.label_1775
	inc	r15
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa8], r15
	nop	
	cmp	r15, rbp
	mov	rsp, rsp
	jl	.label_1851
.label_1775:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x118], rcx
	mov	rbp, rbp
	cmp	r15, rbp
	nop	
	jne	.label_1844
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x130]
	cmp	rbp, rcx
	mov	rcx, qword ptr [rsp + 0x118]
	jge	.label_1857
	mov	rbp, rbp
	movzx	eax, byte ptr [rcx + rbp]
.label_1857:
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1864
	nop	
	movzx	eax, byte ptr [rbx + rax]
.label_1864:
	mov	rsp, rsp
	mov	r12d, 1
	mov	rsp, rsp
	cmp	byte ptr [r14 + rax], 0
	mov	rsp, rsp
	mov	r15, rbp
	jne	.label_1844
	jmp	.label_1724
.label_1768:
	mov	rbp, rbp
	test	rbx, rbx
	nop	
	mov	rcx, qword ptr [rsp + 0x130]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x118]
	je	.label_1872
	nop	word ptr [rax + rax]
.label_1808:
	mov	rbp, rbp
	cmp	r15, rcx
	lea	rdi, [rdi]
	mov	eax, 0
	jge	.label_1876
	nop	
	movzx	eax, byte ptr [rdx + r15]
.label_1876:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx + rax]
	cmp	byte ptr [r14 + rax], 0
	jne	.label_1843
	nop	
	lea	rax, [r15 - 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r15, r13
	mov	r15, rax
	lea	rsi, [rsi]
	jg	.label_1808
	nop	
	jmp	.label_1729
.label_1872:
	mov	rsp, rsp
	cmp	r15, rcx
	mov	eax, 0
	nop	
	jge	.label_1887
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rdx + r15]
.label_1887:
	nop	
	cmp	byte ptr [r14 + rax], 0
	jne	.label_1890
	lea	rax, [r15 - 1]
	mov	qword ptr [rsp + 0xa8], rax
	mov	rsp, rsp
	cmp	r15, r13
	mov	r15, rax
	jg	.label_1872
	jmp	.label_1729
.label_1843:
	lea	rdi, [rdi]
	mov	rax, r15
	jmp	.label_1729
.label_1890:
	lea	rsi, [rsi]
	mov	rax, r15
.label_1729:
	mov	qword ptr [rsp + 0x118], rdx
	mov	qword ptr [rsp + 0x130], rcx
	lea	rdi, [rdi]
	mov	r12d, 1
	cmp	rax, r13
	mov	r15, rax
	jl	.label_1724
.label_1844:
	nop	
	lea	rdi, [rsp + 0x140]
	mov	rsi, r15
	mov	edx, dword ptr [rsp + 0x2b0]
	mov	rsp, rsp
	call	re_string_reconstruct
	nop	
	mov	r12d, eax
	mov	rbp, rbp
	test	r12d, r12d
	je	.label_1847
	jmp	.label_1724
.label_1759:
	cmp	eax, 0xc
	jne	.label_1905
.label_1750:
	mov	r12d, 0xc
.label_1724:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x1f8]
	call	free
	mov	rax, qword ptr [rsp + 0x260]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1912
	nop	
	lea	rdi, [rsp + 0x140]
	call	match_ctx_clean
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x238]
	call	free
	mov	rdi, qword ptr [rsp + 0x218]
	nop	
	call	free
.label_1912:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x150]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x158]
	mov	rsp, rsp
	call	free
	cmp	byte ptr [rsp + 0x1cb], 0
	mov	rbp, rbp
	je	.label_1736
	mov	rdi, qword ptr [rsp + 0x148]
	call	free
.label_1736:
	lea	rsi, [rsi]
	mov	eax, r12d
	mov	rsp, rsp
	add	rsp, 0x268
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_1909:
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0xf4], 0xc
	mov	rbp, rbp
	je	.label_1750
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.25
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.22_1
	mov	rsp, rsp
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_1895:
	lea	rsi, [rsi]
	xor	r15d, r15d
	jmp	.label_1763
.label_1893:
	mov	rdi, qword ptr [rsp + 0x1f8]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x128]
	mov	qword ptr [rsp + 0x1f8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x1f0], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x1e8], rbp
	mov	rbp, qword ptr [rsp + 0x260]
	mov	r9, qword ptr [rsp + 0x98]
	mov	rbx, qword ptr [rsp + 0xe8]
.label_1730:
	mov	rsp, rsp
	cmp	r9, qword ptr [rsp + 0x2a0]
	lea	r13, [rsp + 0x178]
	jne	.label_1787
	mov	qword ptr [rsp + 0x260], rbp
	nop	
	xor	r12d, r12d
	jmp	.label_1724
.label_1787:
	mov	r8, rbx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x260], rbp
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x248], 2
	nop	
	jb	.label_1794
	mov	rsi, qword ptr [rsp + 0x2a0]
	nop	
	lea	edx, [rsi + 7]
	sub	edx, r9d
	lea	rax, [rsi - 2]
	sub	rax, r9
	mov	ecx, 1
	test	dl, 7
	je	.label_1748
	mov	rcx, qword ptr [rsp + 0x2a8]
	lea	rdx, [rcx + 0x10]
	lea	esi, [rsi + 7]
	sub	esi, r9d
	mov	rbp, rbp
	and	esi, 7
	lea	rdi, [rdi]
	xor	edi, edi
.label_1810:
	mov	rcx, rdi
	mov	qword ptr [rdx + 8], -1
	nop	
	mov	qword ptr [rdx], -1
	nop	
	lea	rdi, [rcx + 1]
	add	rdx, 0x10
	nop	
	cmp	rsi, rdi
	jne	.label_1810
	add	rcx, 2
.label_1748:
	cmp	rax, 7
	lea	rdi, [rdi]
	jb	.label_1794
	mov	rax, qword ptr [rsp + 0x2a0]
	sub	rax, r9
	sub	rax, rcx
	lea	rdi, [rdi]
	shl	rcx, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x2a8]
	mov	rsp, rsp
	lea	rcx, [rcx + rdx + 0x70]
.label_1797:
	mov	qword ptr [rcx - 0x68], -1
	lea	rdi, [rdi]
	mov	qword ptr [rcx - 0x70], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 0x58], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 0x60], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 0x48], -1
	lea	rsi, [rsi]
	mov	qword ptr [rcx - 0x50], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 0x38], -1
	mov	rbp, rbp
	mov	qword ptr [rcx - 0x40], -1
	nop	
	mov	qword ptr [rcx - 0x28], -1
	mov	qword ptr [rcx - 0x30], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 0x18], -1
	nop	
	mov	qword ptr [rcx - 0x20], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 8], -1
	mov	qword ptr [rcx - 0x10], -1
	mov	qword ptr [rcx + 8], -1
	mov	rbp, rbp
	mov	qword ptr [rcx], -1
	nop	
	add	rcx, 0x80
	lea	rdi, [rdi]
	add	rax, -8
	jne	.label_1797
.label_1794:
	mov	rbp, r9
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x2a8]
	nop	
	mov	rcx, rax
	mov	qword ptr [rcx], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x1e8]
	mov	qword ptr [rcx + 8], rax
	mov	r14, rcx
	cmp	qword ptr [rsp + 0x248], 2
	mov	rsp, rsp
	jb	.label_1866
	lea	rsi, [rsi]
	mov	al, byte ptr [r8 + 0x38]
	mov	rsp, rsp
	and	al, 0x10
	nop	
	jne	.label_1866
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x260]
	test	byte ptr [rax + 0xb0], 1
	lea	rsi, [rsi]
	jne	.label_1879
	xor	eax, eax
	jmp	.label_1883
.label_1854:
	mov	rax, r12
	mov	qword ptr [rsp + 0x110], rax
.label_1782:
	mov	rdi, qword ptr [rsp + 0x110]
	call	free
	lea	rsi, [rsi]
	mov	rdi, r15
	call	free
	lea	rsi, [rsi]
	jmp	.label_1750
.label_1879:
	cmp	qword ptr [rax + 0x98], 0
	nop	
	setg	al
.label_1883:
	mov	rdi, qword ptr [r8]
	mov	rbp, rbp
	movzx	r8d, al
	lea	rsi, [rsp + 0x140]
	mov	rdx, qword ptr [rsp + 0x248]
	nop	
	mov	rcx, r14
	mov	rsp, rsp
	call	set_regs
	lea	rsi, [rsi]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1724
.label_1866:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0x1cc], 0
	jne	.label_1899
	mov	rax, qword ptr [rsp + 0xa8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x2a0]
	mov	rbx, rbp
	mov	rsp, rsp
	sub	ecx, ebx
	lea	rdi, [rdi]
	xor	edx, edx
	test	cl, 1
	mov	r8, qword ptr [rsp + 0x260]
	nop	
	je	.label_1811
	mov	rcx, qword ptr [r14]
	mov	rbp, rbp
	mov	edx, 1
	mov	rsp, rsp
	cmp	rcx, -1
	je	.label_1811
	add	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [r14], rcx
	lea	rsi, [rsi]
	add	qword ptr [r14 + 8], rax
	mov	edx, 1
.label_1811:
	cmp	qword ptr [rsp + 0xc0], rbx
	je	.label_1915
	mov	rcx, qword ptr [rsp + 0x2a0]
	lea	rdi, [rdi]
	sub	rcx, rbx
	sub	rcx, rdx
	shl	rdx, 4
	lea	rdx, [rdx + r14 + 0x18]
.label_1829:
	mov	rsi, qword ptr [rdx - 0x18]
	cmp	rsi, -1
	je	.label_1723
	add	rsi, rax
	mov	qword ptr [rdx - 0x18], rsi
	add	qword ptr [rdx - 0x10], rax
.label_1723:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rdx - 8]
	mov	rsp, rsp
	cmp	rsi, -1
	je	.label_1779
	mov	rsp, rsp
	add	rsi, rax
	mov	qword ptr [rdx - 8], rsi
	add	qword ptr [rdx], rax
.label_1779:
	lea	rsi, [rsi]
	add	rdx, 0x20
	nop	
	add	rcx, -2
	mov	rsp, rsp
	jne	.label_1829
.label_1915:
	lea	rsi, [rsi]
	test	rbx, rbx
	jle	.label_1739
	lea	rsi, [rsi]
	lea	rcx, [rbx - 1]
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	test	bl, 3
	mov	rsp, rsp
	je	.label_1745
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x2a0]
	sub	rdx, rbx
	lea	rdi, [rdi]
	shl	rdx, 4
	add	rdx, r14
	mov	esi, ebx
	mov	rsp, rsp
	and	esi, 3
	nop	
	xor	eax, eax
.label_1727:
	inc	rax
	mov	qword ptr [rdx + 8], -1
	mov	qword ptr [rdx], -1
	mov	rsp, rsp
	add	rdx, 0x10
	lea	rsi, [rsi]
	cmp	rsi, rax
	jne	.label_1727
.label_1745:
	lea	rdi, [rdi]
	cmp	rcx, 3
	mov	rbp, rbp
	jb	.label_1739
	lea	rdi, [rdi]
	mov	rcx, rbx
	sub	rcx, rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x2a0]
	sub	rdx, rbx
	shl	rdx, 4
	add	rdx, r14
	shl	rax, 4
	add	rax, rdx
	mov	rbp, rbp
	xor	edx, edx
.label_1776:
	nop	
	mov	qword ptr [rax + rdx + 8], -1
	nop	
	mov	qword ptr [rax + rdx], -1
	mov	rbp, rbp
	mov	qword ptr [rax + rdx + 0x18], -1
	nop	
	mov	qword ptr [rax + rdx + 0x10], -1
	mov	qword ptr [rax + rdx + 0x28], -1
	mov	qword ptr [rax + rdx + 0x20], -1
	mov	rbp, rbp
	mov	qword ptr [rax + rdx + 0x38], -1
	mov	qword ptr [rax + rdx + 0x30], -1
	add	rdx, 0x40
	lea	rdi, [rdi]
	add	rcx, -4
	lea	rsi, [rsi]
	jne	.label_1776
.label_1739:
	mov	rbp, rbp
	mov	rax, qword ptr [r8 + 0xe0]
	mov	qword ptr [rsp + 0x260], r8
	test	rax, rax
	je	.label_1800
	cmp	qword ptr [rsp + 0x248], 2
	mov	r12d, 0
	nop	
	jb	.label_1724
	sub	qword ptr [rsp + 0xc0], rbx
	mov	rbp, rbp
	lea	rcx, [r14 + 0x18]
	mov	rsp, rsp
	xor	edx, edx
	xor	r12d, r12d
.label_1827:
	mov	rsi, qword ptr [rax + rdx*8]
	mov	rsp, rsp
	cmp	rdx, rsi
	je	.label_1809
	mov	rsp, rsp
	shl	rsi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + r14 + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx - 8], rsi
	nop	
	mov	rsi, qword ptr [rsp + 0x260]
	nop	
	mov	rsi, qword ptr [rsi + 0xe0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx], rsi
.label_1809:
	inc	rdx
	mov	rsp, rsp
	add	rcx, 0x10
	nop	
	cmp	qword ptr [rsp + 0xc0], rdx
	mov	rbp, rbp
	jne	.label_1827
	mov	rbp, rbp
	jmp	.label_1724
.label_1800:
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_1724
.label_1899:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x158]
	lea	rdi, [rdi]
	lea	rcx, [r14 + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x248]
	nop	
	mov	r8, qword ptr [rsp + 0x260]
	mov	rbx, rbp
.label_1862:
	mov	rsi, qword ptr [rcx - 8]
	cmp	rsi, -1
	lea	rsi, [rsi]
	je	.label_1806
	nop	
	mov	rdi, qword ptr [rsp + 0x170]
	cmp	rsi, rdi
	lea	rsi, [rax + rsi*8]
	cmove	rsi, r13
	mov	rsi, qword ptr [rsi]
	mov	rsp, rsp
	mov	qword ptr [rcx - 8], rsi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rcx]
	cmp	rbp, rdi
	mov	rbp, rbp
	lea	rdi, [rax + rbp*8]
	cmove	rdi, r13
	mov	rbp, qword ptr [rsp + 0xa8]
	add	rsi, rbp
	mov	rsp, rsp
	add	rbp, qword ptr [rdi]
	mov	qword ptr [rcx - 8], rsi
	mov	rsp, rsp
	mov	qword ptr [rcx], rbp
.label_1806:
	lea	rsi, [rsi]
	add	rcx, 0x10
	dec	rdx
	mov	rsp, rsp
	jne	.label_1862
	jmp	.label_1915
.label_1905:
	mov	edi, OFFSET FLAT:.str.25
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.22_1
	nop	
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41aed0
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
	#Procedure 0x41af00

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
	mov	r15, rcx
	mov	rbx, rdi
	test	r15, r15
	mov	rsp, rsp
	mov	rbp, -1
	mov	rsp, rsp
	js	.label_1917
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rsi
	mov	qword ptr [rsp + 0x40], r9
	nop	
	cmp	r15, rdx
	nop	
	jg	.label_1917
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	xor	r12d, r12d
	add	r8, r15
	cmovns	r12, r8
	cmp	r8, rdx
	cmovg	r12, rdx
	mov	qword ptr [rsp + 0x38], rdx
	mov	rsp, rsp
	movzx	r13d, byte ptr [rbx + 0x38]
	lea	rdi, [rdi]
	cmp	r12, r15
	mov	al, r13b
	mov	rbp, rbp
	jle	.label_1918
	lea	rdi, [rdi]
	test	r13b, 8
	mov	al, r13b
	jne	.label_1918
	nop	
	mov	rbp, qword ptr [rbx + 0x20]
	test	rbp, rbp
	mov	al, r13b
	je	.label_1918
	mov	r14, qword ptr [rbx]
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rbp + 0xf0], xmm0
	movups	xmmword ptr [rbp + 0xe0], xmm0
	nop	
	movups	xmmword ptr [rbp + 0xd0], xmm0
	movups	xmmword ptr [rbp + 0xc0], xmm0
	movups	xmmword ptr [rbp + 0xb0], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbp + 0xa0], xmm0
	movups	xmmword ptr [rbp + 0x90], xmm0
	movups	xmmword ptr [rbp + 0x80], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rbp + 0x70], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbp + 0x60], xmm0
	nop	
	movups	xmmword ptr [rbp + 0x50], xmm0
	movups	xmmword ptr [rbp + 0x40], xmm0
	nop	
	movups	xmmword ptr [rbp + 0x30], xmm0
	movups	xmmword ptr [rbp + 0x20], xmm0
	movups	xmmword ptr [rbp + 0x10], xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	rsi, qword ptr [r14 + 0x48]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r14 + 0x50]
	nop	
	cmp	rax, rsi
	nop	
	je	.label_1927
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rdx, rbp
	nop	
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r14 + 0x48]
.label_1927:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r14 + 0x58]
	lea	rsi, [rsi]
	cmp	rax, rsi
	mov	rsp, rsp
	je	.label_1935
	lea	rdi, [rdi]
	mov	rdi, rbx
	nop	
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r14 + 0x48]
.label_1935:
	mov	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x60]
	lea	rdi, [rdi]
	cmp	rax, rsi
	je	.label_1943
	mov	rdi, rbx
	mov	rdx, rbp
	call	re_compile_fastmap_iter
.label_1943:
	mov	al, byte ptr [rbx + 0x38]
	nop	
	or	al, 8
	mov	rsp, rsp
	mov	byte ptr [rbx + 0x38], al
	mov	rsi, qword ptr [rsp + 0x80]
.label_1918:
	xor	edx, edx
	test	rsi, rsi
	mov	rsp, rsp
	mov	r14d, 1
	lea	rdi, [rdi]
	je	.label_1924
	lea	rsi, [rsi]
	mov	cl, al
	and	cl, 0x10
	nop	
	jne	.label_1924
	mov	rsp, rsp
	and	al, 6
	mov	rbp, rbp
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 4
	lea	rdi, [rdi]
	jne	.label_1942
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	mov	r14, qword ptr [rbx + 0x30]
	nop	
	cmp	rax, r14
	ja	.label_1937
	xor	ecx, ecx
	test	rax, rax
	mov	rbp, rbp
	cmovle	rsi, rcx
	lea	rdi, [rdi]
	mov	r14d, 1
	lea	rdi, [rdi]
	cmovg	r14, rax
	mov	rsp, rsp
	jmp	.label_1940
.label_1942:
	mov	r14, qword ptr [rbx + 0x30]
.label_1937:
	inc	r14
.label_1940:
	mov	rdx, rsi
.label_1924:
	mov	qword ptr [rsp + 0x28], rdx
	mov	rsp, rsp
	mov	rdi, r14
	shl	rdi, 4
	call	malloc
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, -2
	test	rax, rax
	nop	
	mov	rdx, qword ptr [rsp + 0x38]
	je	.label_1917
	lea	rsi, [rsi]
	mov	cl, r13b
	shr	cl, 5
	nop	
	and	cl, 1
	and	r13d, 0x40
	movzx	ecx, cl
	mov	rsp, rsp
	shr	r13d, 5
	lea	rdi, [rdi]
	or	r13d, ecx
	mov	dword ptr [rsp + 0x10], r13d
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	r13, rax
	mov	qword ptr [rsp], r14
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	mov	rcx, r15
	mov	r8, r12
	lea	rdi, [rdi]
	mov	rbp, rdi
	mov	r9, qword ptr [rsp + 0x40]
	call	re_search_internal
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_1920
	lea	rdi, [rdi]
	cmp	eax, 1
	lea	rsi, [rsi]
	sete	al
	movzx	ebp, al
	mov	rbp, rbp
	or	rbp, 0xfffffffffffffffe
	jmp	.label_1923
.label_1920:
	mov	qword ptr [rsp + 0x38], r15
	mov	rbx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_1929
	mov	r8, rbp
	mov	al, byte ptr [r8 + 0x38]
	shr	al, 1
	mov	rsp, rsp
	and	al, 3
	mov	rsp, rsp
	movzx	eax, al
	nop	
	cmp	eax, 2
	je	.label_1936
	lea	r15, [r14 + 1]
	cmp	eax, 1
	mov	rsp, rsp
	je	.label_1941
	mov	qword ptr [rsp + 0x30], r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], r8
	test	eax, eax
	jne	.label_1945
	lea	r13, [r15*8]
	mov	rdi, r13
	call	malloc
	mov	r12, rax
	mov	qword ptr [rbx + 8], r12
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rdi, [rdi]
	test	r12, r12
	je	.label_1925
	mov	rdi, r13
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1921
	mov	qword ptr [rbx], r15
	lea	rdi, [rdi]
	mov	r12d, 1
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x40]
	mov	r13, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	jmp	.label_1933
.label_1936:
	mov	r15, qword ptr [rbx]
	mov	r12d, 2
	cmp	r15, r14
	mov	rbp, rbp
	jae	.label_1933
	mov	edi, OFFSET FLAT:.str.24_0
	nop	
	mov	esi, OFFSET FLAT:.str.22_1
	lea	rsi, [rsi]
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	lea	rdi, [rdi]
	call	__assert_fail
.label_1941:
	mov	rax, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	r12d, 1
	lea	rdi, [rdi]
	cmp	r15, rax
	ja	.label_1930
	mov	rbp, rbp
	mov	r15, rax
.label_1933:
	mov	rsp, rsp
	test	r14, r14
	jle	.label_1931
	mov	rdx, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x10]
	xor	esi, esi
	test	r14b, 1
	mov	rbp, rbp
	je	.label_1934
	mov	rax, qword ptr [r13]
	mov	rsp, rsp
	mov	qword ptr [rdx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	esi, 1
.label_1934:
	mov	rsp, rsp
	cmp	r14, 1
	je	.label_1939
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	sub	rax, rsi
	nop	
	lea	rcx, [rcx + rsi*8 + 8]
	lea	rdx, [rdx + rsi*8 + 8]
	lea	rsi, [rsi]
	shl	rsi, 4
	lea	rsi, [rsi + r13 + 0x18]
	nop	word ptr cs:[rax + rax]
.label_1926:
	mov	rbp, rbp
	mov	rbp, qword ptr [rsi - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rdx - 8], rbp
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsi - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx - 8], rbp
	mov	rbp, qword ptr [rsi - 8]
	mov	rbp, rbp
	mov	qword ptr [rdx], rbp
	mov	rsp, rsp
	mov	rbp, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rcx], rbp
	add	rcx, 0x10
	add	rsi, 0x20
	add	rdx, 0x10
	lea	rsi, [rsi]
	add	rax, -2
	jne	.label_1926
.label_1939:
	nop	
	mov	r15, qword ptr [rbx]
	lea	rdi, [rdi]
	jmp	.label_1944
.label_1931:
	lea	rsi, [rsi]
	xor	r14d, r14d
.label_1944:
	cmp	r14, r15
	mov	rbp, rbp
	jae	.label_1919
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x10]
	nop	dword ptr [rax]
.label_1932:
	mov	rbp, rbp
	mov	qword ptr [rcx + r14*8], -1
	mov	rbp, rbp
	mov	qword ptr [rax + r14*8], -1
	nop	
	inc	r14
	cmp	r14, qword ptr [rbx]
	jb	.label_1932
.label_1919:
	mov	ebp, r12d
.label_1928:
	mov	al, byte ptr [r8 + 0x38]
	mov	rsp, rsp
	add	bpl, bpl
	lea	rsi, [rsi]
	and	al, 0xf9
	lea	rsi, [rsi]
	mov	cl, bpl
	lea	rsi, [rsi]
	and	cl, 6
	lea	rdi, [rdi]
	or	cl, al
	and	bpl, 6
	mov	rbp, rbp
	mov	byte ptr [r8 + 0x38], cl
	nop	
	mov	rbp, -2
	mov	rsp, rsp
	je	.label_1923
.label_1929:
	lea	rdi, [rdi]
	mov	al, byte ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rbp, qword ptr [r13]
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	je	.label_1923
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rbp, rax
	jne	.label_1946
	mov	rbp, qword ptr [r13 + 8]
	mov	rbp, rbp
	sub	rbp, rax
.label_1923:
	mov	rdi, r13
	mov	rsp, rsp
	call	free
.label_1917:
	mov	rax, rbp
	add	rsp, 0x48
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_1930:
	mov	qword ptr [rsp + 0x40], r8
	nop	
	mov	rdi, qword ptr [rbx + 8]
	lea	rsi, [r15*8]
	mov	qword ptr [rsp + 0x30], rsi
	call	realloc
	xor	ebp, ebp
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_1938
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x30]
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1922
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx], r15
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	jmp	.label_1933
.label_1921:
	lea	rsi, [rsi]
	mov	rdi, r12
	nop	
	call	free
.label_1925:
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x30]
	jmp	.label_1928
.label_1938:
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	jmp	.label_1928
.label_1922:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	jmp	.label_1928
.label_1945:
	mov	edi, OFFSET FLAT:.str.23
	mov	esi, OFFSET FLAT:.str.22_1
	lea	rsi, [rsi]
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	lea	rdi, [rdi]
	call	__assert_fail
.label_1946:
	nop	
	mov	edi, OFFSET FLAT:.str.21_1
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.22_1
	mov	edx, 0x1be
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	nop	
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b560
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
	#Procedure 0x41b590
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
	js	.label_1949
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	nop	
	js	.label_1952
	sub	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, r14
	jl	.label_1949
	lea	rsi, [rsi]
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1947
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	mov	rbp, rbp
	jle	.label_1951
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
	je	.label_1949
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
	jmp	.label_1947
.label_1952:
	mov	rbp, rbp
	inc	rax
	sub	rax, rbx
	mov	rsp, rsp
	cmp	rax, r14
	jle	.label_1948
.label_1949:
	mov	rsp, rsp
	mov	rax, -2
	jmp	.label_1950
.label_1948:
	nop	
	add	rbx, r14
	lea	rdi, [rdi]
	xor	r12d, r12d
	nop	
	mov	rdx, rbx
	jmp	.label_1947
.label_1951:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x10]
.label_1947:
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
.label_1950:
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
	#Procedure 0x41b740
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
	js	.label_1953
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	lea	rsi, [rsi]
	js	.label_1956
	mov	rbp, rbp
	sub	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, r14
	jl	.label_1953
	nop	
	lea	rdx, [rbx + r14]
	lea	rsi, [rsi]
	xor	r12d, r12d
	test	rbx, rbx
	nop	
	jle	.label_1957
	nop	
	mov	qword ptr [rsp + 0x20], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r9
	mov	rsp, rsp
	xor	r12d, r12d
	test	r14, r14
	lea	rdi, [rdi]
	jle	.label_1954
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_1953
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
	jmp	.label_1957
.label_1956:
	inc	rax
	lea	rdi, [rdi]
	sub	rax, rbx
	cmp	rax, r14
	mov	rbp, rbp
	jle	.label_1958
.label_1953:
	mov	rbp, rbp
	mov	rax, -2
	jmp	.label_1955
.label_1958:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	mov	rsp, rsp
	jmp	.label_1957
.label_1954:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
.label_1957:
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
.label_1955:
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
	#Procedure 0x41b8e0
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
	je	.label_1959
	lea	rsi, [rsi]
	mov	al, r9b
.label_1959:
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
	#Procedure 0x41b920

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
	je	.label_1960
	mov	rdi, qword ptr [rax + 0x10]
	mov	rbp, rbp
	call	free
	nop	
	mov	rdi, qword ptr [rbx + 0x50]
	lea	rsi, [rsi]
	call	free
.label_1960:
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
	#Procedure 0x41b9a0

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
	jne	.label_2002
	cmp	qword ptr [r12 + 0x78], 0
	jne	.label_2002
	cmp	byte ptr [r12 + 0x8c], 0
	lea	rsi, [rsi]
	je	.label_2017
.label_2002:
	mov	rbp, rbp
	mov	rbx, qword ptr [r12 + 0x38]
	jmp	.label_1964
.label_2017:
	cmp	r13, r15
	mov	rsp, rsp
	jle	.label_1961
	lea	rax, [r12 + 0x78]
	nop	
	mov	qword ptr [rsp + 0x60], rax
	nop	
	lea	r14, [r12 + 0x20]
	jmp	.label_1965
.label_2005:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	lea	rsi, [rsi]
	jb	.label_1973
	lea	rdi, [rdi]
	cmp	rbp, -2
	jne	.label_1977
	nop	
	mov	rax, qword ptr [r12 + 0x40]
	nop	
	cmp	rax, qword ptr [r12 + 0x58]
	mov	rbp, rbp
	jl	.label_1977
.label_1973:
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
	je	.label_1986
.label_2000:
	mov	rax, r15
	jmp	.label_1972
.label_1986:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
	jmp	.label_2000
	nop	word ptr cs:[rax + rax]
.label_1965:
	nop	
	mov	qword ptr [rsp + 0x50], r13
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r12]
	mov	rbx, qword ptr [r12 + 0x28]
	mov	rsp, rsp
	lea	rax, [rbx + r15]
	movzx	r13d, byte ptr [rbp + rax]
	test	r13b, r13b
	js	.label_2003
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	call	mbsinit
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_2003
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
	jmp	.label_1972
	nop	word ptr cs:[rax + rax]
.label_2003:
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
	ja	.label_2005
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsp, rsp
	call	towupper
	lea	rdi, [rdi]
	mov	ebx, eax
	lea	rsi, [rsi]
	cmp	ebx, dword ptr [rsp + 0xc]
	nop	
	jne	.label_1999
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
	jmp	.label_2012
.label_1999:
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
	jne	.label_2018
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
.label_2012:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	mov	rsp, rsp
	cmp	rax, rbx
	nop	
	jge	.label_1972
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
.label_1972:
	lea	rdi, [rdi]
	cmp	r13, rax
	mov	r15, rax
	mov	rbp, rbp
	jg	.label_1965
	jmp	.label_1993
.label_2018:
	mov	rbx, r15
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	jmp	.label_1994
.label_1977:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	mov	qword ptr [r14], rax
.label_1961:
	lea	rsi, [rsi]
	mov	rax, r15
.label_1993:
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x30], rax
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x38], rax
	jmp	.label_2009
.label_1964:
	cmp	r15, r13
	jge	.label_2006
	lea	r14, [r12 + 0x20]
	lea	rdi, [rdi]
	lea	rcx, [r12 + 0x78]
.label_1994:
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
	jne	.label_2011
	mov	rbp, qword ptr [r12]
	mov	rbp, rbp
	add	rbp, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	add	rbp, rbx
.label_1963:
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
	ja	.label_1968
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x50], r13
	nop	
	mov	edi, dword ptr [rsp + 8]
	mov	rsp, rsp
	call	towupper
	lea	rdi, [rdi]
	mov	r13d, eax
	cmp	r13d, dword ptr [rsp + 8]
	je	.label_1984
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
	jne	.label_1992
	mov	rdi, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	add	rdi, r15
	lea	rsi, [rsp + 0x10]
	jmp	.label_1997
.label_2011:
	mov	rsp, rsp
	lea	rbp, [rsp + 0x10]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [r12 + 0x90]
	test	rcx, rcx
	nop	
	jle	.label_1963
	lea	rsi, [rsi]
	mov	r8, rbx
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_2015:
	cmp	rsi, rdx
	jge	.label_2013
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
	jl	.label_2015
	mov	rbx, r8
	nop	
	jmp	.label_1963
.label_1968:
	lea	rsi, [rsi]
	lea	rax, [r14 + 1]
	cmp	rax, 2
	lea	rsi, [rsi]
	jb	.label_1966
	lea	rsi, [rsi]
	cmp	r14, -2
	jne	.label_1970
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [r12 + 0x58]
	jl	.label_1970
.label_1966:
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
	jne	.label_1981
.label_1971:
	movzx	eax, al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + r15], al
	lea	rsi, [rsi]
	cmp	byte ptr [r12 + 0x8c], 0
	mov	rbp, rbp
	jne	.label_1988
.label_1975:
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
	je	.label_1990
.label_1980:
	mov	rbp, r15
	nop	
	jmp	.label_1964
.label_1992:
	lea	rsi, [rsi]
	cmp	r8, -1
	je	.label_1984
	lea	rbp, [r8 + r15]
	mov	rdi, qword ptr [r12 + 0x40]
	cmp	rbp, rdi
	jbe	.label_2010
.label_1970:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
.label_2006:
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x30], r15
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x38], rbx
.label_2009:
	xor	eax, eax
.label_1987:
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
.label_1984:
	mov	rbp, rbp
	mov	rdi, qword ptr [r12 + 8]
	nop	
	add	rdi, r15
	nop	
	mov	rsi, rbp
.label_1997:
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	
	call	memcpy
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + 0x8c], 0
	lea	rsi, [rsi]
	je	.label_1976
	mov	rax, qword ptr [r12 + 0x18]
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	cmp	r14, 4
	mov	rbp, rbp
	jb	.label_1982
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	mov	rcx, r14
	mov	rbp, rbp
	and	rcx, 0xfffffffffffffffc
	je	.label_1982
	movq	xmm0, rbx
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [r14 - 4]
	mov	rsi, rdi
	mov	rsp, rsp
	shr	rsi, 2
	xor	edx, edx
	bt	rdi, 2
	nop	
	jb	.label_1991
	lea	rdi, [rdi]
	mov	edx, 1
	movq	xmm1, rdx
	nop	
	pslldq	xmm1, 8
	mov	rsp, rsp
	paddq	xmm1, xmm0
	lea	rdi, [rdi]
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_1586]]
	paddq	xmm2, xmm0
	movdqu	xmmword ptr [rax + r15*8], xmm1
	movdqu	xmmword ptr [rax + r15*8 + 0x10], xmm2
	mov	edx, 4
.label_1991:
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_2014
	lea	rsi, [rax + r15*8 + 0x30]
	lea	rdi, [rdi]
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	lea	rsi, [rsi]
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_1586]]
	nop	
.label_1962:
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
	jne	.label_1962
.label_2014:
	mov	rsp, rsp
	cmp	r14, rcx
	nop	
	mov	rsi, rcx
	nop	
	je	.label_1976
.label_1982:
	mov	rcx, r14
	lea	rsi, [rsi]
	sub	rcx, rsi
	lea	rdx, [rsi + rbx]
	nop	
	add	rsi, r15
	lea	rax, [rax + rsi*8]
	nop	word ptr cs:[rax + rax]
.label_2008:
	mov	rsp, rsp
	mov	qword ptr [rax], rdx
	mov	rbp, rbp
	inc	rdx
	lea	rdi, [rdi]
	add	rax, 8
	dec	rcx
	mov	rsp, rsp
	jne	.label_2008
.label_1976:
	add	rbx, r14
	nop	
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax + r15*4], r13d
	lea	rbp, [r14 + r15]
	inc	r15
	mov	rsp, rsp
	cmp	r15, rbp
	jge	.label_2007
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
	jmp	.label_1964
.label_2007:
	mov	rbp, rbp
	mov	rbp, r15
	nop	
	mov	r13, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	jmp	.label_1964
.label_2013:
	mov	rbx, r8
	jmp	.label_1963
.label_2010:
	mov	rax, qword ptr [r12 + 0x18]
	test	rax, rax
	mov	rbp, rbp
	jne	.label_1974
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
	je	.label_1985
.label_1974:
	mov	qword ptr [rsp + 0x58], rcx
	cmp	byte ptr [r12 + 0x8c], 0
	mov	rbp, rbp
	jne	.label_1989
	nop	
	test	r15, r15
	je	.label_1996
	mov	rbp, rbp
	xor	edx, edx
	cmp	r15, 4
	nop	
	jb	.label_1998
	mov	rbp, rbp
	xor	edx, edx
	nop	
	mov	rcx, r15
	and	rcx, 0xfffffffffffffffc
	je	.label_1998
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
	jb	.label_2004
	mov	edx, 1
	movq	xmm0, rdx
	pslldq	xmm0, 8
	nop	
	movdqu	xmmword ptr [rax], xmm0
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_1586]]
	movdqu	xmmword ptr [rax + 0x10], xmm0
	nop	
	mov	edx, 4
.label_2004:
	lea	rsi, [rsi]
	test	rsi, rsi
	nop	
	je	.label_2019
	mov	rsp, rsp
	mov	esi, 1
	movq	xmm0, rsi
	pslldq	xmm0, 8
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_1586]]
.label_1969:
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
	jne	.label_1969
.label_2019:
	cmp	r15, rcx
	lea	rdi, [rdi]
	mov	rdx, rcx
	je	.label_1996
.label_1998:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_1998
.label_1996:
	mov	byte ptr [r12 + 0x8c], 1
.label_1989:
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
	jb	.label_2001
	mov	r9, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r12 + 0x18]
	lea	r10, [rdi - 1]
	mov	eax, 1
	lea	rsi, [rsi]
	cmp	r10, 4
	mov	rsp, rsp
	jb	.label_1967
	mov	rbp, rbp
	mov	rcx, r10
	and	rcx, 0xfffffffffffffffc
	lea	rsi, [rsi]
	mov	r13, r10
	and	r13, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_1967
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
	movdqa	xmm8,  xmmword ptr [word ptr [rip + label_1586]]
	movdqa	xmm9,  xmmword ptr [word ptr [rip + label_1978]]
	mov	rsp, rsp
	pxor	xmm3, xmm9
	pshufd	xmm6,  xmmword ptr [word ptr [rip + label_1979]],  0xe8
.label_1983:
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
	jne	.label_1983
	mov	rbp, rbp
	cmp	r10, r13
	lea	rdi, [rdi]
	mov	rbx, r11
	mov	r11, rdi
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	je	.label_2001
.label_1967:
	lea	rsi, [rsi]
	lea	rcx, [r9 + r15*4]
	lea	rdx, [r8 + r15*8]
.label_1995:
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
	jne	.label_1995
.label_2001:
	mov	rax, qword ptr [r12 + 0x58]
	mov	rcx, qword ptr [rsp + 0x58]
	add	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x58], rax
	nop	
	cmp	qword ptr [r12 + 0x60], rbx
	jle	.label_2016
	add	qword ptr [r12 + 0x68], rcx
.label_2016:
	nop	
	mov	r13, qword ptr [r12 + 0x40]
	cmp	r13, rax
	cmovg	r13, rax
	add	rbx, r14
	lea	rsi, [rsi]
	mov	r15, rbp
	jmp	.label_1964
.label_1981:
	mov	al, byte ptr [rcx + rdx]
	nop	
	jmp	.label_1971
.label_1988:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	qword ptr [rcx + r15*8], rbx
	mov	rbp, rbp
	jmp	.label_1975
.label_1990:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	jmp	.label_1980
.label_1985:
	mov	rbp, rbp
	mov	eax, 0xc
	lea	rdi, [rdi]
	jmp	.label_1987
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c570

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
	jle	.label_2030
	lea	r14, [rbx + 0x20]
	mov	rbp, rbp
	lea	r15, [rsp + 0xc]
	nop	
	jmp	.label_2022
	nop	word ptr [rax + rax]
.label_2024:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	nop	
	mov	rax, qword ptr [rbx + 0x78]
	test	rax, rax
	jne	.label_2021
.label_2023:
	nop	
	mov	qword ptr [r14], rbp
	mov	eax, 1
	mov	rsp, rsp
	jmp	.label_2029
.label_2020:
	nop	
	mov	ecx, dword ptr [rsp + 0xc]
	nop	word ptr cs:[rax + rax]
.label_2029:
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	dword ptr [rdx + r13*4], ecx
	lea	rbp, [rax + r13]
	lea	rcx, [r13 + 1]
	cmp	rcx, rbp
	nop	
	jge	.label_2031
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
.label_2031:
	nop	
	cmp	r12, rcx
	mov	r13, rcx
	jg	.label_2022
	mov	rbp, rbp
	jmp	.label_2026
.label_2028:
	cmp	dword ptr [rbx + 0x90], 0
	mov	eax, 0
	nop	
	lea	rsi, [rsp + 0x10]
	jle	.label_2025
	nop	
.label_2032:
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_2027
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
	jl	.label_2032
	mov	rbp, rbp
	lea	rsi, [rsp + 0x10]
	jmp	.label_2025
.label_2021:
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rsp, rsp
	jmp	.label_2023
.label_2027:
	mov	rsp, rsp
	lea	rsi, [rsp + 0x10]
	nop	
	jmp	.label_2025
	nop	word ptr cs:[rax + rax]
.label_2022:
	nop	
	mov	rdx, r12
	lea	rsi, [rsi]
	sub	rdx, r13
	nop	
	mov	rbp, qword ptr [rbx + 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x78], 0
	jne	.label_2028
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	nop	
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r13
.label_2025:
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	cmp	rcx, 2
	jb	.label_2024
	cmp	rax, -2
	jne	.label_2020
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	mov	rbp, rbp
	jge	.label_2024
	mov	rbp, rbp
	mov	qword ptr [r14], rbp
.label_2030:
	mov	rcx, r13
.label_2026:
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
	#Procedure 0x41c790

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
	mov	qword ptr [rsp + 0x30], r9
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x10], rcx
	mov	r12, rdx
	mov	qword ptr [rsp], rsi
	mov	r14, rdi
	mov	r15, qword ptr [rsi]
	mov	rax, qword ptr [r15 + 0xa8]
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	call	parse_branch
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	r13d, r13d
	test	rbx, rbx
	jne	.label_2053
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x30]
	nop	
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_2039
.label_2053:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0xa
	mov	rbp, rbp
	jne	.label_2033
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	or	rax, 0x800000
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rsp + 0x28], 0
	mov	rbp, rbp
	jne	.label_2035
	nop	
	jmp	.label_2044
.label_2033:
	mov	r13, rbx
	jmp	.label_2039
.label_2055:
	nop	
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2047
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2052
	nop	word ptr cs:[rax + rax]
.label_2035:
	nop	
	mov	rdi, r12
	nop	
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	call	peek_token
	mov	rsp, rsp
	cdqe	
	lea	rdi, [rdi]
	add	qword ptr [r14 + 0x48], rax
	mov	rbp, rbp
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0xa
	ja	.label_2036
	nop	
	mov	ecx, 0x604
	bt	ecx, eax
	mov	rsp, rsp
	mov	ebp, 0
	lea	rsi, [rsi]
	jb	.label_2049
.label_2036:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [r15 + 0xa8], rax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, qword ptr [rsp]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x28]
	nop	
	mov	r13, qword ptr [rsp + 0x30]
	mov	r9, r13
	call	parse_branch
	mov	rbp, rbp
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_2034
	nop	
	mov	eax, dword ptr [r13]
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_2037
.label_2034:
	mov	rax, qword ptr [rsp + 8]
	or	qword ptr [r15 + 0xa8], rax
.label_2049:
	mov	ecx, dword ptr [r15 + 0x80]
	mov	rbp, rbp
	cmp	ecx, 0xf
	nop	
	je	.label_2055
	mov	rax, qword ptr [r15 + 0x70]
.label_2052:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	nop	
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	r13, [rax + rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_2050
	mov	qword ptr [rbx], r13
.label_2050:
	test	rbp, rbp
	je	.label_2041
	mov	rsp, rsp
	mov	qword ptr [rbp], r13
.label_2041:
	mov	rbp, rbp
	movzx	eax, byte ptr [r12 + 8]
	lea	rsi, [rsi]
	cmp	eax, 0xa
	mov	rbx, r13
	mov	rbp, rbp
	je	.label_2035
	jmp	.label_2039
.label_2048:
	mov	edi, 0x3c8
	mov	rsp, rsp
	call	malloc
	test	rax, rax
	mov	rsp, rsp
	je	.label_2047
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_2056
	nop	word ptr cs:[rax + rax]
.label_2044:
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x20]
	call	peek_token
	cdqe	
	lea	rdi, [rdi]
	add	qword ptr [r14 + 0x48], rax
	lea	rdi, [rdi]
	mov	eax, dword ptr [r12 + 8]
	lea	rsi, [rsi]
	or	eax, 8
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0xa
	mov	ebp, 0
	je	.label_2051
	mov	rax, qword ptr [r15 + 0xa8]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0xa8], rax
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp]
	mov	rbp, rbp
	mov	rdx, r12
	nop	
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r13, qword ptr [rsp + 0x30]
	mov	r9, r13
	call	parse_branch
	mov	rbp, rax
	test	rbp, rbp
	lea	rsi, [rsi]
	jne	.label_2038
	mov	eax, dword ptr [r13]
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_2037
.label_2038:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	or	qword ptr [r15 + 0xa8], rax
.label_2051:
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_2048
	mov	rax, qword ptr [r15 + 0x70]
.label_2056:
	lea	rdi, [rdi]
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	lea	rdi, [rdi]
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x10], rbx
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_2054
	mov	rsp, rsp
	mov	qword ptr [rbx], r13
.label_2054:
	test	rbp, rbp
	nop	
	je	.label_2045
	mov	qword ptr [rbp], r13
.label_2045:
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0xa
	nop	
	mov	rbx, r13
	nop	
	je	.label_2044
	mov	rsp, rsp
	jmp	.label_2039
.label_2037:
	xor	r13d, r13d
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_2039
	mov	rbp, rbp
	mov	r14d, 0x400ff
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_2040:
	nop	
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_2040
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_2040
	nop	dword ptr [rax]
.label_2042:
	mov	eax, dword ptr [rbp + 0x30]
	lea	rsi, [rsi]
	and	eax, r14d
	lea	rdi, [rdi]
	cmp	eax, 3
	mov	rbp, rbp
	je	.label_2043
	cmp	eax, 6
	mov	rbp, rbp
	jne	.label_2046
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 8]
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_2057
	nop	word ptr cs:[rax + rax]
.label_2043:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp + 0x28]
.label_2057:
	mov	rbp, rbp
	call	free
.label_2046:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2039
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	cmp	rbx, rbp
	mov	rbp, rax
	mov	rsp, rsp
	je	.label_2042
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rax
	mov	rbp, rbp
	je	.label_2042
	lea	rdi, [rdi]
	jmp	.label_2040
.label_2047:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
.label_2039:
	mov	rax, r13
	add	rsp, 0x38
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41cc90

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
	jle	.label_2080
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
	jl	.label_2087
	nop	
	mov	rax, qword ptr [rbp + 0x48]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_2087
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	cmp	dword ptr [rcx + rax*4], -1
	mov	rbp, rbp
	je	.label_2060
.label_2087:
	cmp	r12d, 0x5c
	jne	.label_2064
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rdi, [rdi]
	lea	rax, [rcx + 1]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_2066
	cmp	byte ptr [rbp + 0x8b], 0
	lea	rdi, [rdi]
	jne	.label_2071
.label_2065:
	mov	rcx, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	mov	r14b, byte ptr [rcx + rax]
.label_2078:
	mov	rsp, rsp
	mov	byte ptr [r15], r14b
	mov	rsp, rsp
	and	ebx, 0xff9fff00
	nop	
	or	ebx, 1
	nop	
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_2069
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
	jmp	.label_2082
.label_2080:
	mov	rsp, rsp
	mov	byte ptr [r15 + 8], 2
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_2058
.label_2064:
	and	ebx, 0xff9fff00
	or	ebx, 1
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_2090
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
	jmp	.label_2095
.label_2066:
	lea	rsi, [rsi]
	and	ebx, 0xff9fff00
	or	ebx, 0x24
	jmp	.label_2068
.label_2090:
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
.label_2095:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	mov	rsp, rsp
	cmp	r12d, 0x3e
	mov	rbp, rbp
	jg	.label_2091
	mov	rsp, rsp
	lea	ecx, [r12 - 0x24]
	cmp	ecx, 0xa
	nop	
	ja	.label_2081
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_2085]]
.label_3634:
	nop	
	mov	rdx, r13
	mov	rbp, rbp
	test	dl, 8
	lea	rsi, [rsi]
	jne	.label_2077
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	lea	rsi, [rsi]
	je	.label_2077
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
	ja	.label_2058
	nop	
	mov	eax, dword ptr [r15 + 8]
.label_2077:
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 0xc
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_2058
.label_2091:
	mov	rsp, rsp
	cmp	r12d, 0x7a
	lea	rsi, [rsi]
	jg	.label_2067
	cmp	r12d, 0x3f
	je	.label_2070
	lea	rdi, [rdi]
	cmp	r12d, 0x5b
	mov	rdx, r13
	je	.label_2072
	mov	rsp, rsp
	cmp	r12d, 0x5e
	jne	.label_2058
	mov	rbp, rbp
	test	edx, 0x800008
	mov	rbp, rbp
	jne	.label_2075
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_2075
	test	dh, 8
	je	.label_2058
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp + 8]
	movzx	ecx, byte ptr [rcx + rdx - 1]
	cmp	ecx, 0xa
	jne	.label_2058
.label_2075:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	lea	rsi, [rsi]
	mov	dword ptr [r15], 0x10
	jmp	.label_2058
.label_2069:
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
.label_2082:
	mov	dword ptr [r15 + 8], eax
	movzx	ecx, r14b
	mov	r14d, 2
	mov	rsp, rsp
	cmp	ecx, 0x5f
	nop	
	jg	.label_2093
	lea	edx, [rcx - 0x27]
	mov	rsp, rsp
	cmp	edx, 0x2c
	mov	rsp, rsp
	ja	.label_2096
	nop	
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_2061]]
.label_3574:
	mov	rdx, r13
	test	dh, 0x40
	lea	rdi, [rdi]
	jne	.label_2058
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
	jmp	.label_2058
.label_2067:
	cmp	r12d, 0x7b
	je	.label_2083
	mov	rsp, rsp
	cmp	r12d, 0x7c
	lea	rsi, [rsi]
	mov	rcx, r13
	lea	rdi, [rdi]
	je	.label_2073
	cmp	r12d, 0x7d
	lea	rdi, [rdi]
	jne	.label_2058
	and	ecx, 0x1200
	lea	rdi, [rdi]
	cmp	rcx, 0x1200
	je	.label_2076
	jmp	.label_2058
.label_2060:
	mov	rbp, rbp
	and	ebx, 0xff9fff00
	or	ebx, 0x200001
.label_2068:
	mov	dword ptr [r15 + 8], ebx
	mov	rbp, rbp
	mov	r14d, 1
.label_2058:
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
.label_2093:
	lea	edx, [rcx - 0x73]
	lea	rdi, [rdi]
	cmp	edx, 0xa
	ja	.label_2086
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_2089]]
.label_3629:
	lea	rsi, [rsi]
	test	r13d, 0x80000
	jne	.label_2058
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_2058
.label_2081:
	cmp	r12d, 0xa
	mov	rsp, rsp
	jne	.label_2058
	lea	rdi, [rdi]
	mov	rcx, r13
	test	ch, 8
	jne	.label_2088
	jmp	.label_2058
.label_3635:
	mov	rbp, rbp
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_2059
	nop	
	jmp	.label_2058
.label_3636:
	mov	rsp, rsp
	mov	rcx, r13
	lea	rdi, [rdi]
	test	ch, 0x20
	lea	rsi, [rsi]
	jne	.label_2062
	lea	rdi, [rdi]
	jmp	.label_2058
.label_3637:
	mov	rbp, rbp
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_2058
.label_3638:
	test	r13w, 0x402
	lea	rdi, [rdi]
	jne	.label_2058
	jmp	.label_2074
.label_3639:
	nop	
	and	eax, 0xffffff00
	or	eax, 5
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], eax
	mov	rsp, rsp
	jmp	.label_2058
.label_2070:
	lea	rsi, [rsi]
	test	r13w, 0x402
	jne	.label_2058
	jmp	.label_2079
.label_2072:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	nop	
	jmp	.label_2058
.label_2083:
	and	r13d, 0x1200
	cmp	r13, 0x1200
	mov	rsp, rsp
	je	.label_2084
	jmp	.label_2058
.label_2073:
	test	ch, 4
	mov	rsp, rsp
	jne	.label_2058
	lea	rsi, [rsi]
	test	cx, cx
	lea	rdi, [rdi]
	js	.label_2088
	lea	rdi, [rdi]
	jmp	.label_2058
.label_2086:
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_2092
	nop	
	cmp	ecx, 0x62
	nop	
	jne	.label_2058
	test	r13d, 0x80000
	jne	.label_2058
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_2058
.label_2071:
	cmp	edx, 2
	lea	rsi, [rsi]
	jl	.label_2063
	mov	rdx, qword ptr [rbp + 0x10]
	nop	
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	mov	rbp, rbp
	je	.label_2065
	mov	rbp, rbp
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	mov	rsp, rsp
	je	.label_2063
	lea	rsi, [rsi]
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	nop	
	je	.label_2065
.label_2063:
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	je	.label_2094
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_2094:
	nop	
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp]
	mov	r14b, byte ptr [rcx + rsi]
	nop	
	je	.label_2078
	test	r14b, r14b
	lea	rdi, [rdi]
	js	.label_2065
	mov	rbp, rbp
	jmp	.label_2078
.label_2096:
	cmp	ecx, 0x57
	mov	rsp, rsp
	jne	.label_2058
	lea	rdi, [rdi]
	test	r13d, 0x80000
	jne	.label_2058
	lea	rsi, [rsi]
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	lea	rdi, [rdi]
	jmp	.label_2058
.label_3630:
	nop	
	test	r13d, 0x80000
	lea	rsi, [rsi]
	jne	.label_2058
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_2058
.label_3631:
	lea	rdi, [rdi]
	and	r13d, 0x1200
	nop	
	cmp	r13, 0x200
	lea	rsi, [rsi]
	jne	.label_2058
.label_2084:
	lea	rdi, [rdi]
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 0x17
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	jmp	.label_2058
.label_3632:
	mov	rcx, r13
	lea	rsi, [rsi]
	test	ch, 4
	nop	
	jne	.label_2058
	test	cx, cx
	js	.label_2058
.label_2088:
	mov	rsp, rsp
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	nop	
	jmp	.label_2058
.label_3633:
	and	r13d, 0x1200
	lea	rdi, [rdi]
	cmp	r13, 0x200
	jne	.label_2058
.label_2076:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	mov	rsp, rsp
	jmp	.label_2058
.label_2092:
	nop	
	test	r13d, 0x80000
	nop	
	jne	.label_2058
	mov	rbp, rbp
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_2058
.label_3570:
	test	r13d, 0x80000
	jne	.label_2058
	and	eax, 0xffffff00
	lea	rdi, [rdi]
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_2058
.label_3571:
	mov	rcx, r13
	test	ch, 0x20
	lea	rdi, [rdi]
	jne	.label_2058
.label_2059:
	lea	rsi, [rsi]
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_2058
.label_3572:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_2058
.label_2062:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_2058
.label_3573:
	and	r13d, 0x402
	lea	rdi, [rdi]
	cmp	r13, 2
	jne	.label_2058
.label_2074:
	and	eax, 0xffffff00
	mov	rbp, rbp
	or	eax, 0x12
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	jmp	.label_2058
.label_3575:
	lea	rdi, [rdi]
	test	r13d, 0x80000
	jne	.label_2058
	and	eax, 0xffffff00
	lea	rdi, [rdi]
	or	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	mov	rbp, rbp
	mov	dword ptr [r15], 6
	lea	rdi, [rdi]
	jmp	.label_2058
.label_3576:
	test	r13d, 0x80000
	jne	.label_2058
	mov	rbp, rbp
	and	eax, 0xffffff00
	or	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_2058
.label_3577:
	nop	
	and	r13d, 0x402
	lea	rsi, [rsi]
	cmp	r13, 2
	jne	.label_2058
.label_2079:
	and	eax, 0xffffff00
	or	eax, 0x13
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], eax
	jmp	.label_2058
.label_3578:
	mov	rbp, rbp
	test	r13d, 0x80000
	lea	rdi, [rdi]
	jne	.label_2058
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_2058
.label_3579:
	mov	rsp, rsp
	test	r13d, 0x80000
	nop	
	jne	.label_2058
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_2058
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41d520

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
	mov	r14, r9
	mov	r15, r8
	mov	qword ptr [rsp + 8], rcx
	mov	rbp, rbp
	mov	r12, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rdi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsi]
	call	parse_expression
	nop	
	mov	rbx, rax
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rbp, rbp
	test	rbx, rbx
	jne	.label_2101
	lea	rdi, [rdi]
	mov	eax, dword ptr [r14]
	nop	
	test	eax, eax
	mov	rbp, rbp
	jne	.label_2097
.label_2101:
	nop	
	mov	r13, r14
	test	r15, r15
	mov	rsp, rsp
	jne	.label_2106
	jmp	.label_2113
.label_2099:
	test	rbx, rbx
	mov	rbp, rbp
	cmove	rbx, r14
.label_2106:
	movzx	eax, byte ptr [r12 + 8]
	mov	rbp, rbp
	cmp	eax, 0xa
	ja	.label_2120
	mov	ecx, 0x604
	bt	ecx, eax
	mov	rbp, rbp
	jb	.label_2122
.label_2120:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, r15
	mov	rsp, rsp
	mov	r9, r13
	call	parse_expression
	lea	rsi, [rsi]
	mov	r14, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	rbp, rbp
	setne	al
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_2127
	mov	ecx, dword ptr [r13]
	test	ecx, ecx
	lea	rsi, [rsi]
	jne	.label_2107
.label_2127:
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_2099
	mov	rbp, rbp
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_2099
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	lea	rdi, [rdi]
	je	.label_2103
	nop	
	mov	rax, qword ptr [rbp + 0x70]
.label_2123:
	lea	edx, [rcx + 1]
	mov	rsp, rsp
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	nop	
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	rbp, rbp
	mov	qword ptr [r14], rdx
	mov	rbp, rbp
	mov	rbx, rdx
	jmp	.label_2106
.label_2103:
	lea	rdi, [rdi]
	mov	edi, 0x3c8
	mov	rsp, rsp
	call	malloc
	test	rax, rax
	nop	
	je	.label_2121
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_2123
	nop	word ptr cs:[rax + rax]
.label_2110:
	mov	rbp, rbp
	test	rbx, rbx
	cmove	rbx, r14
.label_2113:
	mov	eax, dword ptr [r12 + 8]
	lea	rdi, [rdi]
	or	eax, 8
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 0xa
	je	.label_2129
	lea	rsi, [rsi]
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 8]
	mov	r9, r13
	nop	
	call	parse_expression
	mov	r14, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	setne	al
	nop	
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_2102
	mov	ecx, dword ptr [r13]
	test	ecx, ecx
	jne	.label_2107
.label_2102:
	mov	rsp, rsp
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_2110
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_2110
	mov	ecx, dword ptr [rbp + 0x80]
	mov	rsp, rsp
	cmp	ecx, 0xf
	nop	
	je	.label_2111
	mov	rax, qword ptr [rbp + 0x70]
.label_2130:
	lea	edx, [rcx + 1]
	lea	rdi, [rdi]
	mov	dword ptr [rbp + 0x80], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	lea	rsi, [rsi]
	mov	qword ptr [r14], rdx
	mov	rbx, rdx
	jmp	.label_2113
.label_2111:
	mov	rbp, rbp
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2121
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	lea	rdi, [rdi]
	xor	ecx, ecx
	jmp	.label_2130
.label_2107:
	xor	r13d, r13d
	test	al, al
	je	.label_2097
	nop	
	mov	r15d, 0x400ff
	mov	rsp, rsp
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_2104:
	lea	rdi, [rdi]
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_2104
	mov	rbx, qword ptr [rbp + 0x10]
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_2104
	nop	word ptr cs:[rax + rax]
.label_2118:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r15d
	lea	rdi, [rdi]
	cmp	eax, 3
	mov	rsp, rsp
	je	.label_2108
	mov	rbp, rbp
	cmp	eax, 6
	jne	.label_2116
	nop	
	mov	rbx, qword ptr [rbp + 0x28]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rbx + 8]
	nop	
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	nop	
	call	free
	mov	rdi, rbx
	jmp	.label_2125
	nop	word ptr [rax + rax]
.label_2108:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x28]
.label_2125:
	call	free
.label_2116:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_2097
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rax + 0x10]
	mov	rbp, rbp
	cmp	rbx, rbp
	mov	rbp, rax
	nop	
	je	.label_2118
	test	rbx, rbx
	mov	rbp, rax
	mov	rbp, rbp
	je	.label_2118
	jmp	.label_2104
.label_2122:
	mov	r13, rbx
	jmp	.label_2097
.label_2129:
	mov	r13, rbx
.label_2097:
	mov	rbp, rbp
	mov	rax, r13
	mov	rsp, rsp
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_2121:
	nop	
	mov	r15d, 0x400ff
.label_2109:
	mov	rsp, rsp
	mov	rbp, r14
	mov	r14, qword ptr [rbp + 8]
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_2109
	lea	rsi, [rsi]
	mov	r14, qword ptr [rbp + 0x10]
	nop	
	test	r14, r14
	jne	.label_2109
	nop	word ptr cs:[rax + rax]
.label_2128:
	mov	eax, dword ptr [rbp + 0x30]
	lea	rdi, [rdi]
	and	eax, r15d
	mov	rsp, rsp
	cmp	eax, 3
	je	.label_2112
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_2115
	lea	rdi, [rdi]
	mov	r14, qword ptr [rbp + 0x28]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14]
	nop	
	call	free
	mov	rdi, qword ptr [r14 + 8]
	mov	rsp, rsp
	call	free
	nop	
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_2124
.label_2112:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp + 0x28]
.label_2124:
	nop	
	call	free
.label_2115:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp]
	test	rax, rax
	mov	rsp, rsp
	je	.label_2126
	mov	r14, qword ptr [rax + 0x10]
	nop	
	cmp	r14, rbp
	mov	rbp, rax
	je	.label_2128
	lea	rdi, [rdi]
	test	r14, r14
	mov	rsp, rsp
	mov	rbp, rax
	je	.label_2128
	lea	rsi, [rsi]
	jmp	.label_2109
.label_2126:
	mov	r14d, 0x400ff
.label_2098:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_2098
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_2098
	nop	
.label_2119:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp + 0x30]
	mov	rsp, rsp
	and	eax, r14d
	cmp	eax, 3
	je	.label_2100
	cmp	eax, 6
	nop	
	jne	.label_2105
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 8]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	mov	rsp, rsp
	jmp	.label_2114
.label_2100:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp + 0x28]
.label_2114:
	nop	
	call	free
.label_2105:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_2117
	mov	rbx, qword ptr [rax + 0x10]
	mov	rbp, rbp
	cmp	rbx, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
	je	.label_2119
	test	rbx, rbx
	nop	
	mov	rbp, rax
	lea	rsi, [rsi]
	je	.label_2119
	mov	rbp, rbp
	jmp	.label_2098
.label_2117:
	mov	dword ptr [r13], 0xc
	xor	r13d, r13d
	jmp	.label_2097
	nop	
	.section	.text
	.align	32
	#Procedure 0x41dad0

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
	ja	.label_2131
	mov	r9, qword ptr [rbx]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_2313]]
.label_3669:
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
	je	.label_2349
	mov	r9, rbx
	mov	rbp, rbp
	jmp	.label_2150
.label_3670:
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
	jne	.label_2373
.label_2349:
	nop	
	mov	eax, dword ptr [r12]
	nop	
	test	eax, eax
	mov	rsp, rsp
	mov	r9, rbx
	je	.label_2150
	nop	
	jmp	.label_2131
.label_3660:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_2134
	mov	rax, qword ptr [r9 + 0x70]
.label_2266:
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
	jl	.label_2140
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rcx + 0x48]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x68], rax
	jg	.label_2174
	lea	rdi, [rdi]
	mov	rbp, r15
	lea	rdi, [rdi]
	jmp	.label_2150
.label_2308:
	mov	rbp, r9
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x10]
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_2184
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
	je	.label_2195
	mov	rsp, rsp
	mov	rax, qword ptr [r9 + 0x70]
.label_2212:
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
.label_2272:
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x80]
	mov	rbp, rbp
	cmp	ecx, 0xf
	je	.label_2221
	mov	rax, qword ptr [r9 + 0x70]
.label_2257:
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
	je	.label_2176
	mov	qword ptr [rbp], rdx
	mov	rax, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rax
	mov	r15, rdx
	mov	rbp, rdx
	lea	rsi, [rsi]
	jg	.label_2174
	lea	rdi, [rdi]
	jmp	.label_2150
.label_2195:
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
	je	.label_2272
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r9 + 0x70], rax
	mov	rbp, rbp
	mov	dword ptr [r9 + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	jmp	.label_2212
.label_2221:
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
	je	.label_2176
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	lea	rdi, [rdi]
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_2257
.label_2174:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x58]
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_2308
	mov	rsp, rsp
	mov	rbp, r15
	jmp	.label_2150
.label_3661:
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
	je	.label_2316
	or	qword ptr [r9 + 0xa0], rax
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r9 + 0x80]
	mov	rsp, rsp
	cmp	ecx, 0xf
	mov	rsp, rsp
	je	.label_2327
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + 0x70]
.label_2315:
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
	jmp	.label_2150
.label_3662:
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_2355
	mov	rsp, rsp
	mov	rax, qword ptr [r9 + 0x70]
	mov	rsi, qword ptr [rsp]
.label_2290:
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
	jle	.label_2150
	or	byte ptr [r9 + 0xb0], 2
	jmp	.label_2150
.label_3663:
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
	je	.label_2161
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
	jne	.label_2131
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14 + 8]
	cmp	eax, 9
	jne	.label_2188
	mov	r15, rbp
.label_2161:
	nop	
	cmp	r15, 8
	mov	r9, qword ptr [rsp + 0x18]
	nop	
	mov	rbx, r15
	ja	.label_2190
	mov	eax, 1
	mov	cl, bl
	mov	rbp, rbp
	shl	eax, cl
	cdqe	
	or	qword ptr [r9 + 0xa8], rax
.label_2190:
	nop	
	mov	ecx, dword ptr [r9 + 0x80]
	nop	
	cmp	ecx, 0xf
	lea	rdi, [rdi]
	je	.label_2199
	mov	rax, qword ptr [r9 + 0x70]
.label_2331:
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
	je	.label_2298
	mov	rbp, rbp
	mov	qword ptr [rsi], rbp
.label_2298:
	mov	qword ptr [rax + rcx + 0x30], rbx
	jmp	.label_2150
.label_3664:
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	ecx, 0x20000
	lea	rdi, [rdi]
	jne	.label_2230
	mov	rsp, rsp
	mov	dword ptr [r12], 0x10
	mov	rbp, rbp
	jmp	.label_2237
.label_3666:
	mov	r15, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	eax, dword ptr [r15]
	test	ax, 0x30f
	mov	rbp, rbp
	je	.label_2243
	mov	al, byte ptr [r9 + 0xb0]
	nop	
	test	al, 0x10
	jne	.label_2166
	lea	rsi, [rsi]
	mov	cl, al
	or	cl, 0x10
	mov	byte ptr [r9 + 0xb0], cl
	xor	ebx, ebx
	nop	
	test	al, 8
	mov	ebp, 0
	mov	rbp, rbp
	jne	.label_2251
	lea	rdi, [rdi]
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_2350]]
	movdqu	xmmword ptr [r9 + 0xb8], xmm0
	lea	rsi, [rsi]
	mov	ebp, 2
	lea	rsi, [rsi]
	mov	ebx, 0x80
	test	al, 4
	je	.label_2251
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r9 + 0xc8], xmm0
.label_2166:
	mov	eax, dword ptr [r15]
.label_2243:
	cmp	eax, 0x200
	je	.label_2275
	lea	rsi, [rsi]
	cmp	eax, 0x100
	jne	.label_2280
	mov	dword ptr [r15], 6
	mov	r13, r15
	mov	rbp, rbp
	lea	r15, [r9 + 0x80]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	lea	rdi, [rdi]
	je	.label_2284
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0x70]
.label_2244:
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
	jmp	.label_2152
.label_3668:
	mov	rcx, qword ptr [rsp + 0x30]
	test	ecx, 0x1000000
	jne	.label_2317
.label_3665:
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	cl, 0x20
	jne	.label_2317
	test	cl, 0x10
	lea	rdi, [rdi]
	jne	.label_2326
.label_2230:
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
	je	.label_2328
	nop	
	mov	rax, qword ptr [r9 + 0x70]
.label_2227:
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
.label_2219:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_2150
.label_3671:
	mov	dword ptr [r12], 5
	jmp	.label_2237
.label_3667:
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
	je	.label_2371
	mov	rbp, rbp
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_2371
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
	je	.label_2137
	mov	rsp, rsp
	cmp	edx, 2
	je	.label_2144
	mov	dword ptr [rsp + 0xe0], 0
	nop	
	jmp	.label_2147
.label_2373:
	mov	r9, rbx
	nop	
	jmp	.label_2150
.label_2326:
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
.label_2140:
	mov	rbp, r15
	mov	rsp, rsp
	jmp	.label_2150
.label_2137:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	or	byte ptr [rcx + 0x20], 1
	nop	
	test	bh, 1
	lea	rdi, [rdi]
	je	.label_2189
	or	byte ptr [r13 + 1], 4
.label_2189:
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
	je	.label_2144
	mov	dl, 1
	mov	dword ptr [rsp + 0xe0], edx
.label_2147:
	mov	qword ptr [rsp + 0x60], r13
	mov	rsp, rsp
	movzx	edx, cl
	nop	
	cmp	edx, 0x15
	mov	rsp, rsp
	jne	.label_2207
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rbp + 8], ecx
.label_2207:
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
	jne	.label_2232
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
	jmp	.label_2236
.label_2378:
	cmp	eax, 2
	mov	rbp, rbp
	je	.label_2248
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
	je	.label_2236
	lea	rdi, [rdi]
	jmp	.label_2232
.label_3644:
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
	jmp	.label_2281
.label_3645:
	mov	r15, qword ptr [rsp + 8]
	mov	rcx, qword ptr [r15 + 0x28]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	cmp	rbp, rcx
	mov	rbp, rbp
	je	.label_2291
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15]
.label_2170:
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x60]
	mov	edx, dword ptr [rsp + 0x28]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	nop	
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_2156
.label_2293:
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	mov	al, byte ptr [rax]
	jmp	.label_2165
.label_2143:
	nop	
	xor	eax, eax
.label_2165:
	cmp	ebx, 3
	je	.label_2310
	lea	rsi, [rsi]
	test	ebx, ebx
	jne	.label_2312
	nop	
	mov	bpl, byte ptr [rsp + 0xa8]
	jmp	.label_2314
.label_2310:
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	bpl, byte ptr [rcx]
	lea	rdi, [rdi]
	jmp	.label_2314
.label_2312:
	mov	rbp, rbp
	xor	ebp, ebp
.label_2314:
	lea	rsi, [rsi]
	cmp	r15d, 3
	je	.label_2374
	test	r15d, r15d
	mov	rsp, rsp
	jne	.label_2325
.label_2374:
	test	r12, r12
	movzx	edx, al
	je	.label_2260
	mov	edi, edx
	call	btowc
	mov	rbp, rbp
	mov	edx, eax
	jmp	.label_2260
.label_2325:
	mov	edx, dword ptr [rsp + 0x28]
.label_2260:
	cmp	ebx, 3
	je	.label_2285
	lea	rdi, [rdi]
	test	ebx, ebx
	jne	.label_2292
.label_2285:
	test	r12, r12
	movzx	ebp, bpl
	je	.label_2133
	mov	edi, ebp
	nop	
	mov	ebx, edx
	nop	
	call	btowc
	mov	edx, ebx
	lea	rdi, [rdi]
	mov	ebp, eax
	jmp	.label_2133
.label_2292:
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rsp + 0xa8]
.label_2133:
	mov	rsp, rsp
	cmp	edx, -1
	mov	ecx, 3
	je	.label_2169
	cmp	ebp, -1
	je	.label_2169
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xd0], 0
	lea	rsi, [rsi]
	je	.label_2342
	cmp	edx, ebp
	lea	rsi, [rsi]
	mov	ecx, 0xb
	ja	.label_2169
.label_2342:
	test	r12, r12
	je	.label_2347
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x40]
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x50], rax
	je	.label_2351
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 8]
	mov	r14, qword ptr [r12 + 0x10]
	mov	r9, r13
	nop	
	mov	r15, qword ptr [rsp + 8]
	mov	ebx, dword ptr [rsp + 0x14]
.label_2361:
	mov	dword ptr [rdi + rax*4], edx
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [r14 + rax*4], ebp
	mov	r12, qword ptr [rsp + 0x98]
	jmp	.label_2149
.label_2347:
	nop	
	mov	r12, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r9, r13
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	ebx, dword ptr [rsp + 0x14]
.label_2149:
	lea	rdi, [rdi]
	mov	eax, ebp
	mov	edx, edx
	xor	ecx, ecx
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x60]
.label_2151:
	mov	rbp, rbp
	cmp	rdx, rcx
	mov	rbp, rbp
	ja	.label_2141
	cmp	rcx, rax
	lea	rsi, [rsi]
	ja	.label_2141
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
.label_2141:
	lea	rsi, [rsi]
	inc	rcx
	cmp	rcx, 0x100
	lea	rdi, [rdi]
	jne	.label_2151
	mov	dword ptr [r12], 0
	jmp	.label_2156
.label_2291:
	lea	rsi, [rsi]
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	lea	rsi, [rsi]
	call	realloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_2135
	lea	rbp, [rbp + rbp + 1]
	mov	qword ptr [rsp + 0x38], rbp
	nop	
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	jmp	.label_2170
.label_2351:
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
	je	.label_2192
	lea	rdi, [rdi]
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_2192
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
	jmp	.label_2361
.label_2236:
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
	je	.label_2218
	cmp	r15d, 4
	jne	.label_2223
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
	je	.label_2156
	nop	
	jmp	.label_2372
.label_2223:
	movzx	eax, byte ptr [rbp + 8]
	cmp	eax, 0x16
	mov	r9, qword ptr [rsp + 0x18]
	nop	
	je	.label_2250
	cmp	eax, 2
	jne	.label_2255
	mov	rbp, rbp
	jmp	.label_2258
.label_2250:
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
	je	.label_2164
	lea	rsi, [rsi]
	cmp	ecx, 2
	mov	rsp, rsp
	je	.label_2273
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
	jne	.label_2300
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
	jg	.label_2309
	xor	r12d, r12d
.label_2309:
	nop	
	mov	ecx, 0xb
	mov	ebx, dword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	cmp	ebx, 2
	je	.label_2169
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], eax
	lea	rsi, [rsi]
	cmp	ebx, 4
	lea	rdi, [rdi]
	je	.label_2169
	cmp	r15d, 3
	lea	rsi, [rsi]
	jne	.label_2162
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x28]
	nop	
	call	strlen
	mov	ecx, 3
	mov	rbp, rbp
	cmp	rax, 1
	ja	.label_2169
.label_2162:
	cmp	ebx, 3
	mov	rbp, rbp
	jne	.label_2334
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xa8]
	call	strlen
	nop	
	mov	ecx, 3
	cmp	rax, 1
	nop	
	ja	.label_2169
.label_2334:
	mov	rbp, rbp
	cmp	r15d, 3
	nop	
	je	.label_2293
	test	r15d, r15d
	mov	rbp, rbp
	jne	.label_2143
	mov	al, byte ptr [rsp + 0x28]
	jmp	.label_2165
.label_2164:
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
.label_2255:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r9
	mov	rsp, rsp
	mov	eax, r15d
	cmp	r15d, 3
	mov	rbp, rbp
	ja	.label_2357
	jmp	qword ptr [word ptr [+ (rax * 8) + label_2366]]
.label_2218:
	mov	rbp, qword ptr [rsp + 0x28]
	nop	
	mov	rdi, rbp
	call	strlen
	lea	rsi, [rsi]
	cmp	rax, 1
	lea	rdi, [rdi]
	jne	.label_2368
	mov	cl, byte ptr [rbp]
	mov	rbp, rbp
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	or	qword ptr [r13 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_2281:
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 8]
.label_2156:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	nop	
	movzx	eax, byte ptr [rax + 8]
	lea	rsi, [rsi]
	cmp	eax, 0x15
	jne	.label_2378
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
	je	.label_2173
	movdqu	xmm0, xmmword ptr [r13]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	nop	
	movdqu	xmmword ptr [r13], xmm0
	movdqu	xmm0, xmmword ptr [r13 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r13 + 0x10], xmm0
.label_2173:
	mov	eax, dword ptr [r9 + 0xb4]
	mov	rsp, rsp
	cmp	eax, 2
	nop	
	jl	.label_2163
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
.label_2163:
	cmp	qword ptr [r15 + 0x28], 0
	mov	rsp, rsp
	jne	.label_2180
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x30], 0
	mov	rbp, rbp
	jne	.label_2180
	cmp	qword ptr [r15 + 0x38], 0
	mov	rsp, rsp
	jne	.label_2180
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x40], 0
	lea	rsi, [rsi]
	jne	.label_2180
	mov	rsp, rsp
	cmp	eax, 2
	jl	.label_2225
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_2180
	test	byte ptr [r15 + 0x20], 1
	nop	
	jne	.label_2180
.label_2225:
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
	je	.label_2213
	mov	rax, qword ptr [r9 + 0x70]
.label_2365:
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
	jmp	.label_2219
.label_2180:
	nop	
	or	byte ptr [r9 + 0xb0], 2
	lea	rsi, [rsi]
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_2238
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + 0x70]
.label_2177:
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
	jne	.label_2247
	nop	
	cmp	qword ptr [r13 + 8], 0
	jne	.label_2247
	nop	
	cmp	qword ptr [r13 + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_2247
	cmp	qword ptr [r13 + 0x18], 0
	je	.label_2276
.label_2247:
	nop	
	mov	qword ptr [rsp + 0x60], r13
	mov	rsp, rsp
	mov	eax, dword ptr [r9 + 0x80]
	mov	rbp, rbp
	cmp	eax, 0xf
	mov	rsp, rsp
	je	.label_2267
	mov	rbp, qword ptr [r9 + 0x70]
.label_2362:
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
	je	.label_2303
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + 0x70]
.label_2363:
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
	jmp	.label_2150
.label_2275:
	lea	rsi, [rsi]
	mov	dword ptr [r15], 5
	mov	rbp, rbp
	mov	r13, r15
	lea	r15, [r9 + 0x80]
	lea	rsi, [rsi]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	je	.label_2337
	mov	rax, qword ptr [r9 + 0x70]
.label_2264:
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
.label_2152:
	mov	dword ptr [r13], ecx
	lea	rdi, [rdi]
	mov	ebx, dword ptr [r15]
	lea	rdi, [rdi]
	cmp	ebx, 0xf
	lea	rsi, [rsi]
	je	.label_2356
	mov	rax, qword ptr [r9 + 0x70]
.label_2343:
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
.label_2341:
	mov	rbp, rbp
	mov	ecx, dword ptr [r15]
	nop	
	cmp	ecx, 0xf
	lea	rsi, [rsi]
	je	.label_2146
	mov	rax, qword ptr [r9 + 0x70]
.label_2360:
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
	je	.label_2154
	mov	qword ptr [rbp], r15
.label_2154:
	test	rbx, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	nop	
	je	.label_2176
	mov	rsp, rsp
	mov	qword ptr [rbx], r15
	nop	
	test	rbp, rbp
	jne	.label_2181
	jmp	.label_2176
.label_2280:
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x80]
	lea	rdi, [rdi]
	cmp	ecx, 0xf
	je	.label_2159
	mov	rsp, rsp
	mov	r13, r15
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0x70]
.label_2277:
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
.label_2181:
	nop	
	mov	rdi, r13
	mov	rbx, qword ptr [rsp + 0x58]
	mov	rsi, rbx
	call	peek_token
	lea	rdi, [rdi]
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_2131
.label_2328:
	mov	rbp, r9
	nop	
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rsp, rsp
	je	.label_2176
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
	jmp	.label_2227
.label_2232:
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	dword ptr [r12], eax
	mov	r9, qword ptr [rsp + 0x18]
	jmp	.label_2226
.label_2144:
	mov	dword ptr [r12], 2
	jmp	.label_2246
.label_2248:
	mov	dword ptr [r12], 7
.label_2372:
	mov	qword ptr [rsp + 0x18], r9
	jmp	.label_2252
.label_2184:
	mov	r9, rbp
	mov	rbp, r15
	jmp	.label_2150
.label_2134:
	mov	rbp, rbp
	mov	rbx, r9
	mov	rbp, rbp
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	test	rax, rax
	je	.label_2176
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
	jmp	.label_2266
.label_2316:
	mov	dword ptr [r12], 6
	jmp	.label_2237
.label_2355:
	nop	
	mov	rbx, r9
	mov	rsp, rsp
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	mov	rbp, rbp
	test	rax, rax
	mov	rsi, qword ptr [rsp]
	je	.label_2176
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
	jmp	.label_2290
.label_2371:
	mov	rdi, r13
	mov	rsp, rsp
	call	free
	mov	rdi, rbx
	call	free
	lea	rdi, [rdi]
	jmp	.label_2176
.label_2327:
	mov	rsp, rsp
	mov	rbp, r9
	mov	edi, 0x3c8
	nop	
	call	malloc
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_2176
	mov	rsp, rsp
	mov	r9, rbp
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	rbp, rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2315
.label_2199:
	nop	
	mov	r15, rsi
	mov	rsp, rsp
	mov	rbp, r9
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	test	rax, rax
	je	.label_2176
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
	jmp	.label_2331
.label_2356:
	mov	edi, 0x3c8
	mov	rbx, r9
	call	malloc
	mov	r9, rbx
	lea	rdi, [rdi]
	xor	ebx, ebx
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2341
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_2343
.label_2146:
	mov	qword ptr [rsp + 0x18], r9
	mov	rbp, rbp
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rbp, rbp
	je	.label_2176
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	lea	rsi, [rsi]
	jmp	.label_2360
.label_2368:
	mov	dword ptr [r12], 3
	mov	r9, qword ptr [rsp + 0x18]
	jmp	.label_2226
.label_2251:
	nop	
	mov	r13, r9
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	r9, r13
	mov	rdx, qword ptr [rax]
	inc	rbx
.label_2160:
	lea	rdi, [rdi]
	mov	rsi, rbx
	xor	eax, eax
	nop	dword ptr [rax]
.label_2352:
	test	byte ptr [rdx + rsi*2 - 2], 8
	je	.label_2375
	lea	rsi, [rsi]
	mov	edi, 1
	mov	cl, al
	mov	rsp, rsp
	shl	rdi, cl
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_2375:
	cmp	esi, 0x5f
	mov	rbp, rbp
	je	.label_2136
	mov	rsp, rsp
	movzx	ecx, word ptr [rdx + rsi*2]
	lea	rsi, [rsi]
	and	ecx, 8
	lea	rdi, [rdi]
	test	cx, cx
	nop	
	je	.label_2138
.label_2136:
	lea	ecx, [rax + 1]
	mov	edi, 1
	shl	rdi, cl
	lea	rsi, [rsi]
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_2138:
	mov	rsp, rsp
	add	rax, 2
	add	rsi, 2
	nop	
	cmp	rax, 0x40
	mov	rbp, rbp
	jne	.label_2352
	inc	rbp
	mov	rsp, rsp
	add	rbx, 0x40
	cmp	ebp, 4
	lea	rdi, [rdi]
	jne	.label_2160
	jmp	.label_2166
.label_2238:
	mov	qword ptr [rsp + 0x60], r13
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2135
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
	jmp	.label_2177
.label_2267:
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
	je	.label_2135
	mov	r9, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	lea	rdi, [rdi]
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	rdi, rbx
	lea	rsi, [rsi]
	jmp	.label_2362
.label_2303:
	lea	rdi, [rdi]
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	nop	
	call	malloc
	test	rax, rax
	je	.label_2135
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
	jmp	.label_2363
.label_2258:
	mov	dword ptr [r12], 7
	mov	rsp, rsp
	jmp	.label_2226
.label_2284:
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	mov	ecx, 9
	mov	rsp, rsp
	xor	ebp, ebp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2235
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_2244
.label_2337:
	nop	
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	mov	ecx, 0xa
	xor	ebp, ebp
	test	rax, rax
	je	.label_2259
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rdi, [rdi]
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_2264
.label_2159:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2176
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
	jmp	.label_2277
.label_2176:
	lea	rdi, [rdi]
	mov	dword ptr [r12], 0xc
	lea	rsi, [rsi]
	jmp	.label_2237
.label_2273:
	mov	dword ptr [r12], 7
	jmp	.label_2296
.label_2276:
	mov	rbp, rdi
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rbx, r9
	lea	rdi, [rdi]
	call	free
	mov	r9, rbx
	lea	rdi, [rdi]
	jmp	.label_2150
.label_2188:
	lea	rsi, [rsi]
	test	rsi, rsi
	je	.label_2306
	mov	rsp, rsp
	mov	r14d, 0x400ff
.label_2294:
	nop	
	mov	rbp, rsi
	mov	rsi, qword ptr [rbp + 8]
	test	rsi, rsi
	jne	.label_2294
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	test	rsi, rsi
	jne	.label_2294
.label_2335:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	mov	rsp, rsp
	je	.label_2319
	nop	
	cmp	eax, 6
	jne	.label_2322
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
	jmp	.label_2261
.label_2319:
	mov	rdi, qword ptr [rbp + 0x28]
.label_2261:
	nop	
	call	free
.label_2322:
	mov	rax, qword ptr [rbp]
	nop	
	test	rax, rax
	je	.label_2306
	mov	rsi, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	cmp	rsi, rbp
	mov	rsp, rsp
	mov	rbp, rax
	je	.label_2335
	test	rsi, rsi
	mov	rbp, rax
	je	.label_2335
	jmp	.label_2294
.label_2306:
	lea	rsi, [rsi]
	mov	dword ptr [r12], 8
	jmp	.label_2237
.label_2235:
	mov	r9, qword ptr [rsp + 0x18]
	jmp	.label_2152
.label_2259:
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jmp	.label_2152
.label_2300:
	mov	dword ptr [r12], eax
	mov	rbp, rbp
	jmp	.label_2296
.label_2213:
	mov	qword ptr [rsp + 0x60], r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_2135
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x60]
	jmp	.label_2365
.label_2135:
	mov	dword ptr [r12], 0xc
	mov	r13, qword ptr [rsp + 0x60]
.label_2246:
	nop	
	mov	r15, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jmp	.label_2252
.label_2192:
	call	free
	mov	rbp, rbp
	mov	rdi, r14
	call	free
	nop	
	mov	ecx, 0xc
.label_2169:
	mov	r12, qword ptr [rsp + 0x98]
	mov	dword ptr [r12], ecx
.label_2296:
	mov	rsp, rsp
	mov	r9, r13
.label_2226:
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r9
.label_2252:
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
	jne	.label_2131
.label_2150:
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
.label_2324:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx + 8]
	nop	
	cmp	eax, 0x17
	ja	.label_2193
	mov	rsp, rsp
	mov	ecx, 0x8c0800
	mov	rbp, rbp
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_2197
	mov	r14, qword ptr [r13 + 0x48]
	nop	
	movdqu	xmm0, xmmword ptr [rbx]
	nop	
	movdqa	xmmword ptr [rsp + 0xb0], xmm0
	mov	rdx, -1
	nop	
	cmp	eax, 0x17
	mov	rbp, rbp
	je	.label_2202
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
	jmp	.label_2209
.label_2229:
	lea	rsi, [rsi]
	lea	rax, [r15 + r15*4]
	nop	
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	edx, 0x8000
	mov	rsp, rsp
	cmovle	rdx, rax
	nop	dword ptr [rax]
.label_2202:
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
	je	.label_2239
	nop	
	cmp	eax, 2
	je	.label_2245
	lea	rsi, [rsi]
	mov	dl, 0x2c
	cmp	ecx, 0x2c
	je	.label_2299
	nop	
	cmp	ecx, 0x30
	mov	rdx, -2
	nop	
	jb	.label_2202
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_2202
	cmp	r15, -2
	je	.label_2202
	cmp	ecx, 0x39
	nop	
	ja	.label_2202
	nop	
	cmp	r15, -1
	mov	rbp, rbp
	jne	.label_2229
	lea	rdx, [rcx - 0x30]
	nop	
	jmp	.label_2202
.label_2299:
	lea	rdi, [rdi]
	mov	esi, eax
	nop	dword ptr [rax]
.label_2239:
	cmp	r15, -1
	lea	rdi, [rdi]
	jne	.label_2269
	movzx	eax, dl
	cmp	eax, 0x2c
	lea	rdi, [rdi]
	jne	.label_2271
	cmp	esi, 1
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_2191
.label_2271:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe0], rbp
	mov	rbp, rbp
	jmp	.label_2279
	nop	word ptr cs:[rax + rax]
.label_2269:
	cmp	r15, -2
	je	.label_2245
	lea	rdi, [rdi]
	cmp	esi, 0x18
	mov	rsp, rsp
	je	.label_2288
	cmp	esi, 1
	lea	rsi, [rsi]
	jne	.label_2245
	movzx	ecx, dl
	cmp	ecx, 0x2c
	jne	.label_2245
.label_2191:
	mov	qword ptr [rsp + 0x60], r14
	nop	
	mov	r14, rbp
	mov	rbp, r12
	lea	rsi, [rsi]
	mov	rdx, -1
	jmp	.label_2297
.label_2288:
	mov	rbp, rbp
	mov	r14, rbp
	mov	rcx, r15
	mov	rbp, rbp
	jmp	.label_2305
.label_2345:
	lea	rax, [r12 + r12*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	nop	
	cmovg	rdx, rax
.label_2297:
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
	je	.label_2321
	cmp	eax, 2
	je	.label_2329
	lea	rsi, [rsi]
	cmp	ecx, 0x2c
	je	.label_2321
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	mov	rdx, -2
	jb	.label_2297
	mov	rbp, rbp
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_2297
	cmp	r12, -2
	je	.label_2297
	lea	rdi, [rdi]
	movzx	eax, cl
	mov	rsp, rsp
	cmp	eax, 0x39
	nop	
	ja	.label_2297
	lea	rdi, [rdi]
	cmp	r12, -1
	mov	rsp, rsp
	jne	.label_2345
	nop	
	add	rcx, -0x30
	mov	rdx, rcx
	nop	
	jmp	.label_2297
.label_2321:
	mov	rcx, r12
	lea	rsi, [rsi]
	cmp	rcx, -2
	lea	rsi, [rsi]
	je	.label_2329
	cmp	rcx, -1
	mov	r12, rbp
	lea	rsi, [rsi]
	je	.label_2305
	cmp	r15, rcx
	mov	rsp, rsp
	jg	.label_2348
.label_2305:
	cmp	eax, 0x18
	nop	
	jne	.label_2348
	mov	rsp, rsp
	cmp	rcx, -1
	mov	rax, rcx
	cmove	rax, r15
	cmp	rax, 0x8000
	lea	rdi, [rdi]
	jge	.label_2358
	nop	dword ptr [rax]
.label_2209:
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
	je	.label_2268
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
	je	.label_2241
	test	r15, r15
	lea	rdi, [rdi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rax
	nop	
	mov	r12, rdi
	mov	r8, qword ptr [rsp + 0x18]
	pxor	xmm1, xmm1
	jg	.label_2187
.label_2353:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r12 + 0x30]
	mov	rsp, rsp
	cmp	eax, 0x11
	jne	.label_2155
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	word ptr cs:[rax + rax]
.label_2167:
	mov	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_2167
	mov	rdx, qword ptr [rcx + 0x10]
	nop	
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_2167
	nop	
.label_2178:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	movzx	esi, dl
	lea	rsi, [rsi]
	cmp	esi, 0x11
	mov	rsp, rsp
	jne	.label_2175
	cmp	qword ptr [rcx + 0x28], rax
	nop	
	jne	.label_2175
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_2175:
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_2155
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rsi
	je	.label_2178
	lea	rsi, [rsi]
	test	rdx, rdx
	nop	
	mov	rcx, rsi
	mov	rbp, rbp
	je	.label_2178
	jmp	.label_2167
	nop	dword ptr [rax + rax]
.label_2155:
	nop	
	mov	qword ptr [rsp + 0xe0], rdi
	nop	
	cmp	r9, -1
	sete	bl
	nop	
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	mov	rsp, rsp
	je	.label_2196
	mov	rsp, rsp
	mov	rax, qword ptr [r8 + 0x70]
.label_2359:
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
	je	.label_2206
	mov	rsp, rsp
	mov	qword ptr [r12], r13
.label_2206:
	lea	rsi, [rsi]
	add	r15, 2
	cmp	r15, r9
	jg	.label_2228
	nop	
	jmp	.label_2233
	nop	word ptr cs:[rax + rax]
.label_2241:
	mov	rbx, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_2241
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_2241
	nop	
.label_2231:
	nop	
	mov	eax, dword ptr [rbx + 0x30]
	mov	rbp, rbp
	mov	ecx, 0x400ff
	and	eax, ecx
	nop	
	cmp	eax, 3
	lea	rsi, [rsi]
	je	.label_2249
	mov	rbp, rbp
	cmp	eax, 6
	jne	.label_2256
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
	jmp	.label_2270
	nop	dword ptr [rax]
.label_2249:
	mov	rdi, qword ptr [rbx + 0x28]
.label_2270:
	mov	rsp, rsp
	call	free
.label_2256:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_2268
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rsp, rsp
	je	.label_2231
	test	rax, rax
	mov	rbp, rbp
	mov	rbx, rdx
	je	.label_2231
	jmp	.label_2241
.label_2364:
	mov	qword ptr [rsp + 8], r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], r15
	lea	rdi, [rdi]
	mov	r15, r8
	lea	rsi, [rsi]
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_2302
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
	jmp	.label_2304
.label_2205:
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	r12, rbx
	lea	rdi, [rdi]
	jmp	.label_2220
.label_2262:
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
	je	.label_2240
	mov	rsp, rsp
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2278
.label_2302:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_2332
.label_2333:
	mov	qword ptr [r14], 0
.label_2332:
	xor	r12d, r12d
.label_2220:
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
	je	.label_2240
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r8 + 0x70]
	nop	
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_2179
	nop	word ptr cs:[rax + rax]
.label_2233:
	mov	rsp, rsp
	mov	rbp, qword ptr [r12]
	mov	rsp, rsp
	mov	ecx, dword ptr [r8 + 0x80]
	nop	
	cmp	ecx, 0xf
	mov	rbp, rbp
	je	.label_2364
	mov	rax, qword ptr [r8 + 0x70]
.label_2304:
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
.label_3744:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	nop	
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], rbx
	mov	rbp, rbp
	mov	rcx, rbx
	mov	rsp, rsp
	lea	r14, [rsp + 0x70]
	jmp	.label_2369
	nop	dword ptr [rax + rax]
.label_2204:
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
.label_2369:
	mov	qword ptr [rcx], rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + 0x30], 0x40000
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r14]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_2171
	mov	rsp, rsp
	lea	r14, [rbp + 8]
	mov	r12, rax
	jmp	.label_2183
	nop	word ptr [rax + rax]
.label_2171:
	mov	rbp, rbp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2224:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	r12, rcx
	je	.label_2194
	test	r12, r12
	jne	.label_2301
.label_2194:
	mov	r12, qword ptr [rax]
	nop	
	mov	rbp, qword ptr [rbp]
	test	r12, r12
	jne	.label_2224
	nop	
	jmp	.label_2198
.label_2301:
	lea	r14, [rbp + 0x10]
.label_2183:
	mov	rbp, rbp
	mov	ecx, dword ptr [r8 + 0x80]
	nop	
	cmp	ecx, 0xf
	nop	
	je	.label_2253
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_2204
.label_2253:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_2333
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
	jmp	.label_2204
	nop	word ptr cs:[rax + rax]
.label_2198:
	mov	rsp, rsp
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	nop	
	je	.label_2205
	mov	rax, qword ptr [r8 + 0x70]
	nop	
	mov	r12, rbx
.label_2179:
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
	je	.label_2240
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_2262
	lea	rsi, [rsi]
	mov	rax, qword ptr [r8 + 0x70]
.label_2278:
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
	jl	.label_2233
.label_2228:
	mov	rax, qword ptr [rsp + 0x38]
	test	rax, rax
	je	.label_2295
	mov	rbx, rax
	mov	rsp, rsp
	mov	ecx, dword ptr [r8 + 0x80]
	nop	
	cmp	ecx, 0xf
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x98]
	je	.label_2323
	lea	rsi, [rsi]
	mov	rax, qword ptr [r8 + 0x70]
.label_2320:
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
	jmp	.label_2307
.label_2295:
	mov	r12, qword ptr [rsp + 0x98]
.label_2307:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, r13
	nop	
	jmp	.label_2274
.label_2348:
	mov	qword ptr [rsp + 0xe0], r14
.label_2279:
	nop	
	mov	dword ptr [r12], 0xa
	lea	rsi, [rsi]
	xor	ecx, ecx
	jmp	.label_2268
.label_2187:
	mov	rbp, rbp
	cmp	r15, 2
	mov	r13, rdi
	mov	rbp, rbp
	mov	rbp, rdi
	jl	.label_2336
	mov	rax, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rax]
	mov	r13, rax
	mov	rbp, rbp
	mov	ebx, 2
	lea	rdi, [rdi]
	mov	rdi, rax
	jmp	.label_2340
.label_2196:
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
	je	.label_2240
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x70], rax
	mov	rsp, rsp
	mov	dword ptr [r8 + 0x80], 0
	mov	rbp, rbp
	xor	ecx, ecx
	jmp	.label_2359
.label_2329:
	mov	r12, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x60]
.label_2245:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x50], 0
	nop	
	je	.label_2370
	mov	qword ptr [r13 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xb0]
	nop	
	movdqu	xmmword ptr [rbx], xmm0
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 8], 1
	nop	
	mov	rcx, rbp
	mov	qword ptr [rsp + 0xe0], rbp
	jmp	.label_2268
.label_2242:
	nop	
	mov	qword ptr [rsp + 0x60], rdi
	mov	qword ptr [rsp + 8], r9
	mov	edi, 0x3c8
	mov	rsp, rsp
	call	malloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_2139
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
	jmp	.label_2132
.label_2214:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], rdi
	mov	rsp, rsp
	mov	r13, rbp
	jmp	.label_2208
.label_2139:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], 0
	lea	rdi, [rdi]
	jmp	.label_2168
.label_2339:
	lea	rsi, [rsi]
	mov	qword ptr [r12], 0
.label_2168:
	nop	
	xor	r13d, r13d
.label_2208:
	lea	rdi, [rdi]
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x18]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 8]
	nop	
	je	.label_2240
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
	jmp	.label_2185
	nop	
.label_2340:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	mov	rbp, rbp
	je	.label_2242
	mov	rsp, rsp
	mov	r14, rbp
	mov	rax, qword ptr [r8 + 0x70]
.label_2132:
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
	jmp	.label_2203
	nop	word ptr cs:[rax + rax]
.label_2201:
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
.label_2203:
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
	je	.label_2254
	lea	rdi, [rdi]
	mov	r14, rdx
	lea	r12, [r14 + 8]
	mov	r13, rax
	jmp	.label_2265
	nop	dword ptr [rax]
.label_2254:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2282:
	mov	rcx, rax
	mov	rax, r13
	mov	r13, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	r13, rcx
	je	.label_2158
	test	r13, r13
	lea	rdi, [rdi]
	jne	.label_2210
.label_2158:
	nop	
	mov	r13, qword ptr [rax]
	mov	rdx, qword ptr [rdx]
	test	r13, r13
	lea	rsi, [rsi]
	jne	.label_2282
	jmp	.label_2286
.label_2210:
	lea	rdi, [rdi]
	mov	r14, rdx
	lea	rsi, [rsi]
	lea	r12, [r14 + 0x10]
.label_2265:
	mov	rbp, rbp
	mov	ecx, dword ptr [r8 + 0x80]
	lea	rdi, [rdi]
	cmp	ecx, 0xf
	je	.label_2289
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_2201
.label_2289:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], rdi
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_2339
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
	jmp	.label_2201
	nop	word ptr cs:[rax + rax]
.label_2286:
	mov	ecx, dword ptr [r8 + 0x80]
	mov	rbp, rbp
	cmp	ecx, 0xf
	lea	rsi, [rsi]
	je	.label_2214
	nop	
	mov	rax, qword ptr [r8 + 0x70]
	mov	r13, rbp
.label_2185:
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
	je	.label_2263
	mov	qword ptr [rdi], rdx
.label_2263:
	lea	rsi, [rsi]
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_2240
	lea	rdi, [rdi]
	mov	rbp, rdx
	nop	
	mov	qword ptr [r13], rbp
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	mov	rdi, rbp
	nop	
	jl	.label_2340
.label_2336:
	cmp	r15, r9
	mov	rsp, rsp
	jne	.label_2354
	mov	qword ptr [rsp + 0x18], r8
	lea	rdi, [rdi]
	mov	rcx, rbp
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	jmp	.label_2268
.label_2323:
	mov	qword ptr [rsp + 0x18], r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	nop	
	mov	ecx, 0
	lea	rsi, [rsi]
	je	.label_2268
	mov	r8, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	rbp, rbp
	mov	dword ptr [r8 + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	pxor	xmm1, xmm1
	jmp	.label_2320
.label_2354:
	mov	rbx, qword ptr [r13]
	mov	rbp, rbp
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_2377
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rbp
	lea	rdi, [rdi]
	mov	rax, qword ptr [r8 + 0x70]
.label_2283:
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
	jmp	.label_2142
	nop	word ptr cs:[rax + rax]
.label_2186:
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
.label_2142:
	mov	rsp, rsp
	mov	qword ptr [rcx], rbx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp]
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	je	.label_2200
	lea	rbp, [rbx + 8]
	mov	r13, rax
	jmp	.label_2287
.label_2200:
	lea	rsi, [rsi]
	xor	eax, eax
.label_2216:
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	rax, r13
	nop	
	mov	r13, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	r13, rcx
	je	.label_2211
	test	r13, r13
	lea	rsi, [rsi]
	jne	.label_2215
.label_2211:
	mov	rsp, rsp
	mov	r13, qword ptr [rax]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbx]
	lea	rsi, [rsi]
	test	r13, r13
	nop	
	jne	.label_2216
	jmp	.label_2222
.label_2215:
	lea	rbp, [rbx + 0x10]
.label_2287:
	mov	ecx, dword ptr [r8 + 0x80]
	lea	rdi, [rdi]
	cmp	ecx, 0xf
	je	.label_2376
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_2186
.label_2376:
	mov	qword ptr [rsp + 8], r9
	mov	r14, r8
	mov	edi, 0x3c8
	nop	
	call	malloc
	test	rax, rax
	je	.label_2234
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
	jmp	.label_2186
.label_2370:
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
	jmp	.label_2268
.label_2222:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xe0]
	jmp	.label_2353
.label_2358:
	mov	qword ptr [rsp + 0xe0], r14
	mov	rsp, rsp
	mov	dword ptr [r12], 0xf
	nop	
	xor	ecx, ecx
	jmp	.label_2268
.label_2377:
	lea	rsi, [rsi]
	mov	r14, r9
	nop	
	mov	r12, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rbp, rbp
	je	.label_2217
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
	jmp	.label_2283
.label_2217:
	mov	qword ptr [rsp + 0x70], 0
	nop	
	jmp	.label_2240
.label_2234:
	lea	rsi, [rsi]
	mov	qword ptr [rbp], 0
.label_2240:
	nop	
	mov	r12, qword ptr [rsp + 0x98]
	mov	dword ptr [r12], 0xc
	xor	ecx, ecx
.label_2268:
	test	rcx, rcx
	nop	
	sete	al
	jne	.label_2274
	lea	rsi, [rsi]
	mov	edx, dword ptr [r12]
	lea	rdi, [rdi]
	test	edx, edx
	mov	rbx, qword ptr [rsp]
	lea	rsi, [rsi]
	je	.label_2311
	lea	rsi, [rsi]
	jmp	.label_2318
	nop	word ptr cs:[rax + rax]
.label_2274:
	mov	rbx, qword ptr [rsp]
.label_2311:
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rbp, rcx
	nop	
	mov	r13, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	je	.label_2324
	nop	
	movzx	edx, byte ptr [rbx + 8]
	mov	rbp, rbp
	cmp	edx, 0x17
	mov	rbp, rbp
	je	.label_2330
	nop	
	cmp	edx, 0xb
	nop	
	mov	rbp, rcx
	mov	rbp, rbp
	jne	.label_2324
.label_2330:
	mov	rbp, rbp
	test	al, al
	jne	.label_2317
	mov	r14d, 0x400ff
	nop	word ptr cs:[rax + rax]
.label_2338:
	nop	
	mov	rbp, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	test	rcx, rcx
	jne	.label_2338
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	lea	rsi, [rsi]
	jne	.label_2338
	nop	
.label_2148:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp + 0x30]
	lea	rdi, [rdi]
	and	eax, r14d
	lea	rdi, [rdi]
	cmp	eax, 3
	mov	rbp, rbp
	je	.label_2344
	lea	rsi, [rsi]
	cmp	eax, 6
	nop	
	jne	.label_2346
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
	jmp	.label_2367
	nop	dword ptr [rax + rax]
.label_2344:
	mov	rdi, qword ptr [rbp + 0x28]
.label_2367:
	lea	rsi, [rsi]
	call	free
.label_2346:
	nop	
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_2317
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_2148
	test	rcx, rcx
	mov	rbp, rax
	je	.label_2148
	jmp	.label_2338
.label_2318:
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rcx, qword ptr [rsp + 0xe0]
	test	rcx, rcx
	nop	
	je	.label_2131
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_2145:
	mov	rbp, rcx
	nop	
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	lea	rsi, [rsi]
	jne	.label_2145
	nop	
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	lea	rdi, [rdi]
	jne	.label_2145
	nop	dword ptr [rax]
.label_2182:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_2153
	cmp	eax, 6
	jne	.label_2157
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
	jmp	.label_2172
	nop	
.label_2153:
	nop	
	mov	rdi, qword ptr [rbp + 0x28]
.label_2172:
	lea	rsi, [rsi]
	call	free
.label_2157:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_2131
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_2182
	test	rcx, rcx
	lea	rdi, [rdi]
	mov	rbp, rax
	je	.label_2182
	mov	rsp, rsp
	jmp	.label_2145
.label_2317:
	mov	dword ptr [r12], 0xd
.label_2237:
	lea	rsi, [rsi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_2131
.label_2193:
	lea	rdi, [rdi]
	mov	r15, rbp
	mov	rsp, rsp
	jmp	.label_2131
.label_2197:
	mov	r15, rbp
.label_2131:
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
.label_2357:
	mov	edi, OFFSET FLAT:.str.5_3
	mov	esi, OFFSET FLAT:.str.6_3
	lea	rdi, [rdi]
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x420d30

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
	je	.label_2396
	mov	qword ptr [rsp], r15
	nop	
	mov	edi, 0x50
	nop	
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_2390
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
	jne	.label_2391
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_2394
	lea	rdi, [rdi]
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_2386:
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
	jne	.label_2386
.label_2394:
	mov	eax, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	test	al, al
	je	.label_2388
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
.label_2388:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_2380
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
.label_2380:
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	mov	rsp, rsp
	je	.label_2387
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x70]
.label_2385:
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
	jl	.label_2389
	lea	rsi, [rsi]
	or	byte ptr [r12 + 0xb0], 2
	mov	rsp, rsp
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	lea	rsi, [rsi]
	je	.label_2393
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r12 + 0x70]
.label_2392:
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
	je	.label_2395
	mov	rcx, qword ptr [r12 + 0x70]
.label_2382:
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
	jmp	.label_2379
.label_2389:
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
	jmp	.label_2379
.label_2396:
	mov	rsp, rsp
	mov	dword ptr [r15], 0xc
	nop	
	jmp	.label_2381
.label_2390:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	jmp	.label_2384
.label_2391:
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
	jmp	.label_2381
.label_2387:
	lea	rsi, [rsi]
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_2383
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_2385
.label_2393:
	mov	edi, 0x3c8
	call	malloc
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_2383
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x70], rbp
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x80], 0
	nop	
	xor	eax, eax
	jmp	.label_2392
.label_2383:
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
.label_2384:
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
.label_2381:
	xor	eax, eax
.label_2379:
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
.label_2395:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	mov	rbp, rbp
	xor	eax, eax
	test	rcx, rcx
	nop	
	je	.label_2379
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	rsp, rsp
	mov	dword ptr [r12 + 0x80], 0
	mov	rsp, rsp
	jmp	.label_2382
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x421240

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	lea	rsi, [rsi]
	jle	.label_2397
	mov	rcx, qword ptr [rsi + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	mov	rsp, rsp
	jl	.label_2403
	mov	rsp, rsp
	mov	r8, qword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_2403
	mov	rcx, qword ptr [rsi + 0x10]
	nop	
	cmp	dword ptr [rcx + r8*4], -1
	lea	rdi, [rdi]
	je	.label_2402
.label_2403:
	test	dl, 1
	mov	rsp, rsp
	je	.label_2400
	mov	rsp, rsp
	movzx	ecx, al
	cmp	ecx, 0x5c
	lea	rsi, [rsi]
	jne	.label_2400
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	lea	rsi, [rsi]
	jge	.label_2400
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x48], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	lea	rsi, [rsi]
	jmp	.label_2402
.label_2397:
	mov	byte ptr [rdi + 8], 2
	mov	rsp, rsp
	xor	eax, eax
	ret	
.label_2400:
	mov	rbp, rbp
	cmp	eax, 0x5b
	jne	.label_2404
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsi + 0x58]
	lea	rsi, [rsi]
	jge	.label_2405
	mov	rcx, qword ptr [rsi + 8]
	nop	
	mov	al, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	jmp	.label_2401
.label_2404:
	cmp	eax, 0x5e
	nop	
	je	.label_2409
	lea	rdi, [rdi]
	cmp	eax, 0x5d
	je	.label_2399
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_2402
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	lea	rsi, [rsi]
	ret	
.label_2402:
	mov	byte ptr [rdi + 8], 1
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	ret	
.label_2405:
	mov	rbp, rbp
	xor	eax, eax
.label_2401:
	mov	byte ptr [rdi], al
	nop	
	movzx	eax, al
	nop	
	cmp	eax, 0x3d
	je	.label_2408
	cmp	eax, 0x3a
	je	.label_2398
	lea	rdi, [rdi]
	cmp	eax, 0x2e
	jne	.label_2406
	mov	byte ptr [rdi + 8], 0x1a
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	ret	
.label_2399:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_2398:
	mov	rsp, rsp
	test	dl, 4
	mov	rsp, rsp
	jne	.label_2407
.label_2406:
	nop	
	mov	byte ptr [rdi + 8], 1
	mov	rbp, rbp
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_2409:
	lea	rdi, [rdi]
	mov	byte ptr [rdi + 8], 0x19
	mov	rsp, rsp
	mov	eax, 1
	ret	
.label_2408:
	mov	byte ptr [rdi + 8], 0x1c
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	ret	
.label_2407:
	mov	byte ptr [rdi + 8], 0x1e
	lea	rdi, [rdi]
	mov	eax, 2
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4213c0

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
	je	.label_2417
	lea	rax, [rdx + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	nop	
	jge	.label_2417
	nop	
	mov	r10, qword ptr [rsi + 0x10]
	lea	r11, [r10 + rdx*4]
	mov	edi, 1
	nop	
.label_2414:
	cmp	dword ptr [r11 + rdi*4], -1
	jne	.label_2410
	lea	rsi, [rsi]
	lea	rax, [rdx + rdi + 1]
	inc	rdi
	cmp	rax, rbx
	lea	rdi, [rdi]
	jl	.label_2414
.label_2410:
	cmp	edi, 2
	lea	rsi, [rsi]
	jl	.label_2417
	mov	dword ptr [r14], 1
	mov	rbp, rbp
	mov	eax, dword ptr [r10 + rdx*4]
	lea	rdi, [rdi]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	nop	
	add	rax, rdx
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_2420
.label_2417:
	movsxd	rax, ecx
	add	rdx, rax
	mov	qword ptr [rsi + 0x48], rdx
	movzx	edi, byte ptr [r15 + 8]
	mov	rbp, rbp
	lea	eax, [rdi - 0x16]
	cmp	eax, 8
	ja	.label_2425
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_2429]]
.label_3714:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], rdx
	mov	rsp, rsp
	jle	.label_2413
	mov	rbp, rbp
	mov	r11b, byte ptr [r15]
	xor	r12d, r12d
	jmp	.label_2411
	nop	dword ptr [rax]
.label_2419:
	inc	r12
	mov	rbp, rbp
	movzx	edi, byte ptr [r15 + 8]
.label_2411:
	lea	rsi, [rsi]
	movzx	edi, dil
	mov	rsp, rsp
	cmp	edi, 0x1e
	nop	
	jne	.label_2418
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_2422
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	nop	
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_2421
	nop	word ptr cs:[rax + rax]
.label_2418:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi + 8]
.label_2415:
	mov	bl, byte ptr [rbx + rdx]
.label_2421:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_2413
	nop	
	movzx	edx, r11b
	movzx	ecx, bl
	nop	
	cmp	ecx, edx
	jne	.label_2412
	mov	rcx, qword ptr [rsi + 8]
	movzx	ecx, byte ptr [rcx + rdi]
	cmp	ecx, 0x5d
	je	.label_2428
.label_2412:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	byte ptr [rcx + r12], bl
	lea	rdi, [rdi]
	cmp	r12, 0x1e
	lea	rdi, [rdi]
	jle	.label_2419
	jmp	.label_2413
.label_2422:
	mov	rbp, rbp
	cmp	byte ptr [rsi + 0x8c], 0
	lea	rdi, [rdi]
	je	.label_2423
	nop	
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	nop	
	cmp	r8, r9
	lea	rsi, [rsi]
	je	.label_2426
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	lea	rdi, [rdi]
	je	.label_2430
.label_2426:
	mov	rdx, qword ptr [rsi]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi + 0x18]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_2430
	nop	
	mov	edi, 1
	nop	
	cmp	dword ptr [rsi + 0x90], 1
	mov	rsp, rsp
	je	.label_2416
	lea	rdx, [r8 + 1]
	nop	
	cmp	rdx, r9
	jge	.label_2416
	lea	r10, [r8*4]
	lea	rdi, [rdi]
	add	r10, qword ptr [rsi + 0x10]
	lea	rsi, [rsi]
	mov	edi, 1
.label_2427:
	lea	rdi, [rdi]
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_2416
	lea	rdx, [r8 + rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	mov	rbp, rbp
	cmp	rdx, r9
	jl	.label_2427
.label_2416:
	movsxd	rdi, edi
	mov	rsp, rsp
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbp, rbp
	jmp	.label_2421
.label_2423:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdi]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbp, rbp
	mov	rbx, qword ptr [rsi]
	jmp	.label_2415
.label_2430:
	lea	rdi, [r8 + 1]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x48], rdi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_2421
.label_2428:
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
	je	.label_2424
	cmp	ecx, 0x1c
	je	.label_2431
	cmp	ecx, 0x1a
	mov	rbp, rbp
	jne	.label_2413
	mov	dword ptr [r14], 3
	nop	
	jmp	.label_2413
.label_2424:
	mov	dword ptr [r14], 4
	lea	rdi, [rdi]
	jmp	.label_2413
.label_2431:
	mov	dword ptr [r14], 2
	lea	rdi, [rdi]
	jmp	.label_2413
.label_3713:
	test	r9b, r9b
	lea	rsi, [rsi]
	jne	.label_2425
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	mov	rdx, r8
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	eax, 0xb
	cmp	ecx, 0x15
	jne	.label_2413
.label_2425:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_2420:
	xor	eax, eax
.label_2413:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4216f0

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
	je	.label_2477
	nop	
	mov	esi, OFFSET FLAT:.str.7_2
	lea	rsi, [rsi]
	mov	rdi, r12
	call	strcmp
	nop	
	test	eax, eax
	nop	
	je	.label_2443
	mov	esi, OFFSET FLAT:.str.8_3
	mov	rsp, rsp
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_2477
.label_2443:
	nop	
	mov	r12d, OFFSET FLAT:.str.9_3
.label_2477:
	nop	
	mov	rbp, qword ptr [r13]
	nop	
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_2456
.label_2447:
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
	je	.label_2476
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.10_3
	mov	rbp, rbp
	mov	rdi, r12
	nop	
	call	strcmp
	test	eax, eax
	nop	
	je	.label_2484
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.8_3
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_2491
	mov	esi, OFFSET FLAT:.str.3_7
	nop	
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_2474
	mov	esi, OFFSET FLAT:.str.9_3
	nop	
	mov	rdi, r12
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	je	.label_2451
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.11_3
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	je	.label_2444
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.12_3
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_2450
	mov	esi, OFFSET FLAT:.str.7_2
	mov	rsp, rsp
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2461
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.13_2
	lea	rdi, [rdi]
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_2488
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.14_2
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_2469
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, r12
	call	strcmp
	nop	
	test	eax, eax
	mov	rsp, rsp
	je	.label_2465
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
	jne	.label_2434
	lea	rdi, [rdi]
	call	__ctype_b_loc
	xor	edx, edx
	mov	rbp, rbp
	test	r14, r14
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	jne	.label_2446
.label_2445:
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	mov	rbp, rbp
	je	.label_2475
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
.label_2475:
	inc	rdx
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	jne	.label_2445
	mov	rsp, rsp
	jmp	.label_2434
.label_2476:
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	jne	.label_2455
	nop	
.label_2473:
	lea	rdi, [rdi]
	test	byte ptr [rsi + rdx*2], 8
	je	.label_2438
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
.label_2438:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	mov	rbp, rbp
	cmp	rdx, 0x100
	jne	.label_2473
	jmp	.label_2434
	nop	dword ptr [rax]
.label_2455:
	test	byte ptr [rsi + rdx*2], 8
	je	.label_2441
	mov	cl, byte ptr [r14 + rdx]
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rsi, [rsi]
	shl	rax, cl
	mov	rbp, rbp
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2441:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rsi, [rsi]
	jne	.label_2455
	jmp	.label_2434
.label_2484:
	call	__ctype_b_loc
	mov	rsp, rsp
	xor	edx, edx
	test	r14, r14
	nop	
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	jne	.label_2471
	nop	word ptr cs:[rax + rax]
.label_2452:
	test	byte ptr [rsi + rdx*2], 2
	je	.label_2437
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
.label_2437:
	nop	
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdx, 0x100
	jne	.label_2452
	jmp	.label_2434
	nop	
.label_2471:
	test	byte ptr [rsi + rdx*2], 2
	lea	rsi, [rsi]
	je	.label_2463
	lea	rsi, [rsi]
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	nop	
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	lea	rsi, [rsi]
	or	qword ptr [r15 + rcx*8], rax
.label_2463:
	nop	
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	cmp	rdx, 0x100
	nop	
	jne	.label_2471
	nop	
	jmp	.label_2434
.label_2491:
	nop	
	call	__ctype_b_loc
	xor	edx, edx
	mov	rbp, rbp
	test	r14, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	jne	.label_2478
	nop	dword ptr [rax + rax]
.label_2494:
	mov	rbp, rbp
	test	byte ptr [rsi + rdx*2 + 1], 2
	je	.label_2486
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
.label_2486:
	inc	rdx
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	lea	rsi, [rsi]
	jne	.label_2494
	mov	rsp, rsp
	jmp	.label_2434
	nop	word ptr cs:[rax + rax]
.label_2478:
	lea	rsi, [rsi]
	test	byte ptr [rsi + rdx*2 + 1], 2
	mov	rsp, rsp
	je	.label_2440
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	mov	rbp, rbp
	shl	rax, cl
	shr	cl, 6
	mov	rbp, rbp
	movzx	ecx, cl
	mov	rsp, rsp
	or	qword ptr [r15 + rcx*8], rax
.label_2440:
	nop	
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_2478
	mov	rbp, rbp
	jmp	.label_2434
.label_2474:
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_2468
	nop	
.label_2482:
	mov	rsp, rsp
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_2470
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
.label_2470:
	nop	
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_2482
	nop	
	jmp	.label_2434
.label_2468:
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_2490
	mov	cl, byte ptr [r14 + rdx]
	nop	
	mov	eax, 1
	shl	rax, cl
	nop	
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2490:
	lea	rsi, [rsi]
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	cmp	rdx, 0x100
	jne	.label_2468
	jmp	.label_2434
.label_2456:
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
	je	.label_2434
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	mov	rsp, rsp
	jmp	.label_2447
.label_2451:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	nop	
	jne	.label_2458
	nop	word ptr cs:[rax + rax]
.label_2479:
	mov	rbp, rbp
	test	byte ptr [rsi + rdx*2 + 1], 4
	lea	rdi, [rdi]
	je	.label_2467
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
.label_2467:
	nop	
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	mov	rsp, rsp
	jne	.label_2479
	jmp	.label_2434
.label_2458:
	test	byte ptr [rsi + rdx*2 + 1], 4
	je	.label_2487
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	mov	rbp, rbp
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	rsp, rsp
	or	qword ptr [r15 + rcx*8], rax
.label_2487:
	nop	
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_2458
	jmp	.label_2434
.label_2444:
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	jne	.label_2435
	nop	dword ptr [rax]
.label_2459:
	mov	rbp, rbp
	test	byte ptr [rsi + rdx*2 + 1], 8
	je	.label_2481
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
.label_2481:
	inc	rdx
	xor	eax, eax
	nop	
	cmp	rdx, 0x100
	jne	.label_2459
	mov	rbp, rbp
	jmp	.label_2434
.label_2435:
	test	byte ptr [rsi + rdx*2 + 1], 8
	nop	
	je	.label_2466
	mov	rbp, rbp
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	nop	
	shr	cl, 6
	nop	
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2466:
	lea	rsi, [rsi]
	inc	rdx
	mov	rbp, rbp
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rsp, rsp
	jne	.label_2435
	mov	rbp, rbp
	jmp	.label_2434
.label_2450:
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	test	r14, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	jne	.label_2449
	nop	dword ptr [rax + rax]
.label_2432:
	nop	
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_2457
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
.label_2457:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdx, 0x100
	jne	.label_2432
	jmp	.label_2434
.label_2449:
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_2439
	mov	rsp, rsp
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	lea	rsi, [rsi]
	shr	cl, 6
	movzx	ecx, cl
	mov	rsp, rsp
	or	qword ptr [r15 + rcx*8], rax
.label_2439:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_2449
	nop	
	jmp	.label_2434
.label_2461:
	nop	
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	jne	.label_2462
	nop	
.label_2489:
	nop	
	test	byte ptr [rsi + rdx*2 + 1], 1
	je	.label_2433
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
.label_2433:
	inc	rdx
	mov	rbp, rbp
	xor	eax, eax
	cmp	rdx, 0x100
	nop	
	jne	.label_2489
	jmp	.label_2434
.label_2462:
	test	byte ptr [rsi + rdx*2 + 1], 1
	lea	rdi, [rdi]
	je	.label_2483
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2483:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rbp, rbp
	jne	.label_2462
	jmp	.label_2434
.label_2488:
	nop	
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	jne	.label_2492
	nop	word ptr cs:[rax + rax]
.label_2453:
	test	byte ptr [rsi + rdx*2], 1
	lea	rdi, [rdi]
	je	.label_2464
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
.label_2464:
	mov	rsp, rsp
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2453
	jmp	.label_2434
.label_2492:
	test	byte ptr [rsi + rdx*2], 1
	lea	rsi, [rsi]
	je	.label_2460
	mov	cl, byte ptr [r14 + rdx]
	lea	rsi, [rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	rbp, rbp
	or	qword ptr [r15 + rcx*8], rax
.label_2460:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2492
	jmp	.label_2434
.label_2469:
	nop	
	call	__ctype_b_loc
	lea	rdi, [rdi]
	xor	edx, edx
	test	r14, r14
	nop	
	mov	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	jne	.label_2454
.label_2493:
	mov	rbp, rbp
	cmp	word ptr [rsi + rdx*2], 0
	nop	
	jns	.label_2480
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
.label_2480:
	mov	rsp, rsp
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_2493
	nop	
	jmp	.label_2434
.label_2454:
	cmp	word ptr [rsi + rdx*2], 0
	mov	rbp, rbp
	jns	.label_2495
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	lea	rsi, [rsi]
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2495:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	nop	
	cmp	rdx, 0x100
	mov	rsp, rsp
	jne	.label_2454
	jmp	.label_2434
.label_2446:
	nop	
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	mov	rbp, rbp
	je	.label_2448
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
.label_2448:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rbp, rbp
	jne	.label_2446
	mov	rsp, rsp
	jmp	.label_2434
.label_2465:
	call	__ctype_b_loc
	xor	edx, edx
	lea	rsi, [rsi]
	test	r14, r14
	nop	
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	jne	.label_2436
.label_2485:
	test	byte ptr [rsi + rdx*2], 4
	nop	
	je	.label_2442
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
.label_2442:
	nop	
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rbp, rbp
	jne	.label_2485
.label_2434:
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
.label_2436:
	test	byte ptr [rsi + rdx*2], 4
	je	.label_2472
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	nop	
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2472:
	mov	rsp, rsp
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	nop	
	jne	.label_2436
	jmp	.label_2434
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x422130

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
	ja	.label_2504
	xor	eax, eax
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_2498]]
.label_3674:
	mov	rsp, rsp
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_658]]
	lea	rsi, [rsi]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	lea	rsi, [rsi]
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_2497
	mov	qword ptr [rax], r15
	mov	rsp, rsp
	jmp	.label_2496
.label_3675:
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
	js	.label_2506
	nop	
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	lea	rsi, [rsi]
	js	.label_2507
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
	je	.label_2500
	lea	rax, [r12 + rbx*8 + 8]
	mov	rbp, rbp
	cmp	r14, r15
	mov	rsp, rsp
	jne	.label_2501
	mov	qword ptr [rax], 1
	mov	rsp, rsp
	mov	qword ptr [rcx], r14
	lea	rsi, [rsi]
	jmp	.label_2496
.label_3672:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	nop	
	je	.label_2500
	nop	
	mov	edi, OFFSET FLAT:.str.17_3
	nop	
	mov	esi, OFFSET FLAT:.str.6_3
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_3673:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	mov	rsp, rsp
	movzx	eax, byte ptr [rsi + 0x30]
	lea	rsi, [rsi]
	cmp	eax, 4
	mov	rbp, rbp
	jne	.label_2496
	nop	
	mov	r14, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_658]]
	mov	rsp, rsp
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_2503
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbx
	mov	rsp, rsp
	jmp	.label_2496
.label_2504:
	mov	rbp, rbp
	test	dl, 8
	jne	.label_2499
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	jmp	.label_2496
.label_2501:
	mov	qword ptr [rax], 2
	jge	.label_2502
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	lea	rdi, [rdi]
	jmp	.label_2496
.label_2502:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_2496:
	xor	eax, eax
.label_2500:
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
.label_2497:
	lea	rax, [r14 + rbx*8]
.label_2505:
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_2500
.label_2503:
	mov	rbp, rbp
	lea	rax, [r14 + r15*8]
	jmp	.label_2505
.label_2506:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.18_3
	mov	esi, OFFSET FLAT:.str.6_3
	mov	edx, 0x5af
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_2507:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.19_2
	mov	esi, OFFSET FLAT:.str.6_3
	mov	rbp, rbp
	mov	edx, 0x5b0
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rsp, rsp
	call	__assert_fail
.label_2499:
	mov	edi, OFFSET FLAT:.str.20_1
	mov	esi, OFFSET FLAT:.str.6_3
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rbp, rbp
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4223e0

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
	mov	r14, rcx
	lea	rsi, [rsi]
	mov	rbx, rsi
	nop	
	mov	r12, qword ptr [r14 + 8]
	mov	rsp, rsp
	test	dl, 0x10
	mov	rsp, rsp
	je	.label_2512
	mov	rsp, rsp
	test	r12, r12
	je	.label_2512
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdi, [rdi]
	cmp	rax, 0x3f
	mov	rsp, rsp
	jg	.label_2519
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0xa0]
	mov	rsp, rsp
	bt	rcx, rax
	jae	.label_2519
.label_2512:
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	je	.label_2520
	nop	
	mov	qword ptr [rsp], rdi
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x70]
.label_2514:
	lea	ecx, [r13 + 1]
	lea	rdi, [rdi]
	mov	dword ptr [rbx + 0x80], ecx
	lea	rdi, [rdi]
	movsxd	rcx, r13d
	mov	rsp, rsp
	shl	rcx, 6
	mov	rbp, rbp
	lea	r13, [rax + rcx + 8]
	mov	rbp, rbp
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 8
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rdi, [rdi]
	mov	r15d, dword ptr [rbx + 0x80]
	cmp	r15d, 0xf
	mov	rbp, rbp
	je	.label_2509
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x70]
.label_2513:
	lea	ecx, [r15 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	lea	rsi, [rsi]
	movsxd	rcx, r15d
	shl	rcx, 6
	mov	rsp, rsp
	lea	r15, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	nop	
	mov	dword ptr [rax + rcx + 0x38], 9
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x40], -1
.label_2522:
	lea	rsi, [rsi]
	test	r12, r12
	mov	rbp, r15
	je	.label_2511
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rbx + 0x80]
	nop	
	cmp	ebp, 0xf
	mov	rbp, rbp
	je	.label_2516
	nop	
	mov	rax, qword ptr [rbx + 0x70]
.label_2515:
	mov	rbp, rbp
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	nop	
	movsxd	rcx, ebp
	lea	rsi, [rsi]
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rdi, [rdi]
	mov	qword ptr [r12], rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_2511
	lea	rdi, [rdi]
	mov	qword ptr [r15], rbp
.label_2511:
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rbx + 0x80]
	cmp	r12d, 0xf
	nop	
	je	.label_2517
	mov	rax, qword ptr [rbx + 0x70]
.label_2510:
	lea	ecx, [r12 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	lea	rdi, [rdi]
	movsxd	rcx, r12d
	lea	rsi, [rsi]
	shl	rcx, 6
	mov	rbp, rbp
	lea	r12, [rax + rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	nop	
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rdi, [rdi]
	test	r13, r13
	je	.label_2521
	nop	
	mov	qword ptr [r13], r12
.label_2521:
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_2518
	mov	rbp, rbp
	mov	qword ptr [rbp], r12
.label_2518:
	test	r15, r15
	nop	
	je	.label_2508
	test	r13, r13
	je	.label_2508
	mov	rbp, rbp
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_2508
	lea	rsi, [rsi]
	test	r12, r12
	je	.label_2508
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [r15 + 0x28], rax
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x28], rax
	mov	eax, 0x80000
	lea	rsi, [rsi]
	and	eax, dword ptr [r14 + 0x30]
	lea	rdi, [rdi]
	mov	ecx, 0xfff7ffff
	mov	rbp, rbp
	mov	edx, dword ptr [r15 + 0x30]
	lea	rsi, [rsi]
	and	edx, ecx
	mov	rsp, rsp
	or	edx, eax
	mov	dword ptr [r15 + 0x30], edx
	mov	rbp, rbp
	and	ecx, dword ptr [r13 + 0x30]
	or	ecx, eax
	mov	dword ptr [r13 + 0x30], ecx
.label_2519:
	mov	rax, r12
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_2520:
	mov	rsp, rsp
	mov	qword ptr [rsp], rdi
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	xor	r13d, r13d
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_2509
	nop	
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_2514
.label_2509:
	nop	
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rbp
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_2522
	mov	rcx, qword ptr [rbx + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	nop	
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_2513
.label_2517:
	mov	edi, 0x3c8
	call	malloc
	xor	r12d, r12d
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_2518
	nop	
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_2510
.label_2508:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
	xor	r12d, r12d
	jmp	.label_2519
.label_2516:
	mov	rbp, rbp
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_2511
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_2515
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4227c0

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
	jae	.label_2523
.label_2527:
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
	jne	.label_2524
	lea	rdi, [rdi]
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	lea	rsi, [rsi]
	jg	.label_2528
.label_2524:
	lea	rdi, [rdi]
	cmp	eax, 6
	lea	rdi, [rdi]
	sete	cl
.label_2528:
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
.label_2526:
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
.label_2523:
	lea	rbp, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rbp, rax
	lea	rdi, [rdi]
	ja	.label_2526
	nop	
	mov	rdi, qword ptr [rbx]
	nop	
	mov	rsi, r13
	lea	rdi, [rdi]
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_2526
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
	je	.label_2525
	nop	
	test	rax, rax
	mov	rsp, rsp
	je	.label_2525
	test	r13, r13
	mov	rbp, rbp
	je	.label_2525
	nop	
	test	rbp, rbp
	je	.label_2525
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
	jmp	.label_2527
.label_2525:
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
	jmp	.label_2526
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x422a50

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
	je	.label_2531
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
	je	.label_2529
	lea	rsi, [rsi]
	lea	rdx, [r15 + r14*8 + 8]
	mov	rbp, rbp
	cmp	qword ptr [rdx], 0
	je	.label_2529
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	mov	rsp, rsp
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_2529
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
	jne	.label_2531
	mov	rax, qword ptr [rbp]
	mov	rbp, rbp
	mov	eax, dword ptr [rax + rbx + 8]
.label_2529:
	mov	rbx, r12
	lea	rdi, [rdi]
	test	al, 8
	jne	.label_2537
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_2536
.label_2537:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax + r14*8 + 8], 0
	nop	
	jle	.label_2540
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_2530:
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
	je	.label_2538
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	jne	.label_2532
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rbp, rbp
	lea	rdi, [rsp + 0x10]
	mov	rsp, rsp
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_2539
	jmp	.label_2531
.label_2532:
	mov	rcx, qword ptr [rax + r12*8 + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	movups	xmm0, xmmword ptr [rax + r12*8]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_2539:
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 0x10]
	call	re_node_set_merge
	test	eax, eax
	mov	rsp, rsp
	jne	.label_2531
	nop	
	mov	rax, qword ptr [rbp + 0x30]
	mov	rbp, rbp
	cmp	qword ptr [rax + r12*8 + 8], 0
	mov	rsp, rsp
	jne	.label_2535
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	call	free
.label_2538:
	mov	r15b, 1
.label_2535:
	mov	rbp, rbp
	inc	r13
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r13, qword ptr [rax + r14*8 + 8]
	mov	rbp, rbp
	jl	.label_2530
	jmp	.label_2536
.label_2540:
	mov	rbp, rbp
	xor	r15d, r15d
.label_2536:
	lea	rdi, [rsp + 0x30]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	lea	rsi, [rsi]
	mov	eax, 0xc
	je	.label_2531
	lea	rsi, [rsi]
	test	r15b, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x30]
	nop	
	je	.label_2533
	mov	ecx, dword ptr [rsp + 0xc]
	test	cl, cl
	jne	.label_2533
	nop	
	mov	qword ptr [rax + r14*8 + 8], 0
	nop	
	jmp	.label_2534
.label_2533:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rsp + 0x30]
	mov	rsp, rsp
	movups	xmmword ptr [rax + r14*8], xmm0
.label_2534:
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rcx], xmm0
	lea	rsi, [rsi]
	xor	eax, eax
.label_2531:
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
	#Procedure 0x422d00

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
.label_2548:
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
.label_2545:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14]
	mov	rbp, rbp
	mov	rdx, r15
	shl	rdx, 4
	movzx	ecx, byte ptr [rax + rdx + 8]
	cmp	ecx, 4
	jne	.label_2555
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
	je	.label_2553
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
	jne	.label_2545
	jmp	.label_2542
	nop	dword ptr [rax]
.label_2555:
	nop	
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rbp, [r15 + r15*2]
	mov	rsi, qword ptr [rcx + rbp*8 + 8]
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_2541
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rbp*8 + 0x10]
	mov	r12, qword ptr [rdi]
	lea	rdi, [rdi]
	lea	rdi, [rbx + rbx*2]
	mov	qword ptr [rcx + rdi*8 + 8], 0
	nop	
	cmp	rsi, 1
	je	.label_2544
	mov	qword ptr [rsp + 0x10], rbp
	nop	
	mov	r15, rdi
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	lea	rsi, [rsi]
	jle	.label_2546
	lea	rdi, [rdi]
	mov	rdx, rsi
	shl	rdx, 4
	mov	rbp, rbp
	mov	ebp, dword ptr [rax + rdx + 8]
	lea	rdi, [rdi]
	mov	edx, ebp
	mov	rsp, rsp
	and	edx, 0x40000
	je	.label_2546
	mov	rdx, qword ptr [r14 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
	nop	
.label_2549:
	cmp	qword ptr [rdx + rsi*8], r12
	mov	rsp, rsp
	jne	.label_2556
	mov	rbp, rbp
	shr	ebp, 8
	nop	
	and	ebp, 0x3ff
	cmp	ebp, r13d
	lea	rsi, [rsi]
	je	.label_2543
.label_2556:
	dec	rsi
	test	rsi, rsi
	jle	.label_2546
	mov	rbp, rbp
	mov	ebp, dword ptr [rdi]
	mov	rbp, rbp
	mov	ebx, ebp
	mov	rsp, rsp
	and	ebx, 0x40000
	mov	rsp, rsp
	add	rdi, -0x10
	test	ebx, ebx
	jne	.label_2549
	mov	rbp, rbp
	jmp	.label_2546
.label_2543:
	cmp	rsi, -1
	je	.label_2546
	mov	rbp, r15
	lea	rdi, [rcx + rbp*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x1c], 0xc
	nop	
	test	al, al
	lea	rdi, [rdi]
	jne	.label_2557
	mov	rbp, rbp
	jmp	.label_2542
	nop	word ptr [rax + rax]
.label_2546:
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
	je	.label_2547
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
	je	.label_2542
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
	jne	.label_2542
.label_2557:
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
	je	.label_2552
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
	jne	.label_2545
	mov	rsp, rsp
	jmp	.label_2542
.label_2544:
	cmp	r15, qword ptr [rsp + 8]
	jne	.label_2551
	mov	rsp, rsp
	cmp	rbx, r15
	jne	.label_2554
.label_2551:
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
	je	.label_2542
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
	jne	.label_2548
	jmp	.label_2542
.label_2553:
	nop	
	mov	dword ptr [rsp + 0x1c], 0xc
	jmp	.label_2542
.label_2547:
	mov	dword ptr [rsp + 0x1c], 0xc
	jmp	.label_2542
.label_2552:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], 0xc
	lea	rsi, [rsi]
	jmp	.label_2542
.label_2541:
	mov	rax, qword ptr [r14 + 0x18]
	nop	
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbx*8], rcx
.label_2550:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], 0
.label_2542:
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
.label_2554:
	lea	rdi, [rcx + rdi*8]
	mov	rsi, r12
	nop	
	call	re_node_set_insert
	nop	
	mov	dword ptr [rsp + 0x1c], 0xc
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_2542
	nop	
	jmp	.label_2550
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4232d0

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
	je	.label_2560
	nop	
	mov	rax, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_2560
	mov	rsp, rsp
	mov	rbx, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	lea	rdx, [rcx + rax*2]
	nop	
	cmp	rbx, rdx
	lea	rsi, [rsi]
	jge	.label_2571
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
	je	.label_2569
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
.label_2571:
	test	rcx, rcx
	je	.label_2564
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
	js	.label_2567
	mov	rbp, rbp
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	nop	
	jmp	.label_2559
.label_2568:
	dec	rax
.label_2558:
	dec	rcx
	jmp	.label_2566
	nop	word ptr cs:[rax + rax]
.label_2559:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi + rax*8]
	mov	rbp, rbp
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_2568
	jge	.label_2558
	nop	
	dec	rax
	mov	rsp, rsp
	mov	qword ptr [rdx + rbx*8 - 8], rdi
	lea	rsi, [rsi]
	dec	rbx
.label_2566:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_2559
.label_2567:
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	js	.label_2561
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
.label_2561:
	mov	r10, qword ptr [r14 + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 8]
	lea	rcx, [r10 + rax*2 - 1]
	mov	rdx, rcx
	sub	rdx, rbx
	lea	rdi, [rdi]
	inc	rdx
	lea	rsi, [rsi]
	je	.label_2560
	lea	rdi, [rdi]
	lea	rax, [rdx + r10]
	mov	qword ptr [r14 + 8], rax
	lea	r9, [r10 - 1]
.label_2563:
	lea	rdi, [rdi]
	lea	r8, [r10 - 1]
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	lea	r11, [rdi + r9*8]
.label_2570:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rsi, qword ptr [rdi + r10*8 - 8]
	cmp	rax, rsi
	lea	rsi, [rsi]
	jle	.label_2562
	nop	
	dec	rcx
	nop	
	mov	qword ptr [r11 + rdx*8], rax
	dec	rdx
	jne	.label_2570
	nop	
	jmp	.label_2560
	nop	word ptr cs:[rax + rax]
.label_2562:
	lea	rax, [rdx + r8]
	mov	qword ptr [rdi + rax*8], rsi
	dec	r9
	mov	rbp, rbp
	cmp	r10, 1
	nop	
	mov	r10, r8
	jg	.label_2563
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + rbx*8]
	mov	rbp, rbp
	jmp	.label_2565
.label_2564:
	mov	qword ptr [r14 + 8], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 8]
	nop	
	mov	rsi, qword ptr [r15 + 0x10]
.label_2565:
	shl	rdx, 3
	lea	rsi, [rsi]
	call	memcpy
.label_2560:
	xor	eax, eax
.label_2569:
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4234f0

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
	je	.label_2581
	mov	rcx, qword ptr [r14 + 8]
	mov	rsp, rsp
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_2573
	cmp	rsi, rcx
	lea	rdi, [rdi]
	jne	.label_2575
	lea	rax, [rsi + rsi]
	nop	
	mov	qword ptr [r14], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_2583
	mov	qword ptr [r14 + 0x10], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_2585
.label_2581:
	lea	rsi, [rsi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_658]]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	nop	
	mov	qword ptr [r14 + 0x10], rax
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_2580
	lea	rsi, [rsi]
	mov	qword ptr [rax], rbx
	jmp	.label_2584
.label_2573:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	mov	rbp, rbp
	jmp	.label_2572
.label_2575:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0x10]
.label_2585:
	lea	rsi, [rsi]
	cmp	qword ptr [rax], rbx
	mov	rsp, rsp
	jle	.label_2577
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_2574
	nop	word ptr [rax + rax]
.label_2579:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rdi, [rdi]
	lea	rcx, [rcx - 1]
	jg	.label_2579
	lea	rdi, [rdi]
	jmp	.label_2574
.label_2577:
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	rsp, rsp
	jmp	.label_2576
	nop	dword ptr [rax + rax]
.label_2582:
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_2576:
	cmp	rdx, rbx
	mov	rsp, rsp
	jg	.label_2582
.label_2574:
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
.label_2572:
	inc	qword ptr [r14 + 8]
.label_2584:
	lea	rdi, [rdi]
	mov	al, 1
.label_2578:
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	ret	
.label_2580:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_2578
.label_2583:
	xor	eax, eax
	jmp	.label_2578
	nop	
	.section	.text
	.align	32
	#Procedure 0x423630

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
	sub	rsp, 0x28
	mov	r13d, ecx
	mov	r14, rsi
	mov	rsp, rsp
	mov	r8, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	test	r8, r8
	nop	
	je	.label_2641
	mov	r15d, r13d
	add	r15, r8
	lea	rdi, [rdi]
	test	r8, r8
	mov	rsp, rsp
	jle	.label_2607
	mov	rcx, qword ptr [rdx + 0x10]
	xor	ebx, ebx
	cmp	r8, 4
	jae	.label_2612
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdi
	jmp	.label_2614
.label_2641:
	nop	
	mov	dword ptr [rdi], 0
	nop	
	jmp	.label_2616
.label_2607:
	nop	
	mov	qword ptr [rsp], rdi
	lea	rsi, [rsi]
	jmp	.label_2602
.label_2612:
	mov	qword ptr [rsp], rdi
	nop	
	mov	rbx, r8
	and	rbx, 0xfffffffffffffffc
	je	.label_2664
	mov	rsp, rsp
	movq	xmm0, r15
	mov	rsp, rsp
	lea	rsi, [r8 - 4]
	mov	eax, esi
	shr	eax, 2
	inc	eax
	xor	edi, edi
	mov	rsp, rsp
	test	al, 3
	nop	
	je	.label_2623
	nop	
	lea	ebp, [r8 - 4]
	lea	rdi, [rdi]
	shr	ebp, 2
	inc	ebp
	and	ebp, 3
	lea	rsi, [rsi]
	neg	rbp
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	
.label_2659:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm0, xmm2
	lea	rsi, [rsi]
	paddq	xmm1, xmm3
	mov	rsp, rsp
	add	rdi, 4
	inc	rbp
	mov	rsp, rsp
	jne	.label_2659
	jmp	.label_2639
.label_2664:
	xor	ebx, ebx
	jmp	.label_2614
.label_2623:
	lea	rsi, [rsi]
	pxor	xmm1, xmm1
.label_2639:
	mov	rsp, rsp
	cmp	rsi, 0xc
	nop	
	jb	.label_2643
	mov	rsp, rsp
	mov	rsi, r8
	mov	rsp, rsp
	and	rsi, 0xfffffffffffffffc
	sub	rsi, rdi
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	dword ptr [rax + rax]
.label_2649:
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	mov	rsp, rsp
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	mov	rsp, rsp
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	mov	rsp, rsp
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	paddq	xmm4, xmm2
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	movdqu	xmm1, xmmword ptr [rdi]
	paddq	xmm0, xmm4
	lea	rdi, [rdi]
	paddq	xmm1, xmm5
	lea	rsi, [rsi]
	add	rdi, 0x80
	mov	rbp, rbp
	add	rsi, -0x10
	jne	.label_2649
.label_2643:
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	paddq	xmm0, xmm1
	movq	r15, xmm0
	cmp	r8, rbx
	je	.label_2602
.label_2614:
	nop	
	mov	rsi, r8
	lea	rdi, [rdi]
	sub	rsi, rbx
	lea	rcx, [rcx + rbx*8]
	nop	dword ptr [rax + rax]
.label_2665:
	lea	rsi, [rsi]
	add	r15, qword ptr [rcx]
	add	rcx, 8
	dec	rsi
	jne	.label_2665
.label_2602:
	mov	rsi, qword ptr [r14 + 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0x88]
	lea	rsi, [rsi]
	and	rax, r15
	mov	rsp, rsp
	lea	rax, [rax + rax*2]
	nop	
	mov	r9, qword ptr [rsi + rax*8]
	test	r9, r9
	lea	rdi, [rdi]
	jle	.label_2621
	xor	ebx, ebx
	nop	
	test	rdx, rdx
	nop	
	je	.label_2594
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsi + rax*8 + 0x10]
.label_2617:
	mov	rsi, qword ptr [r10 + rbx*8]
	cmp	qword ptr [rsi], r15
	jne	.label_2597
	mov	rsp, rsp
	movzx	eax, byte ptr [rsi + 0x68]
	and	eax, 0xf
	nop	
	cmp	eax, r13d
	mov	rsp, rsp
	jne	.label_2597
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsi + 0x50]
	test	rdi, rdi
	je	.label_2597
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + 8], r8
	nop	
	jne	.label_2597
	mov	rax, r8
	nop	word ptr cs:[rax + rax]
.label_2613:
	lea	rsi, [rsi]
	test	rax, rax
	jle	.label_2596
	mov	rbp, qword ptr [rdi + 0x10]
	nop	
	mov	rbp, qword ptr [rbp + rax*8 - 8]
	nop	
	mov	rcx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	cmp	rbp, qword ptr [rcx + rax*8 - 8]
	mov	rsp, rsp
	lea	rax, [rax - 1]
	je	.label_2613
	nop	dword ptr [rax]
.label_2597:
	lea	rdi, [rdi]
	inc	rbx
	cmp	rbx, r9
	jl	.label_2617
	mov	rsp, rsp
	jmp	.label_2621
.label_2594:
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	r9, 0x10
	mov	rbp, rbp
	jb	.label_2599
	nop	
	xor	ecx, ecx
	mov	rax, r9
	lea	rsi, [rsi]
	and	rax, 0xfffffffffffffff0
	je	.label_2599
	nop	
	lea	rcx, [r9 - 0x10]
	lea	rsi, [rsi]
	mov	edi, ecx
	shr	edi, 4
	inc	edi
	xor	esi, esi
	test	dil, 7
	lea	rdi, [rdi]
	je	.label_2631
	lea	edi, [r9 - 0x10]
	lea	rsi, [rsi]
	shr	edi, 4
	inc	edi
	and	edi, 7
	mov	rsp, rsp
	neg	rdi
	xor	esi, esi
	nop	dword ptr [rax]
.label_2636:
	mov	rsp, rsp
	add	rsi, 0x10
	lea	rdi, [rdi]
	inc	rdi
	mov	rbp, rbp
	jne	.label_2636
.label_2631:
	cmp	rcx, 0x70
	jb	.label_2642
	nop	
	mov	rcx, r9
	lea	rsi, [rsi]
	and	rcx, 0xfffffffffffffff0
	sub	rcx, rsi
	nop	word ptr cs:[rax + rax]
.label_2647:
	add	rcx, -0x80
	mov	rbp, rbp
	jne	.label_2647
.label_2642:
	mov	rbp, rbp
	cmp	r9, rax
	mov	rcx, rax
	je	.label_2621
	nop	word ptr cs:[rax + rax]
.label_2599:
	inc	rcx
	cmp	rcx, r9
	lea	rdi, [rdi]
	jl	.label_2599
.label_2621:
	mov	rsp, rsp
	mov	r12, rdx
	mov	rsp, rsp
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	lea	rdi, [rdi]
	mov	r11, rax
	mov	rsp, rsp
	test	r11, r11
	mov	rbp, rbp
	je	.label_2600
	mov	rbx, r14
	mov	rax, r11
	mov	rsp, rsp
	add	rax, 8
	lea	rdi, [rdi]
	mov	r10, r12
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r10 + 8]
	mov	qword ptr [r11 + 0x10], rdi
	mov	r14, qword ptr [r10 + 8]
	lea	rdi, [rdi]
	test	r14, r14
	lea	rsi, [rsi]
	jle	.label_2657
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rdi]
	mov	r12, r10
	lea	rsi, [rsi]
	mov	qword ptr [r11 + 8], rdi
	lea	rsi, [rsi]
	shl	rdi, 3
	mov	rbp, r11
	call	malloc
	nop	
	mov	rcx, rbp
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x18], rax
	test	rax, rax
	je	.label_2666
	mov	rsi, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	shl	r14, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rdx, r14
	mov	rbp, rbp
	mov	rbp, rcx
	nop	
	call	memcpy
	mov	r11, rbp
	mov	r10, r12
	mov	rdi, rbx
	mov	rbp, rbp
	mov	r9d, r13d
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	jmp	.label_2618
.label_2657:
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rax], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, rbx
	mov	r9d, r13d
	mov	r14, rax
.label_2618:
	mov	al, byte ptr [r11 + 0x68]
	mov	rbp, rbp
	mov	cl, r9b
	lea	rsi, [rsi]
	and	cl, 0xf
	and	al, 0xf0
	mov	rbp, rbp
	or	al, cl
	lea	rdi, [rdi]
	mov	byte ptr [r11 + 0x68], al
	lea	rsi, [rsi]
	mov	qword ptr [r11 + 0x50], r14
	nop	
	cmp	qword ptr [r10 + 8], 0
	jle	.label_2605
	mov	cl, r9b
	mov	eax, r9d
	mov	rsp, rsp
	and	eax, 2
	lea	rsi, [rsi]
	and	r9d, 4
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2645
	lea	rsi, [rsi]
	xor	ebp, ebp
	xor	r8d, r8d
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_2620
	nop	dword ptr [rax + rax]
.label_2633:
	mov	rsp, rsp
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	shl	rcx, 4
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax + rcx + 8]
	movzx	edx, sil
	mov	rbp, rbp
	mov	r12d, esi
	shr	r12d, 8
	mov	rsp, rsp
	mov	ecx, r12d
	and	ecx, 0x3ff
	lea	rdi, [rdi]
	cmp	edx, 1
	nop	
	jne	.label_2626
	test	ecx, ecx
	je	.label_2610
.label_2626:
	shr	esi, 0x14
	mov	bl, byte ptr [r11 + 0x68]
	lea	rsi, [rsi]
	mov	al, bl
	lea	rdi, [rdi]
	shr	al, 5
	mov	rbp, rbp
	movzx	eax, al
	lea	rdi, [rdi]
	or	eax, esi
	mov	rbp, rbp
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	lea	rsi, [rsi]
	or	bl, al
	mov	rsp, rsp
	mov	byte ptr [r11 + 0x68], bl
	cmp	edx, 2
	mov	rsp, rsp
	je	.label_2635
	lea	rsi, [rsi]
	cmp	edx, 4
	mov	rsp, rsp
	jne	.label_2655
	mov	rbp, rbp
	or	bl, 0x40
	mov	rbp, rbp
	jmp	.label_2648
.label_2635:
	nop	
	or	bl, 0x10
.label_2648:
	lea	rdi, [rdi]
	mov	byte ptr [r11 + 0x68], bl
.label_2655:
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_2610
	nop	
	mov	r13, r10
	mov	rsp, rsp
	cmp	qword ptr [r11 + 0x50], r14
	nop	
	jne	.label_2652
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r14
	mov	dword ptr [rsp + 0x14], r9d
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rdi
	nop	
	mov	edi, 0x18
	mov	rbx, r11
	lea	rdi, [rdi]
	call	malloc
	mov	r11, rbx
	mov	r14, rax
	lea	rdi, [rdi]
	mov	qword ptr [r11 + 0x50], r14
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_2604
	mov	rbx, qword ptr [r13 + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	nop	
	jle	.label_2662
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], r11
	lea	rdi, [rdi]
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x10], rax
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_2619
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	memcpy
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x14]
	mov	r11, qword ptr [rsp + 0x20]
	nop	
	jmp	.label_2593
.label_2662:
	nop	
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [r14], xmm0
	nop	
	mov	qword ptr [r14 + 0x10], 0
	mov	rdi, qword ptr [rsp + 8]
	mov	r9d, dword ptr [rsp + 0x14]
.label_2593:
	mov	r14, qword ptr [rsp + 0x18]
	or	byte ptr [r11 + 0x68], 0x80
	mov	rbp, rbp
	xor	r8d, r8d
.label_2652:
	mov	rsp, rsp
	test	r12b, 0x11
	mov	rsp, rsp
	mov	r10, r13
	jne	.label_2644
	mov	rsp, rsp
	test	r9d, r9d
	mov	rsp, rsp
	jne	.label_2610
	mov	rsp, rsp
	and	r12d, 0x40
	mov	rsp, rsp
	je	.label_2610
.label_2644:
	mov	rax, rbp
	mov	rsp, rsp
	sub	rax, r8
	lea	rsi, [rsi]
	js	.label_2615
	mov	rcx, qword ptr [r11 + 0x10]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jle	.label_2615
	mov	rsp, rsp
	dec	rcx
	mov	rbp, rbp
	mov	qword ptr [r11 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_2615
	nop	
	lea	rax, [rbp*8]
	lea	rdi, [rdi]
	add	rax, qword ptr [r11 + 0x18]
	lea	rdi, [rdi]
	mov	rcx, r8
	neg	rcx
	nop	dword ptr [rax]
.label_2629:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	inc	rcx
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [r11 + 0x10]
	jl	.label_2629
	nop	word ptr [rax + rax]
.label_2615:
	inc	r8
.label_2610:
	inc	rbp
	mov	rsp, rsp
	cmp	rbp, qword ptr [r10 + 8]
	jl	.label_2633
	jmp	.label_2605
	nop	dword ptr [rax + rax]
.label_2620:
	mov	rsp, rsp
	mov	rax, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r10 + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + rbp*8]
	mov	rbp, rbp
	shl	rcx, 4
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax + rcx + 8]
	mov	rbp, rbp
	movzx	edx, sil
	mov	r12d, esi
	shr	r12d, 8
	mov	ecx, r12d
	mov	rbp, rbp
	and	ecx, 0x3ff
	cmp	edx, 1
	lea	rsi, [rsi]
	jne	.label_2606
	mov	rsp, rsp
	test	ecx, ecx
	lea	rdi, [rdi]
	je	.label_2624
.label_2606:
	shr	esi, 0x14
	mov	bl, byte ptr [r11 + 0x68]
	mov	al, bl
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	lea	rdi, [rdi]
	shl	al, 5
	and	al, 0x20
	lea	rsi, [rsi]
	and	bl, 0xdf
	or	bl, al
	mov	rsp, rsp
	mov	byte ptr [r11 + 0x68], bl
	mov	rbp, rbp
	cmp	edx, 2
	je	.label_2651
	cmp	edx, 4
	lea	rdi, [rdi]
	jne	.label_2656
	lea	rdi, [rdi]
	or	bl, 0x40
	mov	rbp, rbp
	jmp	.label_2658
.label_2651:
	lea	rdi, [rdi]
	or	bl, 0x10
.label_2658:
	nop	
	mov	byte ptr [r11 + 0x68], bl
.label_2656:
	mov	rbp, rbp
	test	ecx, ecx
	je	.label_2624
	lea	rsi, [rsi]
	mov	r13, r10
	mov	rbp, rbp
	cmp	qword ptr [r11 + 0x50], r14
	lea	rsi, [rsi]
	jne	.label_2661
	nop	
	mov	qword ptr [rsp + 0x18], r14
	mov	dword ptr [rsp + 0x14], r9d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	mov	rsp, rsp
	mov	edi, 0x18
	lea	rdi, [rdi]
	mov	rbx, r11
	call	malloc
	lea	rsi, [rsi]
	mov	r11, rbx
	nop	
	mov	r14, rax
	nop	
	mov	qword ptr [r11 + 0x50], r14
	test	r14, r14
	je	.label_2604
	mov	rsp, rsp
	mov	rbx, qword ptr [r13 + 8]
	nop	
	mov	qword ptr [r14 + 8], rbx
	mov	rbp, rbp
	test	rbx, rbx
	nop	
	jle	.label_2590
	mov	qword ptr [rsp + 0x20], r11
	lea	rsi, [rsi]
	mov	qword ptr [r14], rbx
	mov	rsp, rsp
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x10], rax
	nop	
	test	rax, rax
	je	.label_2619
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	nop	
	mov	rdi, qword ptr [rsp + 8]
	nop	
	mov	r9d, dword ptr [rsp + 0x14]
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	jmp	.label_2608
.label_2590:
	mov	rsp, rsp
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	r9d, dword ptr [rsp + 0x14]
.label_2608:
	mov	r14, qword ptr [rsp + 0x18]
	or	byte ptr [r11 + 0x68], 0x80
	xor	r8d, r8d
.label_2661:
	test	r12b, 1
	mov	r10, r13
	mov	rsp, rsp
	jne	.label_2622
	test	r9d, r9d
	jne	.label_2624
	mov	rbp, rbp
	and	r12d, 0x40
	je	.label_2624
.label_2622:
	mov	rbp, rbp
	mov	rax, rbp
	sub	rax, r8
	mov	rsp, rsp
	js	.label_2628
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r11 + 0x10]
	mov	rbp, rbp
	cmp	rcx, rax
	nop	
	jle	.label_2628
	nop	
	dec	rcx
	mov	rsp, rsp
	mov	qword ptr [r11 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_2628
	lea	rsi, [rsi]
	lea	rax, [rbp*8]
	add	rax, qword ptr [r11 + 0x18]
	mov	rsp, rsp
	mov	rcx, r8
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_2640:
	nop	
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	mov	rbp, rbp
	inc	rcx
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [r11 + 0x10]
	mov	rbp, rbp
	jl	.label_2640
	nop	word ptr cs:[rax + rax]
.label_2628:
	inc	r8
.label_2624:
	inc	rbp
	cmp	rbp, qword ptr [r10 + 8]
	jl	.label_2620
	mov	rbp, rbp
	jmp	.label_2605
.label_2645:
	lea	rsi, [rsi]
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	esi, esi
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_2587
	nop	
.label_2660:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rcx, qword ptr [rcx + r12*8]
	lea	rdi, [rdi]
	shl	rcx, 4
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rax + rcx + 8]
	mov	rsp, rsp
	movzx	edx, bpl
	mov	r13d, ebp
	mov	rbp, rbp
	shr	r13d, 8
	lea	rdi, [rdi]
	mov	ecx, r13d
	mov	rbp, rbp
	and	ecx, 0x3ff
	lea	rdi, [rdi]
	cmp	edx, 1
	nop	
	jne	.label_2654
	test	ecx, ecx
	je	.label_2592
.label_2654:
	shr	ebp, 0x14
	mov	bl, byte ptr [r11 + 0x68]
	mov	rbp, rbp
	mov	al, bl
	shr	al, 5
	movzx	eax, al
	mov	rbp, rbp
	or	eax, ebp
	nop	
	shl	al, 5
	nop	
	and	al, 0x20
	and	bl, 0xdf
	mov	rsp, rsp
	or	bl, al
	mov	byte ptr [r11 + 0x68], bl
	nop	
	cmp	edx, 2
	je	.label_2632
	cmp	edx, 4
	jne	.label_2586
	or	bl, 0x40
	jmp	.label_2588
.label_2632:
	or	bl, 0x10
.label_2588:
	mov	rbp, rbp
	mov	byte ptr [r11 + 0x68], bl
.label_2586:
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_2592
	mov	rbp, rbp
	mov	rbp, r10
	nop	
	cmp	qword ptr [r11 + 0x50], r14
	lea	rsi, [rsi]
	jne	.label_2595
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r14
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 8], rdi
	lea	rdi, [rdi]
	mov	edi, 0x18
	nop	
	mov	rbx, r11
	call	malloc
	mov	rsp, rsp
	mov	r11, rbx
	mov	rbp, rbp
	mov	r14, rax
	mov	qword ptr [r11 + 0x50], r14
	test	r14, r14
	mov	rsp, rsp
	je	.label_2604
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp + 8]
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	mov	rbp, rbp
	jle	.label_2611
	mov	qword ptr [rsp + 0x20], r11
	lea	rdi, [rdi]
	mov	qword ptr [r14], rbx
	lea	rdi, [rdi]
	shl	rbx, 3
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0x10], rax
	nop	
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2619
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	nop	
	call	memcpy
	mov	rdi, qword ptr [rsp + 8]
	mov	r9d, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	jmp	.label_2627
.label_2611:
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0x10], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9d, dword ptr [rsp + 0x14]
.label_2627:
	mov	r14, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	or	byte ptr [r11 + 0x68], 0x80
	nop	
	xor	esi, esi
.label_2595:
	mov	rsp, rsp
	test	r13b, 0x12
	mov	rbp, rbp
	mov	r10, rbp
	mov	rsp, rsp
	jne	.label_2638
	test	r9d, r9d
	mov	rsp, rsp
	jne	.label_2592
	and	r13d, 0x40
	je	.label_2592
.label_2638:
	mov	rsp, rsp
	mov	rax, r12
	lea	rsi, [rsi]
	sub	rax, rsi
	js	.label_2646
	mov	rcx, qword ptr [r11 + 0x10]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jle	.label_2646
	nop	
	dec	rcx
	mov	qword ptr [r11 + 0x10], rcx
	cmp	rcx, rax
	lea	rsi, [rsi]
	jle	.label_2646
	lea	rax, [r12*8]
	add	rax, qword ptr [r11 + 0x18]
	mov	rcx, rsi
	lea	rsi, [rsi]
	neg	rcx
	nop	dword ptr [rax + rax]
.label_2634:
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdi, [rdi]
	lea	rdx, [r12 + rcx + 1]
	inc	rcx
	mov	rsp, rsp
	cmp	rdx, qword ptr [r11 + 0x10]
	jl	.label_2634
	nop	word ptr cs:[rax + rax]
.label_2646:
	lea	rdi, [rdi]
	inc	rsi
.label_2592:
	lea	rdi, [rdi]
	inc	r12
	cmp	r12, qword ptr [r10 + 8]
	jl	.label_2660
	jmp	.label_2605
	nop	dword ptr [rax + rax]
.label_2587:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rcx, qword ptr [rcx + r12*8]
	shl	rcx, 4
	mov	ebp, dword ptr [rax + rcx + 8]
	lea	rdi, [rdi]
	movzx	edx, bpl
	mov	r13d, ebp
	shr	r13d, 8
	mov	ecx, r13d
	mov	rbp, rbp
	and	ecx, 0x3ff
	cmp	edx, 1
	lea	rdi, [rdi]
	jne	.label_2630
	test	ecx, ecx
	je	.label_2589
.label_2630:
	shr	ebp, 0x14
	mov	bl, byte ptr [r11 + 0x68]
	mov	rsp, rsp
	mov	al, bl
	shr	al, 5
	movzx	eax, al
	or	eax, ebp
	lea	rsi, [rsi]
	shl	al, 5
	mov	rbp, rbp
	and	al, 0x20
	mov	rsp, rsp
	and	bl, 0xdf
	nop	
	or	bl, al
	nop	
	mov	byte ptr [r11 + 0x68], bl
	nop	
	cmp	edx, 4
	nop	
	je	.label_2591
	lea	rsi, [rsi]
	cmp	edx, 2
	mov	rsp, rsp
	jne	.label_2601
	mov	rbp, rbp
	or	bl, 0x10
	jmp	.label_2603
.label_2591:
	or	bl, 0x40
.label_2603:
	mov	byte ptr [r11 + 0x68], bl
.label_2601:
	nop	
	test	ecx, ecx
	lea	rdi, [rdi]
	je	.label_2589
	mov	rbp, r10
	cmp	qword ptr [r11 + 0x50], r14
	nop	
	jne	.label_2609
	mov	qword ptr [rsp + 0x18], r14
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 8], rdi
	mov	rsp, rsp
	mov	edi, 0x18
	lea	rdi, [rdi]
	mov	rbx, r11
	mov	rsp, rsp
	call	malloc
	mov	r11, rbx
	mov	r14, rax
	mov	rbp, rbp
	mov	qword ptr [r11 + 0x50], r14
	mov	rsp, rsp
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_2604
	mov	rbx, qword ptr [rbp + 8]
	mov	rbp, rbp
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_2625
	mov	qword ptr [rsp + 0x20], r11
	mov	rbp, rbp
	mov	qword ptr [r14], rbx
	nop	
	shl	rbx, 3
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_2619
	nop	
	mov	rsi, qword ptr [rbp + 0x10]
	nop	
	mov	rdi, rax
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	mov	r9d, dword ptr [rsp + 0x14]
	mov	r11, qword ptr [rsp + 0x20]
	nop	
	jmp	.label_2637
.label_2625:
	nop	
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r14], xmm0
	mov	rbp, rbp
	mov	qword ptr [r14 + 0x10], 0
	mov	rdi, qword ptr [rsp + 8]
	mov	r9d, dword ptr [rsp + 0x14]
.label_2637:
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x18]
	or	byte ptr [r11 + 0x68], 0x80
	xor	esi, esi
.label_2609:
	test	r13b, 2
	mov	r10, rbp
	lea	rdi, [rdi]
	jne	.label_2650
	test	r9d, r9d
	lea	rdi, [rdi]
	jne	.label_2589
	and	r13d, 0x40
	mov	rsp, rsp
	je	.label_2589
.label_2650:
	mov	rbp, rbp
	mov	rax, r12
	sub	rax, rsi
	lea	rdi, [rdi]
	js	.label_2653
	mov	rcx, qword ptr [r11 + 0x10]
	lea	rsi, [rsi]
	cmp	rcx, rax
	nop	
	jle	.label_2653
	mov	rbp, rbp
	dec	rcx
	mov	qword ptr [r11 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_2653
	lea	rsi, [rsi]
	lea	rax, [r12*8]
	add	rax, qword ptr [r11 + 0x18]
	lea	rsi, [rsi]
	mov	rcx, rsi
	lea	rdi, [rdi]
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_2663:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx*8], rdx
	nop	
	lea	rdx, [r12 + rcx + 1]
	lea	rdi, [rdi]
	inc	rcx
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [r11 + 0x10]
	mov	rsp, rsp
	jl	.label_2663
	nop	word ptr cs:[rax + rax]
.label_2653:
	inc	rsi
.label_2589:
	inc	r12
	cmp	r12, qword ptr [r10 + 8]
	mov	rsp, rsp
	jl	.label_2587
.label_2605:
	mov	rsi, r11
	mov	rdx, r15
	lea	rsi, [rsi]
	mov	rbx, r11
	mov	rbp, rbp
	call	register_state
	nop	
	mov	rsi, rbx
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_2596
	mov	rdi, rsi
	nop	
	jmp	.label_2598
.label_2604:
	mov	rdi, r11
.label_2598:
	call	free_state
	mov	rsp, rsp
	jmp	.label_2600
.label_2619:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	lea	rdi, [rdi]
	jmp	.label_2600
.label_2666:
	lea	rsi, [rsi]
	mov	rdi, rcx
	mov	rsp, rsp
	call	free
.label_2600:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xc
.label_2616:
	lea	rsi, [rsi]
	xor	esi, esi
.label_2596:
	nop	
	mov	rax, rsi
	lea	rdi, [rdi]
	add	rsp, 0x28
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4244a0

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
	je	.label_2668
	mov	rbp, rbp
	test	r13, r13
	jle	.label_2669
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_2673:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	lea	rsi, [rsi]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_2667
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	cmp	rdx, rcx
	lea	rsi, [rsi]
	jne	.label_2672
	lea	rcx, [rdx + rdx + 2]
	mov	rsp, rsp
	lea	rdx, [rdx + rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_2674
	mov	qword ptr [rbx + 0x30], rax
	nop	
	mov	rcx, qword ptr [rbx + 0x28]
.label_2672:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_2667:
	inc	rbp
	cmp	rbp, r13
	jl	.label_2673
.label_2669:
	lea	rdi, [rdi]
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rsi, [rsi]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	lea	rsi, [rsi]
	jle	.label_2670
	nop	
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_2671:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
	jmp	.label_2668
.label_2674:
	nop	
	mov	ecx, 0xc
.label_2668:
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
.label_2670:
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
	je	.label_2668
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	lea	rsi, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rsi], rax
	mov	rbp, rbp
	mov	qword ptr [rcx], rdx
	lea	rsi, [rsi]
	mov	r15, qword ptr [r14]
	lea	rdi, [rdi]
	jmp	.label_2671
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x424660

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
	mov	r10, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	lea	r13, [rbx + 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r10
	jle	.label_2696
	cmp	dword ptr [rbx + 0x90], 2
	lea	rsi, [rsi]
	jl	.label_2713
	mov	qword ptr [rbx + 0x20], 0
.label_2713:
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
	movdqu	xmmword ptr [r13], xmm0
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x10], 0
	mov	dword ptr [rbx + 0x70], eax
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8b], 0
	lea	rsi, [rsi]
	mov	r14, r10
	jne	.label_2699
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	r14, r10
.label_2699:
	mov	rbp, rbp
	test	r14, r14
	je	.label_2725
	mov	r12, qword ptr [rbx + 0x38]
	mov	rbp, rbp
	cmp	r14, r12
	lea	rdi, [rdi]
	jge	.label_2733
	mov	rsp, rsp
	mov	ecx, dword ptr [rbx + 0x8c]
	mov	rbp, rbp
	mov	r9d, ecx
	mov	rbp, rbp
	shr	r9d, 0x10
	test	cl, cl
	lea	rsi, [rsi]
	jne	.label_2735
	mov	rsp, rsp
	test	r14, r14
	jle	.label_2739
	lea	rcx, [r14 - 1]
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x58], rcx
	mov	rbp, rbp
	je	.label_2740
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2742
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	dword ptr [rax + rax]
.label_2753:
	mov	ebp, dword ptr [rcx + rdx*4 - 4]
	nop	
	cmp	ebp, -1
	mov	rbp, rbp
	jne	.label_2748
	nop	
	dec	rdx
	jg	.label_2753
	lea	rdi, [rdi]
	mov	r15d, dword ptr [rbx + 0x70]
	lea	rsi, [rsi]
	jmp	.label_2676
.label_2742:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0x80]
	mov	rsp, rsp
	movzx	eax, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	r15d, 1
	bt	rcx, rax
	jb	.label_2676
	xor	r15d, r15d
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 0xa
	lea	rdi, [rdi]
	jne	.label_2676
	movzx	eax, word ptr [rbx + 0x8c]
	movzx	eax, ax
	nop	
	mov	r15d, 2
	cmp	eax, 0xff
	lea	rdi, [rdi]
	ja	.label_2676
	lea	rdi, [rdi]
	jmp	.label_2685
.label_2748:
	test	r9b, r9b
	lea	rdi, [rdi]
	jne	.label_2687
.label_2755:
	xor	r15d, r15d
	mov	rbp, rbp
	cmp	ebp, 0xa
	lea	rsi, [rsi]
	jne	.label_2676
	nop	
	mov	r15d, 2
	cmp	byte ptr [rbx + 0x8d], 0
	lea	rsi, [rsi]
	jne	.label_2676
.label_2685:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_2676
.label_2696:
	nop	
	mov	r14, r10
	sub	r14, rax
	lea	rsi, [rsi]
	jmp	.label_2699
.label_2733:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbx + 0x30]
	mov	cx, word ptr [rbx + 0x8c]
	test	cl, cl
	mov	rbp, rbp
	jne	.label_2702
.label_2695:
	mov	qword ptr [rbx + 0x30], 0
	lea	rsi, [rsi]
	movsxd	rsi, dword ptr [rbx + 0x90]
	cmp	rsi, 2
	jl	.label_2710
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x89], 0
	lea	rsi, [rsi]
	je	.label_2717
	mov	rdi, qword ptr [rbx]
	mov	rsp, rsp
	lea	r8, [rdi + rax]
	mov	rdx, r14
	sub	rdx, rsi
	nop	
	add	rdx, r8
	cmp	rdx, rdi
	mov	rbp, rbp
	cmovb	rdx, rdi
	lea	r9, [r8 + r14]
	lea	rsi, [r14 + rax]
	lea	rsi, [rdi + rsi - 1]
	nop	dword ptr [rax + rax]
.label_2728:
	mov	rbp, rsi
	mov	rsp, rsp
	cmp	rbp, rdx
	jb	.label_2717
	mov	cl, byte ptr [rbp]
	mov	rsp, rsp
	and	cl, 0xc0
	lea	rdi, [rdi]
	movzx	ecx, cl
	lea	rsi, [rbp - 1]
	cmp	ecx, 0x80
	mov	rbp, rbp
	je	.label_2728
	mov	qword ptr [rsp + 8], r9
	add	r8, qword ptr [rbx + 0x58]
	mov	rdx, r8
	sub	rdx, rbp
	mov	r9, qword ptr [rbx + 0x78]
	test	r9, r9
	mov	rsp, rsp
	jne	.label_2731
	mov	r12, r11
	mov	qword ptr [rsp + 0x20], r10
	lea	rdi, [rdi]
	mov	rsi, rbp
.label_2698:
	nop	
	mov	qword ptr [rsp], 0
	lea	rdi, [rsp + 0x34]
	lea	rcx, [rsp]
	call	rpl_mbrtowc
	mov	rdx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rcx, rax
	mov	rsp, rsp
	sub	rcx, rdx
	jb	.label_2693
	cmp	rax, -3
	mov	rbp, rbp
	mov	r10, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r11, r12
	ja	.label_2743
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsp + 0x34]
	jmp	.label_2743
.label_2735:
	mov	rbp, rbp
	mov	r8, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rbx + 0x30]
	xor	ebp, ebp
.label_2770:
	lea	rsi, [rbp + rax]
	mov	rsp, rsp
	mov	rdx, rsi
	lea	rsi, [rsi]
	shr	rdx, 0x3f
	mov	rsp, rsp
	add	rdx, rsi
	sar	rdx, 1
	mov	rsi, qword ptr [r8 + rdx*8]
	nop	
	cmp	rsi, r14
	lea	rdi, [rdi]
	mov	rdi, rdx
	jg	.label_2706
	jge	.label_2744
	lea	rbp, [rdx + 1]
	mov	rbp, rbp
	mov	rdi, rax
.label_2706:
	nop	
	cmp	rbp, rdi
	mov	rbp, rbp
	mov	rax, rdi
	jl	.label_2770
.label_2744:
	mov	rbp, rbp
	cmp	rsi, r14
	setl	al
	nop	
	movzx	eax, al
	lea	rdi, [rdi]
	lea	r12, [rax + rdx]
	test	r12, r12
	jle	.label_2677
	lea	rdi, [rax + rdx - 1]
	cmp	qword ptr [rbx + 0x58], rdi
	lea	rsi, [rsi]
	je	.label_2684
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2689
	cmp	rsi, r14
	setl	al
	mov	rcx, qword ptr [rbx + 0x10]
	movzx	eax, al
	lea	rdi, [rdi]
	add	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_2703:
	mov	rbp, rbp
	mov	ebp, dword ptr [rcx + rdx*4 - 4]
	lea	rsi, [rsi]
	cmp	ebp, -1
	mov	rbp, rbp
	jne	.label_2750
	dec	rdx
	jg	.label_2703
	mov	rsp, rsp
	mov	r15d, dword ptr [rbx + 0x70]
	jmp	.label_2704
.label_2739:
	mov	r15d, dword ptr [rbx + 0x70]
	jmp	.label_2676
.label_2740:
	and	r15d, 2
	nop	
	xor	r15d, 0xa
.label_2676:
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x70], r15d
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2754
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	lea	rsi, [rsi]
	shl	rdx, 2
	mov	rbp, r10
	nop	
	call	memmove
	mov	r10, rbp
.label_2754:
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2721
.label_2756:
	lea	rdi, [rdi]
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_2701:
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 0x8b], 0
	mov	rbp, rbp
	jne	.label_2725
	nop	
	add	qword ptr [rbx + 8], r14
.label_2725:
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x28], r10
	mov	rdx, qword ptr [rbx + 0x58]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	lea	rdi, [rdi]
	jl	.label_2727
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_2716
	mov	rdi, rbx
	mov	rbp, rbp
	call	build_wcs_upper_buffer
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_2734
	jmp	.label_2690
.label_2727:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2736
	mov	qword ptr [rbx + 0x30], rdx
	mov	rbp, rbp
	jmp	.label_2690
.label_2716:
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	call	build_wcs_buffer
.label_2690:
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x48], 0
	lea	rdi, [rdi]
	xor	eax, eax
.label_2734:
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_2721:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	sub	rdx, r14
	nop	
	lea	rsi, [rdi + r14]
	lea	rdi, [rdi]
	mov	rbp, r10
	call	memmove
	mov	r10, rbp
	mov	rsp, rsp
	jmp	.label_2756
.label_2736:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_2758
	lea	rdi, [rdi]
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	cmp	r14, rdx
	lea	rdi, [rdi]
	cmovg	r14, rdx
	cmp	r15, r14
	jge	.label_2760
	lea	rdi, [rdi]
	jmp	.label_2766
	nop	word ptr cs:[rax + rax]
.label_2691:
	lea	rdi, [rdi]
	mov	r10, qword ptr [r13]
.label_2766:
	mov	rsp, rsp
	inc	r15
	lea	rsi, [rsi]
	add	r10, qword ptr [rbx]
	mov	al, byte ptr [r15 + r10 - 1]
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_2763
.label_2697:
	mov	rbp, rbp
	movzx	ebp, al
	mov	rbp, rbp
	lea	eax, [rbp + 0x80]
	mov	rsp, rsp
	cmp	eax, 0x17f
	ja	.label_2681
	lea	rdi, [rdi]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	ebp, dword ptr [rax + rbp*4]
.label_2681:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r15 - 1], bpl
	nop	
	cmp	r15, r14
	lea	rdi, [rdi]
	jl	.label_2691
	lea	rdi, [rdi]
	jmp	.label_2694
.label_2763:
	mov	rbp, rbp
	mov	al, byte ptr [rdx + rcx]
	jmp	.label_2697
.label_2710:
	lea	rsi, [rsi]
	add	rax, r14
	mov	rdx, qword ptr [rbx]
	mov	al, byte ptr [rdx + rax - 1]
	mov	rsp, rsp
	movzx	edx, al
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_2700
	lea	rsi, [rsi]
	mov	al, byte ptr [rsi + rdx]
.label_2700:
	mov	rsi, qword ptr [rbx + 0x80]
	movzx	edx, al
	shr	al, 6
	movzx	eax, al
	mov	rsi, qword ptr [rsi + rax*8]
	mov	eax, 1
	bt	rsi, rdx
	jb	.label_2718
	mov	rsp, rsp
	xor	eax, eax
	nop	
	cmp	edx, 0xa
	lea	rdi, [rdi]
	jne	.label_2718
	movzx	eax, cx
	cmp	eax, 0xff
	seta	al
	lea	rsi, [rsi]
	movzx	eax, al
	add	eax, eax
.label_2718:
	mov	rbp, rbp
	mov	dword ptr [rbx + 0x70], eax
	jmp	.label_2701
.label_2689:
	mov	rax, qword ptr [rbx + 8]
	mov	rsi, qword ptr [rbx + 0x80]
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rax + rdi]
	mov	dl, al
	lea	rdi, [rdi]
	shr	dl, 6
	lea	rsi, [rsi]
	movzx	edx, dl
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	rsp, rsp
	mov	r15d, 1
	bt	rdx, rax
	jb	.label_2704
	lea	rsi, [rsi]
	xor	r15d, r15d
	movzx	eax, al
	cmp	eax, 0xa
	lea	rdi, [rdi]
	jne	.label_2704
	test	ch, 0xff
	setne	al
	movzx	r15d, al
	mov	rbp, rbp
	add	r15d, r15d
	jmp	.label_2704
.label_2750:
	mov	rsp, rsp
	test	r9b, r9b
	mov	rbp, rbp
	jne	.label_2746
.label_2729:
	xor	r15d, r15d
	nop	
	cmp	ebp, 0xa
	lea	rsi, [rsi]
	jne	.label_2704
	lea	rdi, [rdi]
	mov	r15d, 2
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8d], 0
	mov	rsp, rsp
	jne	.label_2704
	xor	r15d, r15d
	jmp	.label_2704
.label_2687:
	mov	r12, r10
	mov	edi, ebp
	call	iswalnum
	mov	rbp, rbp
	cmp	ebp, 0x5f
	mov	rsp, rsp
	mov	r15d, 1
	je	.label_2747
	test	eax, eax
	lea	rsi, [rsi]
	mov	r10, r12
	lea	rdi, [rdi]
	je	.label_2755
	mov	rbp, rbp
	jmp	.label_2676
.label_2758:
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_2690
	mov	rax, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x40]
	cmp	rcx, rdx
	cmovg	rcx, rdx
	mov	rbp, rbp
	cmp	rax, rcx
	jge	.label_2764
	nop	
	add	r10, rax
	mov	rdx, qword ptr [rbx]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r10]
	nop	
	mov	dl, byte ptr [rsi + rdx]
	jmp	.label_2741
.label_2686:
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0x78]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	add	rsi, qword ptr [rbx + 0x28]
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rax + rsi]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rdx + rsi]
.label_2741:
	mov	byte ptr [rdi + rax], dl
	mov	rbp, rbp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, rcx
	jl	.label_2686
	mov	rsp, rsp
	mov	rax, rcx
.label_2764:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_2690
.label_2694:
	mov	rbp, rbp
	mov	r15, r14
.label_2760:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_2690
.label_2702:
	lea	rsi, [rsi]
	mov	rdx, r14
	sub	rdx, r10
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + 0x50]
	mov	rsp, rsp
	add	rsi, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x58], rsi
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbx + 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x68], rdx
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_2695
.label_2677:
	mov	r15d, dword ptr [rbx + 0x70]
	nop	
	jmp	.label_2704
.label_2684:
	and	r15d, 2
	xor	r15d, 0xa
.label_2704:
	mov	dword ptr [rbx + 0x70], r15d
	mov	rax, qword ptr [rbx + 0x30]
	cmp	r12, r14
	mov	rsp, rsp
	jne	.label_2715
	mov	rbp, rbp
	mov	rdx, rax
	sub	rdx, r14
	jle	.label_2715
	mov	rcx, qword ptr [rbx + 0x18]
	cmp	qword ptr [rcx + r14*8], r14
	lea	rdi, [rdi]
	jne	.label_2715
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r14*4]
	nop	
	shl	rdx, 2
	mov	rbp, r10
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	sub	rdx, r14
	nop	
	lea	rsi, [rdi + r14]
	lea	rdi, [rdi]
	call	memmove
	mov	r10, rbp
	movdqu	xmm0, xmmword ptr [rbx + 0x30]
	mov	rbp, rbp
	movq	xmm1, r14
	nop	
	pshufd	xmm1, xmm1, 0x44
	psubq	xmm0, xmm1
	nop	
	movdqu	xmmword ptr [rbx + 0x30], xmm0
	movq	rax, xmm0
	test	rax, rax
	jle	.label_2701
	mov	rax, qword ptr [rbx + 0x18]
	lea	rsi, [rsi]
	lea	rcx, [rax + r14*8]
	lea	rdi, [rdi]
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_2738:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	nop	
	mov	qword ptr [rax + rdx*8], rsi
	lea	rsi, [rsi]
	inc	rdx
	nop	
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_2738
	mov	rbp, rbp
	jmp	.label_2701
.label_2715:
	mov	rcx, r14
	sub	rcx, r10
	mov	rdx, qword ptr [rbx + 0x50]
	add	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x58], rdx
	mov	rbp, rbp
	add	rcx, qword ptr [rbx + 0x60]
	nop	
	mov	qword ptr [rbx + 0x68], rcx
	mov	byte ptr [rbx + 0x8c], 0
	nop	dword ptr [rax + rax]
.label_2757:
	mov	rbp, rbp
	mov	rcx, r12
	test	rcx, rcx
	mov	rbp, rbp
	jle	.label_2752
	lea	r12, [rcx - 1]
	mov	rdx, qword ptr [rbx + 0x18]
	cmp	qword ptr [rdx + rcx*8 - 8], r14
	lea	rdi, [rdi]
	je	.label_2757
.label_2752:
	cmp	rcx, rax
	jge	.label_2761
	mov	rdx, qword ptr [rbx + 0x10]
	nop	dword ptr [rax]
.label_2765:
	nop	
	cmp	dword ptr [rdx + rcx*4], -1
	jne	.label_2761
	inc	rcx
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2765
.label_2761:
	mov	rsp, rsp
	cmp	rcx, rax
	jne	.label_2767
	mov	qword ptr [rbx + 0x30], 0
	xor	ebp, ebp
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x38], rbp
	lea	rsi, [rsi]
	jmp	.label_2701
.label_2767:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x18]
	mov	rbp, qword ptr [rax + rcx*8]
	sub	rbp, r14
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x30], rbp
	lea	rdi, [rdi]
	je	.label_2679
	mov	rbp, rbp
	mov	r15, r10
	test	rbp, rbp
	jle	.label_2683
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	edx, 1
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	mov	rsp, rsp
	call	memset
.label_2683:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	memset
	mov	rbp, qword ptr [rbx + 0x30]
	mov	rbp, rbp
	mov	r10, r15
.label_2679:
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x38], rbp
	mov	rsp, rsp
	jmp	.label_2701
.label_2747:
	nop	
	mov	r10, r12
	jmp	.label_2676
.label_2693:
	mov	r10, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	r11, r12
.label_2743:
	mov	rsp, rsp
	cmp	esi, -1
	jne	.label_2709
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x28]
	mov	r12, qword ptr [rbx + 0x38]
.label_2717:
	mov	rsp, rsp
	add	r12, rax
	nop	
	mov	rax, r12
	nop	
	sub	rax, r10
	mov	rsp, rsp
	jge	.label_2714
	mov	qword ptr [rsp + 0x10], r11
	nop	
	mov	qword ptr [rsp + 0x18], r13
	lea	rax, [rbx + 0x20]
	mov	qword ptr [rsp + 0x20], rax
	nop	
	jmp	.label_2719
.label_2678:
	mov	rbp, rbp
	xor	esi, esi
	mov	rsp, rsp
	cmp	r13, r12
	je	.label_2723
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	mov	r10, rbp
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 8]
	je	.label_2724
	mov	rax, qword ptr [rbx]
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rax + r12]
	jmp	.label_2724
.label_2723:
	lea	rsi, [rsi]
	mov	r10, rbp
	nop	
	mov	rcx, qword ptr [rsp + 8]
.label_2724:
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	nop	
	jmp	.label_2730
	nop	
.label_2719:
	mov	rbp, r10
	nop	
	mov	rax, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	r13, qword ptr [rbx + 0x50]
	lea	rdi, [rdi]
	mov	rdx, r13
	sub	rdx, r12
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx]
	add	rsi, r12
	lea	rdi, [rsp]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	call	rpl_mbrtowc
	nop	
	test	rax, rax
	je	.label_2678
	mov	rcx, rax
	lea	rdi, [rdi]
	or	rcx, 1
	lea	rdi, [rdi]
	cmp	rcx, -1
	je	.label_2678
	mov	esi, dword ptr [rsp]
	mov	rsp, rsp
	mov	r10, rbp
.label_2730:
	add	r12, rax
	lea	rdi, [rdi]
	mov	rax, r12
	nop	
	sub	rax, r10
	jl	.label_2719
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x30], rax
	lea	rsi, [rsi]
	cmp	esi, -1
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	je	.label_2749
.label_2709:
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2759
.label_2751:
	xor	ecx, ecx
	cmp	esi, 0xa
	mov	rbp, rbp
	jne	.label_2682
	lea	rsi, [rsi]
	mov	ecx, 2
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_2682
	mov	rsp, rsp
	xor	ecx, ecx
.label_2682:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rsp, rsp
	jmp	.label_2720
.label_2714:
	mov	qword ptr [rbx + 0x30], rax
.label_2749:
	test	r11, r11
	mov	rbp, rbp
	jle	.label_2769
	lea	rax, [r11 - 1]
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x58], rax
	mov	rsp, rsp
	je	.label_2675
	mov	rbp, rbp
	cmp	dword ptr [rbx + 0x90], 2
	mov	rsp, rsp
	jl	.label_2680
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
.label_2737:
	mov	ebp, dword ptr [rax + r11*4 - 4]
	nop	
	cmp	ebp, -1
	mov	rbp, rbp
	jne	.label_2688
	lea	rsi, [rsi]
	dec	r11
	mov	rbp, rbp
	jg	.label_2737
	mov	r15d, dword ptr [rbx + 0x70]
	mov	dword ptr [rbx + 0x70], r15d
	nop	
	jmp	.label_2720
.label_2680:
	mov	rcx, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x80]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	cl, al
	shr	cl, 6
	nop	
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	lea	rdi, [rdi]
	mov	r15d, 1
	lea	rsi, [rsi]
	bt	rcx, rax
	mov	rbp, rbp
	jb	.label_2707
	mov	rbp, rbp
	xor	r15d, r15d
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_2707
	jmp	.label_2711
.label_2688:
	cmp	byte ptr [rbx + 0x8e], 0
	lea	rsi, [rsi]
	jne	.label_2712
.label_2708:
	lea	rsi, [rsi]
	xor	r15d, r15d
	cmp	ebp, 0xa
	jne	.label_2707
.label_2711:
	mov	r15d, 2
	cmp	byte ptr [rbx + 0x8d], 0
	mov	rbp, rbp
	jne	.label_2707
	xor	r15d, r15d
.label_2707:
	mov	rbp, rbp
	mov	dword ptr [rbx + 0x70], r15d
.label_2720:
	mov	rbp, rbp
	mov	rbp, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	test	rbp, rbp
	jne	.label_2722
.label_2732:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	mov	rbp, rbp
	jmp	.label_2701
.label_2722:
	jle	.label_2726
	mov	rdi, qword ptr [rbx + 0x10]
	test	rbp, rbp
	mov	edx, 1
	nop	
	cmovg	rdx, rbp
	lea	rdi, [rdi]
	shl	rdx, 2
	mov	esi, 0xff
	lea	rdi, [rdi]
	mov	r15, r10
	lea	rsi, [rsi]
	call	memset
	mov	r10, r15
.label_2726:
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_2732
	mov	rdi, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	esi, 0xff
	mov	rdx, rbp
	lea	rdi, [rdi]
	mov	rbp, r10
	nop	
	call	memset
	lea	rsi, [rsi]
	mov	r10, rbp
	lea	rdi, [rdi]
	jmp	.label_2732
.label_2769:
	mov	r15d, dword ptr [rbx + 0x70]
	mov	dword ptr [rbx + 0x70], r15d
	jmp	.label_2720
.label_2675:
	mov	rsp, rsp
	and	r15d, 2
	mov	rsp, rsp
	xor	r15d, 0xa
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 0x70], r15d
	mov	rsp, rsp
	jmp	.label_2720
.label_2759:
	mov	rsp, rsp
	mov	r15, r10
	mov	ebp, esi
	mov	edi, ebp
	nop	
	call	iswalnum
	mov	esi, ebp
	nop	
	cmp	esi, 0x5f
	nop	
	mov	ecx, 1
	je	.label_2745
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	mov	r10, r15
	je	.label_2751
	lea	rdi, [rdi]
	jmp	.label_2682
.label_2746:
	nop	
	mov	qword ptr [rsp + 0x20], r10
	nop	
	mov	edi, ebp
	call	iswalnum
	nop	
	cmp	ebp, 0x5f
	mov	rsp, rsp
	mov	r15d, 1
	je	.label_2762
	test	eax, eax
	nop	
	mov	r10, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	je	.label_2729
	nop	
	jmp	.label_2704
.label_2731:
	lea	rsi, [rsp + 0x2e]
	mov	rsp, rsp
	cmp	rdx, 6
	lea	rsi, [rsi]
	mov	ecx, 6
	cmovl	ecx, edx
	nop	
	test	ecx, ecx
	jle	.label_2768
	mov	qword ptr [rsp + 0x20], r10
	lea	rdi, [rbp - 1]
	sub	rdi, r8
	mov	rsp, rsp
	cmp	rdi, -8
	nop	
	mov	rcx, -7
	mov	rbp, rbp
	cmovg	rcx, rdi
	xor	rcx, 0xffffffffffffffff
	mov	rbp, rbp
	shl	rcx, 0x20
	lea	rdi, [rdi]
	sar	rcx, 0x20
	inc	rcx
.label_2692:
	nop	
	movzx	edi, byte ptr [rbp + rcx - 2]
	mov	rbp, rbp
	mov	al, byte ptr [r9 + rdi]
	mov	byte ptr [rsp + rcx + 0x2c], al
	lea	rdi, [rdi]
	dec	rcx
	cmp	rcx, 1
	mov	rsp, rsp
	jg	.label_2692
	mov	r12, r11
	jmp	.label_2698
.label_2712:
	lea	rsi, [rsi]
	mov	r12, r10
	lea	rdi, [rdi]
	mov	edi, ebp
	call	iswalnum
	lea	rdi, [rdi]
	cmp	ebp, 0x5f
	nop	
	mov	r15d, 1
	je	.label_2705
	test	eax, eax
	mov	rsp, rsp
	mov	r10, r12
	lea	rdi, [rdi]
	je	.label_2708
	jmp	.label_2707
.label_2768:
	mov	r12, r11
	mov	qword ptr [rsp + 0x20], r10
	jmp	.label_2698
.label_2745:
	nop	
	mov	r10, r15
	jmp	.label_2682
.label_2762:
	mov	rbp, rbp
	mov	r10, qword ptr [rsp + 0x20]
	jmp	.label_2704
.label_2705:
	mov	rsp, rsp
	mov	r10, r12
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x70], r15d
	jmp	.label_2720
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4254e0

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	rbp
	push	r14
	push	rbx
	nop	
	mov	r14, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rdx, rdx
	js	.label_2787
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x58], rdx
	je	.label_2789
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2772
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x10]
	inc	rdx
	nop	word ptr [rax + rax]
.label_2784:
	mov	rbp, rbp
	mov	ebp, dword ptr [rax + rdx*4 - 4]
	mov	rbp, rbp
	cmp	ebp, -1
	mov	rsp, rsp
	jne	.label_2780
	dec	rdx
	test	rdx, rdx
	lea	rdi, [rdi]
	jg	.label_2784
	mov	edi, dword ptr [rbx + 0x70]
	mov	rsp, rsp
	jmp	.label_2777
.label_2772:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x80]
	mov	rbp, rbp
	movzx	eax, byte ptr [rax + rdx]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edi, 1
	bt	rcx, rax
	mov	rsp, rsp
	jb	.label_2777
	xor	edi, edi
	movzx	eax, al
	nop	
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_2777
	jmp	.label_2773
.label_2780:
	cmp	byte ptr [rbx + 0x8e], 0
	lea	rdi, [rdi]
	jne	.label_2774
.label_2783:
	lea	rsi, [rsi]
	xor	edi, edi
	cmp	ebp, 0xa
	mov	rbp, rbp
	jne	.label_2777
.label_2773:
	mov	rbp, rbp
	mov	edi, 2
	cmp	byte ptr [rbx + 0x8d], 0
	lea	rsi, [rsi]
	jne	.label_2777
	lea	rdi, [rdi]
	xor	edi, edi
	jmp	.label_2777
.label_2787:
	mov	rbp, rbp
	mov	edi, dword ptr [rbx + 0x70]
	jmp	.label_2777
.label_2789:
	mov	edi, dword ptr [rbx + 0xa0]
	nop	
	and	edi, 2
	xor	edi, 0xa
.label_2777:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	xor	eax, eax
	test	rcx, rcx
	mov	rsp, rsp
	jle	.label_2775
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x98]
	nop	
	mov	rdx, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [rax]
	mov	eax, edi
	and	eax, 2
	mov	rsp, rsp
	mov	r8d, edi
	and	r8d, 8
	xor	ebp, ebp
	test	dil, 1
	lea	rsi, [rsi]
	jne	.label_2788
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_2779
	nop	dword ptr [rax + rax]
.label_2776:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdx + rbp*8]
	mov	rdi, rax
	mov	rsp, rsp
	shl	rdi, 4
	mov	edi, dword ptr [rsi + rdi + 8]
	lea	rsi, [rsi]
	movzx	ebx, dil
	nop	
	cmp	ebx, 2
	mov	rsp, rsp
	jne	.label_2782
	shr	edi, 8
	test	di, 0x3ff
	lea	rsi, [rsi]
	je	.label_2775
	test	dil, 0x24
	lea	rsi, [rsi]
	jne	.label_2782
	lea	rsi, [rsi]
	test	r8d, r8d
	jne	.label_2775
	mov	rbp, rbp
	test	dil, dil
	lea	rsi, [rsi]
	jns	.label_2775
	nop	word ptr [rax + rax]
.label_2782:
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, rcx
	mov	rbp, rbp
	mov	eax, 0
	jl	.label_2776
	lea	rdi, [rdi]
	jmp	.label_2775
	nop	dword ptr [rax + rax]
.label_2779:
	mov	rax, qword ptr [rdx + rbp*8]
	mov	rdi, rax
	shl	rdi, 4
	mov	rsp, rsp
	mov	edi, dword ptr [rsi + rdi + 8]
	movzx	ebx, dil
	cmp	ebx, 2
	lea	rsi, [rsi]
	jne	.label_2781
	shr	edi, 8
	nop	
	test	di, 0x3ff
	je	.label_2775
	test	dil, 4
	jne	.label_2781
	lea	rsi, [rsi]
	test	r8d, r8d
	jne	.label_2775
	lea	rsi, [rsi]
	test	dil, dil
	mov	rsp, rsp
	jns	.label_2775
.label_2781:
	mov	rbp, rbp
	inc	rbp
	cmp	rbp, rcx
	mov	eax, 0
	jl	.label_2779
	nop	
	jmp	.label_2775
.label_2788:
	test	eax, eax
	jne	.label_2778
	nop	dword ptr [rax]
.label_2771:
	mov	rax, qword ptr [rdx + rbp*8]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	shl	rdi, 4
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsi + rdi + 8]
	lea	rsi, [rsi]
	movzx	ebx, dil
	cmp	ebx, 2
	lea	rdi, [rdi]
	jne	.label_2786
	shr	edi, 8
	lea	rdi, [rdi]
	test	di, 0x3ff
	lea	rsi, [rsi]
	je	.label_2775
	test	dil, 0x28
	lea	rdi, [rdi]
	jne	.label_2786
	lea	rdi, [rdi]
	test	r8d, r8d
	nop	
	jne	.label_2775
	mov	rbp, rbp
	test	dil, dil
	lea	rsi, [rsi]
	jns	.label_2775
	nop	
.label_2786:
	inc	rbp
	cmp	rbp, rcx
	lea	rdi, [rdi]
	mov	eax, 0
	mov	rsp, rsp
	jl	.label_2771
	mov	rsp, rsp
	jmp	.label_2775
	nop	dword ptr [rax + rax]
.label_2778:
	mov	rax, qword ptr [rdx + rbp*8]
	mov	rdi, rax
	nop	
	shl	rdi, 4
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsi + rdi + 8]
	lea	rdi, [rdi]
	movzx	ebx, dil
	cmp	ebx, 2
	nop	
	jne	.label_2785
	nop	
	shr	edi, 8
	mov	rsp, rsp
	test	di, 0x3ff
	lea	rsi, [rsi]
	je	.label_2775
	test	dil, 8
	lea	rsi, [rsi]
	jne	.label_2785
	test	r8d, r8d
	lea	rdi, [rdi]
	jne	.label_2775
	lea	rdi, [rdi]
	test	dil, dil
	nop	
	jns	.label_2775
.label_2785:
	mov	rsp, rsp
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, rcx
	mov	rbp, rbp
	mov	eax, 0
	mov	rbp, rbp
	jl	.label_2778
.label_2775:
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_2774:
	mov	edi, ebp
	call	iswalnum
	nop	
	cmp	ebp, 0x5f
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	je	.label_2777
	nop	
	test	eax, eax
	jne	.label_2777
	lea	rsi, [rsi]
	jmp	.label_2783
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x425840

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
	jle	.label_2790
	nop	
	xor	r12d, r12d
	nop	
.label_2791:
	mov	rax, qword ptr [r14 + 0xf8]
	nop	
	mov	r15, qword ptr [rax + r12*8]
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x20], 0
	lea	rdi, [rdi]
	mov	ebx, 0
	lea	rsi, [rsi]
	jle	.label_2792
	nop	word ptr cs:[rax + rax]
.label_2793:
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
	jl	.label_2793
.label_2792:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x28]
	nop	
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	mov	rbp, rbp
	je	.label_2794
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	call	free
.label_2794:
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	call	free
	mov	rbp, rbp
	inc	r12
	mov	rsp, rsp
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_2791
.label_2790:
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
	#Procedure 0x425950

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
	mov	r14, rcx
	nop	
	mov	qword ptr [rbp - 0x98], r14
	mov	rbx, rdx
	mov	qword ptr [rbp - 0x58], rbx
	mov	r13, rsi
	mov	qword ptr [rbp - 0x88], r13
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + label_2838]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_2839]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x50], xmm0
	xor	r12d, r12d
	test	r8b, r8b
	je	.label_2840
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdi
	mov	r15, r14
	mov	edi, 0x60
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	r14d, 0xc
	lea	rsi, [rsi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_2819
	nop	
	lea	r12, [rbp - 0x50]
	nop	
	mov	r14, r15
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
.label_2840:
	nop	
	mov	qword ptr [rbp - 0x30], rdi
	mov	rbp, rbp
	mov	r15, qword ptr [rdi + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x70], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	mov	rdx, rbx
	lea	rsi, [rsi]
	shl	rdx, 4
	lea	rdi, [rdi]
	cmp	rdx, 0xfbf
	mov	rsp, rsp
	ja	.label_2860
	mov	rsp, rsp
	mov	rax, rsp
	lea	rdi, [rdi]
	lea	rcx, [rdx + 0xf]
	and	rcx, 0xfffffffffffffff0
	mov	rsp, rsp
	sub	rax, rcx
	nop	
	mov	rsp, rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], 0
	jmp	.label_2829
.label_2860:
	lea	rdi, [rdi]
	mov	rdi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rdx
	call	malloc
	test	rax, rax
	nop	
	je	.label_2810
	mov	cl, 1
	mov	dword ptr [rbp - 0x9c], ecx
	mov	rdx, qword ptr [rbp - 0x78]
.label_2829:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rdx
	nop	
	mov	qword ptr [rbp - 0xb0], rax
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, r14
	call	memcpy
	mov	rsi, qword ptr [r14]
	xor	edi, edi
	mov	rbp, rbp
	cmp	rsi, qword ptr [r14 + 8]
	jg	.label_2818
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], r12
	nop	
	lea	rax, [r14 + 8]
	mov	qword ptr [rbp - 0x90], rax
	nop	word ptr cs:[rax + rax]
.label_2804:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rax]
	mov	rdx, r15
	shl	rdx, 4
	mov	rbp, rbp
	lea	rax, [rcx + rdx]
	mov	rbp, rbp
	mov	ecx, dword ptr [rcx + rdx + 8]
	lea	rsi, [rsi]
	movzx	edx, cl
	cmp	edx, 9
	je	.label_2822
	cmp	edx, 8
	mov	r12, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	jne	.label_2813
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_2813
	shl	rax, 4
	lea	rdi, [rdi]
	mov	qword ptr [r14 + rax], rsi
	lea	rdi, [rdi]
	mov	qword ptr [r14 + rax + 8], -1
	mov	rsp, rsp
	jmp	.label_2813
	nop	
.label_2822:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	mov	r12, qword ptr [rbp - 0xa8]
	jge	.label_2813
	nop	
	shl	rax, 4
	cmp	qword ptr [r14 + rax], rsi
	jge	.label_2841
	mov	qword ptr [r14 + rax + 8], rsi
	mov	rdi, qword ptr [rbp - 0xb0]
	nop	
	mov	qword ptr [rbp - 0xb8], rsi
	nop	
	mov	rsi, r14
	jmp	.label_2845
.label_2841:
	test	ecx, 0x80000
	je	.label_2849
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb0]
	cmp	qword ptr [rcx + rax], -1
	mov	rbp, rbp
	je	.label_2849
	mov	rdi, r14
	nop	
	mov	qword ptr [rbp - 0xb8], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xb0]
.label_2845:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
	mov	rsi, qword ptr [rbp - 0xb8]
	jmp	.label_2813
.label_2849:
	lea	rsi, [rsi]
	mov	qword ptr [r14 + rax + 8], rsi
	nop	word ptr cs:[rax + rax]
.label_2813:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rsi
	cmp	rsi, qword ptr [r14 + 8]
	mov	rbp, rbp
	jne	.label_2837
	cmp	r15, qword ptr [r13 + 0xb0]
	lea	rdi, [rdi]
	jne	.label_2837
	test	r12, r12
	je	.label_2861
	mov	rsp, rsp
	test	rbx, rbx
	mov	rcx, qword ptr [rbp - 0x90]
	mov	eax, 0
	nop	
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	je	.label_2795
	nop	dword ptr [rax]
.label_2801:
	mov	rsp, rsp
	cmp	qword ptr [rcx - 8], 0
	js	.label_2798
	lea	rdi, [rdi]
	cmp	qword ptr [rcx], -1
	je	.label_2795
.label_2798:
	inc	rax
	lea	rdi, [rdi]
	add	rcx, 0x10
	cmp	rax, rbx
	lea	rdi, [rdi]
	jb	.label_2801
.label_2795:
	cmp	rax, rbx
	je	.label_2853
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
	mov	rsp, rsp
	lea	rax, [rcx - 1]
	mov	qword ptr [r12], rax
	nop	
	test	rcx, rcx
	mov	rbp, rbp
	jle	.label_2806
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x10]
	shl	rax, 4
	lea	rsi, [rsi]
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rcx + rbx]
	mov	qword ptr [rbp - 0xb8], rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	rdi, r14
	lea	rdi, [rdi]
	call	memcpy
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r15, qword ptr [rax + rbx + 8]
.label_2837:
	nop	
	mov	rbx, qword ptr [r13 + 0x98]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx]
	mov	r14, r15
	shl	r14, 4
	mov	eax, dword ptr [rsi + r14 + 8]
	test	al, 8
	mov	rsp, rsp
	jne	.label_2823
	nop	
	mov	qword ptr [rbp - 0xa8], r12
	test	eax, 0x100000
	jne	.label_2828
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 4
	lea	rsi, [rsi]
	jne	.label_2830
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsi + r14]
	shl	rax, 4
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + rcx + 0x10]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rax + rcx + 0x18]
	lea	rsi, [rsi]
	mov	r12, r13
	sub	r12, rdx
	cmp	qword ptr [rbp - 0xa8], 0
	lea	rdi, [rdi]
	je	.label_2825
	cmp	r13, -1
	je	.label_2803
	cmp	rdx, -1
	mov	rsp, rsp
	je	.label_2803
	cmp	r13, rdx
	lea	rdi, [rdi]
	je	.label_2825
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, r12
	lea	rdi, [rdi]
	jl	.label_2803
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rax + 8]
	lea	rdi, [rsi + rdx]
	add	rsi, qword ptr [rbp - 0xb8]
	nop	
	mov	qword ptr [rbp - 0x80], rdx
	lea	rsi, [rsi]
	mov	rdx, r12
	call	memcmp
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x80]
	nop	
	test	eax, eax
	mov	rbp, rbp
	jne	.label_2803
.label_2825:
	cmp	r13, rdx
	lea	rdi, [rdi]
	jne	.label_2796
	lea	rdi, [rbp - 0x70]
	mov	rsi, r15
	call	re_node_set_insert
	test	al, al
	je	.label_2807
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0xb8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + rcx*8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_2796
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x28]
	nop	
	lea	rsi, [r15 + r15*2]
	mov	rdx, qword ptr [rdx + rsi*8 + 0x10]
	mov	r13, qword ptr [rdx]
	lea	rdi, [rdi]
	dec	rax
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	edx, 0
	nop	
	je	.label_2802
	nop	word ptr cs:[rax + rax]
.label_2812:
	lea	rsi, [rdx + rax]
	lea	rsi, [rsi]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r13
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	lea	rsi, [rsi]
	cmovge	rax, rsi
	cmp	rdx, rax
	lea	rsi, [rsi]
	jb	.label_2812
.label_2802:
	cmp	rdx, -1
	nop	
	je	.label_2796
	cmp	qword ptr [rcx + rdx*8], r13
	je	.label_2820
	lea	rsi, [rsi]
	jmp	.label_2796
	nop	word ptr cs:[rax + rax]
.label_2823:
	nop	
	mov	qword ptr [rbp - 0xa8], r12
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	r14, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbx + 0x28]
	lea	rdi, [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rsi, r15
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	je	.label_2807
	nop	
	lea	rax, [r15 + r15*2]
	mov	r10, qword ptr [rbx + rax*8 + 8]
	mov	rsp, rsp
	test	r10, r10
	lea	rdi, [rdi]
	jle	.label_2797
	mov	r9, qword ptr [r14 + 0x10]
	test	r9, r9
	jle	.label_2797
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	dec	r9
	mov	rsi, qword ptr [r14 + 0x18]
	lea	rdi, [rdi]
	mov	r11, -1
	mov	rbp, rbp
	mov	r14d, 0
	mov	rbp, rbp
	je	.label_2833
	nop	dword ptr [rax]
.label_2855:
	mov	rbx, qword ptr [r8 + r14*8]
	mov	rbp, rbp
	mov	rdx, r9
	xor	eax, eax
	nop	dword ptr [rax]
.label_2846:
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rcx, [rdi + rdx]
	shr	rcx, 1
	mov	rbp, rbp
	cmp	qword ptr [rsi + rcx*8], rbx
	lea	rax, [rcx + 1]
	nop	
	cmovge	rax, rdi
	cmovge	rdx, rcx
	lea	rdi, [rdi]
	cmp	rax, rdx
	jb	.label_2846
	lea	rdi, [rdi]
	cmp	rax, -1
	je	.label_2850
	nop	
	cmp	qword ptr [rsi + rax*8], rbx
	jne	.label_2850
	mov	rsp, rsp
	cmp	r11, -1
	mov	rbp, rbp
	mov	r13, r11
	mov	r11, rbx
	lea	rdi, [rdi]
	jne	.label_2835
.label_2850:
	nop	
	inc	r14
	cmp	r14, r10
	jl	.label_2855
	mov	r12, qword ptr [rbp - 0xb8]
	mov	r13, r11
	jmp	.label_2814
	nop	word ptr [rax + rax]
.label_2828:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r13
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb8]
	call	check_node_accept_bytes
	movsxd	r12, eax
.label_2796:
	test	r12, r12
	nop	
	jne	.label_2859
	mov	rsi, qword ptr [rbx]
	nop	
	mov	r13, qword ptr [rbp - 0x88]
.label_2830:
	add	rsi, r14
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rdx, qword ptr [rbp - 0xb8]
	call	check_node_accept
	test	al, al
	lea	rdi, [rdi]
	mov	r12d, 1
	je	.label_2797
.label_2859:
	add	r12, qword ptr [rbp - 0xb8]
	cmp	qword ptr [rbp - 0xa8], 0
	mov	rax, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rax + r15*8]
	mov	rsp, rsp
	je	.label_2799
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	cmp	r12, qword ptr [rax + 0xa8]
	jg	.label_2803
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0xb8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + r12*8]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_2803
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_2803
	dec	rax
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	edx, 0
	mov	rsp, rsp
	je	.label_2817
	nop	word ptr cs:[rax + rax]
.label_2821:
	lea	rdi, [rdi]
	lea	rsi, [rdx + rax]
	lea	rdi, [rdi]
	shr	rsi, 1
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rsi*8], r13
	nop	
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	mov	rbp, rbp
	jb	.label_2821
.label_2817:
	lea	rsi, [rsi]
	cmp	rdx, -1
	lea	rsi, [rsi]
	je	.label_2797
	mov	rsp, rsp
	cmp	qword ptr [rcx + rdx*8], r13
	jne	.label_2797
.label_2799:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	jmp	.label_2814
.label_2833:
	nop	
	mov	rbx, qword ptr [rsi]
	nop	
	mov	r13, -1
	nop	
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_2836:
	cmp	rbx, qword ptr [r8 + rcx*8]
	jne	.label_2832
	cmp	r13, -1
	mov	rax, rbx
	mov	rbp, rbp
	je	.label_2834
	jmp	.label_2835
	nop	word ptr cs:[rax + rax]
.label_2832:
	mov	rax, r13
.label_2834:
	inc	rcx
	lea	rsi, [rsi]
	cmp	rcx, r10
	nop	
	mov	r13, rax
	mov	rsp, rsp
	jl	.label_2836
	jmp	.label_2842
.label_2835:
	mov	r14, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	test	r14, r14
	jle	.label_2844
	lea	rdi, [rdi]
	mov	rcx, r14
	dec	rcx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	edx, 0
	je	.label_2815
	nop	word ptr cs:[rax + rax]
.label_2852:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r13
	lea	rdi, [rsi + 1]
	mov	rbp, rbp
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	nop	
	jb	.label_2852
.label_2815:
	cmp	rdx, -1
	setne	cl
	mov	rbp, rbp
	cmp	qword ptr [rax + rdx*8], r13
	nop	
	sete	dl
	and	dl, cl
	mov	rbp, rbp
	mov	rax, r13
	cmovne	rax, rbx
	test	dl, dl
	jne	.label_2842
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xb8]
	nop	
	jne	.label_2858
	mov	r12, rdx
	lea	rsi, [rsi]
	mov	r13, rax
	nop	
	jmp	.label_2814
.label_2842:
	mov	r12, qword ptr [rbp - 0xb8]
	mov	r13, rax
	lea	rdi, [rdi]
	jmp	.label_2814
.label_2844:
	mov	rcx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xb8]
	nop	
	je	.label_2808
.label_2858:
	mov	r12, qword ptr [rcx]
	mov	rbp, rbp
	lea	rax, [r12 + 1]
	mov	qword ptr [rcx], rax
	nop	
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jne	.label_2800
	mov	rdi, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0xa8], rcx
	nop	
	shl	rax, 5
	nop	
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r15, rax
	lea	rdi, [rdi]
	test	r15, r15
	je	.label_2807
	mov	rax, qword ptr [rbp - 0xa8]
	shl	qword ptr [rax + 8], 1
	nop	
	mov	qword ptr [rax + 0x10], r15
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0xb8]
	jmp	.label_2811
.label_2800:
	lea	rsi, [rsi]
	mov	r15, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rcx
	mov	rdi, qword ptr [rbp - 0x78]
.label_2811:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rdi
	lea	r12, [r12 + r12*2]
	lea	rdi, [rdi]
	shl	r12, 4
	lea	rdi, [rdi]
	mov	qword ptr [r15 + r12], rdx
	mov	rsp, rsp
	mov	qword ptr [r15 + r12 + 8], rbx
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [r15 + r12 + 0x10], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_2807
	mov	rdi, rax
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	nop	
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
	lea	rbx, [r15 + r12 + 0x18]
	mov	qword ptr [r15 + r12 + 0x20], r14
	nop	
	test	r14, r14
	jle	.label_2826
	nop	
	mov	qword ptr [rbx], r14
	shl	r14, 3
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r15 + r12 + 0x28], rax
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_2831
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rdx, r14
	call	memcpy
	jmp	.label_2820
.label_2826:
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
.label_2820:
	lea	rdi, [rdi]
	mov	r12, qword ptr [rbp - 0xb8]
	jmp	.label_2814
.label_2808:
	mov	rbp, rbp
	mov	r12, rdx
.label_2814:
	test	r13, r13
	nop	
	mov	r14, qword ptr [rbp - 0x98]
	jns	.label_2848
	mov	rsp, rsp
	cmp	r13, -2
	lea	rsi, [rsi]
	je	.label_2807
	nop	word ptr cs:[rax + rax]
.label_2797:
	cmp	qword ptr [rbp - 0xa8], 0
	je	.label_2854
.label_2803:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbx]
	lea	rax, [rcx - 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx], rax
	mov	rbp, rbp
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_2806
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rax, 4
	lea	r14, [rax + rax*2]
	mov	r12, qword ptr [rcx + r14]
	mov	rsi, qword ptr [rcx + r14 + 0x10]
	mov	r15, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rax + r14 + 0x10]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rax + r14 + 0x28]
	nop	
	mov	qword ptr [rbp - 0x60], rcx
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rax + r14 + 0x18]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x70], xmm0
	nop	
	mov	r13, qword ptr [rax + r14 + 8]
	mov	r14, r15
.label_2848:
	cmp	r12, qword ptr [r14 + 8]
	mov	r15, r13
	mov	rsi, r12
	mov	rbx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	r13, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	jle	.label_2804
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rbp - 0xa8]
.label_2818:
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x9c]
	test	al, al
	mov	rsp, rsp
	je	.label_2816
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb0]
	call	free
.label_2816:
	xor	r14d, r14d
	test	r12, r12
	je	.label_2819
	xor	r14d, r14d
	nop	
	cmp	qword ptr [r12], 0
	jle	.label_2805
	nop	
	xor	ebx, ebx
	nop	
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2827:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	lea	rsi, [rsi]
	inc	r15
	add	rbx, 0x30
	mov	rsp, rsp
	cmp	r15, qword ptr [r12]
	mov	rbp, rbp
	jl	.label_2827
	jmp	.label_2805
.label_2810:
	lea	rdi, [rdi]
	mov	r14d, 0xc
	lea	rdi, [rdi]
	test	r12, r12
	je	.label_2819
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [r12], 0
	mov	rbp, rbp
	jle	.label_2805
	nop	
	xor	r15d, r15d
	nop	
.label_2847:
	mov	rax, qword ptr [r12 + 0x10]
	nop	
	mov	rdi, qword ptr [rax + rbx + 0x28]
	nop	
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	lea	rsi, [rsi]
	call	free
	inc	r15
	add	rbx, 0x30
	lea	rdi, [rdi]
	cmp	r15, qword ptr [r12]
	jl	.label_2847
	lea	rsi, [rsi]
	jmp	.label_2805
.label_2854:
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	r14d, 1
	jmp	.label_2851
.label_2861:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	xor	r14d, r14d
.label_2851:
	mov	eax, dword ptr [rbp - 0x9c]
	test	al, al
	je	.label_2819
	mov	rdi, qword ptr [rbp - 0xb0]
	jmp	.label_2856
.label_2853:
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_2857
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	call	free
.label_2857:
	xor	r14d, r14d
	cmp	qword ptr [r12], 0
	jle	.label_2805
	mov	rsp, rsp
	xor	ebx, ebx
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_2843:
	nop	
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	nop	
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	mov	rsp, rsp
	jl	.label_2843
	nop	
	jmp	.label_2805
.label_2831:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.label_2807:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	free
	mov	eax, dword ptr [rbp - 0x9c]
	test	al, al
	mov	rsp, rsp
	je	.label_2809
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	call	free
.label_2809:
	mov	rbp, rbp
	mov	r14d, 0xc
	nop	
	mov	r12, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_2819
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [r12], 0
	mov	rsp, rsp
	jle	.label_2805
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2824:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	mov	rbp, rbp
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_2824
.label_2805:
	mov	rdi, qword ptr [r12 + 0x10]
.label_2856:
	nop	
	call	free
.label_2819:
	mov	rbp, rbp
	mov	eax, r14d
	lea	rsi, [rsi]
	lea	rsp, [rbp - 0x28]
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_2806:
	mov	edi, OFFSET FLAT:.str.26
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.22_1
	nop	
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x426740

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
	jle	.label_2862
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	lea	rdi, [rdi]
	jmp	.label_2863
.label_2866:
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
	je	.label_2862
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	rbp, rbp
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_2865
	nop	dword ptr [rax]
.label_2863:
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
	jne	.label_2864
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rdx]
	lea	rdi, [rdi]
	cmp	rax, 0x3f
	nop	
	jg	.label_2864
	mov	rdx, qword ptr [r13 + 0xa0]
	mov	rbp, rbp
	bt	rdx, rax
	lea	rdi, [rdi]
	jae	.label_2864
	lea	rdi, [rdi]
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	lea	rdi, [rdi]
	je	.label_2866
.label_2865:
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
	je	.label_2862
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
.label_2864:
	lea	rdi, [rdi]
	inc	rbx
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbx, rcx
	mov	rbp, rbp
	jl	.label_2863
.label_2862:
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
	#Procedure 0x4268e0

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
	mov	r10, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], r10
	mov	r9, rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x80], r9
	lea	rsi, [rsi]
	cmp	qword ptr [r10 + 8], 0
	nop	
	jle	.label_2904
	nop	
	mov	rax, qword ptr [r9 + 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x90], rax
	mov	r8, qword ptr [r9 + 0x48]
	mov	qword ptr [rsp + 0x38], r8
	lea	rax, [r8 + 1]
	mov	qword ptr [rsp + 0x78], rax
	xor	r11d, r11d
	nop	word ptr cs:[rax + rax]
.label_2886:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], r11
	mov	rsp, rsp
	mov	rax, qword ptr [r10 + 0x10]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rax + r11*8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], r15
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x90]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rax]
	nop	
	shl	r15, 4
	lea	rsi, [rsi]
	mov	ebp, dword ptr [r14 + r15 + 8]
	mov	rsp, rsp
	movzx	eax, bpl
	cmp	eax, 4
	jne	.label_2897
	shr	ebp, 8
	lea	rsi, [rsi]
	test	bp, 0x3ff
	nop	
	je	.label_2929
	test	r8, r8
	js	.label_2894
	cmp	qword ptr [r9 + 0x58], r8
	je	.label_2936
	cmp	dword ptr [r9 + 0x90], 2
	jl	.label_2938
	mov	rax, qword ptr [r9 + 0x10]
	mov	rcx, qword ptr [rsp + 0x78]
	nop	word ptr [rax + rax]
.label_2943:
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	lea	rsi, [rsi]
	cmp	ebx, -1
	jne	.label_2941
	dec	rcx
	nop	
	test	rcx, rcx
	jg	.label_2943
	mov	ecx, dword ptr [r9 + 0x70]
	mov	rsp, rsp
	jmp	.label_2869
.label_2938:
	nop	
	mov	rax, qword ptr [r9 + 8]
	mov	rcx, qword ptr [r9 + 0x80]
	movzx	eax, byte ptr [rax + r8]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + rdx*8]
	xor	ecx, ecx
	bt	rdx, rax
	jae	.label_2870
	mov	rbp, rbp
	mov	ecx, 1
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rbp, rbp
	jmp	.label_2875
.label_2941:
	cmp	byte ptr [r9 + 0x8e], 0
	jne	.label_2883
.label_2910:
	xor	ecx, ecx
	cmp	ebx, 0xa
	je	.label_2885
	lea	rdi, [rdi]
	jmp	.label_2869
.label_2870:
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_2869
.label_2885:
	mov	ecx, 2
	cmp	byte ptr [r9 + 0x8d], 0
	mov	rsp, rsp
	jne	.label_2869
	xor	ecx, ecx
	nop	
	jmp	.label_2869
.label_2894:
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x70]
	lea	rdi, [rdi]
	jmp	.label_2869
.label_2936:
	mov	ecx, dword ptr [r9 + 0xa0]
	lea	rsi, [rsi]
	and	ecx, 2
	xor	ecx, 0xa
	nop	
.label_2869:
	mov	eax, ecx
	mov	rbp, rbp
	and	eax, 1
	sete	dl
	test	bpl, 4
	nop	
	je	.label_2875
	mov	rsp, rsp
	test	eax, eax
	je	.label_2897
	jmp	.label_2875
.label_2883:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], r11
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], r8
	lea	rdi, [rdi]
	mov	r13, r9
	lea	rdi, [rdi]
	mov	r12, r10
	mov	rbp, rbp
	mov	edi, ebx
	call	iswalnum
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	cmp	ebx, 0x5f
	lea	rdi, [rdi]
	mov	ecx, 1
	je	.label_2906
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	mov	r10, r12
	lea	rdi, [rdi]
	mov	r9, r13
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	je	.label_2910
	nop	
	jmp	.label_2875
.label_2906:
	mov	r10, r12
	mov	r9, r13
	mov	r8, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x88]
	nop	word ptr [rax + rax]
.label_2875:
	mov	rbp, rbp
	lea	rax, [r14 + r15 + 8]
	mov	rbp, rbp
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	test	dl, dl
	jne	.label_2919
	mov	rbp, rbp
	mov	edx, eax
	mov	rbp, rbp
	and	edx, 0x800
	nop	
	jne	.label_2897
.label_2919:
	test	cl, 2
	jne	.label_2927
	mov	edx, eax
	and	edx, 0x2000
	jne	.label_2897
.label_2927:
	nop	
	test	cl, 8
	nop	
	jne	.label_2929
	mov	rsp, rsp
	shr	eax, 8
	nop	
	test	al, al
	js	.label_2897
	nop	word ptr cs:[rax + rax]
.label_2929:
	mov	rbp, qword ptr [r9 + 0xc8]
	mov	qword ptr [rsp + 0x40], rbp
	mov	rax, qword ptr [r9 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], rax
	nop	
	mov	rax, qword ptr [r9 + 0x98]
	nop	
	mov	qword ptr [rsp + 0x68], rax
	test	rbp, rbp
	mov	rsp, rsp
	mov	eax, 0
	lea	rsi, [rsi]
	jle	.label_2932
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 0xd8]
	xor	eax, eax
	mov	rdx, rbp
	nop	word ptr cs:[rax + rax]
.label_2867:
	lea	rdi, [rdi]
	lea	rsi, [rdx + rax]
	mov	rbp, rbp
	mov	rdi, rsi
	lea	rdi, [rdi]
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rsi*8 + 8], r8
	cmovge	rdx, rdi
	lea	rsi, [rdi + 1]
	cmovl	rax, rsi
	mov	rbp, rbp
	cmp	rax, rdx
	mov	rbp, rbp
	jl	.label_2867
.label_2932:
	cmp	rax, rbp
	nop	
	jge	.label_2876
	lea	rdi, [rdi]
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_2876
	mov	rcx, qword ptr [r9 + 0xd8]
	mov	rsp, rsp
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r8
	jne	.label_2876
	lea	rax, [rcx + rax*8]
	nop	dword ptr [rax + rax]
.label_2893:
	nop	
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	cmp	qword ptr [rax], rcx
	mov	rsp, rsp
	je	.label_2889
	cmp	byte ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	lea	rax, [rax + 0x28]
	jne	.label_2893
.label_2876:
	mov	rbp, rbp
	cmp	qword ptr [r9 + 0xe8], 0
	mov	rax, rbp
	jle	.label_2922
	mov	rax, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rax]
	nop	
	mov	r15, qword ptr [rax + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], r15
	lea	rsi, [rsi]
	xor	edx, edx
	jmp	.label_2940
	nop	word ptr cs:[rax + rax]
.label_2917:
	mov	rax, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
.label_2940:
	mov	rcx, qword ptr [r9 + 0xf8]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rcx + rdx*8]
	mov	qword ptr [rsp + 0x50], r13
	mov	rcx, qword ptr [r13 + 8]
	mov	rbp, rbp
	shl	rcx, 4
	cmp	qword ptr [rax + rcx], r15
	jne	.label_2902
	mov	r15, qword ptr [r13]
	nop	
	mov	rax, qword ptr [r13 + 0x20]
	test	rax, rax
	jle	.label_2909
	mov	qword ptr [rsp + 0xa0], rdx
	mov	rsp, rsp
	mov	r12, r8
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_2911
	nop	word ptr cs:[rax + rax]
.label_2902:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rdx
	jmp	.label_2872
.label_2909:
	mov	qword ptr [rsp + 0xa0], rdx
	mov	rdx, r8
	mov	rsi, r15
	xor	r14d, r14d
	jmp	.label_2916
.label_2891:
	mov	rdx, qword ptr [r9 + 0x58]
	nop	
	cmp	rsi, rdx
	lea	rdi, [rdi]
	jg	.label_2921
	mov	rsp, rsp
	mov	rax, qword ptr [r9 + 0x40]
	mov	rdi, qword ptr [r9 + 0xc0]
	nop	
	cmp	rax, rsi
	mov	qword ptr [rsp + 0x30], rsi
	mov	rsi, r13
	jg	.label_2924
	lea	rsi, [rsi]
	cmp	rax, rdx
	jl	.label_2928
.label_2924:
	cmp	rcx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	jg	.label_2930
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_2930
.label_2928:
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x50], rsi
	mov	rsp, rsp
	lea	esi, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rdi
	mov	rdi, r9
	mov	r13, r9
	call	extend_buffers
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdi, qword ptr [rsp + 0x70]
	mov	r9, r13
	mov	r13d, eax
	mov	rbp, rbp
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_2890
.label_2930:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rsi
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	sub	rdx, rdi
	jle	.label_2923
	mov	rax, qword ptr [r9 + 0xb8]
	lea	rdi, [rax + rdi*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	mov	r13, r9
	lea	rsi, [rsi]
	call	memset
	mov	r9, r13
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [r9 + 0xc0], rax
.label_2923:
	nop	
	mov	rax, qword ptr [r9 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	jmp	.label_2874
	nop	word ptr cs:[rax + rax]
.label_2911:
	mov	rcx, qword ptr [r13 + 0x28]
	nop	
	mov	rbx, qword ptr [rcx + r14*8]
	mov	rcx, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rcx
	mov	rsi, rcx
	sub	rsi, r15
	add	rsi, r12
	mov	rbp, rcx
	sub	rbp, r15
	jle	.label_2939
	mov	rcx, qword ptr [r9 + 0x30]
	cmp	rsi, rcx
	jg	.label_2891
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rsi
.label_2874:
	mov	r13, r9
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rdi, [rax + r12]
	lea	rsi, [rsi]
	lea	rsi, [rax + r15]
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	mov	rsp, rsp
	mov	r9, r13
	nop	
	mov	r8, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x50]
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	jne	.label_2896
.label_2939:
	mov	rbp, rsi
	mov	rdi, r9
	mov	rsi, r13
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rbx, r8
	lea	rdi, [rdi]
	mov	r15, r9
	mov	rbp, rbp
	call	get_subexp_sub
	mov	rbp, rbp
	mov	r9, r15
	mov	rcx, r13
	mov	r13d, eax
	cmp	r13d, 1
	ja	.label_2890
	mov	rax, qword ptr [r9 + 8]
	mov	qword ptr [rsp + 0x70], rax
	inc	r14
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	cmp	r14, rax
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	r12, rdx
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	r8, rbx
	mov	r13, rcx
	jl	.label_2911
	nop	
	jmp	.label_2916
.label_2896:
	mov	rax, qword ptr [r13 + 0x20]
.label_2921:
	lea	rdi, [rdi]
	mov	rdx, r12
	mov	rbp, rbp
	mov	rsi, r15
.label_2916:
	cmp	r14, rax
	jge	.label_2920
	mov	r10, qword ptr [rsp + 0x98]
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x48]
	jmp	.label_2872
.label_2920:
	test	r14, r14
	setg	al
	lea	rdi, [rdi]
	movzx	ebp, al
	add	rbp, rsi
	cmp	rbp, r8
	mov	r10, qword ptr [rsp + 0x98]
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0x48]
	jg	.label_2872
	jmp	.label_2913
.label_2901:
	lea	rdi, [rdi]
	cmp	r14, -1
	je	.label_2931
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], r11
	mov	qword ptr [rsp + 0x38], r8
	lea	rsi, [rsi]
	mov	r15, r10
	mov	rax, qword ptr [r13 + 0x10]
	test	rax, rax
	mov	rbp, rbp
	mov	rbx, r13
	mov	rsp, rsp
	jne	.label_2877
	lea	rsi, [rbp + 1]
	sub	rsi, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	edi, 0x18
	mov	r12, r9
	call	rpl_calloc
	mov	rsp, rsp
	mov	r9, r12
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	mov	r13d, 0xc
	je	.label_2890
.label_2877:
	mov	rcx, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 8]
	mov	r12, rbx
	mov	dword ptr [rsp], 9
	lea	rdi, [rdi]
	mov	rdi, r9
	mov	rbp, rbp
	mov	rbx, r9
	nop	
	mov	rsi, rax
	mov	r8, r14
	mov	rbp, rbp
	mov	r9, rbp
	lea	rsi, [rsi]
	call	check_arrival
	mov	r13d, eax
	cmp	r13d, 1
	mov	r10, r15
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x88]
	mov	r15, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	je	.label_2879
	mov	r15, r8
	nop	
	mov	qword ptr [rsp + 0x98], r10
	test	r13d, r13d
	mov	rax, r12
	jne	.label_2890
	mov	qword ptr [rsp + 0x80], rbx
	mov	r12, qword ptr [rax + 0x20]
	mov	rsp, rsp
	cmp	r12, qword ptr [rax + 0x18]
	mov	rbx, rax
	je	.label_2895
.label_2871:
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	mov	r12, rbx
	mov	r13d, 0xc
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x80]
	je	.label_2890
	mov	rcx, qword ptr [r12 + 0x20]
	nop	
	mov	rdx, qword ptr [r12 + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r14
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rbp
	inc	rcx
	mov	qword ptr [r12 + 0x20], rcx
	nop	
	mov	rsi, r12
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	mov	r8, r15
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	get_subexp_sub
	nop	
	mov	rcx, rbx
	lea	rsi, [rsi]
	mov	r13d, eax
	lea	rsi, [rsi]
	cmp	r13d, 1
	lea	rsi, [rsi]
	ja	.label_2890
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	mov	rsp, rsp
	mov	rbx, rcx
	mov	r10, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	mov	r8, r15
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x48]
	jmp	.label_2882
.label_2881:
	cmp	rdx, qword ptr [r9 + 0x58]
	jge	.label_2872
	mov	qword ptr [rsp + 0x48], r15
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], r11
	mov	qword ptr [rsp + 0x38], r8
	mov	rsp, rsp
	mov	r15, r10
	lea	rbx, [rdx + 1]
	mov	rbp, rbp
	mov	r14, rdx
	nop	
	mov	rdi, r9
	mov	esi, ebx
	mov	rbp, rbp
	mov	r12, r13
	lea	rsi, [rsi]
	mov	r13, r9
	call	extend_buffers
	mov	rsp, rsp
	mov	r9, r13
	mov	r13d, eax
	mov	rbp, rbp
	test	r13d, r13d
	jne	.label_2890
	mov	rax, qword ptr [r9 + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	r10, r15
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r11, qword ptr [rsp + 0x88]
	mov	r15, qword ptr [rsp + 0x48]
	mov	r13, r12
	lea	rdi, [rdi]
	mov	rdx, r14
	jmp	.label_2935
.label_2895:
	mov	rbp, rbp
	lea	rax, [r12 + r12]
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	lea	rsi, [rax*8 + 8]
	lea	rsi, [rsi]
	call	realloc
	mov	r13d, 0xc
	test	rax, rax
	je	.label_2890
	lea	rcx, [r12 + r12 + 1]
	mov	qword ptr [rbx + 0x28], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x18], rcx
	nop	
	jmp	.label_2871
	nop	word ptr cs:[rax + rax]
.label_2913:
	mov	rbp, rbp
	cmp	rbp, qword ptr [r13]
	jle	.label_2912
	nop	
	cmp	rdx, qword ptr [r9 + 0x30]
	lea	rdi, [rdi]
	jge	.label_2881
	lea	rbx, [rdx + 1]
.label_2935:
	mov	rcx, qword ptr [rsp + 0x70]
	movzx	eax, byte ptr [rbp + rcx - 1]
	movzx	ecx, byte ptr [rcx + rdx]
	lea	rsi, [rsi]
	cmp	ecx, eax
	nop	
	mov	rdx, rbx
	mov	rbp, rbp
	jne	.label_2872
.label_2912:
	mov	rsp, rsp
	mov	rax, qword ptr [r9 + 0xb8]
	mov	rcx, qword ptr [rax + rbp*8]
	test	rcx, rcx
	je	.label_2892
	nop	
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_2892
	mov	qword ptr [rsp + 0x30], rdx
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx]
	nop	
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_2905:
	mov	r14, qword ptr [rcx + rsi*8]
	mov	rdi, r14
	shl	rdi, 4
	nop	
	movzx	ebx, byte ptr [rdx + rdi + 8]
	nop	
	cmp	ebx, 9
	lea	rsi, [rsi]
	jne	.label_2899
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + rdi], r15
	lea	rdi, [rdi]
	je	.label_2901
.label_2899:
	inc	rsi
	cmp	rsi, rax
	jl	.label_2905
.label_2931:
	lea	rsi, [rsi]
	mov	r12, r13
	lea	rdi, [rdi]
	mov	rbx, r9
.label_2882:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	jmp	.label_2879
	nop	dword ptr [rax + rax]
.label_2892:
	mov	r12, r13
	lea	rsi, [rsi]
	mov	rbx, r9
.label_2879:
	cmp	rbp, r8
	lea	rbp, [rbp + 1]
	lea	rdi, [rdi]
	mov	r9, rbx
	nop	
	mov	r13, r12
	lea	rdi, [rdi]
	jl	.label_2913
	nop	word ptr cs:[rax + rax]
.label_2872:
	mov	rdx, qword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	inc	rdx
	cmp	rdx, qword ptr [r9 + 0xe8]
	lea	rsi, [rsi]
	jl	.label_2917
	mov	rax, qword ptr [r9 + 0xc8]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_2922
.label_2889:
	mov	rax, rbp
.label_2922:
	mov	dword ptr [rsp + 0x14], 0
	lea	rdi, [rdi]
	cmp	rbp, rax
	mov	rsp, rsp
	jge	.label_2897
	jmp	.label_2884
.label_2926:
	mov	qword ptr [rsp + 8], rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], r14
	mov	r14, r12
	mov	r12, rbp
	mov	rbp, r11
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], r8
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	edi, ebx
	lea	rsi, [rsi]
	call	iswalnum
	mov	rbp, rbp
	cmp	ebx, 0x5f
	mov	rbp, rbp
	mov	edx, 1
	nop	
	je	.label_2934
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0x38]
	mov	r11, rbp
	mov	rbp, rbp
	mov	rbp, r12
	nop	
	mov	r12, r14
	mov	r14, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 8]
	je	.label_2937
	jmp	.label_2868
.label_2934:
	mov	r9, qword ptr [rsp + 0x80]
	mov	r8, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	r11, rbp
	mov	rbp, r12
	mov	r12, r14
	mov	r14, qword ptr [rsp + 0x50]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 8]
	jmp	.label_2868
	nop	word ptr cs:[rax + rax]
.label_2884:
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0xd8]
	lea	rcx, [rbp + rbp*4]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x60]
	nop	
	cmp	qword ptr [rax + rcx*8], rdx
	jne	.label_2878
	cmp	qword ptr [rax + rcx*8 + 8], r8
	jne	.label_2878
	mov	r12, qword ptr [rax + rcx*8 + 0x18]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rax + rcx*8 + 0x10]
	mov	rax, qword ptr [rsp + 0x90]
	mov	rsi, qword ptr [rax + 0x30]
	cmp	r12, r14
	jne	.label_2888
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x90]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rsp + 0x60]
	nop	
	lea	rcx, [rcx + rcx*2]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_2918
.label_2888:
	mov	rax, qword ptr [rsp + 0x60]
	nop	
	lea	rax, [rax*8]
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 0x18]
.label_2918:
	mov	r13, qword ptr [rax]
	lea	r15, [r12 + r8]
	sub	r15, r14
	test	r15, r15
	jle	.label_2900
	lea	rax, [r15 - 1]
	mov	rbp, rbp
	cmp	qword ptr [r9 + 0x58], rax
	mov	rsp, rsp
	je	.label_2903
	lea	rsi, [rsi]
	cmp	dword ptr [r9 + 0x90], 2
	mov	rbp, rbp
	jl	.label_2907
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0x10]
	mov	rcx, r15
	nop	dword ptr [rax]
.label_2914:
	nop	
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	cmp	ebx, -1
	jne	.label_2887
	lea	rdi, [rdi]
	dec	rcx
	jg	.label_2914
	lea	rdi, [rdi]
	mov	edx, dword ptr [r9 + 0x70]
	jmp	.label_2868
.label_2907:
	mov	rcx, qword ptr [r9 + 8]
	mov	rdx, qword ptr [r9 + 0x80]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	cl, al
	shr	cl, 6
	nop	
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	edx, 1
	bt	rcx, rax
	lea	rdi, [rdi]
	jb	.label_2868
	mov	rbp, rbp
	xor	edx, edx
	movzx	eax, al
	cmp	eax, 0xa
	mov	rbp, rbp
	jne	.label_2868
	jmp	.label_2925
.label_2887:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + 0x8e], 0
	jne	.label_2926
.label_2937:
	xor	edx, edx
	mov	rbp, rbp
	cmp	ebx, 0xa
	jne	.label_2868
.label_2925:
	mov	edx, 2
	mov	rsp, rsp
	cmp	byte ptr [r9 + 0x8d], 0
	jne	.label_2868
	lea	rdi, [rdi]
	xor	edx, edx
	jmp	.label_2868
.label_2900:
	mov	edx, dword ptr [r9 + 0x70]
	jmp	.label_2868
.label_2903:
	mov	rbp, rbp
	mov	edx, dword ptr [r9 + 0xa0]
	lea	rsi, [rsi]
	and	edx, 2
	mov	rbp, rbp
	xor	edx, 0xa
.label_2868:
	mov	dword ptr [rsp + 8], edx
	mov	rsp, rsp
	lea	rcx, [r13 + r13*2]
	mov	rbp, rbp
	mov	rdx, qword ptr [r9 + 0xb8]
	mov	rax, qword ptr [rdx + r15*8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + r8*8]
	test	rdx, rdx
	mov	rsp, rsp
	mov	ebx, 0
	je	.label_2933
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rdx + 0x10]
.label_2933:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], r11
	lea	rdx, [rsi + rcx*8]
	test	rax, rax
	mov	rbp, rbp
	lea	rdi, [rsp + 0x18]
	mov	rsp, rsp
	je	.label_2942
	mov	qword ptr [rsp + 0x70], rbx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], r14
	mov	r14, r12
	mov	r12, rbp
	mov	rbp, rbp
	mov	rbp, r8
	nop	
	mov	rsi, qword ptr [rax + 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbx, rdi
	nop	
	call	re_node_set_init_union
	mov	r13d, eax
	mov	dword ptr [rsp + 0x14], r13d
	mov	rsp, rsp
	test	r13d, r13d
	jne	.label_2880
	lea	rdi, [rsp + 0x14]
	nop	
	mov	rsi, qword ptr [rsp + 0x90]
	nop	
	mov	rdx, rbx
	mov	ecx, dword ptr [rsp + 8]
	call	re_acquire_state_context
	mov	rbx, qword ptr [rsp + 0x80]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r15*8], rax
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	rbp, rbp
	mov	r9, rbx
	mov	rax, qword ptr [r9 + 0xb8]
	cmp	qword ptr [rax + r15*8], 0
	lea	rdi, [rdi]
	jne	.label_2908
	lea	rdi, [rdi]
	mov	r13d, dword ptr [rsp + 0x14]
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_2873
.label_2908:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r8, rbp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r12
	mov	r12, r14
	mov	r14, qword ptr [rsp + 0x50]
	jmp	.label_2898
.label_2942:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rbx
	lea	rsi, [rsi]
	mov	rbx, rbp
	lea	rdi, [rdi]
	mov	rbp, r8
	lea	rdi, [rsp + 0x14]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 0x30], rdx
	mov	ecx, dword ptr [rsp + 8]
	mov	rsp, rsp
	call	re_acquire_state_context
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x80]
	mov	rcx, qword ptr [r9 + 0xb8]
	mov	qword ptr [rcx + r15*8], rax
	nop	
	mov	rax, qword ptr [r9 + 0xb8]
	mov	rsp, rsp
	cmp	qword ptr [rax + r15*8], 0
	nop	
	jne	.label_2915
	mov	r13d, dword ptr [rsp + 0x14]
	lea	rdi, [rdi]
	test	r13d, r13d
	mov	rbp, rbp
	mov	r10, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r8, rbp
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, rbx
	je	.label_2898
	jmp	.label_2873
.label_2915:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x98]
	nop	
	mov	r8, rbp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, rbx
.label_2898:
	cmp	r12, r14
	mov	rbp, rbp
	jne	.label_2878
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + r8*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x70]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_2878
	mov	rbp, rbp
	mov	rdi, r9
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rdx, r8
	mov	rsp, rsp
	mov	r15, r10
	mov	rsp, rsp
	mov	r12, rbp
	lea	rsi, [rsi]
	mov	rbp, r9
	mov	r14, r8
	mov	rbp, rbp
	mov	rbx, r11
	call	check_subexp_matching_top
	mov	rbp, rbp
	mov	rdx, r14
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbp, r12
	lea	rdi, [rdi]
	mov	r13d, eax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], r13d
	lea	rsi, [rsi]
	test	r13d, r13d
	mov	rsp, rsp
	jne	.label_2873
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r12, rbp
	mov	rbp, rdi
	nop	
	mov	r14, rdx
	lea	rdi, [rdi]
	call	transit_state_bkref
	lea	rdi, [rdi]
	mov	r11, rbx
	nop	
	mov	r8, r14
	lea	rdi, [rdi]
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	rbp, r12
	mov	r10, r15
	mov	r13d, eax
	mov	dword ptr [rsp + 0x14], r13d
	nop	
	test	r13d, r13d
	jne	.label_2873
.label_2878:
	inc	rbp
	cmp	rbp, qword ptr [r9 + 0xc8]
	jl	.label_2884
.label_2897:
	inc	r11
	cmp	r11, qword ptr [r10 + 8]
	mov	rbp, rbp
	jl	.label_2886
.label_2904:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], 0
	nop	
	xor	r13d, r13d
	jmp	.label_2873
.label_2890:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], r13d
.label_2873:
	mov	rbp, rbp
	mov	eax, r13d
	lea	rsi, [rsi]
	add	rsp, 0xa8
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_2880:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	call	free
	jmp	.label_2873
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4278d0

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r15, rdi
	mov	rbp, qword ptr [r15 + 0x40]
	mov	r14d, 0xc
	movabs	rax, 0xffffffffffffffe
	cmp	rbp, rax
	lea	rsi, [rsi]
	ja	.label_2944
	mov	rbp, rbp
	movsxd	rax, esi
	mov	rcx, qword ptr [r15 + 0x58]
	add	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	cmovle	rbp, rcx
	lea	rdi, [rdi]
	cmp	rax, rbp
	cmovge	rbp, rax
	cmp	dword ptr [r15 + 0x90], 2
	lea	rdi, [rdi]
	jl	.label_2946
	mov	rax, rbp
	shr	rax, 0x3d
	jne	.label_2944
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rbp*4]
	lea	rsi, [rsi]
	call	realloc
	test	rax, rax
	nop	
	je	.label_2944
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_2946
	lea	rsi, [rbp*8]
	call	realloc
	nop	
	test	rax, rax
	je	.label_2944
	mov	qword ptr [r15 + 0x18], rax
.label_2946:
	mov	rsp, rsp
	cmp	byte ptr [r15 + 0x8b], 0
	lea	rdi, [rdi]
	je	.label_2947
	mov	rdi, qword ptr [r15 + 8]
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_2944
	mov	rsp, rsp
	mov	qword ptr [r15 + 8], rax
.label_2947:
	mov	qword ptr [r15 + 0x40], rbp
	mov	rdi, qword ptr [r15 + 0xb8]
	lea	rsi, [rsi]
	test	rdi, rdi
	nop	
	je	.label_2951
	lea	rsi, [rbp*8 + 8]
	nop	
	call	realloc
	test	rax, rax
	je	.label_2944
	mov	qword ptr [r15 + 0xb8], rax
.label_2951:
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 0x88], 0
	mov	eax, dword ptr [r15 + 0x90]
	lea	rsi, [rsi]
	je	.label_2957
	nop	
	cmp	eax, 2
	jl	.label_2945
	mov	rdi, r15
	nop	
	call	build_wcs_upper_buffer
	mov	r14d, eax
	mov	rsp, rsp
	test	r14d, r14d
	je	.label_2949
	jmp	.label_2944
.label_2957:
	cmp	eax, 2
	mov	rbp, rbp
	jl	.label_2952
	mov	rdi, r15
	call	build_wcs_buffer
	nop	
	jmp	.label_2949
.label_2945:
	nop	
	mov	rbp, qword ptr [r15 + 0x30]
	mov	r14, qword ptr [r15 + 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x58]
	cmp	r14, rax
	lea	rdi, [rdi]
	cmovg	r14, rax
	mov	rbp, rbp
	cmp	rbp, r14
	jge	.label_2955
	nop	
	jmp	.label_2954
.label_2959:
	mov	rsp, rsp
	mov	cl, byte ptr [rax + rdx]
	lea	rdi, [rdi]
	jmp	.label_2953
.label_2954:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	mov	rax, qword ptr [r15 + 0x78]
	add	rcx, qword ptr [r15 + 0x28]
	nop	
	mov	cl, byte ptr [rbp + rcx]
	mov	rbp, rbp
	movzx	edx, cl
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_2959
.label_2953:
	mov	rsp, rsp
	movzx	ebx, cl
	mov	rbp, rbp
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	lea	rsi, [rsi]
	ja	.label_2948
	lea	rsi, [rsi]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_2948:
	mov	rax, qword ptr [r15 + 8]
	mov	byte ptr [rax + rbp], bl
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, r14
	jl	.label_2954
	mov	rbp, r14
.label_2955:
	mov	qword ptr [r15 + 0x30], rbp
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x38], rbp
	jmp	.label_2949
.label_2952:
	mov	rdx, qword ptr [r15 + 0x78]
	nop	
	test	rdx, rdx
	lea	rdi, [rdi]
	je	.label_2949
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x30]
	mov	rcx, qword ptr [r15 + 0x40]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x58]
	mov	rbp, rbp
	cmp	rcx, rsi
	lea	rdi, [rdi]
	cmovg	rcx, rsi
	mov	rbp, rbp
	cmp	rax, rcx
	jge	.label_2958
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	add	rsi, rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15]
	nop	
	mov	rbp, qword ptr [r15 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	rsp, rsp
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbp + rax], dl
	jmp	.label_2950
	nop	dword ptr [rax]
.label_2956:
	mov	rdx, qword ptr [r15 + 0x78]
	mov	rbp, rbp
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r15 + 8]
	add	rsi, qword ptr [r15 + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	mov	dl, byte ptr [rdx + rsi]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rax], dl
.label_2950:
	inc	rax
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_2956
	lea	rdi, [rdi]
	mov	rax, rcx
.label_2958:
	mov	qword ptr [r15 + 0x30], rax
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x38], rax
.label_2949:
	xor	r14d, r14d
.label_2944:
	lea	rdi, [rdi]
	mov	eax, r14d
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x427bb0

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
	mov	rbp, rdx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	r15, rdi
	mov	rsp, rsp
	mov	r14, qword ptr [rbx + 0x48]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rbx + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0xb8]
	lea	rsi, [rsi]
	cmp	r14, qword ptr [rbx + 0xc0]
	jle	.label_2969
	mov	rsp, rsp
	mov	qword ptr [rax + r14*8], rbp
	mov	qword ptr [rbx + 0xc0], r14
	jmp	.label_2972
.label_2969:
	mov	rcx, qword ptr [rax + r14*8]
	lea	rsi, [rsi]
	test	rcx, rcx
	je	.label_2963
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbp, rbp
	je	.label_2966
	mov	rbp, rbp
	mov	r13, qword ptr [rbp + 0x50]
	lea	rdi, [rsp]
	mov	rsi, r13
	call	re_node_set_init_union
	mov	rsp, rsp
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_2970
	mov	rax, qword ptr [rbx + 0x48]
	jmp	.label_2971
.label_2963:
	mov	qword ptr [rax + r14*8], rbp
	nop	
	jmp	.label_2972
.label_2966:
	mov	rbp, rbp
	mov	rax, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	xor	r13d, r13d
	mov	rsp, rsp
	mov	rax, r14
.label_2971:
	test	rax, rax
	jle	.label_2975
	nop	
	lea	rcx, [rax - 1]
	cmp	qword ptr [rbx + 0x58], rcx
	lea	rdi, [rdi]
	je	.label_2976
	lea	rdi, [rdi]
	cmp	dword ptr [rbx + 0x90], 2
	mov	rsp, rsp
	jl	.label_2973
	mov	rcx, qword ptr [rbx + 0x10]
.label_2968:
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rcx + rax*4 - 4]
	cmp	ebp, -1
	mov	rsp, rsp
	jne	.label_2967
	dec	rax
	lea	rsi, [rsi]
	jg	.label_2968
	mov	ecx, dword ptr [rbx + 0x70]
	jmp	.label_2965
.label_2973:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rcx]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	ecx, 1
	bt	rdx, rax
	mov	rsp, rsp
	jb	.label_2965
	lea	rsi, [rsi]
	xor	ecx, ecx
	movzx	eax, al
	lea	rsi, [rsi]
	cmp	eax, 0xa
	jne	.label_2965
	jmp	.label_2977
.label_2967:
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2960
.label_2974:
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	ebp, 0xa
	jne	.label_2965
.label_2977:
	lea	rdi, [rdi]
	mov	ecx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	mov	rsp, rsp
	jne	.label_2965
	xor	ecx, ecx
	mov	rsp, rsp
	jmp	.label_2965
.label_2975:
	mov	ecx, dword ptr [rbx + 0x70]
	nop	
	jmp	.label_2965
.label_2976:
	mov	ecx, dword ptr [rbx + 0xa0]
	and	ecx, 2
	nop	
	xor	ecx, 0xa
.label_2965:
	lea	rdi, [rdi]
	lea	rdx, [rsp]
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, r12
	nop	
	call	re_acquire_state_context
	mov	rbp, rax
	nop	
	mov	rax, qword ptr [rbx + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r14*8], rbp
	test	r13, r13
	je	.label_2972
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	call	free
.label_2972:
	test	rbp, rbp
	je	.label_2962
	mov	rax, qword ptr [r12 + 0x98]
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2964
	nop	
	lea	r12, [rbp + 8]
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	rbp, rbp
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	lea	rdi, [rdi]
	test	ecx, ecx
	jne	.label_2961
	test	byte ptr [rbp + 0x68], 0x40
	lea	rsi, [rsi]
	mov	rax, rbp
	mov	rsp, rsp
	je	.label_2961
	mov	rdi, rbx
	nop	
	mov	rsi, r12
	call	transit_state_bkref
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	lea	rsi, [rsi]
	jne	.label_2961
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_2961
.label_2962:
	mov	rax, rbp
	jmp	.label_2961
.label_2964:
	nop	
	mov	rax, rbp
.label_2961:
	lea	rdi, [rdi]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_2970:
	xor	eax, eax
	jmp	.label_2961
.label_2960:
	mov	edi, ebp
	lea	rsi, [rsi]
	call	iswalnum
	lea	rsi, [rsi]
	cmp	ebp, 0x5f
	mov	ecx, 1
	lea	rdi, [rdi]
	je	.label_2965
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_2965
	jmp	.label_2974
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x427e60

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
	je	.label_2981
	lea	rsi, [rsi]
	mov	r13, qword ptr [r12 + 8]
	mov	rsp, rsp
	test	r15, r15
	je	.label_2988
	lea	rsi, [rsi]
	test	r13, r13
	lea	rsi, [rsi]
	jle	.label_2988
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_2988
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
	je	.label_2985
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rbp
	lea	rsi, [rsi]
	xor	r14d, r14d
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rcx, rbx
	jmp	.label_2986
.label_2988:
	test	r13, r13
	jle	.label_2981
	mov	qword ptr [rbp + 8], r13
	lea	rdi, [rdi]
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_2983
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2987
	mov	rsp, rsp
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, r15
	call	memcpy
	mov	rsp, rsp
	jmp	.label_2982
.label_2981:
	test	r15, r15
	je	.label_2983
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_2983
	mov	qword ptr [rbp + 8], rdi
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	lea	rdi, [rdi]
	jle	.label_2983
	lea	rdi, [rdi]
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_2987
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	shl	rbx, 3
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	jmp	.label_2982
.label_2983:
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_2982
.label_2979:
	mov	rcx, rbx
	nop	dword ptr [rax]
.label_2986:
	mov	rbp, rbp
	cmp	rcx, qword ptr [r15 + 8]
	mov	rsp, rsp
	jge	.label_2989
	mov	rdx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rdx + rbp*8]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rsi + rcx*8]
	lea	rdi, [rdi]
	cmp	rdx, rsi
	nop	
	jle	.label_2990
	mov	rbp, rbp
	inc	rcx
	mov	qword ptr [rax + r14*8], rsi
	inc	r14
	mov	rsp, rsp
	mov	r13, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	cmp	rbp, r13
	nop	
	jl	.label_2986
	jmp	.label_2989
.label_2990:
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
	jl	.label_2979
	jmp	.label_2980
.label_2989:
	mov	rsp, rsp
	mov	rbx, rcx
.label_2980:
	nop	
	sub	r13, rbp
	jle	.label_2984
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
	jmp	.label_2978
.label_2984:
	mov	rdx, qword ptr [r15 + 8]
	nop	
	sub	rdx, rbx
	jle	.label_2978
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
.label_2978:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	nop	
	mov	qword ptr [rax + 8], r14
.label_2982:
	xor	ecx, ecx
.label_2985:
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
.label_2987:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	lea	rdi, [rdi]
	jmp	.label_2985
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x428100

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	nop	
	mov	r8, qword ptr [rdi + 0xc8]
	xor	eax, eax
	mov	rbp, rbp
	test	r8, r8
	mov	rbp, rbp
	jle	.label_2991
	mov	rbp, rbp
	mov	r9, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	r11, r8
	nop	word ptr cs:[rax + rax]
.label_2994:
	lea	rdi, [rdi]
	lea	r10, [rax + r11]
	lea	rdi, [rdi]
	mov	rdx, r10
	mov	rbp, rbp
	shr	rdx, 0x3f
	lea	rsi, [rsi]
	add	rdx, r10
	sar	rdx, 1
	mov	rbp, rbp
	lea	rcx, [rdx + rdx*4]
	cmp	qword ptr [r9 + rcx*8 + 8], rsi
	nop	
	cmovge	r11, rdx
	lea	rcx, [rdx + 1]
	cmovl	rax, rcx
	lea	rdi, [rdi]
	cmp	rax, r11
	lea	rdi, [rdi]
	jl	.label_2994
.label_2991:
	mov	rbp, rbp
	cmp	rax, r8
	lea	rdi, [rdi]
	jge	.label_2992
	mov	rcx, qword ptr [rdi + 0xd8]
	nop	
	lea	rdx, [rax + rax*4]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + rdx*8 + 8], rsi
	je	.label_2993
.label_2992:
	mov	rax, -1
.label_2993:
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4281a0

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
	jne	.label_2996
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r15
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_3000
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
	je	.label_2998
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
.label_3000:
	nop	
	test	r15, r15
	nop	
	jle	.label_2995
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rsi, [rsi]
	lea	rcx, [rcx + rcx*4]
	nop	
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_2997
	nop	
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_2997
.label_2995:
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0xd8]
.label_2997:
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
	jge	.label_3002
	mov	dword ptr [r13 + 0xe0], edi
.label_3002:
	lea	rdi, [rdi]
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x18]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	lea	rsi, [rsi]
	mov	r15, qword ptr [r13 + 0xc0]
	nop	
	cmp	rax, r14
	jg	.label_3003
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_2999
.label_3003:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	mov	rbp, rbp
	jg	.label_3001
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_3001
.label_2999:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	mov	rsp, rsp
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	mov	rbp, rbp
	jne	.label_2996
.label_3001:
	xor	ebp, ebp
	mov	rdx, r14
	nop	
	sub	rdx, r15
	jle	.label_2996
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0xc0], r14
.label_2996:
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
.label_2998:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	lea	rdi, [rdi]
	mov	ebp, 0xc
	jmp	.label_2996
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x428400

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
	mov	qword ptr [rsp + 0xb0], r9
	mov	r13, rcx
	mov	r15, rdx
	mov	rbp, rbp
	mov	r12, qword ptr [rdi + 0x98]
	mov	dword ptr [rsp + 0xc], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	mov	rcx, r15
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + rcx]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, qword ptr [rsi + 8]
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rsi, [rsi]
	lea	rcx, [rax + r9]
	mov	rsp, rsp
	cmp	rbp, rcx
	jle	.label_3004
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa0], r8
	nop	
	mov	rbx, qword ptr [rsi + 0x10]
.label_3031:
	mov	rax, qword ptr [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	cmove	rax, r13
	mov	rcx, qword ptr [rdi + 0x48]
	nop	
	mov	rdx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rdi + 0xb8], rbx
	mov	rbx, rax
	mov	qword ptr [rdi + 0x48], rbx
	test	rbx, rbx
	mov	rsp, rsp
	jle	.label_3040
	lea	rax, [rbx - 1]
	cmp	qword ptr [rdi + 0x58], rax
	je	.label_3046
	mov	qword ptr [rsp + 0x28], rdx
	mov	qword ptr [rsp + 0x68], rcx
	cmp	dword ptr [rdi + 0x90], 2
	lea	rsi, [rsi]
	jl	.label_3051
	mov	rax, qword ptr [rdi + 0x10]
	mov	rbp, rbp
	mov	rcx, rbx
	nop	dword ptr [rax + rax]
.label_3054:
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	cmp	ebp, -1
	jne	.label_3057
	lea	rsi, [rsi]
	dec	rcx
	nop	
	jg	.label_3054
	jmp	.label_3006
.label_3051:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdx, qword ptr [rdi + 0x80]
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rbp, rbp
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	shr	cl, 6
	nop	
	movzx	ecx, cl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdx + rcx*8]
	lea	rdi, [rdi]
	mov	edx, 1
	bt	rcx, rax
	mov	rbp, rbp
	jb	.label_3005
	mov	rbp, rbp
	xor	edx, edx
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 0xa
	nop	
	jne	.label_3005
	nop	
	jmp	.label_3028
.label_3057:
	cmp	byte ptr [rdi + 0x8e], 0
	mov	rsp, rsp
	mov	r14, rdi
	lea	rdi, [rdi]
	jne	.label_3019
.label_3025:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_3005
.label_3028:
	lea	rsi, [rsi]
	mov	edx, 2
	cmp	byte ptr [r14 + 0x8d], 0
	mov	rbp, rbp
	jne	.label_3005
	mov	rbp, rbp
	xor	edx, edx
	nop	
	jmp	.label_3005
.label_3004:
	mov	qword ptr [rsp + 0x98], r12
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, rbp
	mov	r12d, 0xc
	cmp	rdx, rcx
	jle	.label_3011
	mov	rsp, rsp
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 0xa0], r8
	nop	
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	r14, [rax + rcx + 1]
	mov	rbp, rbp
	lea	rcx, [r14 + rbp]
	mov	rax, rcx
	shr	rax, 0x3d
	lea	rsi, [rsi]
	jne	.label_3011
	mov	rdi, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0xc0], rsi
	lea	rdi, [rdi]
	lea	rsi, [rcx*8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rcx
	lea	rdi, [rdi]
	call	realloc
	mov	rbx, rax
	test	rbx, rbx
	nop	
	je	.label_3011
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x10], rbx
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r12 + 8], rax
	lea	rsi, [rsi]
	lea	rdi, [rbx + rbp*8]
	lea	rsi, [rsi]
	shl	r14, 3
	nop	
	xor	esi, esi
	mov	rdx, r14
	mov	rbp, rbp
	call	memset
	mov	rdi, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	r12, qword ptr [rsp + 0x98]
	jmp	.label_3031
.label_3040:
	nop	
	mov	qword ptr [rsp + 0x28], rdx
	nop	
	mov	qword ptr [rsp + 0x68], rcx
.label_3006:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rsi, [rsi]
	mov	edx, dword ptr [r14 + 0x70]
	jmp	.label_3005
.label_3046:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rcx
	mov	rsp, rsp
	mov	r14, rdi
	nop	
	mov	edx, dword ptr [r14 + 0xa0]
	lea	rsi, [rsi]
	and	edx, 2
	xor	edx, 0xa
.label_3005:
	mov	rsp, rsp
	cmp	rbx, r13
	jne	.label_3048
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x10], edx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc0], rsi
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_658]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_3017
	mov	rbp, rbp
	mov	r13, rbx
	lea	rsi, [rsi]
	mov	qword ptr [rax], r15
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xc], 0
	mov	rbp, rbp
	lea	rsi, [rsp + 0x40]
	mov	rdi, r12
	mov	r15, r12
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rsp + 0x100]
	mov	ecx, ebp
	call	check_arrival_expand_ecl
	mov	rbp, rbp
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc], r12d
	test	r12d, r12d
	lea	rdi, [rdi]
	jne	.label_3023
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	jmp	.label_3030
.label_3048:
	nop	
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + rbx*8]
	mov	r13, rbx
	nop	
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_3035
	lea	rsi, [rsi]
	test	byte ptr [rcx + 0x68], 0x40
	jne	.label_3041
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], edx
	mov	r15, r12
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xc0], rsi
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], 0
	xor	ebx, ebx
	nop	
	jmp	.label_3032
.label_3035:
	lea	rdi, [rdi]
	mov	r15, r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xc0], rsi
	mov	rbp, rbp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	qword ptr [rsp + 0x50], 0
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_3045
.label_3041:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rcx + 0x10]
	mov	qword ptr [rsp + 0x48], rbx
	mov	rbp, qword ptr [rcx + 0x10]
	nop	
	test	rbp, rbp
	jle	.label_3052
	mov	dword ptr [rsp + 0x10], edx
	mov	qword ptr [rsp + 0x18], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0x40], rbx
	nop	
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_3017
	mov	r15, r12
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x18]
	nop	
	mov	rsi, qword ptr [r12 + 0x18]
	shl	rbp, 3
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	memcpy
	mov	rcx, r12
	mov	dword ptr [rsp + 0xc], 0
	nop	
	jmp	.label_3032
.label_3052:
	mov	dword ptr [rsp + 0x10], edx
	mov	rbp, rbp
	mov	r15, r12
	nop	
	mov	qword ptr [rsp + 0xc0], rsi
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	qword ptr [rsp + 0x50], 0
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], 0
.label_3032:
	nop	
	mov	ebp, dword ptr [rsp + 0x100]
	test	byte ptr [rcx + 0x68], 0x40
	je	.label_3045
.label_3030:
	test	rbx, rbx
	je	.label_3049
	lea	rsi, [rsp + 0x40]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rdx, r13
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	r8d, ebp
	call	expand_bkref_cache
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc], r12d
	lea	rdi, [rdi]
	test	r12d, r12d
	jne	.label_3023
.label_3049:
	lea	rdi, [rsp + 0xc]
	lea	rdx, [rsp + 0x40]
	mov	rsi, r15
	mov	ecx, dword ptr [rsp + 0x10]
	call	re_acquire_state_context
	mov	rcx, rax
	test	rcx, rcx
	jne	.label_3008
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_3009
.label_3008:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0xb8]
	mov	qword ptr [rax + r13*8], rcx
.label_3045:
	cmp	r13, qword ptr [rsp + 0xb0]
	jge	.label_3016
	mov	rsp, rsp
	lea	rax, [r13 + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xb8], rax
	xor	ebp, ebp
	lea	rsi, [rsi]
	mov	qword ptr [rsp], r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x98], r15
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	jmp	.label_3022
	nop	dword ptr [rax]
.label_3014:
	inc	rbp
	mov	rbp, rbp
	test	rcx, rcx
	mov	rax, qword ptr [r14 + 0xb8]
	nop	
	mov	qword ptr [rax + r13*8 + 8], rcx
	mov	eax, 0
	lea	rdi, [rdi]
	cmovne	rbp, rax
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xb8]
	mov	rbx, qword ptr [rsp + 0x18]
	cmp	rbx, qword ptr [rsp + 0xb0]
	mov	r13, rbx
	jl	.label_3022
	jmp	.label_3047
.label_3050:
	mov	edi, ebx
	nop	
	call	iswalnum
	cmp	ebx, 0x5f
	mov	ecx, 1
	mov	rsp, rsp
	je	.label_3015
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	je	.label_3018
	jmp	.label_3015
.label_3022:
	mov	rsp, rsp
	movsxd	rax, dword ptr [r14 + 0xe0]
	cmp	rbp, rax
	lea	rdi, [rdi]
	jg	.label_3042
	mov	r15, rcx
	mov	qword ptr [rsp + 0x48], 0
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rsi, qword ptr [rax + r13*8 + 8]
	mov	rsp, rsp
	test	rsi, rsi
	je	.label_3007
	lea	rdi, [rdi]
	add	rsi, 8
	lea	rdi, [rsp + 0x40]
	call	re_node_set_merge
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	mov	rsp, rsp
	jne	.label_3009
.label_3007:
	mov	rbp, rbp
	mov	rax, r15
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_3043
	mov	r15, qword ptr [r14 + 0x98]
	mov	dword ptr [rsp + 0x94], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	cmp	qword ptr [rax + 0x28], 0
	lea	rsi, [rsi]
	mov	edi, 0
	jle	.label_3029
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rbp
	mov	qword ptr [rsp + 0x10], r13
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_3026:
	mov	rax, qword ptr [rax + 0x30]
	mov	r13, qword ptr [rax + r12*8]
	mov	rsi, qword ptr [r15]
	mov	rbx, r13
	lea	rsi, [rsi]
	shl	rbx, 4
	test	byte ptr [rsi + rbx + 0xa], 0x10
	je	.label_3044
	mov	rdi, r15
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, r14
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rcx, rbp
	lea	rdi, [rdi]
	call	check_node_accept_bytes
	lea	rsi, [rsi]
	cmp	eax, 2
	jl	.label_3056
	mov	rcx, qword ptr [r15 + 0x18]
	mov	rdx, qword ptr [rcx + r13*8]
	mov	rcx, r14
	movsxd	r14, eax
	nop	
	add	r14, rbp
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + 0xb8]
	nop	
	mov	rsi, qword ptr [rax + r14*8]
	mov	qword ptr [rsp + 0x78], 0
	test	rsi, rsi
	lea	rbx, [rsp + 0x70]
	lea	rsi, [rsi]
	je	.label_3058
	lea	rsi, [rsi]
	add	rsi, 8
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rbp, rdx
	lea	rsi, [rsi]
	call	re_node_set_merge
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rdi, [rdi]
	mov	ebp, eax
	nop	
	mov	dword ptr [rsp + 0x94], ebp
	mov	rbp, rbp
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_3053
.label_3058:
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, rdx
	nop	
	call	re_node_set_insert
	test	al, al
	mov	rbp, rbp
	je	.label_3010
	lea	rdi, [rsp + 0x94]
	mov	rbp, rbp
	mov	rsi, r15
	mov	rdx, rbx
	call	re_acquire_state
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp]
	mov	rcx, qword ptr [rbx + 0xb8]
	nop	
	mov	qword ptr [rcx + r14*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	mov	r14, rbx
	jne	.label_3021
	mov	ebp, dword ptr [rsp + 0x94]
	mov	rsp, rsp
	test	ebp, ebp
	nop	
	je	.label_3021
	jmp	.label_3053
	nop	word ptr cs:[rax + rax]
.label_3056:
	test	eax, eax
	mov	rbp, rbp
	jne	.label_3021
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15]
	nop	dword ptr [rax]
.label_3044:
	add	rsi, rbx
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x10]
	nop	
	call	check_node_accept
	test	al, al
	lea	rsi, [rsi]
	je	.label_3038
.label_3021:
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [rax + r13*8]
	lea	rdi, [rsp + 0x40]
	call	re_node_set_insert
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_3010
.label_3038:
	lea	rsi, [rsi]
	inc	r12
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	r12, qword ptr [rax + 0x28]
	jl	.label_3026
	mov	rdi, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rsp + 0x60]
.label_3029:
	lea	rsi, [rsi]
	call	free
	nop	
	mov	dword ptr [rsp + 0xc], 0
.label_3043:
	mov	rsp, rsp
	mov	r15, r12
	lea	rbx, [r13 + 1]
	cmp	qword ptr [rsp + 0x48], 0
	nop	
	je	.label_3034
	mov	qword ptr [rsp + 0x60], rbp
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x98]
	lea	r12, [rsp + 0x40]
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, r15
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rsp + 0x100]
	nop	
	mov	ecx, ebp
	mov	rsp, rsp
	call	check_arrival_expand_ecl
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], eax
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_3009
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, r15
	lea	rdi, [rdi]
	mov	r8d, ebp
	lea	rsi, [rsi]
	call	expand_bkref_cache
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x60]
	jne	.label_3009
.label_3034:
	test	r13, r13
	nop	
	js	.label_3059
	cmp	qword ptr [r14 + 0x58], r13
	lea	rsi, [rsi]
	je	.label_3012
	lea	rsi, [rsi]
	cmp	dword ptr [r14 + 0x90], 2
	lea	rdi, [rdi]
	jl	.label_3036
	mov	qword ptr [rsp + 0x18], rbx
	mov	rax, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	r12, r15
	nop	word ptr [rax + rax]
.label_3024:
	nop	
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	mov	rsp, rsp
	cmp	ebx, -1
	jne	.label_3020
	mov	rsp, rsp
	dec	rcx
	test	rcx, rcx
	nop	
	jg	.label_3024
	mov	rsp, rsp
	mov	ecx, dword ptr [r14 + 0x70]
	jmp	.label_3015
	nop	word ptr cs:[rax + rax]
.label_3036:
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x80]
	nop	
	movzx	eax, byte ptr [rax + r13]
	lea	rsi, [rsi]
	mov	dl, al
	mov	rbp, rbp
	shr	dl, 6
	lea	rdi, [rdi]
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	rbp, rbp
	mov	ecx, 1
	bt	rdx, rax
	mov	rbp, rbp
	mov	r12, r15
	lea	rdi, [rdi]
	jb	.label_3015
	xor	ecx, ecx
	mov	rbp, rbp
	movzx	eax, al
	lea	rsi, [rsi]
	cmp	eax, 0xa
	jne	.label_3015
	nop	
	jmp	.label_3027
.label_3020:
	cmp	byte ptr [r14 + 0x8e], 0
	jne	.label_3050
.label_3018:
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	ebx, 0xa
	nop	
	jne	.label_3015
.label_3027:
	mov	ecx, 2
	cmp	byte ptr [r14 + 0x8d], 0
	lea	rsi, [rsi]
	jne	.label_3015
	lea	rdi, [rdi]
	xor	ecx, ecx
	jmp	.label_3015
.label_3059:
	mov	qword ptr [rsp + 0x18], rbx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r14 + 0x70]
	mov	r12, r15
	mov	rbp, rbp
	jmp	.label_3015
.label_3012:
	mov	qword ptr [rsp + 0x18], rbx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r14 + 0xa0]
	and	ecx, 2
	xor	ecx, 0xa
	mov	r12, r15
	nop	word ptr cs:[rax + rax]
.label_3015:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0xc]
	nop	
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	lea	rdx, [rsp + 0x40]
	call	re_acquire_state_context
	mov	rcx, rax
	mov	rsp, rsp
	test	rcx, rcx
	jne	.label_3014
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	je	.label_3014
	jmp	.label_3009
.label_3016:
	lea	rsi, [rsi]
	mov	rbx, r13
.label_3047:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x50]
	nop	
	call	free
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	rbp, rbp
	lea	rax, [rcx + 8]
	test	rcx, rcx
	cmove	rax, rcx
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	qword ptr [rcx], rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [r14 + 0xb8], rcx
	mov	rcx, qword ptr [rsp + 0x68]
	mov	qword ptr [r14 + 0x48], rcx
	mov	rsp, rsp
	je	.label_3039
	mov	rcx, qword ptr [rax + 8]
	test	rcx, rcx
	nop	
	jle	.label_3039
	xor	r12d, r12d
	dec	rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	je	.label_3055
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0xa0]
	nop	
.label_3037:
	lea	rsi, [rdx + rcx]
	mov	rbp, rbp
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbp
	lea	rdi, [rsi + 1]
	lea	rsi, [rsi]
	cmovl	rdx, rdi
	mov	rsp, rsp
	cmovge	rcx, rsi
	cmp	rdx, rcx
	mov	rsp, rsp
	jb	.label_3037
	jmp	.label_3013
.label_3010:
	nop	
	mov	rdi, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	call	free
	mov	ebp, 0xc
	mov	dword ptr [rsp + 0xc], ebp
	mov	rbp, rbp
	jmp	.label_3009
.label_3053:
	mov	rdi, qword ptr [rsp + 0x80]
	nop	
	call	free
	mov	dword ptr [rsp + 0xc], ebp
.label_3009:
	nop	
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	nop	
	mov	r12d, dword ptr [rsp + 0xc]
	lea	rdi, [rdi]
	jmp	.label_3011
.label_3055:
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0xa0]
.label_3013:
	cmp	rdx, -1
	je	.label_3039
	cmp	qword ptr [rax + rdx*8], rbp
	lea	rdi, [rdi]
	je	.label_3011
.label_3039:
	lea	rdi, [rdi]
	mov	r12d, 1
.label_3011:
	mov	eax, r12d
	lea	rdi, [rdi]
	add	rsp, 0xc8
	nop	
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_3023:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	jmp	.label_3011
.label_3017:
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], 0xc
	nop	
	mov	r12d, 0xc
	nop	
	jmp	.label_3011
.label_3042:
	mov	rbx, r13
	jmp	.label_3047
.label_3019:
	mov	qword ptr [rsp + 0x10], rbx
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	nop	
	mov	edx, 1
	je	.label_3033
	test	eax, eax
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rbx, qword ptr [rsp + 0x10]
	je	.label_3025
	jmp	.label_3005
.label_3033:
	mov	rsi, rbx
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_3005
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x429040

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
	je	.label_3065
	test	r12, r12
	mov	rbp, rbp
	jle	.label_3061
	mov	rbp, rbp
	xor	r12d, r12d
	jmp	.label_3063
	nop	dword ptr [rax]
.label_3067:
	lea	rdi, [rdi]
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	nop	
	jl	.label_3063
	lea	rsi, [rsi]
	jmp	.label_3061
	nop	word ptr cs:[rax + rax]
.label_3066:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_3062
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	nop	
	jmp	.label_3064
	nop	
.label_3063:
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
	jle	.label_3062
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	dword ptr [rax]
.label_3068:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	lea	rdi, [rdi]
	shl	rcx, 4
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rbx + rcx + 8]
	lea	rdi, [rdi]
	cmp	esi, r15d
	mov	rsp, rsp
	jne	.label_3060
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + rcx], r13
	je	.label_3066
.label_3060:
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jl	.label_3068
.label_3062:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_3064:
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	je	.label_3067
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	lea	rsi, [rsi]
	jmp	.label_3065
.label_3061:
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
.label_3065:
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
	#Procedure 0x429200

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
	jle	.label_3069
	nop	
	mov	rsi, qword ptr [r10 + 0xd8]
	nop	
	xor	edx, edx
	mov	rdi, r9
	nop	
.label_3094:
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
	jl	.label_3094
.label_3069:
	mov	rsp, rsp
	cmp	rdx, r9
	mov	rsp, rsp
	jge	.label_3073
	cmp	rdx, -1
	mov	rbp, rbp
	je	.label_3073
	mov	qword ptr [rsp + 0x28], rcx
	mov	dword ptr [rsp + 0x38], r8d
	mov	rbp, rbp
	mov	rcx, qword ptr [r10 + 0xd8]
	lea	rdx, [rdx + rdx*4]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	mov	rsp, rsp
	jne	.label_3073
	mov	dword ptr [rsp + 0x3c], eax
	mov	rbp, rbp
	jmp	.label_3091
.label_3093:
	mov	rcx, qword ptr [r10 + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_3091:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	lea	r13, [rcx + rax*8]
	nop	
.label_3098:
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_3075
	mov	rdx, qword ptr [r13]
	dec	rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, rcx
	mov	esi, 0
	je	.label_3079
	nop	
.label_3086:
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
	jb	.label_3086
.label_3079:
	mov	rbp, rbp
	cmp	rsi, -1
	je	.label_3075
	cmp	qword ptr [rax + rsi*8], rdx
	mov	rbp, rbp
	jne	.label_3075
	mov	rsp, rsp
	mov	r12, qword ptr [r13 + 0x18]
	lea	rsi, [rsi]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	lea	rdi, [rdi]
	cmp	r12, r15
	lea	rsi, [rsi]
	jne	.label_3072
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
	je	.label_3100
	nop	dword ptr [rax + rax]
.label_3087:
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
	jb	.label_3087
.label_3100:
	cmp	rdx, -1
	lea	rdi, [rdi]
	je	.label_3071
	lea	rsi, [rsi]
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], rbx
	jne	.label_3071
	mov	rbp, r14
	jmp	.label_3080
.label_3072:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r10 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_3083
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x10]
	test	rdi, rdi
	mov	rbp, rbp
	jle	.label_3078
	lea	rsi, [rsi]
	mov	rcx, rdi
	dec	rcx
	nop	
	mov	rax, qword ptr [rbx + 0x18]
	mov	edx, 0
	mov	rbp, rbp
	je	.label_3097
.label_3081:
	lea	rsi, [rdx + rcx]
	mov	rsp, rsp
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r14
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	lea	rsi, [rsi]
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_3081
.label_3097:
	lea	rdi, [rdi]
	cmp	rdx, -1
	je	.label_3078
	mov	ecx, 4
	mov	rsp, rsp
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_3082
.label_3078:
	nop	
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	test	rbp, rbp
	jle	.label_3085
	mov	qword ptr [rsp + 0x40], rdi
	shl	rdi, 3
	mov	rbp, rbp
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_3096
	mov	rsi, qword ptr [rbx + 0x18]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	nop	
	call	memcpy
	lea	rdi, [rdi]
	jmp	.label_3074
.label_3071:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r10
	lea	rsi, [rsi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_658]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rax
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_3084
	mov	qword ptr [rax], rbx
	mov	rsp, rsp
	xor	eax, eax
.label_3095:
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
	jne	.label_3092
.label_3090:
	mov	r14, rbp
	jmp	.label_3080
.label_3083:
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_658]]
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
	je	.label_3099
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_3070
.label_3085:
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], 0
.label_3074:
	mov	rsp, rsp
	xor	ebx, ebx
.label_3088:
	mov	dword ptr [rsp + 0xc], ebx
	mov	rsp, rsp
	lea	rdi, [rsp + 0x40]
	nop	
	mov	rsi, r14
	call	re_node_set_insert
	lea	rdi, [rdi]
	test	ebx, ebx
	jne	.label_3089
	xor	al, 1
	mov	rsp, rsp
	jne	.label_3089
.label_3070:
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
.label_3082:
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x20]
.label_3080:
	test	ecx, ecx
	je	.label_3075
	nop	
	cmp	ecx, 4
	nop	
	jne	.label_3076
	nop	dword ptr [rax + rax]
.label_3075:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	rdi, [rdi]
	lea	r13, [r13 + 0x28]
	mov	rbp, rbp
	jne	.label_3098
	nop	
	jmp	.label_3073
.label_3084:
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	lea	rdi, [rdi]
	mov	eax, 0xc
	lea	rsi, [rsi]
	jmp	.label_3095
.label_3092:
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
	jmp	.label_3090
.label_3089:
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
	jmp	.label_3077
.label_3099:
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
.label_3077:
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_3080
.label_3096:
	mov	rbp, rbp
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	ebx, 0xc
	nop	
	jmp	.label_3088
.label_3076:
	lea	rdi, [rdi]
	cmp	ecx, 2
	lea	rsi, [rsi]
	je	.label_3093
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x3c]
.label_3073:
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
	#Procedure 0x429810

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
	jmp	.label_3107
	nop	
.label_3104:
	mov	rsp, rsp
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, rbp
	mov	rbp, qword ptr [rax]
.label_3107:
	nop	
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_3102
	mov	rsp, rsp
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	lea	rdi, [rdi]
	je	.label_3105
	nop	dword ptr [rax]
.label_3108:
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
	jb	.label_3108
.label_3105:
	mov	rsp, rsp
	cmp	rdx, -1
	lea	rsi, [rsi]
	je	.label_3102
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_3106
.label_3102:
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	lea	rdi, [rdi]
	jne	.label_3109
	lea	rdi, [rdi]
	cmp	qword ptr [rax + rcx], r14
	je	.label_3103
.label_3109:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	nop	
	mov	eax, 0xc
	mov	rsp, rsp
	test	cl, cl
	je	.label_3101
	mov	rax, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	lea	rbp, [rbp + rbp*2]
	nop	
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_3110
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_3104
	jmp	.label_3106
	nop	word ptr cs:[rax + rax]
.label_3110:
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
	jne	.label_3101
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_3104
.label_3103:
	cmp	r15d, 9
	jne	.label_3106
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
	je	.label_3101
.label_3106:
	nop	
	xor	eax, eax
.label_3101:
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
	#Procedure 0x4299b0

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
	je	.label_3122
	mov	rsp, rsp
	mov	r15, r8
	jle	.label_3123
	mov	rcx, qword ptr [r12 + 0x10]
	xor	eax, eax
	cmp	r8, 4
	mov	r15, r8
	jb	.label_3135
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	nop	
	mov	r15, r8
	je	.label_3135
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
	je	.label_3129
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
.label_3130:
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
	jne	.label_3130
	jmp	.label_3140
.label_3129:
	pxor	xmm1, xmm1
.label_3140:
	mov	rbp, rbp
	cmp	rbx, 0xc
	mov	rsp, rsp
	jb	.label_3112
	nop	
	mov	rax, r8
	and	rax, 0xfffffffffffffffc
	lea	rdi, [rdi]
	sub	rax, rdi
	mov	rbp, rbp
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	word ptr cs:[rax + rax]
.label_3141:
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
	jne	.label_3141
.label_3112:
	lea	rsi, [rsi]
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	mov	rbp, rbp
	paddq	xmm0, xmm1
	movq	r15, xmm0
	cmp	r8, rdx
	mov	rax, rdx
	je	.label_3123
.label_3135:
	mov	rdx, r8
	lea	rdi, [rdi]
	sub	rdx, rax
	nop	
	lea	rcx, [rcx + rax*8]
	nop	word ptr cs:[rax + rax]
.label_3133:
	add	r15, qword ptr [rcx]
	lea	rsi, [rsi]
	add	rcx, 8
	dec	rdx
	jne	.label_3133
.label_3123:
	mov	rax, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	mov	rsp, rsp
	and	rcx, r15
	nop	
	lea	rdi, [rcx + rcx*2]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + rdi*8]
	mov	rsp, rsp
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_3116
	nop	
	xor	edx, edx
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_3119
	nop	
	mov	rax, qword ptr [rax + rdi*8 + 0x10]
	nop	dword ptr [rax]
.label_3111:
	mov	r13, qword ptr [rax + rdx*8]
	lea	rsi, [rsi]
	cmp	r15, qword ptr [r13]
	jne	.label_3126
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_3126
	nop	
	mov	rdi, r8
	nop	word ptr [rax + rax]
.label_3131:
	test	rdi, rdi
	nop	
	jle	.label_3134
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rbx + rdi*8 - 8]
	lea	rsi, [rsi]
	lea	rdi, [rdi - 1]
	mov	rbp, rbp
	je	.label_3131
	nop	dword ptr [rax]
.label_3126:
	mov	rsp, rsp
	inc	rdx
	cmp	rdx, rcx
	lea	rsi, [rsi]
	jl	.label_3111
	mov	rbp, rbp
	jmp	.label_3116
.label_3119:
	xor	edx, edx
	cmp	rcx, 0x10
	mov	rsp, rsp
	jb	.label_3113
	xor	edx, edx
	mov	rax, rcx
	and	rax, 0xfffffffffffffff0
	mov	rbp, rbp
	je	.label_3113
	lea	rdx, [rcx - 0x10]
	mov	edi, edx
	shr	edi, 4
	lea	rsi, [rsi]
	inc	edi
	nop	
	xor	ebp, ebp
	test	dil, 7
	je	.label_3127
	lea	edi, [rcx - 0x10]
	shr	edi, 4
	lea	rsi, [rsi]
	inc	edi
	mov	rsp, rsp
	and	edi, 7
	lea	rsi, [rsi]
	neg	rdi
	mov	rsp, rsp
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_3138:
	add	rbp, 0x10
	mov	rsp, rsp
	inc	rdi
	mov	rbp, rbp
	jne	.label_3138
.label_3127:
	cmp	rdx, 0x70
	jb	.label_3142
	nop	
	mov	rdx, rcx
	mov	rsp, rsp
	and	rdx, 0xfffffffffffffff0
	sub	rdx, rbp
	nop	word ptr cs:[rax + rax]
.label_3121:
	lea	rdi, [rdi]
	add	rdx, -0x80
	mov	rsp, rsp
	jne	.label_3121
.label_3142:
	cmp	rcx, rax
	mov	rsp, rsp
	mov	rdx, rax
	je	.label_3116
	nop	word ptr [rax + rax]
.label_3113:
	mov	rsp, rsp
	inc	rdx
	cmp	rdx, rcx
	mov	rsp, rsp
	jl	.label_3113
.label_3116:
	mov	qword ptr [rsp + 8], rsi
	mov	rbp, rbp
	mov	edi, 0x70
	lea	rdi, [rdi]
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	nop	
	je	.label_3114
	mov	rbx, r13
	lea	rsi, [rsi]
	add	rbx, 8
	nop	
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	mov	rsp, rsp
	jle	.label_3139
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	mov	rbp, rbp
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_3136
	mov	qword ptr [rsp + 0x10], r14
	mov	rsp, rsp
	lea	r14, [r12 + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [r12 + 0x10]
	shl	rbp, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rdx, rbp
	mov	rbp, rbp
	call	memcpy
	mov	qword ptr [r13 + 0x50], rbx
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_3132
.label_3139:
	mov	qword ptr [rsp + 0x10], r14
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	lea	rdi, [rdi]
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rbx
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	jle	.label_3137
	mov	rsp, rsp
	lea	r14, [r12 + 0x10]
.label_3132:
	mov	rbp, rbp
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_3128:
	mov	r8, qword ptr [rdi]
	mov	rdx, qword ptr [r14]
	mov	rdx, qword ptr [rdx + rax*8]
	lea	rsi, [rsi]
	shl	rdx, 4
	lea	rdi, [rdi]
	mov	ebp, dword ptr [r8 + rdx + 8]
	mov	esi, ebp
	mov	rbp, rbp
	and	esi, 0x3ffff
	mov	rbp, rbp
	cmp	esi, 1
	je	.label_3117
	movzx	esi, bpl
	lea	rdi, [rdi]
	shr	ebp, 0x14
	lea	rsi, [rsi]
	mov	cl, byte ptr [r13 + 0x68]
	mov	bl, cl
	shr	bl, 5
	movzx	ebx, bl
	mov	rbp, rbp
	or	ebx, ebp
	lea	rsi, [rsi]
	shl	bl, 5
	mov	rbp, rbp
	and	bl, 0x20
	nop	
	and	cl, 0xdf
	or	cl, bl
	mov	byte ptr [r13 + 0x68], cl
	cmp	esi, 0xc
	je	.label_3124
	mov	rbp, rbp
	cmp	esi, 4
	je	.label_3118
	cmp	esi, 2
	mov	rbp, rbp
	jne	.label_3120
	or	cl, 0x10
	mov	rsp, rsp
	jmp	.label_3125
.label_3118:
	or	cl, 0x40
	jmp	.label_3125
.label_3120:
	lea	rdx, [r8 + rdx + 8]
	test	dword ptr [rdx], 0x3ff00
	nop	
	je	.label_3117
.label_3124:
	mov	rbp, rbp
	or	cl, 0x80
.label_3125:
	mov	byte ptr [r13 + 0x68], cl
.label_3117:
	mov	rbp, rbp
	inc	rax
	nop	
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_3128
.label_3137:
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rdx, r15
	mov	rbp, rbp
	call	register_state
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_3134
	nop	
	mov	rdi, r13
	call	free_state
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	jmp	.label_3114
.label_3122:
	mov	dword ptr [r14], 0
	lea	rdi, [rdi]
	jmp	.label_3115
.label_3136:
	nop	
	mov	rdi, r13
	lea	rsi, [rsi]
	call	free
.label_3114:
	mov	rsp, rsp
	mov	dword ptr [r14], 0xc
.label_3115:
	mov	rsp, rsp
	xor	r13d, r13d
.label_3134:
	mov	rbp, rbp
	mov	rax, r13
	lea	rdi, [rdi]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x429ee0

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
	je	.label_3158
	mov	rsp, rsp
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	lea	rsi, [rsi]
	cmp	r8d, 1
	lea	rdi, [rdi]
	je	.label_3147
	lea	rax, [rcx + 1]
	nop	
	mov	r11, qword ptr [rdx + 0x30]
	mov	rsp, rsp
	cmp	rax, r11
	lea	rsi, [rsi]
	jge	.label_3147
	lea	rax, [rcx*4]
	mov	rbp, rbp
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_3161:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_3147
	mov	rbp, rbp
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	lea	rdi, [rdi]
	jl	.label_3161
.label_3147:
	cmp	r10d, 5
	jne	.label_3167
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_3146
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_3163
	mov	rsp, rsp
	mov	rsi, qword ptr [rdx + 8]
	movzx	esi, byte ptr [rsi + rcx]
	nop	
	cmp	esi, 0xa
	nop	
	je	.label_3146
.label_3163:
	test	al, al
	js	.label_3151
	mov	r14d, ebx
	jmp	.label_3146
.label_3167:
	mov	rsp, rsp
	cmp	ebx, 1
	setg	al
	mov	rbp, rbp
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_3146
	lea	rsi, [rsi]
	test	al, al
	lea	rdi, [rdi]
	je	.label_3146
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	nop	
	test	rsi, rsi
	lea	rdi, [rdi]
	jne	.label_3144
	cmp	qword ptr [r15 + 0x48], 0
	mov	rbp, rbp
	jne	.label_3144
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_3143
.label_3144:
	cmp	r8d, 1
	jne	.label_3169
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	jmp	.label_3143
.label_3169:
	nop	
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_3143:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_3150
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	dword ptr [rax]
.label_3157:
	nop	
	cmp	r12d, dword ptr [rcx + rdx*4]
	nop	
	je	.label_3156
	inc	rdx
	cmp	rdx, rax
	mov	rbp, rbp
	jl	.label_3157
.label_3150:
	cmp	qword ptr [r15 + 0x48], 0
	nop	
	jle	.label_3159
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_3168:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rdi]
	mov	edi, r12d
	call	iswctype
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_3156
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_3168
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x40]
.label_3159:
	nop	
	xor	ecx, ecx
	test	rsi, rsi
	lea	rdi, [rdi]
	jle	.label_3148
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_3160:
	cmp	dword ptr [rax + rdx*4], r12d
	lea	rdi, [rdi]
	jg	.label_3153
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	cmp	r12d, dword ptr [rcx + rdx*4]
	nop	
	jle	.label_3164
.label_3153:
	lea	rdi, [rdi]
	inc	rdx
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_3160
	jmp	.label_3148
.label_3156:
	lea	rsi, [rsi]
	mov	ecx, ebx
.label_3148:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_3165
	mov	r14d, ecx
	jmp	.label_3146
.label_3165:
	test	ecx, ecx
	mov	rbp, rbp
	jg	.label_3146
	test	ebx, ebx
	mov	r14d, 1
	mov	rsp, rsp
	cmovg	r14d, ebx
	jmp	.label_3146
.label_3151:
	mov	rbp, rbp
	mov	rax, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	byte ptr [rax + rcx], 0
	je	.label_3146
	mov	rbp, rbp
	mov	r14d, ebx
	nop	
	jmp	.label_3146
.label_3158:
	mov	rax, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	xor	r14d, r14d
	cmp	esi, 0xc2
	jae	.label_3154
.label_3146:
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
.label_3164:
	nop	
	mov	ecx, ebx
	jmp	.label_3148
.label_3154:
	nop	
	lea	rdi, [rcx + 2]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rdi, rdx
	jg	.label_3146
	mov	bl, byte ptr [rcx + rax + 1]
	lea	rsi, [rsi]
	movzx	edi, sil
	mov	rsp, rsp
	cmp	edi, 0xdf
	mov	rsp, rsp
	ja	.label_3166
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
	jmp	.label_3146
.label_3166:
	cmp	edi, 0xef
	nop	
	ja	.label_3152
	mov	esi, 3
	lea	rdi, [rdi]
	cmp	edi, 0xe0
	jne	.label_3149
	lea	rsi, [rsi]
	movzx	edi, bl
	cmp	edi, 0xa0
	mov	rsp, rsp
	jb	.label_3146
	jmp	.label_3149
.label_3152:
	cmp	edi, 0xf7
	nop	
	ja	.label_3162
	mov	esi, 4
	cmp	edi, 0xf0
	jne	.label_3149
	mov	rsp, rsp
	movzx	edi, bl
	mov	rsp, rsp
	cmp	edi, 0x90
	lea	rdi, [rdi]
	jb	.label_3146
	jmp	.label_3149
.label_3162:
	mov	rsp, rsp
	cmp	edi, 0xfb
	ja	.label_3145
	nop	
	mov	esi, 5
	lea	rsi, [rsi]
	cmp	edi, 0xf8
	jne	.label_3149
	movzx	edi, bl
	cmp	edi, 0x88
	lea	rdi, [rdi]
	jb	.label_3146
	mov	rsp, rsp
	jmp	.label_3149
.label_3145:
	cmp	edi, 0xfd
	ja	.label_3146
	mov	esi, 6
	cmp	edi, 0xfc
	jne	.label_3149
	mov	rbp, rbp
	movzx	edi, bl
	cmp	edi, 0x84
	mov	rbp, rbp
	jb	.label_3146
.label_3149:
	lea	rdi, [rdi]
	mov	edi, esi
	mov	rbp, rbp
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	nop	
	jg	.label_3146
	nop	
	add	rax, rcx
	mov	rbp, rbp
	mov	ecx, 1
.label_3155:
	nop	
	mov	dl, byte ptr [rax + rcx]
	mov	rsp, rsp
	test	dl, dl
	lea	rsi, [rsi]
	jns	.label_3146
	movzx	edx, dl
	cmp	edx, 0xbf
	ja	.label_3146
	mov	rsp, rsp
	inc	rcx
	cmp	rcx, rdi
	mov	rsp, rsp
	jl	.label_3155
	mov	r14d, esi
	jmp	.label_3146
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42a2d0

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	nop	
	movzx	ecx, byte ptr [rax + rdx]
	mov	r15d, dword ptr [r14 + 8]
	lea	rsi, [rsi]
	movzx	esi, r15b
	lea	rdi, [rdi]
	xor	eax, eax
	dec	esi
	cmp	esi, 6
	ja	.label_3177
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_3173]]
.label_3681:
	movzx	eax, byte ptr [r14]
	cmp	eax, ecx
	nop	
	je	.label_3170
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_3177
.label_3682:
	mov	rsi, qword ptr [r14]
	mov	al, cl
	mov	rsp, rsp
	shr	al, 6
	mov	rsp, rsp
	movzx	eax, al
	mov	rbp, rbp
	mov	rax, qword ptr [rsi + rax*8]
	lea	rdi, [rdi]
	bt	rax, rcx
	jb	.label_3170
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_3177
.label_3684:
	test	cl, cl
	nop	
	js	.label_3182
.label_3683:
	lea	rsi, [rsi]
	test	cl, cl
	mov	rsp, rsp
	je	.label_3183
	mov	rsp, rsp
	movzx	eax, cl
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_3170
	mov	rax, qword ptr [rbx + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_3170
	lea	rsi, [rsi]
	xor	eax, eax
	jmp	.label_3177
.label_3183:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	lea	rsi, [rsi]
	js	.label_3176
.label_3170:
	lea	rsi, [rsi]
	shr	r15d, 8
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	test	r15w, 0x3ff
	je	.label_3177
	mov	rsp, rsp
	test	rdx, rdx
	nop	
	js	.label_3179
	cmp	qword ptr [rbx + 0x58], rdx
	lea	rsi, [rsi]
	je	.label_3181
	mov	rsp, rsp
	cmp	dword ptr [rbx + 0x90], 2
	mov	rsp, rsp
	jl	.label_3187
	mov	rax, qword ptr [rbx + 0x10]
	inc	rdx
	nop	
.label_3174:
	mov	rsp, rsp
	mov	ebp, dword ptr [rax + rdx*4 - 4]
	lea	rdi, [rdi]
	cmp	ebp, -1
	lea	rdi, [rdi]
	jne	.label_3171
	nop	
	dec	rdx
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	rsp, rsp
	jg	.label_3174
	mov	eax, dword ptr [rbx + 0x70]
	jmp	.label_3172
.label_3187:
	nop	
	mov	rax, qword ptr [rbx + 0x80]
	mov	dl, cl
	mov	rsp, rsp
	shr	dl, 6
	movzx	edx, dl
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + rdx*8]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	bt	rdx, rcx
	jae	.label_3188
	mov	eax, 1
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	jmp	.label_3180
.label_3182:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_3177
.label_3171:
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x8e], 0
	mov	rbp, rbp
	jne	.label_3184
.label_3186:
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	ebp, 0xa
	je	.label_3185
	jmp	.label_3172
.label_3188:
	cmp	ecx, 0xa
	jne	.label_3172
.label_3185:
	mov	eax, 2
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8d], 0
	mov	rbp, rbp
	jne	.label_3172
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_3172
.label_3176:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	jmp	.label_3177
.label_3179:
	mov	eax, dword ptr [rbx + 0x70]
	mov	rsp, rsp
	jmp	.label_3172
.label_3181:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbx + 0xa0]
	lea	rdi, [rdi]
	and	eax, 2
	lea	rdi, [rdi]
	xor	eax, 0xa
.label_3172:
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	and	ecx, 1
	mov	rsp, rsp
	sete	dl
	test	r15b, 4
	lea	rdi, [rdi]
	je	.label_3180
	test	ecx, ecx
	jne	.label_3180
	xor	eax, eax
	nop	
	jmp	.label_3177
.label_3184:
	mov	edi, ebp
	lea	rsi, [rsi]
	call	iswalnum
	mov	ecx, eax
	mov	rbp, rbp
	xor	edx, edx
	cmp	ebp, 0x5f
	lea	rsi, [rsi]
	mov	eax, 1
	je	.label_3180
	test	ecx, ecx
	je	.label_3186
.label_3180:
	mov	ecx, dword ptr [r14 + 8]
	lea	rsi, [rsi]
	test	dl, dl
	jne	.label_3175
	mov	edx, ecx
	and	edx, 0x800
	je	.label_3175
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_3177
.label_3175:
	test	al, 2
	jne	.label_3178
	mov	rbp, rbp
	mov	edx, ecx
	lea	rsi, [rsi]
	and	edx, 0x2000
	je	.label_3178
	xor	eax, eax
	jmp	.label_3177
.label_3178:
	mov	rsp, rsp
	shr	ecx, 8
	lea	rdi, [rdi]
	and	eax, 8
	lea	rsi, [rsi]
	test	cl, cl
	setns	cl
	lea	rdi, [rdi]
	shr	eax, 3
	mov	rsp, rsp
	or	al, cl
.label_3177:
	add	rsp, 8
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x42a580

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
	mov	qword ptr [rbp - 0xb8], r13
	mov	rbx, rdi
	mov	edi, 0x3800
	call	malloc
	mov	r12, rax
	mov	qword ptr [rbp - 0xa8], r12
	mov	rbp, rbp
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_3291
	lea	rax, [r13 + 0x58]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13 + 0x58], xmm0
	mov	rsp, rsp
	movdqa	xmmword ptr [rbp - 0xf0], xmm0
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rbp - 0x100], xmm0
	nop	
	xor	r15d, r15d
	lea	rsi, [rsi]
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_3212
	lea	rax, [r12 + 0x1800]
	mov	qword ptr [rbp - 0x38], rax
	lea	rax, [r12 + 0x1818]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	xor	r11d, r11d
	mov	rbp, rbp
	mov	r15, rbx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], r15
	nop	word ptr [rax + rax]
.label_3265:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + rdi*8]
	mov	rax, qword ptr [r15]
	lea	rdi, [rdi]
	shl	rsi, 4
	nop	
	lea	r8, [rax + rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], r8
	mov	edx, dword ptr [rax + rsi + 8]
	mov	rsp, rsp
	movzx	r9d, dl
	mov	rsp, rsp
	cmp	r9d, 1
	lea	rdi, [rdi]
	jne	.label_3217
	mov	cl, byte ptr [r8]
	mov	rbp, rbp
	mov	ebx, 1
	mov	rbp, rbp
	shl	rbx, cl
	lea	rdi, [rdi]
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x100], rbx
	jmp	.label_3200
	nop	
.label_3217:
	cmp	r9d, 7
	je	.label_3244
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_3215
	nop	
	cmp	r9d, 3
	jne	.label_3233
	mov	rcx, qword ptr [r8]
	mov	rbx, qword ptr [rcx]
	or	qword ptr [rbp - 0x100], rbx
	mov	rbx, qword ptr [rcx + 8]
	or	qword ptr [rbp - 0xf8], rbx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rcx + 0x10]
	nop	
	or	qword ptr [rbp - 0xf0], rbx
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	or	qword ptr [rbp - 0xe8], rcx
	mov	rsp, rsp
	jmp	.label_3200
.label_3244:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x100], -1
	mov	rsp, rsp
	mov	rcx, qword ptr [r15 + 0xd8]
	mov	rbx, -2
	nop	
	test	cl, 0x40
	jne	.label_3262
	nop	
	mov	qword ptr [rbp - 0x100], -0x401
	lea	rsi, [rsi]
	mov	rbx, -0x402
.label_3262:
	lea	rdi, [rdi]
	test	cl, cl
	lea	rdi, [rdi]
	jns	.label_3200
	mov	qword ptr [rbp - 0x100], rbx
	jmp	.label_3200
.label_3215:
	mov	rsp, rsp
	cmp	dword ptr [r15 + 0xb4], 2
	nop	
	jl	.label_3278
	nop	
	mov	r14, r8
	mov	rbp, rbp
	mov	r8, qword ptr [r15 + 0x78]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	or	rcx, qword ptr [r8]
	mov	qword ptr [rbp - 0x100], rcx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r8 + 8]
	or	qword ptr [rbp - 0xf8], rbx
	mov	rbx, qword ptr [r8 + 0x10]
	lea	rdi, [rdi]
	or	qword ptr [rbp - 0xf0], rbx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r8 + 0x18]
	mov	r8, r14
	lea	rsi, [rsi]
	or	qword ptr [rbp - 0xe8], rbx
	jmp	.label_3284
.label_3278:
	mov	qword ptr [rbp - 0xe8], -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], -1
	mov	qword ptr [rbp - 0xf8], -1
	mov	qword ptr [rbp - 0x100], -1
	mov	rcx, -1
.label_3284:
	mov	rbx, qword ptr [r15 + 0xd8]
	lea	rdi, [rdi]
	test	bl, 0x40
	jne	.label_3191
	mov	rsp, rsp
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x100], rcx
.label_3191:
	test	bl, bl
	jns	.label_3200
	mov	rbp, rbp
	and	rcx, 0xfffffffffffffffe
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x100], rcx
	nop	dword ptr [rax + rax]
.label_3200:
	mov	rsp, rsp
	shr	edx, 8
	nop	
	mov	ecx, edx
	lea	rdi, [rdi]
	and	ecx, 0x3ff
	je	.label_3214
	mov	rsp, rsp
	test	dl, 0x20
	je	.label_3220
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	test	ch, 4
	nop	
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0xf0], xmm0
	lea	rsi, [rsi]
	movdqa	xmmword ptr [rbp - 0x100], xmm0
	je	.label_3233
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x100], 0x400
.label_3220:
	mov	rbp, rbp
	test	dl, dl
	js	.label_3237
	lea	rcx, [rax + rsi + 8]
	test	dl, 4
	je	.label_3241
	cmp	r9d, 1
	mov	rbp, rbp
	jne	.label_3245
	test	byte ptr [rcx + 2], 0x40
	nop	
	je	.label_3237
.label_3245:
	cmp	dword ptr [r15 + 0xb4], 1
	jle	.label_3247
	mov	rsi, qword ptr [r15 + 0x78]
	mov	rax, qword ptr [rsi]
	not	rax
	mov	rbp, rbp
	or	rax, qword ptr [r15 + 0xb8]
	mov	rsp, rsp
	and	rax, qword ptr [rbp - 0x100]
	nop	
	mov	qword ptr [rbp - 0x100], rax
	mov	rbx, qword ptr [rsi + 8]
	nop	
	not	rbx
	or	rbx, qword ptr [r15 + 0xc0]
	lea	rdi, [rdi]
	and	rbx, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0xf8], rbx
	or	rbx, rax
	mov	rax, qword ptr [rsi + 0x10]
	not	rax
	or	rax, qword ptr [r15 + 0xc8]
	and	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x18]
	nop	
	not	rsi
	mov	rsp, rsp
	or	rsi, qword ptr [r15 + 0xd0]
	and	rsi, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe8], rsi
	or	rsi, rax
	jmp	.label_3252
.label_3247:
	movdqu	xmm0, xmmword ptr [r15 + 0xb8]
	pand	xmm0, xmmword ptr [rbp - 0x100]
	movdqa	xmmword ptr [rbp - 0x100], xmm0
	movq	rsi, xmm0
	pshufd	xmm0, xmm0, 0x4e
	mov	rsp, rsp
	movq	rax, xmm0
	movdqu	xmm0, xmmword ptr [r15 + 0xc8]
	nop	
	pand	xmm0, xmmword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	movq	rbx, xmm0
	or	rbx, rsi
	or	rbx, rax
	movdqa	xmmword ptr [rbp - 0xf0], xmm0
	pshufd	xmm0, xmm0, 0x4e
	lea	rsi, [rsi]
	movq	rsi, xmm0
.label_3252:
	mov	rbp, rbp
	or	rsi, rbx
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_3233
.label_3241:
	nop	
	test	dl, 8
	lea	rsi, [rsi]
	je	.label_3214
	mov	rbp, rbp
	cmp	r9d, 1
	mov	rbp, rbp
	jne	.label_3297
	test	byte ptr [rcx + 2], 0x40
	mov	rbp, rbp
	jne	.label_3237
.label_3297:
	cmp	dword ptr [r15 + 0xb4], 1
	mov	rsp, rsp
	jle	.label_3190
	nop	
	mov	rcx, qword ptr [r15 + 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	and	rdx, qword ptr [r15 + 0xb8]
	not	rdx
	and	rdx, qword ptr [rbp - 0x100]
	nop	
	mov	qword ptr [rbp - 0x100], rdx
	mov	rsi, qword ptr [rcx + 8]
	mov	rbp, rbp
	and	rsi, qword ptr [r15 + 0xc0]
	lea	rsi, [rsi]
	not	rsi
	lea	rsi, [rsi]
	and	rsi, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf8], rsi
	or	rsi, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 0x10]
	and	rdx, qword ptr [r15 + 0xc8]
	nop	
	not	rdx
	lea	rdi, [rdi]
	and	rdx, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xf0], rdx
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	and	rcx, qword ptr [r15 + 0xd0]
	nop	
	not	rcx
	and	rcx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xe8], rcx
	or	rcx, rdx
	jmp	.label_3226
	nop	word ptr cs:[rax + rax]
.label_3237:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0xf0], xmm0
	movdqa	xmmword ptr [rbp - 0x100], xmm0
	jmp	.label_3233
.label_3190:
	nop	
	movdqu	xmm0, xmmword ptr [r15 + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	movdqa	xmmword ptr [rbp - 0x100], xmm0
	nop	
	movq	rcx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	mov	rbp, rbp
	movq	rdx, xmm0
	lea	rdi, [rdi]
	movdqu	xmm0, xmmword ptr [r15 + 0xc8]
	mov	rsp, rsp
	pandn	xmm0, xmmword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	movq	rsi, xmm0
	mov	rsp, rsp
	or	rsi, rcx
	or	rsi, rdx
	mov	rbp, rbp
	movdqa	xmmword ptr [rbp - 0xf0], xmm0
	nop	
	pshufd	xmm0, xmm0, 0x4e
	nop	
	movq	rcx, xmm0
.label_3226:
	or	rcx, rsi
	test	rcx, rcx
	je	.label_3233
	nop	word ptr cs:[rax + rax]
.label_3214:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdi
	lea	rdi, [rdi]
	test	r11, r11
	lea	rdi, [rdi]
	jle	.label_3274
	cmp	r9d, 1
	jne	.label_3279
	nop	
	mov	r15, qword ptr [rbp - 0x38]
	mov	rbx, r12
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_3251:
	nop	
	movzx	eax, byte ptr [r8]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	nop	
	mov	rcx, qword ptr [r15 + rcx*8]
	lea	rsi, [rsi]
	bt	rcx, rax
	jae	.label_3195
	mov	qword ptr [rbp - 0x40], rbx
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rsp, rsp
	mov	r8, qword ptr [r15]
	mov	r13, qword ptr [r15 + 8]
	mov	rsi, r8
	lea	rsi, [rsi]
	and	rsi, r9
	mov	rbp, rbp
	mov	rdi, r13
	and	rdi, rax
	mov	rdx, rdi
	or	rdx, rsi
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	mov	r12, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rsi, [rsi]
	and	rcx, rax
	or	rdx, rcx
	mov	r10, qword ptr [rbp - 0xe8]
	mov	rbx, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	mov	rax, rbx
	lea	rdi, [rdi]
	and	rax, r10
	or	rdx, rax
	je	.label_3290
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rcx
	mov	qword ptr [rbp - 0x88], rsi
	mov	qword ptr [rbp - 0xc0], r11
	mov	rsp, rsp
	mov	rsi, r10
	mov	rsp, rsp
	mov	r10, rbx
	nop	
	mov	r11, r9
	lea	rdi, [rdi]
	not	r11
	and	r11, r8
	lea	rdi, [rdi]
	not	r8
	lea	rdi, [rdi]
	and	r8, r9
	mov	qword ptr [rbp - 0x100], r8
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	r9, rax
	not	r9
	and	r9, r13
	lea	rsi, [rsi]
	mov	rcx, r9
	or	rcx, r11
	not	r13
	and	r13, rax
	mov	qword ptr [rbp - 0xf8], r13
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rax, rdx
	not	rax
	and	rax, r12
	lea	rdi, [rdi]
	or	rcx, rax
	nop	
	not	r12
	mov	rbp, rbp
	and	r12, rdx
	mov	qword ptr [rbp - 0xf0], r12
	mov	rdx, rsi
	mov	rsp, rsp
	not	rdx
	and	rdx, r10
	not	r10
	mov	rsp, rsp
	and	r10, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], r10
	mov	rbp, rbp
	or	rcx, rdx
	mov	rsp, rsp
	je	.label_3206
	mov	qword ptr [rbp - 0x50], r13
	mov	qword ptr [rbp - 0xc8], r8
	nop	
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rcx, rsi
	nop	
	shl	rcx, 5
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x38]
	mov	qword ptr [r10 + rcx], r11
	mov	qword ptr [r10 + rcx + 8], r9
	nop	
	mov	r9, rsi
	lea	rdi, [rdi]
	mov	qword ptr [r10 + rcx + 0x10], rax
	nop	
	mov	qword ptr [r10 + rcx + 0x18], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 8], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [r15 + 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x18], rax
	lea	rcx, [r9 + r9*2]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rax, [rdx + rcx*8]
	mov	rbx, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8 + 8], rdi
	mov	r13, qword ptr [rbx + 8]
	nop	
	test	r13, r13
	lea	rsi, [rsi]
	jle	.label_3261
	mov	qword ptr [rax], rdi
	nop	
	shl	rdi, 3
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x88], rcx
	call	malloc
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8 + 0x10], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_3293
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	shl	r13, 3
	mov	rdi, rax
	mov	rbp, rbp
	mov	rdx, r13
	nop	
	call	memcpy
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	jmp	.label_3298
	nop	word ptr [rax + rax]
.label_3290:
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbp - 0x40]
	jmp	.label_3195
.label_3206:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], r13
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc8], r8
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jmp	.label_3202
.label_3261:
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], 0
.label_3298:
	mov	rsp, rsp
	inc	r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc0], r9
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
.label_3202:
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	re_node_set_insert
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	je	.label_3235
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	or	rax, qword ptr [rbp - 0xc8]
	or	r12, qword ptr [rbp - 0x70]
	nop	
	or	r12, rax
	mov	r11, qword ptr [rbp - 0xc0]
	mov	r8, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	je	.label_3258
.label_3195:
	mov	rsp, rsp
	inc	r14
	lea	rsi, [rsi]
	add	rbx, 0x18
	mov	rbp, rbp
	add	r15, 0x20
	mov	rsp, rsp
	cmp	r14, r11
	mov	rbp, rbp
	jl	.label_3251
	jmp	.label_3258
.label_3274:
	mov	rbp, rbp
	xor	r14d, r14d
	mov	rbp, rbp
	jmp	.label_3258
.label_3279:
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	r10, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	r15, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rbx, r12
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_3196:
	nop	
	mov	qword ptr [rbp - 0xc0], r11
	mov	r12, qword ptr [r15 - 0x18]
	nop	
	mov	r13, qword ptr [r15 - 0x10]
	mov	rdi, r12
	and	rdi, rsi
	mov	qword ptr [rbp - 0x40], rdi
	mov	rbp, rbp
	mov	rax, r13
	mov	rsp, rsp
	and	rax, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	or	rax, rdi
	lea	rsi, [rsi]
	mov	r11, qword ptr [r15 - 8]
	mov	rdi, r11
	and	rdi, r10
	or	rax, rdi
	mov	r9, qword ptr [r15]
	mov	rbp, rbp
	mov	r8, r9
	and	r8, rcx
	or	rax, r8
	nop	
	je	.label_3268
	mov	qword ptr [rbp - 0x88], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rbx
	mov	rsp, rsp
	mov	rax, rsi
	mov	rbp, rbp
	not	rax
	lea	rsi, [rsi]
	and	rax, r12
	not	r12
	and	r12, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x100], r12
	mov	rbx, rdx
	nop	
	not	rbx
	lea	rsi, [rsi]
	and	rbx, r13
	mov	rsi, rbx
	or	rsi, rax
	not	r13
	and	r13, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc8], r13
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf8], r13
	mov	rdx, r10
	not	rdx
	and	rdx, r11
	nop	
	or	rsi, rdx
	not	r11
	and	r11, r10
	mov	qword ptr [rbp - 0xf0], r11
	mov	rdi, rcx
	not	rcx
	and	rcx, r9
	not	r9
	and	r9, rdi
	nop	
	mov	qword ptr [rbp - 0x50], r9
	mov	qword ptr [rbp - 0xe8], r9
	or	rsi, rcx
	mov	r13, r11
	lea	rdi, [rdi]
	je	.label_3289
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], r12
	mov	r10, qword ptr [rbp - 0xc0]
	mov	rsi, r10
	shl	rsi, 5
	mov	r12, qword ptr [rbp - 0x38]
	mov	qword ptr [r12 + rsi], rax
	nop	
	mov	qword ptr [r12 + rsi + 8], rbx
	mov	qword ptr [r12 + rsi + 0x10], rdx
	mov	rsp, rsp
	mov	qword ptr [r12 + rsi + 0x18], rcx
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [r15 - 0x18], rax
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [r15 - 0x10], rax
	mov	rax, r10
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [r15 - 8], rcx
	mov	rbp, rbp
	mov	qword ptr [r15], r8
	lea	rsi, [rax + rax*2]
	mov	rbp, rbp
	mov	r12, qword ptr [rbp - 0xa8]
	lea	rcx, [r12 + rsi*8]
	mov	rbx, qword ptr [rbp - 0x70]
	nop	
	mov	rdi, qword ptr [rbx + 8]
	mov	qword ptr [r12 + rsi*8 + 8], rdi
	nop	
	mov	rdx, qword ptr [rbx + 8]
	mov	rbp, rbp
	test	rdx, rdx
	jle	.label_3213
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], r13
	mov	qword ptr [rcx], rdi
	shl	rdi, 3
	lea	rdi, [rdi]
	mov	r13, rcx
	mov	qword ptr [rbp - 0x40], rsi
	mov	rsp, rsp
	call	malloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + rcx*8 + 0x10], rax
	test	rax, rax
	je	.label_3260
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	shl	rdx, 3
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	call	memcpy
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	r12, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	r13, qword ptr [rbp - 0x98]
	nop	
	jmp	.label_3267
	nop	word ptr cs:[rax + rax]
.label_3268:
	mov	rsp, rsp
	mov	rdi, rcx
	mov	r13, r10
	mov	r12, rsi
	mov	r11, qword ptr [rbp - 0xc0]
	jmp	.label_3250
	nop	dword ptr [rax + rax]
.label_3289:
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp - 0x70]
	jmp	.label_3234
.label_3213:
	nop	
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rcx], xmm0
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x10], 0
	mov	r12, qword ptr [rbp - 0x48]
.label_3267:
	inc	rax
	mov	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
.label_3234:
	mov	qword ptr [rbp - 0x30], rcx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rbp, rbp
	mov	rdi, rbx
	call	re_node_set_insert
	test	al, al
	nop	
	je	.label_3235
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xc8]
	nop	
	mov	rax, rdx
	nop	
	or	rax, r12
	mov	rbp, rbp
	mov	rcx, r13
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	or	rcx, rdi
	or	rcx, rax
	mov	r11, qword ptr [rbp - 0xc0]
	je	.label_3258
.label_3250:
	mov	rsp, rsp
	inc	r14
	mov	rbp, rbp
	add	rbx, 0x18
	lea	rdi, [rdi]
	add	r15, 0x20
	nop	
	cmp	r14, r11
	nop	
	mov	rcx, rdi
	mov	rbp, rbp
	mov	r10, r13
	mov	rsi, r12
	mov	rbp, rbp
	jl	.label_3196
	nop	word ptr cs:[rax + rax]
.label_3258:
	cmp	r14, r11
	mov	r12, qword ptr [rbp - 0xa8]
	mov	r15, qword ptr [rbp - 0xd0]
	mov	r13, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	jne	.label_3233
	mov	rbp, rbp
	mov	rax, r14
	mov	rsp, rsp
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x100]
	movaps	xmm1, xmmword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	movups	xmmword ptr [rdx + rax + 0x10], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rdx + rax], xmm0
	lea	rbx, [r14 + r14*2]
	mov	rax, qword ptr [r13 + 0x18]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rax + rdi*8]
	mov	r13, r12
	nop	
	mov	r12, rdi
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_658]]
	lea	rdi, [rdi]
	movdqu	xmmword ptr [r13 + rbx*8], xmm0
	mov	rsp, rsp
	mov	edi, 8
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [r13 + rbx*8 + 0x10], rax
	mov	rbp, rbp
	mov	rcx, r13
	test	rax, rax
	je	.label_3253
	mov	qword ptr [rax], r15
	lea	rsi, [rsi]
	inc	r14
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0xf0], xmm0
	movdqa	xmmword ptr [rbp - 0x100], xmm0
	mov	r11, r14
	mov	r15, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rdi, r12
	mov	r12, rcx
	nop	
.label_3233:
	mov	rsp, rsp
	inc	rdi
	mov	rbp, rbp
	cmp	rdi, qword ptr [r13 + 0x10]
	mov	rbp, rbp
	jl	.label_3265
	test	r11, r11
	lea	rdi, [rdi]
	jle	.label_3270
	nop	
	lea	rax, [r11 + 1]
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	lea	rdi, [r11*8 + 8]
	mov	rbx, r11
	mov	qword ptr [rbp - 0xc0], rbx
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp - 0x58], rax
	xor	ecx, ecx
	nop	
	test	rax, rax
	mov	edx, 0xc
	mov	rbp, rbp
	cmovne	edx, ecx
	mov	dword ptr [rbp - 0xac], edx
	lea	rsi, [rsi]
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	rbx, rcx
	ja	.label_3257
	test	rax, rax
	je	.label_3257
	lea	rax, [rbx*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	lea	rsi, [rsi]
	cmp	rax, 0xfbf
	lea	rsi, [rsi]
	ja	.label_3292
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb8], r13
	mov	rsp, rsp
	mov	rax, rsp
	mov	rsp, rsp
	add	rdi, 0xf
	nop	
	and	rdi, 0xfffffffffffffff0
	mov	rbp, rbp
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	jmp	.label_3296
.label_3293:
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbp - 0x48]
.label_3260:
	mov	rsp, rsp
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [r13], xmm0
.label_3235:
	lea	rsi, [rsi]
	mov	r14, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	r12, qword ptr [rbp - 0xa8]
.label_3238:
	mov	rbp, rbp
	mov	r15, -1
	test	r14, r14
	jle	.label_3212
	mov	rbp, rbp
	mov	rbx, r12
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_3223:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx]
	call	free
	nop	
	add	rbx, 0x18
	dec	r14
	jne	.label_3223
.label_3212:
	mov	rdi, r12
	nop	
	call	free
	lea	rsi, [rsi]
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_3229
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_3211
.label_3229:
	mov	edi, 8
	mov	esi, 0x100
	mov	rbp, rbp
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	test	rax, rax
	lea	rsi, [rsi]
	setne	al
	nop	
	jmp	.label_3211
.label_3291:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_3211
.label_3292:
	call	malloc
	mov	rbp, rbp
	test	rax, rax
	je	.label_3257
	mov	qword ptr [rbp - 0xb8], r13
	mov	cl, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], ecx
.label_3296:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	lea	rax, [rax + rbx*8]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rax, [rax + rbx*8]
	mov	qword ptr [rbp - 0x88], rax
	mov	rsp, rsp
	xor	edx, edx
	xor	eax, eax
	mov	qword ptr [rbp - 0x98], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	xor	ebx, ebx
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
.label_3264:
	mov	qword ptr [rbp - 0xc8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], r12
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	lea	rcx, [rbx + rbx*2]
	nop	
	mov	rax, qword ptr [r12 + rcx*8 + 8]
	lea	rdi, [rdi]
	test	rax, rax
	jle	.label_3266
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	lea	r13, [rdx + rcx*8 + 8]
	lea	r12, [rdx + rcx*8 + 0x10]
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_3273:
	nop	
	mov	rcx, qword ptr [r12]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + r14*8]
	mov	rsp, rsp
	mov	rdx, qword ptr [r15 + 0x18]
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	nop	
	je	.label_3285
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x30]
	mov	rsp, rsp
	lea	rcx, [rcx + rcx*2]
	nop	
	lea	rsi, [rax + rcx*8]
	lea	rdi, [rbp - 0x68]
	call	re_node_set_merge
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xac], eax
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_3197
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13]
.label_3285:
	inc	r14
	mov	rsp, rsp
	cmp	r14, rax
	jl	.label_3273
.label_3266:
	xor	ecx, ecx
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0xac]
	lea	rdi, [rdi]
	mov	rsi, r15
	lea	rdx, [rbp - 0x68]
	call	re_acquire_state_context
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + rbx*8], rax
	nop	
	test	rax, rax
	jne	.label_3193
	mov	ecx, dword ptr [rbp - 0xac]
	nop	
	test	ecx, ecx
	nop	
	jne	.label_3197
.label_3193:
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 0x68], 0
	js	.label_3204
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + rbx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + rbx*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x88]
	nop	
	mov	qword ptr [rcx + rbx*8], rax
	jmp	.label_3207
.label_3204:
	mov	ecx, 1
	mov	rbp, rbp
	lea	rdi, [rbp - 0xac]
	mov	rsp, rsp
	mov	rsi, r15
	lea	rdx, [rbp - 0x68]
	mov	rsp, rsp
	call	re_acquire_state_context
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + rbx*8], rax
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	jne	.label_3228
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xac]
	test	ecx, ecx
	jne	.label_3197
.label_3228:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	qword ptr [rcx + rbx*8], rax
	nop	
	je	.label_3239
	mov	rbp, rbp
	mov	al, 1
	cmp	dword ptr [r15 + 0xb4], 1
	jg	.label_3243
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
.label_3243:
	mov	qword ptr [rbp - 0x90], rax
.label_3239:
	mov	rsp, rsp
	mov	ecx, 2
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0xac]
	mov	rbp, rbp
	mov	rsi, r15
	lea	rdx, [rbp - 0x68]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x88]
	nop	
	mov	qword ptr [rcx + rbx*8], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_3207
	nop	
	mov	eax, dword ptr [rbp - 0xac]
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_3197
.label_3207:
	lea	rdi, [rdi]
	mov	rax, rbx
	lea	rdi, [rdi]
	shl	rax, 5
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	or	rdx, qword ptr [rcx + rax]
	mov	qword ptr [rbp - 0x40], rdx
	mov	rdx, qword ptr [rbp - 0x70]
	or	rdx, qword ptr [rcx + rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rdx
	mov	rdx, qword ptr [rbp - 0x98]
	nop	
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0x98], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	or	rdx, qword ptr [rcx + rax + 0x18]
	nop	
	inc	rbx
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	rbx, rax
	mov	rsp, rsp
	mov	r12, qword ptr [rbp - 0xa8]
	jl	.label_3264
	mov	rsp, rsp
	mov	r13, rdx
	mov	rax, qword ptr [rbp - 0x90]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_3286
	nop	
	mov	qword ptr [rbp - 0x90], rax
	nop	
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_3197
	mov	rcx, qword ptr [rbp - 0x40]
	test	rcx, rcx
	mov	r14, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	r10, r15
	mov	rbp, rbp
	mov	r11, qword ptr [rbp - 0x30]
	mov	r12, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	je	.label_3295
	lea	r8, [r14 + 0x1800]
	mov	edx, 1
	lea	rdi, [rdi]
	xor	r9d, r9d
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	jmp	.label_3199
.label_3198:
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	lea	rbx, [rsi + 1]
	nop	
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	lea	rsi, [rsi]
	je	.label_3198
	test	qword ptr [r10 + 0xb8], rdx
	je	.label_3209
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	jmp	.label_3276
.label_3209:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r11 + rsi*8 + 8]
.label_3276:
	mov	qword ptr [rax + r9*8], rcx
	nop	
	jmp	.label_3219
.label_3199:
	mov	rbx, -1
	lea	rdi, [rdi]
	test	dil, 1
	mov	rcx, r8
	jne	.label_3198
.label_3219:
	lea	rsi, [rsi]
	add	rdx, rdx
	mov	rbp, rbp
	shr	rdi, 1
	nop	
	inc	r9
	test	rdi, rdi
	jne	.label_3199
.label_3295:
	test	r12, r12
	je	.label_3232
	lea	r8, [r14 + 0x1808]
	mov	edx, 1
	lea	rsi, [rsi]
	mov	esi, 0x40
	lea	rsi, [rsi]
	jmp	.label_3189
.label_3242:
	mov	rbx, rdi
	mov	rbp, rbp
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_3242
	mov	rbp, rbp
	test	qword ptr [r10 + 0xc0], rdx
	lea	rsi, [rsi]
	je	.label_3221
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	mov	rbp, rbp
	jmp	.label_3280
.label_3221:
	nop	
	mov	rcx, qword ptr [r11 + rbx*8 + 8]
.label_3280:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_3254
.label_3189:
	lea	rdi, [rdi]
	mov	rdi, -1
	lea	rdi, [rdi]
	test	r12b, 1
	lea	rdi, [rdi]
	mov	rcx, r8
	mov	rbp, rbp
	jne	.label_3242
.label_3254:
	mov	rbp, rbp
	add	rdx, rdx
	nop	
	shr	r12, 1
	lea	rdi, [rdi]
	inc	rsi
	mov	rbp, rbp
	test	r12, r12
	jne	.label_3189
.label_3232:
	lea	rdi, [rdi]
	mov	r12, r11
	mov	r11, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	test	r11, r11
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0xc0]
	mov	r15d, dword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	je	.label_3263
	lea	r8, [r14 + 0x1810]
	mov	edx, 1
	mov	rsp, rsp
	mov	esi, 0x80
	jmp	.label_3218
.label_3272:
	mov	rbx, rdi
	mov	rsp, rsp
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	mov	rsp, rsp
	lea	rcx, [rcx + 0x20]
	je	.label_3272
	test	qword ptr [r10 + 0xc8], rdx
	mov	rsp, rsp
	je	.label_3236
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	lea	rsi, [rsi]
	jmp	.label_3282
.label_3236:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + rbx*8 + 8]
.label_3282:
	mov	qword ptr [rax + rsi*8], rcx
	lea	rdi, [rdi]
	jmp	.label_3287
.label_3218:
	mov	rbp, rbp
	mov	rdi, -1
	test	r11b, 1
	mov	rcx, r8
	jne	.label_3272
.label_3287:
	nop	
	add	rdx, rdx
	mov	rsp, rsp
	shr	r11, 1
	inc	rsi
	lea	rsi, [rsi]
	test	r11, r11
	jne	.label_3218
.label_3263:
	mov	rsp, rsp
	test	r13, r13
	mov	rsp, rsp
	mov	r11, r12
	nop	
	mov	r12d, r15d
	je	.label_3277
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	nop	
	mov	esi, 0xc0
	nop	
	jmp	.label_3216
.label_3208:
	mov	rbx, rdi
	lea	rdi, [rdi]
	lea	rdi, [rbx + 1]
	lea	rsi, [rsi]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_3208
	test	qword ptr [r10 + 0xd0], rdx
	lea	rsi, [rsi]
	je	.label_3192
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	lea	rdi, [rdi]
	jmp	.label_3222
.label_3192:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r11 + rbx*8 + 8]
.label_3222:
	lea	rsi, [rsi]
	mov	qword ptr [rax + rsi*8], rcx
	mov	rsp, rsp
	jmp	.label_3203
.label_3216:
	mov	rdi, -1
	mov	rbp, rbp
	test	r13b, 1
	mov	rcx, r8
	jne	.label_3208
.label_3203:
	nop	
	add	rdx, rdx
	mov	rbp, rbp
	shr	r13, 1
	lea	rdi, [rdi]
	inc	rsi
	test	r13, r13
	jne	.label_3216
.label_3277:
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	test	ch, 4
	mov	rbp, rbp
	je	.label_3194
	lea	rdx, [r14 + 0x1800]
	xor	ecx, ecx
.label_3231:
	lea	rdi, [rdi]
	test	byte ptr [rdx + 1], 4
	jne	.label_3227
	mov	rbp, rbp
	inc	rcx
	lea	rsi, [rsi]
	add	rdx, 0x20
	cmp	rcx, r9
	lea	rsi, [rsi]
	jl	.label_3231
	mov	rsp, rsp
	jmp	.label_3194
.label_3253:
	mov	rbp, rbp
	mov	r12, rcx
	lea	rax, [r12 + rbx*8]
	nop	
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax], xmm0
	lea	rsi, [rsi]
	jmp	.label_3238
.label_3257:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	call	free
	mov	rax, rbx
	nop	
	jmp	.label_3248
.label_3270:
	lea	rsi, [rsi]
	mov	r15, r11
	jmp	.label_3212
.label_3227:
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	test	dl, dl
	mov	rdx, qword ptr [rbp - 0x88]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_3194
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x850], rcx
.label_3194:
	nop	
	mov	r15, r9
	lea	rdi, [rdi]
	test	r12b, r12b
	lea	rsi, [rsi]
	je	.label_3201
	mov	rdi, r11
	nop	
	call	free
.label_3201:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	mov	rbx, r14
	nop	
	add	rbx, 0x10
.label_3269:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	nop	
	call	free
	lea	rdi, [rdi]
	add	rbx, 0x18
	mov	rbp, rbp
	dec	r15
	nop	
	jne	.label_3269
	mov	rdi, r14
	mov	rbp, rbp
	call	free
	mov	rbp, rbp
	mov	al, 1
	jmp	.label_3211
.label_3286:
	mov	qword ptr [rbp - 0x90], rax
	mov	edi, 8
	nop	
	mov	esi, 0x200
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx + 0x60], rax
	nop	
	test	rax, rax
	je	.label_3197
	mov	rcx, qword ptr [rbp - 0x40]
	test	rcx, rcx
	lea	rsi, [rsi]
	mov	r14, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x70]
	je	.label_3288
	lea	rsi, [rsi]
	lea	r8, [r14 + 0x1800]
	nop	
	mov	edx, 1
	mov	rsp, rsp
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x40]
	jmp	.label_3246
.label_3197:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x48]
	test	al, al
	mov	rbp, rbp
	je	.label_3294
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_3294:
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rbp - 0xc0]
	test	rax, rax
	mov	r12, qword ptr [rbp - 0xa8]
	nop	
	jle	.label_3299
.label_3248:
	nop	
	mov	rbx, r12
	lea	rsi, [rsi]
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_3205:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	r14, rax
	nop	
	call	free
	mov	rsp, rsp
	mov	rax, r14
	add	rbx, 0x18
	dec	rax
	jne	.label_3205
.label_3299:
	mov	rdi, r12
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
.label_3211:
	lea	rsp, [rbp - 0x28]
	lea	rdi, [rdi]
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
.label_3224:
	mov	rsi, rbx
	lea	rbx, [rsi + 1]
	test	qword ptr [rcx], rdx
	mov	rsp, rsp
	lea	rcx, [rcx + 0x20]
	je	.label_3224
	nop	
	mov	rcx, qword ptr [r11 + rsi*8 + 8]
	mov	qword ptr [rax + r9*8], rcx
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	mov	qword ptr [rax + r9*8 + 0x800], rcx
	lea	rsi, [rsi]
	jmp	.label_3230
.label_3246:
	mov	rbx, -1
	nop	
	test	dil, 1
	mov	rcx, r8
	lea	rsi, [rsi]
	jne	.label_3224
.label_3230:
	nop	
	add	rdx, rdx
	shr	rdi, 1
	nop	
	inc	r9
	lea	rdi, [rdi]
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_3246
.label_3288:
	nop	
	test	r10, r10
	je	.label_3249
	lea	r8, [r14 + 0x1808]
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rdi, [rdi]
	mov	esi, 0x40
	jmp	.label_3256
.label_3255:
	mov	rcx, rbx
	nop	
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_3255
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r11 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_3259
.label_3256:
	mov	rbx, -1
	test	r10b, 1
	mov	rdi, r8
	jne	.label_3255
.label_3259:
	mov	rbp, rbp
	add	rdx, rdx
	shr	r10, 1
	inc	rsi
	mov	rbp, rbp
	test	r10, r10
	nop	
	jne	.label_3256
.label_3249:
	mov	rcx, qword ptr [rbp - 0x98]
	test	rcx, rcx
	mov	r9, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rbp - 0x48]
	mov	rbp, rbp
	je	.label_3271
	lea	r8, [r14 + 0x1810]
	mov	edx, 1
	lea	rsi, [rsi]
	mov	esi, 0x80
	nop	
	jmp	.label_3275
.label_3283:
	mov	rbp, rbp
	mov	rcx, rbx
	mov	rbp, rbp
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi]
	lea	rdi, [rdi + 0x20]
	je	.label_3283
	mov	rdi, qword ptr [r11 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_3281
.label_3275:
	mov	rbx, -1
	nop	
	test	cl, 1
	mov	r10, rcx
	mov	rdi, r8
	jne	.label_3283
.label_3281:
	add	rdx, rdx
	nop	
	mov	rcx, r10
	shr	rcx, 1
	inc	rsi
	test	rcx, rcx
	nop	
	jne	.label_3275
.label_3271:
	test	r13, r13
	je	.label_3277
	nop	
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	mov	esi, 0xc0
	jmp	.label_3240
.label_3210:
	mov	rsp, rsp
	mov	rcx, rbx
	mov	rsp, rsp
	lea	rbx, [rcx + 1]
	mov	rsp, rsp
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi]
	lea	rdi, [rdi + 0x20]
	je	.label_3210
	mov	rbp, rbp
	mov	rdi, qword ptr [r11 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	lea	rsi, [rsi]
	jmp	.label_3225
.label_3240:
	mov	rsp, rsp
	mov	rbx, -1
	test	r13b, 1
	mov	rsp, rsp
	mov	rdi, r8
	jne	.label_3210
.label_3225:
	nop	
	add	rdx, rdx
	mov	rsp, rsp
	shr	r13, 1
	mov	rbp, rbp
	inc	rsi
	lea	rsi, [rsi]
	test	r13, r13
	je	.label_3277
	jmp	.label_3240
	nop	
	.section	.text
	.align	32
	#Procedure 0x42be70

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
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_658]]
	nop	
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	edi, 8
	nop	
	call	malloc
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_3310
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
	jne	.label_3301
	lea	rdi, [rdi]
	lea	rax, [r15 + 0x20]
	nop	
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x4c], 0
	nop	
.label_3319:
	lea	rdi, [rdi]
	mov	rdx, r13
	mov	rbp, rbp
	test	rdx, rdx
	mov	rsp, rsp
	jle	.label_3300
	mov	rdi, qword ptr [r15]
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + rdx*8], 0
	je	.label_3305
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_3307
	nop	dword ptr [rax]
.label_3305:
	mov	eax, dword ptr [rsp + 0x4c]
	lea	rdi, [rdi]
	inc	eax
.label_3307:
	lea	rsi, [rsi]
	cmp	eax, dword ptr [r14 + 0xe0]
	jg	.label_3311
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
	je	.label_3302
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_3302
	mov	rcx, qword ptr [r14 + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_3313:
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
	je	.label_3306
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
	jle	.label_3312
	movsxd	rcx, eax
	add	rcx, r15
	cmp	rcx, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	jle	.label_3309
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	rbp, rbp
	mov	r14, r13
	mov	r13, r15
	mov	rbp, rbp
	mov	r15, rcx
	mov	rsp, rsp
	jmp	.label_3303
.label_3312:
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r14, r13
	mov	r13, r15
	mov	r15, rcx
	jne	.label_3303
	mov	rbp, rbp
	jmp	.label_3306
.label_3309:
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
	je	.label_3306
	mov	rsi, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	test	rsi, rsi
	lea	rdi, [rdi]
	jle	.label_3306
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	nop	
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_3308
	nop	word ptr [rax + rax]
.label_3318:
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
	jb	.label_3318
.label_3308:
	mov	rbp, rbp
	test	eax, eax
	je	.label_3306
	lea	rsi, [rsi]
	cmp	rdi, -1
	nop	
	je	.label_3306
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_3303
.label_3306:
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
	je	.label_3304
	mov	rax, qword ptr [r15]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_3304
	mov	rax, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	test	rax, rax
	jle	.label_3304
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
	je	.label_3317
.label_3316:
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
	jb	.label_3316
.label_3317:
	lea	rsi, [rsi]
	cmp	rsi, -1
	nop	
	je	.label_3304
	mov	eax, 1
	nop	
	cmp	qword ptr [rdx + rsi*8], rcx
	lea	rsi, [rsi]
	jne	.label_3304
	nop	
.label_3303:
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_3315
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
	jne	.label_3304
.label_3315:
	mov	rbp, rbp
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_insert
	mov	ebp, 0xc
	test	al, al
	mov	rsp, rsp
	je	.label_3301
.label_3304:
	inc	rbx
	nop	
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rbx, qword ptr [rax + 0x28]
	mov	rbp, rbp
	jl	.label_3313
.label_3302:
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
	je	.label_3319
	mov	rbp, rbp
	jmp	.label_3301
.label_3300:
	lea	rdi, [rdi]
	xor	ebp, ebp
	jmp	.label_3301
.label_3311:
	nop	
	shl	rdx, 3
	lea	rdi, [rdi]
	xor	ebp, ebp
	xor	esi, esi
	lea	rdi, [rdi]
	call	memset
.label_3301:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
.label_3314:
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
.label_3310:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	ebp, 0xc
	lea	rdi, [rdi]
	jmp	.label_3314
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42c2e0

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
	je	.label_3381
	mov	qword ptr [rsp + 0x68], rdx
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_3343
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
	jne	.label_3361
	lea	rdi, [rdi]
	mov	r15, r14
	lea	rsi, [rsi]
	add	r15, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	mov	rsp, rsp
	jne	.label_3323
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
	je	.label_3361
	mov	rsp, rsp
	cmp	qword ptr [rbx + 8], 0
	jle	.label_3323
	mov	r14, rbp
	mov	rsp, rsp
	xor	ebp, ebp
	nop	
.label_3330:
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
	jne	.label_3344
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jl	.label_3330
	mov	dword ptr [rsp + 0x10], 0
	mov	rbp, r14
.label_3323:
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
	jne	.label_3345
	mov	rax, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	test	rax, rax
	mov	r11, r14
	mov	r12, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	je	.label_3343
	mov	qword ptr [rsp + 0x80], r13
	nop	
	mov	r10, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	jle	.label_3371
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x80]
	mov	r13, qword ptr [rax + 0xd8]
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_3355:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x30]
	mov	rax, qword ptr [rax + r15*8]
	lea	rax, [rax + rax*4]
	lea	rsi, [rsi]
	cmp	qword ptr [r13 + rax*8 + 0x10], r10
	lea	rdi, [rdi]
	jge	.label_3326
	lea	rdi, [rdi]
	cmp	qword ptr [r13 + rax*8 + 8], r10
	lea	rdi, [rdi]
	jl	.label_3326
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
	jne	.label_3329
	nop	
	test	rax, rax
	nop	
	jle	.label_3326
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], r12
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r11 + 0x10]
	mov	r14, -1
	lea	rsi, [rsi]
	mov	rsi, -1
	nop	
.label_3376:
	mov	rbp, qword ptr [rdx]
	mov	rdi, rbp
	shl	rdi, 4
	mov	rbp, rbp
	movzx	ebx, byte ptr [rcx + rdi + 8]
	cmp	ebx, 9
	nop	
	je	.label_3320
	lea	rdi, [rdi]
	cmp	ebx, 8
	jne	.label_3362
	cmp	r8, qword ptr [rcx + rdi]
	mov	rbp, rbp
	je	.label_3365
	mov	rbp, rsi
.label_3365:
	lea	rsi, [rsi]
	mov	rsi, rbp
	jmp	.label_3362
	nop	word ptr cs:[rax + rax]
.label_3320:
	nop	
	cmp	r8, qword ptr [rcx + rdi]
	je	.label_3336
	mov	rbp, r14
.label_3336:
	lea	rsi, [rsi]
	mov	r14, rbp
.label_3362:
	mov	rbp, rbp
	add	rdx, 8
	dec	rax
	jne	.label_3376
	lea	rdi, [rdi]
	test	rsi, rsi
	lea	rdi, [rdi]
	mov	rbp, r11
	js	.label_3380
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
	jne	.label_3322
.label_3380:
	test	r14, r14
	mov	rbp, rbp
	mov	r11, rbp
	mov	r12, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	js	.label_3326
	mov	rbp, rbp
	mov	r8, qword ptr [r11 + 8]
	test	r8, r8
	mov	ebp, 0
	jle	.label_3326
	nop	dword ptr [rax]
.label_3351:
	mov	rsp, rsp
	mov	rax, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x38]
	lea	r9, [rsi + rsi*2]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	mov	rbp, rbp
	test	rdx, rdx
	jle	.label_3367
	mov	rbp, rbp
	dec	rdx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + r9*8 + 0x10]
	mov	rbp, rbp
	mov	eax, 0
	je	.label_3377
	nop	dword ptr [rax]
.label_3358:
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
	jb	.label_3358
.label_3377:
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_3367
	mov	rbp, rbp
	cmp	qword ptr [rdi + rax*8], r14
	lea	rdi, [rdi]
	je	.label_3356
.label_3367:
	nop	
	mov	rax, qword ptr [r12 + 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	lea	rdi, [rdi]
	test	rdx, rdx
	jle	.label_3331
	nop	
	dec	rdx
	mov	rcx, qword ptr [rax + r9*8 + 0x10]
	lea	rdi, [rdi]
	mov	eax, 0
	je	.label_3385
	nop	dword ptr [rax]
.label_3338:
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
	jb	.label_3338
.label_3385:
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_3331
	mov	rbp, rbp
	cmp	qword ptr [rcx + rax*8], r14
	mov	rsp, rsp
	je	.label_3356
.label_3331:
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
	jne	.label_3322
	mov	rsp, rsp
	dec	rbp
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbx + 8]
	mov	r11, rbx
	mov	r12, r13
	nop	
	mov	r13, r15
	mov	r15, qword ptr [rsp + 0x98]
.label_3356:
	inc	rbp
	nop	
	cmp	rbp, r8
	jl	.label_3351
	jmp	.label_3326
.label_3329:
	nop	
	test	rax, rax
	mov	ebp, 0
	jg	.label_3384
	jmp	.label_3326
	nop	dword ptr [rax]
.label_3348:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
.label_3384:
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
	jne	.label_3373
	cmp	r8, qword ptr [rcx + rdx]
	jne	.label_3373
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
	jne	.label_3322
	mov	rax, qword ptr [rbx + 8]
	nop	
	mov	r11, rbx
	lea	rsi, [rsi]
	mov	r12, r13
	lea	rsi, [rsi]
	mov	r13, r15
	mov	r15, r14
	mov	r8, qword ptr [rsp + 0x48]
.label_3373:
	mov	rsp, rsp
	inc	rbp
	cmp	rbp, rax
	jl	.label_3348
	nop	word ptr cs:[rax + rax]
.label_3326:
	inc	r15
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	cmp	r15, qword ptr [rbp + 0x28]
	jl	.label_3355
.label_3371:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], r10
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc], 0
	mov	r13, qword ptr [rsp + 0x80]
	mov	rbx, qword ptr [rsp]
.label_3343:
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
	je	.label_3375
	jmp	.label_3345
.label_3381:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rax + rdx*8], 0
.label_3375:
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_3321
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + rdx*8]
	test	byte ptr [rax + 0x68], 0x40
	nop	
	je	.label_3321
	mov	rbx, rbp
	mov	r11, qword ptr [r13 + 0x98]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r13 + 0xc8]
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	rbp, rbp
	mov	rbp, rbp
	jle	.label_3333
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r13 + 0xd8]
	xor	r15d, r15d
	mov	rax, rbp
	nop	
.label_3341:
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
	jl	.label_3341
.label_3333:
	mov	rsp, rsp
	cmp	r15, rbp
	jge	.label_3366
	cmp	r15, -1
	nop	
	je	.label_3366
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [r15 + r15*4]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xb0], rcx
	cmp	qword ptr [rax + rcx*8 + 8], rdx
	jne	.label_3366
	mov	qword ptr [rsp + 0x10], 0
	mov	rax, qword ptr [rsp + 0x70]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jle	.label_3379
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
.label_3353:
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
	jne	.label_3340
	cmp	eax, 4
	mov	rbp, rbp
	mov	rcx, rdx
	jne	.label_3354
	cmp	qword ptr [r10 + 0x18], rcx
	jne	.label_3357
	nop	
	jmp	.label_3354
.label_3340:
	nop	
	cmp	eax, 4
	mov	rcx, rdx
	mov	rbp, rbp
	jne	.label_3354
.label_3357:
	mov	rbx, qword ptr [rdi + 0xd8]
	mov	rsp, rsp
	add	rbx, qword ptr [rsp + 0xb0]
	mov	r14, r15
	nop	dword ptr [rax]
.label_3346:
	cmp	qword ptr [rbx], rbp
	lea	rsi, [rsi]
	jne	.label_3325
	mov	rax, qword ptr [rbx + 0x10]
	nop	
	mov	rdx, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	mov	r9, rdx
	sub	r9, rax
	add	r9, rcx
	cmp	rdx, rax
	jne	.label_3374
	mov	rbp, rbp
	mov	rax, qword ptr [r11 + 0x28]
	nop	
	lea	rdx, [rbp + rbp*2]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rdx*8 + 0x10]
	jmp	.label_3382
	nop	dword ptr [rax]
.label_3374:
	lea	rdi, [rdi]
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r11 + 0x18]
.label_3382:
	cmp	r9, qword ptr [r10 + 0x18]
	jg	.label_3325
	lea	rsi, [rsi]
	mov	rax, qword ptr [r10]
	mov	rdx, qword ptr [rax + r9*8]
	lea	rsi, [rsi]
	test	rdx, rdx
	je	.label_3325
	mov	rax, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	test	rax, rax
	jle	.label_3325
	mov	rsp, rsp
	mov	r12, r10
	mov	r8, qword ptr [rsi]
	dec	rax
	lea	rdi, [rdi]
	mov	r10, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_3339
	nop	dword ptr [rax]
.label_3378:
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
	jb	.label_3378
.label_3339:
	lea	rdi, [rdi]
	cmp	rdx, -1
	je	.label_3349
	nop	
	cmp	qword ptr [r10 + rdx*8], r8
	jne	.label_3349
	mov	qword ptr [rsp + 0x48], r11
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	call	check_dst_limits
	test	al, al
	lea	rdi, [rdi]
	mov	r10, r12
	je	.label_3368
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x68]
	nop	
	mov	rdi, qword ptr [rsp + 0x80]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_3327
.label_3349:
	lea	rdi, [rdi]
	mov	r10, r12
	nop	
	jmp	.label_3327
.label_3368:
	cmp	qword ptr [rsp], 0
	jne	.label_3364
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
	jle	.label_3383
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
	je	.label_3370
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x30]
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, rbx
	call	memcpy
	mov	rbp, rbp
	mov	r10, rbp
	jmp	.label_3364
.label_3383:
	lea	rax, [rsp + 0x30]
	nop	
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], 0
.label_3364:
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
	je	.label_3324
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
	jne	.label_3324
	mov	rdi, qword ptr [r10 + 8]
	test	rdi, rdi
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rbx
	je	.label_3335
	lea	rdi, [rdi]
	mov	r13, -1
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	lea	rbp, [rsp + 0x50]
	js	.label_3342
	nop	dword ptr [rax]
.label_3334:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rdi + r13*8 + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + r13*8 + 8]
	mov	rbp, rbp
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_3350
	test	rdx, rdx
	lea	rsi, [rsi]
	je	.label_3360
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
	jne	.label_3324
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
	je	.label_3360
	jmp	.label_3324
.label_3350:
	lea	rsi, [rsi]
	mov	qword ptr [rdi + r13*8 + 8], rdx
.label_3360:
	inc	r13
	cmp	r13, rcx
	jl	.label_3334
.label_3342:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x90]
.label_3335:
	mov	qword ptr [rsp], rbx
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	qword ptr [rbx + rcx*8], rdx
	mov	r12, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	test	r12, r12
	jle	.label_3332
	mov	rbp, r12
	dec	rbp
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rdi, rbp
	mov	edx, 0
	je	.label_3372
	nop	
.label_3347:
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
	jb	.label_3347
.label_3372:
	cmp	qword ptr [rax + rdx*8], r14
	mov	rdi, rdx
	nop	
	je	.label_3369
	nop	
	mov	rdi, -1
.label_3369:
	test	rdi, rdi
	mov	rsp, rsp
	js	.label_3332
	lea	rsi, [rsi]
	cmp	r12, rdi
	jle	.label_3332
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rbp
	cmp	rbp, rdi
	nop	
	jle	.label_3332
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
	jb	.label_3328
	nop	
	mov	r8, rbx
	lea	rdi, [rdi]
	and	r8, 0xfffffffffffffffc
	nop	
	mov	r9, rbx
	and	r9, 0xfffffffffffffffc
	lea	rsi, [rsi]
	je	.label_3328
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
	jb	.label_3337
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rax + rdx*8 + 8]
	movups	xmm1, xmmword ptr [rax + rdx*8 + 0x18]
	movups	xmmword ptr [rax + rdx*8], xmm0
	movups	xmmword ptr [rax + rdx*8 + 0x10], xmm1
	mov	r10d, 4
.label_3337:
	mov	rbp, rbp
	test	r11, r11
	lea	rdi, [rdi]
	je	.label_3359
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
.label_3352:
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
	jne	.label_3352
.label_3359:
	cmp	rbx, r9
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	r10, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	je	.label_3332
	add	rdx, r8
	nop	word ptr cs:[rax + rax]
.label_3328:
	mov	rsi, qword ptr [rax + rdx*8 + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	mov	rbp, rbp
	cmp	rdx, rbp
	jl	.label_3328
.label_3332:
	lea	rbx, [r14 + r14*4]
	mov	rbp, rbp
	shl	rbx, 3
	mov	rdi, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	add	rbx, qword ptr [rdi + 0xd8]
.label_3327:
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x98]
	nop	
.label_3325:
	mov	rbp, rbp
	inc	r14
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x20], 0
	mov	rbp, rbp
	lea	rbx, [rbx + 0x28]
	jne	.label_3346
.label_3354:
	mov	rdx, rcx
	nop	
	inc	r13
	xor	r12d, r12d
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	cmp	r13, qword ptr [rax + 8]
	jl	.label_3353
.label_3324:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_3363
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	call	free
.label_3363:
	mov	dword ptr [rsp + 0xc], r12d
	nop	
	test	r12d, r12d
	je	.label_3321
	mov	rsp, rsp
	jmp	.label_3345
.label_3366:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], 0
.label_3321:
	xor	r12d, r12d
.label_3345:
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
.label_3322:
	mov	dword ptr [rsp + 0xc], r12d
	nop	
	jmp	.label_3345
.label_3344:
	mov	dword ptr [rsp + 0x10], eax
.label_3361:
	nop	
	mov	dword ptr [rsp + 0xc], r12d
	lea	rdi, [rdi]
	jmp	.label_3345
.label_3379:
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_3321
.label_3370:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x30]
	nop	
	movups	xmmword ptr [rax], xmm0
	lea	rdi, [rdi]
	mov	r12d, 0xc
	jmp	.label_3324
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42d130

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
	je	.label_3396
	mov	r10, qword ptr [r14 + 8]
	nop	
	test	r10, r10
	je	.label_3396
	lea	rax, [r10 + rdx]
	mov	rbx, qword ptr [r12]
	mov	rsi, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	lea	rcx, [rsi + rax]
	cmp	rcx, rbx
	mov	rsp, rsp
	jle	.label_3402
	add	rbx, rax
	nop	
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	mov	rsp, rsp
	test	rcx, rcx
	je	.label_3396
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], rbx
	mov	rsi, qword ptr [r12 + 8]
	mov	rdx, qword ptr [r15 + 8]
	mov	r10, qword ptr [r14 + 8]
	mov	rsp, rsp
	jmp	.label_3404
.label_3402:
	lea	rsi, [rsi]
	lea	r8, [r12 + 0x10]
.label_3404:
	lea	r9, [rdx + rsi]
	add	r9, r10
	dec	rsi
.label_3393:
	dec	rdx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x10]
	nop	
	mov	rcx, qword ptr [r14 + 0x10]
	nop	
	mov	rdi, r10
.label_3386:
	lea	rdi, [rdi]
	lea	r10, [rdi - 1]
	mov	rax, qword ptr [rcx + rdi*8 - 8]
	nop	dword ptr [rax]
.label_3398:
	nop	
	cmp	qword ptr [rbx + rdx*8], rax
	lea	rsi, [rsi]
	je	.label_3391
	nop	
	jl	.label_3397
	lea	rsi, [rsi]
	test	rdx, rdx
	mov	rsp, rsp
	lea	rdx, [rdx - 1]
	mov	rsp, rsp
	jg	.label_3398
	nop	
	jmp	.label_3389
	nop	word ptr cs:[rax + rax]
.label_3397:
	nop	
	cmp	rdi, 2
	nop	
	mov	rdi, r10
	jge	.label_3386
	jmp	.label_3389
	nop	dword ptr [rax]
.label_3391:
	mov	rbx, qword ptr [r8]
	test	rsi, rsi
	lea	rsi, [rsi]
	js	.label_3399
	nop	dword ptr [rax + rax]
.label_3401:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + rsi*8]
	cmp	rcx, rax
	jle	.label_3387
	test	rsi, rsi
	mov	rsp, rsp
	lea	rsi, [rsi - 1]
	nop	
	jg	.label_3401
	mov	rbp, rbp
	jmp	.label_3399
.label_3387:
	test	rsi, rsi
	js	.label_3399
	cmp	rcx, rax
	je	.label_3388
	nop	dword ptr [rax + rax]
.label_3399:
	mov	rbp, rbp
	mov	qword ptr [rbx + r9*8 - 8], rax
	dec	r9
.label_3388:
	mov	rbp, rbp
	test	rdx, rdx
	jle	.label_3389
	cmp	rdi, 2
	lea	rdi, [rdi]
	jge	.label_3393
.label_3389:
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
	jle	.label_3394
	nop	
	test	rax, rax
	js	.label_3394
	lea	rdi, [rdi]
	add	r11, rdx
	mov	rbp, rbp
	add	r11, rcx
	dec	rcx
	sub	r11, r9
	xor	edx, edx
.label_3390:
	mov	rsp, rsp
	mov	rdi, qword ptr [r8]
	lea	rax, [rdi + r11*8]
	nop	dword ptr [rax + rax]
.label_3395:
	mov	rsi, qword ptr [rdi + r14*8]
	nop	
	mov	rbx, qword ptr [rdi + rcx*8]
	mov	rbp, rbp
	cmp	rsi, rbx
	lea	rdi, [rdi]
	jg	.label_3400
	mov	qword ptr [rax + rcx*8], rbx
	lea	rdi, [rdi]
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	lea	rdi, [rdi]
	jg	.label_3395
	jmp	.label_3403
.label_3400:
	mov	rsp, rsp
	dec	r14
	nop	
	dec	r11
	lea	rax, [r10 + rcx]
	dec	r10
	mov	qword ptr [rdi + rax*8], rsi
	nop	
	jne	.label_3390
	mov	rbp, rbp
	jmp	.label_3392
.label_3394:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r8]
.label_3403:
	mov	rdx, r10
.label_3392:
	lea	rsi, [rdi + r9*8]
	lea	rsi, [rsi]
	shl	rdx, 3
	call	memcpy
	lea	rdi, [rdi]
	xor	eax, eax
.label_3396:
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
	#Procedure 0x42d390

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
	jle	.label_3420
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
.label_3415:
	mov	rbp, rbp
	mov	r11, qword ptr [r14]
	mov	rbp, rbp
	mov	rcx, qword ptr [r11 + r13*8]
	lea	rsi, [rsi]
	cmp	rcx, r15
	je	.label_3411
	mov	rdx, qword ptr [rdi]
	mov	rax, rcx
	mov	rsp, rsp
	shl	rax, 4
	lea	rsi, [rsi]
	test	byte ptr [rdx + rax + 8], 8
	je	.label_3411
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
	jl	.label_3425
	mov	rsp, rsp
	mov	r10, qword ptr [rcx + 8]
.label_3425:
	test	r9, r9
	lea	rsi, [rsi]
	jle	.label_3407
	mov	rcx, r9
	dec	rcx
	mov	rbp, rbp
	mov	ebp, 0
	mov	rsp, rsp
	je	.label_3408
	nop	
.label_3414:
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
	jb	.label_3414
.label_3408:
	cmp	rbp, -1
	je	.label_3407
	lea	rsi, [rsi]
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_3419
.label_3407:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	jle	.label_3419
	lea	rdi, [rdi]
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	ecx, 0
	je	.label_3430
	nop	word ptr cs:[rax + rax]
.label_3409:
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
	jb	.label_3409
.label_3430:
	lea	rdi, [rdi]
	cmp	rcx, -1
	nop	
	je	.label_3419
	cmp	qword ptr [rbx + rcx*8], rsi
	lea	rdi, [rdi]
	je	.label_3421
.label_3419:
	test	r10, r10
	jle	.label_3411
	test	r9, r9
	mov	rsp, rsp
	jle	.label_3417
	mov	rbp, r9
	mov	rsp, rsp
	dec	rbp
	mov	ecx, 0
	lea	rdi, [rdi]
	je	.label_3429
	nop	word ptr cs:[rax + rax]
.label_3405:
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
	jb	.label_3405
.label_3429:
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_3417
	cmp	qword ptr [r11 + rcx*8], r10
	lea	rdi, [rdi]
	je	.label_3411
.label_3417:
	mov	rsi, qword ptr [r12 + 8]
	mov	rbp, rbp
	test	rsi, rsi
	jle	.label_3411
	mov	rbp, rbp
	dec	rsi
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r12 + 0x10]
	mov	ecx, 0
	je	.label_3424
	nop	word ptr cs:[rax + rax]
.label_3426:
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
	jb	.label_3426
.label_3424:
	cmp	rcx, -1
	je	.label_3411
	cmp	qword ptr [rbp + rcx*8], r10
	lea	rsi, [rsi]
	jne	.label_3411
.label_3421:
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
	jne	.label_3422
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rax]
	mov	rdi, rbx
	nop	word ptr [rax + rax]
.label_3411:
	inc	r13
	cmp	r13, r9
	jl	.label_3415
	test	r9, r9
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x18]
	jle	.label_3420
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
.label_3428:
	lea	rsi, [rsi]
	test	r10, r10
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + r13*8]
	jle	.label_3413
	lea	rsi, [rsi]
	test	r11, r11
	lea	rsi, [rsi]
	mov	rdx, r11
	mov	rbp, rbp
	mov	ecx, 0
	je	.label_3427
	nop	word ptr cs:[rax + rax]
.label_3431:
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
	jb	.label_3431
.label_3427:
	lea	rdi, [rdi]
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_3413
	cmp	qword ptr [rsi + rcx*8], rax
	mov	rsp, rsp
	je	.label_3416
.label_3413:
	mov	rsp, rsp
	mov	r14, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	r14, r14
	jle	.label_3416
	mov	r15, r14
	dec	r15
	mov	rsp, rsp
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdi, r15
	mov	edx, 0
	je	.label_3423
	nop	word ptr cs:[rax + rax]
.label_3412:
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
	jb	.label_3412
.label_3423:
	cmp	qword ptr [rcx + rdx*8], rax
	mov	rax, rdx
	mov	rbp, rbp
	je	.label_3410
	nop	
	mov	rax, -1
.label_3410:
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_3416
	cmp	r14, rax
	jle	.label_3416
	mov	qword ptr [r12 + 8], r15
	cmp	r15, rax
	jle	.label_3416
	nop	
.label_3406:
	nop	
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	nop	
	mov	qword ptr [rcx + rdx*8], rax
	inc	rdx
	mov	rsp, rsp
	cmp	rdx, qword ptr [r12 + 8]
	jl	.label_3406
	nop	dword ptr [rax + rax]
.label_3416:
	inc	r13
	mov	rax, qword ptr [rsp + 0x10]
	cmp	r13, qword ptr [rax]
	mov	rsp, rsp
	jl	.label_3428
	jmp	.label_3432
.label_3420:
	mov	rbp, rbp
	lea	r8, [rsp + 0x30]
.label_3432:
	mov	rdi, qword ptr [r8]
	call	free
	xor	ebp, ebp
.label_3418:
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
.label_3422:
	nop	
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	jmp	.label_3418
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x42d830

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
	mov	r14, r9
	mov	qword ptr [rsp + 0x30], r14
	nop	
	mov	qword ptr [rsp + 0x28], r8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rsi, rcx
	mov	rbp, rbp
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 8], rax
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rbx + 8], 0
	jle	.label_3434
	mov	rsp, rsp
	mov	r14, qword ptr [rbp + 0x98]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_3435:
	nop	
	mov	rax, qword ptr [rbp + 0xd8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rcx + r12*8]
	lea	rcx, [rsi + rsi*4]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	mov	r15, qword ptr [rcx + rax]
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x18]
	nop	
	mov	r9, qword ptr [rsp + 8]
	call	check_dst_limits_calc_pos
	mov	r13d, eax
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rax + r12*8]
	nop	
	mov	rdi, rbp
	mov	rdx, r15
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	call	check_dst_limits_calc_pos
	cmp	eax, r13d
	mov	rbp, rbp
	mov	al, 1
	jne	.label_3433
	nop	
	inc	r12
	cmp	r12, qword ptr [rbx + 8]
	mov	rsp, rsp
	jl	.label_3435
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_3433
.label_3434:
	lea	rdi, [rdi]
	xor	eax, eax
.label_3433:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x42d970

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	rsp, rsp
	mov	r10, qword ptr [rdi + 0xd8]
	mov	rbp, rbp
	lea	rsi, [rsi + rsi*4]
	mov	rbp, rbp
	mov	r11, qword ptr [r10 + rsi*8 + 0x10]
	mov	rsp, rsp
	mov	eax, 0xffffffff
	mov	rsp, rsp
	cmp	r11, r8
	jg	.label_3436
	mov	r10, qword ptr [r10 + rsi*8 + 0x18]
	mov	rbp, rbp
	mov	eax, 1
	cmp	r10, r8
	mov	rbp, rbp
	jl	.label_3436
	cmp	r11, r8
	sete	al
	movzx	r11d, al
	cmp	r10, r8
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	movzx	esi, al
	add	esi, esi
	xor	eax, eax
	or	esi, r11d
	lea	rdi, [rdi]
	je	.label_3436
	lea	rsi, [rsi]
	mov	r8, r9
	jmp	check_dst_limits_calc_pos_1
.label_3436:
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x42d9e0

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
	mov	qword ptr [rsp + 0x28], rcx
	mov	r12, rdx
	mov	ebx, esi
	mov	qword ptr [rsp], rdi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x30]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	lea	rsi, [rsi]
	jle	.label_3453
	lea	rsi, [rsi]
	lea	rdx, [rax + rcx*8 + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rax + rcx*8 + 0x10]
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	eax, 1
	mov	cl, r12b
	nop	
	shl	rax, cl
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	xor	rax, 0xffff
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	mov	eax, ebx
	mov	rbp, rbp
	and	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x18], eax
	shr	eax, 1
	cmp	r12, 0x3f
	setg	cl
	or	cl, al
	nop	
	mov	byte ptr [rsp + 0x3f], cl
	mov	eax, ebx
	nop	
	and	eax, 1
	mov	dword ptr [rsp + 0x1c], eax
	lea	rsi, [rsi]
	xor	r15d, r15d
	jmp	.label_3446
.label_3450:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0x3f], 0
	lea	rdi, [rdi]
	je	.label_3440
	nop	
.label_3456:
	mov	rsp, rsp
	cmp	qword ptr [r14], r13
	mov	rsp, rsp
	jne	.label_3437
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x28]
	lea	rcx, [r13 + r13*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	nop	
	mov	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rsp + 0x28]
	je	.label_3449
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	mov	rsp, rsp
	mov	esi, ebx
	mov	rdx, r12
	mov	r8, qword ptr [rsp + 0x40]
	call	check_dst_limits_calc_pos_1
	mov	rsp, rsp
	mov	ecx, eax
	test	ecx, ecx
	je	.label_3455
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	cmp	ecx, -1
	mov	rbp, rbp
	jne	.label_3437
	jmp	.label_3441
	nop	word ptr cs:[rax + rax]
.label_3455:
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	dword ptr [rsp + 0x18], 0
	jne	.label_3441
.label_3437:
	cmp	byte ptr [r14 + 0x20], 0
	lea	r14, [r14 + 0x28]
	lea	rsi, [rsi]
	jne	.label_3456
	jmp	.label_3447
	nop	word ptr [rax + rax]
.label_3440:
	cmp	qword ptr [r14], r13
	jne	.label_3444
	mov	rax, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	lea	rcx, [r13 + r13*2]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x28]
	je	.label_3449
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp]
	mov	esi, ebx
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	r8, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	call	check_dst_limits_calc_pos_1
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	test	ecx, ecx
	lea	rdi, [rdi]
	je	.label_3439
	mov	rsp, rsp
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	cmp	ecx, -1
	mov	rsp, rsp
	jne	.label_3444
	mov	rsp, rsp
	jmp	.label_3441
	nop	
.label_3439:
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x30]
	nop	
	and	ecx, eax
	mov	rbp, rbp
	mov	word ptr [r14 + 0x22], cx
.label_3444:
	mov	rsp, rsp
	cmp	byte ptr [r14 + 0x20], 0
	lea	r14, [r14 + 0x28]
	nop	
	jne	.label_3440
	jmp	.label_3447
	nop	dword ptr [rax]
.label_3446:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	r13, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rbp]
	mov	rdx, r13
	shl	rdx, 4
	lea	rcx, [rax + rdx]
	movzx	eax, byte ptr [rax + rdx + 8]
	lea	rsi, [rsi]
	cmp	eax, 9
	nop	
	je	.label_3454
	cmp	eax, 8
	nop	
	je	.label_3443
	cmp	eax, 4
	jne	.label_3447
	nop	
	cmp	qword ptr [rsp + 0x40], -1
	je	.label_3447
	mov	rax, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	lea	r14, [rax + rax*4]
	nop	
	shl	r14, 3
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	add	r14, qword ptr [rax + 0xd8]
	cmp	r12, 0x3f
	lea	rdi, [rdi]
	jg	.label_3450
	nop	
.label_3445:
	cmp	qword ptr [r14], r13
	jne	.label_3442
	lea	rsi, [rsi]
	movzx	eax, word ptr [r14 + 0x22]
	test	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	je	.label_3442
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	lea	rcx, [r13 + r13*2]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x28]
	je	.label_3449
	nop	
	mov	rdi, qword ptr [rsp]
	mov	rbp, rbp
	mov	esi, ebx
	mov	rdx, r12
	nop	
	mov	r8, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	call	check_dst_limits_calc_pos_1
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	test	ecx, ecx
	je	.label_3452
	mov	eax, 0xffffffff
	cmp	ecx, -1
	jne	.label_3448
	jmp	.label_3441
.label_3452:
	cmp	byte ptr [rsp + 0x3f], 0
	je	.label_3448
	xor	eax, eax
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_3442
	mov	rbp, rbp
	jmp	.label_3441
	nop	word ptr cs:[rax + rax]
.label_3448:
	mov	rsp, rsp
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	and	ecx, eax
	nop	
	mov	word ptr [r14 + 0x22], cx
.label_3442:
	cmp	byte ptr [r14 + 0x20], 0
	lea	r14, [r14 + 0x28]
	jne	.label_3445
	lea	rdi, [rdi]
	jmp	.label_3447
	nop	dword ptr [rax]
.label_3454:
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_3447
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_3451
	nop	
.label_3443:
	cmp	dword ptr [rsp + 0x1c], 0
	mov	rsp, rsp
	je	.label_3447
	mov	eax, 0xffffffff
.label_3451:
	mov	rsp, rsp
	cmp	qword ptr [rcx], r12
	je	.label_3441
.label_3447:
	mov	rbp, rbp
	inc	r15
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	cmp	r15, qword ptr [rax]
	lea	rsi, [rsi]
	jl	.label_3446
.label_3453:
	shr	ebx, 1
	and	ebx, 1
	jmp	.label_3438
.label_3449:
	nop	
	shl	ebx, 0x1f
	sar	ebx, 0x1f
.label_3438:
	nop	
	mov	eax, ebx
.label_3441:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42ddb0

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
	je	.label_3457
	mov	rbp, rbp
	mov	rdi, r14
	call	strlen
	nop	
	mov	r15, rax
	inc	r15
.label_3457:
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
	je	.label_3458
	mov	rsp, rsp
	mov	qword ptr [rbx], 0
	test	r14, r14
	lea	rdi, [rdi]
	setne	byte ptr [rbx + 8]
	nop	
	mov	byte ptr [rbx + 9], 0
	lea	rsi, [rsi]
	je	.label_3458
	mov	r12, rbx
	mov	rbp, rbp
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	lea	rsi, [rsi]
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_3458:
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
	#Procedure 0x42de60
	.globl tzfree
	.type tzfree, @function
tzfree:

	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	cmp	rdi, 2
	jb	.label_3460
	nop	dword ptr [rax]
.label_3459:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	jne	.label_3459
.label_3460:
	mov	rsp, rsp
	pop	rbx
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x42de90

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	nop	
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	r15, rdi
	mov	rsp, rsp
	test	r15, r15
	mov	rbp, rbp
	je	.label_3463
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rdx
	mov	edi, OFFSET FLAT:.str_2
	call	getenv
	mov	r13, rax
	test	r13, r13
	mov	bl, byte ptr [r15 + 8]
	nop	
	je	.label_3473
	nop	
	mov	qword ptr [rsp + 0x10], rbp
	mov	rbp, rbp
	test	bl, bl
	je	.label_3476
	nop	
	lea	rdi, [r15 + 9]
	lea	rdi, [rdi]
	mov	rsi, r13
	call	strcmp
	lea	rdi, [rdi]
	mov	r14d, 1
	test	eax, eax
	je	.label_3475
.label_3476:
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rbp, rbp
	call	strlen
	mov	rbp, rax
	mov	rbp, rbp
	inc	rbp
	nop	
	mov	r12b, 1
	lea	rsi, [rsi]
	jmp	.label_3465
.label_3463:
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rsi, rdx
	lea	rdi, [rdi]
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	jmp	gmtime_r
.label_3473:
	mov	qword ptr [rsp + 0x10], rbp
	nop	
	xor	r12d, r12d
	mov	r14d, 1
	nop	
	test	bl, bl
	mov	ebp, 0
	mov	rbp, rbp
	je	.label_3475
.label_3465:
	lea	rax, [rbp + 0x11]
	and	rax, 0xfffffffffffffff8
	lea	rsi, [rsi]
	cmp	rbp, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_3464
	mov	rsp, rsp
	mov	qword ptr [r14], 0
	mov	byte ptr [r14 + 8], r12b
	lea	rsi, [rsi]
	mov	byte ptr [r14 + 9], 0
	test	r12b, r12b
	lea	rdi, [rdi]
	je	.label_3468
	lea	rsi, [rsi]
	lea	r12, [r14 + 9]
	mov	rdi, r12
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	memcpy
	mov	rsp, rsp
	mov	byte ptr [r12 + rbp], 0
.label_3468:
	test	bl, bl
	je	.label_3478
	mov	rsp, rsp
	lea	rsi, [r15 + 9]
	mov	edi, OFFSET FLAT:.str_2
	mov	edx, 1
	mov	rsp, rsp
	call	setenv
	mov	rsp, rsp
	jmp	.label_3461
.label_3478:
	mov	edi, OFFSET FLAT:.str_2
	call	unsetenv
.label_3461:
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	je	.label_3477
	call	__errno_location
	nop	
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	cmp	r14, 2
	jb	.label_3466
	nop	dword ptr [rax + rax]
.label_3471:
	mov	rbx, qword ptr [r14]
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	test	rbx, rbx
	mov	r14, rbx
	lea	rdi, [rdi]
	jne	.label_3471
.label_3466:
	lea	rdi, [rdi]
	mov	dword ptr [rbp], r15d
.label_3464:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_3472
.label_3477:
	call	tzset
.label_3475:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 8]
	mov	rsi, rbx
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	mov	rbp, rbp
	mov	r12b, 1
	mov	rsp, rsp
	je	.label_3481
	mov	rdi, r15
	mov	rsi, rbx
	nop	
	call	save_abbr
	lea	rdi, [rdi]
	mov	r12b, al
	xor	r12b, 1
.label_3481:
	mov	rbp, rbp
	cmp	r14, 1
	je	.label_3467
	lea	rdi, [rdi]
	call	__errno_location
	mov	r15, rax
	lea	rsi, [rsi]
	mov	r13d, dword ptr [r15]
	cmp	byte ptr [r14 + 8], 0
	mov	rbp, rbp
	je	.label_3469
	lea	rsi, [r14 + 9]
	mov	edi, OFFSET FLAT:.str_2
	mov	edx, 1
	call	setenv
	jmp	.label_3474
.label_3469:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str_2
	call	unsetenv
.label_3474:
	test	eax, eax
	je	.label_3480
	lea	rdi, [rdi]
	mov	r13d, dword ptr [r15]
	xor	ebp, ebp
	mov	rsp, rsp
	jmp	.label_3479
.label_3480:
	nop	
	call	tzset
	mov	bpl, 1
.label_3479:
	mov	rsp, rsp
	cmp	r14, 2
	mov	rsp, rsp
	jb	.label_3462
	nop	
.label_3470:
	mov	rbp, rbp
	mov	rbx, qword ptr [r14]
	mov	rdi, r14
	call	free
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	mov	r14, rbx
	mov	rsp, rsp
	jne	.label_3470
.label_3462:
	mov	dword ptr [r15], r13d
	mov	rbx, qword ptr [rsp + 8]
.label_3467:
	xor	eax, eax
	nop	
	xor	bpl, 1
	cmovne	rbx, rax
	test	r12b, r12b
	mov	rsp, rsp
	cmovne	rbx, rax
	mov	rsp, rsp
	mov	rax, rbx
.label_3472:
	lea	rsi, [rsi]
	add	rsp, 0x18
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x42e170

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
	je	.label_3486
	cmp	r15, rbx
	ja	.label_3492
	nop	
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	lea	rsi, [rsi]
	jb	.label_3486
.label_3492:
	mov	ebp, OFFSET FLAT:.str_3
	nop	
	cmp	byte ptr [rbx], 0
	je	.label_3482
	lea	rbp, [r12 + 9]
	jmp	.label_3484
.label_3483:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	mov	rbp, rbp
	cmovne	r12, rax
.label_3484:
	lea	r13, [r12 + 9]
.label_3494:
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_3482
	cmp	byte ptr [rbp], 0
	mov	rsp, rsp
	jne	.label_3485
	lea	rsi, [rsi]
	cmp	rbp, r13
	jne	.label_3487
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + 8], 0
	je	.label_3490
.label_3485:
	mov	rbp, rbp
	mov	rdi, rbp
	call	strlen
	nop	
	lea	rcx, [rax + rbp + 1]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + rbp + 1], 0
	mov	rbp, rcx
	jne	.label_3494
	lea	rdi, [rdi]
	jmp	.label_3483
.label_3490:
	lea	rdi, [rdi]
	mov	rbp, r13
.label_3487:
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
	jbe	.label_3491
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
.label_3489:
	xor	r14d, r14d
	jmp	.label_3486
.label_3491:
	add	rcx, rdx
	mov	rbp, rbp
	cmp	rcx, 0x76
	ja	.label_3488
	nop	
	mov	rdi, rbp
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	mov	qword ptr [r15 + 0x30], rbp
	jmp	.label_3486
.label_3488:
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
	je	.label_3493
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
.label_3482:
	mov	qword ptr [r15 + 0x30], rbp
.label_3486:
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
.label_3493:
	mov	qword ptr [r12], 0
	jmp	.label_3489
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x42e370

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	nop	
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	nop	
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x48
	mov	rbx, rdi
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_3511
	mov	qword ptr [rsp + 0x40], rsi
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_2
	call	getenv
	mov	r13, rax
	lea	rsi, [rsi]
	test	r13, r13
	mov	rsp, rsp
	mov	r12b, byte ptr [rbx + 8]
	mov	rbp, rbp
	je	.label_3500
	test	r12b, r12b
	nop	
	je	.label_3504
	lea	rdi, [rbx + 9]
	mov	rsi, r13
	lea	rdi, [rdi]
	call	strcmp
	lea	rdi, [rdi]
	mov	r15d, 1
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_3497
.label_3504:
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	mov	rbp, rax
	inc	rbp
	lea	rsi, [rsi]
	mov	r14b, 1
	jmp	.label_3513
.label_3511:
	nop	
	mov	rdi, rsi
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	jmp	timegm
.label_3500:
	nop	
	xor	r14d, r14d
	lea	rdi, [rdi]
	mov	r15d, 1
	lea	rsi, [rsi]
	test	r12b, r12b
	mov	ebp, 0
	mov	rsp, rsp
	je	.label_3497
.label_3513:
	lea	rdi, [rdi]
	lea	rax, [rbp + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	rbp, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	lea	rdi, [rdi]
	call	malloc
	mov	r15, rax
	lea	rdi, [rdi]
	mov	rax, -1
	lea	rdi, [rdi]
	test	r15, r15
	je	.label_3502
	nop	
	mov	qword ptr [r15], 0
	lea	rdi, [rdi]
	mov	byte ptr [r15 + 8], r14b
	mov	byte ptr [r15 + 9], 0
	test	r14b, r14b
	mov	rbp, rbp
	je	.label_3515
	lea	r14, [r15 + 9]
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r13
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	memcpy
	mov	byte ptr [r14 + rbp], 0
.label_3515:
	mov	rbp, rbp
	test	r12b, r12b
	nop	
	je	.label_3516
	lea	rsi, [rbx + 9]
	mov	edi, OFFSET FLAT:.str_2
	mov	edx, 1
	call	setenv
	jmp	.label_3508
.label_3516:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str_2
	call	unsetenv
.label_3508:
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_3507
	call	__errno_location
	mov	rbp, rax
	mov	rbp, rbp
	mov	r14d, dword ptr [rbp]
	mov	rsp, rsp
	cmp	r15, 2
	jb	.label_3498
	nop	word ptr cs:[rax + rax]
.label_3499:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15]
	mov	rbp, rbp
	mov	rdi, r15
	nop	
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_3499
.label_3498:
	mov	dword ptr [rbp], r14d
	mov	rbp, rbp
	mov	rax, -1
	lea	rdi, [rdi]
	jmp	.label_3502
.label_3507:
	call	tzset
.label_3497:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rdi, rbp
	call	mktime
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rax
	cmp	rax, -1
	mov	rbp, rbp
	jne	.label_3509
	mov	rbp, rbp
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp]
	nop	
	call	localtime_r
	mov	rbp, rbp
	test	rax, rax
	je	.label_3495
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	xor	rax, qword ptr [rbp]
	mov	rsp, rsp
	xor	rcx, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	mov	edx, ecx
	nop	
	or	edx, eax
	shr	rax, 0x20
	mov	rbp, rbp
	or	edx, eax
	lea	rdi, [rdi]
	shr	rcx, 0x20
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	xor	rax, qword ptr [rbp + 0x10]
	nop	
	mov	esi, eax
	or	esi, ecx
	mov	rbp, rbp
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	rsp, rsp
	mov	edi, dword ptr [rbp + 0x20]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	test	edi, edi
	sete	sil
	test	edx, edx
	mov	rsp, rsp
	sete	cl
	xor	cl, sil
	or	edx, edi
	mov	rbp, rbp
	setns	dl
	and	dl, cl
	lea	rdi, [rdi]
	movzx	ecx, dl
	nop	
	or	ecx, eax
	jne	.label_3495
.label_3509:
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, rbp
	nop	
	call	save_abbr
	test	al, al
	jne	.label_3495
	mov	qword ptr [rsp + 0x38], -1
.label_3495:
	cmp	r15, 1
	je	.label_3501
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14, rax
	mov	rbp, rbp
	mov	r12d, dword ptr [r14]
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 8], 0
	lea	rsi, [rsi]
	je	.label_3503
	lea	rsi, [r15 + 9]
	mov	edi, OFFSET FLAT:.str_2
	mov	edx, 1
	call	setenv
	jmp	.label_3510
.label_3503:
	mov	edi, OFFSET FLAT:.str_2
	mov	rsp, rsp
	call	unsetenv
.label_3510:
	nop	
	test	eax, eax
	mov	rbp, rbp
	je	.label_3512
	mov	r12d, dword ptr [r14]
	xor	ebp, ebp
	lea	rsi, [rsi]
	jmp	.label_3514
.label_3512:
	call	tzset
	mov	bpl, 1
.label_3514:
	lea	rsi, [rsi]
	cmp	r15, 2
	jb	.label_3506
	nop	word ptr cs:[rax + rax]
.label_3496:
	mov	rsp, rsp
	mov	rbx, qword ptr [r15]
	mov	rsp, rsp
	mov	rdi, r15
	call	free
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_3496
.label_3506:
	mov	dword ptr [r14], r12d
	test	bpl, bpl
	je	.label_3505
.label_3501:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	jmp	.label_3502
.label_3505:
	nop	
	mov	rax, -1
.label_3502:
	mov	rbp, rbp
	add	rsp, 0x48
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x42e700

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
	jne	.label_3517
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_3518
	test	cl, cl
	mov	rsp, rsp
	jne	.label_3518
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_3518
.label_3517:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_3518
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_3518:
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
	#Procedure 0x42e790

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
	#Procedure 0x42e7b0

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	nop	
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_3519
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_3522
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	nop	
	jne	.label_3522
	mov	rsp, rsp
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	je	.label_3521
.label_3522:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 1]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x10], rdx
	mov	rbp, rbp
	test	rdx, rcx
	jne	.label_3520
	mov	al, 1
	test	rdx, rdx
	lea	rsi, [rsi]
	je	.label_3521
	mov	rax, qword ptr [rsi]
	nop	
	mov	qword ptr [rdi + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_3520:
	mov	rsp, rsp
	xor	eax, eax
.label_3521:
	ret	
.label_3519:
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
	#Procedure 0x42e840

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_3523
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
.label_3523:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_3524
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
	ja	.label_3526
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_3525
.label_3526:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_3525:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_3524:
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
	#Procedure 0x42e960

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
	je	.label_3528
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_3527
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_3529
.label_3527:
	nop	
	mov	esi, OFFSET FLAT:.str.1_13
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_3528
.label_3529:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_3528:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x42e9b0

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
	#Procedure 0x42e9f0

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42ea00

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
	jne	.label_3530
	lea	rsi, [rsi]
	mov	dl, byte ptr [rdi + 0x1c]
	mov	rbp, rbp
	xor	dl, 1
	movzx	edx, dl
	mov	rbp, rbp
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_3530:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42ea50

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	nop	
	cmp	byte ptr [rdi + 0x1c], 0
	lea	rdi, [rdi]
	jne	.label_3531
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
	jne	.label_3532
	lea	rsi, [rsi]
	mov	byte ptr [rdi + 0x1c], 1
	lea	rdi, [rdi]
	ret	
.label_3532:
	add	ecx, 3
	and	ecx, 3
	lea	rsi, [rsi]
	mov	dword ptr [rdi + 0x14], ecx
	ret	
.label_3531:
	push	rax
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42eab0

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
	je	.label_3533
	nop	
	mov	rax, rcx
.label_3533:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x42eaf0
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	mov	rbp, rbp
	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_3534
	lea	rdi, [rdi]
	mov	edi, ebx
	call	iswcntrl
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	sete	al
	movzx	eax, al
.label_3534:
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x42eb20
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
	jne	.label_3535
	mov	rbp, rbp
	lea	r15, [r14 + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_3535:
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
	je	.label_3536
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x14], eax
.label_3536:
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
	#Procedure 0x42eba0
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
	#Procedure 0x42ebd0

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	nop	
	sub	rsp, 0xd8
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_3537
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
.label_3537:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	dl, 0x40
	je	.label_3539
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
	ja	.label_3540
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	rbp, rbp
	mov	dword ptr [rsp], ecx
	jmp	.label_3538
.label_3540:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rcx
.label_3538:
	mov	ecx, dword ptr [rax]
.label_3539:
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
	#Procedure 0x42ecd0

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
	js	.label_3541
	mov	rsp, rsp
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_3542
	mov	dword ptr [r14], ebp
	mov	rsp, rsp
	jmp	.label_3541
.label_3542:
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
.label_3541:
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
	#Procedure 0x42ed50

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
	ja	.label_3543
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
	jmp	.label_3544
.label_3543:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_3544:
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
	#Procedure 0x42edc0

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
	je	.label_3559
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
.label_3559:
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
	ja	.label_3552
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_3565
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_3549
	mov	rsp, rsp
	test	esi, esi
	jne	.label_3552
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_3562
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_3558
.label_3552:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_3563
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_3549
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_3545
.label_3565:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_3550
.label_3549:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_3551
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_3555
.label_3551:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_3555:
	mov	edx, dword ptr [rax]
.label_3564:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_3550:
	mov	ebp, eax
.label_3546:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_3545:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_3563
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_3547
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_3553
.label_3563:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_3557
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_3560
.label_3562:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_3558:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_3564
.label_3547:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_3553:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_3554
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
	jns	.label_3561
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_3561
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
	js	.label_3546
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_3548
.label_3561:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_3546
.label_3557:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_3560:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_3550
.label_3554:
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
.label_3548:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_3546
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_3546
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_3556
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
	jne	.label_3546
.label_3556:
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
	jmp	.label_3546
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x42f190

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
	#Procedure 0x42f1b0

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