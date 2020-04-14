	.section	.text
	.align	32
	#Procedure 0x401c00

	.globl usage
	.type usage, @function
usage:
	nop	
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	mov	rbp, rbp
	jne	.label_8
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.2
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, 0xa
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	nop	
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, 0xa
	nop	
	mov	ecx, 5
	nop	
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.6
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.7
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.8
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.10
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.12
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.18
	mov	rbp, rbp
	xor	eax, eax
	call	__printf_chk
	nop	
	mov	edi, 5
	nop	
	xor	esi, esi
	call	setlocale
	test	rax, rax
	mov	rbp, rbp
	je	.label_9
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 3
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strncmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_9
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
.label_9:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.13
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.13
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.40
	nop	
	xor	eax, eax
	call	__printf_chk
	lea	rsi, [rsi]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	exit
.label_8:
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rdx, rax
	nop	
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	lea	rdi, [rdi]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fd0

	.globl main
	.type main, @function
main:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	nop	
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x2188
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	r15d, edi
	mov	qword ptr [rsp + 0x90], 0xa
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.15
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.16
	lea	rsi, [rsi]
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.15
	lea	rsi, [rsi]
	call	textdomain
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + count_lines]],  1
	nop	
	mov	byte ptr [byte ptr [rip + print_headers]],  0
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + from_start]],  0
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + forever]],  0
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + line_end]],  1
	cmp	r15d, 2
	mov	rbp, rbp
	je	.label_23
	mov	rsp, rsp
	cmp	r15d, 3
	jne	.label_36
	mov	rax, qword ptr [r13 + 0x10]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2d
	jne	.label_23
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 1]
	lea	rdi, [rdi]
	test	cl, cl
	jne	.label_41
	jmp	.label_23
.label_36:
	lea	eax, [r15 - 3]
	cmp	eax, 1
	ja	.label_46
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0x10]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2d
	jne	.label_195
	mov	cl, byte ptr [rax + 1]
.label_41:
	movzx	ecx, cl
	nop	
	cmp	ecx, 0x2d
	jne	.label_57
	cmp	byte ptr [rax + 2], 0
	je	.label_23
	lea	rsi, [rsi]
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_62
.label_23:
	lea	rsi, [rsi]
	call	posix2_version
	mov	rdi, qword ptr [r13 + 8]
	movsx	ecx, byte ptr [rdi]
	inc	rdi
	mov	rbp, rbp
	cmp	ecx, 0x2d
	je	.label_66
	cmp	ecx, 0x2b
	jne	.label_70
	lea	rsi, [rsi]
	add	eax, 0xfffcf250
	mov	bl, 1
	nop	
	cmp	eax, 0x2b8
	mov	rbp, rbp
	ja	.label_71
	mov	rbp, rbp
	xor	ebx, ebx
	nop	
	jmp	.label_62
.label_66:
	lea	rsi, [rsi]
	cmp	eax, 0x30db0
	lea	rsi, [rsi]
	jge	.label_74
	mov	rbp, rbp
	xor	ebx, ebx
	nop	
	jmp	.label_71
.label_70:
	xor	ebx, ebx
	lea	rsi, [rsi]
	jmp	.label_62
.label_46:
	xor	ebx, ebx
	lea	rdi, [rdi]
	jmp	.label_62
.label_74:
	movzx	eax, byte ptr [rdi]
	lea	rsi, [rsi]
	cmp	eax, 0x63
	sete	al
	mov	rbp, rbp
	movzx	eax, al
	xor	ebx, ebx
	cmp	byte ptr [rdi + rax], 0
	lea	rdi, [rdi]
	je	.label_62
.label_71:
	lea	rdi, [rdi]
	mov	rdx, rdi
	nop	word ptr cs:[rax + rax]
.label_89:
	nop	
	mov	rax, rdx
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	movsx	esi, cl
	mov	rbp, rbp
	lea	ebp, [rsi - 0x30]
	lea	rsi, [rsi]
	lea	rdx, [rax + 1]
	lea	rsi, [rsi]
	cmp	ebp, 0xa
	jb	.label_89
	lea	rsi, [rsi]
	mov	r14b, 1
	lea	rsi, [rsi]
	mov	r8d, 0xa
	lea	rsi, [rsi]
	cmp	esi, 0x6c
	mov	rbp, rbp
	je	.label_94
	cmp	esi, 0x63
	je	.label_98
	mov	rbp, rbp
	cmp	esi, 0x62
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	jne	.label_138
	mov	rsp, rsp
	mov	r8d, 0x1400
.label_98:
	mov	rsp, rsp
	xor	r14d, r14d
.label_94:
	mov	rbp, rbp
	mov	cl, byte ptr [rdx]
	mov	rsp, rsp
	mov	rsi, rdx
.label_138:
	mov	rbp, rbp
	movzx	ecx, cl
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	ecx, 0x66
	sete	r12b
	cmovne	rdx, rsi
	cmp	byte ptr [rdx], 0
	je	.label_103
	xor	ebx, ebx
	lea	rsi, [rsi]
	jmp	.label_62
.label_103:
	lea	rsi, [rsi]
	cmp	rdi, rax
	nop	
	je	.label_110
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0x90]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:.str.42
	call	xstrtoumax
	test	eax, 0xfffffffd
	nop	
	je	.label_116
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	mov	rdi, qword ptr [r13 + 8]
	call	quote
	mov	rbp, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_3
	nop	
	xor	eax, eax
	mov	esi, r14d
	lea	rsi, [rsi]
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_57:
	xor	ebx, ebx
	lea	rdi, [rdi]
	jmp	.label_62
.label_195:
	xor	ebx, ebx
	mov	rsp, rsp
	jmp	.label_62
.label_110:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x90], r8
.label_116:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + from_start]],  bl
	mov	byte ptr [byte ptr [rip + count_lines]],  r14b
	mov	byte ptr [byte ptr [rip + forever]],  r12b
	mov	bl, 1
.label_62:
	movzx	eax, bl
	nop	
	sub	r15d, eax
	nop	
	lea	r14, [r13 + rax*8]
	nop	
	movsd	xmm0,  qword ptr [word ptr [rip + label_136]]
	movsd	qword ptr [rsp + 0x40], xmm0
	xor	eax, eax
	jmp	.label_137
.label_175:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + reopen_inaccessible_files]],  1
	lea	rsi, [rsi]
	mov	eax, r12d
	nop	
.label_137:
	mov	r12d, eax
	nop	
	mov	edx, OFFSET FLAT:.str.45
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r15d
	mov	rbp, rbp
	mov	rsi, r14
	call	getopt_long
	lea	rsi, [rsi]
	mov	ebp, eax
	lea	rsi, [rsi]
	cmp	ebp, 0x62
	jle	.label_151
	mov	rsp, rsp
	lea	ecx, [rbp - 0x6e]
	cmp	ecx, 0x17
	ja	.label_152
	mov	eax, 2
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_156]]
.label_956:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtod
	mov	rbp, rbp
	lea	rdx, [rsp + 0xb0]
	nop	
	call	xstrtod
	lea	rdi, [rdi]
	test	al, al
	je	.label_164
	movsd	xmm0, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	movsd	qword ptr [rsp + 0x40], xmm0
	ucomisd	xmm0,  qword ptr [word ptr [label_216]]
	nop	
	jb	.label_164
	mov	eax, r12d
	jmp	.label_137
	nop	
.label_151:
	mov	rsp, rsp
	cmp	ebp, 0x2f
	jle	.label_241
	cmp	ebp, 0x46
	mov	rbp, rbp
	jne	.label_173
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + forever]],  1
	nop	
	mov	dword ptr [dword ptr [rip + follow_mode]],  1
	lea	rdi, [rdi]
	jmp	.label_175
.label_152:
	cmp	ebp, 0x63
	mov	rbp, rbp
	je	.label_182
	mov	rbp, rbp
	cmp	ebp, 0x66
	mov	rsp, rsp
	jne	.label_176
.label_962:
	nop	
	mov	byte ptr [byte ptr [rip + forever]],  1
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_293
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.49
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:follow_mode_string
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:follow_mode_map
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + follow_mode_map]]
	nop	
	mov	dword ptr [dword ptr [rip + follow_mode]],  eax
	lea	rdi, [rdi]
	mov	eax, r12d
	mov	rbp, rbp
	jmp	.label_137
.label_182:
	lea	rdi, [rdi]
	cmp	ebp, 0x6e
	sete	byte ptr [byte ptr [rip + count_lines]]
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	je	.label_113
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 0x2b
	lea	rsi, [rsi]
	jne	.label_141
	mov	byte ptr [byte ptr [rip + from_start]],  1
	jmp	.label_141
.label_963:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + disable_inotify]],  1
	mov	eax, r12d
	jmp	.label_137
.label_959:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	nop	
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [word ptr [rip + max_n_unchanged_stats_between_opens]],  rax
	lea	rdi, [rdi]
	mov	eax, r12d
	mov	rbp, rbp
	jmp	.label_137
.label_961:
	mov	byte ptr [byte ptr [rip + presume_input_pipe]],  1
	mov	eax, r12d
	lea	rsi, [rsi]
	jmp	.label_137
.label_957:
	nop	
	mov	eax, 1
	jmp	.label_137
.label_960:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	xor	r9d, r9d
	nop	
	mov	rdi, rbx
	mov	rbp, rbp
	mov	r8, rax
	lea	rdi, [rdi]
	call	xdectoumax
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + pid]],  eax
	mov	rsp, rsp
	mov	eax, r12d
	mov	rbp, rbp
	jmp	.label_137
.label_958:
	mov	byte ptr [byte ptr [rip + line_end]],  0
	mov	eax, r12d
	jmp	.label_137
.label_293:
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + follow_mode]],  2
	mov	eax, r12d
	lea	rdi, [rdi]
	jmp	.label_137
.label_113:
	mov	rsp, rsp
	inc	rbx
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + optarg]],  rbx
.label_141:
	lea	rsi, [rsi]
	xor	edi, edi
	cmp	ebp, 0x6e
	jne	.label_231
	mov	esi, OFFSET FLAT:.str.47
	lea	rdi, [rdi]
	jmp	.label_124
.label_231:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.48
.label_124:
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.46
	nop	
	xor	r9d, r9d
	nop	
	mov	rdi, rbx
	mov	r8, rax
	mov	rbp, rbp
	call	xdectoumax
	mov	qword ptr [rsp + 0x90], rax
	mov	rsp, rsp
	mov	eax, r12d
	mov	rsp, rsp
	jmp	.label_137
.label_241:
	mov	rbp, rbp
	cmp	ebp, -1
	jne	.label_240
	movzx	eax,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	lea	rsi, [rsi]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	jne	.label_242
	nop	
	cmp	byte ptr [byte ptr [rip + forever]],  0
	nop	
	je	.label_244
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + follow_mode]],  2
	nop	
	jne	.label_242
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	jmp	.label_248
.label_244:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + reopen_inaccessible_files]],  0
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.58
.label_248:
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_242:
	mov	edi,  dword ptr [dword ptr [rip + pid]]
	test	edi, edi
	je	.label_256
	mov	al,  byte ptr [byte ptr [rip + forever]]
	test	al, al
	jne	.label_256
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.60
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	nop	
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
	lea	rsi, [rsi]
	jmp	.label_265
.label_256:
	test	edi, edi
	je	.label_265
	mov	rsp, rsp
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_265
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_265
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	dword ptr [dword ptr [rip + pid]],  0
.label_265:
	mov	rsp, rsp
	mov	r8b,  byte ptr [byte ptr [rip + from_start]]
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	test	r8b, r8b
	je	.label_271
	lea	rsi, [rsi]
	test	r9, r9
	nop	
	je	.label_271
	nop	
	dec	r9
	mov	qword ptr [rsp + 0x90], r9
.label_271:
	movsxd	rcx,  dword ptr [dword ptr [rip + optind]]
	lea	rsi, [rsi]
	mov	r13d, OFFSET FLAT:main.dummy_stdin
	mov	eax, 1
	nop	
	cmp	r15d, ecx
	nop	
	jle	.label_277
	sub	r15d, ecx
	lea	r13, [r14 + rcx*8]
	jne	.label_280
	mov	rbp, rbp
	mov	cl, 1
	mov	dl,  byte ptr [byte ptr [rip + forever]]
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_37
.label_280:
	mov	rsp, rsp
	movsxd	rax, r15d
.label_277:
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	mov	r15, rax
	jne	.label_286
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	jmp	.label_290
.label_286:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r13]
	movzx	eax, byte ptr [rdx]
	mov	ecx, 0x2d
	sub	ecx, eax
	jne	.label_258
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rdx + 1]
	neg	ecx
.label_258:
	lea	rsi, [rsi]
	test	ecx, ecx
	sete	al
	mov	rbp, rbp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	dil, al
.label_290:
	cmp	r15, 1
	lea	rsi, [rsi]
	je	.label_297
	mov	rdx, r15
	sub	rdx, rsi
	lea	rsi, [r13 + rsi*8 + 8]
	nop	dword ptr [rax + rax]
.label_30:
	mov	rsp, rsp
	mov	rax, qword ptr [rsi - 8]
	movzx	ebp, byte ptr [rax]
	nop	
	mov	ecx, 0x2d
	mov	rsp, rsp
	sub	ecx, ebp
	jne	.label_12
	movzx	ecx, byte ptr [rax + 1]
	neg	ecx
.label_12:
	nop	
	mov	rax, qword ptr [rsi]
	mov	rbp, rbp
	movzx	ebx, byte ptr [rax]
	mov	ebp, 0x2d
	mov	rsp, rsp
	sub	ebp, ebx
	mov	rbp, rbp
	jne	.label_20
	lea	rdi, [rdi]
	movzx	ebp, byte ptr [rax + 1]
	nop	
	neg	ebp
.label_20:
	nop	
	test	ecx, ecx
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	cl, 1
	je	.label_26
	mov	cl, dil
.label_26:
	test	ebp, ebp
	je	.label_29
	mov	al, cl
.label_29:
	add	rsi, 0x10
	add	rdx, -2
	mov	rbp, rbp
	mov	dil, al
	jne	.label_30
.label_297:
	and	al, 1
	mov	esi,  dword ptr [dword ptr [rip + follow_mode]]
	lea	rdi, [rdi]
	je	.label_34
	cmp	esi, 1
	mov	rsp, rsp
	je	.label_35
.label_34:
	lea	rdi, [rdi]
	mov	dl,  byte ptr [byte ptr [rip + forever]]
	mov	rbp, rbp
	test	al, al
	nop	
	sete	al
	xor	ecx, ecx
	mov	rbp, rbp
	test	dl, dl
	lea	rdi, [rdi]
	je	.label_37
	test	al, al
	jne	.label_37
	lea	rsi, [rsi]
	cmp	r15, 1
	lea	rdi, [rdi]
	jne	.label_52
	mov	eax,  dword ptr [dword ptr [rip + pid]]
	nop	
	test	eax, eax
	jne	.label_52
	cmp	esi, 2
	mov	rsp, rsp
	jne	.label_52
	mov	rsp, rsp
	lea	rdx, [rsp + 0xb0]
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	call	__fxstat
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_52
	mov	eax, 0xf000
	mov	rsp, rsp
	and	eax, dword ptr [rsp + 0xc8]
	cmp	eax, 0x8000
	jne	.label_65
.label_52:
	xor	edi, edi
	mov	rbp, rbp
	call	isatty
	mov	rsp, rsp
	test	eax, eax
	je	.label_65
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.19
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_65:
	mov	r9, qword ptr [rsp + 0x90]
	mov	dl,  byte ptr [byte ptr [rip + forever]]
	xor	ecx, ecx
	mov	r8b,  byte ptr [byte ptr [rip + from_start]]
.label_37:
	mov	qword ptr [rsp + 0x20], r15
	mov	rsp, rsp
	test	r9, r9
	jne	.label_83
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	or	r8b, dl
	je	.label_84
.label_83:
	mov	ebx, ecx
	mov	rsp, rsp
	movabs	rax, 0x155555555555556
	mov	rbp, rbp
	cmp	r15, rax
	mov	rbp, rbp
	jae	.label_85
	mov	rax, r15
	mov	rbp, rbp
	shl	rax, 5
	mov	rsp, rsp
	lea	rdi, [rax + rax*2]
	call	xmalloc
	mov	r14, rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], r14
	lea	rsi, [rsi]
	mov	ebp, ebx
	nop	
	test	bpl, bpl
	jne	.label_96
	mov	rsp, rsp
	lea	rcx, [r15 - 1]
	xor	eax, eax
	mov	rsp, rsp
	test	r15b, 3
	mov	rsp, rsp
	je	.label_100
	lea	rsi, [rsi]
	mov	edx, r15d
	nop	
	and	edx, 3
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, r14
	nop	dword ptr [rax + rax]
.label_104:
	mov	rdi, qword ptr [r13 + rax*8]
	lea	rdi, [rdi]
	mov	qword ptr [rsi], rdi
	inc	rax
	mov	rsp, rsp
	add	rsi, 0x60
	cmp	rdx, rax
	jne	.label_104
.label_100:
	lea	rsi, [rsi]
	cmp	rcx, 3
	mov	rsp, rsp
	jb	.label_96
	mov	rsp, rsp
	mov	rcx, r15
	sub	rcx, rax
	lea	rdi, [rdi]
	lea	rdx, [rax + rax*2]
	shl	rdx, 5
	lea	rsi, [rsi]
	add	rdx, r14
	lea	rax, [r13 + rax*8 + 0x18]
	nop	word ptr cs:[rax + rax]
.label_115:
	mov	rsp, rsp
	mov	rsi, qword ptr [rax - 0x18]
	mov	qword ptr [rdx], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rax - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x60], rsi
	mov	rsi, qword ptr [rax - 8]
	mov	qword ptr [rdx + 0xc0], rsi
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rdx + 0x120], rsi
	add	rdx, 0x180
	add	rax, 0x20
	add	rcx, -4
	jne	.label_115
.label_96:
	mov	rbp, rbp
	cmp	r12d, 1
	je	.label_123
	lea	rsi, [rsi]
	test	r12d, r12d
	lea	rsi, [rsi]
	jne	.label_126
	cmp	r15, 2
	mov	rbp, rbp
	jb	.label_126
.label_123:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + print_headers]],  1
.label_126:
	lea	rdi, [rdi]
	mov	al, 1
	test	bpl, bpl
	mov	dword ptr [rsp + 0x20b8], ebp
	mov	rsp, rsp
	jne	.label_130
	mov	al, 1
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_132
.label_149:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x2168], rax
	lea	rdi, [rdi]
	xor	r14d, r14d
	lea	rbp, [rsp + 0xb0]
.label_167:
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	and	al, 1
	nop	
	mov	ebx, 0
	mov	eax, 0xa
	cmovne	ebx, eax
	mov	rdx, r14
	nop	
.label_147:
	test	rdx, rdx
	lea	rdi, [rdi]
	je	.label_142
	mov	rdi, rbp
	mov	esi, ebx
	lea	rdi, [rdi]
	call	memrchr
	test	rax, rax
	mov	rsp, rsp
	je	.label_142
	mov	rdx, rax
	sub	rdx, rbp
	lea	rdi, [rdi]
	dec	r15
	cmp	r15, -1
	jne	.label_147
	mov	rsp, rsp
	jmp	.label_165
.label_142:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x78]
	cmp	r12, rsi
	lea	rsi, [rsi]
	je	.label_171
	add	r12, -0x2000
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rbx, qword ptr [rsp + 0x38]
	mov	edi, ebx
	nop	
	mov	rsi, r12
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	call	xlseek
	lea	rsi, [rsi]
	mov	edx, 0x2000
	mov	edi, ebx
	nop	
	lea	rsi, [rsp + 0xb0]
	call	safe_read
	lea	rsi, [rsi]
	mov	r14, rax
	cmp	r14, -1
	je	.label_169
	test	r14, r14
	lea	rax, [r14 + r12]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x2168], rax
	lea	rbp, [rsp + 0xb0]
	jne	.label_167
	mov	rbp, rbp
	jmp	.label_163
.label_165:
	lea	rsi, [r14 - 1]
	sub	rsi, rdx
	lea	rsi, [rsi]
	je	.label_177
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	xwrite_stdout
.label_177:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x2178]
	sub	rcx, r14
	sub	rcx, r12
	mov	rsp, rsp
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x38]
	call	dump_remainder
	mov	rbp, rbp
	add	qword ptr [rsp + 0x2168], rax
.label_163:
	nop	
	mov	r15, qword ptr [rsp + 0x20]
	mov	r14, qword ptr [rsp + 0x60]
	nop	
	mov	r12, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	jmp	.label_48
.label_171:
	xor	edx, edx
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	edi, ebx
	nop	
	mov	r14, rsi
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rcx, rbp
	call	xlseek
	xor	edi, edi
	mov	rsi, rbp
	mov	edx, ebx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x2178]
	nop	
	call	dump_remainder
	add	rax, r14
	mov	qword ptr [rsp + 0x2168], rax
	mov	rbp, rbp
	jmp	.label_163
.label_169:
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	nop	
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	error
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x2168]
	jmp	.label_207
	nop	word ptr cs:[rax + rax]
.label_132:
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x4f], al
	mov	r13, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 0x50], r13
	lea	rbx, [rcx + rcx*2]
	shl	rbx, 5
	mov	rdi, qword ptr [r14 + rbx]
	movzx	eax, byte ptr [rdi]
	mov	rsp, rsp
	cmp	eax, 0x2d
	jne	.label_210
	cmp	byte ptr [rdi + 1], 0
	nop	
	je	.label_217
.label_210:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x2170], rcx
	mov	dword ptr [rsp + 0x2150], 0
	xor	esi, esi
	xor	eax, eax
	call	open_safer
	mov	r12d, eax
	jmp	.label_221
.label_217:
	mov	qword ptr [rsp + 0x2170], rcx
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	lea	rdi, [rdi]
	xor	r12d, r12d
	mov	rbp, rbp
	mov	al, 1
	mov	dword ptr [rsp + 0x2150], eax
	nop	word ptr [rax + rax]
.label_221:
	mov	qword ptr [rsp + 0x38], r12
	lea	rsi, [rsi]
	mov	rcx, rbx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x2180], rcx
	mov	rbp, rbp
	lea	rax, [r14 + rcx]
	nop	
	mov	qword ptr [rsp + 0x2160], rax
	mov	bl,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	lea	rdi, [rdi]
	and	bl, 1
	cmp	r12d, -1
	sete	al
	nop	
	and	al, bl
	xor	al, 1
	cmp	r12d, -1
	mov	byte ptr [r14 + rcx + 0x36], al
	mov	rsp, rsp
	je	.label_42
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + print_headers]]
	mov	rsp, rsp
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	jne	.label_232
	mov	rax, qword ptr [rsp + 0x2160]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax]
	movzx	eax, byte ptr [rcx]
	cmp	eax, 0x2d
	mov	rbp, rbp
	jne	.label_235
	lea	rdi, [rdi]
	cmp	byte ptr [rcx + 1], 0
	mov	rbp, rbp
	jne	.label_235
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	nop	
.label_235:
	mov	al,  byte ptr [byte ptr [rip + write_header.first_file]]
	and	al, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.85
	mov	rsp, rsp
	cmovne	rdx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.84
	nop	
	xor	eax, eax
	call	__printf_chk
	mov	byte ptr [byte ptr [rip + write_header.first_file]],  1
.label_232:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x2160]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2d
	lea	rdi, [rdi]
	jne	.label_233
	mov	rbp, rbp
	cmp	byte ptr [rax + 1], 0
	jne	.label_233
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
.label_233:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [rip + count_lines]],  0
	je	.label_253
	nop	
	mov	edi, 1
	mov	esi, r12d
	lea	rsi, [rsi]
	lea	rdx, [rsp + 0x20c0]
	mov	rbp, rbp
	call	__fxstat
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_262
	cmp	byte ptr [byte ptr [rip + from_start]],  0
	lea	rdi, [rdi]
	je	.label_58
	test	r13, r13
	mov	eax, 0
	nop	
	mov	qword ptr [rsp + 0x2168], rax
	mov	rsp, rsp
	je	.label_266
.label_281:
	lea	rsi, [rsi]
	mov	rbx, r13
	lea	rsi, [rsi]
	mov	edx, 0x2000
	lea	rdi, [rdi]
	mov	edi, r12d
	mov	rbp, rbp
	lea	rsi, [rsp + 0xb0]
	nop	
	call	safe_read
	mov	r13b, 1
	mov	rsp, rsp
	test	rax, rax
	je	.label_48
	cmp	rax, -1
	mov	r13, rbx
	je	.label_55
	lea	rbx, [rsp + rax + 0xb0]
	add	qword ptr [rsp + 0x2168], rax
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	and	al, 1
	mov	rbp, rbp
	mov	ebp, 0
	lea	rsi, [rsi]
	mov	eax, 0xa
	lea	rdi, [rdi]
	cmovne	ebp, eax
	lea	rax, [rsp + 0xb0]
.label_283:
	mov	rdx, rbx
	mov	rsp, rsp
	sub	rdx, rax
	nop	
	mov	rdi, rax
	mov	esi, ebp
	call	memchr
	test	rax, rax
	je	.label_281
	nop	
	inc	rax
	mov	rbp, rbp
	dec	r13
	jne	.label_283
	cmp	rax, rbx
	jae	.label_266
	sub	rbx, rax
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	mov	rsi, rbx
	mov	rsp, rsp
	call	xwrite_stdout
.label_266:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rcx, -1
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	edx, r12d
	call	dump_remainder
	lea	rdi, [rdi]
	add	qword ptr [rsp + 0x2168], rax
	lea	rdi, [rdi]
	jmp	.label_292
	nop	word ptr cs:[rax + rax]
.label_42:
	lea	rsi, [rsi]
	cmp	byte ptr [byte ptr [rip + forever]],  0
	je	.label_295
	mov	rbp, qword ptr [rsp + 0x2180]
	mov	dword ptr [r14 + rbp + 0x38], 0xffffffff
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [r14 + rbp + 0x3c], ecx
	xor	bl, 1
	mov	rsp, rsp
	mov	byte ptr [r14 + rbp + 0x34], bl
	xorpd	xmm0, xmm0
	mov	rbp, rbp
	movupd	xmmword ptr [r14 + rbp + 0x20], xmm0
	jmp	.label_14
	nop	
.label_253:
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, r12d
	mov	rbp, rbp
	lea	rdx, [rsp + 0x20c0]
	lea	rsi, [rsi]
	call	__fxstat
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_28
.label_262:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rsp + 0x2168], rax
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.86
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	rbp, rbp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_48
.label_295:
	mov	rbp, rbp
	call	__errno_location
.label_14:
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.79
.label_275:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x2160]
	mov	rsi, qword ptr [rax]
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	mov	rbp, rbp
	jne	.label_63
	nop	
	cmp	byte ptr [rsi + 1], 0
	jne	.label_63
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi, rax
	nop	word ptr cs:[rax + rax]
.label_63:
	nop	
	mov	edi, 4
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	xor	r13d, r13d
	lea	rdi, [rdi]
	xor	edi, edi
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebx
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	error
	jmp	.label_79
.label_28:
	mov	rbp, rbp
	mov	cl,  byte ptr [byte ptr [rip + presume_input_pipe]]
	lea	rsi, [rsi]
	xor	cl, 1
	lea	rsi, [rsi]
	test	r13, r13
	setns	al
	and	al, cl
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rip + from_start]],  0
	mov	rbp, rbp
	je	.label_81
	test	al, al
	mov	rsp, rsp
	je	.label_88
	nop	
	mov	eax, dword ptr [rsp + 0x20d8]
	mov	rsp, rsp
	mov	ecx, 0xf000
	lea	rsi, [rsi]
	and	eax, ecx
	nop	
	cmp	eax, 0x8000
	lea	rdi, [rdi]
	jne	.label_91
	mov	edx, 1
	mov	edi, r12d
	mov	rbp, rbp
	mov	rsi, r13
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	call	xlseek
	test	rax, rax
	jns	.label_99
.label_91:
	mov	edx, 1
	nop	
	mov	edi, r12d
	mov	rsi, r13
	call	lseek
	cmp	rax, -1
	nop	
	je	.label_88
.label_99:
	mov	rbx, r13
	mov	rsp, rsp
	mov	r13, -1
	nop	
	jmp	.label_102
.label_58:
	mov	al,  byte ptr [byte ptr [rip + presume_input_pipe]]
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	jne	.label_107
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x20d8]
	mov	ecx, 0xf000
	mov	rbp, rbp
	and	eax, ecx
	lea	rsi, [rsi]
	cmp	eax, 0x8000
	mov	rsp, rsp
	jne	.label_107
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsp, rsp
	mov	edi, r12d
	call	lseek
	mov	rbx, rax
	mov	rsp, rsp
	cmp	rbx, -1
	je	.label_107
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 2
	nop	
	mov	edi, r12d
	call	lseek
	mov	rdx, rax
	sub	rdx, rbx
	lea	rdi, [rdi]
	jle	.label_120
	lea	rsi, [rsi]
	mov	r15, r13
	mov	r13b, 1
	test	rax, rax
	je	.label_122
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], r12
	nop	
	mov	qword ptr [rsp + 0x60], r14
	lea	rsi, [rsi]
	test	r15, r15
	je	.label_127
	nop	
	mov	qword ptr [rsp + 0x78], rbx
	lea	rsi, [rsi]
	mov	rcx, rdx
	mov	rbp, rbp
	sar	rcx, 0x3f
	shr	rcx, 0x33
	add	rcx, rdx
	nop	
	and	rcx, 0xffffffffffffe000
	sub	rdx, rcx
	mov	ebx, 0x2000
	lea	rsi, [rsi]
	cmovne	rbx, rdx
	mov	r12, rax
	nop	
	mov	qword ptr [rsp + 0x2178], rax
	sub	r12, rbx
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x38]
	mov	edi, ebp
	mov	rsi, r12
	mov	rcx, qword ptr [rsp + 0x30]
	call	xlseek
	mov	edi, ebp
	lea	rsi, [rsp + 0xb0]
	mov	rdx, rbx
	call	safe_read
	nop	
	mov	r14, rax
	mov	rbp, rbp
	cmp	r14, -1
	je	.label_144
	lea	rsi, [rsi]
	lea	rax, [r14 + r12]
	test	r14, r14
	nop	
	je	.label_149
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x2168], rax
	mov	rbp, rbp
	lea	rbp, [rsp + 0xb0]
	lea	rsi, [rsi]
	movsx	eax, byte ptr [r14 + rbp - 1]
	nop	
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	nop	
	and	cl, 1
	mov	ecx, 0
	mov	rsp, rsp
	mov	edx, 0xa
	lea	rdi, [rdi]
	cmovne	ecx, edx
	lea	rdi, [rdi]
	cmp	eax, ecx
	lea	rdi, [rdi]
	setne	al
	lea	rdi, [rdi]
	movzx	eax, al
	sub	r15, rax
	nop	
	jmp	.label_167
.label_88:
	test	r13, r13
	mov	rbp, rbp
	mov	ebx, 0
	je	.label_168
	nop	dword ptr [rax + rax]
.label_185:
	mov	rbp, rbp
	mov	rbp, r13
	lea	rsi, [rsi]
	mov	edx, 0x2000
	mov	edi, r12d
	mov	rbp, rbp
	lea	rsi, [rsp + 0xb0]
	call	safe_read
	mov	r13b, 1
	test	rax, rax
	je	.label_178
	mov	rbp, rbp
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_180
	lea	rsi, [rsi]
	add	rbx, rax
	lea	rdi, [rdi]
	mov	rcx, rbp
	nop	
	sub	rcx, rax
	jb	.label_183
	mov	rsp, rsp
	mov	r13, rcx
	jne	.label_185
	mov	rsp, rsp
	jmp	.label_168
.label_81:
	mov	rbx, -1
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	je	.label_188
	mov	eax, dword ptr [rsp + 0x20d8]
	mov	ecx, 0x2000
	nop	
	or	eax, ecx
	lea	rdi, [rdi]
	and	eax, 0xf000
	lea	rdi, [rdi]
	cmp	eax, 0xa000
	jne	.label_189
	mov	rbp, qword ptr [rsp + 0x20f0]
	lea	rsi, [rsi]
	jmp	.label_191
.label_188:
	mov	rbp, -1
	mov	rbp, rbp
	jmp	.label_191
.label_183:
	sub	rax, rbp
	jne	.label_193
.label_168:
	mov	r13, -1
	jmp	.label_102
.label_189:
	mov	rsi, r13
	nop	
	neg	rsi
	mov	edx, 2
	mov	edi, r12d
	call	lseek
	mov	rbx, rax
	lea	rdi, [rdi]
	lea	rbp, [rbx + r13]
	cmp	rbx, -1
	cmove	rbp, rbx
.label_191:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20f8]
	mov	rbp, rbp
	movabs	rcx, 0x2000000000000001
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	mov	ecx, 0x200
	cmovb	rcx, rax
	lea	rsi, [rsi]
	test	rax, rax
	mov	eax, 0x200
	cmovle	rcx, rax
	cmp	rbp, rcx
	lea	rdi, [rdi]
	jle	.label_199
	cmp	rbx, -1
	jne	.label_208
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 1
	lea	rdi, [rdi]
	mov	edi, r12d
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	call	xlseek
	mov	rbx, rax
.label_208:
	nop	
	mov	rax, rbp
	mov	rsp, rsp
	sub	rax, rbx
	jle	.label_102
	cmp	rax, r13
	mov	rsp, rsp
	jbe	.label_102
	nop	
	sub	rbp, r13
	nop	
	xor	edx, edx
	mov	rsp, rsp
	mov	edi, r12d
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	call	xlseek
	mov	rbx, rbp
	jmp	.label_102
.label_199:
	mov	r13, r12
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r15
	nop	
	mov	edi, 0x2010
	call	xmalloc
	mov	r15, rax
	lea	rsi, [rsi]
	xorpd	xmm0, xmm0
	mov	rsp, rsp
	movupd	xmmword ptr [r15 + 0x2000], xmm0
	mov	rsp, rsp
	mov	edi, 0x2010
	lea	rsi, [rsi]
	call	xmalloc
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x2168], rcx
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	r14, r15
	jmp	.label_225
.label_120:
	mov	rsp, rsp
	xor	edx, edx
	mov	edi, r12d
	mov	rsi, rbx
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	call	xlseek
.label_107:
	nop	
	mov	edi, 0x2018
	lea	rsi, [rsi]
	call	xmalloc
	mov	rbx, rax
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [rbx + 0x2000], xmm0
	nop	
	mov	qword ptr [rbx + 0x2010], 0
	mov	edi, 0x2018
	mov	rsp, rsp
	call	xmalloc
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x2168], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x98], rbx
	jmp	.label_237
.label_180:
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x2168], rbx
	mov	ebx, dword ptr [rax]
	nop	
	xor	r13d, r13d
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.80
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	esi, ebx
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x2168]
	mov	rdx, rbp
	call	error
.label_178:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x2168], rbx
	mov	rbp, rbp
	jmp	.label_48
.label_193:
	lea	rdi, [rsp + rbp + 0xb0]
	lea	rsi, [rsi]
	mov	rsi, rax
	call	xwrite_stdout
	mov	rsp, rsp
	mov	r13, -1
.label_102:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	edx, r12d
	mov	rbp, rbp
	mov	rcx, r13
	nop	
	call	dump_remainder
	mov	rsp, rsp
	add	rax, rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x2168], rax
.label_292:
	mov	rbp, rbp
	mov	r13b, 1
	nop	
	jmp	.label_48
.label_55:
	mov	rbp, rbp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	r13d, r13d
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	error
	jmp	.label_48
.label_122:
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x2168], rax
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_48
.label_76:
	mov	rbp, rbp
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x2010]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x98], rdx
	mov	r12, qword ptr [rsp + 0x38]
	nop	word ptr cs:[rax + rax]
.label_237:
	mov	qword ptr [rsp + 0x78], rcx
	mov	rbp, rbp
	mov	rbp, rbx
	lea	rdi, [rdi]
	jmp	.label_202
.label_69:
	mov	qword ptr [rsp + 0x78], rdx
	mov	edi, 0x2018
	call	xmalloc
	mov	rbp, rbx
	mov	r12, qword ptr [rsp + 0x38]
.label_202:
	mov	qword ptr [rsp + 0x2178], rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	lea	r14, [rbx + 0x2008]
	lea	rsi, [rsi]
	jmp	.label_285
	nop	word ptr cs:[rax + rax]
.label_129:
	mov	qword ptr [rsp + 0x78], rdx
	lea	rsi, [rsi]
	add	rdi, rbp
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, r15
	call	memcpy
	movdqu	xmm0, xmmword ptr [rbx + 0x2000]
	movdqu	xmm1, xmmword ptr [rbp + 0x2000]
	mov	rsp, rsp
	paddq	xmm1, xmm0
	movdqu	xmmword ptr [rbp + 0x2000], xmm1
	mov	r12, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x50]
.label_285:
	mov	rbp, rbp
	mov	edx, 0x2000
	mov	edi, r12d
	mov	rbp, rbp
	mov	rsi, rbx
	call	safe_read
	mov	r15, rax
	lea	rsi, [rsi]
	lea	rax, [r15 + 1]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_15
	mov	qword ptr [rbx + 0x2000], r15
	mov	rbp, rbp
	xorpd	xmm0, xmm0
	lea	rdi, [rdi]
	movupd	xmmword ptr [r14], xmm0
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	and	al, 1
	mov	r13d, 0
	nop	
	mov	eax, 0xa
	cmovne	r13d, eax
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	mov	esi, r13d
	mov	rbp, rbp
	mov	rdx, r15
	nop	
	call	memchr
	nop	
	test	rax, rax
	je	.label_33
	lea	rbp, [rbx + r15]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_49:
	lea	rsi, [rsi]
	inc	rax
	inc	r12
	mov	qword ptr [r14], r12
	mov	rdx, rbp
	lea	rdi, [rdi]
	sub	rdx, rax
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	mov	esi, r13d
	call	memchr
	mov	rsp, rsp
	test	rax, rax
	jne	.label_49
	lea	rdi, [rdi]
	jmp	.label_53
	nop	word ptr cs:[rax + rax]
.label_33:
	nop	
	xor	r12d, r12d
.label_53:
	add	qword ptr [rsp + 0x2168], r15
	mov	rax, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	add	rax, r12
	mov	rdx, rax
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x2178]
	mov	rdi, qword ptr [rbp + 0x2000]
	nop	
	mov	rax, r15
	add	rax, rdi
	cmp	rax, 0x1fff
	jbe	.label_129
	mov	rsp, rsp
	mov	qword ptr [rbp + 0x2010], rbx
	mov	rcx, rdx
	mov	rax, qword ptr [rsp + 0x98]
	mov	rbp, rbp
	sub	rcx, qword ptr [rax + 0x2008]
	nop	
	mov	r13, qword ptr [rsp + 0x50]
	nop	
	cmp	rcx, r13
	lea	rdi, [rdi]
	jbe	.label_69
	nop	
	jmp	.label_76
.label_15:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	free
	cmp	r15, -1
	je	.label_78
	test	r13, r13
	mov	rdx, r13
	lea	rsi, [rsi]
	mov	r13b, 1
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x20]
	mov	r14, qword ptr [rsp + 0x60]
	je	.label_13
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x2000]
	nop	
	test	rax, rax
	je	.label_13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r12
	movsx	eax, byte ptr [rax + rbp - 1]
	lea	rdi, [rdi]
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	lea	rdi, [rdi]
	and	cl, 1
	lea	rdi, [rdi]
	mov	r15d, 0
	lea	rdi, [rdi]
	mov	ecx, 0xa
	cmovne	r15d, ecx
	cmp	eax, r15d
	jne	.label_87
	mov	rdi, qword ptr [rsp + 0x78]
	jmp	.label_251
.label_78:
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	lea	rsi, [rsi]
	mov	rdx, rbp
	call	error
	mov	r15, qword ptr [rsp + 0x20]
	mov	r14, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	jmp	.label_13
.label_87:
	nop	
	inc	qword ptr [rbp + 0x2008]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	inc	rdi
.label_251:
	mov	rbp, r14
	mov	rsp, rsp
	mov	rax, rdi
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	sub	rax, qword ptr [rsi + 0x2008]
	mov	r12, rdx
	lea	rdi, [rdi]
	cmp	rax, r12
	mov	rbx, rsi
	lea	rsi, [rsi]
	jbe	.label_236
	nop	dword ptr [rax + rax]
.label_121:
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbx, qword ptr [rbx + 0x2010]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbx + 0x2008]
	nop	
	cmp	rax, r12
	ja	.label_121
.label_236:
	mov	rbp, rbp
	mov	r14, qword ptr [rbx + 0x2000]
	mov	rsp, rsp
	add	r14, rbx
	mov	rbp, rbp
	cmp	rdi, r12
	jbe	.label_287
	nop	
	sub	r12, rdi
	mov	rax, rbx
	nop	dword ptr [rax]
.label_73:
	mov	rdx, r14
	lea	rsi, [rsi]
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r15d
	call	memchr
	nop	
	test	rax, rax
	je	.label_134
	inc	rax
	inc	r12
	jne	.label_73
	nop	
	jmp	.label_82
.label_287:
	mov	rax, rbx
.label_82:
	mov	rsp, rsp
	sub	r14, rax
	mov	rdi, rax
	mov	rsi, r14
	jmp	.label_140
	nop	word ptr [rax + rax]
.label_143:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx + 0x2000]
	mov	rdi, rbx
.label_140:
	call	xwrite_stdout
	mov	rbx, qword ptr [rbx + 0x2010]
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_143
	mov	r15, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	r14, rbp
	mov	r12, qword ptr [rsp + 0x38]
.label_13:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_150
	nop	word ptr [rax + rax]
.label_158:
	mov	rsp, rsp
	mov	rbx, qword ptr [rdi + 0x2010]
	call	free
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	rdi, rbx
	nop	
	jne	.label_158
.label_150:
	test	r13b, r13b
	setne	r13b
	jmp	.label_48
.label_127:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x2168], rax
	jmp	.label_163
.label_144:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	nop	
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rbp
	mov	rsp, rsp
	call	error
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x2178]
.label_207:
	lea	rsi, [rsi]
	xor	r13d, r13d
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x2168], rax
	jmp	.label_163
.label_204:
	mov	rax, r14
	lea	rsi, [rsi]
	mov	r14, qword ptr [r14 + 0x2008]
.label_225:
	lea	rdi, [rdi]
	mov	r12, r15
	mov	rbp, rbp
	mov	r15, rax
	mov	rbp, rbp
	mov	rbx, rcx
	jmp	.label_187
	nop	
.label_128:
	lea	rdi, [rdi]
	add	rdi, r12
	mov	rsi, r15
	mov	rdx, rbp
	mov	rsp, rsp
	call	memcpy
	mov	rax, qword ptr [r15 + 0x2000]
	add	qword ptr [r12 + 0x2000], rax
.label_187:
	mov	rbp, rbp
	mov	edx, 0x2000
	lea	rsi, [rsi]
	mov	edi, r13d
	mov	rsi, r15
	call	safe_read
	mov	rbp, rbp
	mov	rbp, rax
	lea	rsi, [rsi]
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_194
	lea	rdi, [rdi]
	add	qword ptr [rsp + 0x2168], rbp
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x2000], rbp
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x2008], 0
	lea	rsi, [rsi]
	add	rbx, rbp
	mov	rdi, qword ptr [r12 + 0x2000]
	mov	rax, rbp
	nop	
	add	rax, rdi
	lea	rdi, [rdi]
	cmp	rax, 0x1fff
	jbe	.label_128
	mov	qword ptr [r12 + 0x2008], r15
	mov	rcx, rbx
	sub	rcx, qword ptr [r14 + 0x2000]
	cmp	rcx, qword ptr [rsp + 0x50]
	mov	rbp, rbp
	ja	.label_204
	mov	edi, 0x2010
	nop	
	call	xmalloc
	nop	
	mov	r12, r15
	mov	rbp, rbp
	mov	r15, rax
	mov	rbp, rbp
	jmp	.label_187
.label_194:
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	cmp	rbp, -1
	lea	rdi, [rdi]
	je	.label_212
	mov	rsi, qword ptr [r14 + 0x2000]
	mov	rax, rbx
	sub	rax, rsi
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rbp, r14
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x20]
	jbe	.label_215
	nop	word ptr [rax + rax]
.label_279:
	mov	rbx, rax
	mov	rbp, qword ptr [rbp + 0x2008]
	mov	rsi, qword ptr [rbp + 0x2000]
	nop	
	sub	rax, rsi
	cmp	rax, rcx
	ja	.label_279
.label_215:
	mov	rbp, rbp
	sub	rbx, rcx
	mov	eax, 0
	mov	rsp, rsp
	cmovbe	rbx, rax
	lea	rdi, [rbp + rbx]
	mov	rbp, rbp
	sub	rsi, rbx
	mov	rbp, rbp
	call	xwrite_stdout
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbp + 0x2008]
	mov	rbp, rbp
	mov	bpl, 1
	test	rbx, rbx
	mov	r12, r13
	mov	rbp, rbp
	je	.label_226
	nop	
.label_230:
	mov	rsi, qword ptr [rbx + 0x2000]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	xwrite_stdout
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbx + 0x2008]
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_230
	jmp	.label_226
.label_212:
	lea	rsi, [rsi]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	lea	rdi, [rdi]
	xor	ebp, ebp
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, r15d
	lea	rsi, [rsi]
	mov	rdx, rbx
	nop	
	call	error
	mov	r15, qword ptr [rsp + 0x20]
	mov	r12, r13
.label_226:
	test	r14, r14
	je	.label_145
	nop	word ptr cs:[rax + rax]
.label_294:
	mov	rbx, qword ptr [r14 + 0x2008]
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rbp, rbp
	call	free
	test	rbx, rbx
	nop	
	mov	r14, rbx
	mov	rbp, rbp
	jne	.label_294
.label_145:
	test	bpl, bpl
	setne	r13b
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x60]
.label_48:
	cmp	byte ptr [byte ptr [rip + forever]],  0
	mov	rsp, rsp
	je	.label_250
	mov	al, r13b
	not	al
	lea	rdi, [rdi]
	movzx	eax, al
	shl	eax, 0x1f
	mov	rsp, rsp
	sar	eax, 0x1f
	mov	r15, qword ptr [rsp + 0x2180]
	mov	rsp, rsp
	lea	rbx, [r14 + r15 + 0x3c]
	nop	
	mov	dword ptr [r14 + r15 + 0x3c], eax
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, r12d
	lea	rdx, [rsp + 0xb0]
	call	__fxstat
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	js	.label_261
	mov	eax, dword ptr [rsp + 0xc8]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	and	ecx, 0xf000
	cmp	ecx, 0x7fff
	lea	rdi, [rdi]
	jg	.label_264
	cmp	ecx, 0x1000
	je	.label_268
	mov	rsp, rsp
	cmp	ecx, 0x2000
	je	.label_268
	nop	
	jmp	.label_106
	nop	word ptr cs:[rax + rax]
.label_250:
	mov	eax, dword ptr [rsp + 0x2150]
	mov	rbp, rbp
	test	al, al
	jne	.label_79
	mov	edi, r12d
	call	close
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_79
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.80
	jmp	.label_275
.label_261:
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbx], ecx
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x2160]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	jne	.label_282
	lea	rsi, [rsi]
	cmp	byte ptr [rsi + 1], 0
	lea	rdi, [rdi]
	jne	.label_282
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rsi, rax
.label_282:
	lea	rdi, [rdi]
	mov	edi, 4
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	error
	lea	rsi, [rsi]
	jmp	.label_11
.label_264:
	mov	rsp, rsp
	cmp	ecx, 0x8000
	je	.label_268
	mov	rsp, rsp
	cmp	ecx, 0xc000
	jne	.label_106
.label_268:
	mov	rbp, rbp
	test	r13b, r13b
	je	.label_11
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x2150]
	mov	rbp, rbp
	test	cl, cl
	mov	ecx, 1
	mov	rsp, rsp
	mov	edx, 0xffffffff
	lea	rdi, [rdi]
	cmovne	ecx, edx
	mov	dword ptr [r14 + r15 + 0x38], r12d
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x2168]
	lea	rsi, [rsi]
	mov	qword ptr [r14 + r15 + 8], rdx
	movups	xmm0, xmmword ptr [rsp + 0x108]
	movups	xmmword ptr [r14 + r15 + 0x10], xmm0
	nop	
	movapd	xmm0, xmmword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	movupd	xmmword ptr [r14 + r15 + 0x20], xmm0
	mov	dword ptr [r14 + r15 + 0x30], eax
	mov	dword ptr [r14 + r15 + 0x40], ecx
	nop	
	mov	qword ptr [r14 + r15 + 0x58], 0
	mov	byte ptr [r14 + r15 + 0x34], 0
	mov	rbp, rbp
	mov	rbx, r15
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x2160]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	jne	.label_17
	cmp	byte ptr [rsi + 1], 0
	mov	r15, qword ptr [rsp + 0x20]
	nop	
	jne	.label_50
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.83
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi, rax
	jmp	.label_50
.label_106:
	nop	
	mov	r13, r12
	nop	
	lea	rax, [r14 + r15 + 0x36]
	lea	rsi, [rsi]
	mov	dword ptr [rbx], 0xffffffff
	mov	rsp, rsp
	mov	byte ptr [rax], 0
	mov	rbp, rbp
	lea	rbx, [r14 + r15 + 0x34]
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	and	al, 1
	mov	rbp, rbp
	xor	al, 1
	mov	byte ptr [r14 + r15 + 0x34], al
	mov	r12, r14
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.81
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rax, qword ptr [rsp + 0x2160]
	mov	rdx, qword ptr [rax]
	mov	rsp, rsp
	movzx	eax, byte ptr [rdx]
	mov	rbp, rbp
	cmp	eax, 0x2d
	lea	rdi, [rdi]
	jne	.label_75
	mov	rbp, rbp
	cmp	byte ptr [rdx + 1], 0
	jne	.label_75
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.83
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
.label_75:
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	cmp	byte ptr [rbx], 0
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str_0
	je	.label_90
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.82
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	r8, rax
.label_90:
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, r14
	lea	rsi, [rsi]
	mov	rcx, rbp
	call	error
	mov	r14, r12
	nop	
	mov	r12, r13
	nop	word ptr [rax + rax]
.label_11:
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	xor	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [r14 + r15 + 0x34], al
	mov	rax, qword ptr [rsp + 0x2160]
	mov	rbx, qword ptr [rax]
	nop	
	movzx	eax, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	eax, 0x2d
	jne	.label_109
	nop	
	cmp	byte ptr [rbx + 1], 0
	jne	.label_109
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbx, rax
	nop	
.label_109:
	lea	eax, [r12 + 1]
	cmp	eax, 2
	jb	.label_112
	mov	edi, r12d
	call	close
	test	eax, eax
	je	.label_112
	lea	rsi, [rsi]
	call	__errno_location
	mov	r13, r12
	lea	rsi, [rsi]
	mov	r12, r14
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.93
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r14d
	mov	rbp, rbp
	mov	r14, r12
	lea	rdi, [rdi]
	mov	rdx, rbp
	nop	
	mov	r8d, r13d
	call	error
.label_112:
	mov	dword ptr [r14 + r15 + 0x38], 0xffffffff
	xor	r13d, r13d
	nop	
	mov	r15, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	jmp	.label_79
.label_17:
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x20]
.label_50:
	mov	edi, r12d
	mov	rsp, rsp
	call	fremote
	mov	byte ptr [r14 + rbx + 0x35], al
	nop	
.label_79:
	mov	rsp, rsp
	test	r13b, r13b
	setne	al
	mov	rsp, rsp
	mov	cl, byte ptr [rsp + 0x4f]
	mov	rsp, rsp
	and	cl, al
	mov	rbp, rbp
	mov	al, cl
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x2170]
	lea	rsi, [rsi]
	inc	rcx
	nop	
	cmp	rcx, r15
	mov	rbp, rbp
	jb	.label_132
.label_130:
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x4f], al
	cmp	byte ptr [byte ptr [rip + forever]],  0
	sete	al
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0x20b8]
	lea	rsi, [rsi]
	or	al, cl
	jne	.label_43
	nop	
	lea	rcx, [r14 + 0x38]
	xor	eax, eax
	mov	edx, 0xf000
	nop	
	mov	rsi, r15
	nop	
.label_170:
	mov	rdi, qword ptr [rcx - 0x38]
	movzx	ebp, byte ptr [rdi]
	mov	rsp, rsp
	cmp	ebp, 0x2d
	lea	rdi, [rdi]
	jne	.label_160
	cmp	byte ptr [rdi + 1], 0
	mov	rbp, rbp
	jne	.label_160
	cmp	byte ptr [rcx - 4], 0
	jne	.label_160
	cmp	dword ptr [rcx], 0
	lea	rsi, [rsi]
	js	.label_160
	mov	edi, dword ptr [rcx - 8]
	mov	rbp, rbp
	and	edi, edx
	lea	rsi, [rsi]
	cmp	edi, 0x1000
	jne	.label_160
	lea	rsi, [rsi]
	mov	dword ptr [rcx], 0xffffffff
	mov	byte ptr [rcx - 4], 1
	nop	
	jmp	.label_198
	nop	dword ptr [rax]
.label_160:
	inc	rax
.label_198:
	mov	rbp, rbp
	add	rcx, 0x60
	dec	rsi
	jne	.label_170
	test	rax, rax
	je	.label_43
	nop	
	lea	rdx, [rsp + 0x20c0]
	nop	
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, 1
	mov	rsp, rsp
	call	__fxstat
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	js	.label_179
	mov	eax, 0xf000
	lea	rsi, [rsi]
	and	eax, dword ptr [rsp + 0x20d8]
	mov	rbp, rbp
	cmp	eax, 0x1000
	lea	rsi, [rsi]
	sete	byte ptr [byte ptr [rip + monitor_output]]
	mov	cl,  byte ptr [byte ptr [rip + disable_inotify]]
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	and	cl, 1
	jne	.label_18
	mov	rbp, rbp
	mov	rcx, r14
	nop	word ptr cs:[rax + rax]
.label_192:
	cmp	byte ptr [rcx + 0x34], 0
	jne	.label_190
	nop	
	mov	rdx, qword ptr [rcx]
	nop	
	movzx	esi, byte ptr [rdx]
	cmp	esi, 0x2d
	jne	.label_190
	cmp	byte ptr [rdx + 1], 0
	je	.label_40
	nop	dword ptr [rax]
.label_190:
	lea	rdi, [rdi]
	inc	rax
	add	rcx, 0x60
	cmp	rax, r15
	mov	rbp, rbp
	jb	.label_192
	mov	rsp, rsp
	lea	rax, [r14 + 0x38]
	nop	
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_197:
	cmp	dword ptr [rax], 0
	js	.label_196
	nop	
	cmp	byte ptr [rax - 3], 0
	jne	.label_40
.label_196:
	lea	rdi, [rdi]
	inc	rcx
	lea	rdi, [rdi]
	add	rax, 0x60
	cmp	rcx, r15
	mov	rsp, rsp
	jb	.label_197
	lea	rax, [r14 + 0x38]
	mov	rsp, rsp
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_205:
	mov	r13, r14
	mov	rsp, rsp
	cmp	dword ptr [rax], 0
	js	.label_201
	lea	rdi, [rdi]
	cmp	byte ptr [rax - 3], 0
	je	.label_186
.label_201:
	mov	rsp, rsp
	inc	rcx
	lea	rsi, [rsi]
	add	rax, 0x60
	cmp	rcx, r15
	mov	r14, r13
	jb	.label_205
.label_40:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + disable_inotify]],  1
.label_18:
	mov	byte ptr [byte ptr [rip + disable_inotify]],  1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	cmp	r15, 1
	jne	.label_209
	nop	
	mov	ecx,  dword ptr [dword ptr [rip + pid]]
	test	ecx, ecx
	mov	rsp, rsp
	jne	.label_209
	cmp	dword ptr [dword ptr [rip + follow_mode]],  2
	jne	.label_209
	cmp	dword ptr [r14 + 0x38], -1
	lea	rdi, [rdi]
	je	.label_213
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x30]
	nop	
	cmp	eax, 0x8000
	setne	al
	jmp	.label_209
.label_213:
	mov	rsp, rsp
	xor	eax, eax
.label_209:
	nop	
	lea	rcx, [r15 - 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rcx
	movzx	eax, al
	mov	dword ptr [rsp + 0x78], eax
	mov	rsp, rsp
	test	al, al
	sete	al
	lea	rsi, [rsi]
	movzx	eax, al
	shl	eax, 0xb
	mov	dword ptr [rsp + 0x2150], eax
	mov	rsp, rsp
	lea	rax, [r14 + 0x38]
	mov	qword ptr [rsp + 0x2178], rax
	mov	rbp, r14
	xor	ebx, ebx
.label_97:
	nop	
	mov	dword ptr [rsp + 0x98], ebx
	xor	r12d, r12d
	mov	rsp, rsp
	xor	r14d, r14d
	jmp	.label_131
.label_44:
	mov	rax,  qword ptr [word ptr [rip + max_n_unchanged_stats_between_opens]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp + r13 + 0x58]
	mov	rsp, rsp
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbp + r13 + 0x58], rdx
	mov	rsp, rsp
	cmp	rax, rcx
	ja	.label_22
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_22
	lea	rsi, [rsi]
	lea	rbx, [rbp + r13 + 0x58]
	cmp	dword ptr [rsi], 0
	nop	
	setne	al
	mov	rsp, rsp
	movzx	esi, al
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x2180]
	call	recheck
	nop	
	mov	qword ptr [rbx], 0
	jmp	.label_22
	nop	
.label_131:
	lea	rsi, [rsi]
	lea	r13, [r12 + r12*2]
	mov	rsp, rsp
	shl	r13, 5
	mov	rsp, rsp
	cmp	byte ptr [rbp + r13 + 0x34], 0
	jne	.label_22
	mov	rsp, rsp
	lea	rdi, [rbp + r13]
	mov	edx, dword ptr [rbp + r13 + 0x38]
	test	edx, edx
	js	.label_184
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rdi]
	mov	qword ptr [rsp + 0x2180], rdi
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	jne	.label_154
	cmp	byte ptr [rbx + 1], 0
	lea	rsi, [rsi]
	jne	.label_154
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.83
	mov	ebx, edx
	mov	edx, 5
	nop	
	call	dcgettext
	mov	edx, ebx
	mov	rbx, rax
	nop	word ptr cs:[rax + rax]
.label_154:
	mov	rsp, rsp
	lea	rax, [rbp + r13 + 0x30]
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, dword ptr [rbp + r13 + 0x30]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x2170], eax
	lea	rsi, [rbp + r13 + 0x40]
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x78]
	nop	
	cmp	dword ptr [rbp + r13 + 0x40], eax
	mov	rsp, rsp
	je	.label_249
	mov	qword ptr [rsp + 0x2160], rsi
	mov	qword ptr [rsp + 0x2168], rbx
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, edx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x50], edx
	mov	rsp, rsp
	call	rpl_fcntl
	lea	rdi, [rdi]
	test	eax, eax
	js	.label_101
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	or	edx, dword ptr [rsp + 0x2150]
	cmp	edx, eax
	lea	rdi, [rdi]
	je	.label_263
	mov	esi, 4
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0x50]
	call	rpl_fcntl
	cmp	eax, -1
	lea	rdi, [rdi]
	je	.label_101
.label_263:
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x78]
	mov	rsi, qword ptr [rsp + 0x2160]
	mov	dword ptr [rsi], eax
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x2168]
	mov	rbp, rbp
	mov	edx, dword ptr [rsp + 0x50]
	mov	rsp, rsp
	jmp	.label_249
.label_184:
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	call	recheck
	jmp	.label_22
.label_101:
	lea	rdi, [rdi]
	mov	rbx, r15
	mov	rax, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	r15d, dword ptr [rax]
	and	r15d, 0xf000
	call	__errno_location
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	cmp	r15d, 0x8000
	nop	
	jne	.label_276
	mov	rbp, rbp
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_276
	mov	rsi, qword ptr [rsp + 0x2160]
	mov	rbp, rbp
	mov	eax, dword ptr [rsi]
	mov	rbp, rbp
	mov	r15, rbx
	mov	edx, dword ptr [rsp + 0x50]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x2168]
.label_249:
	test	eax, eax
	jne	.label_95
	nop	
	mov	qword ptr [rsp + 0x2160], rsi
	mov	qword ptr [rsp + 0x2168], rbx
	mov	rsp, rsp
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, edx
	nop	
	mov	ebx, edx
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0xb0]
	call	__fxstat
	test	eax, eax
	je	.label_269
	mov	rbp, rbp
	lea	rax, [rbp + r13 + 0x38]
	mov	dword ptr [rax], 0xffffffff
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp + r13 + 0x3c], ecx
	lea	rsi, [rsi]
	mov	r13d, ebx
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x2168]
	call	quotearg_n_style_colon
	mov	rcx, rax
	nop	
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	call	error
	mov	rbp, rbp
	mov	edi, r13d
	call	close
	nop	
	jmp	.label_22
.label_269:
	nop	
	mov	dword ptr [rsp + 0x50], ebx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x38]
	mov	ecx, dword ptr [rax]
	mov	eax, dword ptr [rsp + 0xc8]
	cmp	ecx, eax
	mov	rsi, qword ptr [rsp + 0x2160]
	jne	.label_25
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_31
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp + r13 + 8]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	jne	.label_25
.label_31:
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp + r13 + 0x10]
	nop	
	cmp	rcx, qword ptr [rsp + 0x108]
	jne	.label_25
	mov	ecx, dword ptr [rbp + r13 + 0x18]
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rsp + 0x110]
	lea	rdi, [rdi]
	je	.label_44
.label_25:
	lea	rdi, [rdi]
	movupd	xmm0, xmmword ptr [rsp + 0x108]
	mov	rbp, rbp
	movupd	xmmword ptr [rbp + r13 + 0x10], xmm0
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	dword ptr [rcx], eax
	mov	qword ptr [rbp + r13 + 0x58], 0
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x2170]
	lea	rsi, [rsi]
	and	eax, 0xf000
	cmp	eax, 0x8000
	mov	rsp, rsp
	jne	.label_54
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	cmp	rax, qword ptr [rbp + r13 + 8]
	jge	.label_54
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], r15
	mov	rbp, rbp
	lea	rax, [rbp + r13 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.115
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	nop	
	xor	edi, edi
	mov	esi, 3
	mov	r15, qword ptr [rsp + 0x2168]
	mov	rbp, rbp
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rbx
	call	error
	xor	esi, esi
	xor	edx, edx
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x50]
	mov	rcx, r15
	lea	rdi, [rdi]
	call	xlseek
	mov	rsi, qword ptr [rsp + 0x2160]
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0x20]
.label_54:
	nop	
	cmp	r12, qword ptr [rsp + 0x30]
	nop	
	mov	rbx, qword ptr [rsp + 0x2168]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rsp + 0x50]
	nop	
	je	.label_95
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + print_headers]]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	mov	qword ptr [rsp + 0x30], r12
	jne	.label_95
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + write_header.first_file]]
	and	al, 1
	mov	edx, OFFSET FLAT:.str_0
	mov	eax, OFFSET FLAT:.str.85
	cmovne	rdx, rax
	nop	
	mov	edi, 1
	mov	qword ptr [rsp + 0x2160], rsi
	mov	esi, OFFSET FLAT:.str.84
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, rbx
	mov	rsp, rsp
	call	__printf_chk
	mov	rsi, qword ptr [rsp + 0x2160]
	mov	rbp, rbp
	mov	edx, dword ptr [rsp + 0x50]
	mov	byte ptr [byte ptr [rip + write_header.first_file]],  1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], r12
.label_95:
	mov	rcx, -2
	nop	
	cmp	dword ptr [rsi], 0
	mov	rsp, rsp
	jne	.label_119
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x2170]
	lea	rdi, [rdi]
	and	eax, 0xf000
	mov	rcx, -1
	lea	rsi, [rsi]
	cmp	eax, 0x8000
	mov	rsp, rsp
	jne	.label_119
	cmp	byte ptr [rbp + r13 + 0x35], 0
	mov	rbp, rbp
	je	.label_119
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp + r13 + 8]
.label_119:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	rsi, rbx
	call	dump_remainder
	test	rax, rax
	setne	cl
	and	r14b, 1
	or	r14b, cl
	add	qword ptr [rbp + r13 + 8], rax
	nop	word ptr cs:[rax + rax]
.label_22:
	inc	r12
	lea	rdi, [rdi]
	cmp	r12, r15
	lea	rsi, [rsi]
	jb	.label_131
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	cmp	ecx, 1
	nop	
	jne	.label_133
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	je	.label_139
.label_133:
	xor	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x2178]
	xor	edx, edx
	nop	
.label_146:
	cmp	dword ptr [rcx], 0
	jns	.label_139
	mov	rsp, rsp
	cmp	byte ptr [rcx - 4], 0
	setne	bl
	mov	rsp, rsp
	or	bl, al
	movzx	esi, bl
	mov	rbp, rbp
	cmp	esi, 1
	lea	rdi, [rdi]
	jne	.label_139
	inc	rdx
	add	rcx, 0x60
	cmp	rdx, r15
	jb	.label_146
	jmp	.label_148
	nop	word ptr cs:[rax + rax]
.label_139:
	and	r14b, 1
	mov	rbp, rbp
	sete	al
	nop	
	cmp	dword ptr [rsp + 0x78], 0
	jne	.label_153
	test	al, al
	nop	
	je	.label_157
.label_153:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	fflush_unlocked
	test	eax, eax
	jne	.label_161
.label_157:
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [rip + monitor_output]],  0
	mov	rsp, rsp
	je	.label_162
	mov	rsp, rsp
	xorpd	xmm0, xmm0
	lea	rsi, [rsi]
	movapd	xmmword ptr [rsp + 0xa0], xmm0
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, 0x10
	mov	rbp, rbp
	lea	rbx, [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdi, rbx
	cld	
	rep stosq	qword ptr [rdi], rax
	mov	edi, 1
	call	__fdelt_chk
	or	byte ptr [rsp + rax*8 + 0xb0], 2
	mov	edi, 2
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsi, rbx
	lea	r8, [rsp + 0xa0]
	nop	
	call	select
	cmp	eax, 1
	je	.label_181
.label_162:
	xor	r12d, r12d
	test	r14b, r14b
	mov	r14d, 0
	jne	.label_131
	mov	eax, dword ptr [rsp + 0x98]
	test	al, 1
	nop	
	jne	.label_43
	mov	rbp, rbp
	mov	edi,  dword ptr [dword ptr [rip + pid]]
	xor	ebx, ebx
	test	edi, edi
	je	.label_24
	mov	rsp, rsp
	xor	esi, esi
	nop	
	call	kill
	test	eax, eax
	je	.label_24
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 1
	setne	bl
	nop	
	jne	.label_97
.label_24:
	movsd	xmm0, qword ptr [rsp + 0x40]
	call	xnanosleep
	mov	rbp, rbp
	test	eax, eax
	je	.label_97
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.117
	jmp	.label_21
.label_148:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.101
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rcx
	call	error
.label_43:
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 1
	jne	.label_200
	xor	edi, edi
	lea	rdi, [rdi]
	call	close
	test	eax, eax
	lea	rsi, [rsi]
	js	.label_203
.label_200:
	movzx	eax, byte ptr [rsp + 0x4f]
	xor	eax, 1
.label_84:
	add	rsp, 0x2188
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	nop	
	pop	r13
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_186:
	lea	rdi, [rdi]
	mov	r12, r15
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	r15, [rsp + 0xb0]
	mov	r14d, 0xf000
	mov	rbp, rbp
	mov	rbx, r13
	nop	word ptr cs:[rax + rax]
.label_222:
	mov	rsi, qword ptr [rbx]
	mov	edi, 1
	mov	rdx, r15
	call	__lxstat
	test	eax, eax
	mov	rbp, rbp
	jne	.label_218
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0xc8]
	and	eax, r14d
	mov	rbp, rbp
	cmp	eax, 0xa000
	je	.label_219
.label_218:
	inc	rbp
	add	rbx, 0x60
	cmp	rbp, r12
	mov	rbp, rbp
	jb	.label_222
	mov	r14, r13
	lea	rax, [r14 + 0x38]
	xor	ecx, ecx
	nop	
	mov	edx, 0xf000
	lea	rsi, [rsi]
	mov	r15, r12
	nop	word ptr cs:[rax + rax]
.label_228:
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	js	.label_224
	nop	
	mov	esi, dword ptr [rax - 8]
	nop	
	and	esi, edx
	cmp	esi, 0x8000
	je	.label_224
	mov	rsp, rsp
	cmp	esi, 0x1000
	mov	rsp, rsp
	jne	.label_40
.label_224:
	lea	rdi, [rdi]
	inc	rcx
	add	rax, 0x60
	cmp	rcx, r15
	jb	.label_228
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + follow_mode]],  2
	jne	.label_229
	mov	rbp, rbp
	mov	al, byte ptr [rsp + 0x4f]
	xor	al, 1
	lea	rdi, [rdi]
	jne	.label_40
.label_229:
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + disable_inotify]]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_18
	mov	rsp, rsp
	call	inotify_init
	mov	r12d, eax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x2168], r12d
	test	r12d, r12d
	mov	rbp, rbp
	js	.label_166
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	fflush_unlocked
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_161
	xor	esi, esi
	mov	edx, OFFSET FLAT:wd_hasher
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:wd_comparator
	xor	r8d, r8d
	mov	rsp, rsp
	mov	rdi, r15
	call	hash_initialize
	mov	qword ptr [rsp + 0x38], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_108
	mov	dword ptr [rsp + 0x2160], 0xc06
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	je	.label_245
	nop	
	mov	dword ptr [rsp + 0x2160], 2
.label_245:
	nop	
	mov	rbp, r14
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x2170], rax
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x78], rax
	mov	rbp, rbp
	xor	r13d, r13d
.label_27:
	mov	rbp, rbp
	cmp	byte ptr [rbp + 0x34], 0
	lea	rsi, [rsi]
	jne	.label_255
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strlen
	nop	
	mov	rcx, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0x78], rcx
	mov	dword ptr [rbp + 0x44], 0xffffffff
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_260
	mov	rsp, rsp
	mov	r12, r14
	mov	qword ptr [rsp + 0x20], r15
	mov	rdi, rbx
	mov	rbp, rbp
	call	dir_len
	nop	
	mov	r15, rax
	lea	rdi, [rdi]
	mov	r14b, byte ptr [rbx + r15]
	mov	rdi, rbx
	call	last_component
	mov	rbp, rbp
	sub	rax, rbx
	mov	rsp, rsp
	mov	qword ptr [rbp + 0x50], rax
	nop	
	mov	byte ptr [rbx + r15], 0
	lea	rdi, [rdi]
	test	r15, r15
	mov	esi, OFFSET FLAT:.str.96
	je	.label_114
	mov	rsi, qword ptr [rbp]
.label_114:
	lea	rsi, [rsi]
	mov	edx, 0x784
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x2168]
	call	inotify_add_watch
	mov	rbp, rbp
	mov	dword ptr [rbp + 0x48], eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp]
	mov	byte ptr [rax + r15], r14b
	cmp	dword ptr [rbp + 0x48], 0
	js	.label_273
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0x20]
	mov	r14, r12
	mov	r12d, dword ptr [rsp + 0x2168]
.label_260:
	mov	rbp, rbp
	mov	edi, r12d
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x2160]
	call	inotify_add_watch
	mov	dword ptr [rbp + 0x44], eax
	lea	rdi, [rdi]
	test	eax, eax
	js	.label_227
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	call	hash_insert
	mov	rbp, rbp
	mov	cl, 1
	nop	
	mov	qword ptr [rsp + 0x50], rcx
	test	rax, rax
	mov	rbp, rbp
	jne	.label_255
	jmp	.label_108
.label_227:
	mov	qword ptr [rsp + 0x60], r14
	lea	rdi, [rdi]
	mov	r14, r15
	cmp	dword ptr [rbp + 0x38], -1
	nop	
	je	.label_291
	lea	rdi, [rdi]
	mov	al, 1
	mov	qword ptr [rsp + 0x2170], rax
.label_291:
	mov	rbp, rbp
	call	__errno_location
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	r15d, dword ptr [rbx]
	mov	eax, r15d
	lea	rdi, [rdi]
	or	eax, 0x10
	cmp	eax, 0x1c
	je	.label_296
	nop	
	cmp	r15d, dword ptr [rbp + 0x3c]
	je	.label_10
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.99
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rsi, qword ptr [rbp]
	mov	edi, 4
	mov	rsp, rsp
	call	quotearg_style
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	call	error
.label_10:
	mov	r15, r14
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0x60]
.label_255:
	mov	rbp, rbp
	inc	r13
	add	rbp, 0x60
	cmp	r13, r15
	jb	.label_27
	mov	eax,  dword ptr [dword ptr [rip + follow_mode]]
	mov	rcx, qword ptr [rsp + 0x2170]
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	je	.label_32
	cmp	eax, 2
	lea	rsi, [rsi]
	jne	.label_32
	call	__errno_location
	mov	rbx, rax
	lea	rsi, [rsi]
	jmp	.label_38
.label_219:
	mov	rsp, rsp
	mov	r15, r12
	lea	rsi, [rsi]
	mov	r14, r13
	mov	byte ptr [byte ptr [rip + disable_inotify]],  1
	jmp	.label_18
.label_32:
	mov	r13, r14
	mov	rdx, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	test	dl, 1
	jne	.label_51
	cmp	eax, 2
	je	.label_56
.label_51:
	lea	rax, [r15 + r15*2]
	mov	r14, r15
	nop	
	shl	rax, 5
	lea	rdi, [rdi]
	lea	rax, [rax + r13 - 0x60]
	mov	qword ptr [rsp + 0x28], rax
	xor	ebp, ebp
	mov	rbp, rbp
	lea	r15, [rsp + 0x28]
	mov	rbx, r13
.label_86:
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x34], 0
	lea	rsi, [rsi]
	jne	.label_64
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_67
	mov	rsp, rsp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	recheck
	jmp	.label_59
.label_67:
	cmp	dword ptr [rbx + 0x38], -1
	lea	rdi, [rdi]
	je	.label_59
	mov	rsi, qword ptr [rbx]
	mov	edi, 1
	mov	rbp, rbp
	lea	rdx, [rsp + 0xb0]
	lea	rdi, [rdi]
	call	__xstat
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_59
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x20]
	cmp	rax, qword ptr [rsp + 0xb0]
	jne	.label_77
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	jne	.label_77
.label_59:
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r15
	call	check_fspec
.label_64:
	inc	rbp
	add	rbx, 0x60
	mov	rbp, rbp
	cmp	rbp, r14
	jb	.label_86
	mov	rdi, qword ptr [rsp + 0x78]
	add	rdi, 0x11
	mov	qword ptr [rsp + 0x78], rdi
	nop	
	call	xmalloc
	mov	dword ptr [rsp + 0x2168], r12d
	nop	
	mov	edx, r12d
	sar	edx, 0x1f
	lea	rdi, [rdi]
	shr	edx, 0x1a
	lea	rdi, [rdi]
	add	edx, r12d
	and	edx, 0xc0
	mov	rbp, rbp
	mov	ecx, r12d
	mov	rbp, rbp
	sub	ecx, edx
	lea	rsi, [rsi]
	mov	edx, 1
	shl	rdx, cl
	mov	qword ptr [rsp + 0x2180], rdx
	nop	
	movsxd	rcx, r12d
	nop	
	mov	qword ptr [rsp + 0x2150], rcx
	nop	
	test	r12d, r12d
	lea	rdi, [rdi]
	mov	ecx, 1
	cmovg	ecx, r12d
	mov	rbp, rbp
	inc	ecx
	mov	dword ptr [rsp + 0x30], ecx
	mov	rbp, rbp
	movsd	xmm1, qword ptr [rsp + 0x40]
	cvttsd2si	rcx, xmm1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x2158], rcx
	cvtsi2sd	xmm0, rcx
	subsd	xmm1, xmm0
	mov	rsp, rsp
	mulsd	xmm1,  qword ptr [word ptr [rip + label_92]]
	mov	rsp, rsp
	cvttsd2si	rcx, xmm1
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], r13
	lea	rcx, [r13 + 0x48]
	mov	qword ptr [rsp + 0x20b8], rcx
	lea	rdi, [rdi]
	lea	rcx, [r13 + 0x50]
	mov	qword ptr [rsp + 0x70], rcx
	lea	rdi, [rdi]
	mov	ebx, 3
	mov	dword ptr [rsp + 0x2178], 0
	mov	rsp, rsp
	jmp	.label_93
.label_273:
	mov	rbp, rbp
	call	__errno_location
	mov	rbx, rax
	mov	r13d, dword ptr [rbx]
	lea	rsi, [rsi]
	cmp	r13d, 0x1c
	nop	
	mov	r14, r12
	jne	.label_278
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.98
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
	mov	rsp, rsp
	jmp	.label_135
.label_296:
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.98
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	rbp, rbp
	mov	r15, r14
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	jmp	.label_38
.label_278:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.97
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp]
	mov	rsp, rsp
	mov	edi, 4
	mov	rbp, rbp
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	esi, r13d
	mov	rbp, rbp
	mov	rdx, r15
	call	error
.label_135:
	mov	r15, qword ptr [rsp + 0x20]
	mov	r12d, dword ptr [rsp + 0x2168]
.label_38:
	mov	rdi, qword ptr [rsp + 0x38]
	call	hash_free
	mov	dword ptr [rbx], 0
	jmp	.label_166
.label_77:
	call	__errno_location
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp]
	nop	
	mov	dword ptr [rsp + 0x78], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.100
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	r15, rax
	mov	rsi, qword ptr [rbx]
	movzx	eax, byte ptr [rsi]
	lea	rsi, [rsi]
	cmp	eax, 0x2d
	jne	.label_172
	cmp	byte ptr [rsi + 1], 0
	nop	
	jne	.label_172
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_172:
	mov	edi, 4
	call	quotearg_style
	nop	
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	mov	rdx, r15
	call	error
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x38]
	call	hash_free
	mov	rsp, rsp
	mov	dword ptr [rbp], 0
	mov	r15, r14
	mov	r14, r13
	jmp	.label_166
.label_173:
	lea	rsi, [rsi]
	lea	eax, [rbp - 0x30]
	mov	rbp, rbp
	cmp	eax, 0xa
	jae	.label_176
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebp
	call	error
.label_259:
	nop	
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	add	rsi, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x78], rsi
	mov	rdi, r13
	lea	rdi, [rdi]
	call	xrealloc
.label_93:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rax
	xor	ecx, ecx
	nop	
	mov	qword ptr [rsp + 0x2170], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x50], rcx
	mov	rbp, rbp
	mov	ecx, ebx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], rcx
	mov	rsp, rsp
	mov	r13, rax
	jmp	.label_61
.label_118:
	nop	
	xor	esi, esi
	mov	rdi, r12
	mov	rsp, rsp
	call	recheck
.label_61:
	nop	
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_206
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	jne	.label_206
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	call	hash_get_n_entries
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_211
.label_206:
	mov	rbp, qword ptr [rsp + 0x2170]
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rbp, rax
	mov	r12d, dword ptr [rsp + 0x2168]
	nop	
	ja	.label_214
.label_243:
	lea	rsi, [rsi]
	mov	edi,  dword ptr [dword ptr [rip + pid]]
	mov	rbp, rbp
	test	edi, edi
	nop	
	je	.label_60
	mov	eax, dword ptr [rsp + 0x2178]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_220
	mov	dword ptr [rsp + 0x2178], 0
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_223
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 1
	setne	al
	mov	dword ptr [rsp + 0x2178], eax
	je	.label_223
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0xa0], xmm0
	jmp	.label_60
.label_223:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x2158]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa8], rax
.label_60:
	xor	eax, eax
	mov	ecx, 0x10
	mov	rbp, rbp
	lea	rdi, [rsp + 0xb0]
	cld	
	rep stosq	qword ptr [rdi], rax
	mov	rdi, qword ptr [rsp + 0x2150]
	call	__fdelt_chk
	mov	rcx, qword ptr [rsp + 0x2180]
	mov	rbp, rbp
	or	qword ptr [rsp + rax*8 + 0xb0], rcx
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rip + monitor_output]],  0
	lea	rdi, [rdi]
	je	.label_234
	mov	rbp, rbp
	mov	edi, 1
	call	__fdelt_chk
	lea	rsi, [rsi]
	or	byte ptr [rsp + rax*8 + 0xb0], 2
.label_234:
	cmp	dword ptr [dword ptr [rip + pid]],  0
	lea	r8, [rsp + 0xa0]
	jne	.label_238
	nop	
	xor	r8d, r8d
.label_238:
	lea	rdi, [rdi]
	xor	edx, edx
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0x30]
	mov	rsp, rsp
	lea	rsi, [rsp + 0xb0]
	lea	rsi, [rsi]
	call	select
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_243
	nop	
	cmp	eax, -1
	je	.label_246
	mov	rbp, rbp
	mov	edi, 1
	call	__fdelt_chk
	nop	
	test	byte ptr [rsp + rax*8 + 0xb0], 2
	jne	.label_247
	mov	rbp, rbp
	mov	edi, r12d
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	call	safe_read
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_252
	cmp	rbp, -1
	jne	.label_254
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	mov	rsp, rsp
	jne	.label_257
.label_252:
	mov	rax, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	lea	ebx, [rax - 1]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_259
	mov	rbp, rbp
	mov	eax, ebx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rax
.label_254:
	nop	
	mov	rax, rbp
	inc	rax
	nop	
	cmp	rax, 1
	mov	eax, 0
	jbe	.label_257
.label_214:
	mov	qword ptr [rsp + 0x50], rax
	nop	
	lea	rbx, [r13 + rax]
	lea	rdi, [rdi]
	mov	r15d, dword ptr [r13 + rax + 4]
	lea	rdi, [rdi]
	mov	eax, dword ptr [r13 + rax + 0xc]
	lea	rdi, [rdi]
	test	rax, rax
	jne	.label_267
	mov	ecx, r15d
	mov	rsp, rsp
	and	ecx, 0x400
	je	.label_267
	mov	ecx, dword ptr [rbx]
	mov	rdx, qword ptr [rsp + 0x20b8]
	lea	rsi, [rsi]
	xor	esi, esi
.label_272:
	mov	rbp, rbp
	cmp	ecx, dword ptr [rdx]
	mov	rsp, rsp
	je	.label_270
	mov	rsp, rsp
	inc	rsi
	add	rdx, 0x60
	cmp	rsi, r14
	lea	rdi, [rdi]
	jb	.label_272
.label_267:
	mov	qword ptr [rsp + 0x2170], rbp
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rbp, rbp
	lea	rcx, [rcx + rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], rcx
	test	eax, eax
	je	.label_274
	mov	rbp, rbp
	lea	r12, [rbx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], rbx
	mov	rsp, rsp
	mov	ebx, dword ptr [rbx]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x70]
	xor	ebp, ebp
.label_289:
	cmp	dword ptr [r13 - 8], ebx
	jne	.label_284
	mov	rsp, rsp
	mov	rsi, qword ptr [r13 - 0x50]
	lea	rdi, [rdi]
	add	rsi, qword ptr [r13]
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	je	.label_288
.label_284:
	nop	
	inc	rbp
	add	r13, 0x60
	lea	rdi, [rdi]
	cmp	rbp, r14
	nop	
	jb	.label_289
.label_288:
	lea	rsi, [rsi]
	cmp	rbp, r14
	mov	r13, qword ptr [rsp + 0x88]
	je	.label_61
	lea	rbx, [rbp + rbp*2]
	mov	rbp, rbp
	shl	rbx, 5
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x60]
	nop	
	lea	r12, [rax + rbx]
	mov	eax, r15d
	test	ah, 2
	jne	.label_45
	mov	rsi, qword ptr [r12]
	mov	rbp, rbp
	mov	edi, dword ptr [rsp + 0x2168]
	mov	edx, dword ptr [rsp + 0x2160]
	nop	
	call	inotify_add_watch
	mov	rsp, rsp
	mov	ebp, eax
	mov	rsp, rsp
	test	ebp, ebp
	jns	.label_16
	call	__errno_location
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rax
	mov	r15d, dword ptr [rax]
	nop	
	mov	eax, r15d
	or	eax, 0x10
	xor	edi, edi
	lea	rdi, [rdi]
	cmp	eax, 0x1c
	mov	rsp, rsp
	je	.label_19
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.99
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x68], rax
	mov	rsi, qword ptr [r12]
	mov	rbp, rbp
	mov	edi, 4
	mov	rsp, rsp
	call	quotearg_style
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, r15d
	nop	
	mov	rdx, qword ptr [rsp + 0x68]
	call	error
.label_16:
	mov	rax, qword ptr [rsp + 0x60]
	mov	esi, dword ptr [rax + rbx + 0x44]
	test	esi, esi
	js	.label_39
	nop	
	cmp	ebp, esi
	je	.label_45
.label_39:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	lea	rbx, [rax + rbx + 0x44]
	mov	rbp, rbp
	test	esi, esi
	mov	rbp, rbp
	js	.label_47
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0x2168]
	call	inotify_rm_watch
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	rsi, r12
	call	hash_delete
.label_47:
	lea	rdi, [rdi]
	mov	dword ptr [rbx], ebp
	mov	rbp, rbp
	cmp	ebp, -1
	mov	rbp, rbp
	je	.label_61
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	rsi, r12
	call	hash_delete
	lea	rdi, [rdi]
	mov	rbp, rax
	nop	
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_68
	cmp	rbp, r12
	lea	rsi, [rsi]
	je	.label_68
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	mov	rsp, rsp
	jne	.label_72
	nop	
	xor	esi, esi
	mov	rdi, rbp
	call	recheck
.label_72:
	lea	rsi, [rsi]
	mov	dword ptr [rbp + 0x44], 0xffffffff
	mov	ebx, dword ptr [rbp + 0x38]
	mov	rbp, qword ptr [rbp]
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2d
	jne	.label_80
	cmp	byte ptr [rbp + 1], 0
	lea	rdi, [rdi]
	jne	.label_80
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
.label_80:
	lea	eax, [rbx + 1]
	lea	rdi, [rdi]
	cmp	eax, 2
	jb	.label_68
	mov	edi, ebx
	lea	rdi, [rdi]
	call	close
	test	eax, eax
	je	.label_68
	call	__errno_location
	lea	rsi, [rsi]
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.93
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rax
	nop	
	mov	edi, 4
	mov	rsi, rbp
	mov	rbp, rbp
	call	quotearg_style
	nop	
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	nop	
	mov	rdx, qword ptr [rsp + 0x68]
	mov	r8d, ebx
	call	error
.label_68:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	rsi, r12
	nop	
	call	hash_insert
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_105
.label_45:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x80]
	jne	.label_111
	mov	rbp, rbp
	xor	esi, esi
	mov	rsp, rsp
	mov	rdi, r12
	call	recheck
	jmp	.label_111
.label_274:
	nop	
	mov	eax, dword ptr [rbx]
	mov	dword ptr [rsp + 0xf4], eax
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0xb0]
	call	hash_lookup
	mov	r12, rax
.label_111:
	test	r12, r12
	je	.label_61
	mov	eax, dword ptr [rbx + 4]
	test	ax, 0xe04
	je	.label_117
	mov	rbp, rbp
	test	ah, 4
	je	.label_118
	mov	esi, dword ptr [r12 + 0x44]
	mov	edi, dword ptr [rsp + 0x2168]
	call	inotify_rm_watch
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x38]
	nop	
	mov	rsi, r12
	call	hash_delete
	jmp	.label_118
.label_117:
	mov	rdi, r12
	lea	rsi, [rsp + 0x28]
	call	check_fspec
	jmp	.label_61
.label_270:
	mov	rdi, qword ptr [rsp + 0x38]
	call	hash_free
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.104
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	error
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	r15, r14
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x60]
.label_166:
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	eax, eax
	nop	
	mov	esi, ebx
	nop	
	mov	rdx, rcx
	call	error
	lea	rbx, [r14 + 0x48]
	mov	rbp, r15
.label_125:
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbx - 4]
	mov	rsp, rsp
	cmp	esi, -1
	je	.label_155
	lea	rdi, [rdi]
	mov	edi, r12d
	mov	rbp, rbp
	call	inotify_rm_watch
.label_155:
	mov	esi, dword ptr [rbx]
	nop	
	cmp	esi, -1
	je	.label_159
	nop	
	mov	edi, r12d
	mov	rbp, rbp
	call	inotify_rm_watch
.label_159:
	mov	rbp, rbp
	add	rbx, 0x60
	lea	rsi, [rsi]
	dec	rbp
	jne	.label_125
	lea	rsi, [rsi]
	jmp	.label_18
.label_211:
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.101
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
.label_56:
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_84
.label_240:
	cmp	ebp, 0xffffff7d
	nop	
	je	.label_174
	cmp	ebp, 0xffffff7e
	jne	.label_176
	xor	edi, edi
	call	usage
.label_134:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.91
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.92
	mov	edx, 0x2e0
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pipe_lines
	lea	rsi, [rsi]
	call	__assert_fail
.label_174:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], 0
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str.56
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.55
	mov	esi, OFFSET FLAT:.str.13
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.53
	mov	r9d, OFFSET FLAT:.str.54
	mov	rsp, rsp
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	mov	rbp, rbp
	call	exit
.label_19:
	nop	
	mov	esi, OFFSET FLAT:.str.98
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	call	hash_free
	mov	rax, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	r15, r14
	mov	r14, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	r12d, dword ptr [rsp + 0x2168]
	nop	
	jmp	.label_166
.label_176:
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	call	usage
.label_35:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.18_0
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str.17_0
	call	quotearg_style
	jmp	.label_239
.label_181:
	lea	rsi, [rsi]
	call	die_pipe
.label_85:
	mov	rbp, rbp
	call	xalloc_die
.label_164:
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.52
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
.label_239:
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rbp, rbp
	call	error
.label_161:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_2
	jmp	.label_21
.label_203:
	call	__errno_location
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17_0
	xor	eax, eax
	call	error
.label_179:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.20
.label_21:
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	error
.label_276:
	xor	edi, edi
	mov	ebp, eax
	mov	esi, OFFSET FLAT:.str.116
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rbx, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x2168]
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	nop	
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
.label_108:
	lea	rdi, [rdi]
	call	xalloc_die
.label_246:
	call	__errno_location
	mov	rsp, rsp
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.102
	mov	rsp, rsp
	jmp	.label_21
.label_257:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.103
	lea	rsi, [rsi]
	jmp	.label_21
.label_220:
	xor	edi, edi
	lea	rsi, [rsi]
	call	exit
.label_247:
	mov	rsp, rsp
	call	die_pipe
.label_105:
	mov	rbp, rbp
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e80

	.globl fremote
	.type fremote, @function
fremote:
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x78
	mov	r14, rsi
	lea	rsi, [rsp]
	lea	rdi, [rdi]
	call	fstatfs
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_316
	call	__errno_location
	mov	ebp, dword ptr [rax]
	lea	rsi, [rsi]
	mov	bl, 1
	nop	
	cmp	ebp, 0x26
	je	.label_301
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.94
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	r15, rax
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	esi, ebp
	mov	rsp, rsp
	mov	rdx, r15
	call	error
	nop	
	jmp	.label_301
.label_316:
	nop	
	mov	cl, 2
	mov	rax, qword ptr [rsp]
	cmp	rax, 0x2fc12fc0
	mov	rbp, rbp
	jg	.label_326
	cmp	rax, 0xadfe
	nop	
	jle	.label_328
	cmp	rax, 0x13111a7
	mov	rbp, rbp
	jg	.label_331
	cmp	rax, 0x1021993
	jg	.label_334
	mov	rsp, rsp
	cmp	rax, 0x11953
	jle	.label_343
	cmp	rax, 0x414a52
	nop	
	jle	.label_336
	mov	rbp, rbp
	cmp	rax, 0x414a53
	je	.label_298
	lea	rdi, [rdi]
	cmp	rax, 0xc0ffee
	lea	rdi, [rdi]
	je	.label_298
	cmp	rax, 0xc36400
	je	.label_299
	lea	rsi, [rsi]
	jmp	.label_300
.label_326:
	cmp	rax, 0x65735542
	lea	rdi, [rdi]
	jle	.label_344
	lea	rdi, [rdi]
	mov	edx, 0x858458f5
	lea	rsi, [rsi]
	cmp	rax, rdx
	jle	.label_346
	mov	edx, 0xc97e8167
	mov	rsp, rsp
	cmp	rax, rdx
	lea	rsi, [rsi]
	jg	.label_348
	mov	rbp, rbp
	mov	edx, 0xaad7aae9
	lea	rdi, [rdi]
	cmp	rax, rdx
	mov	rbp, rbp
	jg	.label_351
	nop	
	mov	edx, 0x958458f5
	cmp	rax, rdx
	lea	rsi, [rsi]
	jg	.label_335
	lea	rsi, [rsi]
	mov	edx, 0x858458f6
	lea	rdi, [rdi]
	cmp	rax, rdx
	je	.label_298
	lea	rsi, [rsi]
	mov	edx, 0x9123683e
	lea	rdi, [rdi]
	jmp	.label_310
.label_328:
	cmp	rax, 0x482a
	jg	.label_304
	cmp	rax, 0x2467
	jg	.label_305
	lea	rdi, [rdi]
	cmp	rax, 0x1372
	jle	.label_306
	lea	rdx, [rax - 0x1373]
	cmp	rdx, 0x1c
	mov	rsp, rsp
	ja	.label_307
	mov	esi, 0x10001401
	bt	rsi, rdx
	lea	rdi, [rdi]
	jb	.label_298
.label_307:
	mov	rbp, rbp
	cmp	rax, 0x1cd1
	lea	rdi, [rdi]
	je	.label_298
	jmp	.label_300
.label_344:
	mov	rbp, rbp
	cmp	rax, 0x541900ff
	nop	
	jg	.label_311
	nop	
	cmp	rax, 0x47504652
	lea	rdi, [rdi]
	jle	.label_313
	cmp	rax, 0x5346414e
	jg	.label_315
	cmp	rax, 0x52654972
	jg	.label_318
	lea	rdi, [rdi]
	cmp	rax, 0x47504653
	je	.label_299
	lea	rdi, [rdi]
	cmp	rax, 0x50495045
	je	.label_299
	mov	rsp, rsp
	jmp	.label_300
.label_346:
	lea	rsi, [rsi]
	cmp	rax, 0x73636672
	mov	rsp, rsp
	jle	.label_325
	mov	rbp, rbp
	cmp	rax, 0x7461636e
	jg	.label_322
	cmp	rax, 0x73727278
	jg	.label_355
	lea	rsi, [rsi]
	cmp	rax, 0x73636673
	nop	
	je	.label_298
	mov	rsp, rsp
	cmp	rax, 0x73717368
	je	.label_298
	jmp	.label_300
.label_304:
	lea	rdi, [rdi]
	cmp	rax, 0x6968
	jle	.label_330
	cmp	rax, 0x965f
	nop	
	jg	.label_333
	cmp	rax, 0x6969
	lea	rdi, [rdi]
	je	.label_299
	mov	rsp, rsp
	cmp	rax, 0x7275
	mov	rbp, rbp
	je	.label_298
	cmp	rax, 0x72b6
	je	.label_298
	jmp	.label_300
.label_311:
	cmp	rax, 0x6165676b
	mov	rbp, rbp
	jle	.label_321
	cmp	rax, 0x62656571
	nop	
	jg	.label_342
	cmp	rax, 0x62646575
	nop	
	jg	.label_338
	cmp	rax, 0x6165676c
	je	.label_298
	lea	rsi, [rsi]
	cmp	rax, 0x61756673
	nop	
	je	.label_299
	jmp	.label_300
.label_331:
	lea	rdi, [rdi]
	cmp	rax, 0x15013345
	jg	.label_349
	nop	
	cmp	rax, 0xbad1de9
	jle	.label_352
	lea	rsi, [rsi]
	cmp	rax, 0x11307853
	jg	.label_353
	mov	rsp, rsp
	cmp	rax, 0xbad1dea
	je	.label_298
	nop	
	cmp	rax, 0xbd00bd0
	lea	rdi, [rdi]
	je	.label_299
	lea	rsi, [rsi]
	jmp	.label_300
.label_334:
	cmp	rax, 0x12fd16c
	lea	rsi, [rsi]
	jg	.label_302
	cmp	rax, 0x1021994
	je	.label_298
	mov	rbp, rbp
	cmp	rax, 0x1021997
	lea	rsi, [rsi]
	je	.label_298
	mov	rsp, rsp
	cmp	rax, 0x1161970
	mov	rbp, rbp
	je	.label_299
	lea	rsi, [rsi]
	jmp	.label_300
.label_348:
	mov	edx, 0xf97cff8b
	cmp	rax, rdx
	jg	.label_308
	mov	edx, 0xde5e81e3
	cmp	rax, rdx
	lea	rsi, [rsi]
	jg	.label_309
	mov	edx, 0xc97e8168
	cmp	rax, rdx
	je	.label_298
	mov	rsp, rsp
	mov	edx, 0xcafe4a11
	jmp	.label_310
.label_305:
	mov	rsp, rsp
	cmp	rax, 0x3fff
	jle	.label_340
	lea	rdx, [rax - 0x4000]
	mov	rbp, rbp
	cmp	rdx, 6
	nop	
	ja	.label_317
	mov	esi, 0x51
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_298
.label_317:
	nop	
	cmp	rax, 0x4244
	mov	rbp, rbp
	je	.label_298
	jmp	.label_300
.label_313:
	mov	rbp, rbp
	cmp	rax, 0x42494e4c
	mov	rbp, rbp
	jle	.label_314
	mov	rsp, rsp
	cmp	rax, 0x453dcd27
	mov	rbp, rbp
	jg	.label_319
	cmp	rax, 0x42494e4d
	mov	rbp, rbp
	je	.label_298
	cmp	rax, 0x43415d53
	mov	rsp, rsp
	je	.label_298
	jmp	.label_300
.label_325:
	cmp	rax, 0x68191121
	nop	
	jle	.label_329
	cmp	rax, 0x6e667363
	jg	.label_332
	cmp	rax, 0x68191122
	je	.label_298
	mov	rsp, rsp
	cmp	rax, 0x6b414653
	je	.label_299
	jmp	.label_300
.label_330:
	mov	rsp, rsp
	cmp	rax, 0x4d59
	jle	.label_337
	cmp	rax, 0x564b
	nop	
	jg	.label_339
	cmp	rax, 0x4d5a
	je	.label_298
	cmp	rax, 0x517b
	lea	rdi, [rdi]
	je	.label_299
	jmp	.label_300
.label_321:
	mov	rsp, rsp
	cmp	rax, 0x58465341
	nop	
	jle	.label_345
	cmp	rax, 0x5dca2df4
	mov	rsp, rsp
	jg	.label_347
	cmp	rax, 0x58465342
	je	.label_298
	cmp	rax, 0x5a3c69f0
	nop	
	je	.label_298
	jmp	.label_300
.label_349:
	lea	rsi, [rsi]
	cmp	rax, 0x1badfacd
	jle	.label_323
	cmp	rax, 0x28cd3d44
	lea	rdi, [rdi]
	jg	.label_354
	nop	
	cmp	rax, 0x1badface
	lea	rsi, [rsi]
	je	.label_298
	cmp	rax, 0x24051905
	mov	rsp, rsp
	je	.label_298
	lea	rsi, [rsi]
	jmp	.label_300
.label_343:
	cmp	rax, 0xef52
	jg	.label_303
	mov	rbp, rbp
	cmp	rax, 0xadff
	mov	rbp, rbp
	je	.label_298
	cmp	rax, 0xef51
	lea	rsi, [rsi]
	je	.label_298
	mov	rsp, rsp
	jmp	.label_300
.label_351:
	lea	rsi, [rsi]
	mov	edx, 0xbacbacbb
	cmp	rax, rdx
	jg	.label_350
	mov	rbp, rbp
	mov	edx, 0xaad7aaea
	nop	
	cmp	rax, rdx
	je	.label_299
	nop	
	mov	edx, 0xabba1974
	lea	rdi, [rdi]
	jmp	.label_310
.label_315:
	lea	rdi, [rdi]
	cmp	rax, 0x5346544d
	lea	rsi, [rsi]
	jg	.label_312
	cmp	rax, 0x5346414f
	je	.label_299
	cmp	rax, 0x53464846
	nop	
	je	.label_298
	jmp	.label_300
.label_322:
	nop	
	cmp	rax, 0x794c762f
	jg	.label_320
	lea	rsi, [rsi]
	cmp	rax, 0x7461636f
	lea	rsi, [rsi]
	je	.label_299
	mov	rbp, rbp
	cmp	rax, 0x74726163
	lea	rsi, [rsi]
	je	.label_298
	jmp	.label_300
.label_333:
	lea	rdx, [rax - 0x9fa0]
	cmp	rdx, 3
	mov	rbp, rbp
	jb	.label_298
	mov	rbp, rbp
	cmp	rax, 0x9660
	lea	rsi, [rsi]
	je	.label_298
	mov	rbp, rbp
	cmp	rax, 0xadf5
	mov	rbp, rbp
	je	.label_298
	jmp	.label_300
.label_342:
	cmp	rax, 0x6462671f
	jg	.label_324
	cmp	rax, 0x62656572
	je	.label_298
	mov	rsp, rsp
	cmp	rax, 0x63677270
	je	.label_298
	jmp	.label_300
.label_302:
	lea	rdx, [rax - 0x12ff7b4]
	cmp	rdx, 4
	jb	.label_298
	lea	rdi, [rdi]
	cmp	rax, 0x12fd16d
	je	.label_298
	nop	
	jmp	.label_300
.label_308:
	mov	edx, 0xfe534d41
	cmp	rax, rdx
	jg	.label_341
	mov	edx, 0xf97cff8c
	mov	rbp, rbp
	cmp	rax, rdx
	je	.label_298
	mov	rsp, rsp
	mov	edx, 0xf995e849
	jmp	.label_310
.label_306:
	cmp	rax, 0x2f
	lea	rsi, [rsi]
	je	.label_298
	lea	rsi, [rsi]
	cmp	rax, 0x187
	nop	
	je	.label_298
	cmp	rax, 0x7c0
	lea	rsi, [rsi]
	je	.label_298
	mov	rsp, rsp
	jmp	.label_300
.label_352:
	cmp	rax, 0x13111a8
	je	.label_299
	cmp	rax, 0x7655821
	nop	
	je	.label_298
	cmp	rax, 0x9041934
	je	.label_298
	jmp	.label_300
.label_340:
	cmp	rax, 0x2468
	je	.label_298
	lea	rsi, [rsi]
	cmp	rax, 0x2478
	lea	rdi, [rdi]
	je	.label_298
	cmp	rax, 0x3434
	lea	rsi, [rsi]
	je	.label_298
	mov	rsp, rsp
	jmp	.label_300
.label_314:
	mov	rbp, rbp
	cmp	rax, 0x2fc12fc1
	je	.label_298
	mov	rbp, rbp
	cmp	rax, 0x3153464a
	mov	rbp, rbp
	je	.label_298
	cmp	rax, 0x42465331
	mov	rsp, rsp
	je	.label_298
	jmp	.label_300
.label_329:
	mov	rbp, rbp
	cmp	rax, 0x65735543
	je	.label_299
	cmp	rax, 0x65735546
	je	.label_299
	cmp	rax, 0x67596969
	je	.label_298
	jmp	.label_300
.label_337:
	cmp	rax, 0x482b
	je	.label_298
	cmp	rax, 0x4858
	je	.label_298
	cmp	rax, 0x4d44
	je	.label_298
	jmp	.label_300
.label_345:
	lea	rdi, [rdi]
	cmp	rax, 0x54190100
	je	.label_298
	cmp	rax, 0x565a4653
	mov	rsp, rsp
	je	.label_298
	mov	rbp, rbp
	cmp	rax, 0x58295829
	mov	rbp, rbp
	je	.label_298
	jmp	.label_300
.label_323:
	mov	rbp, rbp
	cmp	rax, 0x15013346
	je	.label_298
	cmp	rax, 0x19800202
	lea	rdi, [rdi]
	je	.label_298
	mov	rbp, rbp
	cmp	rax, 0x19830326
	lea	rdi, [rdi]
	je	.label_299
	nop	
	jmp	.label_300
.label_336:
	lea	rsi, [rsi]
	cmp	rax, 0x11954
	je	.label_298
	mov	rbp, rbp
	cmp	rax, 0x27e0eb
	mov	rbp, rbp
	je	.label_298
	jmp	.label_300
.label_335:
	mov	edx, 0x958458f6
	cmp	rax, rdx
	je	.label_298
	mov	rbp, rbp
	mov	ecx, 0xa501fcf5
	nop	
	jmp	.label_327
.label_318:
	cmp	rax, 0x52654973
	nop	
	je	.label_298
	cmp	rax, 0x5346314d
	je	.label_298
	jmp	.label_300
.label_355:
	lea	rdi, [rdi]
	cmp	rax, 0x73727279
	lea	rsi, [rsi]
	je	.label_298
	cmp	rax, 0x73757245
	je	.label_299
	mov	rbp, rbp
	jmp	.label_300
.label_338:
	lea	rdi, [rdi]
	cmp	rax, 0x62646576
	je	.label_298
	mov	rbp, rbp
	cmp	rax, 0x62656570
	mov	rbp, rbp
	je	.label_298
	lea	rdi, [rdi]
	jmp	.label_300
.label_353:
	cmp	rax, 0x11307854
	nop	
	je	.label_298
	cmp	rax, 0x13661366
	lea	rdi, [rdi]
	je	.label_298
	lea	rdi, [rdi]
	jmp	.label_300
.label_309:
	mov	edx, 0xde5e81e4
	lea	rsi, [rsi]
	cmp	rax, rdx
	mov	rsp, rsp
	je	.label_298
	mov	edx, 0xf2f52010
.label_310:
	cmp	rax, rdx
	mov	rsp, rsp
	je	.label_298
	lea	rdi, [rdi]
	jmp	.label_300
.label_319:
	cmp	rax, 0x453dcd28
	lea	rdi, [rdi]
	je	.label_298
	cmp	rax, 0x45584653
	mov	rbp, rbp
	je	.label_298
	lea	rsi, [rsi]
	jmp	.label_300
.label_332:
	cmp	rax, 0x6e667364
	nop	
	je	.label_299
	nop	
	cmp	rax, 0x6e736673
	mov	rsp, rsp
	je	.label_298
	jmp	.label_300
.label_339:
	lea	rsi, [rsi]
	cmp	rax, 0x564c
	mov	rbp, rbp
	je	.label_299
	mov	rsp, rsp
	cmp	rax, 0x5df5
	je	.label_298
	jmp	.label_300
.label_347:
	cmp	rax, 0x5dca2df5
	nop	
	je	.label_298
	cmp	rax, 0x61636673
	je	.label_299
	jmp	.label_300
.label_354:
	mov	rbp, rbp
	cmp	rax, 0x28cd3d45
	je	.label_298
	cmp	rax, 0x2bad1dea
	mov	rbp, rbp
	je	.label_298
	nop	
	jmp	.label_300
.label_303:
	mov	rbp, rbp
	cmp	rax, 0xef53
	je	.label_298
	mov	rbp, rbp
	cmp	rax, 0xf15f
	je	.label_298
	lea	rdi, [rdi]
	jmp	.label_300
.label_350:
	mov	rbp, rbp
	mov	ecx, 0xbacbacbc
	cmp	rax, rcx
	nop	
	je	.label_299
	mov	rbp, rbp
	mov	ecx, 0xbeefdead
	mov	rsp, rsp
	jmp	.label_327
.label_312:
	cmp	rax, 0x5346544e
	je	.label_298
	mov	rbp, rbp
	cmp	rax, 0x534f434b
	mov	rbp, rbp
	je	.label_298
	jmp	.label_300
.label_320:
	lea	rsi, [rsi]
	cmp	rax, 0x794c7630
	je	.label_299
	cmp	rax, 0x7c7c6673
	nop	
	je	.label_299
	mov	rbp, rbp
	jmp	.label_300
.label_324:
	cmp	rax, 0x64626720
	lea	rsi, [rsi]
	je	.label_298
	cmp	rax, 0x64646178
	je	.label_298
	mov	rsp, rsp
	jmp	.label_300
.label_341:
	mov	rbp, rbp
	mov	ecx, 0xfe534d42
	lea	rdi, [rdi]
	cmp	rax, rcx
	je	.label_299
	lea	rdi, [rdi]
	mov	ecx, 0xff534d42
.label_327:
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jne	.label_300
.label_299:
	mov	cl, 1
.label_298:
	lea	rdi, [rdi]
	and	cl, 7
	nop	
	mov	bl, 3
	mov	rbp, rbp
	shr	bl, cl
	lea	rdi, [rdi]
	and	bl, 1
.label_301:
	mov	rbp, rbp
	mov	al, bl
	add	rsp, 0x78
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_300:
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_298
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069c0

	.globl dump_remainder
	.type dump_remainder, @function
dump_remainder:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r13
	nop	
	push	r12
	push	rbx
	sub	rsp, 0x2018
	mov	rsp, rsp
	mov	r12, rcx
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 4], edx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rsi
	mov	ebp, edi
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	r13, [rsp + 0x10]
	mov	r15, r12
	mov	rbp, rbp
	jmp	.label_356
	nop	word ptr cs:[rax + rax]
.label_360:
	sub	r15, r14
.label_356:
	cmp	r15, 0x2000
	mov	edx, 0x2000
	lea	rdi, [rdi]
	cmovb	rdx, r15
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, r13
	lea	rsi, [rsi]
	call	safe_read
	mov	r14, rax
	test	r14, r14
	mov	rsp, rsp
	je	.label_359
	cmp	r14, -1
	je	.label_358
	test	bpl, 1
	lea	rdi, [rdi]
	je	.label_361
	mov	al,  byte ptr [byte ptr [rip + write_header.first_file]]
	and	al, 1
	mov	edx, OFFSET FLAT:.str_0
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.85
	cmovne	rdx, rax
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rbp, rbp
	mov	edi, 1
	nop	
	mov	esi, OFFSET FLAT:.str.84
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	__printf_chk
	mov	byte ptr [byte ptr [rip + write_header.first_file]],  1
.label_361:
	mov	rsp, rsp
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, r14
	call	xwrite_stdout
	mov	rbp, rbp
	add	rbx, r14
	cmp	r12, -1
	lea	rsi, [rsi]
	je	.label_356
	mov	rbp, rbp
	cmp	r12, -2
	nop	
	je	.label_359
	mov	rsp, rsp
	cmp	r15, r14
	mov	rbp, rbp
	jne	.label_360
	jmp	.label_359
.label_358:
	lea	rsi, [rsi]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	cmp	ebp, 0xb
	jne	.label_357
.label_359:
	mov	rax, rbx
	add	rsp, 0x2018
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_357:
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	mov	rbp, rbp
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	nop	
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x406b50

	.globl xlseek
	.type xlseek, @function
xlseek:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	r15, rcx
	mov	ebp, edx
	mov	rbx, rsi
	call	lseek
	test	rax, rax
	js	.label_362
	lea	rsi, [rsi]
	add	rsp, 0x18
	pop	rbx
	nop	
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_362:
	mov	rbp, rbp
	lea	rsi, [rsp]
	mov	rdi, rbx
	call	offtostr
	mov	r14, rax
	nop	
	cmp	ebp, 2
	nop	
	je	.label_366
	cmp	ebp, 1
	mov	rsp, rsp
	je	.label_363
	lea	rsi, [rsi]
	test	ebp, ebp
	jne	.label_364
	lea	rsi, [rsi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.88
	jmp	.label_365
.label_366:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.90
	jmp	.label_365
.label_363:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.89
.label_365:
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, r15
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	nop	
	mov	rdx, rbp
	lea	rsi, [rsi]
	mov	r8, r14
	nop	
	call	error
	mov	edi, 1
	call	exit
.label_364:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c60

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	push	rbp
	nop	
	push	rbx
	lea	rsi, [rsi]
	push	rax
	lea	rdi, [rdi]
	mov	rbx, rsi
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_367
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	fwrite_unlocked
	cmp	rax, rbx
	nop	
	jb	.label_368
.label_367:
	lea	rdi, [rdi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_368:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	call	clearerr_unlocked
	call	__errno_location
	mov	ebp, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.87
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str.20
	call	quotearg_style
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	nop	
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d10

	.globl wd_hasher
	.type wd_hasher, @function
wd_hasher:
	movsxd	rax, dword ptr [rdi + 0x44]
	xor	edx, edx
	div	rsi
	mov	rsp, rsp
	mov	rax, rdx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d30

	.globl wd_comparator
	.type wd_comparator, @function
wd_comparator:
	mov	rbp, rbp
	mov	eax, dword ptr [rdi + 0x44]
	cmp	eax, dword ptr [rsi + 0x44]
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d50

	.globl recheck
	.type recheck, @function
recheck:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0xa8
	mov	ebp, esi
	mov	rsp, rsp
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r12]
	nop	
	movzx	eax, byte ptr [rdi]
	lea	rdi, [rdi]
	lea	r14, [r12 + 0x36]
	cmp	eax, 0x2d
	jne	.label_388
	mov	rbp, rbp
	lea	r13, [r12 + 0x3c]
	cmp	byte ptr [rdi + 1], 0
	mov	rbp, rbp
	mov	al, byte ptr [r12 + 0x36]
	lea	rsi, [rsi]
	mov	byte ptr [rsp], al
	mov	rsp, rsp
	mov	r15d, dword ptr [r12 + 0x3c]
	mov	rbp, rbp
	jne	.label_394
	xor	ebx, ebx
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc], eax
	mov	rbp, rbp
	jmp	.label_400
.label_388:
	mov	al, byte ptr [r12 + 0x36]
	lea	rsi, [rsi]
	mov	byte ptr [rsp], al
	lea	r13, [r12 + 0x3c]
	mov	r15d, dword ptr [r12 + 0x3c]
.label_394:
	lea	rdi, [rdi]
	test	bpl, bpl
	sete	al
	movzx	esi, al
	shl	esi, 0xb
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xc], 0
	lea	rsi, [rsi]
	xor	eax, eax
	call	open_safer
	mov	ebx, eax
.label_400:
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x38]
	mov	rsp, rsp
	cmp	eax, -1
	sete	cl
	lea	rdi, [rdi]
	shr	rax, 0x20
	mov	rbp, rbp
	sete	al
	lea	rdi, [rdi]
	xor	al, cl
	je	.label_370
	mov	rbp, rbp
	cmp	ebx, -1
	sete	al
	mov	rsp, rsp
	and	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	lea	rdi, [rdi]
	xor	al, 1
	mov	byte ptr [r14], al
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + disable_inotify]]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	jne	.label_381
	nop	
	mov	rsi, qword ptr [r12]
	mov	rsp, rsp
	lea	rdx, [rsp + 0x10]
	mov	edi, 1
	call	__lxstat
	mov	rsp, rsp
	test	eax, eax
	nop	
	jne	.label_381
	mov	rsp, rsp
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x28]
	nop	
	cmp	eax, 0xa000
	jne	.label_381
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	dword ptr [r13], 0xffffffff
	mov	byte ptr [r12 + 0x34], 1
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.106
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsp, rsp
	mov	rsi, qword ptr [r12]
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	jne	.label_392
	nop	
	cmp	byte ptr [rsi + 1], 0
	jne	.label_392
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.83
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
.label_392:
	lea	rdi, [rdi]
	mov	edi, 4
	lea	rsi, [rsi]
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	error
	mov	rbx, rbp
	jmp	.label_372
.label_381:
	cmp	ebx, -1
	lea	rsi, [rsi]
	je	.label_380
	lea	rsi, [rsi]
	lea	rdx, [rsp + 0x10]
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, ebx
	call	__fxstat
	mov	rbp, rbp
	test	eax, eax
	js	.label_380
	mov	eax, 0xf000
	lea	rsi, [rsi]
	and	eax, dword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	cmp	eax, 0x7fff
	jg	.label_403
	nop	
	cmp	eax, 0x1000
	lea	rdi, [rdi]
	je	.label_391
	cmp	eax, 0x2000
	je	.label_391
	jmp	.label_393
.label_380:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rax]
	mov	dword ptr [r13], ebp
	mov	rbp, rbp
	cmp	byte ptr [r14], 0
	je	.label_387
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	cmp	r15d, ebp
	je	.label_372
	mov	rsp, rsp
	mov	rdx, qword ptr [r12]
	movzx	eax, byte ptr [rdx]
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	jne	.label_398
	mov	rbp, rbp
	cmp	byte ptr [rdx + 1], 0
	nop	
	jne	.label_398
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.83
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
.label_398:
	nop	
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	nop	
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	
	jmp	.label_372
.label_387:
	mov	rsp, rsp
	cmp	byte ptr [rsp], 0
	je	.label_372
	mov	r14, rbx
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.107
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	movzx	eax, byte ptr [rsi]
	mov	rbp, rbp
	cmp	eax, 0x2d
	mov	rsp, rsp
	jne	.label_382
	cmp	byte ptr [rsi + 1], 0
	mov	rsp, rsp
	jne	.label_382
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, rax
.label_382:
	mov	edi, 4
	call	quotearg_style
	nop	
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rbp, rbp
	mov	rdx, rbx
	call	error
	jmp	.label_379
.label_403:
	cmp	eax, 0x8000
	je	.label_391
	cmp	eax, 0xc000
	nop	
	jne	.label_393
.label_391:
	mov	rsi, qword ptr [r12]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	jne	.label_396
	cmp	byte ptr [rsi + 1], 0
	nop	
	jne	.label_396
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_396:
	mov	edi, ebx
	mov	rbp, rbp
	mov	r14, rbx
	call	fremote
	mov	rsp, rsp
	mov	byte ptr [r12 + 0x35], al
	test	al, al
	je	.label_404
	mov	al,  byte ptr [byte ptr [rip + disable_inotify]]
	mov	rbp, rbp
	and	al, 1
	lea	rdi, [rdi]
	je	.label_405
.label_404:
	mov	rsp, rsp
	mov	dword ptr [r13], 0
	or	r15d, 2
	cmp	r15d, 2
	mov	rsp, rsp
	jne	.label_407
	lea	rdi, [rdi]
	cmp	dword ptr [r12 + 0x38], -1
	je	.label_376
	mov	rax, qword ptr [r12 + 0x28]
	cmp	rax, qword ptr [rsp + 0x18]
	jne	.label_383
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x20]
	cmp	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	jne	.label_383
	mov	rbx, qword ptr [r12]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx]
	nop	
	cmp	eax, 0x2d
	jne	.label_401
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 1], 0
	mov	rcx, r14
	jne	.label_389
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	mov	rbx, rcx
	call	dcgettext
	mov	rcx, rbx
	mov	rbx, rax
	lea	rsi, [rsi]
	jmp	.label_389
.label_393:
	nop	
	mov	dword ptr [r13], 0xffffffff
	mov	byte ptr [r14], 0
	nop	
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	and	al, 1
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	sete	cl
	and	cl, al
	xor	cl, 1
	mov	byte ptr [r12 + 0x34], cl
	cmp	byte ptr [rsp], 0
	mov	rsp, rsp
	jne	.label_395
	mov	rsp, rsp
	cmp	r15d, -1
	mov	rsp, rsp
	je	.label_372
.label_395:
	nop	
	mov	r14, rbx
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.109
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsi, qword ptr [r12]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	jne	.label_374
	cmp	byte ptr [rsi + 1], 0
	jne	.label_374
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.83
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi, rax
.label_374:
	mov	edi, 4
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rbx, rax
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:.str_0
	cmp	byte ptr [r12 + 0x34], 0
	je	.label_385
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.82
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	r8, rax
.label_385:
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, rbp
	lea	rsi, [rsi]
	mov	rcx, rbx
	call	error
	jmp	.label_379
.label_405:
	mov	rbp, rbp
	mov	dword ptr [r13], 0xffffffff
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.110
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r12]
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	mov	rsp, rsp
	jne	.label_397
	cmp	byte ptr [rsi + 1], 0
	jne	.label_397
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.83
	nop	
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi, rax
.label_397:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rbx
	call	error
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x34], 0x101
.label_379:
	mov	rbx, r14
.label_372:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r12]
	nop	
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2d
	jne	.label_375
	cmp	byte ptr [rbp + 1], 0
	nop	
	jne	.label_375
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rax
.label_375:
	lea	eax, [rbx + 1]
	mov	rsp, rsp
	cmp	eax, 2
	mov	rbp, rbp
	jb	.label_386
	nop	
	mov	edi, ebx
	call	close
	mov	rcx, rbx
	mov	rsp, rsp
	test	eax, eax
	je	.label_386
	mov	rsp, rsp
	mov	r14, rcx
	call	__errno_location
	nop	
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.93
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rbp, rbp
	mov	edi, 4
	nop	
	mov	rsi, rbp
	call	quotearg_style
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	r8d, r14d
	lea	rsi, [rsi]
	call	error
.label_386:
	mov	rbp, rbp
	mov	ebp, dword ptr [r12 + 0x38]
	mov	rbx, qword ptr [r12]
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	mov	rbp, rbp
	jne	.label_390
	mov	rbp, rbp
	cmp	byte ptr [rbx + 1], 0
	mov	rsp, rsp
	jne	.label_390
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
.label_390:
	nop	
	lea	eax, [rbp + 1]
	cmp	eax, 2
	nop	
	jb	.label_373
	mov	edi, ebp
	call	close
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_373
	mov	rsp, rsp
	call	__errno_location
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.93
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	mov	r8d, ebp
	call	error
.label_373:
	mov	dword ptr [r12 + 0x38], 0xffffffff
	nop	
	jmp	.label_377
.label_407:
	cmp	dword ptr [r12 + 0x38], -1
	jne	.label_399
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.112
	mov	rbp, rbp
	jmp	.label_406
.label_383:
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.114
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rsi, qword ptr [r12]
	movzx	eax, byte ptr [rsi]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_371
	cmp	byte ptr [rsi + 1], 0
	jne	.label_371
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_371:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	r15d, dword ptr [r12 + 0x38]
	mov	rbx, qword ptr [r12]
	movzx	eax, byte ptr [rbx]
	mov	rsp, rsp
	cmp	eax, 0x2d
	jne	.label_369
	cmp	byte ptr [rbx + 1], 0
	mov	rsp, rsp
	jne	.label_369
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.83
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
.label_369:
	mov	rbp, rbp
	lea	eax, [r15 + 1]
	cmp	eax, 2
	jb	.label_378
	lea	rsi, [rsi]
	mov	edi, r15d
	call	close
	nop	
	test	eax, eax
	mov	rbp, rbp
	je	.label_378
	call	__errno_location
	mov	r13d, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.93
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, r13d
	mov	rdx, qword ptr [rsp]
	mov	rsp, rsp
	mov	r8d, r15d
	mov	rbp, rbp
	call	error
	jmp	.label_378
.label_376:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.113
.label_406:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rsp, rsp
	mov	rsi, qword ptr [r12]
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	lea	rdi, [rdi]
	jne	.label_402
	lea	rdi, [rdi]
	cmp	byte ptr [rsi + 1], 0
	jne	.label_402
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, rax
.label_402:
	lea	rsi, [rsi]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbx
	nop	
	call	error
.label_378:
	lea	rdi, [rdi]
	movzx	eax, bpl
	mov	ecx, dword ptr [rsp + 0xc]
	mov	rsp, rsp
	test	cl, cl
	lea	rdi, [rdi]
	mov	ecx, 0xffffffff
	lea	rdi, [rdi]
	cmove	ecx, eax
	nop	
	mov	rbp, r14
	mov	dword ptr [r12 + 0x38], ebp
	mov	qword ptr [r12 + 8], 0
	movups	xmm0, xmmword ptr [rsp + 0x68]
	movups	xmmword ptr [r12 + 0x10], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	mov	rbp, rbp
	movups	xmmword ptr [r12 + 0x20], xmm0
	nop	
	mov	eax, dword ptr [rsp + 0x28]
	mov	dword ptr [r12 + 0x30], eax
	lea	rsi, [rsi]
	mov	dword ptr [r12 + 0x40], ecx
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x58], 0
	mov	byte ptr [r12 + 0x34], 0
	mov	rcx, qword ptr [r12]
	mov	rbp, rbp
	movzx	eax, byte ptr [rcx]
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	jne	.label_384
	cmp	byte ptr [rcx + 1], 0
	jne	.label_384
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
.label_384:
	nop	
	xor	esi, esi
	xor	edx, edx
	lea	rsi, [rsi]
	mov	edi, ebp
	call	xlseek
.label_377:
	add	rsp, 0xa8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_401:
	mov	rcx, r14
.label_389:
	lea	eax, [rcx + 1]
	mov	rsp, rsp
	cmp	eax, 2
	mov	rbp, rbp
	jb	.label_377
	mov	edi, ecx
	mov	rbp, rcx
	nop	
	call	close
	mov	rcx, rbp
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	je	.label_377
	mov	r14, rcx
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	r15d, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.93
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, r15d
	lea	rsi, [rsi]
	mov	rdx, rbp
	nop	
	mov	r8d, r14d
	call	error
	lea	rdi, [rdi]
	jmp	.label_377
.label_370:
	mov	edi, OFFSET FLAT:.str.105
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.92
	lea	rsi, [rsi]
	mov	edx, 0x3df
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.recheck
	lea	rsi, [rsi]
	call	__assert_fail
.label_399:
	nop	
	mov	edi, OFFSET FLAT:.str.111
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.92
	mov	rbp, rbp
	mov	edx, 0x42c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.recheck
	lea	rsi, [rsi]
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077e0

	.globl check_fspec
	.type check_fspec, @function
check_fspec:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x90
	mov	rbp, rbp
	mov	r15, rsi
	mov	rbx, rdi
	nop	
	mov	esi, dword ptr [rbx + 0x38]
	cmp	esi, -1
	lea	rdi, [rdi]
	je	.label_414
	mov	r14, qword ptr [rbx]
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2d
	nop	
	jne	.label_411
	cmp	byte ptr [r14 + 1], 0
	jne	.label_411
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	nop	
	mov	esi, dword ptr [rbx + 0x38]
.label_411:
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsp, rsp
	call	__fxstat
	test	eax, eax
	je	.label_412
	lea	rsi, [rsi]
	call	__errno_location
	mov	r12, rax
	mov	eax, dword ptr [r12]
	mov	dword ptr [rbx + 0x3c], eax
	mov	r15d, dword ptr [rbx + 0x38]
	lea	eax, [r15 + 1]
	mov	rsp, rsp
	cmp	eax, 2
	lea	rsi, [rsi]
	jb	.label_410
	mov	rsp, rsp
	mov	edi, r15d
	mov	rsp, rsp
	call	close
	lea	rdi, [rdi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_410
	lea	rsi, [rsi]
	mov	r12d, dword ptr [r12]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.93
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rax
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r12d
	mov	rbp, rbp
	mov	rdx, rbp
	mov	rbp, rbp
	mov	r8d, r15d
	call	error
.label_410:
	mov	dword ptr [rbx + 0x38], 0xffffffff
	jmp	.label_414
.label_412:
	mov	rsp, rsp
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x30]
	lea	rsi, [rsi]
	cmp	eax, 0x8000
	mov	rbp, rbp
	jne	.label_408
	nop	
	mov	rax, qword ptr [rsp + 0x30]
	cmp	rax, qword ptr [rbx + 8]
	jge	.label_413
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.115
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rbp, rbp
	mov	rdx, r14
	call	quotearg_n_style_colon
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbp
	call	error
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbx + 0x38]
	xor	esi, esi
	nop	
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rcx, r14
	call	xlseek
	mov	qword ptr [rbx + 8], 0
	lea	rdi, [rdi]
	jmp	.label_408
.label_413:
	mov	rax, qword ptr [rsp + 0x30]
	cmp	rax, qword ptr [rbx + 8]
	nop	
	jne	.label_408
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rsp + 0x58]
	jne	.label_408
	mov	eax, dword ptr [rbx + 0x18]
	cmp	eax, dword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	je	.label_414
.label_408:
	movzx	eax,  byte ptr [byte ptr [rip + print_headers]]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	jne	.label_415
	cmp	qword ptr [r15], rbx
	mov	rbp, rbp
	setne	al
	jmp	.label_416
.label_415:
	xor	eax, eax
.label_416:
	mov	edx, dword ptr [rbx + 0x38]
	movzx	edi, al
	lea	rdi, [rdi]
	mov	rcx, -1
	mov	rsi, r14
	call	dump_remainder
	lea	rdi, [rdi]
	add	qword ptr [rbx + 8], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_414
	mov	rbp, rbp
	mov	qword ptr [r15], rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	call	fflush_unlocked
	mov	rsp, rsp
	test	eax, eax
	jne	.label_409
.label_414:
	add	rsp, 0x90
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_409:
	mov	rsp, rsp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebx
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a70

	.globl die_pipe
	.type die_pipe, @function
die_pipe:
	mov	rbp, rbp
	push	rax
	lea	rsi, [rsi]
	mov	edi, 0xd
	call	raise
	mov	edi, 1
	mov	rbp, rbp
	call	exit
	nop	
	.section	.text
	.align	32
	#Procedure 0x407a90

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x407aa0

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
	je	.label_423
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
.label_417:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	jne	.label_418
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	je	.label_419
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_422
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rax, rax
	je	.label_420
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
	je	.label_418
.label_420:
	mov	rsp, rsp
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_418
.label_422:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbp
	nop	dword ptr [rax + rax]
.label_418:
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	lea	rsi, [rsi]
	inc	rbp
	add	r14, r13
	test	r15, r15
	nop	
	jne	.label_417
	lea	rsi, [rsi]
	jmp	.label_421
.label_423:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x10], rax
.label_421:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	mov	rsp, rsp
	cmove	rbp, qword ptr [rsp + 0x18]
.label_419:
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
	#Procedure 0x407c20
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
	je	.label_424
	mov	esi, OFFSET FLAT:.str.1_0
	nop	
	jmp	.label_425
.label_424:
	nop	
	mov	esi, OFFSET FLAT:.str_4
.label_425:
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
	#Procedure 0x407cc0

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
	mov	esi, OFFSET FLAT:.str.2_0
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
	je	.label_428
	lea	rdi, [rdi]
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_431:
	test	r15, r15
	mov	rbp, rbp
	je	.label_430
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_427
.label_430:
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
	jmp	.label_426
	nop	dword ptr [rax]
.label_427:
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
.label_426:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_431
.label_428:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_429
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
.label_429:
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
	#Procedure 0x407e40

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
	jns	.label_433
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_434
	mov	esi, OFFSET FLAT:.str.1_0
	mov	rsp, rsp
	jmp	.label_432
.label_434:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_4
.label_432:
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
.label_433:
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
	#Procedure 0x407f60
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
	je	.label_435
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_436:
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
	je	.label_435
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_436
.label_435:
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
	#Procedure 0x407ff0

	.globl cl_strtod
	.type cl_strtod, @function
cl_strtod:
	mov	rsp, rsp
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsp + 8]
	lea	rsi, [rsi]
	call	strtod
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 8]
	mov	rsp, rsp
	cmp	byte ptr [r12], 0
	lea	rdi, [rdi]
	je	.label_437
	movsd	qword ptr [rsp + 0x18], xmm0
	call	__errno_location
	mov	r15, rax
	lea	rdi, [rdi]
	mov	ebp, dword ptr [r15]
	mov	rsp, rsp
	lea	rsi, [rsp + 0x10]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	c_strtod
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	cmp	r12, rax
	jae	.label_439
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	r12, rax
	lea	rsi, [rsi]
	jmp	.label_437
.label_439:
	mov	rbp, rbp
	mov	dword ptr [r15], ebp
	movsd	xmm0, qword ptr [rsp + 0x18]
.label_437:
	test	r14, r14
	je	.label_438
	mov	rbp, rbp
	mov	qword ptr [r14], r12
.label_438:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4080b0
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
	#Procedure 0x4080c0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4080d0

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
	je	.label_441
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_440
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_440
.label_441:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_443
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_440:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_442
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
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_443:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_442:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
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
	#Procedure 0x4081d0

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	r14
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	nop	
	cmp	eax, 0x2f
	sete	al
	movzx	r14d, al
	call	last_component
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	sub	rcx, rbx
	nop	dword ptr [rax]
.label_445:
	lea	rdi, [rdi]
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	r14, rax
	mov	rsp, rsp
	jae	.label_444
	lea	rcx, [rax - 1]
	nop	
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	lea	rdi, [rdi]
	je	.label_445
.label_444:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408240
	.globl mdir_name
	.type mdir_name, @function
mdir_name:

	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	r14, rdi
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2f
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	movzx	r15d, al
	nop	
	call	last_component
	nop	
	sub	rax, r14
	nop	dword ptr [rax]
.label_449:
	mov	rbx, rax
	mov	rsp, rsp
	cmp	r15, rbx
	mov	rsp, rsp
	jae	.label_446
	lea	rax, [rbx - 1]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [r14 + rbx - 1]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	je	.label_449
.label_446:
	test	rbx, rbx
	sete	al
	movzx	eax, al
	mov	rbp, rbp
	lea	rdi, [rbx + rax + 1]
	mov	rsp, rsp
	call	malloc
	nop	
	mov	r15, rax
	nop	
	xor	eax, eax
	mov	rsp, rsp
	test	r15, r15
	je	.label_447
	nop	
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	memcpy
	nop	
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_448
	lea	rdi, [rdi]
	mov	byte ptr [r15], 0x2e
	nop	
	mov	ebx, 1
.label_448:
	mov	rbp, rbp
	mov	byte ptr [r15 + rbx], 0
	mov	rax, r15
.label_447:
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408300

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_450:
	nop	
	movzx	edx, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	cmp	edx, 0x2f
	mov	rbp, rbp
	je	.label_450
	xor	r8d, r8d
	mov	rax, rdi
	jmp	.label_451
	nop	dword ptr [rax + rax]
.label_452:
	mov	dl, byte ptr [rax + 1]
	mov	rbp, rbp
	inc	rax
	lea	rsi, [rsi]
	mov	r8b, cl
.label_451:
	mov	cl, 1
	movzx	esi, dl
	mov	rsp, rsp
	cmp	esi, 0x2f
	je	.label_452
	mov	rsp, rsp
	test	dl, dl
	mov	rbp, rbp
	je	.label_454
	mov	cl, r8b
	mov	rsp, rsp
	and	cl, 1
	je	.label_453
	xor	r8d, r8d
.label_453:
	lea	rsi, [rsi]
	test	cl, cl
	cmovne	rdi, rax
	mov	cl, r8b
	nop	
	jmp	.label_452
.label_454:
	mov	rsp, rsp
	mov	rax, rdi
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408380
	.globl base_len
	.type base_len, @function
base_len:

	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rcx, rax
.label_456:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_455
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_456
.label_455:
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083c0

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_457
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
.label_457:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_458
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
	ja	.label_459
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_460
.label_459:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_460:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_458:
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
	#Procedure 0x4084e0
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084f0
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408500

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408510
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
	jae	.label_466
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
	jb	.label_462
	xor	eax, eax
	nop	
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_464
	mov	rbp, rbp
	mov	rdi, rcx
	nop	dword ptr [rax]
.label_461:
	nop	
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	mov	rsp, rsp
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_461
.label_464:
	add	rcx, 0x10
.label_462:
	nop	
	test	rsi, rsi
	je	.label_466
	nop	word ptr cs:[rax + rax]
.label_469:
	cmp	qword ptr [rcx], 0
	nop	
	mov	esi, 0
	mov	rdi, rcx
	mov	rbp, rbp
	je	.label_467
	nop	word ptr cs:[rax + rax]
.label_463:
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_463
	mov	rbp, rbp
	cmp	rsi, rax
	lea	rsi, [rsi]
	cmova	rax, rsi
.label_467:
	cmp	qword ptr [rcx + 0x10], 0
	nop	
	je	.label_465
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_468:
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	inc	rsi
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_468
	mov	rsp, rsp
	cmp	rsi, rax
	nop	
	cmova	rax, rsi
.label_465:
	mov	rsp, rsp
	add	rcx, 0x20
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rsp, rsp
	jb	.label_469
.label_466:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408620
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
	jae	.label_479
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
	jb	.label_470
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_480
	mov	esi, 1
	mov	rax, rcx
	nop	dword ptr [rax + rax]
.label_471:
	mov	rbp, rbp
	inc	rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	test	rax, rax
	jne	.label_471
	mov	rsp, rsp
	jmp	.label_475
.label_470:
	mov	rbp, rbp
	xor	esi, esi
	jmp	.label_477
.label_480:
	xor	esi, esi
.label_475:
	add	rcx, 0x10
.label_477:
	test	r8, r8
	nop	
	je	.label_479
	nop	dword ptr [rax]
.label_472:
	cmp	qword ptr [rcx], 0
	mov	rbp, rbp
	mov	rax, rcx
	je	.label_481
	nop	dword ptr [rax]
.label_482:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_482
	lea	rdi, [rdi]
	inc	rsi
.label_481:
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_476
	lea	rax, [rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_478:
	lea	rdi, [rdi]
	inc	rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_478
	inc	rsi
.label_476:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_472
.label_479:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_473
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	cmp	rdx, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	je	.label_474
.label_473:
	xor	eax, eax
.label_474:
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408730
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
	jae	.label_492
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
	jb	.label_493
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_483
	mov	rsp, rsp
	mov	rdi, rax
	nop	word ptr [rax + rax]
.label_484:
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	nop	
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_484
.label_483:
	add	rax, 0x10
.label_493:
	test	rsi, rsi
	je	.label_492
	nop	dword ptr [rax]
.label_491:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	je	.label_486
	nop	word ptr cs:[rax + rax]
.label_487:
	mov	rdi, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	inc	rsi
	nop	
	test	rdi, rdi
	jne	.label_487
	mov	rbp, rbp
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_486:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_494
	lea	rdi, [rax + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_485:
	mov	rdi, qword ptr [rdi + 8]
	mov	rsp, rsp
	inc	rsi
	test	rdi, rdi
	jne	.label_485
	mov	rbp, rbp
	cmp	rsi, rbx
	mov	rbp, rbp
	cmova	rbx, rsi
.label_494:
	add	rax, 0x20
	nop	
	cmp	rax, rdx
	jb	.label_491
.label_492:
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	nop	
	call	__fprintf_chk
	nop	
	movq	xmm1, r14
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_488]]
	punpckldq	xmm1, xmm2
	lea	rsi, [rsi]
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_489]]
	nop	
	subpd	xmm1, xmm3
	lea	rdi, [rdi]
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	lea	rsi, [rsi]
	mulsd	xmm0,  qword ptr [word ptr [rip + label_490]]
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
	mov	edx, OFFSET FLAT:.str.2_1
	mov	al, 1
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_1
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
	#Procedure 0x408940

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
	jae	.label_495
	mov	rbx, qword ptr [r14]
	nop	
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	mov	rsp, rsp
	test	rsi, rsi
	je	.label_497
	lea	rsi, [rsi]
	add	rbx, rax
	je	.label_497
	cmp	rsi, r12
	je	.label_498
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_499:
	nop	
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_496
	nop	
	mov	rbx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_497
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	nop	
	cmp	rsi, r12
	lea	rdi, [rdi]
	jne	.label_499
.label_498:
	mov	r15, r12
	jmp	.label_497
.label_496:
	nop	
	mov	r15, qword ptr [rbx]
.label_497:
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
.label_495:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a00
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	mov	rbp, rbp
	je	.label_500
	nop	
	mov	rcx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi + 8]
	mov	rbp, rbp
	jmp	.label_502
	nop	dword ptr [rax]
.label_501:
	add	rcx, 0x10
.label_502:
	cmp	rcx, rdx
	jae	.label_503
	mov	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_501
.label_500:
	mov	rsp, rsp
	ret	
.label_503:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x408a40
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
	jae	.label_509
	nop	
	mov	rcx, qword ptr [r14]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	lea	rdx, [rcx + rax]
	nop	word ptr [rax + rax]
.label_506:
	nop	
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	je	.label_504
	test	rdx, rdx
	jne	.label_506
	lea	rdi, [rdi]
	jmp	.label_505
.label_504:
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_505
	mov	rax, qword ptr [rdx]
	jmp	.label_507
.label_505:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	dword ptr [rax]
.label_508:
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	eax, 0
	mov	rbp, rbp
	jae	.label_507
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_508
.label_507:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_509:
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408ae0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_510
	nop	word ptr cs:[rax + rax]
.label_512:
	add	r9, 0x10
.label_510:
	nop	
	cmp	r9, r8
	lea	rdi, [rdi]
	jae	.label_511
	lea	rsi, [rsi]
	cmp	qword ptr [r9], 0
	je	.label_512
	test	r9, r9
	mov	rbp, rbp
	mov	r10, r9
	mov	rbp, rbp
	je	.label_512
	nop	word ptr cs:[rax + rax]
.label_513:
	mov	rsp, rsp
	cmp	rax, rdx
	jae	.label_511
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
	jne	.label_513
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_512
.label_511:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408b60
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
	jmp	.label_514
	nop	dword ptr [rax]
.label_515:
	lea	rsi, [rsi]
	add	r13, 0x10
.label_514:
	nop	
	cmp	r13, rax
	lea	rsi, [rsi]
	jae	.label_517
	mov	rdi, qword ptr [r13]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_515
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_515
	mov	rsi, r14
	lea	rsi, [rsi]
	call	r15
	mov	rbp, rbp
	test	al, al
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_517
	nop	word ptr [rax + rax]
.label_518:
	mov	rsp, rsp
	inc	rbx
	mov	rbp, rbp
	mov	rbp, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_516
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_518
	jmp	.label_517
	nop	word ptr cs:[rax + rax]
.label_516:
	mov	rax, qword ptr [r12 + 8]
	mov	rbp, rbp
	jmp	.label_515
.label_517:
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
	#Procedure 0x408c30
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	mov	al, byte ptr [rdi]
	nop	
	xor	edx, edx
	test	al, al
	je	.label_520
	inc	rdi
	nop	
	xor	edx, edx
.label_519:
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
	jne	.label_519
.label_520:
	mov	rax, rdx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c70
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	mov	eax,  dword ptr [dword ptr [rip + label_521]]
	mov	dword ptr [rdi + 0x10], eax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c90

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
	je	.label_526
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	mov	rbp, rbp
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_535
	movss	xmm0, dword ptr [rbx + 8]
	mov	rsp, rsp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_527]]
	jbe	.label_523
	lea	rsi, [rsi]
	movss	xmm1,  dword ptr [dword ptr [rip + label_531]]
	ucomiss	xmm1, xmm0
	jbe	.label_523
	mov	rbp, rbp
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_522]]
	lea	rsi, [rsi]
	jbe	.label_523
	movss	xmm1, dword ptr [rbx]
	lea	rsi, [rsi]
	xorps	xmm2, xmm2
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm2
	jb	.label_523
	addss	xmm1,  dword ptr [dword ptr [rip + label_527]]
	ucomiss	xmm0, xmm1
	lea	rdi, [rdi]
	jbe	.label_523
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbx + 4]
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_533]]
	ucomiss	xmm2, xmm0
	jb	.label_523
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	mov	rsp, rsp
	jbe	.label_523
.label_535:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_532
	lea	rsi, [rsi]
	mov	eax, r12d
	and	eax, 1
	nop	
	test	r12, r12
	js	.label_534
	mov	rbp, rbp
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_524
.label_534:
	shr	r12, 1
	mov	rsp, rsp
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_524:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_529]]
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
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_530]]
	nop	
	jae	.label_523
.label_532:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	mov	rsp, rsp
	jmp	.label_537
.label_536:
	mov	rbp, rbp
	add	rbx, 2
.label_537:
	cmp	rbx, -1
	mov	rbp, rbp
	je	.label_523
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	mov	edi, 9
	mov	rbp, rbp
	mov	ecx, 3
	lea	rdi, [rdi]
	jb	.label_528
	nop	word ptr cs:[rax + rax]
.label_525:
	xor	edx, edx
	mov	rax, rbx
	lea	rsi, [rsi]
	div	rcx
	test	rdx, rdx
	nop	
	je	.label_528
	mov	rbp, rbp
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	mov	rsp, rsp
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_525
.label_528:
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_536
	mov	rbp, rbp
	mov	rax, rbx
	lea	rdi, [rdi]
	shr	rax, 0x3c
	jne	.label_523
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_523
	mov	esi, 0x10
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_523
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
	jmp	.label_526
.label_523:
	nop	
	mov	rdi, r15
	call	free
	nop	
	xor	eax, eax
.label_526:
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
	#Procedure 0x408f70

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
	#Procedure 0x408f90

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
	#Procedure 0x408fa0
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
	jmp	.label_538
.label_542:
	mov	rsp, rsp
	add	r14, 0x10
.label_538:
	cmp	r14, rax
	jae	.label_540
	lea	rdi, [rdi]
	cmp	qword ptr [r14], 0
	nop	
	je	.label_542
	mov	rsp, rsp
	mov	rbx, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	nop	
	setne	cl
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_544
	nop	word ptr [rax + rax]
.label_543:
	nop	
	test	cl, 1
	je	.label_539
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	rax
	nop	
	mov	rax, qword ptr [r15 + 0x40]
.label_539:
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
	jne	.label_543
.label_544:
	test	cl, cl
	je	.label_541
	mov	rdi, qword ptr [r14]
	call	rax
.label_541:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	nop	
	jmp	.label_542
.label_540:
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
	#Procedure 0x409080

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
	je	.label_545
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x20], 0
	lea	rdi, [rdi]
	je	.label_545
	mov	r15, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	mov	rbp, rbp
	jmp	.label_553
	nop	word ptr [rax + rax]
.label_546:
	mov	rsp, rsp
	add	r15, 0x10
.label_553:
	lea	rdi, [rdi]
	cmp	r15, rax
	jae	.label_545
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_546
	test	r15, r15
	je	.label_546
	mov	rbp, rbp
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_551
	nop	dword ptr [rax]
.label_550:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_551:
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_550
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_546
.label_545:
	mov	r15, qword ptr [r14]
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	jmp	.label_549
	nop	dword ptr [rax + rax]
.label_547:
	mov	rbp, rbp
	add	r15, 0x10
.label_549:
	cmp	r15, rax
	jae	.label_552
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_547
	nop	dword ptr [rax + rax]
.label_554:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_554
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_547
.label_552:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_548
	nop	word ptr cs:[rax + rax]
.label_555:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	call	free
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	jne	.label_555
.label_548:
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
	#Procedure 0x4091b0

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
	jne	.label_571
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	and	ecx, 1
	lea	rsi, [rsi]
	test	rsi, rsi
	js	.label_564
	lea	rdi, [rdi]
	cvtsi2ss	xmm0, rsi
	lea	rdi, [rdi]
	jmp	.label_570
.label_564:
	shr	rsi, 1
	or	rcx, rsi
	mov	rsp, rsp
	cvtsi2ss	xmm0, rcx
	mov	rbp, rbp
	addss	xmm0, xmm0
.label_570:
	nop	
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_529]]
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
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_530]]
	mov	rbp, rbp
	jae	.label_558
.label_571:
	mov	rsp, rsp
	cmp	rsi, 0xa
	mov	rbp, rbp
	mov	ebx, 0xa
	mov	rbp, rbp
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_567
	nop	word ptr cs:[rax + rax]
.label_566:
	lea	rsi, [rsi]
	add	rbx, 2
.label_567:
	cmp	rbx, -1
	je	.label_558
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	nop	
	mov	edi, 9
	lea	rsi, [rsi]
	mov	ecx, 3
	lea	rsi, [rsi]
	jb	.label_556
.label_563:
	nop	
	xor	edx, edx
	mov	rax, rbx
	nop	
	div	rcx
	test	rdx, rdx
	je	.label_556
	lea	rdi, [rdi + rsi + 4]
	nop	
	add	rcx, 2
	add	rsi, 8
	lea	rsi, [rsi]
	cmp	rdi, rbx
	jb	.label_563
.label_556:
	mov	rsp, rsp
	xor	edx, edx
	nop	
	mov	rax, rbx
	div	rcx
	mov	rsp, rsp
	test	rdx, rdx
	je	.label_566
	nop	
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	ja	.label_558
	mov	bpl, 1
	mov	rbp, rbp
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_561
	nop	
	mov	esi, 0x10
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_558
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
	je	.label_562
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
	jmp	.label_561
.label_562:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rax
	nop	
	mov	r12, qword ptr [rsp]
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_560
.label_557:
	add	r12, 0x10
.label_560:
	nop	
	cmp	r12, r15
	lea	rsi, [rsi]
	jae	.label_573
	cmp	qword ptr [r12], 0
	je	.label_557
	mov	rbp, rbp
	mov	rbp, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_572
	mov	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_569:
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp]
	nop	
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	lea	rsi, [rsi]
	jae	.label_574
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	nop	
	shl	rax, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + rax], 0
	je	.label_568
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp + 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_559
	nop	
.label_568:
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
.label_559:
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rcx
	nop	
	jne	.label_569
.label_572:
	nop	
	mov	qword ptr [r12 + 8], 0
	nop	
	jmp	.label_557
.label_573:
	nop	
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_565
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	call	free
.label_558:
	mov	rbp, rbp
	xor	ebp, ebp
.label_561:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_574:
	mov	rbp, rbp
	call	abort
.label_565:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409520

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
	jae	.label_578
	nop	word ptr cs:[rax + rax]
.label_582:
	mov	r13, qword ptr [r14]
	nop	
	test	r13, r13
	mov	rbp, rbp
	je	.label_575
	lea	rdi, [rdi]
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_584
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp + 0x10]
	nop	word ptr [rax + rax]
.label_586:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	nop	
	call	qword ptr [rbp + 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	cmp	rax, rsi
	jae	.label_583
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	nop	
	shl	rax, 4
	mov	rsp, rsp
	cmp	qword ptr [rdx + rax], 0
	lea	rsi, [rsi]
	je	.label_580
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rdx + rax + 8], r15
	nop	
	jmp	.label_577
	nop	word ptr cs:[rax + rax]
.label_580:
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
.label_577:
	test	rcx, rcx
	mov	r15, rcx
	mov	rsp, rsp
	jne	.label_586
	mov	r13, qword ptr [r14]
.label_584:
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], 0
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 4]
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_575
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	mov	rbp, rbp
	call	qword ptr [rbp + 0x30]
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsp, rsp
	cmp	rbx, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	jae	.label_581
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	nop	
	cmp	qword ptr [r15 + rbx], 0
	je	.label_585
	mov	rax, qword ptr [rbp + 0x48]
	nop	
	test	rax, rax
	je	.label_588
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_576
.label_585:
	nop	
	add	r15, rbx
	nop	
	mov	qword ptr [r15], r13
	nop	
	inc	qword ptr [rbp + 0x18]
	mov	rsp, rsp
	jmp	.label_579
.label_588:
	mov	edi, 0x10
	nop	
	call	malloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_587
.label_576:
	mov	qword ptr [rax], r13
	nop	
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_579:
	mov	rbp, rbp
	mov	qword ptr [r14], 0
	nop	
	dec	qword ptr [r12 + 0x18]
.label_575:
	mov	rbp, rbp
	add	r14, 0x10
	mov	rbp, rbp
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_582
	mov	al, 1
.label_578:
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
.label_587:
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_578
.label_583:
	call	abort
.label_581:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409730

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
	je	.label_603
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
	jae	.label_603
	mov	rbx, qword ptr [r13]
	mov	rbp, rbp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	nop	
	test	rsi, rsi
	je	.label_589
	mov	rsp, rsp
	cmp	rsi, r14
	je	.label_597
	mov	rdi, r14
	nop	
	call	qword ptr [r13 + 0x38]
	test	al, al
	lea	rdi, [rdi]
	je	.label_604
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	jmp	.label_592
.label_597:
	mov	rax, r14
	jmp	.label_608
.label_604:
	mov	rax, qword ptr [rbx + rbp + 8]
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_589
	lea	rbp, [rbx + rbp + 8]
	nop	
.label_618:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	mov	rsp, rsp
	je	.label_607
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	jne	.label_616
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_618
	nop	
	jmp	.label_589
.label_607:
	mov	rbp, rbp
	mov	rax, r14
	jmp	.label_592
.label_616:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp]
.label_592:
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_589
.label_608:
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	r15, r15
	je	.label_593
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	jmp	.label_593
.label_589:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsp, rsp
	mov	edx, eax
	and	edx, 1
	nop	
	test	rax, rax
	mov	rbp, rbp
	js	.label_609
	cvtsi2ss	xmm1, rax
	jmp	.label_606
.label_609:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	lea	rdi, [rdi]
	addss	xmm1, xmm1
.label_606:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	edx, ecx
	and	edx, 1
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_617
	cvtsi2ss	xmm0, rcx
	jmp	.label_595
.label_617:
	shr	rcx, 1
	or	rdx, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, rdx
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_595:
	lea	rdi, [rdi]
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm3
	nop	
	jbe	.label_591
	nop	
	mov	ecx, OFFSET FLAT:default_tuning
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rbp, rbp
	je	.label_611
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_527]]
	jbe	.label_599
	nop	
	movss	xmm3,  dword ptr [dword ptr [rip + label_531]]
	ucomiss	xmm3, xmm2
	jbe	.label_599
	mov	rbp, rbp
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_522]]
	jbe	.label_599
	movss	xmm3, dword ptr [rax]
	lea	rsi, [rsi]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	lea	rdi, [rdi]
	jb	.label_599
	addss	xmm3,  dword ptr [dword ptr [rip + label_527]]
	ucomiss	xmm2, xmm3
	jbe	.label_599
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_533]]
	ucomiss	xmm5, xmm4
	mov	rbp, rbp
	jb	.label_599
	lea	rsi, [rsi]
	ucomiss	xmm4, xmm3
	lea	rsi, [rsi]
	ja	.label_601
.label_599:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_600]]
	jmp	.label_601
.label_611:
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:default_tuning
.label_601:
	movaps	xmm3, xmm2
	mov	rsp, rsp
	mulss	xmm3, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm3
	jbe	.label_591
	nop	
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rbp, rbp
	jne	.label_619
	mov	rbp, rbp
	mulss	xmm0, xmm2
.label_619:
	lea	rsi, [rsi]
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_530]]
	mov	rsp, rsp
	jae	.label_593
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_529]]
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
	je	.label_593
	mov	rsi, qword ptr [r13 + 0x10]
	nop	
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	lea	rsi, [rsi]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_603
	nop	
	mov	r15, qword ptr [r13]
	mov	rsp, rsp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [r15 + rbp]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_591
	cmp	rsi, r14
	mov	rbp, rbp
	mov	rax, r14
	lea	rdi, [rdi]
	je	.label_602
	mov	rdi, r14
	mov	rbp, rbp
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_610
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	jmp	.label_602
.label_610:
	mov	rax, qword ptr [r15 + rbp + 8]
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_591
	lea	rbp, [r15 + rbp + 8]
.label_594:
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	lea	rdi, [rdi]
	je	.label_615
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_590
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	mov	rsp, rsp
	add	rbp, 8
	test	rax, rax
	mov	rsp, rsp
	jne	.label_594
	lea	rsi, [rsi]
	jmp	.label_591
.label_615:
	mov	rax, r14
	lea	rdi, [rdi]
	jmp	.label_602
.label_590:
	mov	rax, qword ptr [rbp]
.label_602:
	mov	rsp, rsp
	test	rax, rax
	jne	.label_605
.label_591:
	cmp	qword ptr [r12], 0
	je	.label_598
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	mov	rbp, rbp
	je	.label_612
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0x48], rcx
	nop	
	jmp	.label_596
.label_598:
	lea	rsi, [rsi]
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_613]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	mov	rsp, rsp
	jmp	.label_614
.label_612:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_593
.label_596:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_614:
	lea	rdi, [rdi]
	mov	ebp, 1
.label_593:
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
.label_603:
	mov	rsp, rsp
	call	abort
.label_605:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b70

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
	je	.label_620
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rax, rbx
.label_620:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409bc0

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
	jae	.label_639
	mov	rbp, rbp
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	nop	
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_634
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_624
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_628
	mov	r14, qword ptr [r13]
.label_624:
	nop	
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_631
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
	jmp	.label_633
.label_628:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_634
	lea	rsi, [rsi]
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_630:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_623
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	mov	rsp, rsp
	jne	.label_632
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	lea	rsi, [rsi]
	jne	.label_630
	lea	rsi, [rsi]
	jmp	.label_634
.label_631:
	mov	qword ptr [r13], 0
	lea	rsi, [rsi]
	jmp	.label_633
.label_623:
	mov	rcx, rax
	jmp	.label_636
.label_632:
	mov	r14, qword ptr [rcx]
.label_636:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x48], rcx
.label_633:
	lea	rdi, [rdi]
	xor	r12d, r12d
	test	r14, r14
	je	.label_634
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	mov	rbp, rbp
	jne	.label_622
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_625
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	jmp	.label_638
.label_625:
	shr	rax, 1
	mov	rsp, rsp
	or	rcx, rax
	mov	rsp, rsp
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_638:
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	nop	
	test	rcx, rcx
	js	.label_637
	cvtsi2ss	xmm0, rcx
	mov	rsp, rsp
	jmp	.label_641
.label_637:
	mov	rbp, rbp
	shr	rcx, 1
	or	rdx, rcx
	nop	
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_641:
	movaps	xmm3, xmm2
	nop	
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_622
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_627
	lea	rdi, [rdi]
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_527]]
	nop	
	jbe	.label_621
	mov	rsp, rsp
	movss	xmm4,  dword ptr [dword ptr [rip + label_531]]
	ucomiss	xmm4, xmm3
	mov	rsp, rsp
	jbe	.label_621
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_621
	mov	rbp, rbp
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_522]]
	jbe	.label_621
	lea	rsi, [rsi]
	movss	xmm4,  dword ptr [dword ptr [rip + label_527]]
	addss	xmm4, xmm2
	mov	rbp, rbp
	ucomiss	xmm3, xmm4
	jbe	.label_621
	movss	xmm3, dword ptr [rax + 4]
	nop	
	movss	xmm5,  dword ptr [dword ptr [rip + label_533]]
	nop	
	ucomiss	xmm5, xmm3
	jb	.label_621
	ucomiss	xmm3, xmm4
	ja	.label_626
.label_621:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_626
.label_627:
	mov	eax, OFFSET FLAT:default_tuning
.label_626:
	mulss	xmm2, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm2, xmm1
	jbe	.label_622
	mulss	xmm0, dword ptr [rax + 4]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x10], 0
	mov	rsp, rsp
	jne	.label_635
	mulss	xmm0, dword ptr [rax + 8]
.label_635:
	movss	xmm1,  dword ptr [dword ptr [rip + label_529]]
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
	jne	.label_622
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_629
.label_640:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	mov	rsp, rsp
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	jne	.label_640
.label_629:
	nop	
	mov	qword ptr [r15 + 0x48], 0
.label_622:
	nop	
	mov	r12, r14
.label_634:
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
.label_639:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f10

	.globl offtostr
	.type offtostr, @function
offtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	mov	rsp, rsp
	test	rcx, rcx
	js	.label_642
	add	rsi, 0x14
	mov	rbp, rbp
	movabs	r8, 0x6666666666666667
.label_643:
	mov	rax, rcx
	mov	rsp, rsp
	imul	r8
	mov	rsp, rsp
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	rsi, [rsi]
	lea	edi, [rdx + rax]
	mov	rsp, rsp
	add	edi, edi
	mov	rbp, rbp
	lea	r9d, [rdi + rdi*4]
	lea	rdi, [rdi]
	mov	edi, ecx
	lea	rdi, [rdi]
	sub	edi, r9d
	add	edi, 0x30
	lea	rdi, [rdi]
	mov	byte ptr [rsi - 1], dil
	lea	rdi, [rdi]
	dec	rsi
	mov	rbp, rbp
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	mov	rbp, rbp
	ja	.label_643
	jmp	.label_645
.label_642:
	mov	rsp, rsp
	add	rsi, 0x15
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_644:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	nop	
	sub	edi, r9d
	mov	eax, 0x30
	nop	
	sub	eax, edi
	mov	byte ptr [rsi - 2], al
	add	rdx, r10
	lea	rdi, [rdi]
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	nop	
	mov	rcx, rdx
	lea	rsi, [rsi]
	ja	.label_644
	mov	byte ptr [rsi - 2], 0x2d
	mov	rsp, rsp
	add	rsi, -2
.label_645:
	mov	rbp, rbp
	mov	rax, rsi
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a000

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	mov	rsp, rsp
	push	rax
	mov	edi, OFFSET FLAT:.str_6
	lea	rdi, [rdi]
	call	getenv
	mov	rcx, rax
	mov	rbp, rbp
	mov	eax, 0x31069
	mov	rsp, rsp
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_646
	mov	rbp, rbp
	mov	eax, 0x31069
	lea	rdi, [rdi]
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_646
	mov	rsp, rsp
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	strtol
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	je	.label_646
	nop	
	mov	eax, 0x31069
.label_646:
	cmp	rax, 0x7fffffff
	mov	ecx, 0x7fffffff
	cmovl	ecx, eax
	nop	
	cmp	rax, -0x80000000
	mov	rbp, rbp
	mov	eax, 0x80000000
	nop	
	cmovge	eax, ecx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a090

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
	je	.label_647
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
	jl	.label_649
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_649
	mov	esi, OFFSET FLAT:.str.2_2
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_648
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_648:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_649:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_647:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_7
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
	#Procedure 0x40a180
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
	#Procedure 0x40a1d0
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
	#Procedure 0x40a1f0
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
	#Procedure 0x40a210
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
	#Procedure 0x40a280
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
	#Procedure 0x40a2a0
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
	je	.label_650
	test	rdx, rdx
	nop	
	je	.label_650
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_650:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a2e0
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
	#Procedure 0x40a390

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
.label_720:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_696
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_704]]
.label_989:
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
.label_990:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_727
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_727
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_746:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_742
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_742:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_746
.label_727:
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
	jmp	.label_698
.label_982:
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
	jmp	.label_698
.label_985:
	lea	rsi, [rsi]
	mov	al, 1
.label_983:
	mov	rbp, rbp
	mov	r12b, 1
.label_986:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_775
	lea	rsi, [rsi]
	mov	cl, al
.label_775:
	mov	rsp, rsp
	mov	al, cl
.label_984:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_658
	test	r10, r10
	je	.label_668
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_670
.label_658:
	xor	ecx, ecx
	jmp	.label_670
.label_987:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_682
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_687
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_691
.label_988:
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
	jmp	.label_698
.label_668:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_670:
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
	jmp	.label_698
.label_682:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_691
.label_687:
	lea	rdi, [rdi]
	mov	eax, 1
.label_691:
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
.label_698:
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
	jmp	.label_739
	nop	word ptr cs:[rax + rax]
.label_699:
	nop	
	inc	rdi
.label_739:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_652
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_685
	jmp	.label_661
	nop	dword ptr [rax + rax]
.label_652:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_667
.label_685:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_675
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_679
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_679
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
.label_679:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_714
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_717
	nop	dword ptr [rax + rax]
.label_675:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_717
	nop	word ptr cs:[rax + rax]
.label_714:
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
	jne	.label_743
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
	je	.label_717
	jmp	.label_676
.label_743:
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
.label_717:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_765
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_764]]
.label_1016:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_653
	mov	rbp, rbp
	jmp	.label_662
.label_1020:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_774
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_656
	nop	
	cmp	rbp, 1
	je	.label_662
	xor	r13d, r13d
	jmp	.label_669
.label_1009:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_671
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_676
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_683
	mov	al, r14b
	and	al, 1
	jne	.label_686
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_690
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_690:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_700
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_700:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_708
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_708:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_705
.label_1010:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_726
.label_1011:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_723
.label_1012:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_726
.label_1013:
	mov	bl, 0x66
	jmp	.label_726
.label_1014:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_723
.label_1017:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_732
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_736
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
	jae	.label_741
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_741:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_750
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_750:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_760
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_760:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_732:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_669
.label_1018:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_773
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_653
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_653
	mov	rbp, rbp
	jmp	.label_660
.label_1019:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_664
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_672
	lea	rdi, [rdi]
	jmp	.label_677
.label_765:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_681
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
.label_659:
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
	ja	.label_707
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_707
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_669
.label_774:
	test	rdi, rdi
	jne	.label_725
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_725
.label_662:
	mov	dl, 1
.label_1015:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_730
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_669
.label_671:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_699
	jmp	.label_653
.label_664:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_723
.label_672:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_719
.label_723:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_744
.label_726:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_669
	lea	rsi, [rsi]
	jmp	.label_722
.label_681:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_753
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
.label_753:
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
.label_757:
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
	je	.label_665
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_674
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_768
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_688
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_713:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_706
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_663
.label_706:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_713
.label_688:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_734
	xor	r13d, r13d
.label_734:
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
	je	.label_757
	mov	rsp, rsp
	jmp	.label_659
.label_725:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_669
.label_773:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_653
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_653
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_653
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_752
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_755
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_651
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_762
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_762:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_767
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_767:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_772
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_772:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_709
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_709:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_669
.label_653:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_669:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_678
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_693
	lea	rsi, [rsi]
	jmp	.label_697
.label_678:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_697
.label_693:
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
	jne	.label_702
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_710
	nop	word ptr cs:[rax + rax]
.label_697:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_710:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_719
	mov	rsp, rsp
	jmp	.label_722
.label_702:
	mov	bl, r15b
.label_722:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_676
	nop	
	cmp	r9d, 2
	jne	.label_654
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_654
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_703
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_703:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_740
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_740:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_655
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_655:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_654:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_715
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_715:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_694
.label_656:
	xor	r13d, r13d
	nop	
	jmp	.label_669
.label_707:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_758
	nop	dword ptr [rax + rax]
.label_733:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_758:
	test	cl, cl
	je	.label_763
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_666
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_771
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_771:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_666
	nop	dword ptr [rax]
.label_763:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_676
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_673
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_673
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_756
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_756:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_684
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_684:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_754
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_754:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_673:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_711
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_711:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_718
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_718:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_729
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
.label_729:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_666:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_719
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_748
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_748
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_751
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_751:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_761
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_761:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_748:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_733
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_733
	nop	word ptr cs:[rax + rax]
.label_719:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_657
	mov	rsp, rsp
	and	al, 1
	jne	.label_657
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_716
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_716:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_747
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_747:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_657:
	mov	rsp, rsp
	mov	bl, r15b
.label_694:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_701
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_701:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_699
.label_683:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_705
.label_686:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_705:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_712
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_712:
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
	je	.label_721
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_724
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_769
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_731
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_731:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_737
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_737:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_669
.label_721:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_669
.label_724:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_669
.label_769:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_669
.label_674:
	xor	r13d, r13d
.label_665:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_659
.label_768:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_759
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_770:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_766
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_770
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_659
.label_759:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_659
.label_766:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_659
.label_752:
	xor	r13d, r13d
	jmp	.label_669
.label_755:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_669
.label_661:
	nop	
	mov	r13, rdi
.label_667:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_680
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_692
.label_680:
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
	je	.label_695
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_695
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_738
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_695
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_720
.label_695:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_728
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_728
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_728
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_745:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_735
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_735:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_745
.label_728:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_749
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_749
.label_730:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_676
.label_663:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_676
.label_692:
	nop	
	mov	rbp, r13
	jmp	.label_676
.label_744:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_676:
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
.label_689:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_749:
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
.label_738:
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
	jmp	.label_689
.label_736:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_676
.label_677:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_676
.label_660:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_676
.label_651:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_676
.label_696:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b910
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
	#Procedure 0x40ba50
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
	je	.label_776
	mov	qword ptr [rax], rbx
.label_776:
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
	#Procedure 0x40bba0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_777
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_781:
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
	jl	.label_781
.label_777:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_780
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_778]], OFFSET FLAT:slot0
.label_780:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_779
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_779:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bc60
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x40bc70

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
	js	.label_788
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_783
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_786
.label_783:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_784
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
	jne	.label_787
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_787:
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
.label_786:
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
	ja	.label_785
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
	je	.label_782
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_782:
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
.label_785:
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
.label_788:
	lea	rdi, [rdi]
	call	abort
.label_784:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40bee0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bef0
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
	#Procedure 0x40bf20
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
	#Procedure 0x40bf50

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
	je	.label_789
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
.label_789:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bfe0
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
	je	.label_790
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
.label_790:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c080

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
	je	.label_791
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
.label_791:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c110
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
	je	.label_792
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
.label_792:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40c180
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_793]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_794]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_795]]
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
	#Procedure 0x40c220
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_793]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_794]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_795]]
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
	#Procedure 0x40c2c0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_793]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_794]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_795]]
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
	#Procedure 0x40c330
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_793]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_794]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_795]]
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
	#Procedure 0x40c3a0

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
	je	.label_796
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
.label_796:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40c480
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_793]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_794]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_795]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_797
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_797
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
.label_797:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40c510
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_793]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_794]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_795]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_798
	test	rdx, rdx
	je	.label_798
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
.label_798:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c5a0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_793]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_794]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_795]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_799
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_799
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
.label_799:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c640
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_793]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_794]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_795]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_800
	test	rsi, rsi
	je	.label_800
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
.label_800:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c6e0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c6f0
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
	#Procedure 0x40c710

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
	#Procedure 0x40c730

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
	#Procedure 0x40c760

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
	jne	.label_802
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_804
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_803
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_803
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_803
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_803
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_803
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_803
	nop	
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_802
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_802
.label_804:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_803
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_803
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_803
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_803
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_803
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_803
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_801
.label_803:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_802:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_801:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_802
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_802
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c8d0

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	rbx, rdx
	nop	
	mov	r14, rsi
	mov	rbp, rbp
	mov	r15d, edi
	nop	word ptr [rax + rax]
.label_806:
	mov	rsp, rsp
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	read
	mov	rsp, rsp
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	jns	.label_805
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	mov	rsp, rsp
	je	.label_806
	mov	rbp, rbp
	cmp	rbx, 0x7ff00001
	jb	.label_805
	lea	rdi, [rdi]
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	lea	rsi, [rsi]
	je	.label_806
.label_805:
	nop	
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c960

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
	ja	.label_807
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
	jmp	.label_808
.label_807:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_808:
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
	#Procedure 0x40c9d0

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
	je	.label_811
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_8
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_813
.label_811:
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
.label_813:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_3
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
	mov	esi, OFFSET FLAT:.str.3_2
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
	ja	.label_816
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_817]]
.label_971:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_1
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
.label_816:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_814
.label_972:
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
.label_973:
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
.label_974:
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
	jmp	.label_810
.label_975:
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
	jmp	.label_809
.label_976:
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
	jmp	.label_818
.label_977:
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
.label_818:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_809:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_810:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_815
.label_979:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_814:
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
	jmp	.label_812
.label_978:
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
.label_812:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_815:
	mov	rbp, rbp
	call	__fprintf_chk
.label_970:
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
	#Procedure 0x40cdc0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_819:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_819
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cdf0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_823:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_820
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_822
	nop	word ptr cs:[rax + rax]
.label_820:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_822:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_821
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_823
.label_821:
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
	#Procedure 0x40ce80

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_824
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
.label_824:
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
.label_826:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_825
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_827
	nop	dword ptr [rax + rax]
.label_825:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_827:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_828
	inc	r9
	cmp	r9, 0xa
	jb	.label_826
.label_828:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cfc0
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
	mov	edx, OFFSET FLAT:.str.15_1
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
	#Procedure 0x40d050
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
	jb	.label_829
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_830
	test	rax, rax
	je	.label_829
.label_830:
	nop	
	pop	rbx
	ret	
.label_829:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d0a0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_831
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_832
.label_831:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_832:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d0d0
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
	jb	.label_834
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_833
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_833
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_833:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_835
	test	rax, rax
	je	.label_834
.label_835:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_834:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d150

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_836
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_836
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_836:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_837
	test	rax, rax
	nop	
	je	.label_838
.label_837:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_838:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d1a0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_839
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_843
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_842
.label_839:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_845
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_845:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_840
.label_842:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_841
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_841
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_841:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_844
	test	rax, rax
	mov	rbp, rbp
	je	.label_843
.label_844:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_843:
	call	xalloc_die
.label_840:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d280
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_846
	test	rax, rax
	mov	rbp, rbp
	je	.label_847
.label_846:
	pop	rbx
	ret	
.label_847:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40d2a0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_848
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_851
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_852
	call	free
	xor	eax, eax
	jmp	.label_849
.label_848:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_850
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_852:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_849
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_850
.label_849:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_850:
	mov	rbp, rbp
	call	xalloc_die
.label_851:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d330
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
	je	.label_853
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_854
.label_853:
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
.label_854:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d390
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
	jb	.label_855
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_855
	pop	rcx
	ret	
.label_855:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d3c0

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
	je	.label_857
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_856
.label_857:
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
.label_856:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d420
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
	je	.label_858
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_859
.label_858:
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
.label_859:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d480

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
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
	#Procedure 0x40d4d0

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r14, r9
	mov	rbp, rbp
	mov	r15, rcx
	lea	rdi, [rdi]
	mov	r13, rdx
	mov	eax, esi
	mov	r12, rdi
	lea	rcx, [rsp]
	nop	
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	test	eax, eax
	je	.label_861
	cmp	eax, 1
	je	.label_864
	mov	rbp, rbp
	cmp	eax, 3
	nop	
	jne	.label_863
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	jmp	.label_860
.label_864:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_860
.label_861:
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_866
	lea	rdi, [rdi]
	cmp	rbx, r15
	jbe	.label_862
.label_866:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	cmp	rbx, 0x40000000
	jb	.label_865
	mov	dword ptr [rax], 0x4b
	mov	rbp, rbp
	jmp	.label_860
.label_863:
	call	__errno_location
	nop	
	jmp	.label_860
.label_865:
	mov	dword ptr [rax], 0x22
.label_860:
	mov	ecx, dword ptr [rsp + 0x40]
	nop	
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r12
	call	quote
	nop	
	mov	r8, rax
	mov	edx, OFFSET FLAT:.str_3
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edi, ebx
	lea	rdi, [rdi]
	mov	esi, ebp
	nop	
	mov	rcx, r14
	mov	rsp, rsp
	call	error
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp]
.label_862:
	mov	rax, rbx
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d5f0

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	rsp, rsp
	mov	esi, 0xa
	lea	rdi, [rdi]
	mov	r8, rax
	mov	rsp, rsp
	mov	r9, r10
	mov	rsp, rsp
	call	xnumtoumax
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d630

	.globl xnanosleep
	.type xnanosleep, @function
xnanosleep:
	push	r15
	mov	rsp, rsp
	push	r14
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	call	dtotimespec
	mov	rsp, rsp
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdx
	call	__errno_location
	mov	rsp, rsp
	mov	r14, rax
	mov	dword ptr [r14], 0
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rdi, [rsp]
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rsi, [rsi]
	call	rpl_nanosleep
	test	eax, eax
	je	.label_867
	lea	r15, [rsp]
	nop	word ptr cs:[rax + rax]
.label_868:
	mov	eax, dword ptr [r14]
	mov	ebx, 0xffffffff
	or	eax, 4
	cmp	eax, 4
	jne	.label_867
	mov	dword ptr [r14], 0
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rsp, rsp
	xor	esi, esi
	mov	rdi, r15
	call	rpl_nanosleep
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_868
.label_867:
	nop	
	mov	eax, ebx
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d6e0

	.globl xstrtod
	.type xstrtod, @function
xstrtod:
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	r13, rcx
	mov	r14, rdx
	mov	rbp, rbp
	mov	r15, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	call	__errno_location
	mov	r12, rax
	lea	rsi, [rsi]
	mov	dword ptr [r12], 0
	mov	rbp, rbp
	lea	rsi, [rsp + 8]
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	call	r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 8]
	nop	
	cmp	rcx, rbx
	mov	rsp, rsp
	je	.label_873
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	jne	.label_869
	cmp	byte ptr [rcx], 0
	mov	rsp, rsp
	je	.label_869
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_871
.label_869:
	lea	rsi, [rsi]
	mov	al, 1
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	nop	
	jne	.label_872
	jnp	.label_870
.label_872:
	lea	rsi, [rsi]
	cmp	dword ptr [r12], 0x22
	setne	al
	jmp	.label_870
.label_873:
	lea	rdi, [rdi]
	xor	eax, eax
.label_870:
	test	r15, r15
	mov	rbp, rbp
	je	.label_871
	nop	
	mov	qword ptr [r15], rcx
.label_871:
	mov	rbp, rbp
	movsd	qword ptr [r14], xmm0
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d7b0

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
	jae	.label_886
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
.label_879:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_879
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
	je	.label_876
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
	je	.label_896
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rsp, rsp
	je	.label_894
	mov	rsp, rsp
	cmp	eax, 0x22
	jne	.label_876
	mov	dword ptr [rsp + 4], 1
.label_894:
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_882
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	lea	rsi, [rsi]
	jmp	.label_876
.label_896:
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_876
	movsx	esi, byte ptr [rbx]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_876
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
	je	.label_876
.label_882:
	lea	rdi, [rdi]
	movsx	r13d, byte ptr [r12]
	mov	rbp, rbp
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_874
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
	je	.label_881
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_887
	nop	
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_887
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
	je	.label_887
	movsx	eax, byte ptr [r12 + 1]
	lea	rdi, [rdi]
	mov	ecx, 1
	nop	
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_884
	cmp	eax, 0x44
	nop	
	je	.label_884
	cmp	eax, 0x69
	jne	.label_887
	movzx	eax, byte ptr [r12 + 2]
	mov	rbp, rbp
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_888
	lea	rdi, [rdi]
	mov	ecx, 1
.label_888:
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_887
.label_874:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_895
.label_884:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_887:
	cmp	r13d, 0x59
	lea	rdi, [rdi]
	jg	.label_900
	mov	rsp, rsp
	lea	eax, [r13 - 0x42]
	nop	
	cmp	eax, 0xe
	nop	
	ja	.label_877
	jmp	qword ptr [word ptr [+ (rax * 8) + label_880]]
.label_1051:
	mov	rax, rbp
	mov	rsp, rsp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_883
.label_900:
	lea	rsi, [rsi]
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_885
	mov	rbp, rbp
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	mov	rbp, rbp
	ja	.label_889
	mov	rsp, rsp
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_891]]
.label_1005:
	mov	rax, rbp
	shr	rax, 0x37
	lea	rsi, [rsi]
	setne	dl
	nop	
	shl	rbp, 9
.label_883:
	cmp	rax, 1
	nop	
	sbb	rax, rax
	lea	rdi, [rdi]
	not	rax
	or	rbp, rax
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	jmp	.label_893
.label_877:
	cmp	r13d, 0x54
	nop	
	je	.label_878
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_881
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
	jmp	.label_898
.label_885:
	cmp	r13d, 0x74
	je	.label_878
	mov	rbp, rbp
	cmp	r13d, 0x77
	mov	rbp, rbp
	jne	.label_881
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
	jmp	.label_893
.label_1006:
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
	jmp	.label_890
.label_1007:
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
	jmp	.label_897
.label_1008:
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
	jmp	.label_875
.label_878:
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
	jmp	.label_899
.label_889:
	cmp	r13d, 0x5a
	jne	.label_881
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
.label_898:
	movzx	eax, dl
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsi]
	jmp	.label_897
.label_881:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	lea	rdi, [rdi]
	mov	r13d, eax
	jmp	.label_876
.label_1052:
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
	jmp	.label_875
.label_1053:
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
.label_899:
	or	dl, r10b
.label_890:
	lea	rsi, [rsi]
	or	dl, bl
.label_875:
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
.label_897:
	mov	rsp, rsp
	mov	rbp, rsi
.label_893:
	lea	rsi, [rsi]
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + rcx], 0
	je	.label_892
	or	eax, 2
.label_892:
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 0x10]
.label_895:
	mov	qword ptr [rax], rbp
.label_876:
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
.label_886:
	mov	edi, OFFSET FLAT:.str_9
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e070

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_901
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_902
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
	je	.label_902
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
.label_901:
	mov	ecx, 1
.label_902:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e0e0

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
	je	.label_921
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
.label_921:
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
	ja	.label_914
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_908
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_905
	mov	rsp, rsp
	test	esi, esi
	jne	.label_914
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_915
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_920
.label_914:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_909
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_905
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_916
.label_908:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_912
.label_905:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_913
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_917
.label_913:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_917:
	mov	edx, dword ptr [rax]
.label_910:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_912:
	mov	ebp, eax
.label_906:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_916:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_909
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_911
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_904
.label_909:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_919
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_922
.label_915:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_920:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_910
.label_911:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_904:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_907
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
	jns	.label_903
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_903
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
	js	.label_906
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_923
.label_903:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_906
.label_919:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_922:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_912
.label_907:
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
.label_923:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_906
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_906
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_918
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
	jne	.label_906
.label_918:
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
	jmp	.label_906
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e4b0

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
	je	.label_924
	nop	
	cmp	r15, -2
	jb	.label_924
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_924
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_924:
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
	#Procedure 0x40e540

	.globl rpl_nanosleep
	.type rpl_nanosleep, @function
rpl_nanosleep:
	mov	rbp, rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdi + 8]
	cmp	rcx, 0x3b9aca00
	nop	
	jb	.label_925
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	mov	rbp, rbp
	jmp	.label_928
.label_925:
	mov	rbx, qword ptr [rdi]
	lea	r14, [rsp]
	nop	dword ptr [rax + rax]
.label_927:
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rcx
	nop	
	cmp	rbx, 0x1fa401
	mov	rsp, rsp
	jl	.label_926
	mov	qword ptr [rsp], 0x1fa400
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	nop	
	call	nanosleep
	lea	rdi, [rdi]
	add	rbx, -0x1fa400
	test	eax, eax
	lea	rsi, [rsi]
	mov	ecx, 0
	je	.label_927
	test	r15, r15
	je	.label_928
	add	qword ptr [r15], rbx
	jmp	.label_928
.label_926:
	mov	rsp, rsp
	mov	qword ptr [rsp], rbx
	lea	rdi, [rsp]
	mov	rsi, r15
	lea	rdi, [rdi]
	call	nanosleep
.label_928:
	nop	
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e610

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	r14
	lea	rsi, [rsi]
	push	rbx
	nop	
	push	rax
	nop	
	mov	rbx, rsi
	nop	
	mov	r14, rdi
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [rip + c_locale_cache]],  0
	jne	.label_929
	mov	rsp, rsp
	mov	edi, 0x1fbf
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_10
	lea	rdi, [rdi]
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
.label_929:
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [rip + c_locale_cache]]
	lea	rdi, [rdi]
	test	rdx, rdx
	lea	rdi, [rdi]
	je	.label_931
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r14
	jmp	strtod_l
.label_931:
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_930
	lea	rdi, [rdi]
	mov	qword ptr [rbx], r14
.label_930:
	xorps	xmm0, xmm0
	nop	
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e6a0

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
	jne	.label_932
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_933
	test	cl, cl
	mov	rsp, rsp
	jne	.label_933
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_933
.label_932:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_933
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_933:
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
	#Procedure 0x40e730

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	xor	edx, edx
	nop	
	ucomisd	xmm0,  qword ptr [word ptr [rip + label_934]]
	mov	rbp, rbp
	jbe	.label_935
	mov	edx, 0x3b9ac9ff
	lea	rsi, [rsi]
	movsd	xmm1,  qword ptr [word ptr [rip + label_936]]
	lea	rsi, [rsi]
	ucomisd	xmm1, xmm0
	mov	rsp, rsp
	jbe	.label_937
	lea	rdi, [rdi]
	cvttsd2si	rsi, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rsi
	subsd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_938]]
	mov	rbp, rbp
	cvttsd2si	rax, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rax
	ucomisd	xmm0, xmm1
	seta	cl
	lea	rdi, [rdi]
	movzx	ecx, cl
	add	rcx, rax
	nop	
	movabs	rdx, 0x112e0be826d694b3
	mov	rax, rcx
	imul	rdx
	nop	
	mov	rax, rdx
	mov	rbp, rbp
	shr	rdx, 0x3f
	lea	rsi, [rsi]
	sar	rax, 0x1a
	add	rax, rdx
	nop	
	imul	rdi, rax, 0x3b9aca00
	mov	rdx, rcx
	mov	rbp, rbp
	sub	rdx, rdi
	lea	rdi, [rdi]
	add	rdx, 0x3b9aca00
	sub	rcx, rdi
	lea	rdi, [rdi]
	cmovns	rdx, rcx
	add	rax, rsi
	sar	rcx, 0x3f
	lea	rsi, [rsi]
	add	rcx, rax
.label_937:
	lea	rdi, [rdi]
	mov	rax, rcx
	ret	
.label_935:
	mov	rbp, rbp
	inc	rcx
	mov	rax, rcx
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e820

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
	je	.label_940
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_939
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_941
.label_939:
	nop	
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_940
.label_941:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_940:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e870

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
	je	.label_942
	nop	
	mov	rax, rcx
.label_942:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e8b0

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
	.section	.text
	.align	32
	#Procedure 0x40e8d0

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
	js	.label_943
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_945
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
	je	.label_943
.label_945:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_943
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_944
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_944:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_943:
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
	#Procedure 0x40e980

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_946
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_946
	test	byte ptr [rbx + 1], 1
	je	.label_946
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_946:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e9c0

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
	jne	.label_947
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_947
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_948
.label_947:
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
.label_948:
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
	je	.label_949
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_949:
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
	#Procedure 0x40ea70

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