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
	sub	rsp, 0xa8
	mov	rbp, rsi
	mov	r12d, edi
	mov	rdi, qword ptr [rbp]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_59
	call	setlocale
	mov	edi, OFFSET FLAT:label_62
	mov	esi, OFFSET FLAT:label_63
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_62
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r15d, 1
	xor	ebx, ebx
	xor	r14d, r14d
	jmp	.label_32
.label_743:
	mov	r14, qword ptr [rip + optarg]
	nop	word ptr cs:[rax + rax]
.label_32:
	mov	edx, OFFSET FLAT:label_74
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, rbp
	call	getopt_long
	cmp	eax, 0x4b
	jle	.label_77
	add	eax, -0x4c
	cmp	eax, 0x35
	ja	.label_38
	jmp	qword ptr [(rax * 8) + label_29]
.label_735:
	or	r15d, 4
	mov	byte ptr [rip + logical],  1
	jmp	.label_32
.label_736:
	and	r15d, 0xfffffffb
	mov	byte ptr [rip + logical],  0
	jmp	.label_32
.label_737:
	and	r15d, 0xfffffffc
	jmp	.label_32
.label_738:
	and	r15d, 0xfffffffc
	or	r15d, 2
	jmp	.label_32
.label_739:
	mov	byte ptr [rip + verbose],  1
	jmp	.label_32
.label_740:
	or	r15d, 4
	mov	byte ptr [rip + logical],  0
	jmp	.label_32
.label_741:
	mov	byte ptr [rip + use_nuls],  1
	jmp	.label_32
.label_742:
	mov	rbx, qword ptr [rip + optarg]
	jmp	.label_32
.label_77:
	cmp	eax, -1
	jne	.label_47
	mov	qword ptr [rsp + 8], rbp
	cmp	dword ptr [rip + optind],  r12d
	jge	.label_61
	test	r14, r14
	mov	rbp, r14
	cmove	rbp, rbx
	test	rbx, rbx
	cmovne	rbp, rbx
	mov	ebx, r15d
	and	ebx, 3
	test	rbp, rbp
	je	.label_56
	mov	rdi, rbp
	mov	esi, r15d
	call	canonicalize_filename_mode
	mov	r13, rax
	cmp	byte ptr [rip + logical],  1
	jne	.label_64
	test	r13, r13
	je	.label_64
	mov	esi, r15d
	and	esi, 0xfffffffb
	mov	rdi, r13
	call	canonicalize_filename_mode
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, r13
	call	free
	mov	r13, qword ptr [rsp + 0x10]
.label_64:
	mov	qword ptr [rip + can_relative_to],  r13
	test	r13, r13
	je	.label_71
	test	ebx, ebx
	jne	.label_56
	lea	rdx, [rsp + 0x18]
	mov	edi, 1
	mov	rsi, r13
	call	__xstat
	test	eax, eax
	jne	.label_78
	mov	eax, dword ptr [rsp + 0x30]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_28
.label_56:
	cmp	r14, rbp
	je	.label_33
	test	r14, r14
	mov	r13, qword ptr [rsp + 8]
	je	.label_34
	mov	rdi, r14
	mov	esi, r15d
	call	canonicalize_filename_mode
	mov	rbp, rax
	cmp	byte ptr [rip + logical],  1
	jne	.label_43
	test	rbp, rbp
	je	.label_43
	mov	esi, r15d
	and	esi, 0xfffffffb
	mov	rdi, rbp
	call	canonicalize_filename_mode
	mov	r13, rax
	mov	rdi, rbp
	call	free
	mov	rbp, r13
	mov	r13, qword ptr [rsp + 8]
.label_43:
	test	rbp, rbp
	je	.label_51
	test	ebx, ebx
	jne	.label_54
	lea	rdx, [rsp + 0x18]
	mov	edi, 1
	mov	rsi, rbp
	call	__xstat
	test	eax, eax
	jne	.label_58
	mov	eax, dword ptr [rsp + 0x30]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_55
.label_54:
	mov	rax, qword ptr [rip + can_relative_to]
	inc	rax
	mov	cl, byte ptr [rbp + 1]
	test	cl, cl
	je	.label_65
	cmp	cl, 0x2f
	jne	.label_68
	mov	cl, 0x2f
	cmp	byte ptr [rbp + 2], 0
	je	.label_69
.label_68:
	lea	rdx, [rbp + 2]
	nop	dword ptr [rax + rax]
.label_73:
	movzx	ebx, byte ptr [rax]
	test	bl, bl
	je	.label_31
	cmp	cl, bl
	jne	.label_31
	inc	rax
	movzx	ecx, byte ptr [rdx]
	inc	rdx
	test	cl, cl
	jne	.label_73
	jmp	.label_53
.label_33:
	mov	rax, qword ptr [rip + can_relative_to]
	mov	qword ptr [rip + can_relative_base],  rax
	mov	r13, qword ptr [rsp + 8]
	jmp	.label_34
.label_65:
	cmp	byte ptr [rax], 0x2f
	jne	.label_30
	jmp	.label_27
.label_31:
	test	cl, cl
	jne	.label_27
.label_53:
	mov	al, byte ptr [rax]
	test	al, al
	je	.label_30
	cmp	al, 0x2f
	je	.label_30
	jmp	.label_27
.label_69:
	cmp	byte ptr [rax], 0x2f
	jne	.label_27
.label_30:
	mov	qword ptr [rip + can_relative_base],  rbp
	jmp	.label_34
.label_27:
	mov	rdi, rbp
	call	free
	mov	rax, qword ptr [rip + can_relative_to]
	mov	qword ptr [rip + can_relative_base],  rax
	mov	qword ptr [rip + can_relative_to],  0
.label_34:
	mov	eax, dword ptr [rip + optind]
	mov	r14b, 1
	cmp	eax, r12d
	jge	.label_45
	mov	ecx, r15d
	and	ecx, 0xfffffffb
	mov	dword ptr [rsp + 0x10], ecx
	mov	r14b, 1
	jmp	.label_46
.label_66:
	call	__overflow
	jmp	.label_49
.label_46:
	cdqe	
	mov	rbx, qword ptr [r13 + rax*8]
	mov	rdi, rbx
	mov	esi, r15d
	call	canonicalize_filename_mode
	mov	rbp, rax
	cmp	byte ptr [rip + logical],  1
	jne	.label_57
	test	rbp, rbp
	je	.label_57
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 0x10]
	call	canonicalize_filename_mode
	mov	r13, rax
	mov	rdi, rbp
	call	free
	mov	rbp, r13
	mov	r13, qword ptr [rsp + 8]
.label_57:
	test	rbp, rbp
	je	.label_67
	mov	rsi, qword ptr [rip + can_relative_to]
	test	rsi, rsi
	je	.label_50
	mov	rcx, qword ptr [rip + can_relative_base]
	test	rcx, rcx
	je	.label_48
	lea	rax, [rbp + 1]
	mov	dl, byte ptr [rcx + 1]
	test	dl, dl
	je	.label_70
	cmp	dl, 0x2f
	jne	.label_75
	mov	dl, 0x2f
	cmp	byte ptr [rcx + 2], 0
	je	.label_76
.label_75:
	add	rcx, 2
	nop	dword ptr [rax + rax]
.label_37:
	movzx	ebx, byte ptr [rax]
	test	bl, bl
	je	.label_26
	cmp	dl, bl
	jne	.label_26
	inc	rax
	movzx	edx, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_37
	jmp	.label_60
	nop	word ptr [rax + rax]
.label_67:
	mov	al, byte ptr [rip + verbose]
	test	al, al
	je	.label_35
	xor	ebp, ebp
	jmp	.label_39
.label_35:
	call	__errno_location
	mov	r13d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_40
	xor	eax, eax
	mov	esi, r13d
	mov	r13, qword ptr [rsp + 8]
	call	error
	jmp	.label_39
.label_70:
	cmp	byte ptr [rax], 0x2f
	jne	.label_48
	jmp	.label_50
.label_26:
	test	dl, dl
	jne	.label_50
.label_60:
	mov	al, byte ptr [rax]
	test	al, al
	je	.label_48
	cmp	al, 0x2f
	je	.label_48
	jmp	.label_50
.label_76:
	cmp	byte ptr [rax], 0x2f
	jne	.label_50
	nop	word ptr cs:[rax + rax]
.label_48:
	xor	edx, edx
	xor	ecx, ecx
	mov	rdi, rbp
	call	relpath
	test	al, al
	jne	.label_72
.label_50:
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbp
	call	fputs_unlocked
.label_72:
	mov	al, byte ptr [rip + use_nuls]
	test	al, al
	mov	esi, 0xa
	mov	eax, 0
	cmovne	esi, eax
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_66
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_49:
	mov	rdi, rbp
	call	free
	mov	bpl, 1
.label_39:
	and	r14b, bpl
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, r12d
	jl	.label_46
.label_45:
	movzx	eax, r14b
	xor	eax, 1
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_47:
	cmp	eax, 0xffffff7d
	je	.label_36
	cmp	eax, 0xffffff7e
	jne	.label_38
	xor	edi, edi
	call	usage
.label_36:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_11
	mov	edx, OFFSET FLAT:label_24
	mov	r8d, OFFSET FLAT:label_42
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_38:
	mov	edi, 1
	call	usage
.label_61:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
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
.label_71:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_40
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_51:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_40
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_78:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_28:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	jmp	.label_41
.label_58:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_55:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
.label_41:
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	esi, 0x14
	mov	edx, OFFSET FLAT:label_40
	xor	eax, eax
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401db0

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
	jne	.label_79
	mov	dl, byte ptr [rsi]
	test	dl, dl
	mov	rcx, rdi
	mov	eax, 0
	je	.label_97
	xor	ecx, ecx
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_108:
	movzx	ebx, byte ptr [rdi + rcx]
	test	bl, bl
	je	.label_105
	cmp	dl, bl
	jne	.label_105
	lea	rbx, [rcx + 1]
	cmp	dl, 0x2f
	cmove	eax, ebx
	movzx	edx, byte ptr [rsi + rcx + 1]
	test	dl, dl
	mov	rcx, rbx
	jne	.label_108
	mov	rcx, rbx
	add	rcx, rdi
.label_97:
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_84
	cmp	cl, 0x2f
	je	.label_84
	jmp	.label_86
.label_105:
	cmp	dl, 0x2f
	jne	.label_86
	test	bl, bl
	jne	.label_86
	mov	ebx, ecx
.label_84:
	mov	eax, ebx
.label_86:
	test	eax, eax
	je	.label_88
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
	je	.label_89
	test	r12, r12
	je	.label_99
	mov	bpl, 1
	cmp	r14, 3
	jb	.label_98
	mov	byte ptr [r12 + 2], 0
	mov	word ptr [r12], 0x2e2e
	add	r12, 2
	add	r14, -2
	jmp	.label_102
.label_88:
	xor	ebx, ebx
	jmp	.label_79
.label_89:
	cmp	byte ptr [r15], 0
	mov	ebx, OFFSET FLAT:label_80
	cmovne	rbx, r15
	test	r12, r12
	je	.label_81
	mov	rdi, rbx
	call	strlen
	cmp	rax, r14
	jae	.label_87
	inc	rax
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, rax
	call	memcpy
	jmp	.label_93
.label_99:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_95
	call	fputs_unlocked
	xor	r12d, r12d
.label_102:
	xor	ebp, ebp
	jmp	.label_98
.label_96:
	inc	rbx
.label_98:
	movzx	eax, byte ptr [rbx]
	cmp	al, 0x2f
	je	.label_100
	test	al, al
	jne	.label_96
	jmp	.label_103
.label_100:
	test	r12, r12
	je	.label_104
	mov	al, 1
	cmp	r14, 4
	jb	.label_106
	mov	dword ptr [r12], 0x2e2e2f
	add	r12, 3
	add	r14, -3
	jmp	.label_109
.label_104:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_82
	call	fputs_unlocked
	xor	r12d, r12d
.label_109:
	xor	eax, eax
.label_106:
	and	bpl, 1
	or	bpl, al
	jmp	.label_96
.label_103:
	cmp	byte ptr [r15], 0
	je	.label_107
	test	r12, r12
	je	.label_90
	mov	bl, 1
	cmp	r14, 1
	jbe	.label_91
	mov	word ptr [r12], 0x2f
	inc	r12
	dec	r14
	and	bpl, 1
	jmp	.label_94
.label_81:
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbx
	call	fputs_unlocked
.label_93:
	mov	bl, 1
	jmp	.label_79
.label_90:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_101
	call	fputs_unlocked
	and	bpl, 1
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, r15
	call	fputs_unlocked
	jmp	.label_83
.label_91:
	mov	bpl, 1
.label_94:
	mov	rdi, r15
	call	strlen
	cmp	rax, r14
	jae	.label_85
	inc	rax
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rax
	call	memcpy
.label_83:
	xor	ebx, ebx
.label_85:
	or	bpl, bl
.label_107:
	mov	bl, 1
	test	bpl, 1
	je	.label_79
.label_87:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0
	mov	esi, 0x24
	mov	edx, OFFSET FLAT:label_40
	xor	eax, eax
	call	error
.label_79:
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
	#Procedure 0x402000

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
	mov	r12, rdi
	mov	ebx, r14d
	and	ebx, 3
	lea	eax, [r14 + 3]
	test	eax, ebx
	jne	.label_110
	test	r12, r12
	je	.label_110
	mov	al, byte ptr [r12]
	cmp	al, 0x2f
	je	.label_122
	test	al, al
	jne	.label_125
	call	__errno_location
	mov	dword ptr [rax], 2
	jmp	.label_129
.label_110:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_129:
	xor	ebp, ebp
.label_148:
	mov	rax, rbp
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_122:
	mov	edi, 0x1000
	call	xmalloc
	mov	rdi, rax
	mov	byte ptr [rdi], 0x2f
	lea	r8, [rdi + 0x1000]
	lea	rbp, [rdi + 1]
	jmp	.label_147
.label_125:
	call	xgetcwd
	xor	ebp, ebp
	test	rax, rax
	je	.label_148
	xor	esi, esi
	mov	rbp, rax
	mov	rdi, rbp
	call	__rawmemchr
	mov	rdi, rbp
	mov	r8, rax
	mov	rbp, r8
	sub	rbp, rdi
	cmp	rbp, 0xfff
	jg	.label_160
	mov	esi, 0x1000
	call	xrealloc
	mov	rdi, rax
	add	rbp, rdi
	mov	r8, rdi
	add	r8, 0x1000
	jmp	.label_147
.label_160:
	mov	rbp, r8
.label_147:
	mov	al, byte ptr [r12]
	xor	r15d, r15d
	test	al, al
	je	.label_168
	mov	ecx, r14d
	and	ecx, 4
	mov	dword ptr [rsp + 0x50], ecx
	mov	ecx, r14d
	and	ecx, 7
	mov	dword ptr [rsp + 0x54], ecx
	xor	ecx, ecx
	mov	dword ptr [rsp + 0x2c], ebx
	cmp	ebx, 2
	setne	cl
	lea	ecx, [rcx + rcx*8 + 4]
	mov	dword ptr [rsp + 0x4c], ecx
	xor	r15d, r15d
	and	r14b, 3
	mov	qword ptr [rsp + 0x60], r14
	mov	qword ptr [rsp + 0x30], r12
	mov	r14, r12
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x38], rcx
.label_117:
	mov	qword ptr [rsp + 0x10], r15
	mov	r13, r14
.label_113:
	lea	rcx, [rdi + 1]
	mov	r12, rbp
.label_166:
	cmp	r12, rcx
	jbe	.label_126
	mov	edx, eax
	nop	word ptr cs:[rax + rax]
.label_161:
	cmp	dl, 0x2f
	mov	r14, r13
	lea	rsi, [r13 + 1]
	jne	.label_138
	nop	dword ptr [rax]
.label_145:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	dl, 0x2f
	je	.label_145
	lea	r14, [rsi - 1]
.label_138:
	mov	eax, edx
	mov	r13, r14
	jmp	.label_119
	nop	word ptr cs:[rax + rax]
.label_154:
	movzx	eax, byte ptr [r13 + 1]
	inc	r13
.label_119:
	cmp	al, 0x2f
	je	.label_153
	test	al, al
	jne	.label_154
.label_153:
	mov	r15, r13
	sub	r15, r14
	cmp	r15, 1
	jne	.label_157
	cmp	byte ptr [r14], 0x2e
	jne	.label_150
	mov	dl, byte ptr [r13]
	test	dl, dl
	jne	.label_161
	jmp	.label_149
.label_157:
	test	r15, r15
	je	.label_149
	cmp	r15, 2
	jne	.label_146
	cmp	dl, 0x2e
	jne	.label_139
	cmp	byte ptr [rsi], 0x2e
	jne	.label_139
	dec	r12
	mov	rdx, r12
	nop	
.label_176:
	mov	r12, rdx
	cmp	r12, rdi
	jbe	.label_171
	lea	rdx, [r12 - 1]
	cmp	byte ptr [r12 - 1], 0x2f
	jne	.label_176
.label_171:
	test	al, al
	jne	.label_166
	jmp	.label_149
.label_126:
	cmp	al, 0x2f
	mov	edx, eax
	mov	r14, r13
	lea	rcx, [r13 + 1]
	jne	.label_112
	nop	
.label_118:
	movzx	edx, byte ptr [rcx]
	inc	rcx
	cmp	dl, 0x2f
	je	.label_118
	lea	r14, [rcx - 1]
.label_112:
	mov	eax, edx
	mov	r13, r14
	jmp	.label_121
	nop	word ptr cs:[rax + rax]
.label_130:
	movzx	eax, byte ptr [r13 + 1]
	inc	r13
.label_121:
	test	al, al
	je	.label_127
	cmp	al, 0x2f
	jne	.label_130
.label_127:
	mov	r15, r13
	sub	r15, r14
	cmp	r15, 1
	je	.label_132
	cmp	r15, 2
	jne	.label_137
	cmp	dl, 0x2e
	jne	.label_139
	cmp	byte ptr [rcx], 0x2e
	je	.label_144
	jmp	.label_139
.label_132:
	cmp	dl, 0x2e
	jne	.label_150
.label_144:
	test	al, al
	jne	.label_126
	jmp	.label_149
.label_150:
	mov	r15d, 1
.label_146:
	cmp	byte ptr [r12 - 1], 0x2f
	je	.label_151
	mov	byte ptr [r12], 0x2f
	inc	r12
.label_151:
	lea	rax, [r12 + r15]
	cmp	rax, r8
	jae	.label_155
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 8], rdi
	jmp	.label_159
.label_155:
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
	mov	qword ptr [rsp + 8], rax
	add	r12, rax
	mov	qword ptr [rsp + 0x20], rbp
.label_159:
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	lea	rbp, [r12 + r15]
	mov	byte ptr [r12 + r15], 0
	cmp	dword ptr [rsp + 0x54], 6
	jne	.label_174
	mov	dword ptr [rsp + 0x80], 0
	xor	eax, eax
	jmp	.label_178
.label_174:
	cmp	dword ptr [rsp + 0x50], 0
	lea	rdx, [rsp + 0x68]
	mov	edi, 1
	jne	.label_114
	mov	rsi, qword ptr [rsp + 8]
	call	__lxstat
	jmp	.label_163
.label_114:
	mov	rsi, qword ptr [rsp + 8]
	call	__xstat
.label_163:
	test	eax, eax
	je	.label_123
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x60]
	cmp	al, 1
	je	.label_128
	test	al, al
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x20]
	lea	rdx, [rsp + 0x68]
	je	.label_180
	mov	dword ptr [rsp + 0x80], 0
	xor	eax, eax
	jmp	.label_140
.label_123:
	mov	eax, dword ptr [rsp + 0x80]
.label_178:
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x20]
	lea	rdx, [rsp + 0x68]
.label_140:
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_152
	mov	qword ptr [rsp + 0x40], rbp
	mov	dword ptr [rsp + 0x28], ebx
	mov	rax, qword ptr [rsp + 0x38]
	test	rax, rax
	jne	.label_156
	mov	edi, 7
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare_ino_str
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	lea	rdx, [rsp + 0x68]
	test	rax, rax
	je	.label_165
.label_156:
	mov	rbx, rax
	mov	rdi, rbx
	mov	r14, qword ptr [rsp + 0x30]
	mov	rsi, r14
	mov	rbp, rdx
	call	seen_file
	test	al, al
	mov	qword ptr [rsp + 0x38], rbx
	je	.label_172
	cmp	dword ptr [rsp + 0x2c], 2
	mov	ebx, dword ptr [rsp + 0x28]
	mov	eax, 0x28
	cmovne	ebx, eax
	mov	eax, dword ptr [rsp + 0x4c]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_177
.label_172:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, rbp
	call	record_file
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdi, qword ptr [rsp + 8]
	call	areadlink_with_size
	test	rax, rax
	jne	.label_131
	call	__errno_location
	cmp	dword ptr [rsp + 0x2c], 2
	mov	ebx, dword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x40]
	jne	.label_115
	cmp	dword ptr [rax], 0xc
	je	.label_115
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x20]
	jmp	.label_136
.label_128:
	mov	rax, r13
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x20]
	nop	dword ptr [rax + rax]
.label_111:
	movzx	ecx, byte ptr [rax]
	inc	rax
	cmp	cl, 0x2f
	je	.label_111
	xor	eax, eax
	test	cl, cl
	setne	al
	cmp	ebx, 2
	lea	eax, [rax + rax*8 + 4]
	mov	ecx, 0xd
	cmovne	eax, ecx
.label_177:
	and	al, 0xf
	cmp	al, 4
	jne	.label_116
.label_136:
	mov	al, byte ptr [r13]
	test	al, al
	jne	.label_113
	jmp	.label_162
.label_139:
	mov	r15d, 2
	jmp	.label_146
.label_137:
	test	r15, r15
	jne	.label_146
	jmp	.label_149
.label_152:
	movzx	eax, ax
	cmp	eax, 0x4000
	je	.label_169
	cmp	dword ptr [rsp + 0x2c], 2
	je	.label_169
	mov	cl, byte ptr [r13]
	mov	eax, 0x14
	test	cl, cl
	jne	.label_175
.label_169:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, rax
	mov	r14, r13
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_179
.label_131:
	mov	qword ptr [rsp + 0x58], rax
	mov	rdi, rax
	call	strlen
	mov	r14, rax
	mov	rdi, r13
	call	strlen
	mov	rdx, rax
	lea	rcx, [r14 + rdx + 1]
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	mov	ebx, dword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x30], r14
	je	.label_170
	cmp	rcx, rax
	jbe	.label_135
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsi, rcx
	mov	r14, rdx
	call	xrealloc
	jmp	.label_143
.label_170:
	cmp	rcx, 0x1000
	mov	eax, 0x1000
	cmovbe	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	mov	rdi, rcx
	mov	r14, rdx
	call	xmalloc
.label_143:
	mov	rdx, r14
	mov	r14, rax
	jmp	.label_158
.label_135:
	mov	qword ptr [rsp + 0x18], rax
	mov	r14, qword ptr [rsp + 0x10]
.label_158:
	mov	rdi, qword ptr [rsp + 0x30]
	add	rdi, r14
	inc	rdx
	mov	rsi, r13
	call	memmove
	mov	rdi, r14
	mov	r13, qword ptr [rsp + 0x58]
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x30]
	call	memcpy
	mov	rdi, r13
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [rcx + 1]
	cmp	byte ptr [rdi], 0x2f
	jne	.label_142
	mov	byte ptr [rcx], 0x2f
	mov	rbp, rax
	jmp	.label_167
.label_142:
	cmp	rbp, rax
	jbe	.label_167
	lea	rax, [r12 + r15 - 1]
.label_173:
	mov	rbp, rax
	cmp	rbp, rcx
	jbe	.label_167
	lea	rax, [rbp - 1]
	cmp	byte ptr [rbp - 1], 0x2f
	jne	.label_173
.label_167:
	call	free
	mov	rdi, qword ptr [rsp + 8]
	mov	r15, r14
	mov	qword ptr [rsp + 0x30], r14
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x18]
.label_179:
	mov	al, byte ptr [r14]
	test	al, al
	mov	qword ptr [rsp + 0x18], rcx
	jne	.label_117
	jmp	.label_120
.label_149:
	mov	rbp, r12
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_120
.label_168:
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
.label_120:
	lea	rax, [rdi + 1]
	cmp	rbp, rax
	jbe	.label_124
	lea	rax, [rbp - 1]
	cmp	byte ptr [rbp - 1], 0x2f
	cmove	rbp, rax
.label_124:
	mov	byte ptr [rbp], 0
	lea	rax, [rbp + 1]
	cmp	r8, rax
	je	.label_134
	mov	esi, 1
	sub	rsi, rdi
	add	rsi, rbp
	call	xrealloc
	mov	rbp, rax
	jmp	.label_133
.label_134:
	mov	rbp, rdi
.label_133:
	mov	rdi, r15
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	test	rdi, rdi
	je	.label_148
	call	hash_free
	jmp	.label_148
.label_162:
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_120
.label_115:
	mov	ebx, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_141
.label_116:
	cmp	al, 0xd
	jne	.label_148
	jmp	.label_141
.label_180:
	mov	eax, ebx
.label_175:
	mov	ebx, eax
.label_141:
	mov	ebp, ebx
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	test	rdi, rdi
	je	.label_164
	call	hash_free
.label_164:
	call	__errno_location
	mov	dword ptr [rax], ebp
	jmp	.label_129
.label_165:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4026e0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026f0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402700

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_186
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_182
	cmp	dword ptr [rbp], 0x20
	jne	.label_182
.label_186:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_184
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_182:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_181
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_183
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_40
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_184:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_183:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_185
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
	#Procedure 0x4027c0

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
	je	.label_187
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
	je	.label_188
	cmp	rax, rbx
	je	.label_187
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_187:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_188:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402840

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_189
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
.label_189:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402880
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402890
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028a0
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028b0
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_193
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_191
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_192:
	cmp	qword ptr [rcx], 0
	je	.label_194
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_190:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_190
	cmp	rdi, rax
	cmova	rax, rdi
.label_194:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_196
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_195:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_195
	cmp	rdi, rax
	cmova	rax, rdi
.label_196:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_192
.label_191:
	test	r8, r8
	je	.label_193
	cmp	qword ptr [rcx], 0
	je	.label_193
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_197:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_197
	cmp	rdx, rax
	cmova	rax, rdx
.label_193:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402970
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_199
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_200
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_206:
	cmp	qword ptr [rax], 0
	je	.label_207
	mov	rdx, rax
	nop	dword ptr [rax]
.label_198:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_198
	inc	r10
.label_207:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_201
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_204:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_204
	inc	r10
.label_201:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_206
	jmp	.label_208
.label_200:
	xor	r10d, r10d
.label_208:
	test	r8, r8
	je	.label_199
	cmp	qword ptr [rax], 0
	je	.label_199
	nop	dword ptr [rax]
.label_202:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_202
	inc	r10
.label_199:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_203
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_205
.label_203:
	xor	eax, eax
.label_205:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a30
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
	jae	.label_213
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_216
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_215:
	cmp	qword ptr [rax], 0
	je	.label_209
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_217:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_217
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_209:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_211
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_218:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_218
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_211:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_215
.label_216:
	test	r8, r8
	je	.label_213
	cmp	qword ptr [rax], 0
	je	.label_213
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_210:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_210
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_213:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_214
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_212
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_220]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_221]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_222]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_223
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_219
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
	#Procedure 0x402ba0

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
	jae	.label_228
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_225
	add	rbx, rax
	je	.label_225
	cmp	rsi, r12
	je	.label_227
	xor	r15d, r15d
	nop	
.label_226:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_224
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_225
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_226
.label_227:
	mov	r15, r12
	jmp	.label_225
.label_224:
	mov	r15, qword ptr [rbx]
.label_225:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_228:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c20
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_229
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_232
	nop	word ptr cs:[rax + rax]
.label_231:
	add	rcx, 0x10
.label_232:
	cmp	rcx, rdx
	jae	.label_230
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_231
.label_229:
	ret	
.label_230:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c60
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
	jae	.label_236
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_237:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_235
	test	rdx, rdx
	jne	.label_237
	jmp	.label_233
.label_235:
	test	rdx, rdx
	je	.label_233
	mov	rax, qword ptr [rdx]
	jmp	.label_234
.label_233:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_238:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_234
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_238
.label_234:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_236:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cf0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_239
	xor	eax, eax
.label_241:
	cmp	qword ptr [r9], 0
	je	.label_240
	test	r9, r9
	je	.label_240
	mov	r8, r9
	nop	
.label_242:
	cmp	rax, rdx
	jae	.label_239
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_242
	mov	r8, qword ptr [rdi + 8]
.label_240:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_241
.label_239:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d40
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
	jae	.label_243
	xor	ebx, ebx
.label_247:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_245
	test	r13, r13
	je	.label_245
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_243
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_244:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_246
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_244
	jmp	.label_243
	nop	dword ptr [rax]
.label_246:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_245:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_247
.label_243:
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
	#Procedure 0x402de0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_248
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_249:
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
	jne	.label_249
.label_248:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e20
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_250]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e40

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
	je	.label_255
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_252
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_257]
	jbe	.label_253
	movss	xmm1, dword ptr [rip + label_262]
	ucomiss	xmm1, xmm0
	jbe	.label_253
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_266]
	jbe	.label_253
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_253
	addss	xmm1, dword ptr [rip + label_257]
	ucomiss	xmm0, xmm1
	jbe	.label_253
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_263]
	ucomiss	xmm2, xmm0
	jb	.label_253
	ucomiss	xmm0, xmm1
	jbe	.label_253
.label_252:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_258
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_256
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_260
.label_256:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_260:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_264]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_265]
	jae	.label_253
.label_258:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_261
	nop	
.label_259:
	add	rbx, 2
.label_261:
	cmp	rbx, -1
	je	.label_253
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_251
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_254:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_251
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_254
.label_251:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_259
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_253
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_253
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_253
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
	jmp	.label_255
.label_253:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_255:
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
	#Procedure 0x403060

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
	#Procedure 0x403070

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403080
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_267
	nop	word ptr cs:[rax + rax]
.label_270:
	add	r14, 0x10
.label_267:
	cmp	r14, rax
	jae	.label_269
	cmp	qword ptr [r14], 0
	je	.label_270
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_271
	nop	word ptr cs:[rax + rax]
.label_273:
	test	cl, 1
	je	.label_272
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_272:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_273
.label_271:
	test	cl, cl
	je	.label_268
	mov	rdi, qword ptr [r14]
	call	rax
.label_268:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_270
.label_269:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403130

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_278
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_278
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_276
	nop	
.label_274:
	add	r15, 0x10
.label_276:
	cmp	r15, rax
	jae	.label_278
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_274
	test	r15, r15
	je	.label_274
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_282
.label_284:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_282:
	test	rbx, rbx
	jne	.label_284
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_274
.label_278:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_281
	nop	
.label_279:
	add	r15, 0x10
.label_281:
	cmp	r15, rax
	jae	.label_283
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_279
	nop	word ptr cs:[rax + rax]
.label_275:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_275
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_279
.label_283:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_277
.label_280:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_280
.label_277:
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
	#Procedure 0x403200

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
	jne	.label_285
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_294
	cvtsi2ss	xmm0, rsi
	jmp	.label_298
.label_294:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_298:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_264]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_265]
	jae	.label_293
.label_285:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_302
	nop	dword ptr [rax + rax]
.label_296:
	add	rbx, 2
.label_302:
	cmp	rbx, -1
	je	.label_293
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_286
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_291:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_286
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_291
.label_286:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_296
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_293
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_287
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_293
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
	je	.label_300
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_287
.label_300:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_295
	nop	
.label_289:
	add	r12, 0x10
.label_295:
	cmp	r12, r15
	jae	.label_301
	cmp	qword ptr [r12], 0
	je	.label_289
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_288
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_303:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_299
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_292
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_290
	nop	word ptr [rax + rax]
.label_292:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_290:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_303
.label_288:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_289
.label_301:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_297
	mov	rdi, qword ptr [rsp]
	call	free
.label_293:
	xor	ebp, ebp
.label_287:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_299:
	call	abort
.label_297:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403490

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
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	cmp	r13, rax
	jae	.label_315
	test	dl, dl
	je	.label_320
	nop	dword ptr [rax]
.label_308:
	cmp	qword ptr [r13], 0
	je	.label_304
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	je	.label_307
	mov	rsi, qword ptr [r14 + 0x10]
	nop	dword ptr [rax + rax]
.label_324:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_313
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_322
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_312
	nop	word ptr [rax + rax]
.label_322:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_312:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_324
	mov	rax, qword ptr [r15 + 8]
.label_307:
	mov	qword ptr [r13 + 8], 0
.label_304:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_308
	jmp	.label_315
	nop	word ptr cs:[rax + rax]
.label_320:
	mov	r12, qword ptr [r13]
	test	r12, r12
	je	.label_321
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	je	.label_323
	nop	word ptr [rax + rax]
.label_309:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_313
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_318
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_314
	nop	word ptr [rax + rax]
.label_318:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_314:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_309
	mov	r12, qword ptr [r13]
.label_323:
	mov	qword ptr [r13 + 8], 0
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r14 + 0x10]
	jae	.label_306
	mov	rbp, qword ptr [r14]
	shl	rbx, 4
	cmp	qword ptr [rbp + rbx], 0
	je	.label_310
	mov	rax, qword ptr [r14 + 0x48]
	test	rax, rax
	je	.label_317
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 0x48], rcx
	jmp	.label_319
	nop	dword ptr [rax + rax]
.label_310:
	add	rbp, rbx
	mov	qword ptr [rbp], r12
	inc	qword ptr [r14 + 0x18]
	jmp	.label_305
.label_317:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_311
.label_319:
	mov	qword ptr [rax], r12
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp + rbx + 8], rax
.label_305:
	mov	qword ptr [r13], 0
	dec	qword ptr [r15 + 0x18]
	mov	rax, qword ptr [r15 + 8]
.label_321:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_320
.label_315:
	mov	al, 1
.label_316:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_311:
	xor	eax, eax
	jmp	.label_316
.label_313:
	call	abort
.label_306:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4036b0

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
	je	.label_344
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_344
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_326
	cmp	rsi, r14
	je	.label_353
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_339
	mov	rax, qword ptr [r12]
.label_325:
	test	rax, rax
	jne	.label_331
	jmp	.label_326
.label_353:
	mov	rax, r14
.label_331:
	xor	ebp, ebp
	test	r15, r15
	je	.label_334
	mov	qword ptr [r15], rax
	jmp	.label_334
.label_339:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_326
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_350:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_346
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_349
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_350
.label_326:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_351
	cvtsi2ss	xmm1, rax
	jmp	.label_355
.label_351:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_355:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_332
	cvtsi2ss	xmm0, rcx
	jmp	.label_341
.label_332:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_341:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_335
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_348
	ucomiss	xmm2, dword ptr [rip + label_257]
	jbe	.label_328
	movss	xmm3, dword ptr [rip + label_262]
	ucomiss	xmm3, xmm2
	jbe	.label_328
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_266]
	jbe	.label_328
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_328
	addss	xmm3, dword ptr [rip + label_257]
	ucomiss	xmm2, xmm3
	jbe	.label_328
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_263]
	ucomiss	xmm5, xmm4
	jb	.label_328
	ucomiss	xmm4, xmm3
	ja	.label_340
.label_328:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_342]
	jmp	.label_340
.label_348:
	mov	eax, OFFSET FLAT:default_tuning
.label_340:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_335
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_352
	mulss	xmm0, xmm2
.label_352:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_265]
	jae	.label_334
	movss	xmm1, dword ptr [rip + label_264]
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
	je	.label_334
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_344
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_335
	cmp	rsi, r14
	mov	rax, r14
	je	.label_329
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_347
	mov	rax, qword ptr [r12]
.label_329:
	test	rax, rax
	jne	.label_354
.label_335:
	cmp	qword ptr [r12], 0
	je	.label_327
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_330
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_333
.label_327:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_337]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_338
.label_330:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_334
.label_333:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_338:
	mov	ebp, 1
.label_334:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_346:
	mov	rax, r14
	jmp	.label_325
.label_349:
	mov	rax, qword ptr [rbp]
	jmp	.label_325
.label_347:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_335
	lea	rbp, [rbx + rbp + 8]
.label_345:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_336
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_343
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_345
	jmp	.label_335
.label_336:
	mov	rax, r14
	jmp	.label_329
.label_343:
	mov	rax, qword ptr [rbp]
	jmp	.label_329
.label_344:
	call	abort
.label_354:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039f0

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
	je	.label_356
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_356:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403a20
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
	jae	.label_368
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_362
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_374
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_375
	mov	r14, qword ptr [r13]
.label_374:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_365
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_358
.label_375:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_362
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_372:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_369
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_371
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_372
	jmp	.label_362
.label_365:
	mov	qword ptr [r13], 0
	jmp	.label_358
.label_369:
	mov	rcx, rax
	jmp	.label_377
.label_371:
	mov	r14, qword ptr [rcx]
.label_377:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_358:
	xor	r12d, r12d
	test	r14, r14
	je	.label_362
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_361
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_367
	cvtsi2ss	xmm1, rax
	jmp	.label_370
.label_367:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_370:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_373
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_376
.label_373:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_376:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_361
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_363
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_257]
	jbe	.label_366
	movss	xmm4, dword ptr [rip + label_262]
	ucomiss	xmm4, xmm3
	jbe	.label_366
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_366
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_266]
	jbe	.label_366
	movss	xmm4, dword ptr [rip + label_257]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_366
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_263]
	ucomiss	xmm5, xmm3
	jb	.label_366
	ucomiss	xmm3, xmm4
	ja	.label_357
.label_366:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_357
.label_363:
	mov	eax, OFFSET FLAT:default_tuning
.label_357:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_361
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_364
	mulss	xmm0, dword ptr [rax + 8]
.label_364:
	movss	xmm1, dword ptr [rip + label_264]
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
	jne	.label_361
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_360
	nop	word ptr cs:[rax + rax]
.label_359:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_359
.label_360:
	mov	qword ptr [r15 + 0x48], 0
.label_361:
	mov	r12, r14
.label_362:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_368:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cc0

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
	#Procedure 0x403cf0
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
	#Procedure 0x403d00
	.globl triple_compare
	.type triple_compare, @function
triple_compare:

	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_378
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_379
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_378:
	xor	eax, eax
	ret	
.label_379:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d30

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_380
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_381
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_380:
	xor	eax, eax
	ret	
.label_381:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d60

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
	#Procedure 0x403d80

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_382
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_384
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_386
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_384
	mov	esi, OFFSET FLAT:label_385
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_387
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_387:
	mov	rbx, r14
.label_384:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_382:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_383
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e30
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
	#Procedure 0x403e70
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
	#Procedure 0x403e80
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
	#Procedure 0x403e90
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
	#Procedure 0x403ed0
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
	#Procedure 0x403ef0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_388
	test	rdx, rdx
	je	.label_388
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_388:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f20
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
	#Procedure 0x403fa0

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
	jmp	.label_439
	nop	
.label_436:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_429
	or	al, dl
	jne	.label_429
	test	dil, 1
	jne	.label_431
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_429
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_439
	jmp	.label_429
.label_693:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_443
	test	rbp, rbp
	je	.label_455
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_455:
	mov	r14d, 1
	jmp	.label_449
.label_694:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_450
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_389
.label_443:
	xor	r14d, r14d
.label_449:
	mov	eax, OFFSET FLAT:label_450
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_462
	nop	
.label_439:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_470
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_476]
.label_695:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_483
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_414
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_696:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_496
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_496
	xor	r14d, r14d
	nop	
.label_427:
	cmp	r14, rbp
	jae	.label_402
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_402:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_427
.label_496:
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
	jmp	.label_389
.label_688:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_389
.label_691:
	mov	al, 1
.label_689:
	mov	r12b, 1
.label_692:
	test	r12b, 1
	mov	cl, 1
	je	.label_397
	mov	ecx, eax
.label_397:
	mov	al, cl
.label_690:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_400
	test	rbp, rbp
	je	.label_407
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_407:
	mov	r14d, 1
	jmp	.label_409
.label_400:
	xor	r14d, r14d
.label_409:
	mov	ecx, OFFSET FLAT:label_414
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_462:
	mov	sil, r12b
.label_389:
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
	jmp	.label_421
	nop	word ptr cs:[rax + rax]
.label_417:
	inc	r12
.label_421:
	cmp	r11, -1
	je	.label_457
	cmp	r12, r11
	jne	.label_459
	jmp	.label_461
	nop	word ptr cs:[rax + rax]
.label_457:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_465
.label_459:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_471
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_475
	cmp	r11, -1
	jne	.label_475
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_475:
	cmp	rbx, r11
	jbe	.label_487
.label_471:
	xor	esi, esi
.label_438:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_489
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_492]
.label_705:
	test	r12, r12
	jne	.label_446
	jmp	.label_396
	nop	word ptr cs:[rax + rax]
.label_487:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_504
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_438
	jmp	.label_408
.label_504:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_438
.label_709:
	xor	eax, eax
	cmp	r11, -1
	je	.label_515
	test	r12, r12
	jne	.label_393
	cmp	r11, 1
	je	.label_396
	xor	r13d, r13d
	jmp	.label_390
.label_698:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_403
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_408
	cmp	r8d, 2
	jne	.label_413
	mov	eax, r9d
	and	al, 1
	jne	.label_413
	cmp	r14, rbp
	jae	.label_415
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_415:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_418
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_418:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_424
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_424:
	add	r14, 3
	mov	r9b, 1
.label_413:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_430
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_430:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_435
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_435
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_435
	cmp	r14, rbp
	jae	.label_447
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_447:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_454
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_454:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_390
.label_699:
	mov	bl, 0x62
	jmp	.label_433
.label_700:
	mov	cl, 0x74
	jmp	.label_451
.label_701:
	mov	bl, 0x76
	jmp	.label_433
.label_702:
	mov	bl, 0x66
	jmp	.label_433
.label_703:
	mov	cl, 0x72
	jmp	.label_451
.label_706:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_468
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_416
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
	jae	.label_478
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_478:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_490
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_490:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_495
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_495:
	add	r14, 3
	xor	r9d, r9d
.label_468:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_390
.label_707:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_499
	cmp	r8d, 2
	jne	.label_446
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_446
	jmp	.label_416
.label_708:
	cmp	r8d, 2
	jne	.label_507
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_416
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_477
.label_489:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_512
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_399
.label_515:
	test	r12, r12
	jne	.label_410
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_410
.label_396:
	mov	dl, 1
.label_704:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_416
	xor	eax, eax
	mov	r13b, dl
.label_390:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_422
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_425
	jmp	.label_426
	nop	word ptr cs:[rax + rax]
.label_422:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_426
.label_425:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_432
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_440
	nop	dword ptr [rax]
.label_426:
	test	sil, sil
.label_440:
	mov	ebx, r15d
	je	.label_442
	jmp	.label_445
.label_432:
	mov	ebx, r15d
	jmp	.label_445
.label_403:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_417
	xor	r15d, r15d
	jmp	.label_446
.label_507:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_451
	xor	eax, eax
	mov	r15b, 0x5c
.label_477:
	xor	r13d, r13d
	jmp	.label_442
.label_451:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_416
.label_433:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_390
	nop	
.label_445:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_408
	cmp	r8d, 2
	jne	.label_469
	mov	eax, r9d
	and	al, 1
	jne	.label_469
	cmp	r14, rbp
	jae	.label_474
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_474:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_479
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_479:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_481
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_481:
	add	r14, 3
	mov	r9b, 1
.label_469:
	cmp	r14, rbp
	jae	.label_488
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_488:
	inc	r14
	jmp	.label_441
.label_512:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_493
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_493:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_498
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_497:
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
	je	.label_508
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_395
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_411
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_405
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_412:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_501
	bt	rsi, rdx
	jb	.label_416
.label_501:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_412
.label_405:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_428
	xor	r13d, r13d
.label_428:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_497
	jmp	.label_392
.label_435:
	xor	r13d, r13d
	jmp	.label_390
.label_410:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_390
.label_499:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_446
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_446
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_446
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_456
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_510
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_464
	cmp	r14, rbp
	jae	.label_467
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_467:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_473
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_473:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_482
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_482:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_452
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_452:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_510:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_390
.label_446:
	xor	eax, eax
.label_393:
	xor	r13d, r13d
	jmp	.label_390
.label_498:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_514:
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
	je	.label_505
	cmp	rbp, -1
	je	.label_506
	cmp	rbp, -2
	je	.label_508
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_472
	xor	r13d, r13d
.label_472:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_514
	jmp	.label_392
.label_508:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_404
	lea	rax, [r10 + r12]
.label_494:
	cmp	byte ptr [rax + rsi], 0
	je	.label_404
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_494
.label_404:
	mov	qword ptr [rsp + 0x40], rsi
.label_395:
	xor	r13d, r13d
	jmp	.label_411
.label_506:
	xor	r13d, r13d
.label_505:
	mov	r10, qword ptr [rsp + 0x28]
.label_411:
	mov	r12, qword ptr [rsp + 0x40]
.label_392:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_399:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_420
	test	al, al
	je	.label_420
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_390
.label_420:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_437
	nop	word ptr [rax + rax]
.label_391:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_437:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_444
	test	sil, 1
	je	.label_434
	cmp	r14, rbp
	jae	.label_448
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_448:
	inc	r14
	xor	esi, esi
	jmp	.label_434
	nop	word ptr cs:[rax + rax]
.label_444:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_408
	cmp	r8d, 2
	jne	.label_460
	mov	eax, r9d
	and	al, 1
	jne	.label_460
	cmp	r14, rbp
	jae	.label_463
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_463:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_394
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_394:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_513
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_513:
	add	r14, 3
	mov	r9b, 1
.label_460:
	cmp	r14, rbp
	jae	.label_480
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_480:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_511
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_511:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_491
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_491:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_434:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_442
	test	r9b, 1
	je	.label_500
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_398
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_503
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_503:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_509
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_509:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_500
	nop	word ptr cs:[rax + rax]
.label_398:
	mov	rbx, rcx
.label_500:
	cmp	r14, rbp
	jae	.label_391
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_391
	nop	
.label_442:
	test	r9b, 1
	je	.label_401
	and	al, 1
	jne	.label_401
	cmp	r14, rbp
	jae	.label_406
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_406:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_485
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_485:
	add	r14, 2
	xor	r9d, r9d
.label_401:
	mov	ebx, r15d
.label_441:
	cmp	r14, rbp
	jae	.label_419
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_419:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_417
.label_456:
	xor	r13d, r13d
	jmp	.label_390
	nop	word ptr cs:[rax + rax]
.label_461:
	mov	rcx, r12
.label_465:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_436
	or	al, dl
	jne	.label_436
	mov	r11, rcx
	jmp	.label_408
.label_416:
	mov	eax, 2
.label_466:
	mov	qword ptr [rsp + 0x38], rax
.label_408:
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
.label_453:
	mov	r14, rax
.label_502:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_429:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_458
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_423
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_423
	inc	rdx
	nop	dword ptr [rax + rax]
.label_486:
	cmp	r14, rbp
	jae	.label_484
	mov	byte ptr [rcx + r14], al
.label_484:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_486
	jmp	.label_423
.label_431:
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
	jmp	.label_453
.label_458:
	mov	rcx, qword ptr [rsp + 0x10]
.label_423:
	cmp	r14, rbp
	jae	.label_502
	mov	byte ptr [rcx + r14], 0
	jmp	.label_502
.label_464:
	mov	eax, 5
	jmp	.label_466
.label_470:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404dd0
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
	#Procedure 0x404ea0
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
	je	.label_516
	mov	qword ptr [rax], rbx
.label_516:
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
	#Procedure 0x404f90
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_517
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_519:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_519
.label_517:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_520
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_521], OFFSET FLAT:slot0
.label_520:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_518
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_518:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405030
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405040

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
	js	.label_522
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_525
	cmp	r12d, 0x7fffffff
	je	.label_527
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
	jne	.label_523
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_523:
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
.label_525:
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
	jbe	.label_528
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_524
.label_528:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_526
	mov	rdi, r14
	call	free
.label_526:
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
.label_524:
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
.label_522:
	call	abort
.label_527:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405200
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405210
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
	#Procedure 0x405230
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
	#Procedure 0x405250
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
	je	.label_529
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
.label_529:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4052c0
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
	je	.label_530
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
.label_530:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405330

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
	je	.label_531
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
.label_531:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053a0
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
	je	.label_532
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
.label_532:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405410
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_533]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_534]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_535]
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
	#Procedure 0x405480
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_533]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_534]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_535]
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
	#Procedure 0x4054f0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_533]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_534]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_535]
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
	#Procedure 0x405550
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_533]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_534]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_535]
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
	#Procedure 0x4055b0

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
	je	.label_536
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
.label_536:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405650
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_533]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_534]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_535]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_537
	test	rdx, rdx
	je	.label_537
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_537:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4056c0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_533]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_534]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_535]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_538
	test	rdx, rdx
	je	.label_538
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_538:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405730
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_533]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_534]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_535]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_539
	test	rsi, rsi
	je	.label_539
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_539:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4057a0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_533]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_534]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_535]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_540
	test	rsi, rsi
	je	.label_540
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
.label_540:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405810
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405820
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
	#Procedure 0x405840
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405860
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
	#Procedure 0x405880

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
	jne	.label_542
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_547
	cmp	ecx, 0x55
	jne	.label_541
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_541
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_541
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_541
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_541
	cmp	byte ptr [rax + 5], 0
	jne	.label_541
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_544
	mov	eax, OFFSET FLAT:label_545
	jmp	.label_546
.label_547:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_541
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_541
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_541
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_541
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_541
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_541
	cmp	byte ptr [rax + 7], 0
	je	.label_543
.label_541:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_450
	mov	eax, OFFSET FLAT:label_414
.label_546:
	cmove	rax, rcx
.label_542:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_543:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_548
	mov	eax, OFFSET FLAT:label_549
	jmp	.label_546
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405950

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
	#Procedure 0x405970

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
	jne	.label_551
	mov	qword ptr [rsp + 0x10], r15
	mov	dword ptr [rsp + 8], r12d
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_552
.label_551:
	xor	ebp, ebp
.label_556:
	mov	eax, ebp
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_552:
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
	je	.label_553
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_40
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_553:
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
	je	.label_554
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_40
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_554:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_555
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_550
.label_555:
	xor	ebp, ebp
.label_550:
	mov	rdi, rbx
	call	free
	jmp	.label_556
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ac0

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
	je	.label_557
	mov	edx, OFFSET FLAT:label_567
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_573
.label_557:
	mov	edx, OFFSET FLAT:label_574
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_573:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_561
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
	mov	esi, OFFSET FLAT:label_575
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_562
	jmp	qword ptr [(r12 * 8) + label_563]
.label_677:
	add	rsp, 8
	jmp	.label_560
.label_562:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_570
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
	jmp	.label_560
.label_678:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_558
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
.label_679:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_571
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
.label_680:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_568
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
.label_681:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_565
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
	jmp	.label_560
.label_682:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_564
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
	jmp	.label_560
.label_683:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_566
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
	jmp	.label_560
.label_684:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_569
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
	jmp	.label_560
.label_686:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_572
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
	jmp	.label_560
.label_685:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_559
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
.label_560:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e20
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_576:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_576
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e50

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_581
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_584
.label_581:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_584:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_583
	cmp	r10d, 0x29
	jae	.label_580
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_582
.label_580:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_582:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_583
	cmp	r10d, 0x29
	jae	.label_578
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_579
.label_578:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_579:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_583
	cmp	r10d, 0x29
	jae	.label_589
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_577
.label_589:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_577:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_583
	cmp	r10d, 0x29
	jae	.label_587
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_588
.label_587:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_588:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_583
	cmp	r10d, 0x29
	jae	.label_585
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_586
.label_585:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_586:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_583
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_583
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_583
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_583
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_583:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406040

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_590
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_590:
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
	#Procedure 0x4060d0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_591
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_592
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_594
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_23
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_593
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406150
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_595
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_596
	test	rax, rax
	je	.label_595
.label_596:
	pop	rbx
	ret	
.label_595:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406190

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_597
	test	rax, rax
	je	.label_598
.label_597:
	pop	rbx
	ret	
.label_598:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061b0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_599
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_600
	test	rbx, rbx
	jne	.label_600
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_600:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_601
	test	rax, rax
	je	.label_599
.label_601:
	pop	rbx
	ret	
.label_599:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406200

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_602
	test	rbx, rbx
	jne	.label_602
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_602:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_604
	test	rax, rax
	je	.label_603
.label_604:
	pop	rbx
	ret	
.label_603:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406230
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_608
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_610
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_605
.label_608:
	test	rcx, rcx
	jne	.label_611
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_611:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_606
.label_605:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_607
	test	rbx, rbx
	jne	.label_607
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_607:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_609
	test	rax, rax
	je	.label_610
.label_609:
	pop	rbx
	ret	
.label_610:
	call	xalloc_die
.label_606:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062d0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_612
	test	rax, rax
	je	.label_613
.label_612:
	pop	rbx
	ret	
.label_613:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062f0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_616
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_618
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_615
	call	free
	xor	eax, eax
	jmp	.label_617
.label_616:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_614
	mov	qword ptr [rsi], rbx
.label_615:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_617
	test	rax, rax
	je	.label_614
.label_617:
	pop	rbx
	ret	
.label_614:
	call	xalloc_die
.label_618:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406360
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
	je	.label_620
	test	r14, r14
	je	.label_619
.label_620:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_619:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063a0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_621
	call	rpl_calloc
	test	rax, rax
	je	.label_621
	pop	rcx
	ret	
.label_621:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063d0

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
	je	.label_622
	test	r15, r15
	je	.label_623
.label_622:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_623:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406410

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
	je	.label_625
	test	r15, r15
	je	.label_624
.label_625:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_624:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406460

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_626
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_40
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406490

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_628
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_627
.label_628:
	mov	rax, rbx
	pop	rbx
	ret	
.label_627:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064c0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_629
	test	rsi, rsi
	mov	ecx, 1
	je	.label_630
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_630
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_629:
	mov	ecx, 1
.label_630:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406510

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
	je	.label_631
	cmp	r15, -2
	jb	.label_631
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_631
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_631:
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
	#Procedure 0x406570

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
	je	.label_635
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_638:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_633
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_636
.label_633:
	cmp	r13, r12
	jb	.label_637
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_639
	add	r12, r12
	jmp	.label_640
	nop	word ptr cs:[rax + rax]
.label_639:
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	r12, rax
	jae	.label_634
.label_640:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_638
	jmp	.label_635
.label_637:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp], rbx
	jmp	.label_635
.label_634:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_632
.label_636:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_632:
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_635:
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
	#Procedure 0x406680

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
	jne	.label_642
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_641
	test	cl, cl
	jne	.label_641
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_641
.label_642:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_641
	call	__errno_location
	mov	dword ptr [rax], 0
.label_641:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4066e0

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_643
	pop	rcx
	ret	
.label_643:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406700
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
.label_645:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_644
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_645
.label_644:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406740

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
.label_649:
	mov	rbx, rax
	lea	r12, [rbx - 1]
	cmp	r15, r12
	jae	.label_646
	lea	rax, [rbx - 1]
	cmp	byte ptr [r14 + rbx - 2], 0x2f
	je	.label_649
.label_646:
	xor	edi, edi
	cmp	rbx, 1
	sete	dil
	add	rdi, rbx
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_648
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	memcpy
	cmp	rbx, 1
	jne	.label_647
	mov	byte ptr [r15], 0x2e
	mov	r12d, 1
.label_647:
	mov	byte ptr [r15 + r12], 0
	mov	rax, r15
.label_648:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067e0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_650:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_650
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_654
	nop	word ptr cs:[rax + rax]
.label_653:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_654:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_653
	test	dl, dl
	je	.label_652
	mov	ecx, esi
	and	cl, 1
	je	.label_651
	xor	esi, esi
.label_651:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_653
.label_652:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406840

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_656:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_655
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_656
.label_655:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406870

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_658
	cmp	byte ptr [rax], 0x43
	jne	.label_660
	cmp	byte ptr [rax + 1], 0
	je	.label_657
.label_660:
	mov	esi, OFFSET FLAT:label_659
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_658
.label_657:
	xor	ebx, ebx
.label_658:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4068b0

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_661
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_662:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_662
.label_661:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4068e0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_59
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_663
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406910

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_664
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_666
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_664
.label_666:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_664
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_665
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_665:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_664:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406990

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_667
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_667
	test	byte ptr [rbx + 1], 1
	je	.label_667
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_667:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4069d0

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
	jne	.label_668
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_668
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_669
.label_668:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_669:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_670
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_670:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x406a40

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
