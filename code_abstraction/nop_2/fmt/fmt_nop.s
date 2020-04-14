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
	jl	.label_27
	mov	rax, qword ptr [r12 + 8]
	xor	r14d, r14d
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2d
	jne	.label_27
	movsx	ecx, byte ptr [rax + 1]
	add	ecx, -0x30
	xor	r14d, r14d
	cmp	ecx, 9
	mov	rsp, rsp
	ja	.label_27
	inc	rax
	mov	rcx, qword ptr [r12]
	mov	qword ptr [r12 + 8], rcx
	lea	rdi, [rdi]
	lea	r12, [r12 + 8]
	mov	rbp, rbp
	dec	r13d
	mov	r14, rax
.label_27:
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	
	jmp	.label_19
.label_10:
	mov	byte ptr [rax], 0
	mov	rsp, rsp
	sub	eax, ebx
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + prefix_length]],  eax
	nop	word ptr cs:[rax + rax]
.label_19:
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
	jle	.label_28
	lea	rsi, [rsi]
	lea	eax, [rbx - 0x70]
	cmp	eax, 7
	mov	rsp, rsp
	ja	.label_32
	jmp	qword ptr [word ptr [+ (rax * 8) + label_11]]
.label_475:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	mov	dword ptr [dword ptr [rip + prefix_lead_space]],  0
	nop	
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x20
	mov	eax, 0
	jne	.label_13
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
.label_13:
	nop	
	mov	qword ptr [word ptr [rip + prefix]],  rbx
	mov	rdi, rbx
	call	strlen
	mov	dword ptr [dword ptr [rip + prefix_full_length]],  eax
	movsxd	rcx, eax
	nop	
	add	rcx, rbx
	nop	word ptr cs:[rax + rax]
.label_30:
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
	je	.label_30
	mov	rsp, rsp
	jmp	.label_10
.label_32:
	cmp	ebx, 0x63
	je	.label_22
	mov	rbp, rbp
	cmp	ebx, 0x67
	jne	.label_18
	mov	rsp, rsp
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	jmp	.label_19
.label_476:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + split]],  1
	nop	
	jmp	.label_19
.label_477:
	mov	byte ptr [byte ptr [rip + tagged]],  1
	nop	
	jmp	.label_19
.label_478:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + uniform]],  1
	lea	rdi, [rdi]
	jmp	.label_19
.label_479:
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	nop	
	jmp	.label_19
.label_22:
	mov	byte ptr [byte ptr [rip + crown]],  1
	mov	rsp, rsp
	jmp	.label_19
.label_28:
	cmp	ebx, -1
	jne	.label_17
	test	r14, r14
	je	.label_21
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
	jmp	.label_29
.label_21:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [rip + max_width]]
.label_29:
	mov	rbp, rbp
	test	r15, r15
	mov	rbp, rbp
	je	.label_34
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
.label_34:
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
	jmp	.label_24
.label_15:
	lea	rsi, [rsi]
	mov	r15b, 1
	lea	rdi, [rdi]
	jge	.label_24
	nop	word ptr cs:[rax + rax]
.label_16:
	cdqe	
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12 + rax*8]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	mov	rbp, rbp
	jne	.label_26
	nop	
	cmp	byte ptr [rbx + 1], 0
	je	.label_31
.label_26:
	mov	esi, OFFSET FLAT:.str.17_0
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	fopen
	mov	rsp, rsp
	mov	rbp, rax
	test	rbp, rbp
	je	.label_35
	nop	
	mov	rdi, rbp
	call	fmt
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_20
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
	jmp	.label_25
	nop	dword ptr [rax]
.label_35:
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
.label_25:
	call	error
	lea	rdi, [rdi]
	jmp	.label_20
.label_31:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	lea	rsi, [rsi]
	call	fmt
	nop	word ptr cs:[rax + rax]
.label_20:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	lea	rsi, [rsi]
	inc	eax
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, r13d
	jl	.label_16
.label_24:
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
	ja	.label_33
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
.label_33:
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
	mov	rbx, rdi
	mov	esi, 2
	mov	rbp, rbp
	call	fadvise
	mov	byte ptr [byte ptr [rip + tabs]],  0
	mov	dword ptr [dword ptr [rip + other_indent]],  0
	mov	rdi, rbx
	nop	
	call	get_prefix
	lea	rsi, [rsi]
	mov	r14d, eax
	mov	dword ptr [dword ptr [rip + next_char]],  r14d
	mov	rbp, rbp
	mov	r15d, OFFSET FLAT:unused_word_type
	nop	
	mov	r12d, OFFSET FLAT:in_column
	nop	
	jmp	.label_70
.label_46:
	nop	
	mov	r14d,  dword ptr [dword ptr [rip + next_char]]
	nop	
.label_70:
	nop	
	mov	dword ptr [dword ptr [rip + last_line_length]],  0
	jmp	.label_78
	nop	dword ptr [rax]
.label_72:
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	get_prefix
	lea	rsi, [rsi]
	mov	r14d, eax
.label_78:
	mov	rbp, rbp
	cmp	r14d, -1
	nop	
	je	.label_81
	cmp	r14d, 0xa
	nop	
	je	.label_81
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + next_prefix_indent]]
	mov	rsp, rsp
	cmp	eax,  dword ptr [dword ptr [rip + prefix_lead_space]]
	jl	.label_81
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	edx,  dword ptr [dword ptr [rip + prefix_full_length]]
	add	edx, eax
	lea	rsi, [rsi]
	cmp	ecx, edx
	jge	.label_66
	nop	word ptr cs:[rax + rax]
.label_81:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + out_column]],  0
	mov	r13d,  dword ptr [dword ptr [rip + next_prefix_indent]]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + in_column]],  r13d
	mov	rbp, rbp
	jg	.label_41
	lea	rdi, [rdi]
	cmp	r14d, -1
	je	.label_51
	cmp	r14d, 0xa
	jne	.label_41
	mov	rsp, rsp
	mov	ebp, r14d
	jmp	.label_45
	nop	word ptr cs:[rax + rax]
.label_41:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	movzx	ecx,  byte ptr [byte ptr [rip + tabs]]
	lea	rsi, [rsi]
	and	ecx, 1
	nop	
	cmp	ecx, 1
	jne	.label_44
	xor	ecx, ecx
	cmp	r13d, 8
	jl	.label_91
	mov	ebp, r13d
	sar	ebp, 0x1f
	mov	rsp, rsp
	shr	ebp, 0x1d
	add	ebp, r13d
	mov	rbp, rbp
	and	ebp, 0xfffffff8
	mov	rbp, rbp
	cmp	ebp, 2
	mov	eax, 0
	lea	rdi, [rdi]
	jge	.label_71
	mov	rbp, rbp
	jmp	.label_44
.label_85:
	mov	esi, 9
	lea	rdi, [rdi]
	call	__overflow
	mov	ecx,  dword ptr [dword ptr [rip + out_column]]
	jmp	.label_82
	nop	dword ptr [rax + rax]
.label_71:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_85
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 9
.label_82:
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	mov	rsp, rsp
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	nop	
	cmp	eax, ebp
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	jl	.label_71
	jmp	.label_44
.label_51:
	mov	ebp, r14d
	lea	rsi, [rsi]
	jmp	.label_45
.label_91:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_44
.label_64:
	inc	eax
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + out_column]],  eax
.label_44:
	lea	rdi, [rdi]
	cmp	eax, r13d
	mov	rsp, rsp
	jge	.label_54
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_57
	nop	
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
	nop	
	jmp	.label_64
.label_57:
	lea	rdi, [rdi]
	mov	esi, 0x20
	call	__overflow
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	jmp	.label_64
	nop	word ptr cs:[rax + rax]
.label_54:
	mov	r13d,  dword ptr [dword ptr [rip + in_column]]
	mov	rbp, rbp
	cmp	eax, r13d
	mov	rbp, rbp
	jne	.label_75
	mov	ecx, eax
	mov	r13d, eax
	jmp	.label_50
	nop	dword ptr [rax]
.label_75:
	mov	rbp,  qword ptr [word ptr [rip + prefix]]
	lea	rsi, [rsi]
	jmp	.label_39
.label_69:
	lea	rsi, [rsi]
	call	__overflow
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	nop	
	mov	r13d,  dword ptr [dword ptr [rip + in_column]]
	lea	rsi, [rsi]
	jmp	.label_83
	nop	word ptr [rax + rax]
.label_39:
	movzx	esi, byte ptr [rbp]
	test	esi, esi
	je	.label_87
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	nop	
	jae	.label_69
	lea	rdi, [rdi]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	rsp, rsp
	mov	byte ptr [rcx], sil
.label_83:
	inc	rbp
	mov	rbp, rbp
	inc	eax
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	mov	rsp, rsp
	cmp	eax, r13d
	mov	rsp, rsp
	mov	ecx, r13d
	lea	rsi, [rsi]
	jne	.label_39
	jmp	.label_50
.label_87:
	lea	rdi, [rdi]
	mov	ecx, eax
.label_50:
	mov	rsp, rsp
	cmp	r14d, -1
	je	.label_52
	lea	rdi, [rdi]
	mov	ebp, 0xa
	mov	rsp, rsp
	cmp	r14d, 0xa
	je	.label_45
	movzx	eax,  byte ptr [byte ptr [rip + tabs]]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	jne	.label_61
	mov	rbp, rbp
	mov	ebp, r13d
	mov	rsp, rsp
	sar	ebp, 0x1f
	lea	rdi, [rdi]
	shr	ebp, 0x1d
	lea	rdi, [rdi]
	add	ebp, r13d
	lea	rsi, [rsi]
	and	ebp, 0xfffffff8
	lea	eax, [rcx + 1]
	cmp	eax, ebp
	jge	.label_67
	mov	rsp, rsp
	cmp	ecx, ebp
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	rsp, rsp
	jl	.label_56
	mov	rbp, rbp
	jmp	.label_80
	nop	dword ptr [rax]
.label_52:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + prefix_length]]
	add	eax,  dword ptr [dword ptr [rip + next_prefix_indent]]
	lea	rdi, [rdi]
	mov	ebp, 0xffffffff
	cmp	r13d, eax
	jl	.label_45
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_88
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	nop	
	jmp	.label_45
.label_61:
	mov	rbp, rbp
	mov	eax, ecx
	nop	
	jmp	.label_80
.label_47:
	mov	esi, 9
	nop	
	call	__overflow
	mov	ecx,  dword ptr [dword ptr [rip + out_column]]
	lea	rdi, [rdi]
	jmp	.label_92
	nop	dword ptr [rax + rax]
.label_56:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_47
	lea	rdi, [rdi]
	lea	rdx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 9
.label_92:
	nop	
	mov	eax, ecx
	sar	eax, 0x1f
	mov	rbp, rbp
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	mov	rsp, rsp
	cmp	eax, ebp
	mov	ecx, eax
	lea	rsi, [rsi]
	jl	.label_56
	jmp	.label_80
.label_67:
	mov	eax, ecx
	nop	dword ptr [rax]
.label_80:
	mov	rsp, rsp
	cmp	eax, r13d
	nop	
	jl	.label_79
	mov	ebp, r14d
	nop	
	jmp	.label_45
.label_86:
	mov	esi, 0x20
	call	__overflow
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	lea	rdi, [rdi]
	jmp	.label_73
	nop	word ptr [rax + rax]
.label_79:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_86
	mov	rsp, rsp
	lea	rdx, [rcx + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
.label_73:
	mov	rbp, rbp
	inc	eax
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	cmp	eax, r13d
	jl	.label_79
	nop	
	mov	ebp, r14d
	jmp	.label_45
.label_88:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_45
	nop	dword ptr [rax + rax]
.label_55:
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 8], rcx
	lea	rsi, [rsi]
	movzx	ebp, byte ptr [rax]
.label_45:
	nop	
	cmp	ebp, -1
	je	.label_37
	mov	rsp, rsp
	cmp	ebp, 0xa
	je	.label_40
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_43
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], bpl
.label_65:
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jb	.label_55
	mov	rdi, rbx
	call	__uflow
	mov	ebp, eax
	jmp	.label_45
.label_43:
	movzx	esi, bpl
	mov	rsp, rsp
	call	__overflow
	jmp	.label_65
	nop	word ptr cs:[rax + rax]
.label_40:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_68
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_72
.label_68:
	mov	esi, 0xa
	nop	
	call	__overflow
	jmp	.label_72
.label_66:
	mov	dword ptr [dword ptr [rip + prefix_indent]],  eax
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + first_indent]],  ecx
	mov	qword ptr [word ptr [rip + wptr]], OFFSET FLAT:parabuf
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + word_limit]], OFFSET FLAT:unused_word_type
	mov	rdi, rbx
	mov	esi, r14d
	mov	rbp, rbp
	call	get_line
	mov	ecx,  dword ptr [dword ptr [rip + next_prefix_indent]]
	nop	
	mov	ebp,  dword ptr [dword ptr [rip + prefix_indent]]
	cmp	ecx, ebp
	mov	rbp, rbp
	jne	.label_89
	mov	esi,  dword ptr [dword ptr [rip + prefix_full_length]]
	add	esi, ecx
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + in_column]],  esi
	mov	rsp, rsp
	setge	dil
	mov	rbp, rbp
	cmp	eax, 0xa
	setne	dl
	cmp	eax, -1
	nop	
	setne	sil
	and	sil, dl
	mov	rsp, rsp
	and	sil, dil
	lea	rsi, [rsi]
	jmp	.label_93
.label_89:
	xor	esi, esi
.label_93:
	movzx	edx,  byte ptr [byte ptr [rip + split]]
	and	edx, 1
	nop	
	cmp	edx, 1
	mov	rbp, rbp
	jne	.label_49
	mov	ecx,  dword ptr [dword ptr [rip + first_indent]]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + other_indent]],  ecx
	jmp	.label_36
.label_49:
	mov	rbp, rbp
	mov	dl,  byte ptr [byte ptr [rip + crown]]
	and	dl, 1
	je	.label_63
	test	sil, sil
	mov	edx, OFFSET FLAT:first_indent
	cmovne	rdx, r12
	nop	
	mov	edx, dword ptr [rdx]
	mov	dword ptr [dword ptr [rip + other_indent]],  edx
	cmp	ecx, ebp
	nop	
	jne	.label_36
	mov	rbp, rbp
	add	ecx,  dword ptr [dword ptr [rip + prefix_full_length]]
	cmp	dword ptr [dword ptr [rip + in_column]],  ecx
	jl	.label_36
	cmp	eax, -1
	je	.label_36
	cmp	eax, 0xa
	lea	rdi, [rdi]
	je	.label_36
.label_42:
	mov	rdi, rbx
	mov	esi, eax
	mov	rbp, rbp
	call	get_line
	mov	rbp, rbp
	mov	edx,  dword ptr [dword ptr [rip + next_prefix_indent]]
	mov	rsp, rsp
	cmp	edx,  dword ptr [dword ptr [rip + prefix_indent]]
	jne	.label_36
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	lea	rdi, [rdi]
	add	edx,  dword ptr [dword ptr [rip + prefix_full_length]]
	mov	rbp, rbp
	cmp	ecx, edx
	mov	rbp, rbp
	jl	.label_36
	mov	rsp, rsp
	cmp	eax, -1
	mov	rsp, rsp
	je	.label_36
	lea	rdi, [rdi]
	cmp	eax, 0xa
	je	.label_36
	lea	rdi, [rdi]
	cmp	ecx,  dword ptr [dword ptr [rip + other_indent]]
	je	.label_42
	jmp	.label_36
.label_63:
	movzx	edx,  byte ptr [byte ptr [rip + tagged]]
	and	edx, 1
	cmp	edx, 1
	jne	.label_48
	lea	rsi, [rsi]
	test	sil, sil
	je	.label_90
	nop	
	mov	edi,  dword ptr [dword ptr [rip + in_column]]
	mov	esi,  dword ptr [dword ptr [rip + first_indent]]
	cmp	edi, esi
	jne	.label_53
	lea	rdi, [rdi]
	mov	esi, edi
	mov	rbp, rbp
	jmp	.label_60
.label_48:
	mov	esi,  dword ptr [dword ptr [rip + first_indent]]
	mov	dword ptr [dword ptr [rip + other_indent]],  esi
	lea	rsi, [rsi]
	jmp	.label_62
.label_90:
	mov	esi,  dword ptr [dword ptr [rip + first_indent]]
.label_60:
	cmp	dword ptr [dword ptr [rip + other_indent]],  esi
	lea	rsi, [rsi]
	jne	.label_62
	test	esi, esi
	nop	
	sete	dl
	nop	
	movzx	edx, dl
	nop	
	lea	edx, [rdx + rdx*2]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + other_indent]],  edx
	mov	rsp, rsp
	jmp	.label_62
.label_53:
	nop	
	mov	dword ptr [dword ptr [rip + other_indent]],  edi
.label_62:
	lea	rsi, [rsi]
	mov	dl,  byte ptr [byte ptr [rip + tagged]]
	and	dl, 1
	je	.label_76
	lea	rdi, [rdi]
	cmp	ecx, ebp
	jne	.label_36
	mov	edx,  dword ptr [dword ptr [rip + in_column]]
	lea	rdi, [rdi]
	add	ecx,  dword ptr [dword ptr [rip + prefix_full_length]]
	mov	rsp, rsp
	cmp	edx, ecx
	jl	.label_36
	mov	rbp, rbp
	cmp	eax, -1
	nop	
	je	.label_36
	cmp	eax, 0xa
	je	.label_36
	cmp	edx, esi
	mov	rbp, rbp
	je	.label_36
.label_84:
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rsp, rsp
	call	get_line
	mov	edx,  dword ptr [dword ptr [rip + next_prefix_indent]]
	cmp	edx,  dword ptr [dword ptr [rip + prefix_indent]]
	lea	rdi, [rdi]
	jne	.label_36
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	nop	
	add	edx,  dword ptr [dword ptr [rip + prefix_full_length]]
	cmp	ecx, edx
	mov	rbp, rbp
	jl	.label_36
	lea	rdi, [rdi]
	cmp	eax, -1
	lea	rdi, [rdi]
	je	.label_36
	cmp	eax, 0xa
	je	.label_36
	cmp	ecx,  dword ptr [dword ptr [rip + other_indent]]
	je	.label_84
	nop	
	jmp	.label_36
.label_76:
	cmp	ecx, ebp
	lea	rdi, [rdi]
	jne	.label_36
.label_74:
	mov	edx,  dword ptr [dword ptr [rip + in_column]]
	lea	rdi, [rdi]
	add	ecx,  dword ptr [dword ptr [rip + prefix_full_length]]
	mov	rbp, rbp
	cmp	edx, ecx
	jl	.label_36
	mov	rsp, rsp
	cmp	eax, -1
	je	.label_36
	nop	
	cmp	eax, 0xa
	je	.label_36
	cmp	edx,  dword ptr [dword ptr [rip + other_indent]]
	mov	rbp, rbp
	jne	.label_36
	mov	rsp, rsp
	mov	rdi, rbx
	mov	esi, eax
	mov	rbp, rbp
	call	get_line
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rip + next_prefix_indent]]
	cmp	ecx,  dword ptr [dword ptr [rip + prefix_indent]]
	je	.label_74
.label_36:
	mov	rsp, rsp
	mov	r14,  qword ptr [word ptr [rip + word_limit]]
	mov	rsp, rsp
	cmp	r14, r15
	mov	rbp, rbp
	jbe	.label_77
	lea	rdi, [rdi]
	or	byte ptr [r14 - 0x18], 0xa
	mov	dword ptr [dword ptr [rip + next_char]],  eax
	lea	rdi, [rdi]
	call	fmt_paragraph
	mov	esi,  dword ptr [dword ptr [rip + first_indent]]
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:unused_word_type
	call	put_line
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + label_58]]
	jmp	.label_59
	nop	dword ptr [rax]
.label_38:
	mov	rbp, rbp
	mov	esi,  dword ptr [dword ptr [rip + other_indent]]
	mov	rdi, rbp
	nop	
	call	put_line
	nop	
	mov	rbp, qword ptr [rbp + 0x20]
.label_59:
	nop	
	cmp	rbp, r14
	mov	rsp, rsp
	jne	.label_38
	jmp	.label_46
.label_37:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + next_char]],  0xffffffff
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_77:
	mov	edi, OFFSET FLAT:.str.46
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 0x25e
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.get_paragraph
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402760

	.globl get_prefix
	.type get_prefix, @function
get_prefix:
	lea	rdi, [rdi]
	push	r14
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbx, rdi
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + in_column]],  0
	mov	rsp, rsp
	jmp	.label_100
	nop	
.label_107:
	nop	
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	inc	eax
	mov	dword ptr [dword ptr [rip + in_column]],  eax
.label_100:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_99
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 8], rcx
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rax]
.label_97:
	cmp	eax, 9
	lea	rsi, [rsi]
	je	.label_104
	cmp	eax, 0x20
	lea	rdi, [rdi]
	je	.label_107
	lea	rsi, [rsi]
	jmp	.label_95
	nop	word ptr cs:[rax + rax]
.label_104:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + tabs]],  1
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	mov	rsp, rsp
	add	eax, ecx
	mov	rsp, rsp
	and	eax, 0xfffffff8
	nop	
	add	eax, 8
	nop	
	mov	dword ptr [dword ptr [rip + in_column]],  eax
	mov	rsp, rsp
	jmp	.label_100
.label_99:
	mov	rdi, rbx
	call	__uflow
	jmp	.label_97
.label_95:
	cmp	dword ptr [dword ptr [rip + prefix_length]],  0
	je	.label_98
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	dword ptr [dword ptr [rip + next_prefix_indent]],  ecx
	lea	rsi, [rsi]
	mov	r14,  qword ptr [word ptr [rip + prefix]]
	mov	cl, byte ptr [r14]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_96
	inc	r14
	mov	rsp, rsp
	jmp	.label_105
.label_98:
	mov	ecx,  dword ptr [dword ptr [rip + prefix_lead_space]]
	lea	rsi, [rsi]
	mov	edx,  dword ptr [dword ptr [rip + in_column]]
	cmp	ecx, edx
	nop	
	cmovle	edx, ecx
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + next_prefix_indent]],  edx
	mov	rsp, rsp
	jmp	.label_94
.label_101:
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	__uflow
	jmp	.label_106
	nop	word ptr cs:[rax + rax]
.label_105:
	movzx	ecx, cl
	mov	rbp, rbp
	cmp	eax, ecx
	mov	rbp, rbp
	jne	.label_94
	inc	dword ptr [dword ptr [rip + in_column]]
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	jae	.label_101
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	eax, byte ptr [rax]
.label_106:
	mov	cl, byte ptr [r14]
	nop	
	inc	r14
	test	cl, cl
	nop	
	jne	.label_105
	mov	rbp, rbp
	jmp	.label_96
	nop	word ptr cs:[rax + rax]
.label_108:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	eax, byte ptr [rax]
.label_96:
	cmp	eax, 9
	lea	rdi, [rdi]
	je	.label_102
	lea	rsi, [rsi]
	cmp	eax, 0x20
	mov	rbp, rbp
	jne	.label_94
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	mov	rsp, rsp
	inc	eax
	lea	rdi, [rdi]
	jmp	.label_103
	nop	word ptr cs:[rax + rax]
.label_102:
	mov	byte ptr [byte ptr [rip + tabs]],  1
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	rbp, rbp
	mov	eax, ecx
	mov	rsp, rsp
	sar	eax, 0x1f
	lea	rsi, [rsi]
	shr	eax, 0x1d
	lea	rdi, [rdi]
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
.label_103:
	nop	
	mov	dword ptr [dword ptr [rip + in_column]],  eax
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jb	.label_108
	nop	
	mov	rdi, rbx
	call	__uflow
	jmp	.label_96
.label_94:
	nop	
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402970

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
	jb	.label_118
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rip + first_indent]]
	lea	rsi, [rsi]
	mov	dword ptr [rsp - 0x14], ecx
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [rip + other_indent]]
	nop	
	mov	dword ptr [rsp - 0x10], ecx
	lea	rdi, [rdi]
	mov	r11d,  dword ptr [dword ptr [rip + last_line_length]]
	mov	rsp, rsp
	movsxd	r12,  dword ptr [dword ptr [rip + goal_width]]
	xor	r14d, r14d
	mov	rsp, rsp
	mov	ebp, OFFSET FLAT:unused_word_type
	mov	r8, rsi
	nop	
.label_112:
	mov	r13, r8
	mov	r8, rax
	test	r11d, r11d
	lea	rsi, [rsi]
	setg	dl
	cmp	r8, rbp
	mov	rsp, rsp
	sete	al
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp - 0x10]
	cmove	ecx, dword ptr [rsp - 0x14]
	movsxd	rbp, dword ptr [r13 - 0x20]
	mov	qword ptr [rsp - 8], rbp
	lea	rdi, [rdi]
	lea	ecx, [rbp + rcx]
	lea	rsi, [rsi]
	and	al, dl
	mov	rbp, rbp
	mov	rdx, r14
	movabs	r9, 0x7fffffffffffffff
	nop	dword ptr [rax]
.label_117:
	lea	rsi, [rsi]
	test	rdx, rdx
	mov	ebp, 0
	je	.label_110
	movsxd	r10, ecx
	mov	rsp, rsp
	mov	rbp, r12
	mov	rbp, rbp
	sub	rbp, r10
	add	rbp, rbp
	lea	rbp, [rbp + rbp*4]
	mov	rbp, rbp
	imul	rbp, rbp
	cmp	qword ptr [rsi + rdx + 0x20], rsi
	mov	rbp, rbp
	je	.label_110
	nop	
	movsxd	r15, dword ptr [rsi + rdx + 0x14]
	lea	rdi, [rdi]
	sub	r10, r15
	add	r10, r10
	lea	rbx, [r10 + r10*4]
	lea	rdi, [rdi]
	imul	rbx, rbx
	lea	rsi, [rsi]
	shr	rbx, 1
	add	rbp, rbx
.label_110:
	nop	
	add	rbp, qword ptr [rsi + rdx + 0x18]
	test	al, al
	je	.label_115
	mov	ebx, ecx
	mov	rsp, rsp
	sub	ebx, r11d
	lea	rsi, [rsi]
	add	ebx, ebx
	lea	ebx, [rbx + rbx*4]
	movsxd	rbx, ebx
	nop	
	imul	rbx, rbx
	shr	rbx, 1
	mov	rsp, rsp
	add	rbp, rbx
.label_115:
	nop	
	cmp	rbp, r9
	lea	rsi, [rsi]
	jge	.label_111
	lea	rbx, [rsi + rdx]
	mov	qword ptr [r13 - 8], rbx
	mov	dword ptr [r13 - 0x14], ecx
	mov	r9, rbp
.label_111:
	test	rdx, rdx
	je	.label_116
	mov	rbp, rbp
	add	ecx, dword ptr [rsi + rdx - 0x1c]
	add	ecx, dword ptr [rsi + rdx + 8]
	add	rdx, 0x28
	cmp	ecx, edi
	jl	.label_117
.label_116:
	mov	rbp, rbp
	mov	ebp, OFFSET FLAT:unused_word_type
	cmp	r8, rbp
	mov	rbp, rbp
	mov	ecx, 0x1324
	jbe	.label_109
	mov	al, byte ptr [r13 - 0x40]
	mov	rbp, rbp
	test	al, 2
	jne	.label_113
	test	al, 4
	mov	rbp, rbp
	mov	ecx, 0xce4
	lea	rdi, [rdi]
	jne	.label_109
	mov	eax, OFFSET FLAT:label_120
	mov	rsp, rsp
	cmp	r8, rax
	mov	ecx, 0x1324
	jbe	.label_109
	mov	rsp, rsp
	test	byte ptr [r13 - 0x68], 8
	mov	rsp, rsp
	mov	ecx, 0x1324
	je	.label_109
	movsxd	rcx, dword ptr [r13 - 0x48]
	add	rcx, 2
	mov	eax, 0x9c40
	xor	edx, edx
	idiv	rcx
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 0x1324
	jmp	.label_109
	nop	dword ptr [rax + rax]
.label_113:
	lea	rdi, [rdi]
	test	al, 8
	mov	ecx, 0x960
	mov	eax, 0x59164
	cmove	rcx, rax
.label_109:
	mov	rbp, rbp
	mov	al, byte ptr [r13 - 0x18]
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_119
	mov	rsp, rsp
	test	al, 8
	nop	
	je	.label_114
	mov	rbx, qword ptr [rsp - 8]
	add	rbx, 2
	mov	eax, 0x57e4
	xor	edx, edx
	mov	rbp, rbp
	idiv	rbx
	add	rcx, rax
	nop	
	jmp	.label_114
	nop	dword ptr [rax + rax]
.label_119:
	mov	rbp, rbp
	add	rcx, -0x640
.label_114:
	add	rcx, r9
	lea	rdi, [rdi]
	mov	qword ptr [r13 - 0x10], rcx
	lea	rdi, [rdi]
	lea	rax, [r8 - 0x28]
	add	r14, -0x28
	cmp	rax, rbp
	mov	rbp, rbp
	jae	.label_112
.label_118:
	mov	eax, dword ptr [rsp - 0xc]
	mov	dword ptr [rsi + 8], eax
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c20

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
	jmp	.label_140
.label_138:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + other_indent]],  ecx
	mov	rbp, rbp
	jmp	.label_141
.label_140:
	mov	rcx,  qword ptr [word ptr [rip + wptr]]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	ebx, ebp
	nop	word ptr cs:[rax + rax]
.label_150:
	mov	rax,  qword ptr [word ptr [rip + wptr]]
	cmp	rax, r12
	mov	rsp, rsp
	jne	.label_127
	movzx	eax,  byte ptr [byte ptr [rip + split]]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	je	.label_130
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + crown]]
	mov	rbp, rbp
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_136
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	jmp	.label_125
.label_136:
	movzx	eax,  byte ptr [byte ptr [rip + tagged]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_130
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [rip + first_indent]]
	mov	rbp, rbp
	jne	.label_125
	cmp	dword ptr [dword ptr [rip + other_indent]],  eax
	nop	
	jne	.label_151
	mov	rbp, rbp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	eax, [rax + rax*2]
	jmp	.label_125
	nop	word ptr [rax + rax]
.label_130:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + first_indent]]
.label_125:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + other_indent]],  eax
.label_151:
	call	flush_paragraph
	mov	rax,  qword ptr [word ptr [rip + wptr]]
.label_127:
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
	jae	.label_139
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 8], rcx
	mov	rsp, rsp
	movzx	ebx, byte ptr [rax]
.label_128:
	movsxd	rax, ebx
	mov	rcx, qword ptr [r14]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	lea	rdi, [rdi]
	mov	ebp, ebx
	je	.label_150
	lea	rdi, [rdi]
	jmp	.label_126
.label_139:
	mov	rdi, r15
	call	__uflow
	mov	ebx, eax
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	cmp	ebx, -1
	jne	.label_128
	nop	word ptr [rax + rax]
.label_126:
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
	jl	.label_131
	nop	word ptr cs:[rax + rax]
.label_133:
	movsx	esi, byte ptr [r13]
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	memchr
	test	rax, rax
	je	.label_131
	dec	r13
	cmp	rbx, r13
	nop	
	jb	.label_133
.label_131:
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
	jmp	.label_123
	nop	word ptr cs:[rax + rax]
.label_147:
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 8], rcx
	nop	
	movzx	ebp, byte ptr [rax]
.label_123:
	lea	rdi, [rdi]
	cmp	ebp, 9
	je	.label_129
	nop	
	cmp	ebp, 0x20
	lea	rdi, [rdi]
	jne	.label_132
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	inc	eax
	jmp	.label_135
	nop	dword ptr [rax]
.label_129:
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
.label_135:
	mov	dword ptr [dword ptr [rip + in_column]],  eax
	mov	rax, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r15 + 0x10]
	jb	.label_147
	mov	rdi, r15
	nop	
	call	__uflow
	mov	ebp, eax
	mov	rsp, rsp
	jmp	.label_123
	nop	dword ptr [rax]
.label_132:
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	esi, ecx
	sub	esi, dword ptr [rsp + 0x14]
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	mov	dword ptr [rax + 0xc], esi
	cmp	ebp, -1
	mov	dl, byte ptr [rax + 0x10]
	lea	rdi, [rdi]
	je	.label_146
	test	dl, 2
	mov	rsp, rsp
	jne	.label_134
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	jmp	.label_137
	nop	word ptr cs:[rax + rax]
.label_134:
	lea	rdi, [rdi]
	cmp	ebp, 0xa
	nop	
	jne	.label_142
.label_146:
	mov	rbp, rbp
	or	dl, 8
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x10], dl
	nop	
	jmp	.label_144
.label_142:
	nop	
	cmp	esi, 1
	mov	rbp, rbp
	setg	sil
.label_137:
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
	je	.label_144
	movzx	esi,  byte ptr [byte ptr [rip + uniform]]
	and	esi, 1
	lea	rdi, [rdi]
	cmp	esi, 1
	jne	.label_143
.label_144:
	nop	
	and	dl, 8
	mov	rbp, rbp
	movzx	edx, dl
	shr	edx, 3
	nop	
	inc	edx
	mov	dword ptr [rax + 0xc], edx
.label_143:
	mov	edx, OFFSET FLAT:label_121
	lea	rsi, [rsi]
	cmp	rax, rdx
	lea	rsi, [rsi]
	jne	.label_122
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + split]]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	nop	
	jne	.label_145
	nop	
	mov	eax,  dword ptr [dword ptr [rip + first_indent]]
	lea	rdi, [rdi]
	jmp	.label_124
.label_145:
	movzx	eax,  byte ptr [byte ptr [rip + crown]]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_148
	mov	dword ptr [dword ptr [rip + other_indent]],  ecx
	jmp	.label_141
.label_148:
	mov	eax,  dword ptr [dword ptr [rip + first_indent]]
	lea	rsi, [rsi]
	movzx	edx,  byte ptr [byte ptr [rip + tagged]]
	nop	
	and	edx, 1
	cmp	edx, 1
	mov	rbp, rbp
	jne	.label_124
	cmp	ecx, eax
	jne	.label_138
	nop	
	cmp	dword ptr [dword ptr [rip + other_indent]],  ecx
	jne	.label_141
	test	ecx, ecx
	mov	rbp, rbp
	sete	al
	movzx	eax, al
	lea	rdi, [rdi]
	lea	eax, [rax + rax*2]
	nop	word ptr cs:[rax + rax]
.label_124:
	mov	dword ptr [dword ptr [rip + other_indent]],  eax
.label_141:
	lea	rsi, [rsi]
	call	flush_paragraph
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
.label_122:
	mov	rsp, rsp
	add	rax, 0x28
	mov	qword ptr [word ptr [rip + word_limit]],  rax
	lea	rsi, [rsi]
	cmp	ebp, 0xa
	je	.label_149
	mov	rsp, rsp
	cmp	ebp, -1
	jne	.label_140
.label_149:
	mov	rdi, r15
	add	rsp, 0x28
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
	lea	rdi, [rdi]
	jmp	get_prefix
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403130

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
	je	.label_154
	nop	
	call	fmt_paragraph
	nop	
	mov	rsi,  qword ptr [word ptr [rip + label_58]]
	cmp	rsi, rbx
	lea	rsi, [rsi]
	je	.label_157
	nop	
	movabs	r8, 0x7ffffffffffffff7
	mov	rsp, rsp
	mov	rcx, qword ptr [rsi + 0x18]
	nop	
	lea	rdx, [r8 + 8]
	lea	rdi, [rdi]
	mov	r14, rbx
	nop	word ptr cs:[rax + rax]
.label_156:
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
	jne	.label_156
	jmp	.label_158
.label_154:
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
	jmp	.label_159
.label_157:
	nop	
	mov	r14, rbx
.label_158:
	lea	rsi, [rsi]
	mov	esi,  dword ptr [dword ptr [rip + first_indent]]
	mov	edi, OFFSET FLAT:unused_word_type
	mov	rsp, rsp
	call	put_line
	mov	rbx,  qword ptr [word ptr [rip + label_58]]
	mov	rbp, rbp
	jmp	.label_152
	nop	word ptr cs:[rax + rax]
.label_155:
	mov	esi,  dword ptr [dword ptr [rip + other_indent]]
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	put_line
	mov	rbx, qword ptr [rbx + 0x20]
.label_152:
	cmp	rbx, r14
	jne	.label_155
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
	ja	.label_153
	mov	rsp, rsp
	neg	rax
	lea	rdi, [rdi]
	mov	rcx, r14
	nop	dword ptr [rax]
.label_160:
	mov	rbp, rbp
	add	qword ptr [rcx], rax
	add	rcx, 0x28
	mov	rbx,  qword ptr [word ptr [rip + word_limit]]
	mov	rbp, rbp
	cmp	rcx, rbx
	jbe	.label_160
.label_153:
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
.label_159:
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
	#Procedure 0x403350

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
	jne	.label_176
	xor	ecx, ecx
	cmp	ebp, 8
	jl	.label_167
	lea	rsi, [rsi]
	mov	ebx, ebp
	sar	ebx, 0x1f
	shr	ebx, 0x1d
	add	ebx, ebp
	lea	rsi, [rsi]
	and	ebx, 0xfffffff8
	mov	rsp, rsp
	cmp	ebx, 2
	jge	.label_174
	nop	
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_176
.label_188:
	mov	esi, 9
	call	__overflow
	nop	
	mov	ecx,  dword ptr [dword ptr [rip + out_column]]
	jmp	.label_186
	nop	dword ptr [rax]
.label_174:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_188
	lea	rsi, [rsi]
	lea	rdx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rdx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 9
.label_186:
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
	jl	.label_174
	nop	
	jmp	.label_176
.label_167:
	lea	rsi, [rsi]
	xor	eax, eax
	jmp	.label_176
	nop	dword ptr [rax + rax]
.label_163:
	inc	eax
	mov	dword ptr [dword ptr [rip + out_column]],  eax
.label_176:
	cmp	eax, ebp
	jge	.label_184
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_185
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	lea	rdi, [rdi]
	mov	byte ptr [rcx], 0x20
	lea	rsi, [rsi]
	jmp	.label_163
.label_185:
	mov	rbp, rbp
	mov	esi, 0x20
	nop	
	call	__overflow
	nop	
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	lea	rsi, [rsi]
	jmp	.label_163
.label_184:
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
	jne	.label_177
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
	jge	.label_189
	lea	eax, [rcx + 1]
	lea	rdi, [rdi]
	cmp	eax, ebp
	mov	rsp, rsp
	jl	.label_180
	lea	rdi, [rdi]
	mov	eax, ecx
	jmp	.label_161
.label_177:
	mov	eax, ecx
	lea	rsi, [rsi]
	jmp	.label_161
.label_179:
	lea	rsi, [rsi]
	mov	esi, 9
	call	__overflow
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [rip + out_column]]
	jmp	.label_172
	nop	dword ptr [rax]
.label_180:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_179
	mov	rbp, rbp
	lea	rdx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rdx
	nop	
	mov	byte ptr [rax], 9
.label_172:
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
	jl	.label_180
	jmp	.label_161
.label_189:
	mov	rbp, rbp
	mov	eax, ecx
	jmp	.label_161
	nop	word ptr cs:[rax + rax]
.label_162:
	lea	rdi, [rdi]
	inc	eax
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + out_column]],  eax
.label_161:
	cmp	eax, r14d
	lea	rsi, [rsi]
	jge	.label_171
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_175
	lea	rdx, [rcx + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rdx
	lea	rsi, [rsi]
	mov	byte ptr [rcx], 0x20
	jmp	.label_162
.label_175:
	mov	rbp, rbp
	mov	esi, 0x20
	call	__overflow
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	jmp	.label_162
.label_171:
	mov	rbp, rbp
	mov	r14, qword ptr [r15 + 0x20]
	lea	rdi, [rdi]
	add	r14, -0x28
	jmp	.label_190
	nop	word ptr cs:[rax + rax]
.label_192:
	add	r15, 0x28
	mov	rsp, rsp
	mov	eax, ecx
.label_190:
	mov	rbp, qword ptr [r15 + 8]
	xor	ecx, ecx
	test	ebp, ebp
	lea	rsi, [rsi]
	je	.label_164
	mov	rbp, rbp
	mov	rbx, qword ptr [r15]
	lea	rsi, [rsi]
	neg	ebp
	jmp	.label_166
.label_187:
	movzx	esi, al
	nop	
	call	__overflow
	jmp	.label_178
	nop	
.label_166:
	mov	al, byte ptr [rbx]
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_187
	lea	rdi, [rdi]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_178:
	inc	rbx
	nop	
	inc	ebp
	jne	.label_166
	mov	rbp, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	lea	rsi, [rsi]
	mov	ecx, ebp
.label_164:
	add	eax, ecx
	cmp	r15, r14
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	je	.label_193
	shr	rbp, 0x20
	add	ebp, eax
	nop	
	movzx	ecx,  byte ptr [byte ptr [rip + tabs]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_168
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
	jge	.label_169
	mov	rsp, rsp
	cmp	eax, ebx
	mov	ecx, eax
	nop	
	jl	.label_173
	lea	rsi, [rsi]
	jmp	.label_170
	nop	
.label_168:
	mov	ecx, eax
	mov	rsp, rsp
	jmp	.label_170
.label_183:
	mov	rbp, rbp
	mov	esi, 9
	nop	
	call	__overflow
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	lea	rsi, [rsi]
	jmp	.label_191
	nop	word ptr cs:[rax + rax]
.label_173:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_183
	mov	rbp, rbp
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	rbp, rbp
	mov	byte ptr [rcx], 9
.label_191:
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
	jl	.label_173
	lea	rsi, [rsi]
	jmp	.label_170
.label_169:
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	jmp	.label_170
	nop	dword ptr [rax]
.label_165:
	inc	ecx
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + out_column]],  ecx
.label_170:
	cmp	ecx, ebp
	jge	.label_192
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_181
	mov	rbp, rbp
	lea	rdx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rdx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x20
	jmp	.label_165
.label_181:
	mov	rbp, rbp
	mov	esi, 0x20
	lea	rdi, [rdi]
	call	__overflow
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rip + out_column]]
	nop	
	jmp	.label_165
.label_193:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + last_line_length]],  eax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rax, qword ptr [rdi + 0x28]
	nop	
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_182
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
.label_182:
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
	#Procedure 0x403820
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
	#Procedure 0x403830
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403840

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
	je	.label_197
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_195
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_195
.label_197:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_196
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_195:
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
	jne	.label_194
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
.label_196:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_194:
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
	#Procedure 0x403940
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403950

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_198
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
.label_198:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403980

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
	je	.label_199
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
	jl	.label_201
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_201
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
	jne	.label_200
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_200:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_201:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_199:
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
	#Procedure 0x403a70
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
	#Procedure 0x403ac0
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
	#Procedure 0x403ae0
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
	#Procedure 0x403b00
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
	#Procedure 0x403b70
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
	#Procedure 0x403b90
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
	je	.label_202
	test	rdx, rdx
	nop	
	je	.label_202
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_202:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403bd0
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
	#Procedure 0x403c80

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
.label_321:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_297
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_304]]
.label_487:
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
.label_488:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_207
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_207
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_228:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_218
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_218:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_228
.label_207:
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
	jmp	.label_213
.label_480:
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
	jmp	.label_213
.label_483:
	lea	rsi, [rsi]
	mov	al, 1
.label_481:
	mov	rbp, rbp
	mov	r12b, 1
.label_484:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_258
	lea	rsi, [rsi]
	mov	cl, al
.label_258:
	mov	rsp, rsp
	mov	al, cl
.label_482:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_265
	test	r10, r10
	je	.label_273
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_274
.label_265:
	xor	ecx, ecx
	jmp	.label_274
.label_485:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_284
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_288
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_292
.label_486:
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
	jmp	.label_213
.label_273:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_274:
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
	jmp	.label_213
.label_284:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_292
.label_288:
	lea	rdi, [rdi]
	mov	eax, 1
.label_292:
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
.label_213:
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
	jmp	.label_212
	nop	word ptr cs:[rax + rax]
.label_210:
	nop	
	inc	rdi
.label_212:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_259
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_325
	jmp	.label_268
	nop	dword ptr [rax + rax]
.label_259:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_272
.label_325:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_280
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_282
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_282
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
.label_282:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_314
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_227
	nop	dword ptr [rax + rax]
.label_280:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_227
	nop	word ptr cs:[rax + rax]
.label_314:
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
	jne	.label_287
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
	je	.label_227
	jmp	.label_223
.label_287:
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
.label_227:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_248
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_250]]
.label_501:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_226
	mov	rbp, rbp
	jmp	.label_256
.label_505:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_303
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_261
	nop	
	cmp	rbp, 1
	je	.label_256
	xor	r13d, r13d
	jmp	.label_208
.label_494:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_275
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_223
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_285
	mov	al, r14b
	and	al, 1
	jne	.label_320
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_205
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_205:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_299
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_299:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_309
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_309:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_222
.label_495:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_255
.label_496:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_217
.label_497:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_255
.label_498:
	mov	bl, 0x66
	jmp	.label_255
.label_499:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_217
.label_502:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_204
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_209
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
	jae	.label_214
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_214:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_239
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_239:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_245
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_245:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_204:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_208
.label_503:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_279
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_226
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_226
	mov	rbp, rbp
	jmp	.label_267
.label_504:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_270
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_276
	lea	rdi, [rdi]
	jmp	.label_281
.label_248:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_286
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
.label_233:
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
	ja	.label_308
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_308
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_208
.label_303:
	test	rdi, rdi
	jne	.label_324
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_324
.label_256:
	mov	dl, 1
.label_500:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_327
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_208
.label_275:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_210
	jmp	.label_226
.label_270:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_217
.label_276:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_221
.label_217:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_224
.label_255:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_208
	lea	rsi, [rsi]
	jmp	.label_236
.label_286:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_237
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
.label_237:
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
.label_241:
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
	je	.label_271
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_278
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_302
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_291
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_313:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_307
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_318
.label_307:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_313
.label_291:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_319
	xor	r13d, r13d
.label_319:
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
	je	.label_241
	mov	rsp, rsp
	jmp	.label_233
.label_324:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_208
.label_279:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_226
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_226
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_226
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_235
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_264
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_243
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_246
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_246:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_252
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_252:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_305
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_305:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_316
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_316:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_208
.label_226:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_208:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_323
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_295
	lea	rsi, [rsi]
	jmp	.label_298
.label_323:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_298
.label_295:
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
	jne	.label_301
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_310
	nop	word ptr cs:[rax + rax]
.label_298:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_310:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_221
	mov	rsp, rsp
	jmp	.label_236
.label_301:
	mov	bl, r15b
.label_236:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_223
	nop	
	cmp	r9d, 2
	jne	.label_311
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_311
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_219
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_219:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_215
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_215:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_306
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_306:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_311:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_232
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_232:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_254
.label_261:
	xor	r13d, r13d
	nop	
	jmp	.label_208
.label_308:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_242
	nop	dword ptr [rax + rax]
.label_262:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_242:
	test	cl, cl
	je	.label_249
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_260
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_269
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_269:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_260
	nop	dword ptr [rax]
.label_249:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_223
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_277
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_277
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_238
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_238:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_289
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_289:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_257
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_257:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_277:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_322
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_322:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_315
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_315:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_326
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
.label_326:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_260:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_221
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_229
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_229
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_234
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_234:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_294
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_294:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_229:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_262
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_262
	nop	word ptr cs:[rax + rax]
.label_221:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_263
	mov	rsp, rsp
	and	al, 1
	jne	.label_263
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_231
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_231:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_266
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_266:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_263:
	mov	rsp, rsp
	mov	bl, r15b
.label_254:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_216
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_216:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_210
.label_285:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_222
.label_320:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_222:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_312
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_312:
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
	je	.label_240
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_220
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_300
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_203
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_203:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_211
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_211:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_208
.label_240:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_208
.label_220:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_208
.label_300:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_208
.label_278:
	xor	r13d, r13d
.label_271:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_233
.label_302:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_244
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_253:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_247
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_253
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_233
.label_244:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_233
.label_247:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_233
.label_235:
	xor	r13d, r13d
	jmp	.label_208
.label_264:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_208
.label_268:
	nop	
	mov	r13, rdi
.label_272:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_283
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_293
.label_283:
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
	je	.label_296
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_296
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_317
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_296
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_321
.label_296:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_206
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_206
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_206
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_225:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_251
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_251:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_225
.label_206:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_230
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_230
.label_327:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_223
.label_318:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_223
.label_293:
	nop	
	mov	rbp, r13
	jmp	.label_223
.label_224:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_223:
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
.label_290:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_230:
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
.label_317:
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
	jmp	.label_290
.label_209:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_223
.label_281:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_223
.label_267:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_223
.label_243:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_223
.label_297:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405200
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
	#Procedure 0x405340
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
	je	.label_328
	mov	qword ptr [rax], rbx
.label_328:
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
	#Procedure 0x405490
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_329
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_333:
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
	jl	.label_333
.label_329:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_332
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_330]], OFFSET FLAT:slot0
.label_332:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_331
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_331:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405550
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405560

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
	js	.label_340
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_338
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_336
.label_338:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_339
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
	jne	.label_335
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_335:
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
.label_336:
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
	ja	.label_334
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
	je	.label_337
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_337:
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
.label_334:
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
.label_340:
	lea	rdi, [rdi]
	call	abort
.label_339:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4057d0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4057e0
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
	#Procedure 0x405810
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
	#Procedure 0x405840
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
	je	.label_341
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
.label_341:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4058d0
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
	je	.label_342
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
.label_342:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405970

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
	je	.label_343
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
.label_343:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a00
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
	je	.label_344
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
.label_344:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405a70
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_345]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_346]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_347]]
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
	#Procedure 0x405b10
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_345]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_346]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_347]]
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
	#Procedure 0x405bb0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_345]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_346]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_347]]
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
	#Procedure 0x405c20
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_345]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_346]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_347]]
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
	#Procedure 0x405c90

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
	je	.label_348
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
.label_348:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405d70
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_345]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_346]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_347]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_349
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_349
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
.label_349:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405e00
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_345]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_346]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_347]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_350
	test	rdx, rdx
	je	.label_350
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
.label_350:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e90
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_345]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_346]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_347]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_351
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_351
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
.label_351:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f30
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_345]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_346]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_347]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_352
	test	rsi, rsi
	je	.label_352
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
.label_352:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fd0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fe0
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
	#Procedure 0x406000
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
	#Procedure 0x406020

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
	#Procedure 0x406050

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
	jne	.label_355
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_353
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_354
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_354
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_354
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_354
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_354
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_354
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_355
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_355
.label_353:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_354
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_354
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_354
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_354
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_354
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_354
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_356
.label_354:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_355:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_356:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_355
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_355
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4061c0

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
	je	.label_357
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
	jmp	.label_360
.label_357:
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
.label_360:
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
	ja	.label_359
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_361]]
.label_518:
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
.label_359:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_364
.label_519:
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
.label_520:
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
.label_521:
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
	jmp	.label_365
.label_522:
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
	jmp	.label_363
.label_523:
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
	jmp	.label_362
.label_524:
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
.label_362:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_363:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_365:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_366
.label_526:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_364:
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
	jmp	.label_358
.label_525:
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
.label_358:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_366:
	mov	rbp, rbp
	call	__fprintf_chk
.label_517:
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
	#Procedure 0x4065b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_367:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_367
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065e0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_371:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_368
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_370
	nop	word ptr cs:[rax + rax]
.label_368:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_370:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_369
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_371
.label_369:
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
	#Procedure 0x406670

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_372
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
.label_372:
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
.label_374:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_373
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_375
	nop	dword ptr [rax + rax]
.label_373:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_375:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_376
	inc	r9
	cmp	r9, 0xa
	jb	.label_374
.label_376:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067b0
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
	#Procedure 0x406840
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
	jb	.label_377
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_378
	test	rax, rax
	je	.label_377
.label_378:
	nop	
	pop	rbx
	ret	
.label_377:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406890

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_379
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_380
.label_379:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_380:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4068c0
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
	jb	.label_382
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_381
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_381
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_381:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_383
	test	rax, rax
	je	.label_382
.label_383:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_382:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406940

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_384
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_384
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_384:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_385
	test	rax, rax
	nop	
	je	.label_386
.label_385:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_386:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406990
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_391
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_387
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_393
.label_391:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_390
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_390:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_392
.label_393:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_389
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_389
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_389:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_388
	test	rax, rax
	mov	rbp, rbp
	je	.label_387
.label_388:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_387:
	call	xalloc_die
.label_392:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a70
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_394
	test	rax, rax
	mov	rbp, rbp
	je	.label_395
.label_394:
	pop	rbx
	ret	
.label_395:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406a90
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_399
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_400
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_398
	call	free
	xor	eax, eax
	jmp	.label_396
.label_399:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_397
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_398:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_396
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_397
.label_396:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_397:
	mov	rbp, rbp
	call	xalloc_die
.label_400:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406b20
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
	je	.label_401
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_402
.label_401:
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
.label_402:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b80
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
	jb	.label_403
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_403
	pop	rcx
	ret	
.label_403:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x406bb0

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
	je	.label_405
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_404
.label_405:
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
.label_404:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406c10
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
	je	.label_406
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_407
.label_406:
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
.label_407:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x406c70

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
	#Procedure 0x406cc0

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
	je	.label_412
	cmp	eax, 1
	je	.label_414
	mov	rbp, rbp
	cmp	eax, 3
	nop	
	jne	.label_410
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	jmp	.label_408
.label_414:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_408
.label_412:
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_411
	lea	rdi, [rdi]
	cmp	rbx, r15
	jbe	.label_413
.label_411:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	cmp	rbx, 0x40000000
	jb	.label_409
	mov	dword ptr [rax], 0x4b
	mov	rbp, rbp
	jmp	.label_408
.label_410:
	call	__errno_location
	nop	
	jmp	.label_408
.label_409:
	mov	dword ptr [rax], 0x22
.label_408:
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
.label_413:
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
	#Procedure 0x406de0

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
	#Procedure 0x406e20

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
	jae	.label_423
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
.label_415:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_415
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
	je	.label_421
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
	je	.label_434
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rsp, rsp
	je	.label_437
	mov	rsp, rsp
	cmp	eax, 0x22
	jne	.label_421
	mov	dword ptr [rsp + 4], 1
.label_437:
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_418
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	lea	rsi, [rsi]
	jmp	.label_421
.label_434:
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_421
	movsx	esi, byte ptr [rbx]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_421
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
	je	.label_421
.label_418:
	lea	rdi, [rdi]
	movsx	r13d, byte ptr [r12]
	mov	rbp, rbp
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_439
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
	je	.label_417
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_420
	nop	
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_420
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
	je	.label_420
	movsx	eax, byte ptr [r12 + 1]
	lea	rdi, [rdi]
	mov	ecx, 1
	nop	
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_425
	cmp	eax, 0x44
	nop	
	je	.label_425
	cmp	eax, 0x69
	jne	.label_420
	movzx	eax, byte ptr [r12 + 2]
	mov	rbp, rbp
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_428
	lea	rdi, [rdi]
	mov	ecx, 1
.label_428:
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_420
.label_439:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_432
.label_425:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_420:
	cmp	r13d, 0x59
	lea	rdi, [rdi]
	jg	.label_438
	mov	rsp, rsp
	lea	eax, [r13 - 0x42]
	nop	
	cmp	eax, 0xe
	nop	
	ja	.label_440
	jmp	qword ptr [word ptr [+ (rax * 8) + label_416]]
.label_552:
	mov	rax, rbp
	mov	rsp, rsp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_419
.label_438:
	lea	rsi, [rsi]
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_422
	mov	rbp, rbp
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	mov	rbp, rbp
	ja	.label_426
	mov	rsp, rsp
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_429]]
.label_529:
	mov	rax, rbp
	shr	rax, 0x37
	lea	rsi, [rsi]
	setne	dl
	nop	
	shl	rbp, 9
.label_419:
	cmp	rax, 1
	nop	
	sbb	rax, rax
	lea	rdi, [rdi]
	not	rax
	or	rbp, rax
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	jmp	.label_431
.label_440:
	cmp	r13d, 0x54
	nop	
	je	.label_427
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_417
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
	jmp	.label_430
.label_422:
	cmp	r13d, 0x74
	je	.label_427
	mov	rbp, rbp
	cmp	r13d, 0x77
	mov	rbp, rbp
	jne	.label_417
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
	jmp	.label_431
.label_530:
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
	jmp	.label_441
.label_531:
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
	jmp	.label_433
.label_532:
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
	jmp	.label_435
.label_427:
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
	jmp	.label_436
.label_426:
	cmp	r13d, 0x5a
	jne	.label_417
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
.label_430:
	movzx	eax, dl
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsi]
	jmp	.label_433
.label_417:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	lea	rdi, [rdi]
	mov	r13d, eax
	jmp	.label_421
.label_553:
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
	jmp	.label_435
.label_554:
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
.label_436:
	or	dl, r10b
.label_441:
	lea	rsi, [rsi]
	or	dl, bl
.label_435:
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
.label_433:
	mov	rsp, rsp
	mov	rbp, rsi
.label_431:
	lea	rsi, [rsi]
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + rcx], 0
	je	.label_424
	or	eax, 2
.label_424:
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 0x10]
.label_432:
	mov	qword ptr [rax], rbp
.label_421:
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
.label_423:
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
	#Procedure 0x4076e0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_442
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_443
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
	je	.label_443
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
.label_442:
	mov	ecx, 1
.label_443:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407750

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
	js	.label_444
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_445
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
	je	.label_444
.label_445:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_444
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_446
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_446:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_444:
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
	#Procedure 0x407800

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_447
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_447
	test	byte ptr [rbx + 1], 1
	je	.label_447
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_447:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407840

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
	jne	.label_448
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_448
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_449
.label_448:
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
.label_449:
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
	je	.label_450
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_450:
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
	#Procedure 0x4078f0

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
	je	.label_451
	nop	
	cmp	r15, -2
	jb	.label_451
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_451
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_451:
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
	#Procedure 0x407980

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
	jne	.label_452
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_453
	test	cl, cl
	mov	rsp, rsp
	jne	.label_453
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_453
.label_452:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_453
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_453:
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
	#Procedure 0x407a10

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
	je	.label_455
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_454
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_456
.label_454:
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_455
.label_456:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_455:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407a60

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
	je	.label_457
	nop	
	mov	rax, rcx
.label_457:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section .text
	.align	16
	#Procedure 0x407aa0

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