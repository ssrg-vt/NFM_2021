	.section	.text
	.align	16
	#Procedure 0x4015d0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_8
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
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
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
	mov	esi, OFFSET FLAT:.str.30
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
	je	.label_9
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_9:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.7
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.7
	mov	ecx, OFFSET FLAT:.str.36
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_8:
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
	.align	16
	#Procedure 0x4017f0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.9
	mov	esi, OFFSET FLAT:.str.10
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.9
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + uniform]],  0
	mov	byte ptr [byte ptr [rip + split]],  0
	mov	byte ptr [byte ptr [rip + tagged]],  0
	mov	byte ptr [byte ptr [rip + crown]],  0
	mov	dword ptr [dword ptr [rip + max_width]],  0x4b
	mov	qword ptr [word ptr [rip + prefix]], OFFSET FLAT:.str_0
	mov	dword ptr [dword ptr [rip + prefix_full_length]],  0
	mov	dword ptr [dword ptr [rip + prefix_lead_space]],  0
	mov	dword ptr [dword ptr [rip + prefix_length]],  0
	xor	r14d, r14d
	cmp	r13d, 2
	jl	.label_17
	mov	rax, qword ptr [r12 + 8]
	xor	r14d, r14d
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_17
	movsx	ecx, byte ptr [rax + 1]
	add	ecx, -0x30
	xor	r14d, r14d
	cmp	ecx, 9
	ja	.label_17
	inc	rax
	mov	rcx, qword ptr [r12]
	mov	qword ptr [r12 + 8], rcx
	lea	r12, [r12 + 8]
	dec	r13d
	mov	r14, rax
.label_17:
	xor	r15d, r15d
	jmp	.label_22
.label_10:
	mov	byte ptr [rax], 0
	sub	eax, ebx
	mov	dword ptr [dword ptr [rip + prefix_length]],  eax
	nop	word ptr [rax + rax]
.label_22:
	mov	edx, OFFSET FLAT:.str.11
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r12
	call	getopt_long
	mov	ebx, eax
	cmp	ebx, 0x62
	jle	.label_34
	lea	eax, [rbx - 0x70]
	cmp	eax, 7
	ja	.label_11
	jmp	qword ptr [word ptr [+ (rax * 8) + label_15]]
.label_503:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	mov	dword ptr [dword ptr [rip + prefix_lead_space]],  0
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x20
	mov	eax, 0
	jne	.label_18
	nop	word ptr cs:[rax + rax]
.label_27:
	mov	rcx, rax
	movzx	edx, byte ptr [rbx + rcx + 1]
	lea	rax, [rcx + 1]
	cmp	edx, 0x20
	je	.label_27
	lea	rbx, [rbx + rcx + 1]
	mov	dword ptr [dword ptr [rip + prefix_lead_space]],  eax
.label_18:
	mov	qword ptr [word ptr [rip + prefix]],  rbx
	mov	rdi, rbx
	call	strlen
	mov	dword ptr [dword ptr [rip + prefix_full_length]],  eax
	movsxd	rcx, eax
	add	rcx, rbx
	nop	word ptr [rax + rax]
.label_13:
	mov	rax, rcx
	cmp	rax, rbx
	jbe	.label_10
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rax - 1]
	cmp	edx, 0x20
	je	.label_13
	jmp	.label_10
.label_11:
	cmp	ebx, 0x63
	je	.label_19
	cmp	ebx, 0x67
	jne	.label_20
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_22
.label_504:
	mov	byte ptr [byte ptr [rip + split]],  1
	jmp	.label_22
.label_505:
	mov	byte ptr [byte ptr [rip + tagged]],  1
	jmp	.label_22
.label_506:
	mov	byte ptr [byte ptr [rip + uniform]],  1
	jmp	.label_22
.label_507:
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_22
.label_19:
	mov	byte ptr [byte ptr [rip + crown]],  1
	jmp	.label_22
.label_34:
	cmp	ebx, -1
	jne	.label_33
	test	r14, r14
	je	.label_35
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	mov	esi, 0
	mov	edx, 0x9c4
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, r14
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [dword ptr [rip + max_width]],  eax
	jmp	.label_24
.label_35:
	mov	eax,  dword ptr [dword ptr [rip + max_width]]
.label_24:
	test	r15, r15
	je	.label_25
	movsxd	rbx, eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, r15
	mov	rdx, rbx
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [dword ptr [rip + goal_width]],  eax
	test	r14, r14
	jne	.label_32
	add	eax, 0xa
	mov	dword ptr [dword ptr [rip + max_width]],  eax
	jmp	.label_32
.label_25:
	imul	eax, eax, 0xbb
	cdqe	
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	shr	rcx, 0x3f
	sar	rax, 0x26
	add	eax, ecx
	mov	dword ptr [dword ptr [rip + goal_width]],  eax
.label_32:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, r13d
	jne	.label_21
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	fmt
	mov	r15b, 1
	jmp	.label_29
.label_21:
	mov	r15b, 1
	jge	.label_29
	nop	
.label_16:
	cdqe	
	mov	rbx, qword ptr [r12 + rax*8]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_31
	cmp	byte ptr [rbx + 1], 0
	je	.label_30
.label_31:
	mov	esi, OFFSET FLAT:.str.17_0
	mov	rdi, rbx
	call	fopen
	mov	rbp, rax
	test	rbp, rbp
	je	.label_26
	mov	rdi, rbp
	call	fmt
	mov	rdi, rbp
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_14
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_23
	nop	
.label_26:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
.label_23:
	call	error
	jmp	.label_14
.label_30:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	fmt
	nop	dword ptr [rax]
.label_14:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, r13d
	jl	.label_16
.label_29:
	not	r15b
	and	r15b, 1
	movzx	eax, r15b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_33:
	cmp	ebx, 0xffffff7d
	je	.label_28
	cmp	ebx, 0xffffff7e
	jne	.label_20
	xor	edi, edi
	call	usage
.label_28:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.14
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_20:
	lea	eax, [rbx - 0x30]
	cmp	eax, 9
	ja	.label_12
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_12:
	mov	edi, 1
	call	usage
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401c40

	.globl fmt
	.type fmt, @function
fmt:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	esi, 2
	call	fadvise
	mov	byte ptr [byte ptr [rip + tabs]],  0
	mov	dword ptr [dword ptr [rip + other_indent]],  0
	mov	rdi, rbx
	call	get_prefix
	mov	r14d, eax
	mov	dword ptr [dword ptr [rip + next_char]],  r14d
	mov	r15d, OFFSET FLAT:unused_word_type
	mov	r12d, OFFSET FLAT:in_column
	jmp	.label_61
.label_91:
	mov	r14d,  dword ptr [dword ptr [rip + next_char]]
.label_61:
	mov	dword ptr [dword ptr [rip + last_line_length]],  0
	jmp	.label_67
	nop	dword ptr [rax]
.label_53:
	mov	rdi, rbx
	call	get_prefix
	mov	r14d, eax
.label_67:
	cmp	r14d, -1
	je	.label_77
	cmp	r14d, 0xa
	je	.label_77
	mov	eax,  dword ptr [dword ptr [rip + next_prefix_indent]]
	cmp	eax,  dword ptr [dword ptr [rip + prefix_lead_space]]
	jl	.label_77
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	edx,  dword ptr [dword ptr [rip + prefix_full_length]]
	add	edx, eax
	cmp	ecx, edx
	jge	.label_82
	nop	dword ptr [rax + rax]
.label_77:
	mov	dword ptr [dword ptr [rip + out_column]],  0
	mov	r13d,  dword ptr [dword ptr [rip + next_prefix_indent]]
	cmp	dword ptr [dword ptr [rip + in_column]],  r13d
	jg	.label_37
	cmp	r14d, -1
	je	.label_87
	cmp	r14d, 0xa
	jne	.label_37
	mov	ebp, r14d
	jmp	.label_39
	nop	word ptr cs:[rax + rax]
.label_37:
	xor	eax, eax
	movzx	ecx,  byte ptr [byte ptr [rip + tabs]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_57
	xor	ecx, ecx
	cmp	r13d, 8
	jl	.label_51
	mov	ebp, r13d
	sar	ebp, 0x1f
	shr	ebp, 0x1d
	add	ebp, r13d
	and	ebp, 0xfffffff8
	cmp	ebp, 2
	mov	eax, 0
	jge	.label_52
	jmp	.label_57
.label_76:
	mov	esi, 9
	call	__overflow
	mov	ecx,  dword ptr [dword ptr [rip + out_column]]
	jmp	.label_60
	nop	word ptr [rax + rax]
.label_52:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_76
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 9
.label_60:
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	cmp	eax, ebp
	mov	ecx, eax
	jl	.label_52
	jmp	.label_57
.label_87:
	mov	ebp, r14d
	jmp	.label_39
.label_51:
	xor	eax, eax
	jmp	.label_57
	nop	word ptr cs:[rax + rax]
.label_80:
	inc	eax
	mov	dword ptr [dword ptr [rip + out_column]],  eax
.label_57:
	cmp	eax, r13d
	jge	.label_84
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_86
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
	jmp	.label_80
.label_86:
	mov	esi, 0x20
	call	__overflow
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	jmp	.label_80
	nop	dword ptr [rax]
.label_84:
	mov	r13d,  dword ptr [dword ptr [rip + in_column]]
	cmp	eax, r13d
	jne	.label_36
	mov	ecx, eax
	mov	r13d, eax
	jmp	.label_42
	nop	word ptr cs:[rax + rax]
.label_36:
	mov	rbp,  qword ptr [word ptr [rip + prefix]]
	jmp	.label_45
.label_55:
	call	__overflow
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	mov	r13d,  dword ptr [dword ptr [rip + in_column]]
	jmp	.label_49
	nop	dword ptr [rax]
.label_45:
	movzx	esi, byte ptr [rbp]
	test	esi, esi
	je	.label_62
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_55
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], sil
.label_49:
	inc	rbp
	inc	eax
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	cmp	eax, r13d
	mov	ecx, r13d
	jne	.label_45
	jmp	.label_42
.label_62:
	mov	ecx, eax
.label_42:
	cmp	r14d, -1
	je	.label_63
	mov	ebp, 0xa
	cmp	r14d, 0xa
	je	.label_39
	movzx	eax,  byte ptr [byte ptr [rip + tabs]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_59
	mov	ebp, r13d
	sar	ebp, 0x1f
	shr	ebp, 0x1d
	add	ebp, r13d
	and	ebp, 0xfffffff8
	lea	eax, [rcx + 1]
	cmp	eax, ebp
	jge	.label_75
	cmp	ecx, ebp
	mov	eax, ecx
	jl	.label_79
	jmp	.label_58
	nop	word ptr cs:[rax + rax]
.label_63:
	mov	eax,  dword ptr [dword ptr [rip + prefix_length]]
	add	eax,  dword ptr [dword ptr [rip + next_prefix_indent]]
	mov	ebp, 0xffffffff
	cmp	r13d, eax
	jl	.label_39
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_93
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_39
.label_59:
	mov	eax, ecx
	jmp	.label_58
.label_46:
	mov	esi, 9
	call	__overflow
	mov	ecx,  dword ptr [dword ptr [rip + out_column]]
	jmp	.label_44
	nop	word ptr cs:[rax + rax]
.label_79:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_46
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 9
.label_44:
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	cmp	eax, ebp
	mov	ecx, eax
	jl	.label_79
	jmp	.label_58
.label_75:
	mov	eax, ecx
	nop	dword ptr [rax]
.label_58:
	cmp	eax, r13d
	jl	.label_41
	mov	ebp, r14d
	jmp	.label_39
.label_88:
	mov	esi, 0x20
	call	__overflow
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	jmp	.label_43
	nop	dword ptr [rax]
.label_41:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_88
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
.label_43:
	inc	eax
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	cmp	eax, r13d
	jl	.label_41
	mov	ebp, r14d
	jmp	.label_39
.label_93:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_39
	nop	word ptr [rax + rax]
.label_38:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_39:
	cmp	ebp, -1
	je	.label_47
	cmp	ebp, 0xa
	je	.label_89
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_92
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bpl
.label_48:
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jb	.label_38
	mov	rdi, rbx
	call	__uflow
	mov	ebp, eax
	jmp	.label_39
.label_92:
	movzx	esi, bpl
	call	__overflow
	jmp	.label_48
	nop	word ptr cs:[rax + rax]
.label_89:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_50
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_53
.label_50:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_53
.label_82:
	mov	dword ptr [dword ptr [rip + prefix_indent]],  eax
	mov	dword ptr [dword ptr [rip + first_indent]],  ecx
	mov	qword ptr [word ptr [rip + wptr]], OFFSET FLAT:parabuf
	mov	qword ptr [word ptr [rip + word_limit]], OFFSET FLAT:unused_word_type
	mov	rdi, rbx
	mov	esi, r14d
	call	get_line
	mov	ecx,  dword ptr [dword ptr [rip + next_prefix_indent]]
	mov	ebp,  dword ptr [dword ptr [rip + prefix_indent]]
	cmp	ecx, ebp
	jne	.label_66
	mov	esi,  dword ptr [dword ptr [rip + prefix_full_length]]
	add	esi, ecx
	cmp	dword ptr [dword ptr [rip + in_column]],  esi
	setge	dil
	cmp	eax, 0xa
	setne	dl
	cmp	eax, -1
	setne	sil
	and	sil, dl
	and	sil, dil
	jmp	.label_74
.label_66:
	xor	esi, esi
.label_74:
	movzx	edx,  byte ptr [byte ptr [rip + split]]
	and	edx, 1
	cmp	edx, 1
	jne	.label_83
	mov	ecx,  dword ptr [dword ptr [rip + first_indent]]
	mov	dword ptr [dword ptr [rip + other_indent]],  ecx
	jmp	.label_40
.label_83:
	mov	dl,  byte ptr [byte ptr [rip + crown]]
	and	dl, 1
	je	.label_90
	test	sil, sil
	mov	edx, OFFSET FLAT:first_indent
	cmovne	rdx, r12
	mov	edx, dword ptr [rdx]
	mov	dword ptr [dword ptr [rip + other_indent]],  edx
	cmp	ecx, ebp
	jne	.label_40
	add	ecx,  dword ptr [dword ptr [rip + prefix_full_length]]
	cmp	dword ptr [dword ptr [rip + in_column]],  ecx
	jl	.label_40
	cmp	eax, -1
	je	.label_40
	cmp	eax, 0xa
	je	.label_40
.label_85:
	mov	rdi, rbx
	mov	esi, eax
	call	get_line
	mov	edx,  dword ptr [dword ptr [rip + next_prefix_indent]]
	cmp	edx,  dword ptr [dword ptr [rip + prefix_indent]]
	jne	.label_40
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	add	edx,  dword ptr [dword ptr [rip + prefix_full_length]]
	cmp	ecx, edx
	jl	.label_40
	cmp	eax, -1
	je	.label_40
	cmp	eax, 0xa
	je	.label_40
	cmp	ecx,  dword ptr [dword ptr [rip + other_indent]]
	je	.label_85
	jmp	.label_40
.label_90:
	movzx	edx,  byte ptr [byte ptr [rip + tagged]]
	and	edx, 1
	cmp	edx, 1
	jne	.label_64
	test	sil, sil
	je	.label_69
	mov	edi,  dword ptr [dword ptr [rip + in_column]]
	mov	esi,  dword ptr [dword ptr [rip + first_indent]]
	cmp	edi, esi
	jne	.label_71
	mov	esi, edi
	jmp	.label_81
.label_64:
	mov	esi,  dword ptr [dword ptr [rip + first_indent]]
	mov	dword ptr [dword ptr [rip + other_indent]],  esi
	jmp	.label_68
.label_69:
	mov	esi,  dword ptr [dword ptr [rip + first_indent]]
.label_81:
	cmp	dword ptr [dword ptr [rip + other_indent]],  esi
	jne	.label_68
	test	esi, esi
	sete	dl
	movzx	edx, dl
	lea	edx, [rdx + rdx*2]
	mov	dword ptr [dword ptr [rip + other_indent]],  edx
	jmp	.label_68
.label_71:
	mov	dword ptr [dword ptr [rip + other_indent]],  edi
.label_68:
	mov	dl,  byte ptr [byte ptr [rip + tagged]]
	and	dl, 1
	je	.label_54
	cmp	ecx, ebp
	jne	.label_40
	mov	edx,  dword ptr [dword ptr [rip + in_column]]
	add	ecx,  dword ptr [dword ptr [rip + prefix_full_length]]
	cmp	edx, ecx
	jl	.label_40
	cmp	eax, -1
	je	.label_40
	cmp	eax, 0xa
	je	.label_40
	cmp	edx, esi
	je	.label_40
.label_78:
	mov	rdi, rbx
	mov	esi, eax
	call	get_line
	mov	edx,  dword ptr [dword ptr [rip + next_prefix_indent]]
	cmp	edx,  dword ptr [dword ptr [rip + prefix_indent]]
	jne	.label_40
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	add	edx,  dword ptr [dword ptr [rip + prefix_full_length]]
	cmp	ecx, edx
	jl	.label_40
	cmp	eax, -1
	je	.label_40
	cmp	eax, 0xa
	je	.label_40
	cmp	ecx,  dword ptr [dword ptr [rip + other_indent]]
	je	.label_78
	jmp	.label_40
.label_54:
	cmp	ecx, ebp
	jne	.label_40
.label_65:
	mov	edx,  dword ptr [dword ptr [rip + in_column]]
	add	ecx,  dword ptr [dword ptr [rip + prefix_full_length]]
	cmp	edx, ecx
	jl	.label_40
	cmp	eax, -1
	je	.label_40
	cmp	eax, 0xa
	je	.label_40
	cmp	edx,  dword ptr [dword ptr [rip + other_indent]]
	jne	.label_40
	mov	rdi, rbx
	mov	esi, eax
	call	get_line
	mov	ecx,  dword ptr [dword ptr [rip + next_prefix_indent]]
	cmp	ecx,  dword ptr [dword ptr [rip + prefix_indent]]
	je	.label_65
.label_40:
	mov	r14,  qword ptr [word ptr [rip + word_limit]]
	cmp	r14, r15
	jbe	.label_70
	or	byte ptr [r14 - 0x18], 0xa
	mov	dword ptr [dword ptr [rip + next_char]],  eax
	call	fmt_paragraph
	mov	esi,  dword ptr [dword ptr [rip + first_indent]]
	mov	edi, OFFSET FLAT:unused_word_type
	call	put_line
	mov	rbp,  qword ptr [word ptr [rip + label_72]]
	jmp	.label_73
	nop	dword ptr [rax]
.label_56:
	mov	esi,  dword ptr [dword ptr [rip + other_indent]]
	mov	rdi, rbp
	call	put_line
	mov	rbp, qword ptr [rbp + 0x20]
.label_73:
	cmp	rbp, r14
	jne	.label_56
	jmp	.label_91
.label_47:
	mov	dword ptr [dword ptr [rip + next_char]],  0xffffffff
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_70:
	mov	edi, OFFSET FLAT:.str.46
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 0x25e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.get_paragraph
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x402320

	.globl get_prefix
	.type get_prefix, @function
get_prefix:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	dword ptr [dword ptr [rip + in_column]],  0
	jmp	.label_104
	nop	word ptr cs:[rax + rax]
.label_106:
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	inc	eax
	mov	dword ptr [dword ptr [rip + in_column]],  eax
.label_104:
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_99
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	eax, byte ptr [rax]
.label_102:
	cmp	eax, 9
	je	.label_105
	cmp	eax, 0x20
	je	.label_106
	jmp	.label_107
	nop	
.label_105:
	mov	byte ptr [byte ptr [rip + tabs]],  1
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [dword ptr [rip + in_column]],  eax
	jmp	.label_104
.label_99:
	mov	rdi, rbx
	call	__uflow
	jmp	.label_102
.label_107:
	cmp	dword ptr [dword ptr [rip + prefix_length]],  0
	je	.label_103
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	dword ptr [dword ptr [rip + next_prefix_indent]],  ecx
	mov	r14,  qword ptr [word ptr [rip + prefix]]
	mov	cl, byte ptr [r14]
	test	cl, cl
	je	.label_98
	inc	r14
	jmp	.label_95
.label_103:
	mov	ecx,  dword ptr [dword ptr [rip + prefix_lead_space]]
	mov	edx,  dword ptr [dword ptr [rip + in_column]]
	cmp	ecx, edx
	cmovle	edx, ecx
	mov	dword ptr [dword ptr [rip + next_prefix_indent]],  edx
	jmp	.label_94
.label_101:
	mov	rdi, rbx
	call	__uflow
	jmp	.label_96
	nop	dword ptr [rax]
.label_95:
	movzx	ecx, cl
	cmp	eax, ecx
	jne	.label_94
	inc	dword ptr [dword ptr [rip + in_column]]
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_101
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	eax, byte ptr [rax]
.label_96:
	mov	cl, byte ptr [r14]
	inc	r14
	test	cl, cl
	jne	.label_95
	jmp	.label_98
	nop	word ptr cs:[rax + rax]
.label_100:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	movzx	eax, byte ptr [rax]
.label_98:
	cmp	eax, 9
	je	.label_108
	cmp	eax, 0x20
	jne	.label_94
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	inc	eax
	jmp	.label_97
	nop	
.label_108:
	mov	byte ptr [byte ptr [rip + tabs]],  1
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
.label_97:
	mov	dword ptr [dword ptr [rip + in_column]],  eax
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, qword ptr [rbx + 0x10]
	jb	.label_100
	mov	rdi, rbx
	call	__uflow
	jmp	.label_98
.label_94:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402490

	.globl fmt_paragraph
	.type fmt_paragraph, @function
fmt_paragraph:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rsi,  qword ptr [word ptr [rip + word_limit]]
	mov	qword ptr [rsi + 0x18], 0
	mov	eax, dword ptr [rsi + 8]
	mov	dword ptr [rsp - 0x14], eax
	mov	edi,  dword ptr [dword ptr [rip + max_width]]
	mov	dword ptr [rsi + 8], edi
	lea	rax, [rsi - 0x28]
	mov	ecx, OFFSET FLAT:unused_word_type
	cmp	rax, rcx
	jb	.label_112
	mov	ecx,  dword ptr [dword ptr [rip + first_indent]]
	mov	dword ptr [rsp - 0xc], ecx
	mov	ecx,  dword ptr [dword ptr [rip + other_indent]]
	mov	dword ptr [rsp - 0x10], ecx
	mov	r11d,  dword ptr [dword ptr [rip + last_line_length]]
	movsxd	r12,  dword ptr [dword ptr [rip + goal_width]]
	xor	r14d, r14d
	mov	ebp, OFFSET FLAT:unused_word_type
	mov	r8, rsi
	nop	dword ptr [rax + rax]
.label_118:
	mov	r13, r8
	mov	r8, rax
	test	r11d, r11d
	setg	dl
	cmp	r8, rbp
	sete	al
	mov	ecx, dword ptr [rsp - 0x10]
	cmove	ecx, dword ptr [rsp - 0xc]
	movsxd	rbp, dword ptr [r13 - 0x20]
	mov	qword ptr [rsp - 8], rbp
	lea	ecx, [rbp + rcx]
	and	al, dl
	mov	rdx, r14
	movabs	r9, 0x7fffffffffffffff
	nop	word ptr [rax + rax]
.label_113:
	test	rdx, rdx
	mov	ebp, 0
	je	.label_109
	movsxd	r10, ecx
	mov	rbp, r12
	sub	rbp, r10
	add	rbp, rbp
	lea	rbp, [rbp + rbp*4]
	imul	rbp, rbp
	cmp	qword ptr [rsi + rdx + 0x20], rsi
	je	.label_109
	movsxd	r15, dword ptr [rsi + rdx + 0x14]
	sub	r10, r15
	add	r10, r10
	lea	rbx, [r10 + r10*4]
	imul	rbx, rbx
	shr	rbx, 1
	add	rbp, rbx
.label_109:
	add	rbp, qword ptr [rsi + rdx + 0x18]
	test	al, al
	je	.label_120
	mov	ebx, ecx
	sub	ebx, r11d
	add	ebx, ebx
	lea	ebx, [rbx + rbx*4]
	movsxd	rbx, ebx
	imul	rbx, rbx
	shr	rbx, 1
	add	rbp, rbx
.label_120:
	cmp	rbp, r9
	jge	.label_115
	lea	rbx, [rsi + rdx]
	mov	qword ptr [r13 - 8], rbx
	mov	dword ptr [r13 - 0x14], ecx
	mov	r9, rbp
.label_115:
	test	rdx, rdx
	je	.label_117
	add	ecx, dword ptr [rsi + rdx - 0x1c]
	add	ecx, dword ptr [rsi + rdx + 8]
	add	rdx, 0x28
	cmp	ecx, edi
	jl	.label_113
.label_117:
	mov	ebp, OFFSET FLAT:unused_word_type
	cmp	r8, rbp
	mov	ecx, 0x1324
	jbe	.label_110
	mov	al, byte ptr [r13 - 0x40]
	test	al, 2
	jne	.label_114
	test	al, 4
	mov	ecx, 0xce4
	jne	.label_110
	mov	eax, OFFSET FLAT:label_116
	cmp	r8, rax
	mov	ecx, 0x1324
	jbe	.label_110
	test	byte ptr [r13 - 0x68], 8
	mov	ecx, 0x1324
	je	.label_110
	movsxd	rcx, dword ptr [r13 - 0x48]
	add	rcx, 2
	mov	eax, 0x9c40
	xor	edx, edx
	idiv	rcx
	mov	rcx, rax
	add	rcx, 0x1324
	jmp	.label_110
	nop	word ptr cs:[rax + rax]
.label_114:
	test	al, 8
	mov	ecx, 0x960
	mov	eax, 0x59164
	cmove	rcx, rax
.label_110:
	mov	al, byte ptr [r13 - 0x18]
	test	al, 1
	jne	.label_119
	test	al, 8
	je	.label_111
	mov	rbx, qword ptr [rsp - 8]
	add	rbx, 2
	mov	eax, 0x57e4
	xor	edx, edx
	idiv	rbx
	add	rcx, rax
	jmp	.label_111
	nop	word ptr cs:[rax + rax]
.label_119:
	add	rcx, -0x640
.label_111:
	add	rcx, r9
	mov	qword ptr [r13 - 0x10], rcx
	lea	rax, [r8 - 0x28]
	add	r14, -0x28
	cmp	rax, rbp
	jae	.label_118
.label_112:
	mov	eax, dword ptr [rsp - 0x14]
	mov	dword ptr [rsi + 8], eax
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
	#Procedure 0x4026b0

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
	mov	ebp, esi
	mov	r15, rdi
	call	__ctype_b_loc
	mov	r14, rax
	mov	qword ptr [rsp + 0x20], r14
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	mov	r12d, OFFSET FLAT:wptr
	jmp	.label_141
.label_133:
	mov	dword ptr [dword ptr [rip + other_indent]],  ecx
	jmp	.label_126
	nop	word ptr [rax + rax]
.label_141:
	mov	rcx,  qword ptr [word ptr [rip + wptr]]
	mov	qword ptr [rax], rcx
	mov	ebx, ebp
	nop	dword ptr [rax]
.label_132:
	mov	rax,  qword ptr [word ptr [rip + wptr]]
	cmp	rax, r12
	jne	.label_121
	movzx	eax,  byte ptr [byte ptr [rip + split]]
	and	eax, 1
	cmp	eax, 1
	je	.label_125
	movzx	eax,  byte ptr [byte ptr [rip + crown]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_129
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	jmp	.label_139
.label_129:
	movzx	eax,  byte ptr [byte ptr [rip + tagged]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_125
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	cmp	eax,  dword ptr [dword ptr [rip + first_indent]]
	jne	.label_139
	cmp	dword ptr [dword ptr [rip + other_indent]],  eax
	jne	.label_142
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	eax, [rax + rax*2]
	jmp	.label_139
	nop	word ptr cs:[rax + rax]
.label_125:
	mov	eax,  dword ptr [dword ptr [rip + first_indent]]
.label_139:
	mov	dword ptr [dword ptr [rip + other_indent]],  eax
.label_142:
	call	flush_paragraph
	mov	rax,  qword ptr [word ptr [rip + wptr]]
.label_121:
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + wptr]],  rcx
	mov	byte ptr [rax], bl
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_123
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_140:
	movsxd	rax, ebx
	mov	rcx, qword ptr [r14]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	mov	ebp, ebx
	je	.label_132
	jmp	.label_138
.label_123:
	mov	rdi, r15
	call	__uflow
	mov	ebx, eax
	mov	ebp, 0xffffffff
	cmp	ebx, -1
	jne	.label_140
	nop	word ptr cs:[rax + rax]
.label_138:
	mov	rcx,  qword ptr [word ptr [rip + wptr]]
	mov	r14,  qword ptr [word ptr [rip + word_limit]]
	mov	qword ptr [rsp + 0x10], r14
	mov	rbx, qword ptr [r14]
	sub	rcx, rbx
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [r14 + 8], ecx
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	add	eax, ecx
	mov	dword ptr [rsp + 0x1c], eax
	mov	dword ptr [dword ptr [rip + in_column]],  eax
	mov	rax, rcx
	shl	rax, 0x20
	movabs	rcx, 0xffffffff00000000
	add	rax, rcx
	sar	rax, 0x20
	lea	r13, [rbx + rax]
	movsx	esi, byte ptr [rbx]
	movzx	eax, byte ptr [rbx + rax]
	mov	qword ptr [rsp], rax
	mov	edi, OFFSET FLAT:.str.48
	mov	edx, 6
	call	memchr
	test	rax, rax
	setne	al
	mov	r12b, byte ptr [r14 + 0x10]
	and	r12b, 0xfe
	or	r12b, al
	mov	byte ptr [r14 + 0x10], r12b
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rsp]
	mov	al, byte ptr [rax + rcx*2]
	and	al, 4
	and	r12b, 0xfb
	or	r12b, al
	mov	byte ptr [r14 + 0x10], r12b
	mov	rax, qword ptr [rsp + 8]
	cmp	eax, 2
	jl	.label_130
	nop	word ptr cs:[rax + rax]
.label_131:
	movsx	esi, byte ptr [r13]
	mov	edi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	memchr
	test	rax, rax
	je	.label_130
	dec	r13
	cmp	rbx, r13
	jb	.label_131
.label_130:
	movsx	rax, byte ptr [r13]
	mov	eax, eax
	cmp	rax, 0x40
	sbb	cl, cl
	movabs	rdx, 0x8000400200000001
	bt	rdx, rax
	sbb	al, al
	and	al, cl
	and	al, 1
	add	al, al
	and	r12b, 0xfd
	or	r12b, al
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + 0x10], r12b
	mov	r14, qword ptr [rsp + 0x20]
	mov	r12d, OFFSET FLAT:wptr
	jmp	.label_135
	nop	word ptr cs:[rax + rax]
.label_150:
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_135:
	cmp	ebp, 9
	je	.label_124
	cmp	ebp, 0x20
	jne	.label_134
	mov	eax,  dword ptr [dword ptr [rip + in_column]]
	inc	eax
	jmp	.label_127
	nop	
.label_124:
	mov	byte ptr [byte ptr [rip + tabs]],  1
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
.label_127:
	mov	dword ptr [dword ptr [rip + in_column]],  eax
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jb	.label_150
	mov	rdi, r15
	call	__uflow
	mov	ebp, eax
	jmp	.label_135
	nop	dword ptr [rax]
.label_134:
	mov	ecx,  dword ptr [dword ptr [rip + in_column]]
	mov	esi, ecx
	sub	esi, dword ptr [rsp + 0x1c]
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
	mov	dword ptr [rax + 0xc], esi
	cmp	ebp, -1
	mov	dl, byte ptr [rax + 0x10]
	je	.label_146
	test	dl, 2
	jne	.label_151
	xor	esi, esi
	jmp	.label_122
	nop	word ptr [rax + rax]
.label_151:
	cmp	ebp, 0xa
	jne	.label_147
.label_146:
	or	dl, 8
	mov	byte ptr [rax + 0x10], dl
	jmp	.label_143
.label_147:
	cmp	esi, 1
	setg	sil
.label_122:
	shl	sil, 3
	and	dl, 0xf7
	or	dl, sil
	mov	byte ptr [rax + 0x10], dl
	cmp	ebp, 0xa
	je	.label_143
	movzx	esi,  byte ptr [byte ptr [rip + uniform]]
	and	esi, 1
	cmp	esi, 1
	jne	.label_136
	nop	word ptr cs:[rax + rax]
.label_143:
	and	dl, 8
	movzx	edx, dl
	shr	edx, 3
	inc	edx
	mov	dword ptr [rax + 0xc], edx
.label_136:
	mov	edx, OFFSET FLAT:label_144
	cmp	rax, rdx
	jne	.label_145
	movzx	eax,  byte ptr [byte ptr [rip + split]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_149
	mov	eax,  dword ptr [dword ptr [rip + first_indent]]
	jmp	.label_128
.label_149:
	movzx	eax,  byte ptr [byte ptr [rip + crown]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_137
	mov	dword ptr [dword ptr [rip + other_indent]],  ecx
	jmp	.label_126
.label_137:
	mov	eax,  dword ptr [dword ptr [rip + first_indent]]
	movzx	edx,  byte ptr [byte ptr [rip + tagged]]
	and	edx, 1
	cmp	edx, 1
	jne	.label_128
	cmp	ecx, eax
	jne	.label_133
	cmp	dword ptr [dword ptr [rip + other_indent]],  ecx
	jne	.label_126
	test	ecx, ecx
	sete	al
	movzx	eax, al
	lea	eax, [rax + rax*2]
	nop	word ptr cs:[rax + rax]
.label_128:
	mov	dword ptr [dword ptr [rip + other_indent]],  eax
.label_126:
	call	flush_paragraph
	mov	rax,  qword ptr [word ptr [rip + word_limit]]
.label_145:
	add	rax, 0x28
	mov	qword ptr [word ptr [rip + word_limit]],  rax
	cmp	ebp, 0xa
	je	.label_148
	cmp	ebp, -1
	jne	.label_141
.label_148:
	mov	rdi, r15
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	get_prefix
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402aa0

	.globl flush_paragraph
	.type flush_paragraph, @function
flush_paragraph:
	push	r15
	push	r14
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + word_limit]]
	mov	eax, OFFSET FLAT:unused_word_type
	cmp	rbx, rax
	je	.label_152
	call	fmt_paragraph
	mov	rsi,  qword ptr [word ptr [rip + label_72]]
	cmp	rsi, rbx
	je	.label_159
	movabs	r8, 0x7ffffffffffffff7
	mov	rcx, qword ptr [rsi + 0x18]
	lea	rdx, [r8 + 8]
	mov	r14, rbx
	nop	dword ptr [rax]
.label_160:
	mov	rdi, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rdi + 0x18]
	sub	rcx, rax
	cmp	rcx, rdx
	cmovl	r14, rsi
	cmovg	rcx, rdx
	lea	rdx, [rcx + 9]
	cmp	rcx, r8
	cmovge	rdx, rcx
	cmp	rdi, rbx
	mov	rcx, rax
	mov	rsi, rdi
	jne	.label_160
	jmp	.label_155
.label_152:
	mov	rdx,  qword ptr [word ptr [rip + wptr]]
	mov	eax, OFFSET FLAT:parabuf
	sub	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:parabuf
	mov	esi, 1
	call	fwrite_unlocked
	mov	qword ptr [word ptr [rip + wptr]], OFFSET FLAT:parabuf
	jmp	.label_157
.label_159:
	mov	r14, rbx
.label_155:
	mov	esi,  dword ptr [dword ptr [rip + first_indent]]
	mov	edi, OFFSET FLAT:unused_word_type
	call	put_line
	mov	rbx,  qword ptr [word ptr [rip + label_72]]
	jmp	.label_158
	nop	
.label_156:
	mov	esi,  dword ptr [dword ptr [rip + other_indent]]
	mov	rdi, rbx
	call	put_line
	mov	rbx, qword ptr [rbx + 0x20]
.label_158:
	cmp	rbx, r14
	jne	.label_156
	mov	rsi, qword ptr [r14]
	mov	rbx,  qword ptr [word ptr [rip + wptr]]
	mov	rdx, rbx
	sub	rdx, rsi
	mov	r15d, OFFSET FLAT:parabuf
	mov	edi, OFFSET FLAT:parabuf
	call	memmove
	mov	eax, dword ptr [r14]
	sub	eax, r15d
	cdqe	
	sub	rbx, rax
	mov	qword ptr [word ptr [rip + wptr]],  rbx
	mov	rbx,  qword ptr [word ptr [rip + word_limit]]
	cmp	r14, rbx
	ja	.label_154
	neg	rax
	mov	rcx, r14
	nop	dword ptr [rax + rax]
.label_153:
	add	qword ptr [rcx], rax
	add	rcx, 0x28
	mov	rbx,  qword ptr [word ptr [rip + word_limit]]
	cmp	rcx, rbx
	jbe	.label_153
.label_154:
	mov	edx, 0x28
	sub	rdx, r14
	add	rdx, rbx
	mov	r15d, OFFSET FLAT:unused_word_type
	mov	edi, OFFSET FLAT:unused_word_type
	mov	rsi, r14
	call	memmove
	sub	r14, r15
	movabs	rcx, 0x9999999999999999
	mov	rax, r14
	imul	rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 4
	add	rdx, rax
	lea	rax, [rdx + rdx*4]
	lea	rax, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + word_limit]],  rax
.label_157:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c30

	.globl put_line
	.type put_line, @function
put_line:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, esi
	mov	r15, rdi
	mov	dword ptr [dword ptr [rip + out_column]],  0
	mov	ebp,  dword ptr [dword ptr [rip + prefix_indent]]
	xor	eax, eax
	movzx	ecx,  byte ptr [byte ptr [rip + tabs]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_177
	xor	ecx, ecx
	cmp	ebp, 8
	jl	.label_178
	mov	ebx, ebp
	sar	ebx, 0x1f
	shr	ebx, 0x1d
	add	ebx, ebp
	and	ebx, 0xfffffff8
	cmp	ebx, 2
	jge	.label_175
	xor	eax, eax
	jmp	.label_177
.label_167:
	mov	esi, 9
	call	__overflow
	mov	ecx,  dword ptr [dword ptr [rip + out_column]]
	jmp	.label_164
	nop	dword ptr [rax]
.label_175:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_167
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 9
.label_164:
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	cmp	eax, ebx
	mov	ecx, eax
	jl	.label_175
	jmp	.label_177
.label_178:
	xor	eax, eax
	jmp	.label_177
	nop	
.label_163:
	inc	eax
	mov	dword ptr [dword ptr [rip + out_column]],  eax
.label_177:
	cmp	eax, ebp
	jge	.label_186
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_187
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
	jmp	.label_163
.label_187:
	mov	esi, 0x20
	call	__overflow
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	jmp	.label_163
.label_186:
	mov	rdi,  qword ptr [word ptr [rip + prefix]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	ecx,  dword ptr [dword ptr [rip + out_column]]
	add	ecx,  dword ptr [dword ptr [rip + prefix_length]]
	mov	dword ptr [dword ptr [rip + out_column]],  ecx
	movzx	eax,  byte ptr [byte ptr [rip + tabs]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_171
	mov	ebp, r14d
	sar	ebp, 0x1f
	shr	ebp, 0x1d
	add	ebp, r14d
	and	ebp, 0xfffffff8
	cmp	ecx, ebp
	jge	.label_180
	lea	eax, [rcx + 1]
	cmp	eax, ebp
	jl	.label_170
	mov	eax, ecx
	jmp	.label_179
.label_171:
	mov	eax, ecx
	jmp	.label_179
.label_161:
	mov	esi, 9
	call	__overflow
	mov	ecx,  dword ptr [dword ptr [rip + out_column]]
	jmp	.label_190
	nop	word ptr cs:[rax + rax]
.label_170:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_161
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 9
.label_190:
	mov	eax, ecx
	sar	eax, 0x1f
	shr	eax, 0x1d
	add	eax, ecx
	and	eax, 0xfffffff8
	add	eax, 8
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	cmp	eax, ebp
	mov	ecx, eax
	jl	.label_170
	jmp	.label_179
.label_180:
	mov	eax, ecx
	jmp	.label_179
	nop	
.label_189:
	inc	eax
	mov	dword ptr [dword ptr [rip + out_column]],  eax
.label_179:
	cmp	eax, r14d
	jge	.label_183
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_184
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
	jmp	.label_189
.label_184:
	mov	esi, 0x20
	call	__overflow
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	jmp	.label_189
.label_183:
	mov	r14, qword ptr [r15 + 0x20]
	add	r14, -0x28
	jmp	.label_193
	nop	word ptr [rax + rax]
.label_173:
	add	r15, 0x28
	mov	eax, ecx
.label_193:
	mov	rbp, qword ptr [r15 + 8]
	xor	ecx, ecx
	test	ebp, ebp
	je	.label_168
	mov	rbx, qword ptr [r15]
	neg	ebp
	jmp	.label_172
.label_192:
	movzx	esi, al
	call	__overflow
	jmp	.label_176
	nop	word ptr cs:[rax + rax]
.label_172:
	mov	al, byte ptr [rbx]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_192
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_176:
	inc	rbx
	inc	ebp
	jne	.label_172
	mov	rbp, qword ptr [r15 + 8]
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	mov	ecx, ebp
.label_168:
	add	eax, ecx
	cmp	r15, r14
	mov	dword ptr [dword ptr [rip + out_column]],  eax
	je	.label_191
	shr	rbp, 0x20
	add	ebp, eax
	movzx	ecx,  byte ptr [byte ptr [rip + tabs]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_162
	mov	ebx, ebp
	sar	ebx, 0x1f
	shr	ebx, 0x1d
	add	ebx, ebp
	and	ebx, 0xfffffff8
	lea	ecx, [rax + 1]
	cmp	ecx, ebx
	jge	.label_166
	cmp	eax, ebx
	mov	ecx, eax
	jl	.label_174
	jmp	.label_169
	nop	word ptr cs:[rax + rax]
.label_162:
	mov	ecx, eax
	jmp	.label_169
.label_181:
	mov	esi, 9
	call	__overflow
	mov	eax,  dword ptr [dword ptr [rip + out_column]]
	jmp	.label_185
	nop	word ptr cs:[rax + rax]
.label_174:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_181
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 9
.label_185:
	mov	ecx, eax
	sar	ecx, 0x1f
	shr	ecx, 0x1d
	add	ecx, eax
	and	ecx, 0xfffffff8
	add	ecx, 8
	mov	dword ptr [dword ptr [rip + out_column]],  ecx
	cmp	ecx, ebx
	mov	eax, ecx
	jl	.label_174
	jmp	.label_169
.label_166:
	mov	ecx, eax
	jmp	.label_169
	nop	
.label_165:
	inc	ecx
	mov	dword ptr [dword ptr [rip + out_column]],  ecx
.label_169:
	cmp	ecx, ebp
	jge	.label_173
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_182
	lea	rdx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rax], 0x20
	jmp	.label_165
.label_182:
	mov	esi, 0x20
	call	__overflow
	mov	ecx,  dword ptr [dword ptr [rip + out_column]]
	jmp	.label_165
.label_191:
	mov	dword ptr [dword ptr [rip + last_line_length]],  eax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_188
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_188:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x402fb0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fc0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fd0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_197
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_196
	cmp	dword ptr [rbp], 0x20
	jne	.label_196
.label_197:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_195
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_196:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_194
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_195:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_194:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403090
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030a0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_198
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_198:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4030c0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_199
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_200
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_200
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_201
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_201:
	mov	rbx, r14
.label_200:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_199:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403170
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
	#Procedure 0x4031b0
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
	#Procedure 0x4031c0
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
	#Procedure 0x4031d0
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
	.align	16
	#Procedure 0x403210
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
	#Procedure 0x403230
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_202
	test	rdx, rdx
	je	.label_202
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_202:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403260
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
	.align	16
	#Procedure 0x4032e0

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
.label_243:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_305
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_307]]
.label_516:
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
.label_517:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_204
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_204
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_227:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_316
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_316:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_227
.label_204:
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
	jmp	.label_241
.label_509:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_241
.label_512:
	mov	al, 1
.label_510:
	mov	r12b, 1
.label_513:
	test	r12b, 1
	mov	cl, 1
	je	.label_261
	mov	cl, al
.label_261:
	mov	al, cl
.label_511:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_265
	test	r10, r10
	je	.label_268
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_237
.label_265:
	xor	ecx, ecx
	jmp	.label_237
.label_514:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_277
	test	r10, r10
	je	.label_283
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_285
.label_515:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_241
.label_268:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_237:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_241
.label_277:
	xor	eax, eax
	jmp	.label_285
.label_283:
	mov	eax, 1
.label_285:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_241:
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
	jmp	.label_314
.label_242:
	inc	rdi
.label_314:
	cmp	rbp, -1
	je	.label_233
	cmp	rdi, rbp
	jne	.label_236
	jmp	.label_238
	nop	word ptr cs:[rax + rax]
.label_233:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_310
.label_236:
	test	r12b, r12b
	je	.label_246
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_248
	cmp	rbp, -1
	jne	.label_248
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
.label_248:
	cmp	rbx, rbp
	jbe	.label_272
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_275
	nop	word ptr [rax + rax]
.label_246:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_275
.label_272:
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
	jne	.label_300
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_275
	jmp	.label_219
.label_300:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_275:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_289
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_321]]
.label_488:
	test	rdi, rdi
	jne	.label_203
	jmp	.label_207
.label_492:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_208
	test	rdi, rdi
	jne	.label_212
	cmp	rbp, 1
	je	.label_207
	xor	r13d, r13d
	jmp	.label_211
.label_481:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_217
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_219
	cmp	r9d, 2
	jne	.label_221
	mov	al, r14b
	and	al, 1
	jne	.label_223
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_226
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_226:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_281
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_281:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_253
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_253:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_250
.label_482:
	mov	bl, 0x62
	jmp	.label_257
.label_483:
	mov	cl, 0x74
	jmp	.label_245
.label_484:
	mov	bl, 0x76
	jmp	.label_257
.label_485:
	mov	bl, 0x66
	jmp	.label_257
.label_486:
	mov	cl, 0x72
	jmp	.label_245
.label_489:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_266
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_269
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
	jae	.label_239
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_239:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_295
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_295:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_256
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_256:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_266:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_211
.label_490:
	cmp	r9d, 5
	je	.label_255
	cmp	r9d, 2
	jne	.label_203
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_203
	jmp	.label_312
.label_491:
	cmp	r9d, 2
	jne	.label_315
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_317
	jmp	.label_323
.label_289:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_325
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
.label_209:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_218
	test	cl, cl
	je	.label_218
	xor	eax, eax
	jmp	.label_211
.label_208:
	test	rdi, rdi
	jne	.label_230
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_230
.label_207:
	mov	dl, 1
.label_487:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_235
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_211
.label_217:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_242
	jmp	.label_203
.label_315:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_245
.label_317:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_249
.label_245:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_251
.label_257:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_211
	jmp	.label_262
.label_325:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_263
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_263:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_205:
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
	je	.label_294
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_298
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_303
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_304
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_313:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_309
	bt	rsi, rdx
	jb	.label_311
.label_309:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_313
.label_304:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_302
	xor	r13d, r13d
.label_302:
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
	je	.label_205
	jmp	.label_209
.label_230:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_211
.label_255:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_203
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_203
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_203
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_224
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_228
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_273
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_301
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_301:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_244
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_244:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_254
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_254:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_299
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_299:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_211
.label_203:
	xor	eax, eax
	xor	r13d, r13d
.label_211:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_280
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_282
	jmp	.label_286
	nop	word ptr [rax + rax]
.label_280:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_286
.label_282:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_290
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_296
	nop	word ptr cs:[rax + rax]
.label_286:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_296:
	mov	bl, r15b
	je	.label_249
	jmp	.label_262
.label_290:
	mov	bl, r15b
.label_262:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_219
	cmp	r9d, 2
	jne	.label_306
	mov	al, r14b
	and	al, 1
	jne	.label_306
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_214
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_214:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_260
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_260:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_320
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_320:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_306:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_210
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_210:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_322
.label_212:
	xor	r13d, r13d
	jmp	.label_211
.label_218:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_220
	nop	word ptr [rax + rax]
.label_213:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_220:
	test	cl, cl
	je	.label_229
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_231
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_234
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_234:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_231
	nop	word ptr [rax + rax]
.label_229:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_219
	cmp	r9d, 2
	jne	.label_216
	mov	al, r14b
	and	al, 1
	jne	.label_216
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_258
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_258:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_318
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_318:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_274
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_274:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_216:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_288
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_288:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_293
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_293:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_276
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_276:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_231:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_249
	test	r14b, 1
	je	.label_206
	mov	bl, al
	and	bl, 1
	jne	.label_206
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_278
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_278:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_327
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_327:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_206:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_213
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_213
	nop	dword ptr [rax]
.label_249:
	test	r14b, 1
	je	.label_225
	and	al, 1
	jne	.label_225
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_232
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_232:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_326
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_326:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_225:
	mov	bl, r15b
.label_322:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_247
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_247:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_242
.label_221:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_250
.label_223:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_250:
	cmp	rcx, r10
	jae	.label_267
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_267:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_271
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_259
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_284
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_287
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_287:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_292
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_292:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_211
.label_271:
	xor	r13d, r13d
	jmp	.label_211
.label_259:
	xor	r13d, r13d
	jmp	.label_211
.label_284:
	xor	r13d, r13d
	jmp	.label_211
.label_298:
	xor	r13d, r13d
.label_294:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_209
.label_303:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_308
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_291:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_324
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_291
	xor	r13d, r13d
	jmp	.label_209
.label_308:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_209
.label_324:
	xor	r13d, r13d
	jmp	.label_209
.label_224:
	xor	r13d, r13d
	jmp	.label_211
.label_228:
	xor	r13d, r13d
	jmp	.label_211
	nop	dword ptr [rax]
.label_238:
	mov	r13, rdi
.label_310:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_215
	or	al, dl
	je	.label_297
.label_215:
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
	je	.label_222
	or	al, dl
	jne	.label_222
	test	r8b, 1
	jne	.label_240
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_222
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_243
.label_222:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_252
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_252
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_252
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_270:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_264
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_264:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_270
.label_252:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_279
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_279
.label_235:
	mov	r9d, 2
	jmp	.label_219
.label_311:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_219
.label_297:
	mov	rbp, r13
	jmp	.label_219
.label_251:
	mov	r9d, 2
.label_219:
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
.label_319:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_279:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_240:
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
	jmp	.label_319
.label_269:
	mov	r9d, 2
	jmp	.label_219
.label_323:
	mov	r9d, 2
	jmp	.label_219
.label_312:
	mov	r9d, 2
	jmp	.label_219
.label_273:
	mov	r9d, 5
	jmp	.label_219
.label_305:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404470
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
	.align	16
	#Procedure 0x404540
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
	je	.label_328
	mov	qword ptr [rax], rbx
.label_328:
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
	.align	16
	#Procedure 0x404640
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_329
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_331:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_331
.label_329:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_332
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_333]], OFFSET FLAT:slot0
.label_332:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_330
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_330:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046e0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4046f0

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
	js	.label_334
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_338
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_335
.label_338:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_337
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
	jne	.label_336
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_336:
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
.label_335:
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
	ja	.label_340
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_339
	mov	rdi, rbx
	call	free
.label_339:
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
.label_340:
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
.label_334:
	call	abort
.label_337:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048c0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048d0
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
	#Procedure 0x4048f0
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
	#Procedure 0x404910
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
	je	.label_341
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
.label_341:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404980
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
	je	.label_342
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
.label_342:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049f0

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
	je	.label_343
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
.label_343:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a60
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
	je	.label_344
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
.label_344:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ad0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_345]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_346]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_347]]
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
	.align	16
	#Procedure 0x404b40
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_345]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_346]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_347]]
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
	.align	16
	#Procedure 0x404bb0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_345]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_346]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_347]]
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
	.align	16
	#Procedure 0x404c10
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_345]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_346]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_347]]
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
	.align	16
	#Procedure 0x404c70

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
	je	.label_348
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
.label_348:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404d20
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_345]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_346]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_347]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_349
	test	rdx, rdx
	je	.label_349
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_349:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404d90
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_345]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_346]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_347]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_350
	test	rdx, rdx
	je	.label_350
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_350:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e00
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_345]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_346]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_347]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_351
	test	rsi, rsi
	je	.label_351
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_351:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404e70
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_345]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_346]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_347]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_352
	test	rsi, rsi
	je	.label_352
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
.label_352:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ee0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ef0
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
	#Procedure 0x404f10
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f30

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
	#Procedure 0x404f50

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
	jne	.label_354
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_356
	cmp	ecx, 0x55
	jne	.label_353
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_353
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_353
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_353
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_353
	cmp	byte ptr [rax + 5], 0
	jne	.label_353
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_354
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_354
.label_356:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_353
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_353
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_353
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_353
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_353
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_353
	cmp	byte ptr [rax + 7], 0
	je	.label_355
.label_353:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_354:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_355:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_354
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_354
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405040

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
	je	.label_357
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_366
.label_357:
	mov	edx, OFFSET FLAT:.str.1_1
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_366:
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
	ja	.label_361
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_363]]
.label_471:
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
.label_361:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_360
.label_472:
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
.label_473:
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
.label_474:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_358
.label_475:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_359
.label_476:
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
	jmp	.label_365
.label_477:
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
.label_365:
	mov	qword ptr [rsp + 0x10], rdi
.label_359:
	mov	qword ptr [rsp + 8], rsi
.label_358:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_362
.label_479:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_360:
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
	jmp	.label_364
.label_478:
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
.label_364:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_362:
	call	__fprintf_chk
.label_470:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405330
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_367:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_367
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405360
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_370:
	cmp	r10d, 0x28
	ja	.label_368
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_369
	nop	word ptr cs:[rax + rax]
.label_368:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_369:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_371
	inc	r9
	cmp	r9, 0xa
	jb	.label_370
.label_371:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4053c0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_372
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_372:
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
.label_374:
	cmp	r8d, 0x28
	ja	.label_373
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_376
	nop	
.label_373:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_376:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_375
	inc	r9
	cmp	r9, 0xa
	jb	.label_374
.label_375:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054c0
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
	mov	esi, OFFSET FLAT:.str.16
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
	.align	16
	#Procedure 0x405540
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_377
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_378
	test	rax, rax
	je	.label_377
.label_378:
	pop	rbx
	ret	
.label_377:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405580

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_379
	test	rax, rax
	je	.label_380
.label_379:
	pop	rbx
	ret	
.label_380:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055a0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_381
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_382
	test	rbx, rbx
	jne	.label_382
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_382:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_383
	test	rax, rax
	je	.label_381
.label_383:
	pop	rbx
	ret	
.label_381:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055f0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_384
	test	rbx, rbx
	jne	.label_384
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_384:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_386
	test	rax, rax
	je	.label_385
.label_386:
	pop	rbx
	ret	
.label_385:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405620
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_387
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_391
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_388
.label_387:
	test	rcx, rcx
	jne	.label_392
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_392:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_389
.label_388:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_390
	test	rbx, rbx
	jne	.label_390
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_390:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_393
	test	rax, rax
	je	.label_391
.label_393:
	pop	rbx
	ret	
.label_391:
	call	xalloc_die
.label_389:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056c0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_394
	test	rax, rax
	je	.label_395
.label_394:
	pop	rbx
	ret	
.label_395:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056e0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_396
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_399
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_400
	call	free
	xor	eax, eax
	jmp	.label_397
.label_396:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_398
	mov	qword ptr [rsi], rbx
.label_400:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_397
	test	rax, rax
	je	.label_398
.label_397:
	pop	rbx
	ret	
.label_398:
	call	xalloc_die
.label_399:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405750
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
	je	.label_402
	test	r14, r14
	je	.label_401
.label_402:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_401:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405790
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_403
	call	rpl_calloc
	test	rax, rax
	je	.label_403
	pop	rcx
	ret	
.label_403:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057c0

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
	je	.label_404
	test	r15, r15
	je	.label_405
.label_404:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_405:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405800
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
	je	.label_407
	test	r15, r15
	je	.label_406
.label_407:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_406:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405850

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_2
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
	.align	16
	#Procedure 0x405880

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, rcx
	mov	r13, rdx
	mov	eax, esi
	mov	r12, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	test	eax, eax
	je	.label_408
	cmp	eax, 1
	je	.label_411
	cmp	eax, 3
	jne	.label_413
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_409
.label_411:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_409
.label_408:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_412
	cmp	rbx, r15
	jbe	.label_414
.label_412:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_410
	mov	dword ptr [rax], 0x4b
	jmp	.label_409
.label_413:
	call	__errno_location
	jmp	.label_409
.label_410:
	mov	dword ptr [rax], 0x22
.label_409:
	mov	ecx, dword ptr [rsp + 0x40]
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r12
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_414:
	mov	rax, rbx
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
	.align	16
	#Procedure 0x405950

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoumax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405980

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
	jae	.label_415
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_434:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_434
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	r13d, 4
	cmp	eax, 0x2d
	je	.label_426
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
	je	.label_421
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_425
	cmp	eax, 0x22
	jne	.label_426
	mov	dword ptr [rsp + 4], 1
.label_425:
	test	r14, r14
	jne	.label_428
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_426
.label_421:
	test	r14, r14
	je	.label_426
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_426
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_426
.label_428:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_419
	mov	r15, rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_423
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_417
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_417
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_417
	movsx	eax, byte ptr [r12 + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_418
	cmp	eax, 0x44
	je	.label_418
	cmp	eax, 0x69
	jne	.label_417
	movzx	eax, byte ptr [r12 + 2]
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_437
	mov	ecx, 1
.label_437:
	mov	esi, 0x400
	jmp	.label_417
.label_419:
	mov	rax, qword ptr [rsp + 8]
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_427
.label_418:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_417:
	cmp	r13d, 0x59
	jg	.label_432
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_433
	jmp	qword ptr [word ptr [+ (rax * 8) + label_435]]
.label_524:
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_436
.label_432:
	cmp	r13d, 0x73
	jg	.label_438
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_440
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_416]]
.label_520:
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_436:
	cmp	rax, 1
	sbb	rax, rax
	not	rax
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_424
.label_433:
	cmp	r13d, 0x54
	je	.label_420
	cmp	r13d, 0x59
	jne	.label_423
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
	jmp	.label_430
.label_438:
	cmp	r13d, 0x74
	je	.label_420
	cmp	r13d, 0x77
	jne	.label_423
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rdx, -1
	cmovns	rdx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_424
.label_521:
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
	jmp	.label_431
.label_522:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	and	eax, 1
	jmp	.label_422
.label_523:
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
	jmp	.label_429
.label_420:
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
	jmp	.label_441
.label_440:
	cmp	r13d, 0x5a
	jne	.label_423
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
.label_430:
	movzx	eax, dl
	and	eax, 1
	jmp	.label_422
.label_423:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	mov	r13d, eax
	jmp	.label_426
.label_525:
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
	jmp	.label_429
.label_526:
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
.label_441:
	or	dl, r10b
.label_431:
	or	dl, bl
.label_429:
	and	dl, 1
	movzx	eax, dl
.label_422:
	mov	rbp, rsi
.label_424:
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	cmp	byte ptr [r12 + rcx], 0
	je	.label_439
	or	eax, 2
.label_439:
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 8]
.label_427:
	mov	qword ptr [rax], rbp
.label_426:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_415:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x406030

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_442
	test	rsi, rsi
	mov	ecx, 1
	je	.label_443
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_443
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_442:
	mov	ecx, 1
.label_443:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406080

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_444
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_446
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_444
.label_446:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_444
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_445
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_445:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_444:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x406100

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_447
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_447
	test	byte ptr [rbx + 1], 1
	je	.label_447
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_447:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406140

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
	jne	.label_448
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_448
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_449
.label_448:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_449:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_450
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_450:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4061b0

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
	je	.label_451
	cmp	r15, -2
	jb	.label_451
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_451
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_451:
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
	#Procedure 0x406210

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
	jne	.label_453
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_452
	test	cl, cl
	jne	.label_452
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_452
.label_453:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_452
	call	__errno_location
	mov	dword ptr [rax], 0
.label_452:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406270

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_455
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_456
	cmp	byte ptr [rax + 1], 0
	je	.label_454
.label_456:
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_455
.label_454:
	xor	ebx, ebx
.label_455:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4062b0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_5
	cmp	byte ptr [rcx], 0
	je	.label_457
	mov	rax, rcx
.label_457:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x4062e0

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