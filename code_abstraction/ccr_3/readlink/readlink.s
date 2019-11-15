	.section	.text
	.align	16
	#Procedure 0x401570

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_24
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
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
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_22
	mov	ecx, OFFSET FLAT:label_13
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_17
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_17
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_17:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_13
	mov	ecx, OFFSET FLAT:label_14
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_14
	mov	ecx, OFFSET FLAT:label_26
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_24:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
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
	#Procedure 0x401750

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
	mov	r14, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_53
	call	setlocale
	mov	edi, OFFSET FLAT:label_29
	mov	esi, OFFSET FLAT:label_55
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_29
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	ebx, 0xffffffff
	xor	ecx, ecx
.label_700:
	mov	r15d, ecx
	mov	ebp, ebx
	jmp	.label_31
.label_696:
	mov	ebp, 2
	nop	
.label_31:
	mov	ebx, ebp
	jmp	.label_27
	nop	word ptr cs:[rax + rax]
.label_698:
	mov	byte ptr [rip + verbose],  0
.label_27:
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:label_46
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x64
	jle	.label_39
	add	eax, -0x65
	cmp	eax, 0x15
	ja	.label_51
	mov	cl, 1
	jmp	qword ptr [(rax * 8) + label_54]
.label_697:
	mov	byte ptr [rip + no_newline],  1
	jmp	.label_27
.label_699:
	mov	byte ptr [rip + verbose],  1
	jmp	.label_27
.label_695:
	mov	ebp, 1
	jmp	.label_31
.label_39:
	cmp	eax, -1
	jne	.label_32
	mov	eax, dword ptr [rip + optind]
	cmp	eax, r13d
	jge	.label_36
	mov	ecx, r13d
	sub	ecx, eax
	cmp	ecx, 2
	jl	.label_30
	cmp	byte ptr [rip + no_newline],  1
	jne	.label_43
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	eax, dword ptr [rip + optind]
.label_43:
	mov	byte ptr [rip + no_newline],  0
.label_30:
	xor	r12d, r12d
	cmp	eax, r13d
	jge	.label_47
	xor	ecx, ecx
	test	r15b, r15b
	mov	edx, 0xa
	mov	dword ptr [rsp], 0
	cmovne	edx, ecx
	mov	dword ptr [rsp + 4], edx
	jne	.label_56
	mov	cl, 0xa
	mov	dword ptr [rsp], ecx
.label_56:
	xor	r12d, r12d
	cmp	ebx, -1
	jne	.label_35
	jmp	.label_38
.label_42:
	mov	esi, dword ptr [rsp + 4]
	call	__overflow
	jmp	.label_48
	nop	word ptr cs:[rax + rax]
.label_35:
	cdqe	
	mov	r15, qword ptr [r14 + rax*8]
	mov	rdi, r15
	mov	esi, ebx
	call	canonicalize_filename_mode
	mov	rbp, rax
	test	rbp, rbp
	je	.label_41
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbp
	call	fputs_unlocked
	movzx	eax, byte ptr [rip + no_newline]
	test	al, al
	jne	.label_48
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_42
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	ecx, dword ptr [rsp]
	mov	byte ptr [rax], cl
.label_48:
	mov	rdi, rbp
	call	free
	jmp	.label_34
	nop	word ptr [rax + rax]
.label_41:
	mov	r12d, 1
	cmp	byte ptr [rip + verbose],  1
	jne	.label_34
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_37
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	dword ptr [rax + rax]
.label_34:
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, r13d
	jl	.label_35
	jmp	.label_47
.label_45:
	mov	esi, dword ptr [rsp + 4]
	call	__overflow
	jmp	.label_28
	nop	word ptr [rax + rax]
.label_38:
	cdqe	
	mov	rbp, qword ptr [r14 + rax*8]
	mov	esi, 0x3f
	mov	rdi, rbp
	call	areadlink_with_size
	mov	rbx, rax
	test	rbx, rbx
	je	.label_49
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbx
	call	fputs_unlocked
	movzx	eax, byte ptr [rip + no_newline]
	test	al, al
	jne	.label_28
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_45
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	ecx, dword ptr [rsp]
	mov	byte ptr [rax], cl
.label_28:
	mov	rdi, rbx
	call	free
	jmp	.label_52
	nop	dword ptr [rax]
.label_49:
	mov	r12d, 1
	cmp	byte ptr [rip + verbose],  1
	jne	.label_52
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_37
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	dword ptr [rax + rax]
.label_52:
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, r13d
	jl	.label_38
.label_47:
	mov	eax, r12d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_32:
	cmp	eax, 0xffffff7d
	je	.label_50
	cmp	eax, 0xffffff7e
	jne	.label_51
	xor	edi, edi
	call	usage
.label_50:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_14
	mov	edx, OFFSET FLAT:label_22
	mov	r8d, OFFSET FLAT:label_33
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_51:
	mov	edi, 1
	call	usage
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
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
	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ae0

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
	je	.label_59
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_61:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_65
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_58
.label_65:
	cmp	r13, r12
	jb	.label_60
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_62
	add	r12, r12
	jmp	.label_63
	nop	word ptr cs:[rax + rax]
.label_62:
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	r12, rax
	jae	.label_57
.label_63:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_61
	jmp	.label_59
.label_60:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp], rbx
	jmp	.label_59
.label_57:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_64
.label_58:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_64:
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_59:
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
	#Procedure 0x401bf0

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
	jne	.label_72
	test	r12, r12
	je	.label_72
	mov	al, byte ptr [r12]
	cmp	al, 0x2f
	je	.label_73
	test	al, al
	jne	.label_77
	call	__errno_location
	mov	dword ptr [rax], 2
	jmp	.label_81
.label_72:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_81:
	xor	ebp, ebp
.label_96:
	mov	rax, rbp
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_73:
	mov	edi, 0x1000
	call	xmalloc
	mov	rdi, rax
	mov	byte ptr [rdi], 0x2f
	lea	r8, [rdi + 0x1000]
	lea	rbp, [rdi + 1]
	jmp	.label_95
.label_77:
	call	xgetcwd
	xor	ebp, ebp
	test	rax, rax
	je	.label_96
	xor	esi, esi
	mov	rbp, rax
	mov	rdi, rbp
	call	__rawmemchr
	mov	rdi, rbp
	mov	r8, rax
	mov	rbp, r8
	sub	rbp, rdi
	cmp	rbp, 0xfff
	jg	.label_108
	mov	esi, 0x1000
	call	xrealloc
	mov	rdi, rax
	add	rbp, rdi
	mov	r8, rdi
	add	r8, 0x1000
	jmp	.label_95
.label_108:
	mov	rbp, r8
.label_95:
	mov	al, byte ptr [r12]
	xor	r15d, r15d
	test	al, al
	je	.label_102
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
.label_128:
	mov	qword ptr [rsp + 0x10], r15
	mov	r13, r14
.label_113:
	lea	rcx, [rdi + 1]
	mov	r12, rbp
.label_120:
	cmp	r12, rcx
	jbe	.label_79
	mov	edx, eax
	nop	word ptr cs:[rax + rax]
.label_110:
	cmp	dl, 0x2f
	mov	r14, r13
	lea	rsi, [r13 + 1]
	jne	.label_112
	nop	dword ptr [rax]
.label_111:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	dl, 0x2f
	je	.label_111
	lea	r14, [rsi - 1]
.label_112:
	mov	eax, edx
	mov	r13, r14
	jmp	.label_87
	nop	word ptr cs:[rax + rax]
.label_103:
	movzx	eax, byte ptr [r13 + 1]
	inc	r13
.label_87:
	cmp	al, 0x2f
	je	.label_101
	test	al, al
	jne	.label_103
.label_101:
	mov	r15, r13
	sub	r15, r14
	cmp	r15, 1
	jne	.label_106
	cmp	byte ptr [r14], 0x2e
	jne	.label_94
	mov	dl, byte ptr [r13]
	test	dl, dl
	jne	.label_110
	jmp	.label_97
.label_106:
	test	r15, r15
	je	.label_97
	cmp	r15, 2
	jne	.label_67
	cmp	dl, 0x2e
	jne	.label_89
	cmp	byte ptr [rsi], 0x2e
	jne	.label_89
	dec	r12
	mov	rdx, r12
	nop	
.label_125:
	mov	r12, rdx
	cmp	r12, rdi
	jbe	.label_121
	lea	rdx, [r12 - 1]
	cmp	byte ptr [r12 - 1], 0x2f
	jne	.label_125
.label_121:
	test	al, al
	jne	.label_120
	jmp	.label_97
.label_79:
	cmp	al, 0x2f
	mov	edx, eax
	mov	r14, r13
	lea	rcx, [r13 + 1]
	jne	.label_132
	nop	
.label_66:
	movzx	edx, byte ptr [rcx]
	inc	rcx
	cmp	dl, 0x2f
	je	.label_66
	lea	r14, [rcx - 1]
.label_132:
	mov	eax, edx
	mov	r13, r14
	jmp	.label_70
	nop	word ptr cs:[rax + rax]
.label_82:
	movzx	eax, byte ptr [r13 + 1]
	inc	r13
.label_70:
	test	al, al
	je	.label_80
	cmp	al, 0x2f
	jne	.label_82
.label_80:
	mov	r15, r13
	sub	r15, r14
	cmp	r15, 1
	je	.label_76
	cmp	r15, 2
	jne	.label_88
	cmp	dl, 0x2e
	jne	.label_89
	cmp	byte ptr [rcx], 0x2e
	je	.label_92
	jmp	.label_89
.label_76:
	cmp	dl, 0x2e
	jne	.label_94
.label_92:
	test	al, al
	jne	.label_79
	jmp	.label_97
.label_94:
	mov	r15d, 1
.label_67:
	cmp	byte ptr [r12 - 1], 0x2f
	je	.label_99
	mov	byte ptr [r12], 0x2f
	inc	r12
.label_99:
	lea	rax, [r12 + r15]
	cmp	rax, r8
	jae	.label_104
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 8], rdi
	jmp	.label_107
.label_104:
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
.label_107:
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	lea	rbp, [r12 + r15]
	mov	byte ptr [r12 + r15], 0
	cmp	dword ptr [rsp + 0x54], 6
	jne	.label_123
	mov	dword ptr [rsp + 0x80], 0
	xor	eax, eax
	jmp	.label_129
.label_123:
	cmp	dword ptr [rsp + 0x50], 0
	lea	rdx, [rsp + 0x68]
	mov	edi, 1
	jne	.label_133
	mov	rsi, qword ptr [rsp + 8]
	call	__lxstat
	jmp	.label_98
.label_133:
	mov	rsi, qword ptr [rsp + 8]
	call	__xstat
.label_98:
	test	eax, eax
	je	.label_74
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x60]
	cmp	al, 1
	je	.label_78
	test	al, al
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x20]
	lea	rdx, [rsp + 0x68]
	je	.label_134
	mov	dword ptr [rsp + 0x80], 0
	xor	eax, eax
	jmp	.label_90
.label_74:
	mov	eax, dword ptr [rsp + 0x80]
.label_129:
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x20]
	lea	rdx, [rsp + 0x68]
.label_90:
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_100
	mov	qword ptr [rsp + 0x40], rbp
	mov	dword ptr [rsp + 0x28], ebx
	mov	rax, qword ptr [rsp + 0x38]
	test	rax, rax
	jne	.label_105
	mov	edi, 7
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare_ino_str
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	lea	rdx, [rsp + 0x68]
	test	rax, rax
	je	.label_117
.label_105:
	mov	rbx, rax
	mov	rdi, rbx
	mov	r14, qword ptr [rsp + 0x30]
	mov	rsi, r14
	mov	rbp, rdx
	call	seen_file
	test	al, al
	mov	qword ptr [rsp + 0x38], rbx
	je	.label_122
	cmp	dword ptr [rsp + 0x2c], 2
	mov	ebx, dword ptr [rsp + 0x28]
	mov	eax, 0x28
	cmovne	ebx, eax
	mov	eax, dword ptr [rsp + 0x4c]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_127
.label_122:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, rbp
	call	record_file
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdi, qword ptr [rsp + 8]
	call	areadlink_with_size
	test	rax, rax
	jne	.label_126
	call	__errno_location
	cmp	dword ptr [rsp + 0x2c], 2
	mov	ebx, dword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x40]
	jne	.label_84
	cmp	dword ptr [rax], 0xc
	je	.label_84
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x20]
	jmp	.label_131
.label_78:
	mov	rax, r13
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x20]
	nop	dword ptr [rax + rax]
.label_114:
	movzx	ecx, byte ptr [rax]
	inc	rax
	cmp	cl, 0x2f
	je	.label_114
	xor	eax, eax
	test	cl, cl
	setne	al
	cmp	ebx, 2
	lea	eax, [rax + rax*8 + 4]
	mov	ecx, 0xd
	cmovne	eax, ecx
.label_127:
	and	al, 0xf
	cmp	al, 4
	jne	.label_109
.label_131:
	mov	al, byte ptr [r13]
	test	al, al
	jne	.label_113
	jmp	.label_115
.label_89:
	mov	r15d, 2
	jmp	.label_67
.label_88:
	test	r15, r15
	jne	.label_67
	jmp	.label_97
.label_100:
	movzx	eax, ax
	cmp	eax, 0x4000
	je	.label_119
	cmp	dword ptr [rsp + 0x2c], 2
	je	.label_119
	mov	cl, byte ptr [r13]
	mov	eax, 0x14
	test	cl, cl
	jne	.label_124
.label_119:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, rax
	mov	r14, r13
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_130
.label_126:
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
	je	.label_71
	cmp	rcx, rax
	jbe	.label_86
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsi, rcx
	mov	r14, rdx
	call	xrealloc
	jmp	.label_91
.label_71:
	cmp	rcx, 0x1000
	mov	eax, 0x1000
	cmovbe	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	mov	rdi, rcx
	mov	r14, rdx
	call	xmalloc
.label_91:
	mov	rdx, r14
	mov	r14, rax
	jmp	.label_136
.label_86:
	mov	qword ptr [rsp + 0x18], rax
	mov	r14, qword ptr [rsp + 0x10]
.label_136:
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
	jne	.label_135
	mov	byte ptr [rcx], 0x2f
	mov	rbp, rax
	jmp	.label_118
.label_135:
	cmp	rbp, rax
	jbe	.label_118
	lea	rax, [r12 + r15 - 1]
.label_68:
	mov	rbp, rax
	cmp	rbp, rcx
	jbe	.label_118
	lea	rax, [rbp - 1]
	cmp	byte ptr [rbp - 1], 0x2f
	jne	.label_68
.label_118:
	call	free
	mov	rdi, qword ptr [rsp + 8]
	mov	r15, r14
	mov	qword ptr [rsp + 0x30], r14
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x18]
.label_130:
	mov	al, byte ptr [r14]
	test	al, al
	mov	qword ptr [rsp + 0x18], rcx
	jne	.label_128
	jmp	.label_69
.label_97:
	mov	rbp, r12
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_69
.label_102:
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
.label_69:
	lea	rax, [rdi + 1]
	cmp	rbp, rax
	jbe	.label_75
	lea	rax, [rbp - 1]
	cmp	byte ptr [rbp - 1], 0x2f
	cmove	rbp, rax
.label_75:
	mov	byte ptr [rbp], 0
	lea	rax, [rbp + 1]
	cmp	r8, rax
	je	.label_85
	mov	esi, 1
	sub	rsi, rdi
	add	rsi, rbp
	call	xrealloc
	mov	rbp, rax
	jmp	.label_93
.label_85:
	mov	rbp, rdi
.label_93:
	mov	rdi, r15
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	test	rdi, rdi
	je	.label_96
	call	hash_free
	jmp	.label_96
.label_115:
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_69
.label_84:
	mov	ebx, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_83
.label_109:
	cmp	al, 0xd
	jne	.label_96
	jmp	.label_83
.label_134:
	mov	eax, ebx
.label_124:
	mov	ebx, eax
.label_83:
	mov	ebp, ebx
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	test	rdi, rdi
	je	.label_116
	call	hash_free
.label_116:
	call	__errno_location
	mov	dword ptr [rax], ebp
	jmp	.label_81
.label_117:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4022d0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022e0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022f0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_142
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_139
	cmp	dword ptr [rbp], 0x20
	jne	.label_139
.label_142:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_138
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_139:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_140
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_137
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_37
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_138:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_137:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_141
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
	#Procedure 0x4023b0

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
	je	.label_143
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
	je	.label_144
	cmp	rax, rbx
	je	.label_143
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_143:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_144:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402430

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_145
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
.label_145:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402470
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402480
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402490
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024a0
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_146
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_153
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_149:
	cmp	qword ptr [rcx], 0
	je	.label_147
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_150:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_150
	cmp	rdi, rax
	cmova	rax, rdi
.label_147:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_148
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_151:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_151
	cmp	rdi, rax
	cmova	rax, rdi
.label_148:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_149
.label_153:
	test	r8, r8
	je	.label_146
	cmp	qword ptr [rcx], 0
	je	.label_146
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_152:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_152
	cmp	rdx, rax
	cmova	rax, rdx
.label_146:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402560
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_160
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_163
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_159:
	cmp	qword ptr [rax], 0
	je	.label_155
	mov	rdx, rax
	nop	dword ptr [rax]
.label_162:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_162
	inc	r10
.label_155:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_164
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_157:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_157
	inc	r10
.label_164:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_159
	jmp	.label_161
.label_163:
	xor	r10d, r10d
.label_161:
	test	r8, r8
	je	.label_160
	cmp	qword ptr [rax], 0
	je	.label_160
	nop	dword ptr [rax]
.label_154:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_154
	inc	r10
.label_160:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_156
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_158
.label_156:
	xor	eax, eax
.label_158:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402620
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
	jae	.label_165
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_168
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_176:
	cmp	qword ptr [rax], 0
	je	.label_174
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_178:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_178
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_174:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_175
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_179:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_179
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_175:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_176
.label_168:
	test	r8, r8
	je	.label_165
	cmp	qword ptr [rax], 0
	je	.label_165
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_166:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_166
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_165:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_167
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_177
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_170]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_171]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_172]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_173
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_169
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
	#Procedure 0x402790

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
	jae	.label_183
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_180
	add	rbx, rax
	je	.label_180
	cmp	rsi, r12
	je	.label_182
	xor	r15d, r15d
	nop	
.label_181:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_184
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_180
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_181
.label_182:
	mov	r15, r12
	jmp	.label_180
.label_184:
	mov	r15, qword ptr [rbx]
.label_180:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_183:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402810
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_185
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_188
	nop	word ptr cs:[rax + rax]
.label_187:
	add	rcx, 0x10
.label_188:
	cmp	rcx, rdx
	jae	.label_186
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_187
.label_185:
	ret	
.label_186:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402850
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
	jae	.label_192
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_193:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_189
	test	rdx, rdx
	jne	.label_193
	jmp	.label_190
.label_189:
	test	rdx, rdx
	je	.label_190
	mov	rax, qword ptr [rdx]
	jmp	.label_191
.label_190:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_194:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_191
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_194
.label_191:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_192:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028e0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_195
	xor	eax, eax
.label_197:
	cmp	qword ptr [r9], 0
	je	.label_196
	test	r9, r9
	je	.label_196
	mov	r8, r9
	nop	
.label_198:
	cmp	rax, rdx
	jae	.label_195
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_198
	mov	r8, qword ptr [rdi + 8]
.label_196:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_197
.label_195:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402930
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
	jae	.label_202
	xor	ebx, ebx
.label_201:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_203
	test	r13, r13
	je	.label_203
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_202
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_200:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_199
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_200
	jmp	.label_202
	nop	dword ptr [rax]
.label_199:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_203:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_201
.label_202:
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
	#Procedure 0x4029d0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_204
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_205:
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
	jne	.label_205
.label_204:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a10
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_206]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a30

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
	je	.label_207
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_220
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_210]
	jbe	.label_208
	movss	xmm1, dword ptr [rip + label_214]
	ucomiss	xmm1, xmm0
	jbe	.label_208
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_219]
	jbe	.label_208
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_208
	addss	xmm1, dword ptr [rip + label_210]
	ucomiss	xmm0, xmm1
	jbe	.label_208
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_215]
	ucomiss	xmm2, xmm0
	jb	.label_208
	ucomiss	xmm0, xmm1
	jbe	.label_208
.label_220:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_221
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_209
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_213
.label_209:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_213:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_217]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_218]
	jae	.label_208
.label_221:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_216
	nop	
.label_212:
	add	rbx, 2
.label_216:
	cmp	rbx, -1
	je	.label_208
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_211
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_222:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_211
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_222
.label_211:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_212
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_208
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_208
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_208
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
	jmp	.label_207
.label_208:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_207:
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
	#Procedure 0x402c50

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
	#Procedure 0x402c60

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c70
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_225
	nop	word ptr cs:[rax + rax]
.label_228:
	add	r14, 0x10
.label_225:
	cmp	r14, rax
	jae	.label_227
	cmp	qword ptr [r14], 0
	je	.label_228
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_229
	nop	word ptr cs:[rax + rax]
.label_224:
	test	cl, 1
	je	.label_223
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_223:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_224
.label_229:
	test	cl, cl
	je	.label_226
	mov	rdi, qword ptr [r14]
	call	rax
.label_226:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_228
.label_227:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d20

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_236
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_236
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_239
	nop	
.label_234:
	add	r15, 0x10
.label_239:
	cmp	r15, rax
	jae	.label_236
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_234
	test	r15, r15
	je	.label_234
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_235
.label_238:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_235:
	test	rbx, rbx
	jne	.label_238
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_234
.label_236:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_231
	nop	
.label_232:
	add	r15, 0x10
.label_231:
	cmp	r15, rax
	jae	.label_230
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_232
	nop	word ptr cs:[rax + rax]
.label_237:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_237
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_232
.label_230:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_233
.label_240:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_240
.label_233:
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
	#Procedure 0x402df0

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
	jne	.label_255
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_242
	cvtsi2ss	xmm0, rsi
	jmp	.label_247
.label_242:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_247:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_217]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_218]
	jae	.label_241
.label_255:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_251
	nop	dword ptr [rax + rax]
.label_245:
	add	rbx, 2
.label_251:
	cmp	rbx, -1
	je	.label_241
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_244
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_259:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_244
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_259
.label_244:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_245
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_241
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_252
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_241
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
	je	.label_248
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_252
.label_248:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_243
	nop	
.label_253:
	add	r12, 0x10
.label_243:
	cmp	r12, r15
	jae	.label_250
	cmp	qword ptr [r12], 0
	je	.label_253
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_257
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_254:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_249
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_256
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_258
	nop	word ptr [rax + rax]
.label_256:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_258:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_254
.label_257:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_253
.label_250:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_246
	mov	rdi, qword ptr [rsp]
	call	free
.label_241:
	xor	ebp, ebp
.label_252:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_249:
	call	abort
.label_246:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403080

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
	jae	.label_260
	test	dl, dl
	je	.label_272
	nop	dword ptr [rax]
.label_261:
	cmp	qword ptr [r13], 0
	je	.label_274
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	je	.label_279
	mov	rsi, qword ptr [r14 + 0x10]
	nop	dword ptr [rax + rax]
.label_275:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_266
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_273
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_270
	nop	word ptr [rax + rax]
.label_273:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_270:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_275
	mov	rax, qword ptr [r15 + 8]
.label_279:
	mov	qword ptr [r13 + 8], 0
.label_274:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_261
	jmp	.label_260
	nop	word ptr cs:[rax + rax]
.label_272:
	mov	r12, qword ptr [r13]
	test	r12, r12
	je	.label_271
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	je	.label_267
	nop	word ptr [rax + rax]
.label_263:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_266
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_269
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_280
	nop	word ptr [rax + rax]
.label_269:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_280:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_263
	mov	r12, qword ptr [r13]
.label_267:
	mov	qword ptr [r13 + 8], 0
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r14 + 0x10]
	jae	.label_278
	mov	rbp, qword ptr [r14]
	shl	rbx, 4
	cmp	qword ptr [rbp + rbx], 0
	je	.label_264
	mov	rax, qword ptr [r14 + 0x48]
	test	rax, rax
	je	.label_268
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 0x48], rcx
	jmp	.label_276
	nop	dword ptr [rax + rax]
.label_264:
	add	rbp, rbx
	mov	qword ptr [rbp], r12
	inc	qword ptr [r14 + 0x18]
	jmp	.label_277
.label_268:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_265
.label_276:
	mov	qword ptr [rax], r12
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp + rbx + 8], rax
.label_277:
	mov	qword ptr [r13], 0
	dec	qword ptr [r15 + 0x18]
	mov	rax, qword ptr [r15 + 8]
.label_271:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_272
.label_260:
	mov	al, 1
.label_262:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_265:
	xor	eax, eax
	jmp	.label_262
.label_266:
	call	abort
.label_278:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4032a0

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
	je	.label_293
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_293
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_281
	cmp	rsi, r14
	je	.label_306
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_301
	mov	rax, qword ptr [r12]
.label_305:
	test	rax, rax
	jne	.label_311
	jmp	.label_281
.label_306:
	mov	rax, r14
.label_311:
	xor	ebp, ebp
	test	r15, r15
	je	.label_284
	mov	qword ptr [r15], rax
	jmp	.label_284
.label_301:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_281
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_302:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_297
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_300
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_302
.label_281:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_303
	cvtsi2ss	xmm1, rax
	jmp	.label_307
.label_303:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_307:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_282
	cvtsi2ss	xmm0, rcx
	jmp	.label_290
.label_282:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_290:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_296
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_299
	ucomiss	xmm2, dword ptr [rip + label_210]
	jbe	.label_291
	movss	xmm3, dword ptr [rip + label_214]
	ucomiss	xmm3, xmm2
	jbe	.label_291
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_219]
	jbe	.label_291
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_291
	addss	xmm3, dword ptr [rip + label_210]
	ucomiss	xmm2, xmm3
	jbe	.label_291
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_215]
	ucomiss	xmm5, xmm4
	jb	.label_291
	ucomiss	xmm4, xmm3
	ja	.label_289
.label_291:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_294]
	jmp	.label_289
.label_299:
	mov	eax, OFFSET FLAT:default_tuning
.label_289:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_296
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_308
	mulss	xmm0, xmm2
.label_308:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_218]
	jae	.label_284
	movss	xmm1, dword ptr [rip + label_217]
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
	je	.label_284
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_293
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_296
	cmp	rsi, r14
	mov	rax, r14
	je	.label_298
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_304
	mov	rax, qword ptr [r12]
.label_298:
	test	rax, rax
	jne	.label_286
.label_296:
	cmp	qword ptr [r12], 0
	je	.label_309
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_310
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_283
.label_309:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_287]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_288
.label_310:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_284
.label_283:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_288:
	mov	ebp, 1
.label_284:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_297:
	mov	rax, r14
	jmp	.label_305
.label_300:
	mov	rax, qword ptr [rbp]
	jmp	.label_305
.label_304:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_296
	lea	rbp, [rbx + rbp + 8]
.label_295:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_285
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_292
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_295
	jmp	.label_296
.label_285:
	mov	rax, r14
	jmp	.label_298
.label_292:
	mov	rax, qword ptr [rbp]
	jmp	.label_298
.label_293:
	call	abort
.label_286:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035e0

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
	je	.label_312
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_312:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403610
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
	jae	.label_320
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_313
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_328
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_329
	mov	r14, qword ptr [r13]
.label_328:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_332
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_319
.label_329:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_313
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_324:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_321
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_323
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_324
	jmp	.label_313
.label_332:
	mov	qword ptr [r13], 0
	jmp	.label_319
.label_321:
	mov	rcx, rax
	jmp	.label_331
.label_323:
	mov	r14, qword ptr [rcx]
.label_331:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_319:
	xor	r12d, r12d
	test	r14, r14
	je	.label_313
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_317
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_322
	cvtsi2ss	xmm1, rax
	jmp	.label_326
.label_322:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_326:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_327
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_330
.label_327:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_330:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_317
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_315
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_210]
	jbe	.label_318
	movss	xmm4, dword ptr [rip + label_214]
	ucomiss	xmm4, xmm3
	jbe	.label_318
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_318
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_219]
	jbe	.label_318
	movss	xmm4, dword ptr [rip + label_210]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_318
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_215]
	ucomiss	xmm5, xmm3
	jb	.label_318
	ucomiss	xmm3, xmm4
	ja	.label_314
.label_318:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_314
.label_315:
	mov	eax, OFFSET FLAT:default_tuning
.label_314:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_317
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_316
	mulss	xmm0, dword ptr [rax + 8]
.label_316:
	movss	xmm1, dword ptr [rip + label_217]
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
	jne	.label_317
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_325
	nop	word ptr cs:[rax + rax]
.label_333:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_333
.label_325:
	mov	qword ptr [r15 + 0x48], 0
.label_317:
	mov	r12, r14
.label_313:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_320:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038b0

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
	#Procedure 0x4038e0
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
	#Procedure 0x4038f0
	.globl triple_compare
	.type triple_compare, @function
triple_compare:

	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_334
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_335
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_334:
	xor	eax, eax
	ret	
.label_335:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403920

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_336
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_337
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_336:
	xor	eax, eax
	ret	
.label_337:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403950

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
	#Procedure 0x403970

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_341
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_340
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_338
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_340
	mov	esi, OFFSET FLAT:label_343
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_339
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_339:
	mov	rbx, r14
.label_340:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_341:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_342
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a20
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
	#Procedure 0x403a60
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
	#Procedure 0x403a70
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
	#Procedure 0x403a80
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
	#Procedure 0x403ac0
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
	#Procedure 0x403ae0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_344
	test	rdx, rdx
	je	.label_344
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_344:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b10
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
	#Procedure 0x403b90

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
	jmp	.label_391
	nop	
.label_389:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_382
	or	al, dl
	jne	.label_382
	test	dil, 1
	jne	.label_384
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_382
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_391
	jmp	.label_382
.label_659:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_396
	test	rbp, rbp
	je	.label_411
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_411:
	mov	r14d, 1
	jmp	.label_401
.label_660:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_402
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_403
.label_396:
	xor	r14d, r14d
.label_401:
	mov	eax, OFFSET FLAT:label_402
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_414
	nop	
.label_391:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_423
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_406]
.label_661:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_436
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_365
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_662:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_405
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_405
	xor	r14d, r14d
	nop	
.label_354:
	cmp	r14, rbp
	jae	.label_463
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_463:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_354
.label_405:
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
	jmp	.label_403
.label_654:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_403
.label_657:
	mov	al, 1
.label_655:
	mov	r12b, 1
.label_658:
	test	r12b, 1
	mov	cl, 1
	je	.label_346
	mov	ecx, eax
.label_346:
	mov	al, cl
.label_656:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_350
	test	rbp, rbp
	je	.label_357
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_357:
	mov	r14d, 1
	jmp	.label_360
.label_350:
	xor	r14d, r14d
.label_360:
	mov	ecx, OFFSET FLAT:label_365
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_414:
	mov	sil, r12b
.label_403:
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
	jmp	.label_375
	nop	word ptr cs:[rax + rax]
.label_377:
	inc	r12
.label_375:
	cmp	r11, -1
	je	.label_410
	cmp	r12, r11
	jne	.label_412
	jmp	.label_413
	nop	word ptr cs:[rax + rax]
.label_410:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_419
.label_412:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_424
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_394
	cmp	r11, -1
	jne	.label_394
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_394:
	cmp	rbx, r11
	jbe	.label_440
.label_424:
	xor	esi, esi
.label_367:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_441
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_444]
.label_672:
	test	r12, r12
	jne	.label_399
	jmp	.label_345
	nop	word ptr cs:[rax + rax]
.label_440:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_456
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_367
	jmp	.label_358
.label_456:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_367
.label_676:
	xor	eax, eax
	cmp	r11, -1
	je	.label_468
	test	r12, r12
	jne	.label_471
	cmp	r11, 1
	je	.label_345
	xor	r13d, r13d
	jmp	.label_369
.label_665:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_352
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_358
	cmp	r8d, 2
	jne	.label_364
	mov	eax, r9d
	and	al, 1
	jne	.label_364
	cmp	r14, rbp
	jae	.label_366
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_366:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_371
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_371:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_378
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_378:
	add	r14, 3
	mov	r9b, 1
.label_364:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_383
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_383:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_387
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_387
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_387
	cmp	r14, rbp
	jae	.label_359
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_359:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_388
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_388:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_369
.label_666:
	mov	bl, 0x62
	jmp	.label_417
.label_667:
	mov	cl, 0x74
	jmp	.label_404
.label_668:
	mov	bl, 0x76
	jmp	.label_417
.label_669:
	mov	bl, 0x66
	jmp	.label_417
.label_670:
	mov	cl, 0x72
	jmp	.label_404
.label_673:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_421
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_370
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
	jae	.label_431
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_431:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_442
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_442:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_446
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_446:
	add	r14, 3
	xor	r9d, r9d
.label_421:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_369
.label_674:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_452
	cmp	r8d, 2
	jne	.label_399
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_399
	jmp	.label_370
.label_675:
	cmp	r8d, 2
	jne	.label_461
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_370
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_464
.label_441:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_466
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_349
.label_468:
	test	r12, r12
	jne	.label_361
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_361
.label_345:
	mov	dl, 1
.label_671:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_370
	xor	eax, eax
	mov	r13b, dl
.label_369:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_376
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_379
	jmp	.label_380
	nop	word ptr cs:[rax + rax]
.label_376:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_380
.label_379:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_385
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_392
	nop	dword ptr [rax]
.label_380:
	test	sil, sil
.label_392:
	mov	ebx, r15d
	je	.label_395
	jmp	.label_398
.label_385:
	mov	ebx, r15d
	jmp	.label_398
.label_352:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_377
	xor	r15d, r15d
	jmp	.label_399
.label_461:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_404
	xor	eax, eax
	mov	r15b, 0x5c
.label_464:
	xor	r13d, r13d
	jmp	.label_395
.label_404:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_370
.label_417:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_369
	nop	
.label_398:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_358
	cmp	r8d, 2
	jne	.label_422
	mov	eax, r9d
	and	al, 1
	jne	.label_422
	cmp	r14, rbp
	jae	.label_427
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_427:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_432
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_432:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_435
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_435:
	add	r14, 3
	mov	r9b, 1
.label_422:
	cmp	r14, rbp
	jae	.label_469
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_469:
	inc	r14
	jmp	.label_373
.label_466:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_445
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_445:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_449
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_425:
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
	je	.label_462
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_470
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_362
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_355
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_368:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_455
	bt	rsi, rdx
	jb	.label_370
.label_455:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_368
.label_355:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_381
	xor	r13d, r13d
.label_381:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_425
	jmp	.label_393
.label_387:
	xor	r13d, r13d
	jmp	.label_369
.label_361:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_369
.label_452:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_399
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_399
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_399
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_407
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_447
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_418
	cmp	r14, rbp
	jae	.label_420
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_420:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_426
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_426:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_465
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_465:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_409
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_409:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_447:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_369
.label_399:
	xor	eax, eax
.label_471:
	xor	r13d, r13d
	jmp	.label_369
.label_449:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_438:
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
	je	.label_457
	cmp	rbp, -1
	je	.label_460
	cmp	rbp, -2
	je	.label_462
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_348
	xor	r13d, r13d
.label_348:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_438
	jmp	.label_393
.label_462:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_353
	lea	rax, [r10 + r12]
.label_430:
	cmp	byte ptr [rax + rsi], 0
	je	.label_353
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_430
.label_353:
	mov	qword ptr [rsp + 0x40], rsi
.label_470:
	xor	r13d, r13d
	jmp	.label_362
.label_460:
	xor	r13d, r13d
.label_457:
	mov	r10, qword ptr [rsp + 0x28]
.label_362:
	mov	r12, qword ptr [rsp + 0x40]
.label_393:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_349:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_374
	test	al, al
	je	.label_374
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_369
.label_374:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_390
	nop	word ptr [rax + rax]
.label_467:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_390:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_397
	test	sil, 1
	je	.label_363
	cmp	r14, rbp
	jae	.label_400
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_400:
	inc	r14
	xor	esi, esi
	jmp	.label_363
	nop	word ptr cs:[rax + rax]
.label_397:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_358
	cmp	r8d, 2
	jne	.label_386
	mov	eax, r9d
	and	al, 1
	jne	.label_386
	cmp	r14, rbp
	jae	.label_416
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_416:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_429
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_429:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_433
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_433:
	add	r14, 3
	mov	r9b, 1
.label_386:
	cmp	r14, rbp
	jae	.label_434
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_434:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_448
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_448:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_443
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_443:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_363:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_395
	test	r9b, 1
	je	.label_408
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_459
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_453
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_453:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_451
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_451:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_408
	nop	word ptr cs:[rax + rax]
.label_459:
	mov	rbx, rcx
.label_408:
	cmp	r14, rbp
	jae	.label_467
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_467
	nop	
.label_395:
	test	r9b, 1
	je	.label_351
	and	al, 1
	jne	.label_351
	cmp	r14, rbp
	jae	.label_356
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_356:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_415
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_415:
	add	r14, 2
	xor	r9d, r9d
.label_351:
	mov	ebx, r15d
.label_373:
	cmp	r14, rbp
	jae	.label_372
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_372:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_377
.label_407:
	xor	r13d, r13d
	jmp	.label_369
	nop	word ptr cs:[rax + rax]
.label_413:
	mov	rcx, r12
.label_419:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_389
	or	al, dl
	jne	.label_389
	mov	r11, rcx
	jmp	.label_358
.label_370:
	mov	eax, 2
.label_458:
	mov	qword ptr [rsp + 0x38], rax
.label_358:
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
.label_450:
	mov	r14, rax
.label_454:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_382:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_428
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_347
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_347
	inc	rdx
	nop	dword ptr [rax + rax]
.label_439:
	cmp	r14, rbp
	jae	.label_437
	mov	byte ptr [rcx + r14], al
.label_437:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_439
	jmp	.label_347
.label_384:
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
	jmp	.label_450
.label_428:
	mov	rcx, qword ptr [rsp + 0x10]
.label_347:
	cmp	r14, rbp
	jae	.label_454
	mov	byte ptr [rcx + r14], 0
	jmp	.label_454
.label_418:
	mov	eax, 5
	jmp	.label_458
.label_423:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4049c0
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
	#Procedure 0x404a90
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
	je	.label_472
	mov	qword ptr [rax], rbx
.label_472:
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
	#Procedure 0x404b80
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_473
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_475:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_475
.label_473:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_476
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_477], OFFSET FLAT:slot0
.label_476:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_474
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_474:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c20
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404c30

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
	js	.label_481
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_484
	cmp	r12d, 0x7fffffff
	je	.label_479
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
	jne	.label_482
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_482:
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
.label_484:
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
	jbe	.label_480
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_483
.label_480:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_478
	mov	rdi, r14
	call	free
.label_478:
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
.label_483:
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
.label_481:
	call	abort
.label_479:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404df0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e00
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
	#Procedure 0x404e20
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
	#Procedure 0x404e40
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
	je	.label_485
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
.label_485:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404eb0
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
	je	.label_486
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
.label_486:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f20
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
	je	.label_487
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
.label_487:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f90
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
	je	.label_488
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
.label_488:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405000
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_489]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_490]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_491]
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
	#Procedure 0x405070
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_489]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_490]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_491]
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
	#Procedure 0x4050e0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_489]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_490]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_491]
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
	#Procedure 0x405140
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_489]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_490]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_491]
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
	#Procedure 0x4051a0

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
	je	.label_492
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
.label_492:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405240
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_489]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_490]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_491]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_493
	test	rdx, rdx
	je	.label_493
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_493:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4052b0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_489]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_490]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_491]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_494
	test	rdx, rdx
	je	.label_494
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_494:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405320
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_489]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_490]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_491]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_495
	test	rsi, rsi
	je	.label_495
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_495:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405390
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_489]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_490]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_491]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_496
	test	rsi, rsi
	je	.label_496
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
.label_496:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405400
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405410
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
	#Procedure 0x405430
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405450
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
	#Procedure 0x405470

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
	jne	.label_498
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_503
	cmp	ecx, 0x55
	jne	.label_497
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_497
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_497
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_497
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_497
	cmp	byte ptr [rax + 5], 0
	jne	.label_497
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_500
	mov	eax, OFFSET FLAT:label_501
	jmp	.label_502
.label_503:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_497
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_497
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_497
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_497
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_497
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_497
	cmp	byte ptr [rax + 7], 0
	je	.label_499
.label_497:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_402
	mov	eax, OFFSET FLAT:label_365
.label_502:
	cmove	rax, rcx
.label_498:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_499:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_504
	mov	eax, OFFSET FLAT:label_505
	jmp	.label_502
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405540

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
	#Procedure 0x405560

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
	jne	.label_510
	mov	qword ptr [rsp + 0x10], r15
	mov	dword ptr [rsp + 8], r12d
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_506
.label_510:
	xor	ebp, ebp
.label_508:
	mov	eax, ebp
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_506:
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
	je	.label_511
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_37
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_511:
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
	je	.label_507
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_37
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_507:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_512
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_509
.label_512:
	xor	ebp, ebp
.label_509:
	mov	rdi, rbx
	call	free
	jmp	.label_508
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056b0

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
	je	.label_523
	mov	edx, OFFSET FLAT:label_518
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_526
.label_523:
	mov	edx, OFFSET FLAT:label_527
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_526:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_531
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
	mov	esi, OFFSET FLAT:label_528
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_514
	jmp	qword ptr [(r12 * 8) + label_515]
.label_625:
	add	rsp, 8
	jmp	.label_513
.label_514:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_522
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
	jmp	.label_513
.label_626:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_529
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
.label_627:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_524
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
.label_628:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_520
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
.label_629:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_516
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
	jmp	.label_513
.label_630:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_519
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
	jmp	.label_513
.label_631:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_517
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
	jmp	.label_513
.label_632:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_521
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
	jmp	.label_513
.label_634:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_525
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
	jmp	.label_513
.label_633:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_530
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
.label_513:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a10
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_532:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_532
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a40

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_533
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_535
.label_533:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_535:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_536
	cmp	r10d, 0x29
	jae	.label_545
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_534
.label_545:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_534:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_536
	cmp	r10d, 0x29
	jae	.label_543
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_544
.label_543:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_544:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_536
	cmp	r10d, 0x29
	jae	.label_541
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_542
.label_541:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_542:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_536
	cmp	r10d, 0x29
	jae	.label_539
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_540
.label_539:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_540:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_536
	cmp	r10d, 0x29
	jae	.label_537
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_538
.label_537:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_538:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_536
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_536
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_536
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_536
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_536:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c30

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_546
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_546:
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
	#Procedure 0x405cc0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_547
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_548
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_550
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_22
	mov	ecx, OFFSET FLAT:label_13
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_549
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d40
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_551
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_552
	test	rax, rax
	je	.label_551
.label_552:
	pop	rbx
	ret	
.label_551:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d80

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_553
	test	rax, rax
	je	.label_554
.label_553:
	pop	rbx
	ret	
.label_554:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405da0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_555
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_556
	test	rbx, rbx
	jne	.label_556
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_556:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_557
	test	rax, rax
	je	.label_555
.label_557:
	pop	rbx
	ret	
.label_555:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405df0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_558
	test	rbx, rbx
	jne	.label_558
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_558:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_560
	test	rax, rax
	je	.label_559
.label_560:
	pop	rbx
	ret	
.label_559:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405e20
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_561
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_564
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_562
.label_561:
	test	rcx, rcx
	jne	.label_567
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_567:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_563
.label_562:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_566
	test	rbx, rbx
	jne	.label_566
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_566:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_565
	test	rax, rax
	je	.label_564
.label_565:
	pop	rbx
	ret	
.label_564:
	call	xalloc_die
.label_563:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ec0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_568
	test	rax, rax
	je	.label_569
.label_568:
	pop	rbx
	ret	
.label_569:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ee0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_570
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_573
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_574
	call	free
	xor	eax, eax
	jmp	.label_571
.label_570:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_572
	mov	qword ptr [rsi], rbx
.label_574:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_571
	test	rax, rax
	je	.label_572
.label_571:
	pop	rbx
	ret	
.label_572:
	call	xalloc_die
.label_573:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f50
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
	je	.label_576
	test	r14, r14
	je	.label_575
.label_576:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_575:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f90
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_577
	call	rpl_calloc
	test	rax, rax
	je	.label_577
	pop	rcx
	ret	
.label_577:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fc0

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
	je	.label_578
	test	r15, r15
	je	.label_579
.label_578:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_579:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406000

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
	je	.label_581
	test	r15, r15
	je	.label_580
.label_581:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_580:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406050

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_582
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_37
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406080

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_584
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_583
.label_584:
	mov	rax, rbx
	pop	rbx
	ret	
.label_583:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060b0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_585
	test	rsi, rsi
	mov	ecx, 1
	je	.label_586
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_586
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_585:
	mov	ecx, 1
.label_586:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406100

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
	je	.label_587
	cmp	r15, -2
	jb	.label_587
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_587
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_587:
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
	#Procedure 0x406160

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
	jne	.label_589
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_588
	test	cl, cl
	jne	.label_588
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_588
.label_589:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_588
	call	__errno_location
	mov	dword ptr [rax], 0
.label_588:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4061c0

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_590
	pop	rcx
	ret	
.label_590:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061e0
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
.label_592:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_591
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_592
.label_591:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406220

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
.label_596:
	mov	rbx, rax
	lea	r12, [rbx - 1]
	cmp	r15, r12
	jae	.label_593
	lea	rax, [rbx - 1]
	cmp	byte ptr [r14 + rbx - 2], 0x2f
	je	.label_596
.label_593:
	xor	edi, edi
	cmp	rbx, 1
	sete	dil
	add	rdi, rbx
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_595
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	memcpy
	cmp	rbx, 1
	jne	.label_594
	mov	byte ptr [r15], 0x2e
	mov	r12d, 1
.label_594:
	mov	byte ptr [r15 + r12], 0
	mov	rax, r15
.label_595:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062c0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_597:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_597
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_601
	nop	word ptr cs:[rax + rax]
.label_600:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_601:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_600
	test	dl, dl
	je	.label_599
	mov	ecx, esi
	and	cl, 1
	je	.label_598
	xor	esi, esi
.label_598:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_600
.label_599:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406320

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_602:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_603
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_602
.label_603:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406350

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_605
	cmp	byte ptr [rax], 0x43
	jne	.label_607
	cmp	byte ptr [rax + 1], 0
	je	.label_604
.label_607:
	mov	esi, OFFSET FLAT:label_606
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_605
.label_604:
	xor	ebx, ebx
.label_605:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406390

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_608
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_609:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_609
.label_608:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4063c0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_53
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_610
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063f0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_611
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_613
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_611
.label_613:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_611
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_612
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_612:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_611:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406470

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_614
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_614
	test	byte ptr [rbx + 1], 1
	je	.label_614
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_614:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064b0

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
	jne	.label_615
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_615
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_616
.label_615:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_616:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_617
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_617:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x406520

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
