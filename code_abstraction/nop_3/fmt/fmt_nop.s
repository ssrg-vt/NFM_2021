	.section	.text
	.align	16
	#Procedure 0x4015d0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rbp
	push	rbx
	nop	
	push	rax
	mov	ebp, edi
	lea	rsi, [rsi]
	test	ebp, ebp
	jne	.label_9
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.20
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	nop	
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	nop	
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	mov	rbp, rbp
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 3
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, rax
	nop	
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.7
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.7
	mov	ecx, OFFSET FLAT:.str.36
	xor	eax, eax
	call	__printf_chk
	mov	rsp, rsp
	mov	edi, ebp
	mov	rsp, rsp
	call	exit
.label_9:
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rsi, [rsi]
	mov	esi, 1
	nop	
	xor	eax, eax
	mov	rdi, rbx
	nop	
	call	__fprintf_chk
	mov	edi, ebp
	mov	rsp, rsp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401880

	.globl main
	.type main, @function
main:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r12, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	lea	rsi, [rsi]
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	mov	rsp, rsp
	call	setlocale
	mov	edi, OFFSET FLAT:.str.9
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.10
	nop	
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.9
	lea	rsi, [rsi]
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + uniform]],  0
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + split]],  0
	nop	
	mov	byte ptr [byte ptr [rip + tagged]],  0
	mov	byte ptr [byte ptr [rip + crown]],  0
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + max_width]],  0x4b
	mov	qword ptr [word ptr [rip + prefix]], OFFSET FLAT:.str_0
	nop	
	mov	dword ptr [dword ptr [rip + prefix_full_length]],  0
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + prefix_lead_space]],  0
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + prefix_length]],  0
	xor	r14d, r14d
	mov	rbp, rbp
	cmp	r13d, 2
	lea	rdi, [rdi]
	jl	.label_29
	mov	rax, qword ptr [r12 + 8]
	xor	r14d, r14d
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2d
	jne	.label_29
	movsx	ecx, byte ptr [rax + 1]
	add	ecx, -0x30
	xor	r14d, r14d
	cmp	ecx, 9
	mov	rsp, rsp
	ja	.label_29
	inc	rax
	mov	rcx, qword ptr [r12]
	mov	qword ptr [r12 + 8], rcx
	lea	rdi, [rdi]
	lea	r12, [r12 + 8]
	mov	rbp, rbp
	dec	r13d
	mov	r14, rax
.label_29:
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	
	jmp	.label_13
.label_10:
	mov	byte ptr [rax], 0
	mov	rsp, rsp
	sub	eax, ebx
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + prefix_length]],  eax
	nop	word ptr cs:[rax + rax]
.label_13:
	nop	
	mov	edx, OFFSET FLAT:.str.11
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	nop	
	mov	edi, r13d
	lea	rdi, [rdi]
	mov	rsi, r12
	call	getopt_long
	mov	rsp, rsp
	mov	ebx, eax
	mov	rbp, rbp
	cmp	ebx, 0x62
	mov	rsp, rsp
	jle	.label_30
	lea	rsi, [rsi]
	lea	eax, [rbx - 0x70]
	cmp	eax, 7
	mov	rsp, rsp
	ja	.label_21
	jmp	qword ptr [word ptr [+ (rax * 8) + label_11]]
.label_505:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	mov	dword ptr [dword ptr [rip + prefix_lead_space]],  0
	nop	
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x20
	mov	eax, 0
	jne	.label_24
	nop	dword ptr [rax]
.label_23:
	mov	rcx, rax
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rbx + rcx + 1]
	lea	rax, [rcx + 1]
	lea	rsi, [rsi]
	cmp	edx, 0x20
	nop	
	je	.label_23
	lea	rsi, [rsi]
	lea	rbx, [rbx + rcx + 1]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + prefix_lead_space]],  eax
.label_24:
	nop	
	mov	qword ptr [word ptr [rip + prefix]],  rbx
	mov	rdi, rbx
	call	strlen
	mov	dword ptr [dword ptr [rip + prefix_full_length]],  eax
	movsxd	rcx, eax
	nop	
	add	rcx, rbx
	nop	word ptr cs:[rax + rax]
.label_32:
	mov	rsp, rsp
	mov	rax, rcx
	nop	
	cmp	rax, rbx
	jbe	.label_10
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rax - 1]
	cmp	edx, 0x20
	lea	rdi, [rdi]
	je	.label_32
	mov	rsp, rsp
	jmp	.label_10
.label_21:
	cmp	ebx, 0x63
	je	.label_22
	mov	rbp, rbp
	cmp	ebx, 0x67
	jne	.label_18
	mov	rsp, rsp
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	jmp	.label_13
.label_506:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + split]],  1
	nop	
	jmp	.label_13
.label_507:
	mov	byte ptr [byte ptr [rip + tagged]],  1
	nop	
	jmp	.label_13
.label_508:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + uniform]],  1
	lea	rdi, [rdi]
	jmp	.label_13
.label_509:
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	nop	
	jmp	.label_13
.label_22:
	mov	byte ptr [byte ptr [rip + crown]],  1
	mov	rsp, rsp
	jmp	.label_13
.label_30:
	cmp	ebx, -1
	jne	.label_17
	test	r14, r14
	je	.label_20
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	esi, 0
	mov	edx, 0x9c4
	mov	ecx, OFFSET FLAT:.str_0
	nop	
	xor	r9d, r9d
	mov	rdi, r14
	mov	rbp, rbp
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [dword ptr [rip + max_width]],  eax
	jmp	.label_31
.label_20:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [rip + max_width]]
.label_31:
	mov	rbp, rbp
	test	r15, r15
	mov	rbp, rbp
	je	.label_35
	movsxd	rbx, eax
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.15
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rsp, rsp
	mov	rdi, r15
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	r8, rax
	call	xdectoumax
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + goal_width]],  eax
	test	r14, r14
	mov	rsp, rsp
	jne	.label_12
	add	eax, 0xa
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + max_width]],  eax
	jmp	.label_12
.label_35:
	lea	rdi, [rdi]
	imul	eax, eax, 0xbb
	lea	rdi, [rdi]
	cdqe	
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	shr	rcx, 0x3f
	mov	rsp, rsp
	sar	rax, 0x26
	add	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + goal_width]],  eax
.label_12:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, r13d
	mov	rbp, rbp
	jne	.label_15
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	fmt
	lea	rsi, [rsi]
	mov	r15b, 1
	mov	rbp, rbp
	jmp	.label_25
.label_15:
	lea	rsi, [rsi]
	mov	r15b, 1
	lea	rdi, [rdi]
	jge	.label_25
	nop	word ptr cs:[rax + rax]
.label_16:
	cdqe	
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12 + rax*8]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	mov	rbp, rbp
	jne	.label_28
	nop	
	cmp	byte ptr [rbx + 1], 0
	je	.label_33
.label_28:
	mov	esi, OFFSET FLAT:.str.17_0
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	fopen
	mov	rsp, rsp
	mov	rbp, rax
	test	rbp, rbp
	je	.label_27
	nop	
	mov	rdi, rbp
	call	fmt
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_19
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	r15d, r15d
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_26
	nop	dword ptr [rax]
.label_27:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rbp, rbp
	mov	rdx, rbp
.label_26:
	call	error
	lea	rdi, [rdi]
	jmp	.label_19
.label_33:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	lea	rsi, [rsi]
	call	fmt
	nop	word ptr cs:[rax + rax]
.label_19:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	lea	rsi, [rsi]
	inc	eax
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, r13d
	jl	.label_16
.label_25:
	not	r15b
	and	r15b, 1
	mov	rsp, rsp
	movzx	eax, r15b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_17:
	lea	rsi, [rsi]
	cmp	ebx, 0xffffff7d
	je	.label_14
	cmp	ebx, 0xffffff7e
	jne	.label_18
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	call	usage
.label_14:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7
	nop	
	mov	edx, OFFSET FLAT:.str.17
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str.14
	mov	rsp, rsp
	xor	r9d, r9d
	xor	eax, eax
	lea	rdi, [rdi]
	call	version_etc
	xor	edi, edi
	call	exit
.label_18:
	lea	eax, [rbx - 0x30]
	cmp	eax, 9
	ja	.label_34
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_34:
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e40

	.globl fmt
	.type fmt, @function
fmt:
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	esi, 2
	mov	rbp, rbp
	call	fadvise
	mov	byte ptr [byte ptr [rip + tabs]],  0
	mov	dword ptr [dword ptr [rip + other_indent]],  0
	mov	dword ptr [dword ptr [rip + in_column]],  0
	nop	
	jmp	.label_52
	nop	word ptr [rax + rax]
.label_73:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	inc	eax
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + in_column]],  eax
.label_52:
	nop	
	mov	rax, qword ptr [r14 + 8]
	nop	
	cmp	rax, qword ptr [r14 + 0x10]
	nop	
	jae	.label_65
	nop	
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_91:
	lea	rsi, [rsi]
	cmp	ebp, 9
	lea	rsi, [rsi]
	je	.label_38
	mov	rbp, rbp
	cmp	ebp, 0x20
	nop	
	je	.label_73
	jmp	.label_75
	nop	word ptr cs:[rax + rax]
.label_38:
	nop	
	mov	byte ptr [byte ptr [rip + tabs]],  1
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	rsp, rsp
	mov	eax, ecx
	sar	eax, 0x1f
	lea	rsi, [rsi]
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	lea	rsi, [rsi]
	add	eax, 8
	mov	dword ptr [dword ptr [rip + in_column]],  eax
	lea	rdi, [rdi]
	jmp	.label_52
.label_65:
	mov	rdi, r14
	lea	rsi, [rsi]
	call	__uflow
	mov	rbp, rbp
	mov	ebp, eax
	lea	rdi, [rdi]
	jmp	.label_91
.label_75:
	cmp	dword ptr [dword ptr [rip + prefix_length]],  0
	je	.label_93
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + next_prefix_indent]],  eax
	mov	rbx,  qword ptr [word ptr [rip + prefix]]
	mov	rbp, rbp
	mov	al, byte ptr [rbx]
	nop	
	test	al, al
	lea	rsi, [rsi]
	je	.label_53
	nop	
	inc	rbx
	jmp	.label_101
.label_93:
	mov	eax,  dword ptr [dword ptr [rip + prefix_lead_space]]
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	cmp	eax, ecx
	cmovle	ecx, eax
	mov	dword ptr [dword ptr [rip + next_prefix_indent]],  ecx
	mov	rsp, rsp
	jmp	.label_103
.label_110:
	mov	rdi, r14
	mov	rbp, rbp
	call	__uflow
	mov	rbp, rbp
	mov	ebp, eax
	jmp	.label_83
	nop	word ptr cs:[rax + rax]
.label_101:
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rbp, rbp
	cmp	ebp, eax
	jne	.label_103
	lea	rdi, [rdi]
	inc	dword ptr [dword ptr [rip + in_column]]
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	nop	
	jae	.label_110
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	lea	rsi, [rsi]
	movzx	ebp, byte ptr [rax]
.label_83:
	mov	al, byte ptr [rbx]
	inc	rbx
	test	al, al
	jne	.label_101
	jmp	.label_53
	nop	word ptr cs:[rax + rax]
.label_47:
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_53:
	cmp	ebp, 9
	je	.label_120
	nop	
	cmp	ebp, 0x20
	mov	rbp, rbp
	jne	.label_103
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	inc	eax
	jmp	.label_122
	nop	dword ptr [rax]
.label_120:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + tabs]],  1
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	rsp, rsp
	mov	eax, ecx
	sar	eax, 0x1f
	lea	rdi, [rdi]
	shr	eax, 0x1d
	lea	rdi, [rdi]
	add	eax, ecx
	mov	rsp, rsp
	and	eax, 0xfffffff8
	mov	rsp, rsp
	add	eax, 8
.label_122:
	mov	dword ptr [dword ptr [rip + in_column]],  eax
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r14 + 0x10]
	nop	
	jb	.label_47
	mov	rdi, r14
	call	__uflow
	nop	
	mov	ebp, eax
	lea	rdi, [rdi]
	jmp	.label_53
.label_103:
	mov	dword ptr [dword ptr [rip + next_char]],  ebp
	mov	r15d, OFFSET FLAT:unused_word_type
	mov	r12d, OFFSET FLAT:in_column
	jmp	.label_56
.label_69:
	mov	rbp, rbp
	mov	ebp,  dword ptr [dword ptr [rip + next_char]]
	nop	word ptr cs:[rax + rax]
.label_56:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + last_line_length]],  0
	jmp	.label_74
.label_92:
	mov	eax,  dword ptr [dword ptr [rip + prefix_lead_space]]
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	cmp	eax, ecx
	lea	rsi, [rsi]
	cmovle	ecx, eax
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + next_prefix_indent]],  ecx
	nop	dword ptr [rax]
.label_74:
	cmp	ebp, -1
	nop	
	je	.label_61
	lea	rsi, [rsi]
	cmp	ebp, 0xa
	je	.label_61
	mov	eax,  dword ptr [dword ptr [rip + next_prefix_indent]]
	cmp	eax,  dword ptr [dword ptr [rip + prefix_lead_space]]
	jl	.label_61
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	edx,  dword ptr [dword ptr [rip + prefix_full_length]]
	nop	
	add	edx, eax
	lea	rdi, [rdi]
	cmp	ecx, edx
	jge	.label_43
	nop	word ptr cs:[rax + rax]
.label_61:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + out_column]],  0
	mov	r13d,  dword ptr [dword ptr [rip + next_prefix_indent]]
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + in_column]],  r13d
	mov	rbp, rbp
	jg	.label_88
	mov	rsp, rsp
	cmp	ebp, -1
	mov	rsp, rsp
	je	.label_95
	lea	rsi, [rsi]
	cmp	ebp, 0xa
	jne	.label_88
	lea	rdi, [rdi]
	mov	ebx, ebp
	mov	rsp, rsp
	jmp	.label_42
	nop	word ptr [rax + rax]
.label_88:
	xor	eax, eax
	lea	rdi, [rdi]
	movzx	ecx,  byte ptr [byte ptr [rip + tabs]]
	mov	rsp, rsp
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_40
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	r13d, 8
	jl	.label_63
	mov	rbp, rbp
	mov	ebx, r13d
	mov	rsp, rsp
	sar	ebx, 0x1f
	lea	rdi, [rdi]
	shr	ebx, 0x1d
	lea	rdi, [rdi]
	add	ebx, r13d
	lea	rsi, [rsi]
	and	ebx, 0xfffffff8
	cmp	ebx, 2
	mov	eax, 0
	jge	.label_99
	mov	rsp, rsp
	jmp	.label_40
.label_117:
	lea	rsi, [rsi]
	mov	esi, 9
	mov	rsp, rsp
	call	__overflow
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [rip + out_column]]
	mov	rbp, rbp
	jmp	.label_115
	nop	dword ptr [rax + rax]
.label_99:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_117
	lea	rdx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 9
.label_115:
	lea	rdi, [rdi]
	mov	eax, ecx
	lea	rsi, [rsi]
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	nop	
	and	eax, 0xfffffff8
	mov	rbp, rbp
	add	eax, 8
	nop	
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	cmp	eax, ebx
	nop	
	mov	ecx, eax
	jl	.label_99
	lea	rdi, [rdi]
	jmp	.label_40
.label_95:
	mov	ebx, ebp
	jmp	.label_42
.label_63:
	xor	eax, eax
	jmp	.label_40
	nop	dword ptr [rax + rax]
.label_51:
	lea	rdi, [rdi]
	inc	eax
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + out_column]],  eax
.label_40:
	cmp	eax, r13d
	nop	
	jge	.label_45
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_48
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	rsp, rsp
	mov	byte ptr [rcx], 0x20
	jmp	.label_51
.label_48:
	lea	rsi, [rsi]
	mov	esi, 0x20
	call	__overflow
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	mov	rsp, rsp
	jmp	.label_51
.label_45:
	nop	
	mov	r13d,  dword ptr [dword ptr [rip + in_column]]
	cmp	eax, r13d
	nop	
	jne	.label_41
	mov	ecx, eax
	mov	r13d, eax
	lea	rdi, [rdi]
	jmp	.label_64
	nop	dword ptr [rax + rax]
.label_41:
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + prefix]]
	lea	rdi, [rdi]
	jmp	.label_67
.label_81:
	mov	rsp, rsp
	call	__overflow
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	mov	r13d,  dword ptr [dword ptr [rip + in_column]]
	mov	rsp, rsp
	jmp	.label_72
	nop	dword ptr [rax]
.label_67:
	nop	
	movzx	esi, byte ptr [rbx]
	test	esi, esi
	mov	rbp, rbp
	je	.label_79
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	nop	
	jae	.label_81
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], sil
.label_72:
	inc	rbx
	lea	rsi, [rsi]
	inc	eax
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	lea	rsi, [rsi]
	cmp	eax, r13d
	nop	
	mov	ecx, r13d
	jne	.label_67
	mov	rsp, rsp
	jmp	.label_64
.label_79:
	mov	ecx, eax
.label_64:
	nop	
	cmp	ebp, -1
	mov	rsp, rsp
	je	.label_94
	mov	rsp, rsp
	mov	ebx, 0xa
	mov	rbp, rbp
	cmp	ebp, 0xa
	je	.label_42
	movzx	eax,  byte ptr [byte ptr [rip + tabs]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 1
	jne	.label_104
	mov	ebx, r13d
	sar	ebx, 0x1f
	shr	ebx, 0x1d
	add	ebx, r13d
	and	ebx, 0xfffffff8
	lea	eax, [rcx + 1]
	mov	rsp, rsp
	cmp	eax, ebx
	jge	.label_102
	nop	
	cmp	ecx, ebx
	lea	rdi, [rdi]
	mov	eax, ecx
	mov	rsp, rsp
	jl	.label_39
	lea	rsi, [rsi]
	jmp	.label_46
	nop	dword ptr [rax]
.label_94:
	mov	eax,  dword ptr [dword ptr [rip + prefix_length]]
	lea	rsi, [rsi]
	add	eax,  dword ptr [dword ptr [rip + next_prefix_indent]]
	mov	ebx, 0xffffffff
	cmp	r13d, eax
	jl	.label_42
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_109
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_42
.label_104:
	mov	rbp, rbp
	mov	eax, ecx
	jmp	.label_46
.label_121:
	nop	
	mov	esi, 9
	call	__overflow
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [rip + out_column]]
	jmp	.label_118
	nop	dword ptr [rax]
.label_39:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_121
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	nop	
	mov	byte ptr [rax], 9
.label_118:
	mov	eax, ecx
	mov	rsp, rsp
	sar	eax, 0x1f
	lea	rsi, [rsi]
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	nop	
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	mov	rbp, rbp
	cmp	eax, ebx
	mov	ecx, eax
	lea	rdi, [rdi]
	jl	.label_39
	jmp	.label_46
.label_102:
	mov	rbp, rbp
	mov	eax, ecx
	nop	word ptr cs:[rax + rax]
.label_46:
	cmp	eax, r13d
	jl	.label_49
	mov	ebx, ebp
	jmp	.label_42
.label_57:
	mov	esi, 0x20
	nop	
	call	__overflow
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	jmp	.label_54
	nop	dword ptr [rax]
.label_49:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_57
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
.label_54:
	lea	rdi, [rdi]
	inc	eax
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	cmp	eax, r13d
	mov	rbp, rbp
	jl	.label_49
	mov	rbp, rbp
	mov	ebx, ebp
	mov	rsp, rsp
	jmp	.label_42
.label_109:
	mov	esi, 0xa
	mov	rsp, rsp
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_42
	nop	
.label_90:
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	rbp, rbp
	mov	qword ptr [r14 + 8], rcx
	mov	rsp, rsp
	movzx	ebx, byte ptr [rax]
.label_42:
	mov	rsp, rsp
	cmp	ebx, -1
	lea	rdi, [rdi]
	je	.label_80
	cmp	ebx, 0xa
	lea	rdi, [rdi]
	je	.label_84
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_86
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], bl
.label_97:
	mov	rax, qword ptr [r14 + 8]
	nop	
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_90
	mov	rdi, r14
	call	__uflow
	lea	rdi, [rdi]
	mov	ebx, eax
	mov	rbp, rbp
	jmp	.label_42
.label_86:
	movzx	esi, bl
	call	__overflow
	lea	rsi, [rsi]
	jmp	.label_97
	nop	word ptr cs:[rax + rax]
.label_84:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_100
	nop	
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], 0xa
.label_98:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + in_column]],  0
	mov	rsp, rsp
	jmp	.label_55
	nop	dword ptr [rax + rax]
.label_114:
	nop	
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	lea	rsi, [rsi]
	inc	eax
	mov	dword ptr [dword ptr [rip + in_column]],  eax
.label_55:
	mov	rax, qword ptr [r14 + 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_107
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], rcx
	mov	rsp, rsp
	movzx	ebp, byte ptr [rax]
.label_36:
	cmp	ebp, 9
	mov	rbp, rbp
	je	.label_112
	nop	
	cmp	ebp, 0x20
	je	.label_114
	jmp	.label_116
.label_112:
	mov	byte ptr [byte ptr [rip + tabs]],  1
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	eax, ecx
	lea	rdi, [rdi]
	sar	eax, 0x1f
	mov	rsp, rsp
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	lea	rdi, [rdi]
	add	eax, 8
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + in_column]],  eax
	nop	
	jmp	.label_55
.label_107:
	mov	rdi, r14
	mov	rbp, rbp
	call	__uflow
	lea	rdi, [rdi]
	mov	ebp, eax
	lea	rdi, [rdi]
	jmp	.label_36
	nop	word ptr [rax + rax]
.label_116:
	cmp	dword ptr [dword ptr [rip + prefix_length]],  0
	je	.label_92
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	mov	dword ptr [dword ptr [rip + next_prefix_indent]],  eax
	nop	
	mov	rbx,  qword ptr [word ptr [rip + prefix]]
	mov	al, byte ptr [rbx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_62
	lea	rdi, [rdi]
	inc	rbx
.label_58:
	mov	rbp, rbp
	movzx	eax, al
	cmp	ebp, eax
	mov	rsp, rsp
	jne	.label_74
	inc	dword ptr [dword ptr [rip + in_column]]
	nop	
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_50
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_66:
	mov	rbp, rbp
	mov	al, byte ptr [rbx]
	mov	rsp, rsp
	inc	rbx
	test	al, al
	jne	.label_58
	mov	rsp, rsp
	jmp	.label_62
.label_50:
	mov	rsp, rsp
	mov	rdi, r14
	mov	rbp, rbp
	call	__uflow
	lea	rdi, [rdi]
	mov	ebp, eax
	jmp	.label_66
	nop	dword ptr [rax]
.label_89:
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
	lea	rdi, [rdi]
	movzx	ebp, byte ptr [rax]
.label_62:
	cmp	ebp, 9
	mov	rbp, rbp
	je	.label_71
	cmp	ebp, 0x20
	mov	rbp, rbp
	jne	.label_74
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	nop	
	inc	eax
	nop	
	jmp	.label_77
	nop	word ptr cs:[rax + rax]
.label_71:
	nop	
	mov	byte ptr [byte ptr [rip + tabs]],  1
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	eax, ecx
	mov	rbp, rbp
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	mov	rbp, rbp
	and	eax, 0xfffffff8
	add	eax, 8
.label_77:
	mov	dword ptr [dword ptr [rip + in_column]],  eax
	nop	
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_89
	mov	rdi, r14
	call	__uflow
	mov	ebp, eax
	mov	rbp, rbp
	jmp	.label_62
.label_100:
	mov	esi, 0xa
	call	__overflow
	mov	rbp, rbp
	jmp	.label_98
.label_43:
	mov	dword ptr [dword ptr [rip + prefix_indent]],  eax
	mov	dword ptr [dword ptr [rip + first_indent]],  ecx
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + wptr]], OFFSET FLAT:parabuf
	mov	qword ptr [word ptr [rip + word_limit]], OFFSET FLAT:unused_word_type
	mov	rdi, r14
	mov	esi, ebp
	mov	rbp, rbp
	call	get_line
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [rip + next_prefix_indent]]
	mov	ebp,  dword ptr [dword ptr [rip + prefix_indent]]
	cmp	ecx, ebp
	nop	
	jne	.label_105
	mov	esi,  dword ptr [dword ptr [rip + prefix_full_length]]
	mov	rsp, rsp
	add	esi, ecx
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + in_column]],  esi
	lea	rdi, [rdi]
	setge	bl
	nop	
	cmp	eax, 0xa
	setne	dl
	cmp	eax, -1
	setne	sil
	and	sil, dl
	lea	rdi, [rdi]
	and	sil, bl
	lea	rsi, [rsi]
	jmp	.label_106
.label_105:
	xor	esi, esi
.label_106:
	lea	rdi, [rdi]
	movzx	edx,  byte ptr [byte ptr [rip + split]]
	and	edx, 1
	cmp	edx, 1
	jne	.label_113
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [rip + first_indent]]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + other_indent]],  ecx
	mov	rbp, rbp
	jmp	.label_37
.label_113:
	mov	rbp, rbp
	mov	dl,  byte ptr [byte ptr [rip + crown]]
	lea	rdi, [rdi]
	and	dl, 1
	je	.label_119
	test	sil, sil
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:first_indent
	mov	rsp, rsp
	cmovne	rdx, r12
	nop	
	mov	edx, dword ptr [rdx]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + other_indent]],  edx
	cmp	ecx, ebp
	jne	.label_37
	lea	rdi, [rdi]
	add	ecx,  dword ptr [dword ptr [rip + prefix_full_length]]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + in_column]],  ecx
	jl	.label_37
	nop	
	cmp	eax, -1
	je	.label_37
	nop	
	cmp	eax, 0xa
	mov	rsp, rsp
	je	.label_37
.label_111:
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	esi, eax
	call	get_line
	mov	edx,  dword ptr [dword ptr [rip + next_prefix_indent]]
	cmp	edx,  dword ptr [dword ptr [rip + prefix_indent]]
	jne	.label_37
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	nop	
	add	edx,  dword ptr [dword ptr [rip + prefix_full_length]]
	mov	rbp, rbp
	cmp	ecx, edx
	nop	
	jl	.label_37
	cmp	eax, -1
	lea	rsi, [rsi]
	je	.label_37
	cmp	eax, 0xa
	mov	rbp, rbp
	je	.label_37
	nop	
	cmp	ecx,  dword ptr [dword ptr [rip + other_indent]]
	lea	rdi, [rdi]
	je	.label_111
	jmp	.label_37
.label_119:
	mov	rbp, rbp
	movzx	edx,  byte ptr [byte ptr [rip + tagged]]
	and	edx, 1
	cmp	edx, 1
	lea	rsi, [rsi]
	jne	.label_70
	test	sil, sil
	je	.label_76
	nop	
	mov	edi,  dword ptr [dword ptr [rip + in_column]]
	mov	esi,  dword ptr [dword ptr [rip + first_indent]]
	mov	rbp, rbp
	cmp	edi, esi
	jne	.label_78
	lea	rsi, [rsi]
	mov	esi, edi
	mov	rbp, rbp
	jmp	.label_82
.label_70:
	mov	esi,  dword ptr [dword ptr [rip + first_indent]]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + other_indent]],  esi
	jmp	.label_85
.label_76:
	nop	
	mov	esi,  dword ptr [dword ptr [rip + first_indent]]
.label_82:
	cmp	dword ptr [dword ptr [rip + other_indent]],  esi
	jne	.label_85
	nop	
	test	esi, esi
	sete	dl
	mov	rbp, rbp
	movzx	edx, dl
	lea	edx, [rdx + rdx*2]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + other_indent]],  edx
	lea	rsi, [rsi]
	jmp	.label_85
.label_78:
	mov	dword ptr [dword ptr [rip + other_indent]],  edi
.label_85:
	mov	rbp, rbp
	mov	dl,  byte ptr [byte ptr [rip + tagged]]
	mov	rsp, rsp
	and	dl, 1
	lea	rdi, [rdi]
	je	.label_96
	cmp	ecx, ebp
	jne	.label_37
	lea	rsi, [rsi]
	mov	edx,  dword ptr [dword ptr [rip + in_column]]
	mov	rbp, rbp
	add	ecx,  dword ptr [dword ptr [rip + prefix_full_length]]
	cmp	edx, ecx
	lea	rsi, [rsi]
	jl	.label_37
	cmp	eax, -1
	je	.label_37
	nop	
	cmp	eax, 0xa
	je	.label_37
	cmp	edx, esi
	mov	rbp, rbp
	je	.label_37
.label_87:
	mov	rdi, r14
	mov	rbp, rbp
	mov	esi, eax
	mov	rbp, rbp
	call	get_line
	mov	edx,  dword ptr [dword ptr [rip + next_prefix_indent]]
	mov	rbp, rbp
	cmp	edx,  dword ptr [dword ptr [rip + prefix_indent]]
	jne	.label_37
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	add	edx,  dword ptr [dword ptr [rip + prefix_full_length]]
	cmp	ecx, edx
	mov	rsp, rsp
	jl	.label_37
	lea	rdi, [rdi]
	cmp	eax, -1
	je	.label_37
	lea	rdi, [rdi]
	cmp	eax, 0xa
	mov	rsp, rsp
	je	.label_37
	cmp	ecx,  dword ptr [dword ptr [rip + other_indent]]
	mov	rsp, rsp
	je	.label_87
	jmp	.label_37
.label_96:
	cmp	ecx, ebp
	lea	rdi, [rdi]
	jne	.label_37
.label_44:
	lea	rdi, [rdi]
	mov	edx,  dword ptr [dword ptr [rip + in_column]]
	nop	
	add	ecx,  dword ptr [dword ptr [rip + prefix_full_length]]
	cmp	edx, ecx
	lea	rdi, [rdi]
	jl	.label_37
	mov	rsp, rsp
	cmp	eax, -1
	mov	rsp, rsp
	je	.label_37
	nop	
	cmp	eax, 0xa
	mov	rsp, rsp
	je	.label_37
	mov	rbp, rbp
	cmp	edx,  dword ptr [dword ptr [rip + other_indent]]
	lea	rsi, [rsi]
	jne	.label_37
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	mov	esi, eax
	lea	rdi, [rdi]
	call	get_line
	mov	ecx,  dword ptr [dword ptr [rip + next_prefix_indent]]
	lea	rdi, [rdi]
	cmp	ecx,  dword ptr [dword ptr [rip + prefix_indent]]
	je	.label_44
.label_37:
	lea	rdi, [rdi]
	mov	rbp,  qword ptr [word ptr [rip + word_limit]]
	cmp	rbp, r15
	jbe	.label_108
	or	byte ptr [rbp - 0x18], 0xa
	nop	
	mov	dword ptr [dword ptr [rip + next_char]],  eax
	lea	rdi, [rdi]
	call	fmt_paragraph
	mov	rsp, rsp
	mov	esi,  dword ptr [dword ptr [rip + first_indent]]
	mov	edi, OFFSET FLAT:unused_word_type
	call	put_line
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + label_59]]
	jmp	.label_60
	nop	word ptr cs:[rax + rax]
.label_68:
	mov	esi,  dword ptr [dword ptr [rip + other_indent]]
	mov	rdi, rbx
	call	put_line
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbx + 0x20]
.label_60:
	nop	
	cmp	rbx, rbp
	jne	.label_68
	jmp	.label_69
.label_80:
	mov	dword ptr [dword ptr [rip + next_char]],  0xffffffff
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
.label_108:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.46
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.47
	mov	rbp, rbp
	mov	edx, 0x25e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.get_paragraph
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b00

	.globl fmt_paragraph
	.type fmt_paragraph, @function
fmt_paragraph:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + word_limit]]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x18], 0
	mov	rsp, rsp
	mov	eax, dword ptr [rsi + 8]
	nop	
	mov	dword ptr [rsp - 0xc], eax
	mov	edi,  dword ptr [dword ptr [rip + max_width]]
	nop	
	mov	dword ptr [rsi + 8], edi
	lea	rax, [rsi - 0x28]
	mov	ecx, OFFSET FLAT:unused_word_type
	cmp	rax, rcx
	jb	.label_123
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rip + first_indent]]
	lea	rsi, [rsi]
	mov	dword ptr [rsp - 4], ecx
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [rip + other_indent]]
	nop	
	mov	dword ptr [rsp - 8], ecx
	lea	rdi, [rdi]
	mov	r11d,  dword ptr [dword ptr [rip + last_line_length]]
	mov	rsp, rsp
	mov	r12d,  dword ptr [dword ptr [rip + goal_width]]
	xor	r15d, r15d
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:unused_word_type
	mov	r8, rsi
	nop	
.label_132:
	mov	r13, r8
	mov	r8, rax
	cmp	r8, rdx
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp - 8]
	cmove	eax, dword ptr [rsp - 4]
	mov	rsp, rsp
	movsxd	r10, dword ptr [r13 - 0x20]
	lea	rdi, [rdi]
	lea	eax, [r10 + rax]
	cmp	r8, rdx
	jne	.label_124
	test	r11d, r11d
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:label_127
	lea	rsi, [rsi]
	movabs	r9, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rdx, r15
	jle	.label_133
.label_138:
	lea	rsi, [rsi]
	cmp	rsi, rcx
	mov	edx, 0
	je	.label_131
	mov	edx, r12d
	mov	rsp, rsp
	sub	edx, eax
	mov	rbp, rbp
	add	edx, edx
	lea	edx, [rdx + rdx*4]
	movsxd	rdx, edx
	mov	rbp, rbp
	imul	rdx, rdx
	cmp	qword ptr [rcx + 0x20], rsi
	mov	rbp, rbp
	je	.label_131
	nop	
	movsxd	rbp, dword ptr [rcx + 0x14]
	lea	rdi, [rdi]
	movsxd	rbx, eax
	sub	rbx, rbp
	add	rbx, rbx
	lea	rdi, [rdi]
	lea	rbx, [rbx + rbx*4]
	lea	rsi, [rsi]
	imul	rbx, rbx
	shr	rbx, 1
	nop	
	add	rdx, rbx
.label_131:
	add	rdx, qword ptr [rcx + 0x18]
	mov	ebx, eax
	sub	ebx, r11d
	mov	rsp, rsp
	add	ebx, ebx
	lea	rsi, [rsi]
	lea	ebx, [rbx + rbx*4]
	movsxd	r14, ebx
	imul	r14, r14
	nop	
	shr	r14, 1
	add	r14, rdx
	mov	rsp, rsp
	cmp	r14, r9
	nop	
	jge	.label_137
	lea	rsi, [rsi]
	mov	qword ptr [r13 - 8], rcx
	mov	dword ptr [r13 - 0x14], eax
	mov	r9, r14
.label_137:
	cmp	rsi, rcx
	je	.label_128
	add	eax, dword ptr [rcx - 0x1c]
	add	eax, dword ptr [rcx + 8]
	mov	rbp, rbp
	add	rcx, 0x28
	cmp	eax, edi
	jl	.label_138
	jmp	.label_128
	nop	word ptr cs:[rax + rax]
.label_124:
	mov	rdx, r15
	mov	rbp, rbp
	movabs	r9, 0x7fffffffffffffff
.label_133:
	test	rdx, rdx
	mov	rbp, rbp
	mov	ecx, 0
	je	.label_135
	mov	ecx, r12d
	mov	rbp, rbp
	sub	ecx, eax
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	mov	rbp, rbp
	movsxd	rcx, ecx
	lea	rdi, [rdi]
	imul	rcx, rcx
	cmp	qword ptr [rsi + rdx + 0x20], rsi
	mov	rsp, rsp
	je	.label_135
	movsxd	rbx, dword ptr [rsi + rdx + 0x14]
	movsxd	rbp, eax
	mov	rsp, rsp
	sub	rbp, rbx
	mov	rsp, rsp
	add	rbp, rbp
	lea	rbx, [rbp + rbp*4]
	imul	rbx, rbx
	shr	rbx, 1
	add	rcx, rbx
.label_135:
	add	rcx, qword ptr [rsi + rdx + 0x18]
	cmp	rcx, r9
	jge	.label_125
	mov	rbp, rbp
	lea	rbp, [rsi + rdx]
	mov	qword ptr [r13 - 8], rbp
	lea	rdi, [rdi]
	mov	dword ptr [r13 - 0x14], eax
	mov	r9, rcx
.label_125:
	test	rdx, rdx
	je	.label_128
	mov	rbp, rbp
	add	eax, dword ptr [rsi + rdx - 0x1c]
	lea	rsi, [rsi]
	add	eax, dword ptr [rsi + rdx + 8]
	lea	rsi, [rsi]
	add	rdx, 0x28
	mov	rsp, rsp
	cmp	eax, edi
	nop	
	jl	.label_133
.label_128:
	mov	edx, OFFSET FLAT:unused_word_type
	cmp	r8, rdx
	mov	ecx, 0x1324
	jbe	.label_126
	mov	rbp, rbp
	mov	al, byte ptr [r13 - 0x40]
	test	al, 2
	nop	
	jne	.label_130
	mov	rbp, rbp
	test	al, 4
	mov	ecx, 0xce4
	lea	rdi, [rdi]
	jne	.label_126
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:label_127
	cmp	r8, rax
	mov	ecx, 0x1324
	mov	rbp, rbp
	jbe	.label_126
	test	byte ptr [r13 - 0x68], 8
	mov	ecx, 0x1324
	je	.label_126
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [r13 - 0x48]
	add	rcx, 2
	mov	eax, 0x9c40
	xor	edx, edx
	nop	
	idiv	rcx
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:unused_word_type
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 0x1324
	jmp	.label_126
	nop	word ptr cs:[rax + rax]
.label_130:
	lea	rdi, [rdi]
	test	al, 8
	mov	rsp, rsp
	mov	ecx, 0x960
	lea	rdi, [rdi]
	mov	eax, 0x59164
	cmove	rcx, rax
.label_126:
	mov	rbp, rbp
	mov	al, byte ptr [r13 - 0x18]
	test	al, 1
	jne	.label_134
	test	al, 8
	je	.label_136
	mov	rbp, rbp
	add	r10, 2
	mov	eax, 0x57e4
	xor	edx, edx
	lea	rdi, [rdi]
	idiv	r10
	add	rcx, rax
.label_136:
	mov	edx, OFFSET FLAT:unused_word_type
	jmp	.label_129
	nop	word ptr cs:[rax + rax]
.label_134:
	add	rcx, -0x640
.label_129:
	add	rcx, r9
	nop	
	mov	qword ptr [r13 - 0x10], rcx
	lea	rax, [r8 - 0x28]
	add	r15, -0x28
	cmp	rax, rdx
	mov	rsp, rsp
	jae	.label_132
.label_123:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp - 0xc]
	mov	dword ptr [rsi + 8], eax
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402e60

	.globl get_line
	.type get_line, @function
get_line:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x28
	mov	ebp, esi
	mov	r15, rdi
	mov	rsp, rsp
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	r14, rax
	mov	qword ptr [rsp + 8], r14
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	mov	rbp, rbp
	mov	r12d, OFFSET FLAT:wptr
	jmp	.label_157
.label_179:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + other_indent]],  ecx
	mov	rbp, rbp
	jmp	.label_167
.label_157:
	mov	rcx,  qword ptr [word ptr [rip + wptr]]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	ebx, ebp
	nop	word ptr cs:[rax + rax]
.label_172:
	mov	rax,  qword ptr [word ptr [rip + wptr]]
	cmp	rax, r12
	mov	rsp, rsp
	jne	.label_176
	movzx	eax,  byte ptr [byte ptr [rip + split]]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	je	.label_141
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + crown]]
	mov	rbp, rbp
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_183
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	jmp	.label_144
.label_183:
	movzx	eax,  byte ptr [byte ptr [rip + tagged]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_141
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [rip + first_indent]]
	mov	rbp, rbp
	jne	.label_144
	cmp	dword ptr [dword ptr [rip + other_indent]],  eax
	nop	
	jne	.label_146
	mov	rbp, rbp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	eax, [rax + rax*2]
	jmp	.label_144
	nop	word ptr [rax + rax]
.label_141:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + first_indent]]
.label_144:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + other_indent]],  eax
.label_146:
	call	flush_paragraph
	mov	rax,  qword ptr [word ptr [rip + wptr]]
.label_176:
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + wptr]],  rcx
	mov	rsp, rsp
	mov	byte ptr [rax], bl
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_159
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 8], rcx
	mov	rsp, rsp
	movzx	ebx, byte ptr [rax]
.label_178:
	movsxd	rax, ebx
	mov	rcx, qword ptr [r14]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	lea	rdi, [rdi]
	mov	ebp, ebx
	je	.label_172
	lea	rdi, [rdi]
	jmp	.label_175
.label_159:
	mov	rdi, r15
	call	__uflow
	mov	ebx, eax
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	cmp	ebx, -1
	jne	.label_178
	nop	word ptr [rax + rax]
.label_175:
	mov	rcx,  qword ptr [word ptr [rip + wptr]]
	mov	rbp, rbp
	mov	r14,  qword ptr [word ptr [rip + word_limit]]
	mov	qword ptr [rsp], r14
	mov	rbx, qword ptr [r14]
	sub	rcx, rbx
	mov	qword ptr [rsp + 0x18], rcx
	mov	dword ptr [r14 + 8], ecx
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	add	eax, ecx
	mov	dword ptr [rsp + 0x14], eax
	mov	dword ptr [dword ptr [rip + in_column]],  eax
	lea	rdi, [rdi]
	mov	rax, rcx
	shl	rax, 0x20
	movabs	rcx, 0xffffffff00000000
	add	rax, rcx
	nop	
	sar	rax, 0x20
	mov	rsp, rsp
	lea	r13, [rbx + rax]
	movsx	esi, byte ptr [rbx]
	movzx	eax, byte ptr [rbx + rax]
	mov	qword ptr [rsp + 0x20], rax
	mov	edi, OFFSET FLAT:.str.48
	nop	
	mov	edx, 6
	mov	rbp, rbp
	call	memchr
	mov	rbp, rbp
	test	rax, rax
	setne	al
	mov	r12b, byte ptr [r14 + 0x10]
	and	r12b, 0xfe
	mov	rbp, rbp
	or	r12b, al
	mov	byte ptr [r14 + 0x10], r12b
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	al, byte ptr [rax + rcx*2]
	mov	rbp, rbp
	and	al, 4
	lea	rdi, [rdi]
	and	r12b, 0xfb
	or	r12b, al
	nop	
	mov	byte ptr [r14 + 0x10], r12b
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	cmp	eax, 2
	mov	rsp, rsp
	jl	.label_152
	nop	word ptr cs:[rax + rax]
.label_161:
	movsx	esi, byte ptr [r13]
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	memchr
	test	rax, rax
	je	.label_152
	dec	r13
	cmp	rbx, r13
	nop	
	jb	.label_161
.label_152:
	mov	rbp, rbp
	movsx	rax, byte ptr [r13]
	lea	rdi, [rdi]
	mov	eax, eax
	cmp	rax, 0x40
	nop	
	sbb	cl, cl
	lea	rdi, [rdi]
	movabs	rdx, 0x8000400200000001
	bt	rdx, rax
	sbb	al, al
	and	al, cl
	and	al, 1
	add	al, al
	and	r12b, 0xfd
	mov	rsp, rsp
	or	r12b, al
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	mov	byte ptr [rax + 0x10], r12b
	mov	r14, qword ptr [rsp + 8]
	mov	r12d, OFFSET FLAT:wptr
	jmp	.label_174
	nop	word ptr cs:[rax + rax]
.label_168:
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 8], rcx
	nop	
	movzx	ebp, byte ptr [rax]
.label_174:
	lea	rdi, [rdi]
	cmp	ebp, 9
	je	.label_150
	nop	
	cmp	ebp, 0x20
	lea	rdi, [rdi]
	jne	.label_151
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	inc	eax
	jmp	.label_171
	nop	dword ptr [rax]
.label_150:
	mov	byte ptr [byte ptr [rip + tabs]],  1
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	eax, ecx
	mov	rsp, rsp
	sar	eax, 0x1f
	lea	rsi, [rsi]
	shr	eax, 0x1d
	add	eax, ecx
	lea	rdi, [rdi]
	and	eax, 0xfffffff8
	add	eax, 8
.label_171:
	mov	dword ptr [dword ptr [rip + in_column]],  eax
	mov	rax, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r15 + 0x10]
	jb	.label_168
	mov	rdi, r15
	nop	
	call	__uflow
	mov	ebp, eax
	mov	rsp, rsp
	jmp	.label_174
	nop	dword ptr [rax]
.label_151:
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	esi, ecx
	sub	esi, dword ptr [rsp + 0x14]
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	mov	dword ptr [rax + 0xc], esi
	cmp	ebp, -1
	mov	dl, byte ptr [rax + 0x10]
	lea	rdi, [rdi]
	je	.label_182
	test	dl, 2
	mov	rsp, rsp
	jne	.label_145
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	jmp	.label_184
	nop	word ptr cs:[rax + rax]
.label_145:
	lea	rdi, [rdi]
	cmp	ebp, 0xa
	nop	
	jne	.label_158
.label_182:
	mov	rbp, rbp
	or	dl, 8
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x10], dl
	nop	
	jmp	.label_140
.label_158:
	nop	
	cmp	esi, 1
	mov	rbp, rbp
	setg	sil
.label_184:
	nop	
	shl	sil, 3
	mov	rsp, rsp
	and	dl, 0xf7
	nop	
	or	dl, sil
	mov	byte ptr [rax + 0x10], dl
	mov	rsp, rsp
	cmp	ebp, 0xa
	nop	
	je	.label_140
	movzx	esi,  byte ptr [byte ptr [rip + uniform]]
	and	esi, 1
	lea	rdi, [rdi]
	cmp	esi, 1
	jne	.label_148
.label_140:
	nop	
	and	dl, 8
	mov	rbp, rbp
	movzx	edx, dl
	shr	edx, 3
	nop	
	inc	edx
	mov	dword ptr [rax + 0xc], edx
.label_148:
	mov	edx, OFFSET FLAT:label_155
	lea	rsi, [rsi]
	cmp	rax, rdx
	lea	rsi, [rsi]
	jne	.label_156
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + split]]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	nop	
	jne	.label_160
	nop	
	mov	eax,  dword ptr [dword ptr [rip + first_indent]]
	lea	rdi, [rdi]
	jmp	.label_165
.label_160:
	movzx	eax,  byte ptr [byte ptr [rip + crown]]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_170
	mov	dword ptr [dword ptr [rip + other_indent]],  ecx
	jmp	.label_167
.label_170:
	mov	eax,  dword ptr [dword ptr [rip + first_indent]]
	lea	rsi, [rsi]
	movzx	edx,  byte ptr [byte ptr [rip + tagged]]
	nop	
	and	edx, 1
	cmp	edx, 1
	mov	rbp, rbp
	jne	.label_165
	cmp	ecx, eax
	jne	.label_179
	nop	
	cmp	dword ptr [dword ptr [rip + other_indent]],  ecx
	jne	.label_167
	test	ecx, ecx
	mov	rbp, rbp
	sete	al
	movzx	eax, al
	lea	rdi, [rdi]
	lea	eax, [rax + rax*2]
	nop	word ptr cs:[rax + rax]
.label_165:
	mov	dword ptr [dword ptr [rip + other_indent]],  eax
.label_167:
	lea	rsi, [rsi]
	call	flush_paragraph
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
.label_156:
	mov	rsp, rsp
	add	rax, 0x28
	mov	qword ptr [word ptr [rip + word_limit]],  rax
	lea	rsi, [rsi]
	cmp	ebp, 0xa
	je	.label_181
	mov	rsp, rsp
	cmp	ebp, -1
	jne	.label_157
.label_181:
	mov	dword ptr [dword ptr [rip + in_column]],  0
	jmp	.label_147
	nop	word ptr cs:[rax + rax]
.label_163:
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	mov	rbp, rbp
	inc	eax
	mov	dword ptr [dword ptr [rip + in_column]],  eax
.label_147:
	nop	
	mov	rax, qword ptr [r15 + 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	jae	.label_154
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	eax, byte ptr [rax]
.label_180:
	nop	
	cmp	eax, 9
	je	.label_162
	lea	rsi, [rsi]
	cmp	eax, 0x20
	je	.label_163
	mov	rsp, rsp
	jmp	.label_166
	nop	word ptr cs:[rax + rax]
.label_162:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + tabs]],  1
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	nop	
	mov	eax, ecx
	sar	eax, 0x1f
	nop	
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	mov	rsp, rsp
	add	eax, 8
	mov	dword ptr [dword ptr [rip + in_column]],  eax
	lea	rsi, [rsi]
	jmp	.label_147
.label_154:
	nop	
	mov	rdi, r15
	call	__uflow
	lea	rsi, [rsi]
	jmp	.label_180
.label_166:
	cmp	dword ptr [dword ptr [rip + prefix_length]],  0
	je	.label_169
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + next_prefix_indent]],  ecx
	mov	rbx,  qword ptr [word ptr [rip + prefix]]
	nop	
	mov	cl, byte ptr [rbx]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_142
	mov	rsp, rsp
	inc	rbx
	lea	rdi, [rdi]
	jmp	.label_164
.label_169:
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [rip + prefix_lead_space]]
	mov	edx,  dword ptr [dword ptr [rip + in_column]]
	cmp	ecx, edx
	mov	rsp, rsp
	cmovle	edx, ecx
	mov	dword ptr [dword ptr [rip + next_prefix_indent]],  edx
	jmp	.label_143
.label_153:
	mov	rsp, rsp
	mov	rdi, r15
	call	__uflow
	mov	rsp, rsp
	jmp	.label_149
	nop	dword ptr [rax + rax]
.label_164:
	mov	rbp, rbp
	movzx	ecx, cl
	cmp	eax, ecx
	nop	
	jne	.label_143
	mov	rbp, rbp
	inc	dword ptr [dword ptr [rip + in_column]]
	mov	rax, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [r15 + 0x10]
	nop	
	jae	.label_153
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rax]
.label_149:
	nop	
	mov	cl, byte ptr [rbx]
	mov	rbp, rbp
	inc	rbx
	mov	rsp, rsp
	test	cl, cl
	jne	.label_164
	jmp	.label_142
	nop	dword ptr [rax]
.label_139:
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	nop	
	movzx	eax, byte ptr [rax]
.label_142:
	nop	
	cmp	eax, 9
	mov	rbp, rbp
	je	.label_173
	cmp	eax, 0x20
	nop	
	jne	.label_143
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	inc	eax
	lea	rsi, [rsi]
	jmp	.label_177
	nop	dword ptr [rax + rax]
.label_173:
	mov	byte ptr [byte ptr [rip + tabs]],  1
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	nop	
	mov	eax, ecx
	mov	rbp, rbp
	sar	eax, 0x1f
	mov	rbp, rbp
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	lea	rdi, [rdi]
	add	eax, 8
.label_177:
	mov	dword ptr [dword ptr [rip + in_column]],  eax
	mov	rax, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r15 + 0x10]
	jb	.label_139
	mov	rdi, r15
	call	__uflow
	mov	rbp, rbp
	jmp	.label_142
.label_143:
	mov	rsp, rsp
	add	rsp, 0x28
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403550

	.globl flush_paragraph
	.type flush_paragraph, @function
flush_paragraph:
	push	r15
	nop	
	push	r14
	push	rbx
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + word_limit]]
	mov	eax, OFFSET FLAT:unused_word_type
	cmp	rbx, rax
	je	.label_187
	nop	
	call	fmt_paragraph
	nop	
	mov	rsi,  qword ptr [word ptr [rip + label_59]]
	cmp	rsi, rbx
	lea	rsi, [rsi]
	je	.label_190
	nop	
	movabs	r8, 0x7ffffffffffffff7
	mov	rsp, rsp
	mov	rcx, qword ptr [rsi + 0x18]
	nop	
	lea	rdx, [r8 + 8]
	lea	rdi, [rdi]
	mov	r14, rbx
	nop	word ptr cs:[rax + rax]
.label_189:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi + 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	sub	rcx, rax
	cmp	rcx, rdx
	mov	rbp, rbp
	cmovl	r14, rsi
	cmovg	rcx, rdx
	lea	rdx, [rcx + 9]
	cmp	rcx, r8
	lea	rsi, [rsi]
	cmovge	rdx, rcx
	lea	rsi, [rsi]
	cmp	rdi, rbx
	mov	rcx, rax
	mov	rsi, rdi
	jne	.label_189
	jmp	.label_191
.label_187:
	mov	rdx,  qword ptr [word ptr [rip + wptr]]
	mov	eax, OFFSET FLAT:parabuf
	sub	rdx, rax
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:parabuf
	mov	esi, 1
	call	fwrite_unlocked
	mov	qword ptr [word ptr [rip + wptr]], OFFSET FLAT:parabuf
	mov	rsp, rsp
	jmp	.label_192
.label_190:
	nop	
	mov	r14, rbx
.label_191:
	lea	rsi, [rsi]
	mov	esi,  dword ptr [dword ptr [rip + first_indent]]
	mov	edi, OFFSET FLAT:unused_word_type
	mov	rsp, rsp
	call	put_line
	mov	rbx,  qword ptr [word ptr [rip + label_59]]
	mov	rbp, rbp
	jmp	.label_185
	nop	word ptr cs:[rax + rax]
.label_188:
	mov	esi,  dword ptr [dword ptr [rip + other_indent]]
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	put_line
	mov	rbx, qword ptr [rbx + 0x20]
.label_185:
	cmp	rbx, r14
	jne	.label_188
	mov	rsi, qword ptr [r14]
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + wptr]]
	mov	rsp, rsp
	mov	rdx, rbx
	lea	rsi, [rsi]
	sub	rdx, rsi
	mov	r15d, OFFSET FLAT:parabuf
	mov	edi, OFFSET FLAT:parabuf
	call	memmove
	lea	rsi, [rsi]
	mov	eax, dword ptr [r14]
	nop	
	sub	eax, r15d
	cdqe	
	sub	rbx, rax
	mov	qword ptr [word ptr [rip + wptr]],  rbx
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + word_limit]]
	lea	rsi, [rsi]
	cmp	r14, rbx
	lea	rdi, [rdi]
	ja	.label_186
	mov	rsp, rsp
	neg	rax
	lea	rdi, [rdi]
	mov	rcx, r14
	nop	dword ptr [rax]
.label_193:
	mov	rbp, rbp
	add	qword ptr [rcx], rax
	add	rcx, 0x28
	mov	rbx,  qword ptr [word ptr [rip + word_limit]]
	mov	rbp, rbp
	cmp	rcx, rbx
	jbe	.label_193
.label_186:
	mov	edx, 0x28
	lea	rsi, [rsi]
	sub	rdx, r14
	add	rdx, rbx
	mov	r15d, OFFSET FLAT:unused_word_type
	nop	
	mov	edi, OFFSET FLAT:unused_word_type
	lea	rsi, [rsi]
	mov	rsi, r14
	call	memmove
	mov	rsp, rsp
	sub	r14, r15
	movabs	rcx, 0x9999999999999999
	mov	rax, r14
	lea	rsi, [rsi]
	imul	rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 4
	nop	
	add	rdx, rax
	lea	rdi, [rdi]
	lea	rax, [rdx + rdx*4]
	mov	rsp, rsp
	lea	rax, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + word_limit]],  rax
.label_192:
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403770

	.globl put_line
	.type put_line, @function
put_line:
	push	rbp
	push	r15
	push	r14
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r14d, esi
	mov	rsp, rsp
	mov	r15, rdi
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + out_column]],  0
	nop	
	mov	ebp,  dword ptr [dword ptr [rip + prefix_indent]]
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	movzx	ecx,  byte ptr [byte ptr [rip + tabs]]
	lea	rsi, [rsi]
	and	ecx, 1
	cmp	ecx, 1
	mov	rsp, rsp
	jne	.label_216
	xor	ecx, ecx
	cmp	ebp, 8
	jl	.label_206
	lea	rsi, [rsi]
	mov	ebx, ebp
	sar	ebx, 0x1f
	shr	ebx, 0x1d
	add	ebx, ebp
	lea	rsi, [rsi]
	and	ebx, 0xfffffff8
	mov	rsp, rsp
	cmp	ebx, 2
	jge	.label_211
	nop	
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_216
.label_194:
	mov	esi, 9
	call	__overflow
	nop	
	mov	ecx,  dword ptr [dword ptr [rip + out_column]]
	jmp	.label_204
	nop	dword ptr [rax]
.label_211:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_194
	lea	rsi, [rsi]
	lea	rdx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rdx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 9
.label_204:
	lea	rdi, [rdi]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	lea	rsi, [rsi]
	cmp	eax, ebx
	mov	ecx, eax
	mov	rsp, rsp
	jl	.label_211
	nop	
	jmp	.label_216
.label_206:
	lea	rsi, [rsi]
	xor	eax, eax
	jmp	.label_216
	nop	dword ptr [rax + rax]
.label_195:
	inc	eax
	mov	dword ptr [dword ptr [rip + out_column]],  eax
.label_216:
	cmp	eax, ebp
	jge	.label_222
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_223
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	lea	rdi, [rdi]
	mov	byte ptr [rcx], 0x20
	lea	rsi, [rsi]
	jmp	.label_195
.label_223:
	mov	rbp, rbp
	mov	esi, 0x20
	nop	
	call	__overflow
	nop	
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	lea	rsi, [rsi]
	jmp	.label_195
.label_222:
	mov	rdi,  qword ptr [word ptr [rip + prefix]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	ecx,  dword ptr [dword ptr [rip + out_column]]
	add	ecx,  dword ptr [dword ptr [rip + prefix_length]]
	mov	dword ptr [dword ptr [rip + out_column]],  ecx
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + tabs]]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_213
	mov	rsp, rsp
	mov	ebp, r14d
	mov	rbp, rbp
	sar	ebp, 0x1f
	shr	ebp, 0x1d
	mov	rbp, rbp
	add	ebp, r14d
	and	ebp, 0xfffffff8
	cmp	ecx, ebp
	mov	rbp, rbp
	jge	.label_224
	lea	eax, [rcx + 1]
	lea	rdi, [rdi]
	cmp	eax, ebp
	mov	rsp, rsp
	jl	.label_225
	lea	rdi, [rdi]
	mov	eax, ecx
	jmp	.label_201
.label_213:
	mov	eax, ecx
	lea	rsi, [rsi]
	jmp	.label_201
.label_226:
	lea	rsi, [rsi]
	mov	esi, 9
	call	__overflow
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [rip + out_column]]
	jmp	.label_209
	nop	dword ptr [rax]
.label_225:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_226
	mov	rbp, rbp
	lea	rdx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rdx
	nop	
	mov	byte ptr [rax], 9
.label_209:
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	mov	rsp, rsp
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	lea	rdi, [rdi]
	cmp	eax, ebp
	nop	
	mov	ecx, eax
	jl	.label_225
	jmp	.label_201
.label_224:
	mov	rbp, rbp
	mov	eax, ecx
	jmp	.label_201
	nop	word ptr cs:[rax + rax]
.label_220:
	lea	rdi, [rdi]
	inc	eax
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + out_column]],  eax
.label_201:
	cmp	eax, r14d
	lea	rsi, [rsi]
	jge	.label_208
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_212
	lea	rdx, [rcx + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rdx
	lea	rsi, [rsi]
	mov	byte ptr [rcx], 0x20
	jmp	.label_220
.label_212:
	mov	rbp, rbp
	mov	esi, 0x20
	call	__overflow
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	jmp	.label_220
.label_208:
	mov	rbp, rbp
	mov	r14, qword ptr [r15 + 0x20]
	lea	rdi, [rdi]
	add	r14, -0x28
	jmp	.label_196
	nop	word ptr cs:[rax + rax]
.label_198:
	add	r15, 0x28
	mov	rsp, rsp
	mov	eax, ecx
.label_196:
	mov	rbp, qword ptr [r15 + 8]
	xor	ecx, ecx
	test	ebp, ebp
	lea	rsi, [rsi]
	je	.label_203
	mov	rbp, rbp
	mov	rbx, qword ptr [r15]
	lea	rsi, [rsi]
	neg	ebp
	jmp	.label_205
.label_215:
	movzx	esi, al
	nop	
	call	__overflow
	jmp	.label_214
	nop	
.label_205:
	mov	al, byte ptr [rbx]
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_215
	lea	rdi, [rdi]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_214:
	inc	rbx
	nop	
	inc	ebp
	jne	.label_205
	mov	rbp, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	lea	rsi, [rsi]
	mov	ecx, ebp
.label_203:
	add	eax, ecx
	cmp	r15, r14
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	je	.label_199
	shr	rbp, 0x20
	add	ebp, eax
	nop	
	movzx	ecx,  byte ptr [byte ptr [rip + tabs]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_218
	lea	rdi, [rdi]
	mov	ebx, ebp
	lea	rsi, [rsi]
	sar	ebx, 0x1f
	nop	
	shr	ebx, 0x1d
	add	ebx, ebp
	and	ebx, 0xfffffff8
	mov	rsp, rsp
	lea	ecx, [rax + 1]
	cmp	ecx, ebx
	jge	.label_207
	mov	rsp, rsp
	cmp	eax, ebx
	mov	ecx, eax
	nop	
	jl	.label_210
	lea	rsi, [rsi]
	jmp	.label_221
	nop	
.label_218:
	mov	ecx, eax
	mov	rsp, rsp
	jmp	.label_221
.label_217:
	mov	rbp, rbp
	mov	esi, 9
	nop	
	call	__overflow
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	lea	rsi, [rsi]
	jmp	.label_197
	nop	word ptr cs:[rax + rax]
.label_210:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_217
	mov	rbp, rbp
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	rbp, rbp
	mov	byte ptr [rcx], 9
.label_197:
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	sar	ecx, 0x1f
	shr	ecx, 0x1d
	add	ecx, eax
	and	ecx, 0xfffffff8
	lea	rsi, [rsi]
	add	ecx, 8
	mov	dword ptr [dword ptr [rip + out_column]],  ecx
	cmp	ecx, ebx
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	rsp, rsp
	jl	.label_210
	lea	rsi, [rsi]
	jmp	.label_221
.label_207:
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	jmp	.label_221
	nop	dword ptr [rax]
.label_202:
	inc	ecx
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + out_column]],  ecx
.label_221:
	cmp	ecx, ebp
	jge	.label_198
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_200
	mov	rbp, rbp
	lea	rdx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rdx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x20
	jmp	.label_202
.label_200:
	mov	rbp, rbp
	mov	esi, 0x20
	lea	rdi, [rdi]
	call	__overflow
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rip + out_column]]
	nop	
	jmp	.label_202
.label_199:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + last_line_length]],  eax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rax, qword ptr [rdi + 0x28]
	nop	
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_219
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_219:
	mov	esi, 0xa
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	jmp	__overflow
	nop	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x403c40
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403c50
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c60

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
	je	.label_230
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_227
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_227
.label_230:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_229
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_227:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_228
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
.label_229:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_228:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
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
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d60
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d70

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_231
	call	fileno
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_231:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403da0

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
	je	.label_232
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
	jl	.label_234
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_234
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
	jne	.label_233
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_233:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_234:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_232:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
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
	.align	16
	#Procedure 0x403e90
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
	.align	16
	#Procedure 0x403ee0
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
	.align	16
	#Procedure 0x403f00
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
	.align	16
	#Procedure 0x403f20
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
	.align	16
	#Procedure 0x403f90
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
	.align	16
	#Procedure 0x403fb0
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
	je	.label_235
	test	rdx, rdx
	nop	
	je	.label_235
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_235:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ff0
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
	.align	16
	#Procedure 0x4040a0

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
.label_320:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_339
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_344]]
.label_526:
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
.label_527:
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
	jne	.label_239
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_239
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_269:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_260
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_260:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_269
.label_239:
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
	jmp	.label_284
.label_519:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_284
.label_522:
	lea	rsi, [rsi]
	mov	al, 1
.label_520:
	lea	rsi, [rsi]
	mov	dl, 1
.label_523:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_304
	mov	rbp, rbp
	mov	cl, al
.label_304:
	mov	al, cl
.label_521:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_308
	test	rbp, rbp
	je	.label_314
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_315
.label_308:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_315
.label_524:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_324
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_329
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_332
.label_525:
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
	jmp	.label_284
.label_314:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_315:
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_284
.label_324:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_332
.label_329:
	nop	
	mov	r14d, 1
.label_332:
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
.label_284:
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
	jmp	.label_241
	nop	dword ptr [rax]
.label_268:
	mov	rsp, rsp
	inc	r15
.label_241:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_323
	cmp	r15, r10
	jne	.label_300
	jmp	.label_301
	nop	dword ptr [rax]
.label_323:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_302
.label_300:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_305
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_310
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_310
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
.label_310:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_338
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_285
	nop	dword ptr [rax]
.label_305:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_285
	nop	word ptr cs:[rax + rax]
.label_338:
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
	jne	.label_238
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
	je	.label_285
	jmp	.label_249
.label_238:
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
.label_285:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_277
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_283]]
.label_570:
	test	r15, r15
	jne	.label_240
	jmp	.label_292
.label_574:
	xor	eax, eax
	cmp	r10, -1
	je	.label_294
	test	r15, r15
	jne	.label_295
	nop	
	cmp	r10, 1
	je	.label_292
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_237
.label_563:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_335
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_249
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_311
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_311
	cmp	r14, rbp
	jae	.label_313
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_313:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_317
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_317:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_327
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_327:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_311:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_336
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_336:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_342
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_349
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_351
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_355
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_355:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_361
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_361:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_237
.label_564:
	mov	bl, 0x62
	nop	
	jmp	.label_243
.label_565:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_242
.label_566:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_243
.label_567:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_243
.label_568:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_242
.label_571:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_259
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_264
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
	jae	.label_271
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_271:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_293
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_293:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_297
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_297:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_259:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_237
.label_572:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_307
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_240
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_240
	nop	
	jmp	.label_319
.label_573:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_321
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_326
	jmp	.label_330
.label_277:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_245
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
	jmp	.label_346
.label_294:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_298
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_298
.label_292:
	mov	dl, 1
.label_569:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_358
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_237
.label_335:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_268
	jmp	.label_240
.label_321:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_242
.label_326:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_246
.label_242:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_251
.label_243:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_237
	jmp	.label_258
.label_245:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_262
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_262:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_280
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_353:
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
	je	.label_257
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_253
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_286
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_309
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_340:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_255
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_359
.label_255:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_340
.label_309:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_345
	mov	rbp, rbp
	xor	r13d, r13d
.label_345:
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
	je	.label_353
	jmp	.label_274
	nop	
.label_280:
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
	je	.label_299
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_253
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_257
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_265
	xor	r13d, r13d
.label_265:
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
	je	.label_280
	lea	rsi, [rsi]
	jmp	.label_274
.label_298:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_237
.label_307:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_240
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_240
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_240
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_303
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_306
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_281
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_318
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_318:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_325
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_325:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_279
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_279:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_244
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_244:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_237
.label_240:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_237:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_278
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_354
	nop	
	jmp	.label_357
	nop	dword ptr [rax + rax]
.label_278:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_357
.label_354:
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
	jne	.label_362
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_275
	nop	word ptr cs:[rax + rax]
.label_357:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_275:
	mov	bl, r12b
	je	.label_246
	jmp	.label_258
.label_362:
	mov	bl, r12b
.label_258:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_249
	cmp	r9d, 2
	jne	.label_261
	mov	al, dil
	and	al, 1
	jne	.label_261
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_267
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_267:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_276
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_276:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_341
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_341:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_261:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_291
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_291:
	mov	rbp, rbp
	inc	r14
	jmp	.label_296
.label_295:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_237
.label_342:
	xor	r13d, r13d
	jmp	.label_237
.label_349:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_237
.label_351:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_237
.label_253:
	xor	r13d, r13d
.label_299:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_274
.label_257:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_316
	lea	rax, [r11 + r15]
.label_333:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_363
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_333
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_274
.label_316:
	xor	r13d, r13d
	jmp	.label_274
.label_363:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_274
.label_286:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_274:
	mov	rbp, rbp
	mov	rbx, r10
.label_346:
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
	ja	.label_347
	test	cl, cl
	je	.label_347
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_237
.label_347:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_364
	nop	dword ptr [rax]
.label_356:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_364:
	mov	rsp, rsp
	test	cl, cl
	je	.label_247
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_250
	cmp	r14, rbp
	jae	.label_254
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_254:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_250:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_263
	nop	dword ptr [rax + rax]
.label_247:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_272
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_282
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_282
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_287
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_287:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_256
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_256:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_273
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_273:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_282:
	cmp	r14, rbp
	jae	.label_350
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_350:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_252
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_252:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_322
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_322:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_263:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_246
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_337
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_337
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_248
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_248:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_328
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_328:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_337:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_356
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_356
	nop	word ptr cs:[rax + rax]
.label_246:
	test	dil, 1
	je	.label_236
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_236
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_266
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_266:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_334
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_334:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_236:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_296:
	cmp	r14, rbp
	jae	.label_360
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_360:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_268
.label_303:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_237
.label_306:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_237
	nop	word ptr [rax + rax]
.label_301:
	nop	
	mov	rcx, r15
.label_302:
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
	je	.label_289
	mov	rsp, rsp
	or	al, dl
	je	.label_290
.label_289:
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
	je	.label_270
	mov	rsp, rsp
	or	al, dl
	jne	.label_270
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_312
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_270
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
	je	.label_320
.label_270:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_331
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_331
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_331
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_348:
	cmp	r14, rbp
	jae	.label_343
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_343:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_348
.label_331:
	cmp	r14, rbp
	jae	.label_352
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_352
.label_358:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_249
.label_359:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_249
.label_272:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_249
.label_290:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_249
.label_251:
	nop	
	mov	r9d, 2
.label_249:
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
.label_288:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_352:
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
.label_312:
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
	jmp	.label_288
.label_264:
	mov	r9d, 2
	jmp	.label_249
.label_330:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_249
.label_319:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_249
.label_281:
	mov	r9d, 5
	nop	
	jmp	.label_249
.label_339:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405540
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
	.align	16
	#Procedure 0x405680
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
	je	.label_365
	mov	qword ptr [rax], rbx
.label_365:
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
	.align	16
	#Procedure 0x4057d0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_366
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_370:
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
	jl	.label_370
.label_366:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_369
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_367]], OFFSET FLAT:slot0
.label_369:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_368
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_368:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405890
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4058a0

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
	js	.label_371
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_376
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_374
.label_376:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_377
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
	jne	.label_373
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_373:
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
.label_374:
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
	ja	.label_372
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
	je	.label_375
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_375:
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
.label_372:
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
.label_371:
	lea	rdi, [rdi]
	call	abort
.label_377:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x405b10
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405b20
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
	.align	16
	#Procedure 0x405b50
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
	.align	16
	#Procedure 0x405b80
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
	je	.label_378
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
.label_378:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405c10
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
	je	.label_379
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
.label_379:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405cb0

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
	je	.label_380
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
.label_380:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d40
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
	je	.label_381
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
.label_381:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405db0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_382]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_383]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_384]]
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
	.align	16
	#Procedure 0x405e50
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_382]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_383]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_384]]
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
	.align	16
	#Procedure 0x405ef0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_382]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_383]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_384]]
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
	.align	16
	#Procedure 0x405f60
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_382]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_383]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_384]]
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
	.align	16
	#Procedure 0x405fd0

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
	je	.label_385
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
.label_385:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4060b0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_382]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_383]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_384]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_386
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_386
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
.label_386:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406140
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_382]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_383]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_384]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_387
	test	rdx, rdx
	je	.label_387
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
.label_387:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061d0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_382]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_383]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_384]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_388
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_388
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
.label_388:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406270
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_382]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_383]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_384]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_389
	test	rsi, rsi
	je	.label_389
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
.label_389:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406310
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406320
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
	.align	16
	#Procedure 0x406340
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsp, rsp
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406360

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
	.align	16
	#Procedure 0x406390

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
	jne	.label_392
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_390
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_391
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_391
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_391
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_391
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_391
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_391
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_392
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_392
.label_390:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_391
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_391
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_391
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_391
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_391
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_391
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_393
.label_391:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_392:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_393:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_392
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_392
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406500

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
	je	.label_394
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
	jmp	.label_396
.label_394:
	mov	edx, OFFSET FLAT:.str.1_1
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_396:
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
	ja	.label_398
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_400]]
.label_539:
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
.label_398:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_402
.label_540:
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
.label_541:
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
.label_542:
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
	jmp	.label_403
.label_543:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
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
	jmp	.label_401
.label_544:
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
	jmp	.label_399
.label_545:
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
.label_399:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_401:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_403:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_397
.label_547:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_402:
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
	jmp	.label_395
.label_546:
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
.label_395:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_397:
	mov	rbp, rbp
	call	__fprintf_chk
.label_538:
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
	.align	16
	#Procedure 0x4068f0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_404:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_404
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406920
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_408:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_405
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_407
	nop	word ptr cs:[rax + rax]
.label_405:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_407:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_406
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_408
.label_406:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4069b0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_409
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
.label_409:
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
.label_411:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_410
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_412
	nop	dword ptr [rax + rax]
.label_410:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_412:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_413
	inc	r9
	cmp	r9, 0xa
	jb	.label_411
.label_413:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406af0
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
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	16
	#Procedure 0x406b80
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
	jb	.label_414
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_415
	test	rax, rax
	je	.label_414
.label_415:
	nop	
	pop	rbx
	ret	
.label_414:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406bd0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_416
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_417
.label_416:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_417:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c00
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
	jb	.label_419
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_418
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_418
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_418:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_420
	test	rax, rax
	je	.label_419
.label_420:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_419:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c80

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_421
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_421
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_421:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_422
	test	rax, rax
	nop	
	je	.label_423
.label_422:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_423:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406cd0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_428
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_424
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_430
.label_428:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_427
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_427:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_429
.label_430:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_426
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_426
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_426:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_425
	test	rax, rax
	mov	rbp, rbp
	je	.label_424
.label_425:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_424:
	call	xalloc_die
.label_429:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406db0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_432
	test	rax, rax
	mov	rbp, rbp
	je	.label_431
.label_432:
	pop	rbx
	ret	
.label_431:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406dd0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_436
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_437
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_435
	call	free
	xor	eax, eax
	jmp	.label_433
.label_436:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_434
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_435:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_433
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_434
.label_433:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_434:
	mov	rbp, rbp
	call	xalloc_die
.label_437:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406e60
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
	je	.label_438
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_439
.label_438:
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
.label_439:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ec0
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
	jb	.label_440
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_440
	pop	rcx
	ret	
.label_440:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x406ef0

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
	je	.label_442
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_441
.label_442:
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
.label_441:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406f50
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
	je	.label_443
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_444
.label_443:
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
.label_444:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x406fb0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_2
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
	.align	16
	#Procedure 0x407000

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
	je	.label_449
	cmp	eax, 1
	je	.label_451
	mov	rbp, rbp
	cmp	eax, 3
	nop	
	jne	.label_447
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	jmp	.label_445
.label_451:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_445
.label_449:
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_448
	lea	rdi, [rdi]
	cmp	rbx, r15
	jbe	.label_450
.label_448:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	cmp	rbx, 0x40000000
	jb	.label_446
	mov	dword ptr [rax], 0x4b
	mov	rbp, rbp
	jmp	.label_445
.label_447:
	call	__errno_location
	nop	
	jmp	.label_445
.label_446:
	mov	dword ptr [rax], 0x22
.label_445:
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
	mov	edx, OFFSET FLAT:.str_2
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
.label_450:
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
	.align	16
	#Procedure 0x407120

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
	.align	16
	#Procedure 0x407160

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
	jae	.label_475
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
.label_469:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_469
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
	je	.label_455
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
	je	.label_456
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rsp, rsp
	je	.label_460
	mov	rsp, rsp
	cmp	eax, 0x22
	jne	.label_455
	mov	dword ptr [rsp + 4], 1
.label_460:
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_472
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	lea	rsi, [rsi]
	jmp	.label_455
.label_456:
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_455
	movsx	esi, byte ptr [rbx]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_455
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
	je	.label_455
.label_472:
	lea	rdi, [rdi]
	movsx	r13d, byte ptr [r12]
	mov	rbp, rbp
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_463
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
	je	.label_471
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_453
	nop	
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_453
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
	je	.label_453
	movsx	eax, byte ptr [r12 + 1]
	lea	rdi, [rdi]
	mov	ecx, 1
	nop	
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_461
	cmp	eax, 0x44
	nop	
	je	.label_461
	cmp	eax, 0x69
	jne	.label_453
	movzx	eax, byte ptr [r12 + 2]
	mov	rbp, rbp
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_477
	lea	rdi, [rdi]
	mov	ecx, 1
.label_477:
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_453
.label_463:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_454
.label_461:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_453:
	cmp	r13d, 0x59
	lea	rdi, [rdi]
	jg	.label_462
	mov	rsp, rsp
	lea	eax, [r13 - 0x42]
	nop	
	cmp	eax, 0xe
	nop	
	ja	.label_465
	jmp	qword ptr [word ptr [+ (rax * 8) + label_470]]
.label_592:
	mov	rax, rbp
	mov	rsp, rsp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_473
.label_462:
	lea	rsi, [rsi]
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_474
	mov	rbp, rbp
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	mov	rbp, rbp
	ja	.label_478
	mov	rsp, rsp
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_452]]
.label_499:
	mov	rax, rbp
	shr	rax, 0x37
	lea	rsi, [rsi]
	setne	dl
	nop	
	shl	rbp, 9
.label_473:
	cmp	rax, 1
	nop	
	sbb	rax, rax
	lea	rdi, [rdi]
	not	rax
	or	rbp, rax
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	jmp	.label_458
.label_465:
	cmp	r13d, 0x54
	nop	
	je	.label_466
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_471
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
	jmp	.label_476
.label_474:
	cmp	r13d, 0x74
	je	.label_466
	mov	rbp, rbp
	cmp	r13d, 0x77
	mov	rbp, rbp
	jne	.label_471
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
	jmp	.label_458
.label_500:
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
	jmp	.label_467
.label_501:
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
	jmp	.label_457
.label_502:
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
	jmp	.label_464
.label_466:
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
	jmp	.label_459
.label_478:
	cmp	r13d, 0x5a
	jne	.label_471
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
.label_476:
	movzx	eax, dl
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsi]
	jmp	.label_457
.label_471:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	lea	rdi, [rdi]
	mov	r13d, eax
	jmp	.label_455
.label_593:
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
	jmp	.label_464
.label_594:
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
.label_459:
	or	dl, r10b
.label_467:
	lea	rsi, [rsi]
	or	dl, bl
.label_464:
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
.label_457:
	mov	rsp, rsp
	mov	rbp, rsi
.label_458:
	lea	rsi, [rsi]
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + rcx], 0
	je	.label_468
	or	eax, 2
.label_468:
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 0x10]
.label_454:
	mov	qword ptr [rax], rbp
.label_455:
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
.label_475:
	mov	edi, OFFSET FLAT:.str_6
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x54
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a20

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_479
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_480
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
	je	.label_480
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
.label_479:
	mov	ecx, 1
.label_480:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a90

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
	js	.label_481
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_483
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
	je	.label_481
.label_483:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_481
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_482
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_482:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_481:
	lea	rsi, [rsi]
	mov	rdi, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	nop	
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x407b40

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_484
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_484
	test	byte ptr [rbx + 1], 1
	je	.label_484
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_484:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407b80

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
	jne	.label_485
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_485
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_486
.label_485:
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
.label_486:
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
	je	.label_487
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_487:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c30

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
	je	.label_488
	nop	
	cmp	r15, -2
	jb	.label_488
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_488
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_488:
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
	.align	16
	#Procedure 0x407cc0

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
	jne	.label_489
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_490
	test	cl, cl
	mov	rsp, rsp
	jne	.label_490
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_490
.label_489:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_490
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_490:
	mov	eax, ebx
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407d50

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
	je	.label_492
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_491
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_493
.label_491:
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_492
.label_493:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_492:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407da0

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
	mov	eax, OFFSET FLAT:.str.1_5
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_494
	nop	
	mov	rax, rcx
.label_494:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section .text
	.align	16
	#Procedure 0x407de0

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