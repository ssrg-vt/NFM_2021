	.section	.text
	.align	16
	#Procedure 0x4015b0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_20
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
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
	mov	esi, OFFSET FLAT:label_16
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
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_23
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_14
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_14
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_14:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_11
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_11
	mov	ecx, OFFSET FLAT:label_12
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_20:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
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
	#Procedure 0x401770

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12d, edi
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_54
	call	setlocale
	mov	edi, OFFSET FLAT:label_58
	mov	esi, OFFSET FLAT:label_59
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_58
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r13d, 1
	xor	ebx, ebx
	xor	r15d, r15d
	jmp	.label_35
.label_683:
	mov	r15, qword ptr [rip + optarg]
	nop	word ptr cs:[rax + rax]
.label_35:
	mov	edx, OFFSET FLAT:label_39
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, qword ptr [rsp + 0x10]
	call	getopt_long
	cmp	eax, 0x4b
	jle	.label_75
	add	eax, -0x4c
	cmp	eax, 0x35
	ja	.label_28
	jmp	qword ptr [(rax * 8) + label_30]
.label_675:
	or	r13d, 4
	mov	byte ptr [rip + logical],  1
	jmp	.label_35
.label_676:
	and	r13d, 0xfffffffb
	mov	byte ptr [rip + logical],  0
	jmp	.label_35
.label_677:
	and	r13d, 0xfffffffc
	jmp	.label_35
.label_678:
	and	r13d, 0xfffffffc
	or	r13d, 2
	jmp	.label_35
.label_679:
	mov	byte ptr [rip + verbose],  1
	jmp	.label_35
.label_680:
	or	r13d, 4
	mov	byte ptr [rip + logical],  0
	jmp	.label_35
.label_681:
	mov	byte ptr [rip + use_nuls],  1
	jmp	.label_35
.label_682:
	mov	rbx, qword ptr [rip + optarg]
	jmp	.label_35
.label_75:
	cmp	eax, -1
	jne	.label_46
	cmp	dword ptr [rip + optind],  r12d
	jge	.label_48
	test	r15, r15
	mov	rbp, r15
	cmove	rbp, rbx
	test	rbx, rbx
	cmovne	rbp, rbx
	mov	r14d, r13d
	and	r14d, 3
	test	rbp, rbp
	je	.label_52
	mov	rdi, rbp
	mov	esi, r13d
	call	canonicalize_filename_mode
	mov	rbx, rax
	cmp	byte ptr [rip + logical],  1
	jne	.label_60
	test	rbx, rbx
	je	.label_60
	mov	esi, r13d
	and	esi, 0xfffffffb
	mov	rdi, rbx
	call	canonicalize_filename_mode
	mov	qword ptr [rsp + 8], rax
	mov	rdi, rbx
	call	free
	mov	rbx, qword ptr [rsp + 8]
.label_60:
	mov	qword ptr [rip + can_relative_to],  rbx
	test	rbx, rbx
	je	.label_70
	test	r14d, r14d
	jne	.label_52
	mov	rdi, rbx
	call	isdir
	test	al, al
	je	.label_74
.label_52:
	cmp	r15, rbp
	je	.label_76
	test	r15, r15
	je	.label_27
	mov	rdi, r15
	mov	esi, r13d
	call	canonicalize_filename_mode
	mov	rbp, rax
	cmp	byte ptr [rip + logical],  1
	jne	.label_32
	test	rbp, rbp
	je	.label_32
	mov	esi, r13d
	and	esi, 0xfffffffb
	mov	rdi, rbp
	call	canonicalize_filename_mode
	mov	rbx, rax
	mov	rdi, rbp
	call	free
	mov	rbp, rbx
.label_32:
	test	rbp, rbp
	je	.label_40
	test	r14d, r14d
	jne	.label_69
	mov	rdi, rbp
	call	isdir
	test	al, al
	je	.label_44
.label_69:
	mov	rax, qword ptr [rip + can_relative_to]
	inc	rax
	mov	cl, byte ptr [rbp + 1]
	test	cl, cl
	je	.label_47
	cmp	cl, 0x2f
	jne	.label_50
	mov	cl, 0x2f
	cmp	byte ptr [rbp + 2], 0
	je	.label_51
.label_50:
	lea	rdx, [rbp + 2]
	nop	word ptr cs:[rax + rax]
.label_57:
	movzx	ebx, byte ptr [rax]
	test	bl, bl
	je	.label_55
	cmp	cl, bl
	jne	.label_55
	inc	rax
	movzx	ecx, byte ptr [rdx]
	inc	rdx
	test	cl, cl
	jne	.label_57
	jmp	.label_62
.label_76:
	mov	rax, qword ptr [rip + can_relative_to]
	mov	qword ptr [rip + can_relative_base],  rax
	jmp	.label_27
.label_47:
	cmp	byte ptr [rax], 0x2f
	jne	.label_64
	jmp	.label_65
.label_55:
	test	cl, cl
	jne	.label_65
.label_62:
	mov	al, byte ptr [rax]
	test	al, al
	je	.label_64
	cmp	al, 0x2f
	je	.label_64
	jmp	.label_65
.label_51:
	cmp	byte ptr [rax], 0x2f
	jne	.label_65
.label_64:
	mov	qword ptr [rip + can_relative_base],  rbp
	jmp	.label_27
.label_65:
	mov	rdi, rbp
	call	free
	mov	rax, qword ptr [rip + can_relative_to]
	mov	qword ptr [rip + can_relative_base],  rax
	mov	qword ptr [rip + can_relative_to],  0
.label_27:
	mov	eax, dword ptr [rip + optind]
	mov	r14b, 1
	cmp	eax, r12d
	jge	.label_26
	mov	ecx, r13d
	and	ecx, 0xfffffffb
	mov	dword ptr [rsp + 8], ecx
	mov	r14b, 1
	jmp	.label_31
.label_45:
	call	__overflow
	jmp	.label_38
	nop	dword ptr [rax + rax]
.label_31:
	cdqe	
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rcx + rax*8]
	mov	rdi, rbx
	mov	esi, r13d
	call	canonicalize_filename_mode
	mov	rbp, rax
	cmp	byte ptr [rip + logical],  1
	jne	.label_41
	test	rbp, rbp
	je	.label_41
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 8]
	call	canonicalize_filename_mode
	mov	r15, rax
	mov	rdi, rbp
	call	free
	mov	rbp, r15
.label_41:
	test	rbp, rbp
	je	.label_49
	mov	rsi, qword ptr [rip + can_relative_to]
	test	rsi, rsi
	je	.label_37
	mov	rcx, qword ptr [rip + can_relative_base]
	test	rcx, rcx
	je	.label_36
	lea	rax, [rbp + 1]
	mov	dl, byte ptr [rcx + 1]
	test	dl, dl
	je	.label_56
	cmp	dl, 0x2f
	jne	.label_67
	mov	dl, 0x2f
	cmp	byte ptr [rcx + 2], 0
	je	.label_61
.label_67:
	add	rcx, 2
	nop	word ptr cs:[rax + rax]
.label_66:
	movzx	ebx, byte ptr [rax]
	test	bl, bl
	je	.label_63
	cmp	dl, bl
	jne	.label_63
	inc	rax
	movzx	edx, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_66
	jmp	.label_71
	nop	word ptr [rax + rax]
.label_49:
	mov	al, byte ptr [rip + verbose]
	test	al, al
	je	.label_72
	xor	ebp, ebp
	jmp	.label_34
.label_72:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_29
	xor	eax, eax
	mov	esi, r15d
	call	error
	jmp	.label_34
.label_56:
	cmp	byte ptr [rax], 0x2f
	jne	.label_36
	jmp	.label_37
.label_63:
	test	dl, dl
	jne	.label_37
.label_71:
	mov	al, byte ptr [rax]
	test	al, al
	je	.label_36
	cmp	al, 0x2f
	je	.label_36
	jmp	.label_37
.label_61:
	cmp	byte ptr [rax], 0x2f
	jne	.label_37
	nop	dword ptr [rax]
.label_36:
	xor	edx, edx
	xor	ecx, ecx
	mov	rdi, rbp
	call	relpath
	test	al, al
	jne	.label_42
.label_37:
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbp
	call	fputs_unlocked
.label_42:
	mov	al, byte ptr [rip + use_nuls]
	test	al, al
	mov	esi, 0xa
	mov	eax, 0
	cmovne	esi, eax
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_45
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_38:
	mov	rdi, rbp
	call	free
	mov	bpl, 1
.label_34:
	and	r14b, bpl
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, r12d
	jl	.label_31
.label_26:
	movzx	eax, r14b
	xor	eax, 1
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_46:
	cmp	eax, 0xffffff7d
	je	.label_68
	cmp	eax, 0xffffff7e
	jne	.label_28
	xor	edi, edi
	call	usage
.label_68:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_11
	mov	edx, OFFSET FLAT:label_24
	mov	r8d, OFFSET FLAT:label_73
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_28:
	mov	edi, 1
	call	usage
.label_48:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
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
.label_70:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	jmp	.label_43
.label_40:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
.label_43:
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_29
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_74:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	jmp	.label_53
.label_44:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
.label_53:
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	esi, 0x14
	mov	edx, OFFSET FLAT:label_29
	xor	eax, eax
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401cc0

	.globl isdir
	.type isdir, @function
isdir:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, rbx
	call	__xstat
	test	eax, eax
	jne	.label_78
	mov	eax, dword ptr [rsp + 0x18]
	and	eax, 0xf000
	cmp	eax, 0x4000
	sete	al
	add	rsp, 0x90
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_78:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x401d40

	.globl relpath
	.type relpath, @function
relpath:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	cmp	byte ptr [rsi + 1], 0x2f
	sete	al
	cmp	byte ptr [rdi + 1], 0x2f
	mov	r14, rcx
	mov	r12, rdx
	sete	cl
	xor	ebx, ebx
	xor	cl, al
	jne	.label_83
	mov	dl, byte ptr [rsi]
	test	dl, dl
	mov	rcx, rdi
	mov	eax, 0
	je	.label_103
	xor	ecx, ecx
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_82:
	movzx	ebx, byte ptr [rdi + rcx]
	test	bl, bl
	je	.label_79
	cmp	dl, bl
	jne	.label_79
	lea	rbx, [rcx + 1]
	cmp	dl, 0x2f
	cmove	eax, ebx
	movzx	edx, byte ptr [rsi + rcx + 1]
	test	dl, dl
	mov	rcx, rbx
	jne	.label_82
	mov	rcx, rbx
	add	rcx, rdi
.label_103:
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_87
	cmp	cl, 0x2f
	je	.label_87
	jmp	.label_89
.label_79:
	cmp	dl, 0x2f
	jne	.label_89
	test	bl, bl
	jne	.label_89
	mov	ebx, ecx
.label_87:
	mov	eax, ebx
.label_89:
	test	eax, eax
	je	.label_93
	cdqe	
	lea	rcx, [rdi + rax]
	cmp	byte ptr [rsi + rax], 0x2f
	lea	rdx, [rsi + rax + 1]
	lea	rbx, [rsi + rax]
	cmove	rbx, rdx
	cmp	byte ptr [rdi + rax], 0x2f
	lea	r15, [rdi + rax + 1]
	cmovne	r15, rcx
	cmp	byte ptr [rbx], 0
	je	.label_95
	test	r12, r12
	je	.label_105
	mov	bpl, 1
	cmp	r14, 3
	jb	.label_104
	mov	byte ptr [r12 + 2], 0
	mov	word ptr [r12], 0x2e2e
	add	r12, 2
	add	r14, -2
	jmp	.label_109
.label_93:
	xor	ebx, ebx
	jmp	.label_83
.label_95:
	cmp	byte ptr [r15], 0
	mov	ebx, OFFSET FLAT:label_84
	cmovne	rbx, r15
	test	r12, r12
	je	.label_85
	mov	rdi, rbx
	call	strlen
	cmp	rax, r14
	jae	.label_91
	inc	rax
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, rax
	call	memcpy
	jmp	.label_100
.label_105:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_102
	call	fputs_unlocked
	xor	r12d, r12d
.label_109:
	xor	ebp, ebp
	jmp	.label_104
.label_90:
	inc	rbx
.label_104:
	movzx	eax, byte ptr [rbx]
	cmp	al, 0x2f
	je	.label_106
	test	al, al
	jne	.label_90
	jmp	.label_107
.label_106:
	test	r12, r12
	je	.label_80
	mov	al, 1
	cmp	r14, 4
	jb	.label_81
	mov	dword ptr [r12], 0x2e2e2f
	add	r12, 3
	add	r14, -3
	jmp	.label_98
.label_80:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_86
	call	fputs_unlocked
	xor	r12d, r12d
.label_98:
	xor	eax, eax
.label_81:
	and	bpl, 1
	or	bpl, al
	jmp	.label_90
.label_107:
	cmp	byte ptr [r15], 0
	je	.label_94
	test	r12, r12
	je	.label_96
	mov	bl, 1
	cmp	r14, 1
	jbe	.label_97
	mov	word ptr [r12], 0x2f
	inc	r12
	dec	r14
	and	bpl, 1
	jmp	.label_101
.label_85:
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbx
	call	fputs_unlocked
.label_100:
	mov	bl, 1
	jmp	.label_83
.label_96:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_92
	call	fputs_unlocked
	and	bpl, 1
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, r15
	call	fputs_unlocked
	jmp	.label_108
.label_97:
	mov	bpl, 1
.label_101:
	mov	rdi, r15
	call	strlen
	cmp	rax, r14
	jae	.label_88
	inc	rax
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rax
	call	memcpy
.label_108:
	xor	ebx, ebx
.label_88:
	or	bpl, bl
.label_94:
	mov	bl, 1
	test	bpl, 1
	je	.label_83
.label_91:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0
	mov	esi, 0x24
	mov	edx, OFFSET FLAT:label_29
	xor	eax, eax
	call	error
.label_83:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401f90

	.globl canonicalize_filename_mode
	.type canonicalize_filename_mode, @function
canonicalize_filename_mode:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	r14d, esi
	mov	r13, rdi
	mov	ebx, r14d
	and	ebx, 3
	lea	eax, [r14 + 3]
	test	eax, ebx
	jne	.label_152
	test	r13, r13
	je	.label_152
	mov	al, byte ptr [r13]
	cmp	al, 0x2f
	je	.label_159
	test	al, al
	jne	.label_161
	call	__errno_location
	mov	dword ptr [rax], 2
	jmp	.label_165
.label_152:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_165:
	xor	ebp, ebp
.label_121:
	mov	rax, rbp
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_159:
	mov	edi, 0x1000
	call	xmalloc
	mov	rdi, rax
	mov	byte ptr [rdi], 0x2f
	lea	r8, [rdi + 0x1000]
	lea	rbp, [rdi + 1]
	jmp	.label_135
.label_161:
	call	xgetcwd
	xor	ebp, ebp
	test	rax, rax
	je	.label_121
	xor	esi, esi
	mov	rbp, rax
	mov	rdi, rbp
	call	__rawmemchr
	mov	rdi, rbp
	mov	r8, rax
	mov	rbp, r8
	sub	rbp, rdi
	cmp	rbp, 0xfff
	jg	.label_126
	mov	esi, 0x1000
	call	xrealloc
	mov	rdi, rax
	add	rbp, rdi
	mov	r8, rdi
	add	r8, 0x1000
	jmp	.label_135
.label_126:
	mov	rbp, r8
.label_135:
	mov	al, byte ptr [r13]
	xor	r15d, r15d
	test	al, al
	je	.label_142
	mov	ecx, r14d
	and	ecx, 4
	mov	dword ptr [rsp + 0x58], ecx
	mov	ecx, r14d
	and	ecx, 7
	mov	dword ptr [rsp + 0x5c], ecx
	xor	ecx, ecx
	mov	dword ptr [rsp + 0x34], ebx
	cmp	ebx, 2
	setne	cl
	lea	ecx, [rcx + rcx*8 + 4]
	mov	dword ptr [rsp + 0x54], ecx
	xor	r15d, r15d
	and	r14b, 3
	mov	qword ptr [rsp + 0x60], r14
	mov	qword ptr [rsp + 0x38], r13
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x20], rcx
	mov	dword ptr [rsp + 0xc], ecx
	xor	ebx, ebx
.label_116:
	mov	qword ptr [rsp + 0x10], r15
.label_166:
	lea	rcx, [rdi + 1]
	mov	r12, rbp
.label_150:
	mov	edx, eax
	nop	word ptr cs:[rax + rax]
.label_136:
	cmp	dl, 0x2f
	mov	r14, r13
	lea	rsi, [r13 + 1]
	jne	.label_167
	nop	dword ptr [rax]
.label_137:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	dl, 0x2f
	je	.label_137
	lea	r14, [rsi - 1]
.label_167:
	mov	eax, edx
	mov	r13, r14
	jmp	.label_117
	nop	word ptr cs:[rax + rax]
.label_115:
	movzx	eax, byte ptr [r13 + 1]
	inc	r13
.label_117:
	test	al, al
	je	.label_114
	cmp	al, 0x2f
	jne	.label_115
.label_114:
	mov	r15, r13
	sub	r15, r14
	cmp	r15, 1
	je	.label_118
	cmp	r15, 2
	jne	.label_122
	cmp	dl, 0x2e
	mov	r15d, 2
	jne	.label_124
	cmp	byte ptr [rsi], 0x2e
	mov	r15d, 2
	jne	.label_124
	cmp	r12, rcx
	jbe	.label_129
	jmp	.label_132
	nop	
.label_118:
	cmp	byte ptr [r14], 0x2e
	mov	r15d, 1
	jne	.label_124
.label_129:
	mov	dl, byte ptr [r13]
	test	dl, dl
	jne	.label_136
	jmp	.label_140
.label_132:
	dec	r12
	mov	rdx, r12
	nop	word ptr cs:[rax + rax]
.label_147:
	mov	r12, rdx
	cmp	r12, rdi
	jbe	.label_146
	lea	rdx, [r12 - 1]
	cmp	byte ptr [r12 - 1], 0x2f
	jne	.label_147
.label_146:
	test	al, al
	jne	.label_150
	jmp	.label_140
.label_122:
	test	r15, r15
	je	.label_140
.label_124:
	cmp	byte ptr [r12 - 1], 0x2f
	je	.label_154
	mov	byte ptr [r12], 0x2f
	inc	r12
.label_154:
	lea	rax, [r12 + r15]
	cmp	rax, r8
	jae	.label_156
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x18], rdi
	jmp	.label_130
.label_156:
	sub	r12, rdi
	sub	r8, rdi
	lea	rbp, [r15 + 1]
	cmp	r15, 0xfff
	mov	eax, 0x1000
	cmovle	rbp, rax
	add	rbp, r8
	mov	rsi, rbp
	call	xrealloc
	add	rbp, rax
	mov	qword ptr [rsp + 0x18], rax
	add	r12, rax
	mov	qword ptr [rsp + 0x28], rbp
.label_130:
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	lea	rbp, [r12 + r15]
	mov	byte ptr [r12 + r15], 0
	cmp	dword ptr [rsp + 0x5c], 6
	jne	.label_111
	mov	dword ptr [rsp + 0x80], 0
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x28]
	lea	r14, [rsp + 0x68]
	jmp	.label_120
.label_111:
	cmp	dword ptr [rsp + 0x58], 0
	lea	r14, [rsp + 0x68]
	mov	edi, 1
	jne	.label_128
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, r14
	call	__lxstat
	jmp	.label_138
.label_128:
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, r14
	call	__xstat
.label_138:
	test	eax, eax
	je	.label_145
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0xc], eax
	mov	rax, qword ptr [rsp + 0x60]
	cmp	al, 1
	je	.label_143
	test	al, al
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x28]
	je	.label_148
	mov	dword ptr [rsp + 0x80], 0
	xor	eax, eax
	jmp	.label_120
.label_145:
	mov	eax, dword ptr [rsp + 0x80]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x28]
.label_120:
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_157
	mov	qword ptr [rsp + 0x48], rbp
	test	rbx, rbx
	jne	.label_160
	mov	edi, 7
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare_ino_str
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	rbx, rax
	test	rbx, rbx
	je	.label_169
.label_160:
	mov	rdi, rbx
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	mov	rdx, r14
	call	seen_file
	test	al, al
	je	.label_113
	cmp	dword ptr [rsp + 0x34], 2
	mov	eax, dword ptr [rsp + 0xc]
	mov	ecx, 0x28
	cmovne	eax, ecx
	mov	dword ptr [rsp + 0xc], eax
	mov	eax, dword ptr [rsp + 0x54]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x48]
	jmp	.label_112
.label_113:
	mov	qword ptr [rsp + 0x40], rbx
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	record_file
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdi, qword ptr [rsp + 0x18]
	call	areadlink_with_size
	mov	r14, rax
	test	r14, r14
	jne	.label_139
	call	__errno_location
	cmp	dword ptr [rsp + 0x34], 2
	mov	rbp, qword ptr [rsp + 0x48]
	jne	.label_144
	cmp	dword ptr [rax], 0xc
	je	.label_144
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x40]
	jmp	.label_134
.label_143:
	mov	rax, r13
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x28]
	nop	
.label_155:
	movzx	ecx, byte ptr [rax]
	inc	rax
	cmp	cl, 0x2f
	je	.label_155
	xor	eax, eax
	test	cl, cl
	setne	al
	cmp	dword ptr [rsp + 0xc], 2
	lea	eax, [rax + rax*8 + 4]
	mov	ecx, 0xd
	cmovne	eax, ecx
.label_112:
	and	al, 0xf
	cmp	al, 4
	jne	.label_162
.label_134:
	mov	al, byte ptr [r13]
	test	al, al
	jne	.label_166
	jmp	.label_170
.label_157:
	movzx	eax, ax
	cmp	eax, 0x4000
	je	.label_168
	cmp	dword ptr [rsp + 0x34], 2
	je	.label_168
	mov	cl, byte ptr [r13]
	mov	eax, 0x14
	test	cl, cl
	jne	.label_171
.label_168:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, rax
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_110
.label_139:
	mov	rdi, r14
	call	strlen
	mov	rbx, rax
	mov	rdi, r13
	call	strlen
	mov	rdx, rax
	lea	rcx, [rbx + rdx + 1]
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	mov	rbp, qword ptr [rsp + 0x48]
	je	.label_125
	cmp	rcx, rax
	jbe	.label_131
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	mov	rsi, rcx
	mov	qword ptr [rsp + 0x10], rdx
	call	xrealloc
	jmp	.label_119
.label_125:
	cmp	rcx, 0x1000
	mov	eax, 0x1000
	cmovbe	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	rdi, rcx
	mov	qword ptr [rsp + 0x10], rdx
	call	xmalloc
.label_119:
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_149
.label_131:
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp + 0x10]
.label_149:
	mov	qword ptr [rsp + 0x38], rbx
	mov	rdi, rbx
	add	rdi, rax
	inc	rdx
	mov	rsi, r13
	mov	r13, rax
	call	memmove
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcpy
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rax, [rcx + 1]
	cmp	byte ptr [r14], 0x2f
	jne	.label_158
	mov	byte ptr [rcx], 0x2f
	mov	rbp, rax
	jmp	.label_164
.label_158:
	cmp	rbp, rax
	jbe	.label_164
	lea	rax, [r12 + r15 - 1]
.label_153:
	mov	rbp, rax
	cmp	rbp, rcx
	jbe	.label_164
	lea	rax, [rbp - 1]
	cmp	byte ptr [rbp - 1], 0x2f
	jne	.label_153
.label_164:
	mov	rdi, r14
	call	free
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r15, r13
	mov	qword ptr [rsp + 0x38], r13
	mov	r8, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x20]
.label_110:
	mov	al, byte ptr [r13]
	test	al, al
	mov	qword ptr [rsp + 0x20], rcx
	jne	.label_116
	jmp	.label_123
.label_140:
	mov	rbp, r12
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_123
.label_142:
	xor	ebx, ebx
.label_123:
	lea	rax, [rdi + 1]
	cmp	rbp, rax
	jbe	.label_127
	lea	rax, [rbp - 1]
	cmp	byte ptr [rbp - 1], 0x2f
	cmove	rbp, rax
.label_127:
	mov	byte ptr [rbp], 0
	lea	rax, [rbp + 1]
	cmp	r8, rax
	je	.label_133
	mov	esi, 1
	sub	rsi, rdi
	add	rsi, rbp
	call	xrealloc
	mov	rbp, rax
	jmp	.label_141
.label_133:
	mov	rbp, rdi
.label_141:
	mov	rdi, r15
	call	free
	test	rbx, rbx
	je	.label_121
	mov	rdi, rbx
	call	hash_free
	jmp	.label_121
.label_170:
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_123
.label_144:
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0xc], eax
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 0x40]
	jmp	.label_151
.label_162:
	cmp	al, 0xd
	jne	.label_121
	jmp	.label_151
.label_148:
	mov	eax, dword ptr [rsp + 0xc]
.label_171:
	mov	dword ptr [rsp + 0xc], eax
.label_151:
	mov	rbp, rdi
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	je	.label_163
	mov	rdi, rbx
	call	hash_free
.label_163:
	call	__errno_location
	mov	ecx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax], ecx
	jmp	.label_165
.label_169:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025f0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402600
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402610

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_177
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_174
	cmp	dword ptr [rbp], 0x20
	jne	.label_174
.label_177:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_173
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_174:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_175
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_172
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_29
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_173:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_172:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_176
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
	#Procedure 0x4026d0

	.globl record_file
	.type record_file, @function
record_file:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	test	r14, r14
	je	.label_178
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [r15]
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	mov	rsi, rbx
	call	hash_insert
	test	rax, rax
	je	.label_179
	cmp	rax, rbx
	je	.label_178
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_178:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_179:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402750

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_180
	sub	rsp, 0x18
	mov	qword ptr [rsp], rsi
	mov	rax, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rdx]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsp]
	call	hash_lookup
	test	rax, rax
	setne	al
	add	rsp, 0x18
	ret	
.label_180:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402790
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027a0
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027b0
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027c0
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_181
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_188
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_183:
	cmp	qword ptr [rcx], 0
	je	.label_182
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_187:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_187
	cmp	rdi, rax
	cmova	rax, rdi
.label_182:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_184
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_185:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_185
	cmp	rdi, rax
	cmova	rax, rdi
.label_184:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_183
.label_188:
	test	r8, r8
	je	.label_181
	cmp	qword ptr [rcx], 0
	je	.label_181
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_186:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_186
	cmp	rdx, rax
	cmova	rax, rdx
.label_181:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402880
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_189
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_193
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_199:
	cmp	qword ptr [rax], 0
	je	.label_190
	mov	rdx, rax
	nop	dword ptr [rax]
.label_192:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_192
	inc	r10
.label_190:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_194
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_197:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_197
	inc	r10
.label_194:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_199
	jmp	.label_191
.label_193:
	xor	r10d, r10d
.label_191:
	test	r8, r8
	je	.label_189
	cmp	qword ptr [rax], 0
	je	.label_189
	nop	dword ptr [rax]
.label_195:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_195
	inc	r10
.label_189:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_196
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_198
.label_196:
	xor	eax, eax
.label_198:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402940
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
	mov	rdi, qword ptr [rdi + 8]
	xor	ebx, ebx
	cmp	rax, rdi
	jae	.label_200
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_204
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_203:
	cmp	qword ptr [rax], 0
	je	.label_211
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_205:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_205
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_211:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_212
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_213:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_213
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_212:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_203
.label_204:
	test	r8, r8
	je	.label_200
	cmp	qword ptr [rax], 0
	je	.label_200
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_201:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_201
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_200:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_202
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_214
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_207]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_208]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_209]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_210
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_206
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	nop	
	.section	.text
	.align	16
	#Procedure 0x402ab0

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
	jae	.label_218
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_215
	add	rbx, rax
	je	.label_215
	cmp	rsi, r12
	je	.label_217
	xor	r15d, r15d
	nop	
.label_216:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_219
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_215
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_216
.label_217:
	mov	r15, r12
	jmp	.label_215
.label_219:
	mov	r15, qword ptr [rbx]
.label_215:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_218:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b30
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_220
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_223
	nop	word ptr cs:[rax + rax]
.label_222:
	add	rcx, 0x10
.label_223:
	cmp	rcx, rdx
	jae	.label_221
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_222
.label_220:
	ret	
.label_221:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b70
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
	jae	.label_227
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_228:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_224
	test	rdx, rdx
	jne	.label_228
	jmp	.label_225
.label_224:
	test	rdx, rdx
	je	.label_225
	mov	rax, qword ptr [rdx]
	jmp	.label_226
.label_225:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_229:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_226
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_229
.label_226:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_227:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c00
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_230
	xor	eax, eax
.label_232:
	cmp	qword ptr [r9], 0
	je	.label_231
	test	r9, r9
	je	.label_231
	mov	r8, r9
	nop	
.label_233:
	cmp	rax, rdx
	jae	.label_230
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_233
	mov	r8, qword ptr [rdi + 8]
.label_231:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_232
.label_230:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c50
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
	cmp	r13, rax
	jae	.label_237
	xor	ebx, ebx
.label_236:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_238
	test	r13, r13
	je	.label_238
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_237
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_235:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_234
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_235
	jmp	.label_237
	nop	dword ptr [rax]
.label_234:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_238:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_236
.label_237:
	mov	rax, rbx
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
	#Procedure 0x402cf0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_239
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_240:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	movzx	eax, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_240
.label_239:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d30
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_241]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d50

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
	je	.label_244
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_249
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_254]
	jbe	.label_243
	movss	xmm1, dword ptr [rip + label_257]
	ucomiss	xmm1, xmm0
	jbe	.label_243
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_248]
	jbe	.label_243
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_243
	addss	xmm1, dword ptr [rip + label_254]
	ucomiss	xmm0, xmm1
	jbe	.label_243
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_242]
	ucomiss	xmm2, xmm0
	jb	.label_243
	ucomiss	xmm0, xmm1
	jbe	.label_243
.label_249:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_256
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_253
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_255
.label_253:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_255:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_246]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_247]
	jae	.label_243
.label_256:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_245
	nop	
.label_250:
	add	rbx, 2
.label_245:
	cmp	rbx, -1
	je	.label_243
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_252
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_251:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_252
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_251
.label_252:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_250
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_243
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_243
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_243
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
	jmp	.label_244
.label_243:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_244:
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
	#Procedure 0x402f70

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
	.align	16
	#Procedure 0x402f80

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f90
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_260
	nop	word ptr cs:[rax + rax]
.label_263:
	add	r14, 0x10
.label_260:
	cmp	r14, rax
	jae	.label_262
	cmp	qword ptr [r14], 0
	je	.label_263
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_264
	nop	word ptr cs:[rax + rax]
.label_259:
	test	cl, 1
	je	.label_258
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_258:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_259
.label_264:
	test	cl, cl
	je	.label_261
	mov	rdi, qword ptr [r14]
	call	rax
.label_261:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_263
.label_262:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403040

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_265
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_265
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_271
	nop	
.label_269:
	add	r15, 0x10
.label_271:
	cmp	r15, rax
	jae	.label_265
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_269
	test	r15, r15
	je	.label_269
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_275
.label_268:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_275:
	test	rbx, rbx
	jne	.label_268
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_269
.label_265:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_266
	nop	
.label_270:
	add	r15, 0x10
.label_266:
	cmp	r15, rax
	jae	.label_274
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_270
	nop	word ptr cs:[rax + rax]
.label_267:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_267
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_270
.label_274:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_272
.label_273:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_273
.label_272:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403110

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
	jne	.label_282
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_287
	cvtsi2ss	xmm0, rsi
	jmp	.label_292
.label_287:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_292:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_246]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_247]
	jae	.label_278
.label_282:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_277
	nop	dword ptr [rax + rax]
.label_289:
	add	rbx, 2
.label_277:
	cmp	rbx, -1
	je	.label_278
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_286
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_285:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_286
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_285
.label_286:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_289
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_278
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_279
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_278
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
	je	.label_294
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_279
.label_294:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_288
	nop	
.label_280:
	add	r12, 0x10
.label_288:
	cmp	r12, r15
	jae	.label_276
	cmp	qword ptr [r12], 0
	je	.label_280
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_283
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_281:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_293
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_290
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_284
	nop	word ptr [rax + rax]
.label_290:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_284:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_281
.label_283:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_280
.label_276:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_291
	mov	rdi, qword ptr [rsp]
	call	free
.label_278:
	xor	ebp, ebp
.label_279:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_293:
	call	abort
.label_291:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033a0

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
	jae	.label_303
	nop	word ptr cs:[rax + rax]
.label_300:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_299
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_304
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_297:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_307
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_302
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_301
	nop	dword ptr [rax]
.label_302:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_301:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_297
	mov	r13, qword ptr [r14]
.label_304:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_299
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_305
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_308
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_298
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_296
.label_308:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_295
.label_298:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_306
.label_296:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_295:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_299:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_300
	mov	al, 1
.label_303:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_306:
	xor	eax, eax
	jmp	.label_303
.label_307:
	call	abort
.label_305:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403510

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
	je	.label_317
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_317
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_326
	cmp	rsi, r14
	je	.label_330
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_320
	mov	rax, qword ptr [r12]
.label_329:
	test	rax, rax
	jne	.label_336
	jmp	.label_326
.label_330:
	mov	rax, r14
.label_336:
	xor	ebp, ebp
	test	r15, r15
	je	.label_311
	mov	qword ptr [r15], rax
	jmp	.label_311
.label_320:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_326
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_325:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_319
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_323
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_325
.label_326:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_327
	cvtsi2ss	xmm1, rax
	jmp	.label_332
.label_327:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_332:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_338
	cvtsi2ss	xmm0, rcx
	jmp	.label_314
.label_338:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_314:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_312
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_322
	ucomiss	xmm2, dword ptr [rip + label_254]
	jbe	.label_324
	movss	xmm3, dword ptr [rip + label_257]
	ucomiss	xmm3, xmm2
	jbe	.label_324
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_248]
	jbe	.label_324
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_324
	addss	xmm3, dword ptr [rip + label_254]
	ucomiss	xmm2, xmm3
	jbe	.label_324
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_242]
	ucomiss	xmm5, xmm4
	jb	.label_324
	ucomiss	xmm4, xmm3
	ja	.label_313
.label_324:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_315]
	jmp	.label_313
.label_322:
	mov	eax, OFFSET FLAT:default_tuning
.label_313:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_312
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_337
	mulss	xmm0, xmm2
.label_337:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_247]
	jae	.label_311
	movss	xmm1, dword ptr [rip + label_246]
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
	je	.label_311
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_317
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_312
	cmp	rsi, r14
	mov	rax, r14
	je	.label_321
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_328
	mov	rax, qword ptr [r12]
.label_321:
	test	rax, rax
	jne	.label_331
.label_312:
	cmp	qword ptr [r12], 0
	je	.label_333
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_335
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_339
.label_333:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_309]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_310
.label_335:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_311
.label_339:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_310:
	mov	ebp, 1
.label_311:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_319:
	mov	rax, r14
	jmp	.label_329
.label_323:
	mov	rax, qword ptr [rbp]
	jmp	.label_329
.label_328:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_312
	lea	rbp, [rbx + rbp + 8]
.label_318:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_334
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_316
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_318
	jmp	.label_312
.label_334:
	mov	rax, r14
	jmp	.label_321
.label_316:
	mov	rax, qword ptr [rbp]
	jmp	.label_321
.label_317:
	call	abort
.label_331:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403850

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
	je	.label_340
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_340:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403880
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
	jae	.label_346
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_341
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_354
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_356
	mov	r14, qword ptr [r13]
.label_354:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_359
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_355
.label_356:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_341
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_351:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_347
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_350
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_351
	jmp	.label_341
.label_359:
	mov	qword ptr [r13], 0
	jmp	.label_355
.label_347:
	mov	rcx, rax
	jmp	.label_358
.label_350:
	mov	r14, qword ptr [rcx]
.label_358:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_355:
	xor	r12d, r12d
	test	r14, r14
	je	.label_341
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_343
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_345
	cvtsi2ss	xmm1, rax
	jmp	.label_349
.label_345:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_349:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_352
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_357
.label_352:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_357:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_343
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_361
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_254]
	jbe	.label_344
	movss	xmm4, dword ptr [rip + label_257]
	ucomiss	xmm4, xmm3
	jbe	.label_344
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_344
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_248]
	jbe	.label_344
	movss	xmm4, dword ptr [rip + label_254]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_344
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_242]
	ucomiss	xmm5, xmm3
	jb	.label_344
	ucomiss	xmm3, xmm4
	ja	.label_353
.label_344:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_353
.label_361:
	mov	eax, OFFSET FLAT:default_tuning
.label_353:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_343
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_342
	mulss	xmm0, dword ptr [rax + 8]
.label_342:
	movss	xmm1, dword ptr [rip + label_246]
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
	jne	.label_343
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_348
	nop	word ptr cs:[rax + rax]
.label_360:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_360
.label_348:
	mov	qword ptr [r15 + 0x48], 0
.label_343:
	mov	r12, r14
.label_341:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_346:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b20

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	hash_pjw
	xor	rax, qword ptr [rbx + 8]
	xor	edx, edx
	div	r14
	mov	rax, rdx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b50
	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:

	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b60
	.globl triple_compare
	.type triple_compare, @function
triple_compare:

	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_362
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_363
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_362:
	xor	eax, eax
	ret	
.label_363:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b90

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_364
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_365
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_364:
	xor	eax, eax
	ret	
.label_365:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403bc0

	.globl triple_free
	.type triple_free, @function
triple_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403be0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_366
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_368
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_370
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_368
	mov	esi, OFFSET FLAT:label_369
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_371
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_371:
	mov	rbx, r14
.label_368:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_366:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_367
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c90
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
	#Procedure 0x403cd0
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
	#Procedure 0x403ce0
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
	#Procedure 0x403cf0
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
	#Procedure 0x403d30
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
	#Procedure 0x403d50
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_372
	test	rdx, rdx
	je	.label_372
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_372:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d80
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
	#Procedure 0x403e00

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rsp + 0x100]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rsp + 0xf8]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xa8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x90], eax
	mov	dword ptr [rsp + 0x18], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x8c], ebx
	mov	r10b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_424:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_421
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_400]
.label_663:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_431
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_437
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_664:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_449
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_449
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_460:
	cmp	r14, r11
	jae	.label_470
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_470:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_460
.label_449:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x48], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 7]
	mov	r9d, dword ptr [rsp + 0x50]
	jmp	.label_381
.label_656:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_381
.label_659:
	mov	al, 1
.label_657:
	mov	r12b, 1
.label_660:
	test	r12b, 1
	mov	cl, 1
	je	.label_477
	mov	ecx, eax
.label_477:
	mov	al, cl
.label_658:
	test	r12b, 1
	jne	.label_479
	test	r11, r11
	je	.label_403
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_403:
	mov	r14d, 1
	jmp	.label_483
.label_479:
	xor	r14d, r14d
.label_483:
	mov	ecx, OFFSET FLAT:label_437
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_381
.label_661:
	test	r12b, 1
	jne	.label_492
	test	r11, r11
	je	.label_494
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_494:
	mov	r14d, 1
	jmp	.label_375
.label_662:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_380
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_381
.label_492:
	xor	r14d, r14d
.label_375:
	mov	eax, OFFSET FLAT:label_380
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_381:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2a]
	mov	edx, r15d
	mov	byte ptr [rsp + 0x17], cl
	and	dl, cl
	cmp	qword ptr [rsp + 0x40], 0
	setne	cl
	mov	ebx, ecx
	mov	byte ptr [rsp + 0x2e], dl
	and	bl, dl
	mov	byte ptr [rsp + 0x2f], bl
	mov	edx, esi
	and	dl, 1
	sete	bl
	and	al, dl
	mov	byte ptr [rsp + 0x2b], al
	mov	byte ptr [rsp + 6], dl
	and	r12b, dl
	mov	byte ptr [rsp + 0x2d], r12b
	or	bl, r15b
	mov	byte ptr [rsp + 0x1f], bl
	mov	byte ptr [rsp + 0x2c], r13b
	mov	qword ptr [rsp + 0xb0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x29], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_402
	nop	dword ptr [rax]
.label_417:
	inc	rsi
.label_402:
	cmp	rbp, -1
	je	.label_441
	cmp	rsi, rbp
	jne	.label_443
	jmp	.label_444
	nop	word ptr cs:[rax + rax]
.label_441:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_450
.label_443:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_452
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_454
	cmp	rbp, -1
	jne	.label_454
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x38]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_454:
	cmp	rbx, rbp
	jbe	.label_466
.label_452:
	xor	r8d, r8d
.label_376:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_467
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_472]
.label_699:
	test	rsi, rsi
	jne	.label_426
	jmp	.label_395
	nop	word ptr cs:[rax + rax]
.label_466:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_487
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_376
	jmp	.label_374
.label_487:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_376
.label_703:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_389
	test	rsi, rsi
	jne	.label_391
	cmp	rbp, 1
	je	.label_395
	xor	r13d, r13d
	jmp	.label_378
.label_692:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_399
	cmp	byte ptr [rsp + 6], 0
	jne	.label_401
	cmp	r12d, 2
	jne	.label_406
	mov	eax, r9d
	and	al, 1
	jne	.label_406
	cmp	r14, r11
	jae	.label_408
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_408:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_413
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_413:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_474
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_474:
	add	r14, 3
	mov	r9b, 1
.label_406:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_388
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_388:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_427
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_427
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_427
	cmp	r14, r11
	jae	.label_476
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_476:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_387
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_387:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_378
.label_693:
	mov	bl, 0x62
	jmp	.label_456
.label_694:
	mov	cl, 0x74
	jmp	.label_411
.label_695:
	mov	bl, 0x76
	jmp	.label_456
.label_696:
	mov	bl, 0x66
	jmp	.label_456
.label_697:
	mov	cl, 0x72
	jmp	.label_411
.label_700:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_459
	cmp	byte ptr [rsp + 6], 0
	jne	.label_429
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_464
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_464:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_475
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_475:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_478
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_478:
	add	r14, 3
	xor	r9d, r9d
.label_459:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_378
.label_701:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_485
	cmp	r12d, 2
	jne	.label_426
	cmp	byte ptr [rsp + 6], 0
	je	.label_426
	jmp	.label_429
.label_702:
	cmp	r12d, 2
	jne	.label_493
	cmp	byte ptr [rsp + 6], 0
	jne	.label_429
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_412
.label_467:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_384
	mov	qword ptr [rsp + 0x20], rbp
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	r12d, 1
.label_385:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_405
	test	r8b, r8b
	je	.label_405
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_378
.label_389:
	test	rsi, rsi
	jne	.label_425
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_425
.label_395:
	mov	dl, 1
.label_698:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_429
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_378:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_435
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_436
	jmp	.label_440
	nop	word ptr cs:[rax + rax]
.label_435:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_440
.label_436:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_447
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_412
	jmp	.label_457
	nop	dword ptr [rax]
.label_440:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_457
	jmp	.label_412
.label_447:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_457
.label_399:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_417
	xor	r15d, r15d
	jmp	.label_426
.label_493:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_411
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_412
.label_411:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_429
.label_456:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_378
	nop	word ptr cs:[rax + rax]
.label_457:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_401
	cmp	r12d, 2
	jne	.label_481
	mov	eax, r9d
	and	al, 1
	jne	.label_481
	cmp	r14, r11
	jae	.label_396
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_396:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_488
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_488:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_468
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_468:
	add	r14, 3
	mov	r9b, 1
.label_481:
	cmp	r14, r11
	jae	.label_379
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_379:
	inc	r14
	jmp	.label_382
.label_384:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_386
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_386:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_434:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_410
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_415
	cmp	rbp, -2
	je	.label_420
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_491
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_482:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_458
	bt	rsi, rdx
	jb	.label_439
.label_458:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_482
.label_491:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_465
	xor	r13d, r13d
.label_465:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_434
	jmp	.label_385
.label_427:
	xor	r13d, r13d
	jmp	.label_378
.label_425:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_378
.label_485:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_426
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_426
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_426
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_469
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_446
	cmp	byte ptr [rsp + 6], 0
	jne	.label_480
	cmp	r14, r11
	jae	.label_484
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_484:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_428
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_428:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_486
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_486:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_462
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_462:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_378
.label_426:
	xor	eax, eax
.label_391:
	xor	r13d, r13d
	jmp	.label_378
.label_405:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_383
	nop	word ptr cs:[rax + rax]
.label_463:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_383:
	test	r8b, r8b
	je	.label_392
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_394
	cmp	r14, r11
	jae	.label_397
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_397:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_394
	nop	dword ptr [rax]
.label_392:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_374
	cmp	r12d, 2
	jne	.label_409
	mov	eax, r9d
	and	al, 1
	jne	.label_409
	cmp	r14, r11
	jae	.label_414
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_414:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_418
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_418:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_422
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_422:
	add	r14, 3
	mov	r9b, 1
.label_409:
	cmp	r14, r11
	jae	.label_416
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_416:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_432
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_432:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_438
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_438:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_394:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_412
	test	r9b, 1
	je	.label_442
	mov	ebx, eax
	and	bl, 1
	jne	.label_442
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_455
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_455:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_453
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_453:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_442:
	cmp	r14, r11
	jae	.label_463
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_463
	nop	word ptr cs:[rax + rax]
.label_412:
	test	r9b, 1
	je	.label_445
	and	al, 1
	jne	.label_445
	cmp	r14, r11
	jae	.label_473
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_473:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_461
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_461:
	add	r14, 2
	xor	r9d, r9d
.label_445:
	mov	ebx, r15d
.label_382:
	cmp	r14, r11
	jae	.label_393
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_393:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_417
.label_415:
	xor	r13d, r13d
.label_410:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_385
.label_420:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_471
	mov	rsi, qword ptr [rsp + 0x58]
.label_377:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_390
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_377
	xor	r13d, r13d
	jmp	.label_385
.label_471:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_385
.label_390:
	xor	r13d, r13d
	jmp	.label_385
.label_469:
	xor	r13d, r13d
	jmp	.label_378
.label_446:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_378
	nop	dword ptr [rax + rax]
.label_444:
	mov	rcx, rsi
.label_450:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_398
	or	al, dl
	je	.label_404
.label_398:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_407
	or	al, dl
	jne	.label_407
	test	r10b, 1
	jne	.label_419
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_407
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_424
.label_407:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_430
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_433
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_433
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_448:
	cmp	r14, r11
	jae	.label_373
	mov	byte ptr [rcx + r14], al
.label_373:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_448
	jmp	.label_433
.label_401:
	mov	qword ptr [rsp + 0x20], rbp
.label_374:
	mov	rdx, rdi
	jmp	.label_451
.label_429:
	mov	qword ptr [rsp + 0x20], rbp
.label_439:
	mov	rdx, rdi
	mov	eax, 2
.label_423:
	mov	qword ptr [rsp + 0x38], rax
.label_451:
	mov	r9d, dword ptr [rsp + 0x18]
	cmp	byte ptr [rsp + 0x17], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r11
	mov	rcx, qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_489:
	mov	r14, rax
.label_490:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_404:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_451
.label_419:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_489
.label_430:
	mov	rcx, qword ptr [rsp + 8]
.label_433:
	cmp	r14, r11
	jae	.label_490
	mov	byte ptr [rcx + r14], 0
	jmp	.label_490
.label_480:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_423
.label_421:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c10
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
	#Procedure 0x404ce0
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
	je	.label_495
	mov	qword ptr [rax], rbx
.label_495:
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
	#Procedure 0x404dd0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_496
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_498:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_498
.label_496:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_500
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_499], OFFSET FLAT:slot0
.label_500:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_497
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_497:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e70
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404e80

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
	js	.label_501
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_504
	cmp	r12d, 0x7fffffff
	je	.label_506
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
	jne	.label_502
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_502:
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
.label_504:
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
	jbe	.label_507
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_503
.label_507:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_505
	mov	rdi, r14
	call	free
.label_505:
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
.label_503:
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
.label_501:
	call	abort
.label_506:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405040
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405050
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
	#Procedure 0x405070
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
	#Procedure 0x405090
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
	je	.label_508
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
.label_508:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405100
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
	je	.label_509
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
.label_509:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405170

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
	je	.label_510
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
.label_510:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051e0
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
	je	.label_511
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
.label_511:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405250
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_512]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_513]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_514]
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
	#Procedure 0x4052c0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_512]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_513]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_514]
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
	#Procedure 0x405330

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_512]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_513]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_514]
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
	#Procedure 0x405390
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_512]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_513]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_514]
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
	#Procedure 0x4053f0

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
	je	.label_515
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
.label_515:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405490
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_512]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_513]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_514]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_516
	test	rdx, rdx
	je	.label_516
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_516:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x405500
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_512]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_513]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_514]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_517
	test	rdx, rdx
	je	.label_517
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_517:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405570
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_512]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_513]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_514]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_518
	test	rsi, rsi
	je	.label_518
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_518:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4055e0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_512]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_513]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_514]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_519
	test	rsi, rsi
	je	.label_519
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
.label_519:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405650
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405660
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
	#Procedure 0x405680
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056a0
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
	#Procedure 0x4056c0

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
	jne	.label_521
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_526
	cmp	ecx, 0x55
	jne	.label_520
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_520
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_520
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_520
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_520
	cmp	byte ptr [rax + 5], 0
	jne	.label_520
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_523
	mov	eax, OFFSET FLAT:label_524
	jmp	.label_525
.label_526:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_520
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_520
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_520
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_520
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_520
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_520
	cmp	byte ptr [rax + 7], 0
	je	.label_522
.label_520:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_380
	mov	eax, OFFSET FLAT:label_437
.label_525:
	cmove	rax, rcx
.label_521:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_522:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_527
	mov	eax, OFFSET FLAT:label_528
	jmp	.label_525
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405790

	.globl same_name
	.type same_name, @function
same_name:
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rcx
	mov	rcx, rax
	jmp	same_nameat
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057b0

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r15, rcx
	mov	dword ptr [rsp + 0xc], edx
	mov	r13, rsi
	mov	r12d, edi
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	mov	rdi, r15
	call	last_component
	mov	rbp, rax
	mov	rdi, rbx
	call	base_len
	mov	r14, rax
	mov	rdi, rbp
	call	base_len
	cmp	r14, rax
	jne	.label_529
	mov	qword ptr [rsp + 0x10], r15
	mov	dword ptr [rsp + 8], r12d
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_530
.label_529:
	xor	ebp, ebp
.label_535:
	mov	eax, ebp
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_530:
	mov	rdi, r13
	call	dir_name
	mov	rbp, rax
	lea	rcx, [rsp + 0xa8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 8]
	mov	rdx, rbp
	call	__fxstatat
	test	eax, eax
	je	.label_532
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_29
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_532:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	dir_name
	mov	rbx, rax
	lea	rcx, [rsp + 0x18]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_533
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_29
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_533:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_534
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_531
.label_534:
	xor	ebp, ebp
.label_531:
	mov	rdi, rbx
	call	free
	jmp	.label_535
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405900

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
	je	.label_536
	mov	edx, OFFSET FLAT:label_546
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_552
.label_536:
	mov	edx, OFFSET FLAT:label_553
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_552:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_540
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
	mov	esi, OFFSET FLAT:label_554
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_541
	jmp	qword ptr [(r12 * 8) + label_542]
.label_743:
	add	rsp, 8
	jmp	.label_539
.label_541:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_549
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
	jmp	.label_539
.label_744:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_537
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
.label_745:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_550
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
.label_746:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_547
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
.label_747:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_544
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
	jmp	.label_539
.label_748:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_543
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
	jmp	.label_539
.label_749:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_545
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
	jmp	.label_539
.label_750:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_548
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
	jmp	.label_539
.label_752:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_551
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
	jmp	.label_539
.label_751:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_538
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
.label_539:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c60
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_555:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_555
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c90

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_560
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_563
.label_560:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_563:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_562
	cmp	r10d, 0x29
	jae	.label_559
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_561
.label_559:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_561:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_562
	cmp	r10d, 0x29
	jae	.label_557
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_558
.label_557:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_558:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_562
	cmp	r10d, 0x29
	jae	.label_568
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_556
.label_568:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_556:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_562
	cmp	r10d, 0x29
	jae	.label_566
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_567
.label_566:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_567:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_562
	cmp	r10d, 0x29
	jae	.label_564
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_565
.label_564:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_565:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_562
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_562
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_562
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_562
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_562:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e80

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_569
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_569:
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
	#Procedure 0x405f10
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_570
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_571
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_573
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_23
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_572
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f90
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_574
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_575
	test	rax, rax
	je	.label_574
.label_575:
	pop	rbx
	ret	
.label_574:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fd0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_576
	test	rax, rax
	je	.label_577
.label_576:
	pop	rbx
	ret	
.label_577:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ff0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_578
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_579
	test	rbx, rbx
	jne	.label_579
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_579:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_580
	test	rax, rax
	je	.label_578
.label_580:
	pop	rbx
	ret	
.label_578:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406040

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_581
	test	rbx, rbx
	jne	.label_581
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_581:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_583
	test	rax, rax
	je	.label_582
.label_583:
	pop	rbx
	ret	
.label_582:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406070
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_587
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_589
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_584
.label_587:
	test	rcx, rcx
	jne	.label_590
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_590:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_585
.label_584:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_586
	test	rbx, rbx
	jne	.label_586
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_586:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_588
	test	rax, rax
	je	.label_589
.label_588:
	pop	rbx
	ret	
.label_589:
	call	xalloc_die
.label_585:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406110
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_591
	test	rax, rax
	je	.label_592
.label_591:
	pop	rbx
	ret	
.label_592:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406130
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_595
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_597
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_594
	call	free
	xor	eax, eax
	jmp	.label_596
.label_595:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_593
	mov	qword ptr [rsi], rbx
.label_594:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_596
	test	rax, rax
	je	.label_593
.label_596:
	pop	rbx
	ret	
.label_593:
	call	xalloc_die
.label_597:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061a0
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
	je	.label_599
	test	r14, r14
	je	.label_598
.label_599:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_598:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061e0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_600
	call	rpl_calloc
	test	rax, rax
	je	.label_600
	pop	rcx
	ret	
.label_600:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406210

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
	je	.label_601
	test	r15, r15
	je	.label_602
.label_601:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_602:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406250

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
	je	.label_604
	test	r15, r15
	je	.label_603
.label_604:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_603:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062a0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_605
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_29
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4062d0

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_607
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_606
.label_607:
	mov	rax, rbx
	pop	rbx
	ret	
.label_606:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406300

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_608
	test	rsi, rsi
	mov	ecx, 1
	je	.label_609
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_609
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_608:
	mov	ecx, 1
.label_609:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406350

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
	je	.label_610
	cmp	r15, -2
	jb	.label_610
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_610
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_610:
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
	#Procedure 0x4063b0

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdi
	cmp	rsi, 0x401
	lea	rax, [rsi + 1]
	mov	r12d, 0x401
	cmovb	r12, rax
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	mov	qword ptr [rsp], rax
	test	rbx, rbx
	je	.label_614
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_617:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_612
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_615
.label_612:
	cmp	r13, r12
	jb	.label_616
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_618
	add	r12, r12
	jmp	.label_619
	nop	word ptr cs:[rax + rax]
.label_618:
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	r12, rax
	jae	.label_613
.label_619:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_617
	jmp	.label_614
.label_616:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp], rbx
	jmp	.label_614
.label_613:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_611
.label_615:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_611:
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_614:
	mov	rax, qword ptr [rsp]
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
	#Procedure 0x4064c0

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
	jne	.label_621
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_620
	test	cl, cl
	jne	.label_620
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_620
.label_621:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_620
	call	__errno_location
	mov	dword ptr [rax], 0
.label_620:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406520

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_622
	pop	rcx
	ret	
.label_622:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406540
	.globl dir_len
	.type dir_len, @function
dir_len:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	xor	r14d, r14d
	cmp	byte ptr [rbx], 0x2f
	sete	r14b
	call	last_component
	mov	rcx, rax
	sub	rcx, rbx
	nop	dword ptr [rax]
.label_624:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_623
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_624
.label_623:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406580

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	xor	r15d, r15d
	cmp	byte ptr [r14], 0x2f
	sete	r15b
	call	last_component
	inc	rax
	sub	rax, r14
	nop	word ptr cs:[rax + rax]
.label_628:
	mov	rbx, rax
	lea	r12, [rbx - 1]
	cmp	r15, r12
	jae	.label_625
	lea	rax, [rbx - 1]
	cmp	byte ptr [r14 + rbx - 2], 0x2f
	je	.label_628
.label_625:
	xor	edi, edi
	cmp	rbx, 1
	sete	dil
	add	rdi, rbx
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_627
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	memcpy
	cmp	rbx, 1
	jne	.label_626
	mov	byte ptr [r15], 0x2e
	mov	r12d, 1
.label_626:
	mov	byte ptr [r15 + r12], 0
	mov	rax, r15
.label_627:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406620

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_629:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_629
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_633
	nop	word ptr cs:[rax + rax]
.label_632:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_633:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_632
	test	dl, dl
	je	.label_631
	mov	ecx, esi
	and	cl, 1
	je	.label_630
	xor	esi, esi
.label_630:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_632
.label_631:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406680

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_635:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_634
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_635
.label_634:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066b0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_637
	cmp	byte ptr [rax], 0x43
	jne	.label_639
	cmp	byte ptr [rax + 1], 0
	je	.label_636
.label_639:
	mov	esi, OFFSET FLAT:label_638
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_637
.label_636:
	xor	ebx, ebx
.label_637:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066f0

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_640
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_641:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_641
.label_640:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406720

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_54
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_642
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406750

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_643
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_645
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_643
.label_645:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_643
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_644
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_644:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_643:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_646
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_646
	test	byte ptr [rbx + 1], 1
	je	.label_646
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_646:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406810

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
	jne	.label_647
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_647
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_648
.label_647:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_648:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_649
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_649:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x406880

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
