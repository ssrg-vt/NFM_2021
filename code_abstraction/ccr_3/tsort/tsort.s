	.section	.text
	.align	32
	#Procedure 0x4015c0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_9
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
	mov	esi, OFFSET FLAT:label_25
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
	mov	esi, OFFSET FLAT:label_15
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
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_20
	mov	ecx, OFFSET FLAT:label_21
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_11
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_11
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_11:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	mov	ecx, OFFSET FLAT:label_18
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_9:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
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
	#Procedure 0x401780

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_75
	call	setlocale
	mov	edi, OFFSET FLAT:label_81
	mov	esi, OFFSET FLAT:label_82
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_81
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r8, qword ptr [rip + Version]
	sub	rsp, 8
	mov	edx, OFFSET FLAT:label_17
	mov	ecx, OFFSET FLAT:label_20
	mov	r9d, 1
	mov	eax, 0
	mov	edi, ebp
	mov	rsi, rbx
	push	0
	push	OFFSET FLAT:label_90
	push	OFFSET FLAT:usage
	call	parse_gnu_standard_options_only
	add	rsp, 0x20
	movsxd	rax, dword ptr [rip + optind]
	mov	ecx, ebp
	sub	ecx, eax
	cmp	ecx, 2
	jge	.label_27
	mov	r15d, OFFSET FLAT:label_38
	cmp	eax, ebp
	je	.label_39
	mov	r15, qword ptr [rbx + rax*8]
.label_39:
	movzx	eax, byte ptr [r15]
	mov	ebx, 0x2d
	sub	ebx, eax
	jne	.label_41
	movzx	ebx, byte ptr [r15 + 1]
	neg	ebx
.label_41:
	mov	edi, 0x38
	call	xmalloc
	mov	r12, rax
	mov	dword ptr [rsp + 0x1c], ebx
	test	ebx, ebx
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x30], 0
	movups	xmmword ptr [r12 + 0xc], xmm0
	movups	xmmword ptr [r12], xmm0
	je	.label_51
	mov	rdx, qword ptr [rip + stdin]
	mov	esi, OFFSET FLAT:label_89
	mov	rdi, r15
	call	freopen_safer
	test	rax, rax
	je	.label_68
.label_51:
	mov	rdi, qword ptr [rip + stdin]
	mov	esi, 2
	call	fadvise
	lea	rbx, [rsp + 0x38]
	mov	rdi, rbx
	call	init_tokenbuffer
	jmp	.label_105
.label_103:
	inc	qword ptr [r13 + 0x20]
	mov	edi, 0x10
	call	xmalloc
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbp + 0x30]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp + 0x30], rax
	nop	dword ptr [rax]
.label_105:
	xor	eax, eax
.label_86:
	mov	rbp, rax
	mov	rdi, qword ptr [rip + stdin]
	mov	esi, OFFSET FLAT:label_91
	mov	edx, 3
	mov	rcx, rbx
	call	readtoken
	cmp	rax, -1
	je	.label_98
	test	rax, rax
	je	.label_102
	test	r12, r12
	je	.label_26
	mov	qword ptr [rsp + 0x20], rbp
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [r12 + 0x10]
	test	rbp, rbp
	mov	qword ptr [rsp + 0x30], r15
	mov	qword ptr [rsp + 0x28], r12
	je	.label_32
	mov	rsi, qword ptr [rbp]
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	je	.label_44
	mov	qword ptr [rsp + 0x10], rbx
	mov	r14, rbp
	mov	r15, r12
	nop	word ptr [rax + rax]
.label_67:
	lea	r13, [rbp + 8]
	lea	r12, [rbp + 0x10]
	test	eax, eax
	mov	rcx, r12
	cmovs	rcx, r13
	mov	rbx, qword ptr [rcx]
	test	rbx, rbx
	je	.label_95
	cmp	dword ptr [rbx + 0x18], 0
	cmovne	r15, rbp
	cmovne	r14, rbx
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rsp + 0x10]
	call	strcmp
	test	eax, eax
	mov	rbp, rbx
	mov	r13, rbx
	jne	.label_67
	jmp	.label_46
.label_32:
	mov	edi, 0x38
	call	xmalloc
	mov	r13, rax
	test	rbx, rbx
	mov	eax, 0
	je	.label_78
	mov	rdi, rbx
	call	xstrdup
.label_78:
	mov	qword ptr [r13], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 8], xmm0
	mov	dword ptr [r13 + 0x18], 0
	movups	xmmword ptr [r13 + 0x20], xmm0
	mov	qword ptr [r13 + 0x30], 0
	mov	qword ptr [r12 + 0x10], r13
	jmp	.label_46
.label_44:
	mov	r13, rbp
	jmp	.label_46
.label_95:
	mov	ebp, eax
	mov	edi, 0x38
	call	xmalloc
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	mov	eax, 0
	je	.label_99
	call	xstrdup
.label_99:
	mov	qword ptr [rbx], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 8], xmm0
	mov	dword ptr [rbx + 0x18], 0
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	qword ptr [rbx + 0x30], 0
	test	ebp, ebp
	mov	qword ptr [rsp + 8], r15
	js	.label_29
	mov	qword ptr [r12], rbx
	jmp	.label_43
.label_29:
	mov	qword ptr [r13], rbx
.label_43:
	mov	r13, rbx
	mov	r15, r14
	mov	rsi, qword ptr [r15]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, rbp
	call	strcmp
	mov	r14d, eax
	test	r14d, r14d
	je	.label_61
	lea	rax, [r15 + 0x10]
	lea	rcx, [r15 + 8]
	test	r14d, r14d
	cmovs	rax, rcx
	mov	rax, qword ptr [rax]
	mov	r12, rax
	cmp	rax, r13
	je	.label_58
	mov	rbx, r12
	nop	word ptr cs:[rax + rax]
.label_84:
	mov	rsi, qword ptr [rbx]
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_71
	js	.label_63
	mov	dword ptr [rbx + 0x18], 1
	add	rbx, 0x10
	jmp	.label_74
	nop	word ptr cs:[rax + rax]
.label_63:
	mov	dword ptr [rbx + 0x18], 0xffffffff
	add	rbx, 8
.label_74:
	mov	rbx, qword ptr [rbx]
	cmp	rbx, r13
	jne	.label_84
.label_58:
	sar	r14d, 0x1f
	or	r14d, 1
	mov	eax, dword ptr [r15 + 0x18]
	test	eax, eax
	je	.label_73
	mov	ecx, r14d
	neg	ecx
	cmp	eax, ecx
	jne	.label_92
.label_73:
	add	eax, r14d
	mov	dword ptr [r15 + 0x18], eax
	jmp	.label_46
.label_92:
	cmp	dword ptr [r12 + 0x18], r14d
	jne	.label_97
	test	r14d, r14d
	js	.label_94
	mov	rax, qword ptr [r12 + 8]
	mov	qword ptr [r15 + 0x10], rax
	mov	qword ptr [r12 + 8], r15
	jmp	.label_100
.label_97:
	test	r14d, r14d
	js	.label_28
	mov	rax, qword ptr [r12 + 8]
	mov	rdx, qword ptr [rax + 0x10]
	mov	qword ptr [r12 + 8], rdx
	mov	qword ptr [rax + 0x10], r12
	mov	rdx, qword ptr [rax + 8]
	mov	qword ptr [r15 + 0x10], rdx
	mov	qword ptr [rax + 8], r15
	jmp	.label_31
.label_94:
	mov	rax, qword ptr [r12 + 0x10]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [r12 + 0x10], r15
.label_100:
	mov	rcx, qword ptr [rsp + 8]
	mov	dword ptr [r12 + 0x18], 0
	mov	dword ptr [r15 + 0x18], 0
	mov	rax, r12
	jmp	.label_45
.label_28:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	qword ptr [r12 + 0x10], rdx
	mov	qword ptr [rax + 8], r12
	mov	rdx, qword ptr [rax + 0x10]
	mov	qword ptr [r15 + 8], rdx
	mov	qword ptr [rax + 0x10], r15
.label_31:
	mov	dword ptr [r15 + 0x18], 0
	mov	dword ptr [r12 + 0x18], 0
	mov	edx, dword ptr [rax + 0x18]
	cmp	edx, r14d
	jne	.label_85
	mov	dword ptr [r15 + 0x18], ecx
	jmp	.label_72
.label_85:
	cmp	edx, ecx
	jne	.label_72
	mov	dword ptr [r12 + 0x18], r14d
.label_72:
	mov	dword ptr [rax + 0x18], 0
	mov	rcx, qword ptr [rsp + 8]
.label_45:
	cmp	r15, qword ptr [rcx + 0x10]
	je	.label_93
	mov	qword ptr [rcx + 8], rax
	jmp	.label_46
.label_93:
	mov	qword ptr [rcx + 0x10], rax
	nop	word ptr cs:[rax + rax]
.label_46:
	mov	rbp, qword ptr [rsp + 0x20]
	test	rbp, rbp
	mov	rax, r13
	mov	r15, qword ptr [rsp + 0x30]
	mov	r12, qword ptr [rsp + 0x28]
	lea	rbx, [rsp + 0x38]
	je	.label_86
	mov	rdi, qword ptr [rbp]
	mov	rsi, qword ptr [r13]
	call	strcmp
	test	eax, eax
	mov	eax, 0
	je	.label_86
	jmp	.label_103
.label_98:
	test	rbp, rbp
	jne	.label_106
	mov	r14, qword ptr [r12 + 0x10]
	test	r14, r14
	je	.label_30
	mov	esi, OFFSET FLAT:count_items
	mov	rdi, r14
	call	recurse_tree
.label_30:
	xor	ebp, ebp
.label_33:
	test	r14, r14
	mov	rax, qword ptr [rip + n_strings]
	je	.label_40
	nop	word ptr cs:[rax + rax]
.label_101:
	test	rax, rax
	je	.label_36
	mov	esi, OFFSET FLAT:scan_zeros
	mov	rdi, r14
	call	recurse_tree
	mov	rcx, qword ptr [rip + head]
	test	rcx, rcx
	je	.label_54
	nop	word ptr cs:[rax + rax]
.label_62:
	mov	rdi, qword ptr [rcx]
	mov	rbx, qword ptr [rcx + 0x30]
	call	puts
	mov	rcx, qword ptr [rip + head]
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [rip + n_strings]
	dec	rax
	mov	qword ptr [rip + n_strings],  rax
	jmp	.label_66
	nop	dword ptr [rax]
.label_80:
	mov	rbx, qword ptr [rbx + 8]
.label_66:
	test	rbx, rbx
	je	.label_79
	mov	rdx, qword ptr [rbx]
	dec	qword ptr [rdx + 0x20]
	jne	.label_80
	mov	rsi, qword ptr [rip + zeros]
	mov	qword ptr [rsi + 0x28], rdx
	mov	qword ptr [rip + zeros],  rdx
	jmp	.label_80
	nop	word ptr cs:[rax + rax]
.label_79:
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rip + head],  rcx
	test	rcx, rcx
	jne	.label_62
	jmp	.label_49
	nop	word ptr cs:[rax + rax]
.label_54:
	mov	rax, qword ptr [rip + n_strings]
.label_49:
	test	rax, rax
	mov	eax, 0
	je	.label_101
	jmp	.label_69
	nop	word ptr [rax + rax]
.label_40:
	test	rax, rax
	je	.label_36
	mov	rcx, qword ptr [rip + head]
	jmp	.label_37
	nop	word ptr cs:[rax + rax]
.label_64:
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rip + head],  rcx
.label_37:
	test	rcx, rcx
	je	.label_47
	mov	rdi, qword ptr [rcx]
	mov	rbx, qword ptr [rcx + 0x30]
	call	puts
	mov	rcx, qword ptr [rip + head]
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [rip + n_strings]
	dec	rax
	mov	qword ptr [rip + n_strings],  rax
	jmp	.label_52
	nop	dword ptr [rax]
.label_34:
	mov	rbx, qword ptr [rbx + 8]
.label_52:
	test	rbx, rbx
	je	.label_64
	mov	rdx, qword ptr [rbx]
	dec	qword ptr [rdx + 0x20]
	jne	.label_34
	mov	rsi, qword ptr [rip + zeros]
	mov	qword ptr [rsi + 0x28], rdx
	mov	qword ptr [rip + zeros],  rdx
	jmp	.label_34
	nop	word ptr cs:[rax + rax]
.label_47:
	test	rax, rax
	mov	eax, 0
	je	.label_40
.label_69:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	test	r14, r14
	je	.label_53
	nop	word ptr [rax + rax]
.label_35:
	mov	esi, OFFSET FLAT:detect_loop
	mov	rdi, r14
	call	recurse_tree
	mov	ebp, 1
	cmp	qword ptr [rip + loop],  0
	jne	.label_35
	jmp	.label_33
.label_53:
	mov	ebp, 1
	cmp	qword ptr [rip + loop],  0
	je	.label_33
	nop	word ptr cs:[rax + rax]
.label_104:
	jmp	.label_104
.label_36:
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	test	eax, eax
	jne	.label_48
	mov	eax, ebp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_71:
	mov	edi, OFFSET FLAT:label_55
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 0xb6
	mov	ecx, OFFSET FLAT:label_57
	call	__assert_fail
.label_102:
	mov	edi, OFFSET FLAT:label_76
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 0x1cd
	mov	ecx, OFFSET FLAT:label_77
	call	__assert_fail
.label_27:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [rbx + rax*8 + 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
.label_26:
	mov	edi, OFFSET FLAT:label_88
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 0x84
	mov	ecx, OFFSET FLAT:label_57
	call	__assert_fail
.label_106:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_48:
	mov	rbp, r15
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	dword ptr [rsp + 0x1c], 0
	jne	.label_87
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
	mov	edx, 5
	call	dcgettext
	jmp	.label_60
.label_68:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	jmp	.label_50
.label_87:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
.label_50:
	call	quotearg_n_style_colon
.label_60:
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_59
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_61:
	mov	edi, OFFSET FLAT:label_65
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 0xa8
	mov	ecx, OFFSET FLAT:label_57
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x401f90

	.globl count_items
	.type count_items, @function
count_items:
	inc	qword ptr [rip + n_strings]
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fa0

	.globl scan_zeros
	.type scan_zeros, @function
scan_zeros:
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_107
	cmp	qword ptr [rdi], 0
	je	.label_107
	cmp	qword ptr [rip + head],  0
	je	.label_109
	mov	rax, qword ptr [rip + zeros]
	mov	qword ptr [rax + 0x28], rdi
	jmp	.label_108
.label_109:
	mov	qword ptr [rip + head],  rdi
.label_108:
	mov	qword ptr [rip + zeros],  rdi
.label_107:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fe0

	.globl detect_loop
	.type detect_loop, @function
detect_loop:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_110
	mov	r15, qword ptr [rip + loop]
	test	r15, r15
	je	.label_117
	mov	rax, qword ptr [r14 + 0x30]
	test	rax, rax
	je	.label_110
	lea	rbx, [r14 + 0x30]
	nop	dword ptr [rax]
.label_118:
	cmp	qword ptr [rax], r15
	je	.label_116
	mov	rbx, rax
	add	rbx, 8
	mov	rax, qword ptr [rbx]
	test	rax, rax
	jne	.label_118
	jmp	.label_110
.label_116:
	cmp	qword ptr [r14 + 0x28], 0
	je	.label_112
	nop	dword ptr [rax]
.label_111:
	mov	rcx, qword ptr [r15]
	mov	r15, qword ptr [r15 + 0x28]
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_59
	xor	eax, eax
	call	error
	mov	rax, qword ptr [rip + loop]
	cmp	rax, r14
	je	.label_113
	mov	qword ptr [rax + 0x28], 0
	mov	qword ptr [rip + loop],  r15
	test	r15, r15
	mov	al, 1
	jne	.label_111
	jmp	.label_114
.label_112:
	mov	qword ptr [r14 + 0x28], r15
.label_117:
	mov	qword ptr [rip + loop],  r14
.label_110:
	xor	eax, eax
.label_114:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_113:
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rax]
	dec	qword ptr [rcx + 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbx], rax
	mov	al, 1
	test	r14, r14
	je	.label_114
	nop	word ptr cs:[rax + rax]
.label_115:
	mov	rcx, qword ptr [r14 + 0x28]
	mov	qword ptr [r14 + 0x28], 0
	test	rcx, rcx
	mov	r14, rcx
	jne	.label_115
	mov	qword ptr [rip + loop],  0
	jmp	.label_114
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020d0

	.globl recurse_tree
	.type recurse_tree, @function
recurse_tree:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	je	.label_122
	mov	rsi, r14
	call	recurse_tree
	mov	bpl, 1
	test	al, al
	je	.label_121
	jmp	.label_119
.label_122:
	cmp	qword ptr [rbx + 0x10], 0
	je	.label_123
.label_121:
	mov	rdi, rbx
	call	r14
	mov	bpl, 1
	test	al, al
	jne	.label_119
	mov	rdi, qword ptr [rbx + 0x10]
	test	rdi, rdi
	je	.label_120
	mov	rsi, r14
	call	recurse_tree
	test	al, al
	jne	.label_119
.label_120:
	xor	ebp, ebp
	jmp	.label_119
.label_123:
	mov	rdi, rbx
	call	r14
	mov	bpl, al
.label_119:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402140
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402150
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402160

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_129
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_125
	cmp	dword ptr [rbp], 0x20
	jne	.label_125
.label_129:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_127
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_125:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_126
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_59
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_127:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_126:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_128
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
	#Procedure 0x402220
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402230

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_130
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_130:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402250

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
	je	.label_140
	cmp	eax, 1
	je	.label_143
	cmp	eax, 2
	je	.label_144
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_144:
	mov	r15b, r12b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r12b
	jmp	.label_139
.label_140:
	xor	r15d, r15d
	xor	r13d, r13d
	jmp	.label_141
.label_143:
	xor	r15d, r15d
.label_139:
	xor	r13d, r13d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_135
	mov	edi, OFFSET FLAT:label_131
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_135
	mov	r13b, 1
	jmp	.label_133
.label_135:
	test	r12b, r12b
	je	.label_138
	mov	edi, OFFSET FLAT:label_131
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_142
.label_138:
	test	r15b, r15b
	je	.label_141
	mov	edi, OFFSET FLAT:label_131
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 2
	jne	.label_133
.label_141:
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_137
.label_142:
	mov	r12b, 1
.label_133:
	xor	r14d, r14d
	test	eax, eax
	js	.label_137
	mov	edi, eax
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_137:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	r15b, r15b
	je	.label_132
	mov	edi, 2
	call	close
.label_132:
	test	r12b, r12b
	je	.label_136
	mov	edi, 1
	call	close
.label_136:
	test	r13b, r13b
	je	.label_134
	xor	edi, edi
	call	close
.label_134:
	test	r14, r14
	jne	.label_145
	mov	dword ptr [rbx], ebp
.label_145:
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
	#Procedure 0x4023a0
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, r9
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	test	al, al
	je	.label_146
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_146:
	mov	ebp, dword ptr [rip + opterr]
	mov	dword ptr [rip + opterr],  0
	cmp	edi, 2
	jne	.label_148
	mov	edi, 2
	mov	edx, OFFSET FLAT:label_149
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_147
	cmp	eax, 0x76
	jne	.label_148
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x100]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi, qword ptr [rip + stdout]
	lea	r8, [rsp]
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_147:
	xor	edi, edi
	call	rbx
.label_148:
	mov	dword ptr [rip + opterr],  ebp
	mov	dword ptr [rip + optind],  0
	add	rsp, 0xd0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024a0

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xd8
	mov	r14, r8
	mov	r15, rcx
	mov	rbx, rdx
	test	al, al
	je	.label_150
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_150:
	mov	ebp, dword ptr [rip + opterr]
	mov	dword ptr [rip + opterr],  1
	mov	eax, OFFSET FLAT:label_75
	mov	edx, OFFSET FLAT:label_149
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_154
	mov	rcx, qword ptr [rsp + 0x100]
	cmp	eax, 0x68
	je	.label_151
	cmp	eax, 0x76
	je	.label_152
	mov	edi, dword ptr [rip + exit_failure]
	jmp	.label_153
.label_151:
	xor	edi, edi
.label_153:
	call	rcx
.label_154:
	mov	dword ptr [rip + opterr],  ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_152:
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x108]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi, qword ptr [rip + stdout]
	lea	r8, [rsp]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4025a0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_155
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_157
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_159
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_157
	mov	esi, OFFSET FLAT:label_158
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_160
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_160:
	mov	rbx, r14
.label_157:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_155:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_156
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402650
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
	#Procedure 0x402690
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
	#Procedure 0x4026a0
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
	#Procedure 0x4026b0
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
	#Procedure 0x4026f0
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
	#Procedure 0x402710
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_161
	test	rdx, rdx
	je	.label_161
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_161:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402740
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
	#Procedure 0x4027c0

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
	jmp	.label_164
	nop	
.label_211:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_207
	or	al, dl
	jne	.label_207
	test	dil, 1
	jne	.label_209
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_207
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_164
	jmp	.label_207
.label_494:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_219
	test	rbp, rbp
	je	.label_223
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_223:
	mov	r14d, 1
	jmp	.label_226
.label_495:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_227
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_170
.label_219:
	xor	r14d, r14d
.label_226:
	mov	eax, OFFSET FLAT:label_227
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_238
	nop	
.label_164:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_247
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_252]
.label_496:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_261
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_192
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_497:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_201
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_201
	xor	r14d, r14d
	nop	
.label_241:
	cmp	r14, rbp
	jae	.label_222
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_222:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_241
.label_201:
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
	jmp	.label_170
.label_489:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_170
.label_492:
	mov	al, 1
.label_490:
	mov	r12b, 1
.label_493:
	test	r12b, 1
	mov	cl, 1
	je	.label_177
	mov	ecx, eax
.label_177:
	mov	al, cl
.label_491:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_179
	test	rbp, rbp
	je	.label_186
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_186:
	mov	r14d, 1
	jmp	.label_189
.label_179:
	xor	r14d, r14d
.label_189:
	mov	ecx, OFFSET FLAT:label_192
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_238:
	mov	sil, r12b
.label_170:
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
	jmp	.label_199
	nop	word ptr cs:[rax + rax]
.label_168:
	inc	r12
.label_199:
	cmp	r11, -1
	je	.label_234
	cmp	r12, r11
	jne	.label_236
	jmp	.label_237
	nop	word ptr cs:[rax + rax]
.label_234:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_230
.label_236:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_248
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_255
	cmp	r11, -1
	jne	.label_255
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_255:
	cmp	rbx, r11
	jbe	.label_265
.label_248:
	xor	esi, esi
.label_162:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_266
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_270]
.label_518:
	test	r12, r12
	jne	.label_225
	jmp	.label_176
	nop	word ptr cs:[rax + rax]
.label_265:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_281
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_162
	jmp	.label_187
.label_281:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_162
.label_522:
	xor	eax, eax
	cmp	r11, -1
	je	.label_169
	test	r12, r12
	jne	.label_174
	cmp	r11, 1
	je	.label_176
	xor	r13d, r13d
	jmp	.label_188
.label_511:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_181
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_187
	cmp	r8d, 2
	jne	.label_165
	mov	eax, r9d
	and	al, 1
	jne	.label_165
	cmp	r14, rbp
	jae	.label_193
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_193:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_195
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_195:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_257
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_257:
	add	r14, 3
	mov	r9b, 1
.label_165:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_208
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_208:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_210
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_210
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_210
	cmp	r14, rbp
	jae	.label_278
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_278:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_273
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_273:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_188
.label_512:
	mov	bl, 0x62
	jmp	.label_235
.label_513:
	mov	cl, 0x74
	jmp	.label_228
.label_514:
	mov	bl, 0x76
	jmp	.label_235
.label_515:
	mov	bl, 0x66
	jmp	.label_235
.label_516:
	mov	cl, 0x72
	jmp	.label_228
.label_519:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_244
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_194
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
	jae	.label_253
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_253:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_268
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_268:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_272
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_272:
	add	r14, 3
	xor	r9d, r9d
.label_244:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_188
.label_520:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_276
	cmp	r8d, 2
	jne	.label_225
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_225
	jmp	.label_194
.label_521:
	cmp	r8d, 2
	jne	.label_285
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_194
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_287
.label_266:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_163
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_178
.label_169:
	test	r12, r12
	jne	.label_190
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_190
.label_176:
	mov	dl, 1
.label_517:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_194
	xor	eax, eax
	mov	r13b, dl
.label_188:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_200
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_203
	jmp	.label_205
	nop	word ptr cs:[rax + rax]
.label_200:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_205
.label_203:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_233
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_215
	nop	dword ptr [rax]
.label_205:
	test	sil, sil
.label_215:
	mov	ebx, r15d
	je	.label_217
	jmp	.label_221
.label_233:
	mov	ebx, r15d
	jmp	.label_221
.label_181:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_168
	xor	r15d, r15d
	jmp	.label_225
.label_285:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_228
	xor	eax, eax
	mov	r15b, 0x5c
.label_287:
	xor	r13d, r13d
	jmp	.label_217
.label_228:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_194
.label_235:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_188
	nop	
.label_221:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_187
	cmp	r8d, 2
	jne	.label_245
	mov	eax, r9d
	and	al, 1
	jne	.label_245
	cmp	r14, rbp
	jae	.label_250
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_250:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_254
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_254:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_260
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_260:
	add	r14, 3
	mov	r9b, 1
.label_245:
	cmp	r14, rbp
	jae	.label_214
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_214:
	inc	r14
	jmp	.label_259
.label_163:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_271
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_271:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_274
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_202:
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
	je	.label_166
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_171
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_191
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_184
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_246:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_256
	bt	rsi, rdx
	jb	.label_194
.label_256:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_246
.label_184:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_267
	xor	r13d, r13d
.label_267:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_202
	jmp	.label_172
.label_210:
	xor	r13d, r13d
	jmp	.label_188
.label_190:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_188
.label_276:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_225
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_225
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_225
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_232
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_206
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_231
	cmp	r14, rbp
	jae	.label_242
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_242:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_249
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_249:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_212
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_212:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_197
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_197:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_206:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_188
.label_225:
	xor	eax, eax
.label_174:
	xor	r13d, r13d
	jmp	.label_188
.label_274:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_204:
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
	je	.label_282
	cmp	rbp, -1
	je	.label_284
	cmp	rbp, -2
	je	.label_166
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_288
	xor	r13d, r13d
.label_288:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_204
	jmp	.label_172
.label_166:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_182
	lea	rax, [r10 + r12]
.label_173:
	cmp	byte ptr [rax + rsi], 0
	je	.label_182
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_173
.label_182:
	mov	qword ptr [rsp + 0x40], rsi
.label_171:
	xor	r13d, r13d
	jmp	.label_191
.label_284:
	xor	r13d, r13d
.label_282:
	mov	r10, qword ptr [rsp + 0x28]
.label_191:
	mov	r12, qword ptr [rsp + 0x40]
.label_172:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_178:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_198
	test	al, al
	je	.label_198
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_188
.label_198:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_213
	nop	word ptr [rax + rax]
.label_175:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_213:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_220
	test	sil, 1
	je	.label_229
	cmp	r14, rbp
	jae	.label_224
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_224:
	inc	r14
	xor	esi, esi
	jmp	.label_229
	nop	word ptr cs:[rax + rax]
.label_220:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_187
	cmp	r8d, 2
	jne	.label_216
	mov	eax, r9d
	and	al, 1
	jne	.label_216
	cmp	r14, rbp
	jae	.label_240
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_240:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_243
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_243:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_183
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_183:
	add	r14, 3
	mov	r9b, 1
.label_216:
	cmp	r14, rbp
	jae	.label_258
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_258:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_263
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_263:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_269
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_269:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_229:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_217
	test	r9b, 1
	je	.label_277
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_218
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_280
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_280:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_286
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_286:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_277
	nop	word ptr cs:[rax + rax]
.label_218:
	mov	rbx, rcx
.label_277:
	cmp	r14, rbp
	jae	.label_175
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_175
	nop	
.label_217:
	test	r9b, 1
	je	.label_180
	and	al, 1
	jne	.label_180
	cmp	r14, rbp
	jae	.label_185
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_185:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_167
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_167:
	add	r14, 2
	xor	r9d, r9d
.label_180:
	mov	ebx, r15d
.label_259:
	cmp	r14, rbp
	jae	.label_196
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_196:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_168
.label_232:
	xor	r13d, r13d
	jmp	.label_188
	nop	word ptr cs:[rax + rax]
.label_237:
	mov	rcx, r12
.label_230:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_211
	or	al, dl
	jne	.label_211
	mov	r11, rcx
	jmp	.label_187
.label_194:
	mov	eax, 2
.label_283:
	mov	qword ptr [rsp + 0x38], rax
.label_187:
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
.label_275:
	mov	r14, rax
.label_279:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_207:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_251
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_239
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_239
	inc	rdx
	nop	dword ptr [rax + rax]
.label_264:
	cmp	r14, rbp
	jae	.label_262
	mov	byte ptr [rcx + r14], al
.label_262:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_264
	jmp	.label_239
.label_209:
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
	jmp	.label_275
.label_251:
	mov	rcx, qword ptr [rsp + 0x10]
.label_239:
	cmp	r14, rbp
	jae	.label_279
	mov	byte ptr [rcx + r14], 0
	jmp	.label_279
.label_231:
	mov	eax, 5
	jmp	.label_283
.label_247:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4035f0
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
	#Procedure 0x4036c0
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
	je	.label_289
	mov	qword ptr [rax], rbx
.label_289:
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
	#Procedure 0x4037b0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_290
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_292:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_292
.label_290:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_293
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_294], OFFSET FLAT:slot0
.label_293:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_291
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_291:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403850
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x403860

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
	js	.label_295
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_298
	cmp	r12d, 0x7fffffff
	je	.label_300
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
	jne	.label_296
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_296:
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
.label_298:
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
	jbe	.label_301
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_297
.label_301:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_299
	mov	rdi, r14
	call	free
.label_299:
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
.label_297:
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
.label_295:
	call	abort
.label_300:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403a20
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a30
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
	#Procedure 0x403a50
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
	#Procedure 0x403a70
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
	je	.label_302
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
.label_302:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403ae0
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
	je	.label_303
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
.label_303:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b50
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
	je	.label_304
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
.label_304:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403bc0
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
	je	.label_305
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
.label_305:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c30
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_306]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_307]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_308]
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
	#Procedure 0x403ca0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_306]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_307]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_308]
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
	#Procedure 0x403d10

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_306]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_307]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_308]
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
	#Procedure 0x403d70
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_306]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_307]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_308]
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
	#Procedure 0x403dd0

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
	je	.label_309
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
.label_309:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e70
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_306]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_307]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_308]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_310
	test	rdx, rdx
	je	.label_310
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_310:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x403ee0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_306]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_307]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_308]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_311
	test	rdx, rdx
	je	.label_311
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_311:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f50
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_306]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_307]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_308]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_312
	test	rsi, rsi
	je	.label_312
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_312:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403fc0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_306]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_307]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_308]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_313
	test	rsi, rsi
	je	.label_313
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
.label_313:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404030
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404040
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
	#Procedure 0x404060
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404080

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
	#Procedure 0x4040a0

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
	jne	.label_319
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_315
	cmp	ecx, 0x55
	jne	.label_314
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_314
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_314
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_314
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_314
	cmp	byte ptr [rax + 5], 0
	jne	.label_314
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_321
	mov	eax, OFFSET FLAT:label_322
	jmp	.label_318
.label_315:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_314
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_314
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_314
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_314
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_314
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_314
	cmp	byte ptr [rax + 7], 0
	je	.label_320
.label_314:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_227
	mov	eax, OFFSET FLAT:label_192
.label_318:
	cmove	rax, rcx
.label_319:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_320:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_316
	mov	eax, OFFSET FLAT:label_317
	jmp	.label_318
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404170

	.globl init_tokenbuffer
	.type init_tokenbuffer, @function
init_tokenbuffer:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404180

	.globl readtoken
	.type readtoken, @function
readtoken:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 8], rcx
	mov	r15, rdi
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	test	rdx, rdx
	je	.label_323
	mov	eax, edx
	and	eax, 1
	xor	edi, edi
	cmp	rdx, 1
	je	.label_333
	sub	rdx, rax
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_330:
	movzx	ecx, byte ptr [rsi + rdi]
	mov	ebp, 1
	shl	rbp, cl
	shr	rcx, 6
	or	qword ptr [rsp + rcx*8 + 0x10], rbp
	movzx	ecx, byte ptr [rsi + rdi + 1]
	mov	ebp, 1
	shl	rbp, cl
	shr	rcx, 6
	or	qword ptr [rsp + rcx*8 + 0x10], rbp
	add	rdi, 2
	cmp	rdx, rdi
	jne	.label_330
.label_333:
	test	rax, rax
	je	.label_323
	movzx	ecx, byte ptr [rsi + rdi]
	mov	eax, 1
	shl	rax, cl
	shr	rcx, 6
	or	qword ptr [rsp + rcx*8 + 0x10], rax
	nop	
.label_323:
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_329
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_324:
	movsxd	rax, ebx
	shr	rax, 6
	mov	rax, qword ptr [rsp + rax*8 + 0x10]
	bt	rax, rbx
	jb	.label_323
	jmp	.label_336
.label_329:
	mov	rdi, r15
	call	__uflow
	mov	ebx, eax
	mov	rax, -1
	test	ebx, ebx
	jns	.label_324
	jmp	.label_327
.label_336:
	mov	rax, qword ptr [rsp + 8]
	mov	r13, qword ptr [rax]
	mov	r12, qword ptr [rax + 8]
	xor	ecx, ecx
	xor	ebp, ebp
	jmp	.label_328
	nop	word ptr cs:[rax + rax]
.label_332:
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebx, byte ptr [rax]
	xor	ecx, ecx
.label_328:
	mov	r14, rbp
	cmp	r14, r13
	jne	.label_337
	test	r12, r12
	je	.label_325
	movabs	rax, 0x5555555555555554
	cmp	r14, rax
	jae	.label_326
	mov	rbp, rcx
	mov	r13, r14
	shr	r13, 1
	inc	r13
	add	r13, r14
	jmp	.label_335
.label_325:
	mov	rbp, rcx
	test	r14, r14
	mov	r13, r14
	mov	eax, 0x80
	cmove	r13, rax
	test	r13, r13
	js	.label_334
.label_335:
	mov	rdi, r12
	mov	rsi, r13
	call	xrealloc
	mov	r12, rax
	mov	rcx, rbp
.label_337:
	test	cl, 1
	jne	.label_331
	movsxd	rax, ebx
	shr	rax, 6
	mov	rax, qword ptr [rsp + rax*8 + 0x10]
	bt	rax, rbx
	jb	.label_331
	lea	rbp, [r14 + 1]
	mov	byte ptr [r12 + r14], bl
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jb	.label_332
	mov	rdi, r15
	call	__uflow
	mov	ebx, eax
	mov	ecx, ebx
	shr	ecx, 0x1f
	test	ebx, ebx
	jns	.label_328
	mov	rax, -1
	cmp	r14, -1
	jne	.label_328
	jmp	.label_327
.label_331:
	mov	byte ptr [r12 + r14], 0
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + 8], r12
	mov	qword ptr [rax], r13
	mov	rax, r14
.label_327:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_326:
	call	xalloc_die
.label_334:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x404360
	.globl readtokens
	.type readtokens, @function
readtokens:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x28], r8
	mov	rbx, rcx
	mov	qword ptr [rsp + 0x48], rdx
	mov	qword ptr [rsp + 0x40], rdi
	test	rsi, rsi
	lea	rax, [rsi + 1]
	mov	ebp, 0x40
	cmovne	rbp, rax
	mov	rax, rbp
	shr	rax, 0x3c
	jne	.label_338
	lea	r14, [rbp*8]
	mov	rdi, r14
	call	xmalloc
	mov	qword ptr [rsp], rax
	mov	rdi, r14
	call	xmalloc
	mov	qword ptr [rsp + 8], rax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x38], rbx
	jmp	.label_347
	nop	word ptr cs:[rax + rax]
.label_341:
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + r14*8], r12
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, r13
	mov	rdx, rbx
	call	memcpy
	mov	qword ptr [rbp + r14*8], r13
	inc	r14
	mov	rbx, r15
	mov	rbp, qword ptr [rsp + 0x50]
.label_347:
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, rbx
	lea	rcx, [rsp + 0x10]
	call	readtoken
	cmp	r14, rbp
	jb	.label_343
	mov	r15, rax
	cmp	qword ptr [rsp], 0
	je	.label_344
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rbp, rax
	jae	.label_338
	mov	rax, rbp
	shr	rax, 1
	lea	rcx, [rbp + rax]
	lea	rbp, [rbp + rax + 1]
	lea	r13, [rcx*8 + 8]
	mov	rdi, qword ptr [rsp]
	mov	rsi, r13
	call	xrealloc
	mov	qword ptr [rsp], rax
	movabs	rax, 0xfffffffffffffff
	cmp	rbp, rax
	jbe	.label_345
	jmp	.label_338
.label_344:
	test	rbp, rbp
	mov	eax, 0x10
	cmove	rbp, rax
	movabs	rax, 0xfffffffffffffff
	cmp	rbp, rax
	ja	.label_339
	lea	r13, [rbp*8]
	mov	rdi, qword ptr [rsp]
	mov	rsi, r13
	call	xrealloc
	mov	qword ptr [rsp], rax
.label_345:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	call	xrealloc
	mov	qword ptr [rsp + 8], rax
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rax, r15
.label_343:
	cmp	rax, -1
	je	.label_340
	mov	qword ptr [rsp + 0x50], rbp
	mov	r15, rbx
	mov	rbp, qword ptr [rsp]
	mov	rbx, rax
	inc	rbx
	mov	r12, rax
	jns	.label_341
.label_338:
	call	xalloc_die
.label_340:
	mov	rbp, qword ptr [rsp]
	mov	qword ptr [rbp + r14*8], 0
	mov	rbx, qword ptr [rsp + 8]
	mov	qword ptr [rbx + r14*8], 0
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], rbp
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	je	.label_342
	mov	qword ptr [rax], rbx
	jmp	.label_346
.label_342:
	mov	rdi, rbx
	call	free
.label_346:
	mov	rax, r14
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_339:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404560

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
	je	.label_360
	mov	edx, OFFSET FLAT:label_351
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_357
.label_360:
	mov	edx, OFFSET FLAT:label_358
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_357:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_362
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
	mov	esi, OFFSET FLAT:label_359
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_363
	jmp	qword ptr [(r12 * 8) + label_364]
.label_500:
	add	rsp, 8
	jmp	.label_350
.label_363:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_354
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
	jmp	.label_350
.label_501:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_349
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
.label_502:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_355
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
.label_503:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_352
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
.label_504:
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
	xor	eax, eax
	mov	rdi, r14
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_350
.label_505:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_365
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
	jmp	.label_350
.label_506:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_348
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
	jmp	.label_350
.label_507:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_353
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
	jmp	.label_350
.label_509:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_356
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
	jmp	.label_350
.label_508:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_361
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
.label_350:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048c0
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
	.align	32
	#Procedure 0x4048f0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_378
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_380
.label_378:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_380:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_368
	cmp	r10d, 0x29
	jae	.label_377
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_379
.label_377:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_379:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_368
	cmp	r10d, 0x29
	jae	.label_375
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_376
.label_375:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_376:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_368
	cmp	r10d, 0x29
	jae	.label_373
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_374
.label_373:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_374:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_368
	cmp	r10d, 0x29
	jae	.label_371
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_372
.label_371:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_372:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_368
	cmp	r10d, 0x29
	jae	.label_369
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_370
.label_369:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_370:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_368
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_368
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_368
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_368
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_368:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ae0
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xd8
	test	al, al
	je	.label_381
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_381:
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
	#Procedure 0x404b70
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_382
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_383
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_385
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_20
	mov	ecx, OFFSET FLAT:label_21
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_384
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bf0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_386
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_387
	test	rax, rax
	je	.label_386
.label_387:
	pop	rbx
	ret	
.label_386:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c30

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_388
	test	rax, rax
	je	.label_389
.label_388:
	pop	rbx
	ret	
.label_389:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c50
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_390
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_391
	test	rbx, rbx
	jne	.label_391
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_391:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_392
	test	rax, rax
	je	.label_390
.label_392:
	pop	rbx
	ret	
.label_390:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ca0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_393
	test	rbx, rbx
	jne	.label_393
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_393:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_395
	test	rax, rax
	je	.label_394
.label_395:
	pop	rbx
	ret	
.label_394:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404cd0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_400
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_398
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_396
.label_400:
	test	rcx, rcx
	jne	.label_402
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_402:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_397
.label_396:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_399
	test	rbx, rbx
	jne	.label_399
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_399:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_401
	test	rax, rax
	je	.label_398
.label_401:
	pop	rbx
	ret	
.label_398:
	call	xalloc_die
.label_397:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d70
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_403
	test	rax, rax
	je	.label_404
.label_403:
	pop	rbx
	ret	
.label_404:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d90
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_407
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_409
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_406
	call	free
	xor	eax, eax
	jmp	.label_408
.label_407:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_405
	mov	qword ptr [rsi], rbx
.label_406:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_408
	test	rax, rax
	je	.label_405
.label_408:
	pop	rbx
	ret	
.label_405:
	call	xalloc_die
.label_409:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e00
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
	je	.label_411
	test	r14, r14
	je	.label_410
.label_411:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_410:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e40
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_412
	call	rpl_calloc
	test	rax, rax
	je	.label_412
	pop	rcx
	ret	
.label_412:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e70

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
	je	.label_413
	test	r15, r15
	je	.label_414
.label_413:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_414:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404eb0

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
	je	.label_416
	test	r15, r15
	je	.label_415
.label_416:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_415:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f00

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_417
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_59
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404f30

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_418
	test	rsi, rsi
	mov	ecx, 1
	je	.label_419
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_419
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_418:
	mov	ecx, 1
.label_419:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f80

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_420
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_421
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_420
.label_421:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_420
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_422
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_422:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_420:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405000

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_423
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_423
	test	byte ptr [rbx + 1], 1
	je	.label_423
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_423:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405040

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
	je	.label_424
	test	rbx, rbx
	je	.label_424
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_424
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_424
	mov	edi, OFFSET FLAT:label_131
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_425
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_424
.label_425:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	freopen
.label_424:
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
	#Procedure 0x4050e0

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
	jne	.label_426
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_426
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_427
.label_426:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_427:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_428
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_428:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405150

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
	je	.label_429
	cmp	r15, -2
	jb	.label_429
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_429
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_429:
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
	#Procedure 0x4051b0

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
	jne	.label_431
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_430
	test	cl, cl
	jne	.label_430
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_430
.label_431:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_430
	call	__errno_location
	mov	dword ptr [rax], 0
.label_430:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405210

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_433
	cmp	byte ptr [rax], 0x43
	jne	.label_435
	cmp	byte ptr [rax + 1], 0
	je	.label_432
.label_435:
	mov	esi, OFFSET FLAT:label_434
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_433
.label_432:
	xor	ebx, ebx
.label_433:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405250

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_75
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_436
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x405280

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
