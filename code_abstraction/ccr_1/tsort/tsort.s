	.section	.text
	.align	32
	#Procedure 0x401620

	.globl usage
	.type usage, @function
usage:
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	test	ebx, ebx
	jne	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	call	emit_stdin_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebx
	call	exit
.label_9:
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	mov	edi, ebx
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401710

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401740

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_16
	nop	
.label_29:
	mov	edi, OFFSET FLAT:label_21
	call	strcmp
	test	eax, eax
	je	.label_27
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_29
.label_27:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_21
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_19
	mov	ecx, OFFSET FLAT:label_20
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_18
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_18
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_18:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_21
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_20
	mov	ecx, OFFSET FLAT:label_21
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_25
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401860

	.globl main
	.type main, @function
main:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_25
	call	setlocale
	mov	edi, OFFSET FLAT:label_34
	mov	esi, OFFSET FLAT:label_36
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_34
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r8,  qword ptr [word ptr [rip + Version]]
	sub	rsp, 8
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_19
	mov	r9d, 1
	mov	eax, 0
	mov	edi, ebp
	mov	rsi, rbx
	push	0
	push	OFFSET FLAT:label_30
	push	OFFSET FLAT:usage
	call	parse_gnu_standard_options_only
	add	rsp, 0x20
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	ecx, ebp
	sub	ecx, eax
	cmp	ecx, 2
	jge	.label_35
	mov	edi, OFFSET FLAT:label_32
	cmp	eax, ebp
	je	.label_33
	mov	rdi, qword ptr [rbx + rax*8]
.label_33:
	call	tsort
	movzx	eax, al
	xor	eax, 1
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_35:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401950

	.globl tsort
	.type tsort, @function
tsort:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdi
	cmp	byte ptr [r14], 0x2d
	jne	.label_58
	mov	bpl, byte ptr [r14 + 1]
	xor	edi, edi
	call	new_item
	mov	rbx, rax
	cmp	bpl, 0
	mov	r13b, 1
	jne	.label_65
	jmp	.label_67
.label_58:
	xor	edi, edi
	call	new_item
	mov	rbx, rax
.label_65:
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	mov	esi, OFFSET FLAT:label_43
	mov	rdi, r14
	call	freopen_safer
	test	rax, rax
	je	.label_48
	xor	r13d, r13d
.label_67:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	mov	esi, 2
	call	fadvise
	lea	r15, [rsp + 8]
	mov	rdi, r15
	call	init_tokenbuffer
	jmp	.label_56
	nop	word ptr [rax + rax]
.label_47:
	mov	rdi, r12
	mov	rsi, rax
	call	record_relation
.label_56:
	xor	eax, eax
.label_45:
	mov	r12, rax
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 3
	mov	rcx, r15
	call	readtoken
	cmp	rax, -1
	je	.label_66
	test	rax, rax
	je	.label_68
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdi, rbx
	call	search_item
	test	r12, r12
	je	.label_45
	jmp	.label_47
.label_66:
	test	r12, r12
	jne	.label_50
	mov	esi, OFFSET FLAT:count_items
	mov	rdi, rbx
	call	walk_tree
	mov	r15b, 1
	jmp	.label_52
	nop	word ptr [rax + rax]
.label_60:
	xor	r15d, r15d
.label_52:
	mov	rax,  qword ptr [word ptr [rip + n_strings]]
	nop	word ptr [rax + rax]
.label_49:
	test	rax, rax
	je	.label_54
	mov	esi, OFFSET FLAT:scan_zeros
	mov	rdi, rbx
	call	walk_tree
	mov	rax,  qword ptr [word ptr [rip + head]]
	jmp	.label_62
	nop	
.label_53:
	mov	rax,  qword ptr [word ptr [rip + head]]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [word ptr [rip + head]],  rax
.label_62:
	test	rax, rax
	je	.label_40
	mov	rdi, qword ptr [rax]
	mov	rbp, qword ptr [rax + 0x30]
	call	puts
	mov	rax,  qword ptr [word ptr [rip + head]]
	mov	qword ptr [rax], 0
	dec	qword ptr [word ptr [rip + n_strings]]
	jmp	.label_44
	nop	word ptr [rax + rax]
.label_55:
	mov	rbp, qword ptr [rbp + 8]
.label_44:
	test	rbp, rbp
	je	.label_53
	mov	rax, qword ptr [rbp]
	dec	qword ptr [rax + 0x20]
	mov	rax, qword ptr [rbp]
	cmp	qword ptr [rax + 0x20], 0
	jne	.label_55
	mov	rcx,  qword ptr [word ptr [rip + zeros]]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp]
	mov	qword ptr [word ptr [rip + zeros]],  rax
	jmp	.label_55
	nop	word ptr cs:[rax + rax]
.label_40:
	cmp	qword ptr [word ptr [rip + n_strings]],  0
	mov	eax, 0
	je	.label_49
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	call	error
	nop	word ptr [rax + rax]
.label_57:
	mov	esi, OFFSET FLAT:detect_loop
	mov	rdi, rbx
	call	walk_tree
	cmp	qword ptr [word ptr [rip + loop]],  0
	jne	.label_57
	jmp	.label_60
.label_54:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	test	eax, eax
	jne	.label_63
	test	r15b, r15b
	setne	al
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_68:
	mov	edi, OFFSET FLAT:label_37
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 0x1cd
	mov	ecx, OFFSET FLAT:label_39
	call	__assert_fail
.label_50:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_46
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_63:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	test	r13b, r13b
	je	.label_59
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 5
	call	dcgettext
	jmp	.label_64
.label_48:
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_59:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
.label_64:
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_42
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c20

	.globl new_item
	.type new_item, @function
new_item:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, 0x38
	call	xmalloc
	mov	rbx, rax
	xor	eax, eax
	test	r14, r14
	je	.label_69
	mov	rdi, r14
	call	xstrdup
.label_69:
	mov	qword ptr [rbx], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 8], xmm0
	mov	dword ptr [rbx + 0x18], 0
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	qword ptr [rbx + 0x30], 0
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c70

	.globl search_item
	.type search_item, @function
search_item:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], rsi
	mov	rbp, rdi
	test	rbp, rbp
	je	.label_95
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	je	.label_73
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rsp]
	call	strcmp
	mov	r12d, eax
	test	r12d, r12d
	je	.label_90
	mov	r13, rbx
	nop	dword ptr [rax + rax]
.label_92:
	lea	r15, [rbx + 8]
	lea	r14, [rbx + 0x10]
	test	r12d, r12d
	mov	rax, r14
	cmovs	rax, r15
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_79
	cmp	dword ptr [rax + 0x18], 0
	cmovne	rbp, rbx
	cmovne	r13, rax
	mov	rbx, rax
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rsp]
	call	strcmp
	mov	rsi, rbx
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_92
	jmp	.label_70
.label_73:
	mov	rdi, qword ptr [rsp]
	call	new_item
	mov	rsi, rax
	mov	qword ptr [rbp + 0x10], rsi
	jmp	.label_70
.label_90:
	mov	rsi, rbx
	jmp	.label_70
.label_79:
	mov	rdi, qword ptr [rsp]
	call	new_item
	test	r12d, r12d
	mov	r12, rax
	js	.label_74
	mov	qword ptr [r14], rax
	jmp	.label_77
.label_74:
	mov	qword ptr [r15], rax
.label_77:
	mov	rsi, qword ptr [r13]
	mov	rdi, qword ptr [rsp]
	call	strcmp
	mov	r15d, eax
	test	r15d, r15d
	mov	r14, rbp
	je	.label_82
	lea	rax, [r13 + 0x10]
	lea	rcx, [r13 + 8]
	test	r15d, r15d
	cmovs	rax, rcx
	mov	rbp, qword ptr [rax]
	mov	rsi, r12
	cmp	rbp, rsi
	je	.label_85
	mov	rbx, rbp
	nop	word ptr cs:[rax + rax]
.label_78:
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rsp]
	call	strcmp
	test	eax, eax
	je	.label_94
	js	.label_71
	mov	dword ptr [rbx + 0x18], 1
	add	rbx, 0x10
	jmp	.label_72
	nop	word ptr cs:[rax + rax]
.label_71:
	mov	dword ptr [rbx + 0x18], 0xffffffff
	add	rbx, 8
.label_72:
	mov	rsi, r12
	mov	rbx, qword ptr [rbx]
	cmp	rbx, rsi
	jne	.label_78
.label_85:
	sar	r15d, 0x1f
	or	r15d, 1
	mov	eax, dword ptr [r13 + 0x18]
	test	eax, eax
	je	.label_80
	mov	ecx, r15d
	neg	ecx
	cmp	eax, ecx
	jne	.label_84
.label_80:
	add	dword ptr [r13 + 0x18], r15d
	jmp	.label_70
.label_84:
	cmp	dword ptr [rbp + 0x18], r15d
	jne	.label_87
	test	r15d, r15d
	js	.label_89
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [r13 + 0x10], rax
	mov	qword ptr [rbp + 8], r13
	jmp	.label_91
.label_87:
	test	r15d, r15d
	js	.label_96
	mov	rax, qword ptr [rbp + 8]
	mov	rdx, qword ptr [rax + 0x10]
	mov	qword ptr [rbp + 8], rdx
	mov	qword ptr [rax + 0x10], rbp
	mov	rdx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x10], rdx
	mov	qword ptr [rax + 8], r13
	jmp	.label_97
.label_89:
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [r13 + 8], rax
	mov	qword ptr [rbp + 0x10], r13
.label_91:
	mov	dword ptr [rbp + 0x18], 0
	mov	dword ptr [r13 + 0x18], 0
	mov	rax, rbp
	jmp	.label_83
.label_96:
	mov	rax, qword ptr [rbp + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x10], rdx
	mov	qword ptr [rax + 8], rbp
	mov	rdx, qword ptr [rax + 0x10]
	mov	qword ptr [r13 + 8], rdx
	mov	qword ptr [rax + 0x10], r13
.label_97:
	mov	dword ptr [r13 + 0x18], 0
	mov	dword ptr [rbp + 0x18], 0
	mov	edx, dword ptr [rax + 0x18]
	cmp	edx, r15d
	jne	.label_86
	mov	dword ptr [r13 + 0x18], ecx
	jmp	.label_93
.label_86:
	cmp	edx, ecx
	jne	.label_93
	mov	dword ptr [rbp + 0x18], r15d
.label_93:
	mov	dword ptr [rax + 0x18], 0
.label_83:
	cmp	r13, qword ptr [r14 + 0x10]
	je	.label_98
	mov	qword ptr [r14 + 8], rax
	jmp	.label_70
.label_98:
	mov	qword ptr [r14 + 0x10], rax
.label_70:
	mov	rax, rsi
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_94:
	mov	edi, OFFSET FLAT:label_75
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 0xb6
	mov	ecx, OFFSET FLAT:label_76
	call	__assert_fail
.label_95:
	mov	edi, OFFSET FLAT:label_81
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 0x84
	mov	ecx, OFFSET FLAT:label_76
	call	__assert_fail
.label_82:
	mov	edi, OFFSET FLAT:label_88
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 0xa8
	mov	ecx, OFFSET FLAT:label_76
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401ef0

	.globl record_relation
	.type record_relation, @function
record_relation:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	mov	rsi, qword ptr [rbx]
	call	strcmp
	test	eax, eax
	je	.label_99
	inc	qword ptr [rbx + 0x20]
	mov	edi, 0x10
	call	xmalloc
	mov	qword ptr [rax], rbx
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r14 + 0x30], rax
.label_99:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x401f30

	.globl walk_tree
	.type walk_tree, @function
walk_tree:
	mov	rdi, qword ptr [rdi + 0x10]
	test	rdi, rdi
	je	.label_100
	jmp	recurse_tree
.label_100:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x401f40

	.globl count_items
	.type count_items, @function
count_items:
	inc	qword ptr [word ptr [rip + n_strings]]
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f50

	.globl scan_zeros
	.type scan_zeros, @function
scan_zeros:
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_101
	cmp	qword ptr [rdi], 0
	je	.label_101
	cmp	qword ptr [word ptr [rip + head]],  0
	je	.label_103
	mov	rax,  qword ptr [word ptr [rip + zeros]]
	mov	qword ptr [rax + 0x28], rdi
	jmp	.label_102
.label_103:
	mov	qword ptr [word ptr [rip + head]],  rdi
.label_102:
	mov	qword ptr [word ptr [rip + zeros]],  rdi
.label_101:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f90

	.globl detect_loop
	.type detect_loop, @function
detect_loop:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_109
	cmp	qword ptr [word ptr [rip + loop]],  0
	je	.label_110
	mov	rcx, qword ptr [r14 + 0x30]
	test	rcx, rcx
	je	.label_109
	lea	rbx, [r14 + 0x30]
	mov	rax,  qword ptr [word ptr [rip + loop]]
	nop	dword ptr [rax]
.label_107:
	cmp	qword ptr [rcx], rax
	je	.label_105
	mov	rbx, rcx
	add	rbx, 8
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	jne	.label_107
	jmp	.label_109
.label_105:
	cmp	qword ptr [r14 + 0x28], 0
	je	.label_111
	test	rax, rax
	je	.label_113
	nop	word ptr cs:[rax + rax]
.label_112:
	mov	rax,  qword ptr [word ptr [rip + loop]]
	mov	rcx, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x28]
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_42
	xor	eax, eax
	call	error
	mov	rax,  qword ptr [word ptr [rip + loop]]
	cmp	rax, r14
	je	.label_108
	mov	qword ptr [rax + 0x28], 0
	mov	qword ptr [word ptr [rip + loop]],  r15
	test	r15, r15
	jne	.label_112
	jmp	.label_114
.label_111:
	mov	qword ptr [r14 + 0x28], rax
.label_110:
	mov	qword ptr [word ptr [rip + loop]],  r14
.label_109:
	xor	eax, eax
.label_106:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_108:
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax]
	dec	qword ptr [rax + 0x20]
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbx], rax
.label_113:
	mov	r15,  qword ptr [word ptr [rip + loop]]
.label_114:
	mov	al, 1
	test	r15, r15
	je	.label_106
	nop	word ptr cs:[rax + rax]
.label_104:
	mov	rcx, r15
	mov	r15, qword ptr [rcx + 0x28]
	mov	qword ptr [rcx + 0x28], 0
	test	r15, r15
	jne	.label_104
	mov	qword ptr [word ptr [rip + loop]],  r15
	jmp	.label_106
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4020a0

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
	jne	.label_115
	cmp	qword ptr [rbx + 0x10], 0
	je	.label_117
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	je	.label_118
.label_115:
	mov	rsi, r14
	call	recurse_tree
	mov	bpl, 1
	test	al, al
	jne	.label_116
.label_118:
	mov	rdi, rbx
	call	r14
	mov	bpl, 1
	test	al, al
	jne	.label_116
	mov	rdi, qword ptr [rbx + 0x10]
	test	rdi, rdi
	je	.label_119
	mov	rsi, r14
	call	recurse_tree
	test	al, al
	jne	.label_116
.label_119:
	xor	ebp, ebp
	jmp	.label_116
.label_117:
	mov	rdi, rbx
	call	r14
	mov	bpl, al
.label_116:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402110
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402120
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402130

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_120
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_122
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_122
.label_120:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_121
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_122:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_123
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_42
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_121:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_123:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_125
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021f0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402200

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_126
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_126:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402220

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
	mov	r12, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, r12
	call	fileno
	xor	r14d, r14d
	test	eax, eax
	mov	qword ptr [rsp], rbp
	je	.label_139
	cmp	eax, 1
	je	.label_128
	cmp	eax, 2
	je	.label_129
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r14b
.label_129:
	mov	bpl, r14b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r14b
	jmp	.label_137
.label_139:
	xor	ebp, ebp
	xor	r15d, r15d
	jmp	.label_127
.label_128:
	xor	ebp, ebp
.label_137:
	xor	r15d, r15d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_130
	xor	r13d, r13d
	xor	edi, edi
	call	protect_fd
	mov	r15b, 1
	test	al, al
	je	.label_131
.label_130:
	test	r14b, r14b
	je	.label_134
	mov	edi, 1
	call	protect_fd
	xor	r13d, r13d
	test	al, al
	je	.label_138
.label_134:
	test	bpl, bpl
	je	.label_127
	mov	edi, 2
	call	protect_fd
	xor	r13d, r13d
	test	al, al
	je	.label_131
.label_127:
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbx
	mov	rdx, r12
	call	rpl_freopen
	mov	r13, rax
	jmp	.label_131
.label_138:
	mov	r14b, 1
.label_131:
	call	__errno_location
	mov	rbx, rax
	mov	r12d, dword ptr [rbx]
	test	bpl, bpl
	je	.label_135
	mov	edi, 2
	call	close
.label_135:
	test	r14b, r14b
	je	.label_136
	mov	edi, 1
	call	close
.label_136:
	test	r15b, r15b
	je	.label_132
	xor	edi, edi
	call	close
.label_132:
	test	r13, r13
	jne	.label_133
	mov	dword ptr [rbx], r12d
.label_133:
	mov	rax, r13
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402340

	.globl protect_fd
	.type protect_fd, @function
protect_fd:
	push	rbx
	mov	ebx, edi
	mov	edi, OFFSET FLAT:label_140
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ecx, eax
	mov	al, 1
	cmp	ecx, ebx
	je	.label_141
	test	ecx, ecx
	js	.label_142
	mov	edi, ecx
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
.label_142:
	xor	eax, eax
.label_141:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402380
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
	je	.label_143
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_143:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  0
	cmp	edi, 2
	jne	.label_144
	mov	edx, OFFSET FLAT:label_145
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_146
	cmp	eax, 0x76
	jne	.label_144
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x100]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp]
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_146:
	xor	edi, edi
	call	rbx
.label_144:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	mov	dword ptr [dword ptr [rip + optind]],  0
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
	#Procedure 0x402480

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
	je	.label_147
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_147:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  1
	mov	eax, OFFSET FLAT:label_25
	mov	edx, OFFSET FLAT:label_145
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_151
	mov	rcx, qword ptr [rsp + 0x100]
	cmp	eax, 0x68
	je	.label_148
	cmp	eax, 0x76
	je	.label_149
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	jmp	.label_150
.label_148:
	xor	edi, edi
.label_150:
	call	rcx
.label_151:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_149:
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x108]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
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
	#Procedure 0x402580

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_152
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_154
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_156
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_154
	mov	esi, OFFSET FLAT:label_155
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_157
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_157:
	mov	rbx, r14
.label_154:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_152:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_153
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402630
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
	#Procedure 0x402670
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
	#Procedure 0x402680
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
	#Procedure 0x402690

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
	#Procedure 0x4026d0
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
	#Procedure 0x4026f0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_158
	test	rdx, rdx
	je	.label_158
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_158:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402720
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
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
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
	#Procedure 0x4027a0

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
	mov	qword ptr [rsp + 0xb0], rax
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
	mov	qword ptr [rsp + 0x60], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_177:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_260
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_184]]
.label_454:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_191
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_197
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_455:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_205
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_205
	xor	r14d, r14d
.label_218:
	cmp	r14, r11
	jae	.label_214
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_214:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_218
.label_205:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x38], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x40], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r9d, dword ptr [rsp + 0x48]
	jmp	.label_229
.label_447:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_229
.label_450:
	mov	al, 1
.label_448:
	mov	r12b, 1
.label_451:
	test	r12b, 1
	mov	cl, 1
	je	.label_235
	mov	ecx, eax
.label_235:
	mov	al, cl
.label_449:
	test	r12b, 1
	jne	.label_238
	test	r11, r11
	je	.label_240
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_240:
	mov	r14d, 1
	jmp	.label_245
.label_238:
	xor	r14d, r14d
.label_245:
	mov	ecx, OFFSET FLAT:label_197
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_229
.label_452:
	test	r12b, 1
	jne	.label_253
	test	r11, r11
	je	.label_251
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_251:
	mov	r14d, 1
	jmp	.label_258
.label_453:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_261
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_229
.label_253:
	xor	r14d, r14d
.label_258:
	mov	eax, OFFSET FLAT:label_261
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_229:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	bl
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2b]
	mov	eax, r15d
	mov	byte ptr [rsp + 0x1e], cl
	and	al, cl
	cmp	qword ptr [rsp + 0x38], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x2e], al
	and	dl, al
	mov	byte ptr [rsp + 0x2f], dl
	mov	eax, esi
	and	al, 1
	sete	dl
	and	bl, al
	mov	byte ptr [rsp + 0x2c], bl
	mov	byte ptr [rsp + 7], al
	and	r12b, al
	mov	byte ptr [rsp + 0x2d], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x1f], dl
	mov	byte ptr [rsp + 0x1d], r13b
	mov	qword ptr [rsp + 0xa8], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x2a], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_262
	nop	dword ptr [rax]
.label_225:
	inc	rsi
.label_262:
	cmp	rbp, -1
	je	.label_196
	cmp	rsi, rbp
	jne	.label_199
	jmp	.label_201
	nop	word ptr cs:[rax + rax]
.label_196:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_201
.label_199:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_208
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_195
	cmp	rbp, -1
	jne	.label_195
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x68]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_195:
	cmp	rbx, rbp
	jbe	.label_222
.label_208:
	xor	r8d, r8d
.label_246:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_224
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_227]]
.label_424:
	test	rsi, rsi
	jne	.label_216
	jmp	.label_230
	nop	
.label_222:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_243
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_246
	jmp	.label_190
.label_243:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_246
.label_428:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_263
	test	rsi, rsi
	jne	.label_264
	cmp	rbp, 1
	je	.label_230
	xor	r13d, r13d
	jmp	.label_172
.label_417:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_267
	cmp	byte ptr [rsp + 7], 0
	jne	.label_180
	cmp	r12d, 2
	jne	.label_269
	mov	eax, r9d
	and	al, 1
	jne	.label_269
	cmp	r14, r11
	jae	.label_272
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_272:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_160
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_160:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_167
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_167:
	add	r14, 3
	mov	r9b, 1
.label_269:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_176
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_176:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_179
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_179
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_179
	cmp	r14, r11
	jae	.label_192
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_192:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_188
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_188:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_172
.label_418:
	mov	bl, 0x62
	jmp	.label_203
.label_419:
	mov	cl, 0x74
	jmp	.label_207
.label_420:
	mov	bl, 0x76
	jmp	.label_203
.label_421:
	mov	bl, 0x66
	jmp	.label_203
.label_422:
	mov	cl, 0x72
	jmp	.label_207
.label_425:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_211
	cmp	byte ptr [rsp + 7], 0
	jne	.label_180
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x60], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_220
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_220:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_228
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_228:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_231
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_231:
	add	r14, 3
	xor	r9d, r9d
.label_211:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_172
.label_426:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_241
	cmp	r12d, 2
	jne	.label_216
	cmp	byte ptr [rsp + 7], 0
	je	.label_216
	jmp	.label_180
.label_427:
	cmp	r12d, 2
	jne	.label_250
	cmp	byte ptr [rsp + 7], 0
	jne	.label_180
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_204
.label_224:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_255
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
.label_175:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_168
	test	r8b, r8b
	je	.label_168
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_172
.label_263:
	test	rsi, rsi
	jne	.label_178
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_178
.label_230:
	mov	dl, 1
.label_423:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_180
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_172:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_186
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_187
	jmp	.label_193
	nop	word ptr cs:[rax + rax]
.label_186:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_193
.label_187:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_198
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_204
	jmp	.label_210
	nop	dword ptr [rax]
.label_193:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_210
	jmp	.label_204
.label_198:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_210
.label_267:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_225
	xor	r15d, r15d
	jmp	.label_216
.label_250:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_207
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_204
.label_207:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_180
.label_203:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_172
	nop	word ptr cs:[rax + rax]
.label_210:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_180
	cmp	r12d, 2
	jne	.label_236
	mov	eax, r9d
	and	al, 1
	jne	.label_236
	cmp	r14, r11
	jae	.label_239
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_239:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_164
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_164:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_248
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_248:
	add	r14, 3
	mov	r9b, 1
.label_236:
	cmp	r14, r11
	jae	.label_252
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_252:
	inc	r14
	jmp	.label_256
.label_255:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_259
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_259:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_268:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_273
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_163
	cmp	rbp, -2
	je	.label_221
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_174
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_212:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_213
	bt	rsi, rdx
	jb	.label_190
.label_213:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_212
.label_174:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_200
	xor	r13d, r13d
.label_200:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_268
	jmp	.label_175
.label_179:
	xor	r13d, r13d
	jmp	.label_172
.label_178:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_172
.label_241:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_216
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_216
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_216
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_159
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_185
	cmp	byte ptr [rsp + 7], 0
	jne	.label_180
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_232
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_232:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_254
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_254:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_244
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_244:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_247
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_247:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_172
.label_216:
	xor	eax, eax
.label_264:
	xor	r13d, r13d
	jmp	.label_172
.label_168:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_257
	nop	word ptr cs:[rax + rax]
.label_217:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_257:
	test	r8b, r8b
	je	.label_265
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_215
	cmp	r14, r11
	jae	.label_165
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_165:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_215
	nop	dword ptr [rax]
.label_265:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_190
	cmp	r12d, 2
	jne	.label_161
	mov	eax, r9d
	and	al, 1
	jne	.label_161
	cmp	r14, r11
	jae	.label_162
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_162:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_166
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_166:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_223
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_223:
	add	r14, 3
	mov	r9b, 1
.label_161:
	cmp	r14, r11
	jae	.label_271
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_271:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_182
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_182:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_189
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_189:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_215:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_204
	test	r9b, 1
	je	.label_206
	mov	ebx, eax
	and	bl, 1
	jne	.label_206
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_209
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_209:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_169
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_169:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_206:
	cmp	r14, r11
	jae	.label_217
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_217
	nop	word ptr cs:[rax + rax]
.label_204:
	test	r9b, 1
	je	.label_173
	and	al, 1
	jne	.label_173
	cmp	r14, r11
	jae	.label_226
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_226:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_202
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_202:
	add	r14, 2
	xor	r9d, r9d
.label_173:
	mov	ebx, r15d
.label_256:
	cmp	r14, r11
	jae	.label_233
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_233:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_225
.label_163:
	xor	r13d, r13d
.label_273:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_175
.label_221:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_249
	mov	rsi, qword ptr [rsp + 0x50]
.label_270:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_219
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_270
	xor	r13d, r13d
	jmp	.label_175
.label_249:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_175
.label_219:
	xor	r13d, r13d
	jmp	.label_175
.label_159:
	xor	r13d, r13d
	jmp	.label_172
.label_185:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_172
	nop	dword ptr [rax + rax]
.label_201:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_266
	or	dl, al
	je	.label_190
.label_266:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_170
	or	dl, al
	jne	.label_170
	test	r10b, 1
	jne	.label_171
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_170
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_177
.label_170:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_181
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_183
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_183
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_234:
	cmp	r14, r11
	jae	.label_194
	mov	byte ptr [rcx + r14], al
.label_194:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_234
	jmp	.label_183
.label_180:
	mov	qword ptr [rsp + 0x20], rbp
.label_190:
	mov	rdx, rdi
	mov	r9d, dword ptr [rsp + 0x18]
	test	byte ptr [rsp + 0x1d], 1
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x68]
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
.label_237:
	mov	r14, rax
.label_242:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_171:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_237
.label_181:
	mov	rcx, qword ptr [rsp + 8]
.label_183:
	cmp	r14, r11
	jae	.label_242
	mov	byte ptr [rcx + r14], 0
	jmp	.label_242
.label_260:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403560
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403570

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
	call	xcharalloc
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
	je	.label_274
	mov	qword ptr [rax], rbx
.label_274:
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
	#Procedure 0x403660
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_275
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_277:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_277
.label_275:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_278
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_279]], OFFSET FLAT:slot0
.label_278:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_276
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_276:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403700

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x403710

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
	js	.label_283
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_286
	cmp	r12d, 0x7fffffff
	je	.label_281
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
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_284
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_284:
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
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_286:
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
	jbe	.label_282
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_285
.label_282:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_280
	mov	rdi, r14
	call	free
.label_280:
	mov	rdi, r15
	call	xcharalloc
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
.label_285:
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
.label_283:
	call	abort
.label_281:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4038d0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038e0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4038f0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
	.section	.text
	.align	32
	#Procedure 0x403900

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	rbx, rdx
	mov	ebp, edi
	lea	r14, [rsp + 8]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403940

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_287
	mov	dword ptr [rdi], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	movups	xmmword ptr [rdi + 4], xmm0
	mov	rax, rdi
	add	rsp, 0x38
	ret	
.label_287:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039a0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, rcx
	mov	rbx, rdx
	mov	ebp, edi
	lea	r15, [rsp]
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4039e0
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	mov	rax, rsi
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a00
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a20

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	eax, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_288]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_289]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_290]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	edx, 1
	mov	rdi, r15
	mov	esi, eax
	call	set_char_quoting
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403a90

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403aa0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ab0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ac0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	quoting_options_from_style
	mov	esi, 0x3a
	mov	edx, 1
	mov	rdi, rbx
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, r14
	mov	rcx, rbx
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403b10

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403b20

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_288]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_289]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_290]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b90
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rax, rdx
	mov	rcx, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_custom
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403bb0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	rsi, rdi
	xor	edi, edi
	mov	r8, rax
	jmp	quotearg_n_custom_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403bd0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403be0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x403bf0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403c00

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c10

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_297
	call	locale_charset
	mov	rbp, rax
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	push	0
	push	0
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_291
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_295
	mov	eax, OFFSET FLAT:label_296
	jmp	.label_294
.label_291:
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	push	0x30
	push	0x33
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_298
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_292
	mov	eax, OFFSET FLAT:label_293
	jmp	.label_294
.label_298:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_261
	mov	eax, OFFSET FLAT:label_197
.label_294:
	cmove	rax, rcx
.label_297:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403cd0

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	test	al, al
	je	.label_299
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_301
	jmp	.label_300
.label_299:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_300
.label_301:
	mov	eax, 1
	test	bpl, bpl
	je	.label_300
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_300:
	add	rsp, 8
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
	#Procedure 0x403d50

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	test	al, al
	je	.label_304
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_302
	jmp	.label_303
.label_304:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_303
.label_302:
	mov	eax, 1
	test	bpl, bpl
	je	.label_303
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	movsx	r9d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq2
.label_303:
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
	.align	32
	#Procedure 0x403de0

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_305
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_307
	jmp	.label_306
.label_305:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_306
.label_307:
	mov	eax, 1
	test	bpl, bpl
	je	.label_306
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq3
.label_306:
	add	rsp, 8
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
	#Procedure 0x403e60

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	r12d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 3]
	test	al, al
	je	.label_310
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_309
	jmp	.label_308
.label_310:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_308
.label_309:
	mov	eax, 1
	test	bpl, bpl
	je	.label_308
	movsx	esi, r12b
	movsx	edx, r15b
	movsx	ecx, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq4
.label_308:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ed0

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, ecx
	mov	r15d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 4]
	test	al, al
	je	.label_313
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_311
	jmp	.label_312
.label_313:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_312
.label_311:
	mov	eax, 1
	test	bpl, bpl
	je	.label_312
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_312:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403f30

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	test	al, al
	je	.label_314
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_316
	jmp	.label_315
.label_314:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_315
.label_316:
	mov	eax, 1
	test	bpl, bpl
	je	.label_315
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_315:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403f80

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	je	.label_319
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_318
	jmp	.label_317
.label_319:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_317
.label_318:
	mov	eax, 1
	test	bpl, bpl
	je	.label_317
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_317:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fd0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_321
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_322
	jmp	.label_320
.label_321:
	mov	eax, 1
	test	cl, cl
	je	.label_320
.label_322:
	xor	eax, eax
.label_320:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404000

	.globl init_tokenbuffer
	.type init_tokenbuffer, @function
init_tokenbuffer:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404010

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
	mov	r14, rcx
	mov	rbp, rdx
	mov	rbx, rsi
	mov	r12, rdi
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	test	rbp, rbp
	je	.label_329
	lea	r15, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_327:
	movzx	edi, byte ptr [rbx]
	mov	rsi, r15
	call	set_nth_bit
	inc	rbx
	dec	rbp
	jne	.label_327
.label_329:
	mov	rdi, r12
	call	getc_unlocked
	mov	ebp, eax
	test	ebp, ebp
	js	.label_330
	lea	rbx, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_326:
	movsxd	rdi, ebp
	mov	rsi, rbx
	call	get_nth_bit
	test	al, al
	je	.label_325
	mov	rdi, r12
	call	getc_unlocked
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_326
.label_330:
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp], rax
	mov	rax, -1
	jmp	.label_328
.label_325:
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 8], r14
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [rsp], rax
	xor	r14d, r14d
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_324:
	mov	rbx, r13
	cmp	rbx, qword ptr [rsp]
	jne	.label_331
	mov	edx, 1
	mov	rdi, r15
	lea	rsi, [rsp]
	call	x2nrealloc
	mov	r15, rax
.label_331:
	test	r14b, 1
	jne	.label_323
	movsxd	rdi, ebp
	lea	rsi, [rsp + 0x10]
	call	get_nth_bit
	test	al, al
	jne	.label_323
	lea	r13, [rbx + 1]
	mov	byte ptr [r15 + rbx], bpl
	mov	rdi, r12
	call	getc_unlocked
	mov	ebp, eax
	mov	r14d, ebp
	shr	r14d, 0x1f
	test	ebp, ebp
	jns	.label_324
	mov	rax, -1
	cmp	rbx, -1
	jne	.label_324
	jmp	.label_328
.label_323:
	mov	byte ptr [r15 + rbx], 0
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx + 8], r15
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rcx], rax
	mov	rax, rbx
.label_328:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404160

	.globl set_nth_bit
	.type set_nth_bit, @function
set_nth_bit:
	mov	eax, 1
	mov	ecx, edi
	shl	rax, cl
	shr	rdi, 6
	or	qword ptr [rsi + rdi*8], rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404180

	.globl get_nth_bit
	.type get_nth_bit, @function
get_nth_bit:
	mov	rax, rdi
	shr	rax, 6
	mov	rax, qword ptr [rsi + rax*8]
	bt	rax, rdi
	setb	al
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041a0
	.globl readtokens
	.type readtokens, @function
readtokens:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	qword ptr [rsp + 0x20], rdi
	test	rsi, rsi
	lea	rax, [rsi + 1]
	mov	ebp, 0x40
	cmovne	rbp, rax
	mov	qword ptr [rsp + 8], rbp
	mov	esi, 8
	mov	rdi, rbp
	call	xnmalloc
	mov	r15, rax
	mov	esi, 8
	mov	rdi, rbp
	call	xnmalloc
	mov	r14, rax
	lea	rdi, [rsp + 0x38]
	call	init_tokenbuffer
	xor	ebp, ebp
	jmp	.label_332
	nop	word ptr [rax + rax]
.label_333:
	mov	r13, r12
	inc	r13
	mov	esi, 1
	mov	rdi, r13
	call	xnmalloc
	mov	rbx, rax
	mov	qword ptr [r14 + rbp*8], r12
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdi, rbx
	mov	rdx, r13
	call	memcpy
	mov	qword ptr [r15 + rbp*8], rbx
	inc	rbp
.label_332:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rcx, [rsp + 0x38]
	call	readtoken
	mov	r12, rax
	cmp	rbp, qword ptr [rsp + 8]
	jb	.label_336
	mov	edx, 8
	mov	rdi, r15
	lea	rsi, [rsp + 8]
	call	x2nrealloc
	mov	r15, rax
	mov	rsi, qword ptr [rsp + 8]
	mov	edx, 8
	mov	rdi, r14
	call	xnrealloc
	mov	r14, rax
.label_336:
	cmp	r12, -1
	jne	.label_333
	mov	qword ptr [r15 + rbp*8], 0
	mov	qword ptr [r14 + rbp*8], 0
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], r15
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_334
	mov	qword ptr [rax], r14
	jmp	.label_335
.label_334:
	mov	rdi, r14
	call	free
.label_335:
	mov	rax, rbp
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
	.align	32
	#Procedure 0x4042f0

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
	je	.label_348
	mov	edx, OFFSET FLAT:label_344
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_350
.label_348:
	mov	edx, OFFSET FLAT:label_351
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_350:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_355
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
	mov	esi, OFFSET FLAT:label_352
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_339
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_340]]
.label_509:
	add	rsp, 8
	jmp	.label_337
.label_339:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_347
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
	jmp	.label_337
.label_510:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_353
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
.label_511:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_338
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
.label_512:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_345
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
.label_513:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_342
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
	jmp	.label_337
.label_514:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
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
	jmp	.label_337
.label_515:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_343
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
	jmp	.label_337
.label_516:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_346
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
	jmp	.label_337
.label_518:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_349
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
	jmp	.label_337
.label_517:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_354
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
.label_337:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404650
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_356:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_356
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404680

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_358:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_357
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_359
	nop	dword ptr [rax]
.label_357:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_359:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_360
	inc	r9
	cmp	r9, 0xa
	jb	.label_358
.label_360:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4046e0
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xd8
	test	al, al
	je	.label_361
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_361:
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
	#Procedure 0x404770
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_362
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_363
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_365
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_19
	mov	ecx, OFFSET FLAT:label_20
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047f0

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_366
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_366:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404820

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_367
	test	rax, rax
	je	.label_368
.label_367:
	pop	rbx
	ret	
.label_368:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404840

	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:
	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_369
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_369:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404870

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_370
	test	rbx, rbx
	jne	.label_370
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_370:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_372
	test	rax, rax
	je	.label_371
.label_372:
	pop	rbx
	ret	
.label_371:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4048a0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_373
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_376
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_374
.label_373:
	test	rcx, rcx
	jne	.label_377
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_377:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_375
.label_374:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_376:
	call	xalloc_die
.label_375:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404920

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404930
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404940
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rdi, rbx
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404970
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_378
	call	rpl_calloc
	test	rax, rax
	je	.label_378
	pop	rcx
	ret	
.label_378:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049a0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4049d0

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	rbx
	mov	rbx, rdi
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	pop	rbx
	jmp	xmemdup
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049f0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_379
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_42
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404a20

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_380
	test	rsi, rsi
	mov	ecx, 1
	je	.label_381
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_381
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_380:
	mov	ecx, 1
.label_381:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a70

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_382
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_384
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_382
.label_384:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_382
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_383
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_383:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_382:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404af0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_385
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_385
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_385:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b20

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_386
	ret	
.label_386:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b40

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
	call	orig_freopen
	mov	rbx, rax
	test	r15, r15
	je	.label_387
	test	rbx, rbx
	je	.label_387
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_387
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_387
	mov	edi, OFFSET FLAT:label_140
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_388
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_387
.label_388:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	orig_freopen
.label_387:
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
	#Procedure 0x404be0

	.globl orig_freopen
	.type orig_freopen, @function
orig_freopen:
	jmp	freopen
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bf0

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
	jne	.label_389
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_389
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_390
.label_389:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_390:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_391
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_391:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404c60

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
	je	.label_392
	cmp	r15, -2
	jb	.label_392
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_392
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_392:
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
	#Procedure 0x404cc0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_393
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_393
.label_394:
	ret	
.label_393:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_394
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cf0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_395
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_395:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404d10
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d20
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	cmp	edi, 0x20
	sete	cl
	cmp	edi, 9
	sete	al
	or	al, cl
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404d30
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_396
.label_397:
	ret	
.label_396:
	cmp	edi, 0x7f
	je	.label_397
	xor	eax, eax
	jmp	.label_397
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d50
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d60
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d70
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d80
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d90
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_398
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_399]]
.label_400:
	ret	
.label_398:
	xor	eax, eax
	jmp	.label_400
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404db0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_401
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_401:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404dd0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404de0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_402
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_402:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404e00
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404e10
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404e20

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	rdi, rbx
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	call	rpl_fclose
	test	ebp, ebp
	je	.label_403
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_404
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_404
.label_403:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_404
	test	cl, cl
	jne	.label_404
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_404:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e90

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_406
	cmp	byte ptr [rax], 0x43
	jne	.label_408
	cmp	byte ptr [rax + 1], 0
	je	.label_405
.label_408:
	mov	esi, OFFSET FLAT:label_407
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_406
.label_405:
	xor	ebx, ebx
.label_406:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ed0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_25
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_409
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x404f00

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
