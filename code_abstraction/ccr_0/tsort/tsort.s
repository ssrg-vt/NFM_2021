	.section	.text
	.align	16
	#Procedure 0x4015f0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_16
	jmp	.label_10
.label_10:
	movabs	rdi, OFFSET FLAT:label_11
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_12
.label_16:
	movabs	rdi, OFFSET FLAT:label_9
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x18], eax
	call	emit_stdin_note
	movabs	rdi, OFFSET FLAT:label_13
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_17
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_14
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_15
	mov	dword ptr [rbp - 0x24], eax
	call	emit_ancillary_info
.label_12:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4016f0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_18
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401720

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_21:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_20
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_20:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_28
	jmp	.label_33
.label_28:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_21
.label_33:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_23
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_23:
	movabs	rdi, OFFSET FLAT:label_27
	call	gettext
	movabs	rsi, OFFSET FLAT:label_29
	movabs	rdx, OFFSET FLAT:label_22
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_24
	movabs	rsi, OFFSET FLAT:label_32
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_24
	movabs	rdi, OFFSET FLAT:label_25
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_24:
	movabs	rdi, OFFSET FLAT:label_19
	call	gettext
	movabs	rsi, OFFSET FLAT:label_22
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_26
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_30
	movabs	rsi, OFFSET FLAT:label_31
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4018c0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	dword ptr [rbp - 0xc], 0
	mov	dword ptr [rbp - 0x10], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_30
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_34
	movabs	rsi, OFFSET FLAT:label_35
	mov	qword ptr [rbp - 0x28], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_34
	mov	qword ptr [rbp - 0x30], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x38], rax
	call	atexit
	movabs	rdx, OFFSET FLAT:label_15
	movabs	rcx, OFFSET FLAT:label_29
	mov	r9d, 1
	movabs	rsi, OFFSET FLAT:usage
	movabs	rdi, OFFSET FLAT:label_40
	xor	r8d, r8d
	mov	r10d, r8d
	mov	r8d, dword ptr [rbp - 0x10]
	mov	r11, qword ptr [rbp - 0x18]
	mov	rbx,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x40], rdi
	mov	edi, r8d
	mov	qword ptr [rbp - 0x48], rsi
	mov	rsi, r11
	mov	r8, rbx
	mov	r11, qword ptr [rbp - 0x48]
	mov	qword ptr [rsp], r11
	mov	rbx, qword ptr [rbp - 0x40]
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rsp + 0x10], 0
	mov	dword ptr [rbp - 0x4c], eax
	mov	al, 0
	mov	qword ptr [rbp - 0x58], r10
	call	parse_gnu_standard_options_only
	mov	edi, 1
	mov	r9d, dword ptr [rbp - 0x10]
	sub	r9d,  dword ptr [dword ptr [optind]]
	cmp	edi, r9d
	jge	.label_39
	movabs	rdi, OFFSET FLAT:label_38
	call	gettext
	mov	ecx,  dword ptr [dword ptr [optind]]
	add	ecx, 1
	movsxd	rdi, ecx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 0x60], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_39:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 0x10]
	jne	.label_41
	movabs	rax, OFFSET FLAT:label_36
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_37
.label_41:
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x68], rax
.label_37:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rdi, rax
	call	tsort
	mov	ecx, 1
	xor	edx, edx
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	cmovne	ecx, edx
	mov	eax, ecx
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a80

	.globl tsort
	.type tsort, @function
tsort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], 1
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:label_36
	mov	esi, eax
	mov	qword ptr [rbp - 0x58], rcx
	call	strcmp
	cmp	eax, 0
	sete	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x39], dl
	mov	rdi, qword ptr [rbp - 0x58]
	call	new_item
	mov	qword ptr [rbp - 0x18], rax
	test	byte ptr [rbp - 0x39], 1
	jne	.label_63
	movabs	rsi, OFFSET FLAT:label_67
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx,  qword ptr [word ptr [stdin]]
	call	freopen_safer
	cmp	rax, 0
	jne	.label_63
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x5c], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_48
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_63:
	mov	esi, 2
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	fadvise
	lea	rdi, [rbp - 0x38]
	call	init_tokenbuffer
.label_68:
	movabs	rsi, OFFSET FLAT:label_64
	mov	eax, 3
	mov	edx, eax
	lea	rcx, [rbp - 0x38]
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	readtoken
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], -1
	jne	.label_69
	jmp	.label_43
.label_69:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_44
	jmp	.label_47
.label_44:
	movabs	rdi, OFFSET FLAT:label_49
	movabs	rsi, OFFSET FLAT:label_50
	mov	edx, 0x1cd
	movabs	rcx, OFFSET FLAT:label_51
	call	__assert_fail
.label_47:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x30]
	call	search_item
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_62
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	record_relation
	mov	qword ptr [rbp - 0x28], 0
.label_62:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_68
.label_43:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_42
	movabs	rdi, OFFSET FLAT:label_45
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x68], rax
	call	quotearg_n_style_colon
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_42:
	movabs	rsi, OFFSET FLAT:count_items
	mov	rdi, qword ptr [rbp - 0x18]
	call	walk_tree
.label_58:
	cmp	qword ptr [word ptr [n_strings]],  0
	jbe	.label_65
	movabs	rsi, OFFSET FLAT:scan_zeros
	mov	rdi, qword ptr [rbp - 0x18]
	call	walk_tree
.label_55:
	cmp	qword ptr [word ptr [head]],  0
	je	.label_70
	mov	rax,  qword ptr [word ptr [head]]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax,  qword ptr [word ptr [head]]
	mov	rdi, qword ptr [rax]
	call	puts
	mov	rdi,  qword ptr [word ptr [head]]
	mov	qword ptr [rdi], 0
	mov	rdi,  qword ptr [word ptr [n_strings]]
	add	rdi, -1
	mov	qword ptr [word ptr [n_strings]],  rdi
	mov	dword ptr [rbp - 0x6c], eax
.label_52:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_61
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	cmp	qword ptr [rax + 0x20], 0
	jne	.label_57
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	mov	rcx,  qword ptr [word ptr [zeros]]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	mov	qword ptr [word ptr [zeros]],  rax
.label_57:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_52
.label_61:
	mov	rax,  qword ptr [word ptr [head]]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [word ptr [head]],  rax
	jmp	.label_55
.label_70:
	cmp	qword ptr [word ptr [n_strings]],  0
	jbe	.label_56
	movabs	rdi, OFFSET FLAT:label_66
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x78], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 9], 0
.label_53:
	movabs	rsi, OFFSET FLAT:detect_loop
	mov	rdi, qword ptr [rbp - 0x18]
	call	walk_tree
	cmp	qword ptr [word ptr [loop]],  0
	jne	.label_53
	jmp	.label_56
.label_56:
	jmp	.label_58
.label_65:
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_60
	call	__errno_location
	mov	esi, dword ptr [rax]
	test	byte ptr [rbp - 0x39], 1
	mov	dword ptr [rbp - 0x7c], esi
	je	.label_46
	movabs	rdi, OFFSET FLAT:label_54
	call	gettext
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_59
.label_46:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 8]
	call	quotearg_n_style_colon
	mov	qword ptr [rbp - 0x88], rax
.label_59:
	mov	rax, qword ptr [rbp - 0x88]
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_48
	mov	esi, dword ptr [rbp - 0x7c]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_60:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e50

	.globl new_item
	.type new_item, @function
new_item:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x38
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_72
	mov	rdi, qword ptr [rbp - 8]
	call	xstrdup
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_71
.label_72:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_71
.label_71:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x28], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x30], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f00

	.globl search_item
	.type search_item, @function
search_item:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_73
	jmp	.label_80
.label_73:
	movabs	rdi, OFFSET FLAT:label_82
	movabs	rsi, OFFSET FLAT:label_50
	mov	edx, 0x84
	movabs	rcx, OFFSET FLAT:label_83
	call	__assert_fail
.label_80:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_97
	mov	rdi, qword ptr [rbp - 0x18]
	call	new_item
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x10], rax
	mov	qword ptr [rbp - 8], rax
	jmp	.label_86
.label_97:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x38], rax
.label_103:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	strcmp
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	jne	.label_79
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_86
.label_79:
	cmp	dword ptr [rbp - 0x44], 0
	jge	.label_92
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_94
.label_92:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_94:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_101
	mov	rdi, qword ptr [rbp - 0x18]
	call	new_item
	mov	qword ptr [rbp - 0x28], rax
	cmp	dword ptr [rbp - 0x44], 0
	jge	.label_78
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_110
.label_78:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
.label_110:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	je	.label_87
	jmp	.label_91
.label_87:
	movabs	rdi, OFFSET FLAT:label_93
	movabs	rsi, OFFSET FLAT:label_50
	mov	edx, 0xa8
	movabs	rcx, OFFSET FLAT:label_83
	call	__assert_fail
.label_91:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	jge	.label_106
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x30], rax
	mov	dword ptr [rbp - 0x44], 0xffffffff
	jmp	.label_108
.label_106:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x30], rax
	mov	dword ptr [rbp - 0x44], 1
.label_108:
	jmp	.label_88
.label_88:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_89
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	je	.label_99
	jmp	.label_75
.label_99:
	movabs	rdi, OFFSET FLAT:label_102
	movabs	rsi, OFFSET FLAT:label_50
	mov	edx, 0xb6
	movabs	rcx, OFFSET FLAT:label_83
	call	__assert_fail
.label_75:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	jge	.label_109
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 0x18], 0xffffffff
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_81
.label_109:
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rax
.label_81:
	jmp	.label_88
.label_89:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0x18], 0
	je	.label_111
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rcx + 0x18]
	sub	eax, dword ptr [rbp - 0x44]
	cmp	edx, eax
	jne	.label_104
.label_111:
	mov	eax, dword ptr [rbp - 0x44]
	mov	rcx, qword ptr [rbp - 0x38]
	add	eax, dword ptr [rcx + 0x18]
	mov	dword ptr [rcx + 0x18], eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_86
.label_104:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0x18]
	cmp	ecx, dword ptr [rbp - 0x44]
	jne	.label_77
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rax
	cmp	dword ptr [rbp - 0x44], 0
	jge	.label_84
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	jmp	.label_98
.label_84:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
.label_98:
	mov	rax, qword ptr [rbp - 0x30]
	mov	dword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax + 0x18], 0
	jmp	.label_107
.label_77:
	cmp	dword ptr [rbp - 0x44], 0
	jge	.label_105
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
	jmp	.label_76
.label_105:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
.label_76:
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	dword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x18]
	cmp	ecx, dword ptr [rbp - 0x44]
	jne	.label_85
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x44]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx + 0x18], eax
	jmp	.label_90
.label_85:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rcx + 0x18]
	sub	eax, dword ptr [rbp - 0x44]
	cmp	edx, eax
	jne	.label_100
	mov	eax, dword ptr [rbp - 0x44]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	dword ptr [rcx + 0x18], eax
.label_100:
	jmp	.label_90
.label_90:
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 0x18], 0
.label_107:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_74
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx + 0x10], rax
	jmp	.label_96
.label_74:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx + 8], rax
.label_96:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_86
.label_101:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0x18], 0
	je	.label_95
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
.label_95:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_103
.label_86:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402380

	.globl record_relation
	.type record_relation, @function
record_relation:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	cmp	eax, 0
	je	.label_112
	mov	eax, 0x10
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x20]
	add	rdx, 1
	mov	qword ptr [rcx + 0x20], rdx
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
.label_112:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402400

	.globl walk_tree
	.type walk_tree, @function
walk_tree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	qword ptr [rsi + 0x10], 0
	je	.label_113
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	call	recurse_tree
	mov	byte ptr [rbp - 0x11], al
.label_113:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402440

	.globl count_items
	.type count_items, @function
count_items:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [n_strings]]
	add	rdi, 1
	mov	qword ptr [word ptr [n_strings]],  rdi
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402470

	.globl scan_zeros
	.type scan_zeros, @function
scan_zeros:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_114
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	je	.label_114
	cmp	qword ptr [word ptr [head]],  0
	jne	.label_116
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [head]],  rax
	jmp	.label_115
.label_116:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [zeros]]
	mov	qword ptr [rcx + 0x28], rax
.label_115:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [zeros]],  rax
.label_114:
	xor	eax, eax
	mov	cl, al
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024e0

	.globl detect_loop
	.type detect_loop, @function
detect_loop:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x20], 0
	jbe	.label_123
	cmp	qword ptr [word ptr [loop]],  0
	jne	.label_129
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [loop]],  rax
	jmp	.label_118
.label_129:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x30
	mov	qword ptr [rbp - 0x18], rax
.label_127:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_121
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax]
	cmp	rax,  qword ptr [word ptr [loop]]
	jne	.label_128
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x28], 0
	je	.label_120
	jmp	.label_122
.label_122:
	cmp	qword ptr [word ptr [loop]],  0
	je	.label_124
	xor	eax, eax
	movabs	rdx, OFFSET FLAT:label_48
	mov	rcx,  qword ptr [word ptr [loop]]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx,  qword ptr [word ptr [loop]]
	mov	rcx, qword ptr [rcx]
	mov	edi, eax
	mov	esi, eax
	mov	al, 0
	call	error
	mov	rcx,  qword ptr [word ptr [loop]]
	cmp	rcx, qword ptr [rbp - 0x10]
	jne	.label_125
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_124
.label_125:
	mov	rax,  qword ptr [word ptr [loop]]
	mov	qword ptr [rax + 0x28], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [loop]],  rax
	jmp	.label_122
.label_124:
	jmp	.label_117
.label_117:
	cmp	qword ptr [word ptr [loop]],  0
	je	.label_126
	mov	rax,  qword ptr [word ptr [loop]]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax,  qword ptr [word ptr [loop]]
	mov	qword ptr [rax + 0x28], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [word ptr [loop]],  rax
	jmp	.label_117
.label_126:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_119
.label_120:
	mov	rax,  qword ptr [word ptr [loop]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [loop]],  rax
	jmp	.label_121
.label_128:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	add	rax, 8
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_127
.label_121:
	jmp	.label_118
.label_118:
	jmp	.label_123
.label_123:
	mov	byte ptr [rbp - 1], 0
.label_119:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026b0

	.globl recurse_tree
	.type recurse_tree, @function
recurse_tree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi + 8], 0
	jne	.label_135
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_135
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rax
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_131
.label_135:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_137
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	recurse_tree
	test	al, 1
	jne	.label_133
	jmp	.label_134
.label_133:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_131
.label_134:
	jmp	.label_137
.label_137:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rax
	test	al, 1
	jne	.label_139
	jmp	.label_140
.label_139:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_131
.label_140:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_130
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	recurse_tree
	test	al, 1
	jne	.label_136
	jmp	.label_138
.label_136:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_131
.label_138:
	jmp	.label_130
.label_130:
	jmp	.label_132
.label_132:
	mov	byte ptr [rbp - 1], 0
.label_131:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4027a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4027c0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4027e0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_144
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_147
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_144
.label_147:
	movabs	rdi, OFFSET FLAT:label_146
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_142
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_141
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_143
.label_142:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_48
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_143:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_144:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_145
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_145:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4028d0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x1c]
	call	posix_fadvise
	mov	dword ptr [rbp - 0x20], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402910

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	je	.label_148
	mov	rdi, qword ptr [rbp - 8]
	call	fileno
	xor	ecx, ecx
	mov	edi, ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x18], rdi
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x18]
	call	fdadvise
.label_148:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402960

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rbp - 0x19], 0
	mov	byte ptr [rbp - 0x1a], 0
	mov	byte ptr [rbp - 0x1b], 0
	mov	rdi, qword ptr [rbp - 0x18]
	call	fileno
	mov	ecx, eax
	test	eax, eax
	mov	dword ptr [rbp - 0x24], ecx
	je	.label_150
	jmp	.label_154
.label_154:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	je	.label_156
	jmp	.label_158
.label_158:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 2
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_159
	jmp	.label_163
.label_163:
	mov	eax, 2
	mov	edi, eax
	mov	esi, eax
	call	dup2
	cmp	eax, 2
	je	.label_166
	mov	byte ptr [rbp - 0x1b], 1
.label_166:
	jmp	.label_159
.label_159:
	mov	eax, 1
	mov	edi, eax
	mov	esi, eax
	call	dup2
	cmp	eax, 1
	je	.label_168
	mov	byte ptr [rbp - 0x1a], 1
.label_168:
	jmp	.label_156
.label_156:
	xor	eax, eax
	mov	edi, eax
	mov	esi, eax
	call	dup2
	cmp	eax, 0
	je	.label_151
	mov	byte ptr [rbp - 0x19], 1
.label_151:
	jmp	.label_150
.label_150:
	jmp	.label_155
.label_155:
	test	byte ptr [rbp - 0x19], 1
	je	.label_157
	xor	edi, edi
	call	protect_fd
	test	al, 1
	jne	.label_157
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_153
.label_157:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_165
	mov	edi, 1
	call	protect_fd
	test	al, 1
	jne	.label_165
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_161
.label_165:
	test	byte ptr [rbp - 0x1b], 1
	je	.label_149
	mov	edi, 2
	call	protect_fd
	test	al, 1
	jne	.label_149
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_152
.label_149:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	rpl_freopen
	mov	qword ptr [rbp - 0x18], rax
.label_152:
	jmp	.label_161
.label_161:
	jmp	.label_153
.label_153:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x20], ecx
	test	byte ptr [rbp - 0x1b], 1
	je	.label_164
	mov	edi, 2
	call	close
	mov	dword ptr [rbp - 0x30], eax
.label_164:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_167
	mov	edi, 1
	call	close
	mov	dword ptr [rbp - 0x34], eax
.label_167:
	test	byte ptr [rbp - 0x19], 1
	je	.label_162
	xor	edi, edi
	call	close
	mov	dword ptr [rbp - 0x38], eax
.label_162:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_160
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x3c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rax], ecx
.label_160:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b30

	.globl protect_fd
	.type protect_fd, @function
protect_fd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:label_169
	xor	esi, esi
	mov	dword ptr [rbp - 8], edi
	mov	rdi, rax
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 8]
	je	.label_170
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_171
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	dword ptr [rbp - 0x10], eax
	call	__errno_location
	mov	dword ptr [rax], 9
.label_171:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_172
.label_170:
	mov	byte ptr [rbp - 1], 1
.label_172:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ba0
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1c0
	test	al, al
	movaps	xmmword ptr [rbp - 0x110], xmm7
	movaps	xmmword ptr [rbp - 0x120], xmm6
	movaps	xmmword ptr [rbp - 0x130], xmm5
	movaps	xmmword ptr [rbp - 0x140], xmm4
	movaps	xmmword ptr [rbp - 0x150], xmm3
	movaps	xmmword ptr [rbp - 0x160], xmm2
	movaps	xmmword ptr [rbp - 0x170], xmm1
	movaps	xmmword ptr [rbp - 0x180], xmm0
	mov	dword ptr [rbp - 0x184], edi
	mov	qword ptr [rbp - 0x190], r9
	mov	qword ptr [rbp - 0x198], r8
	mov	qword ptr [rbp - 0x1a0], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
	mov	qword ptr [rbp - 0x1b0], rsi
	je	.label_173
	movaps	xmm0, xmmword ptr [rbp - 0x180]
	movaps	xmmword ptr [rbp - 0xd0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm7
.label_173:
	mov	rax, qword ptr [rbp - 0x190]
	mov	rcx, qword ptr [rbp - 0x198]
	mov	rdx, qword ptr [rbp - 0x1a0]
	mov	rsi, qword ptr [rbp - 0x1a8]
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	r8d, dword ptr [rbp - 0x184]
	mov	dword ptr [rbp - 4], r8d
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	r8d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x38], r8d
	mov	dword ptr [dword ptr [opterr]],  0
	cmp	dword ptr [rbp - 4], 2
	jne	.label_174
	movabs	rdx, OFFSET FLAT:label_180
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x34], eax
	cmp	eax, -1
	je	.label_174
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 0x68
	mov	dword ptr [rbp - 0x1b4], eax
	mov	dword ptr [rbp - 0x1b8], ecx
	je	.label_178
	jmp	.label_175
.label_175:
	mov	eax, dword ptr [rbp - 0x1b4]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x1bc], eax
	je	.label_177
	jmp	.label_179
.label_178:
	xor	edi, edi
	call	qword ptr [rbp - 0x30]
	jmp	.label_176
.label_177:
	lea	rax, [rbp - 0x50]
	mov	rcx, rax
	lea	rdx, [rbp - 0x100]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x30
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, rax
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_179:
	jmp	.label_176
.label_176:
	jmp	.label_174
.label_174:
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0x1c0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402dd0

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x1d0
	test	al, al
	movaps	xmmword ptr [rbp - 0x140], xmm7
	movaps	xmmword ptr [rbp - 0x150], xmm6
	movaps	xmmword ptr [rbp - 0x160], xmm5
	movaps	xmmword ptr [rbp - 0x170], xmm4
	movaps	xmmword ptr [rbp - 0x180], xmm3
	movaps	xmmword ptr [rbp - 0x190], xmm2
	movaps	xmmword ptr [rbp - 0x1a0], xmm1
	movaps	xmmword ptr [rbp - 0x1b0], xmm0
	mov	dword ptr [rbp - 0x1b4], edi
	mov	dword ptr [rbp - 0x1b8], r9d
	mov	qword ptr [rbp - 0x1c0], r8
	mov	qword ptr [rbp - 0x1c8], rcx
	mov	qword ptr [rbp - 0x1d0], rdx
	mov	qword ptr [rbp - 0x1d8], rsi
	je	.label_186
	movaps	xmm0, xmmword ptr [rbp - 0x1b0]
	movaps	xmmword ptr [rbp - 0x100], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x1a0]
	movaps	xmmword ptr [rbp - 0xf0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x190]
	movaps	xmmword ptr [rbp - 0xe0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x180]
	movaps	xmmword ptr [rbp - 0xd0], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm7
.label_186:
	mov	eax, dword ptr [rbp - 0x1b8]
	mov	cl, al
	mov	rdx, qword ptr [rbp + 0x10]
	mov	rsi, qword ptr [rbp - 0x1c0]
	mov	rdi, qword ptr [rbp - 0x1c8]
	mov	r8, qword ptr [rbp - 0x1d0]
	mov	r9, qword ptr [rbp - 0x1d8]
	mov	r10d, dword ptr [rbp - 0x1b4]
	movabs	r11, OFFSET FLAT:long_options
	xor	ebx, ebx
	mov	r14d, ebx
	movabs	r15, OFFSET FLAT:label_180
	movabs	r12, OFFSET FLAT:label_30
	mov	dword ptr [rbp - 0x24], r10d
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x48], rsi
	and	cl, 1
	mov	byte ptr [rbp - 0x49], cl
	mov	qword ptr [rbp - 0x58], rdx
	mov	r10d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x60], r10d
	mov	dword ptr [dword ptr [opterr]],  1
	mov	cl, byte ptr [rbp - 0x49]
	test	cl, 1
	cmovne	r15, r12
	mov	qword ptr [rbp - 0x68], r15
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, r11
	mov	r8, r14
	call	getopt_long
	mov	dword ptr [rbp - 0x5c], eax
	cmp	eax, -1
	je	.label_182
	mov	eax, dword ptr [rbp - 0x5c]
	mov	ecx, eax
	sub	ecx, 0x68
	mov	dword ptr [rbp - 0x1dc], eax
	mov	dword ptr [rbp - 0x1e0], ecx
	je	.label_187
	jmp	.label_185
.label_185:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_184
	jmp	.label_183
.label_187:
	xor	edi, edi
	call	qword ptr [rbp - 0x58]
	jmp	.label_181
.label_184:
	lea	rax, [rbp - 0x80]
	mov	rcx, rax
	lea	rdx, [rbp - 0x130]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x18]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x30
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, rax
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_183:
	mov	rax, qword ptr [rbp - 0x58]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	rax
.label_181:
	jmp	.label_182
.label_182:
	mov	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	add	rsp, 0x1d0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403030

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_192
	movabs	rdi, OFFSET FLAT:label_190
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_192:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_194
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_188
.label_194:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_188:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_191
	movabs	rsi, OFFSET FLAT:label_195
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_191
	movabs	rsi, OFFSET FLAT:label_193
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_189
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_189:
	jmp	.label_191
.label_191:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403150
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_196
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_197
.label_196:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_197
.label_197:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	mov	esi, ecx
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x24], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031d0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_198
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_199
.label_198:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_199
.label_199:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403210
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x10], esi
	je	.label_200
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_201
.label_200:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_201
.label_201:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403260

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	dword ptr [rbp - 0x10], edx
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x11], al
	cmp	qword ptr [rbp - 8], 0
	je	.label_202
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_203
.label_202:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_203
.label_203:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	edx, ecx
	shr	rdx, 5
	shl	rdx, 2
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	and	rax, 0x1f
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	mov	ecx, esi
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	and	esi, 1
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	xor	esi, dword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x24]
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403310
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_204
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_204:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 4], ecx
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403350

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_205
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_205:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_207
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_206
.label_207:
	call	abort
.label_206:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4033c0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_208
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_209
.label_208:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_209
.label_209:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x4c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403490

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	qword ptr [rbp - 0x48], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	sete	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7b], bl
	mov	byte ptr [rbp - 0x7c], 0
	mov	byte ptr [rbp - 0x7d], 0
	mov	byte ptr [rbp - 0x7e], 1
.label_365:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_268
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_273]]
	jmp	rcx
.label_624:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_623:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_280
	jmp	.label_283
.label_283:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_284
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_284:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_280
.label_280:
	movabs	rax, OFFSET FLAT:label_296
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_297
.label_625:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_297
.label_626:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_350
	movabs	rdi, OFFSET FLAT:label_309
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_312
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_350:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_318
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_337:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_322
	jmp	.label_325
.label_325:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_327
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_327:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_332
.label_332:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_337
.label_322:
	jmp	.label_318
.label_318:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_297
.label_621:
	mov	byte ptr [rbp - 0x79], 1
.label_620:
	mov	byte ptr [rbp - 0x7b], 1
.label_622:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_347
	mov	byte ptr [rbp - 0x79], 1
.label_347:
	jmp	.label_395
.label_395:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_349
	jmp	.label_353
.label_353:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_354
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_354:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_349
.label_349:
	movabs	rax, OFFSET FLAT:label_312
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_297
.label_619:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_297
.label_268:
	call	abort
.label_297:
	mov	qword ptr [rbp - 0x58], 0
.label_335:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_216
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_373
.label_216:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_373:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_383
	jmp	.label_243
.label_383:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_217
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_217
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_217
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_399
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_399
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_231
.label_399:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_231:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_217
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_217
	test	byte ptr [rbp - 0x7b], 1
	je	.label_220
	jmp	.label_223
.label_220:
	mov	byte ptr [rbp - 0x81], 1
.label_217:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	eax, esi
	mov	rcx, rax
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_226
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_233]]
	jmp	rcx
.label_660:
	test	byte ptr [rbp - 0x79], 1
	je	.label_234
	jmp	.label_386
.label_386:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_239
	jmp	.label_223
.label_239:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_246
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_246
	jmp	.label_248
.label_248:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_249
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_249:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_254
.label_254:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_257
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_257:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_261
.label_261:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_265
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_265:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_246:
	jmp	.label_274
.label_274:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_276
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_276:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_282
.label_282:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_286
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_286
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_286
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_286
	jmp	.label_302
.label_302:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_304
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_304:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_311
.label_311:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_315
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_315:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_286
.label_286:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_326
.label_234:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_328
	jmp	.label_289
.label_328:
	jmp	.label_326
.label_326:
	jmp	.label_219
.label_671:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_334
	jmp	.label_340
.label_340:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_341
	jmp	.label_356
.label_334:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_362
	jmp	.label_223
.label_362:
	jmp	.label_225
.label_341:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_222
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_222
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_222
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_211
	jmp	.label_364
.label_364:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_211
	jmp	.label_368
.label_368:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_211
	jmp	.label_374
.label_374:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_211
	jmp	.label_378
.label_378:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_379
	jmp	.label_211
.label_211:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_385
	jmp	.label_223
.label_385:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_389
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_389:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_397
.label_397:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_401
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_401:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_406
.label_406:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_410
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_410:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_413
.label_413:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_358
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_358:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_215
.label_379:
	jmp	.label_215
.label_215:
	jmp	.label_222
.label_222:
	jmp	.label_225
.label_356:
	jmp	.label_225
.label_225:
	jmp	.label_219
.label_661:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_227
.label_662:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_227
.label_666:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_227
.label_664:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_232
.label_667:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_232
.label_663:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_232
.label_665:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_227
.label_672:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_237
	test	byte ptr [rbp - 0x7b], 1
	je	.label_242
	jmp	.label_223
.label_242:
	jmp	.label_218
.label_237:
	test	byte ptr [rbp - 0x79], 1
	je	.label_245
	test	byte ptr [rbp - 0x7b], 1
	je	.label_245
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_245
	jmp	.label_218
.label_245:
	jmp	.label_232
.label_232:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_252
	test	byte ptr [rbp - 0x7b], 1
	je	.label_252
	jmp	.label_223
.label_252:
	jmp	.label_227
.label_227:
	test	byte ptr [rbp - 0x79], 1
	je	.label_259
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_241
.label_259:
	jmp	.label_219
.label_673:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_263
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_266
	jmp	.label_270
.label_263:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_266
.label_270:
	jmp	.label_219
.label_266:
	jmp	.label_272
.label_272:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_275
	jmp	.label_219
.label_275:
	jmp	.label_278
.label_278:
	mov	byte ptr [rbp - 0x83], 1
.label_668:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_281
	test	byte ptr [rbp - 0x7b], 1
	je	.label_281
	jmp	.label_223
.label_281:
	jmp	.label_219
.label_670:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_287
	test	byte ptr [rbp - 0x7b], 1
	je	.label_292
	jmp	.label_223
.label_292:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_301
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_301
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_301:
	jmp	.label_306
.label_306:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_359
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_359:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_314
.label_314:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_317
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_317:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_324
.label_324:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_329
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_329:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_287:
	jmp	.label_219
.label_669:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_219
.label_226:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_333
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x91], sil
	jmp	.label_345
.label_333:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_357
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_357:
	jmp	.label_267
.label_267:
	lea	rdi, [rbp - 0xa4]
	lea	rcx, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	mov	rsi, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_376
	jmp	.label_381
.label_376:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_382
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_381
.label_382:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_230
	mov	byte ptr [rbp - 0x91], 0
.label_407:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_390
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_390:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_403
	jmp	.label_405
.label_403:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_407
.label_405:
	jmp	.label_381
.label_230:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_250
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_250
	mov	qword ptr [rbp - 0xb8], 1
.label_247:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_210
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	add	esi, -0x5b
	sub	esi, 2
	mov	dword ptr [rbp - 0x130], edx
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_214
	jmp	.label_229
.label_229:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_214
	jmp	.label_351
.label_351:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_214
	jmp	.label_236
.label_236:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_238
	jmp	.label_214
.label_214:
	jmp	.label_223
.label_238:
	jmp	.label_212
.label_212:
	jmp	.label_367
.label_367:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_247
.label_210:
	jmp	.label_250
.label_250:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_255
	mov	byte ptr [rbp - 0x91], 0
.label_255:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_294
.label_294:
	jmp	.label_331
.label_331:
	jmp	.label_262
.label_262:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_267
.label_381:
	jmp	.label_345
.label_345:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_271
	test	byte ptr [rbp - 0x79], 1
	je	.label_213
	test	byte ptr [rbp - 0x91], 1
	jne	.label_213
.label_271:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_307:
	test	byte ptr [rbp - 0x79], 1
	je	.label_288
	test	byte ptr [rbp - 0x91], 1
	jne	.label_288
	jmp	.label_293
.label_293:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_295
	jmp	.label_223
.label_295:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_300
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_300
	jmp	.label_305
.label_305:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_308
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_308:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_313
.label_313:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_316
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_316:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_323
.label_323:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_330
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_330:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_300:
	jmp	.label_336
.label_336:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_338
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_338:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_346
.label_346:
	jmp	.label_343
.label_343:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_344
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_344:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_352
.label_352:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_355
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_355:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_361
.label_288:
	test	byte ptr [rbp - 0x81], 1
	je	.label_366
	jmp	.label_369
.label_369:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_371
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_371:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_366:
	jmp	.label_361
.label_361:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_380
	jmp	.label_384
.label_380:
	jmp	.label_392
.label_392:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_388
	test	byte ptr [rbp - 0x82], 1
	jne	.label_388
	jmp	.label_391
.label_391:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_393
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_393:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_396
.label_396:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_400
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_400:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_388:
	jmp	.label_408
.label_408:
	jmp	.label_409
.label_409:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_412
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_412:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_307
.label_384:
	jmp	.label_218
.label_213:
	jmp	.label_219
.label_219:
	test	byte ptr [rbp - 0x79], 1
	je	.label_221
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_224
.label_221:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_228
.label_224:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_228
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	ecx, esi
	and	rcx, 0x1f
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	and	eax, 1
	cmp	eax, 0
	jne	.label_235
.label_228:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_235
	jmp	.label_218
.label_235:
	jmp	.label_241
.label_241:
	jmp	.label_404
.label_404:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_244
	jmp	.label_223
.label_244:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_240
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_240
	jmp	.label_251
.label_251:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_258
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_258:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_256
.label_256:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_260
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_260:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_264
.label_264:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_269
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_269:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_240:
	jmp	.label_277
.label_277:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_279
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_279:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_285
.label_285:
	jmp	.label_218
.label_218:
	jmp	.label_290
.label_290:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_291
	test	byte ptr [rbp - 0x82], 1
	jne	.label_291
	jmp	.label_298
.label_298:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_299
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_299:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_303
.label_303:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_310
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_310:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_291:
	jmp	.label_319
.label_319:
	jmp	.label_320
.label_320:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_321
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_321:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_253
	mov	byte ptr [rbp - 0x7e], 0
.label_253:
	jmp	.label_289
.label_289:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_335
.label_243:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_339
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_339
	test	byte ptr [rbp - 0x7b], 1
	je	.label_339
	jmp	.label_223
.label_339:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_342
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_342
	test	byte ptr [rbp - 0x7d], 1
	je	.label_342
	test	byte ptr [rbp - 0x7e], 1
	je	.label_348
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_360
.label_348:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_363
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_363
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_365
.label_363:
	jmp	.label_370
.label_370:
	jmp	.label_342
.label_342:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_372
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_372
	jmp	.label_375
.label_375:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_377
	jmp	.label_411
.label_411:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_398
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_398:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_387
.label_387:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_375
.label_377:
	jmp	.label_372
.label_372:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_394
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_394:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_360
.label_223:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_402
	test	byte ptr [rbp - 0x79], 1
	je	.label_402
	mov	dword ptr [rbp - 0x34], 4
.label_402:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rbp - 0x34]
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
.label_360:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404830
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404870

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_414
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_415
.label_414:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_415
.label_415:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 1
	xor	esi, esi
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	cmovne	ecx, esi
	or	edi, ecx
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	r10, qword ptr [rbp - 0x30]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbx + 0x30]
	mov	rdi, rdx
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	r8d, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x5c]
	mov	dword ptr [rax], r8d
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_416
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_416:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049d0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_421:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_419
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_421
.label_419:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_420
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_418]],  rax
.label_420:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_417
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_417:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ab0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404af0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_422
	call	abort
.label_422:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_426
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_429
	call	xalloc_die
.label_429:
	test	byte ptr [rbp - 0x31], 1
	je	.label_425
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_428
.label_425:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_428:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	je	.label_427
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_418]]
	mov	qword ptr [rax + 8], rcx
.label_427:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
	add	edx, 1
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_426:
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_423
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_424
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_424:
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	movsxd	rdi, dword ptr [rbp - 4]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_423:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x6c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d70

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404db0
	.globl quotearg
	.type quotearg, @function
quotearg:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404dd0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e00

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e40

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, r8
	mov	esi, ecx
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_430
	call	abort
.label_430:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x40], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404eb0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x50]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ef0
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f20
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f50

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], al
	mov	rsi, rcx
	mov	rdi, rsi
	mov	rsi, r8
	mov	dword ptr [rbp - 0x54], edx
	mov	rdx, r10
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	call	set_char_quoting
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x64], eax
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404fd0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405000

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405020
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405050

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rax, [rbp - 0x48]
	mov	esi, 0x3a
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, r9
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	call	set_char_quoting
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405100

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	r8, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405140

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	movabs	r9, OFFSET FLAT:default_quoting_options
	mov	r10d, 0x38
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rsi, r9
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x68]
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051c0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051f0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405230

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405270
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052a0

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052d0

	.globl quote
	.type quote, @function
quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quote_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052f0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_432
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_437
.label_432:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_433
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_431
	movabs	rax, OFFSET FLAT:label_435
	movabs	rcx, OFFSET FLAT:label_436
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_437
.label_431:
	movabs	rsi, OFFSET FLAT:label_440
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_434
	movabs	rax, OFFSET FLAT:label_438
	movabs	rcx, OFFSET FLAT:label_439
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_437
.label_434:
	movabs	rax, OFFSET FLAT:label_312
	movabs	rcx, OFFSET FLAT:label_296
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_437:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053f0

	.globl init_tokenbuffer
	.type init_tokenbuffer, @function
init_tokenbuffer:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 8], 0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405420

	.globl readtoken
	.type readtoken, @function
readtoken:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	xor	eax, eax
	mov	r8d, 0x20
	mov	r9d, r8d
	lea	r10, [rbp - 0x70]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, r10
	mov	esi, eax
	mov	rdx, r9
	call	memset
	mov	qword ptr [rbp - 0x40], 0
.label_443:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_451
	lea	rsi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x71], dl
	movzx	edi, byte ptr [rbp - 0x71]
	call	set_nth_bit
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_443
.label_451:
	mov	rdi, qword ptr [rbp - 0x10]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x34], eax
.label_453:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x34], 0
	mov	byte ptr [rbp - 0x72], cl
	jl	.label_454
	lea	rsi, [rbp - 0x70]
	movsxd	rdi, dword ptr [rbp - 0x34]
	call	get_nth_bit
	mov	byte ptr [rbp - 0x72], al
.label_454:
	mov	al, byte ptr [rbp - 0x72]
	test	al, 1
	jne	.label_442
	jmp	.label_447
.label_442:
	jmp	.label_449
.label_449:
	mov	rdi, qword ptr [rbp - 0x10]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_453
.label_447:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x40], 0
.label_455:
	cmp	dword ptr [rbp - 0x34], 0
	jge	.label_444
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_444
	mov	qword ptr [rbp - 8], -1
	jmp	.label_441
.label_444:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_446
	lea	rsi, [rbp - 0x48]
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x30]
	call	x2nrealloc
	mov	qword ptr [rbp - 0x30], rax
.label_446:
	cmp	dword ptr [rbp - 0x34], 0
	jge	.label_448
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rcx + rax], 0
	jmp	.label_450
.label_448:
	lea	rsi, [rbp - 0x70]
	movsxd	rdi, dword ptr [rbp - 0x34]
	call	get_nth_bit
	test	al, 1
	jne	.label_452
	jmp	.label_445
.label_452:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rcx + rax], 0
	jmp	.label_450
.label_445:
	mov	eax, dword ptr [rbp - 0x34]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x40], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	mov	byte ptr [rsi + rdx], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_455
.label_450:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_441:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405600

	.globl set_nth_bit
	.type set_nth_bit, @function
set_nth_bit:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 1
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	and	rdi, 0x3f
	mov	rcx, rdi
	shl	rsi, cl
	mov	rdi, qword ptr [rbp - 8]
	shr	rdi, 6
	mov	rax, qword ptr [rbp - 0x10]
	or	rsi, qword ptr [rax + rdi*8]
	mov	qword ptr [rax + rdi*8], rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405640

	.globl get_nth_bit
	.type get_nth_bit, @function
get_nth_bit:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	shr	rsi, 6
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdi + rsi*8]
	mov	rdi, qword ptr [rbp - 8]
	and	rdi, 0x3f
	mov	rcx, rdi
	shr	rsi, cl
	and	rsi, 1
	cmp	rsi, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405680
	.globl readtokens
	.type readtokens, @function
readtokens:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_456
	mov	qword ptr [rbp - 0x10], 0x40
	jmp	.label_462
.label_456:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
.label_462:
	mov	eax, 8
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x60], rcx
	mov	rdi, qword ptr [rbp - 0x60]
	call	xnmalloc
	mov	edx, 8
	mov	esi, edx
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x60]
	call	xnmalloc
	mov	qword ptr [rbp - 0x58], rax
	mov	qword ptr [rbp - 0x68], 0
	mov	rdi, qword ptr [rbp - 0x48]
	call	init_tokenbuffer
.label_459:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x48]
	call	readtoken
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x60]
	jb	.label_458
	lea	rsi, [rbp - 0x60]
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdi, rcx
	call	x2nrealloc
	mov	r8d, 8
	mov	edx, r8d
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdi, rax
	call	xnrealloc
	mov	qword ptr [rbp - 0x58], rax
.label_458:
	cmp	qword ptr [rbp - 0x78], -1
	jne	.label_460
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + rax*8], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx + rax*8], 0
	jmp	.label_463
.label_460:
	mov	eax, 1
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, 1
	mov	rdi, rcx
	call	xnmalloc
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rsi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, 1
	mov	rdi, rax
	mov	rdx, rcx
	mov	qword ptr [rbp - 0x80], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx + rax*8], rdx
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_459
.label_463:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rdi], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_457
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	jmp	.label_461
.label_457:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	free
.label_461:
	mov	rax, qword ptr [rbp - 0x68]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405860

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_472
	movabs	rsi, OFFSET FLAT:label_469
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_481
.label_472:
	movabs	rsi, OFFSET FLAT:label_482
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_481:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_470
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, rcx
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	ecx, 0x7e3
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, r8b
	call	fprintf
	mov	ecx, OFFSET FLAT:label_477
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rdx
	sub	rsi, 9
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	ja	.label_478
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_465]]
	jmp	rcx
.label_695:
	jmp	.label_464
.label_696:
	movabs	rdi, OFFSET FLAT:label_471
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_464
.label_697:
	movabs	rdi, OFFSET FLAT:label_468
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_464
.label_698:
	movabs	rdi, OFFSET FLAT:label_467
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_464
.label_699:
	movabs	rdi, OFFSET FLAT:label_475
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_464
.label_700:
	movabs	rdi, OFFSET FLAT:label_473
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_464
.label_701:
	movabs	rdi, OFFSET FLAT:label_474
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_464
.label_702:
	movabs	rdi, OFFSET FLAT:label_479
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	jmp	.label_464
.label_703:
	movabs	rdi, OFFSET FLAT:label_466
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_464
.label_704:
	movabs	rdi, OFFSET FLAT:label_480
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_464
.label_478:
	movabs	rdi, OFFSET FLAT:label_476
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x148], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x15c], eax
.label_464:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e20
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_485:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_483
	jmp	.label_484
.label_484:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_485
.label_483:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e90

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_486:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_491
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_489
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_487
.label_489:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_487:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_491:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_488
	jmp	.label_492
.label_488:
	jmp	.label_490
.label_490:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_486
.label_492:
	lea	r8, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405fa0
	.globl version_etc
	.type version_etc, @function
version_etc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1a0
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	je	.label_493
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_493:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406110
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_494
	call	gettext
	movabs	rsi, OFFSET FLAT:label_496
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_495
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_29
	movabs	rdx, OFFSET FLAT:label_22
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_497
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4061a0

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_498
	call	xalloc_die
.label_498:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4061f0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_499
	cmp	qword ptr [rbp - 8], 0
	je	.label_499
	call	xalloc_die
.label_499:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406230

	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_500
	call	xalloc_die
.label_500:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406280

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_501
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_501
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_503
.label_501:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_502
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_502
	call	xalloc_die
.label_502:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_503:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406300

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_504
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_507
	mov	eax, 0x80
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	setne	sil
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_507:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_505
	call	xalloc_die
.label_505:
	jmp	.label_506
.label_504:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_508
	call	xalloc_die
.label_508:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_506:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4063f0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406410
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406440
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406480
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_509
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_510
.label_509:
	call	xalloc_die
.label_510:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4064e0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x18], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406520

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	xmemdup
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406560

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_511
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_48
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4065a0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_512
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_515
.label_512:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_513
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_514
.label_513:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_514
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_514:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_516
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_516:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_515:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406670

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_517
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_518
.label_517:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_519
.label_518:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_519:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4066d0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_520
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_520:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406710

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:label_169
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	orig_freopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_523
	jmp	.label_524
.label_523:
	cmp	qword ptr [rbp - 8], 0
	je	.label_521
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	mov	dword ptr [rbp - 0x2c], eax
	mov	edi, dword ptr [rbp - 0x2c]
	mov	esi, dword ptr [rbp - 0x2c]
	call	dup2
	cmp	eax, 0
	jge	.label_525
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_525
	mov	esi, 0x80000
	mov	rdi, qword ptr [rbp - 0x28]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x30], eax
	mov	dword ptr [rbp - 0x34], 0
	mov	eax, dword ptr [rbp - 0x30]
	cmp	eax, dword ptr [rbp - 0x2c]
	je	.label_527
	mov	edi, dword ptr [rbp - 0x30]
	mov	esi, dword ptr [rbp - 0x2c]
	call	dup2
	cmp	eax, 0
	jge	.label_522
	mov	dword ptr [rbp - 0x34], 1
.label_522:
	mov	edi, dword ptr [rbp - 0x30]
	call	close
	mov	dword ptr [rbp - 0x38], eax
.label_527:
	cmp	dword ptr [rbp - 0x34], 0
	jne	.label_526
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	call	orig_freopen
	mov	qword ptr [rbp - 0x20], rax
.label_526:
	jmp	.label_525
.label_525:
	jmp	.label_521
.label_521:
	jmp	.label_524
.label_524:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406820

	.globl orig_freopen
	.type orig_freopen, @function
orig_freopen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	freopen
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406850

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_528
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_528
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_528
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_529
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_530
.label_529:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_530
.label_528:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_530:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406920

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_531
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_531:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_532
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_532
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_532
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_533
.label_532:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_533:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4069d0

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jne	.label_534
	mov	dword ptr [rbp - 4], 0
	jmp	.label_538
.label_534:
	jmp	.label_535
.label_535:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x2a], cl
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_537
	jmp	.label_536
.label_537:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_535
.label_536:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_538:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a90

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	__fpending
	cmp	rax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror_unlocked
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	test	byte ptr [rbp - 0x12], 1
	jne	.label_539
	test	byte ptr [rbp - 0x13], 1
	je	.label_540
	test	byte ptr [rbp - 0x11], 1
	jne	.label_539
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_540
.label_539:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_541
	call	__errno_location
	mov	dword ptr [rax], 0
.label_541:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_542
.label_540:
	mov	dword ptr [rbp - 4], 0
.label_542:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406b40

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	esi, eax
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_543
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_546
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_547
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_544
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_545
.label_547:
	mov	byte ptr [rbp - 5], 0
.label_545:
	jmp	.label_543
.label_543:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406bc0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_548
	movabs	rax, OFFSET FLAT:label_30
	mov	qword ptr [rbp - 8], rax
.label_548:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_549
	movabs	rax, OFFSET FLAT:label_550
	mov	qword ptr [rbp - 8], rax
.label_549:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406c20

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	add	edi, 0xffffd828
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_551
	jmp	.label_553
.label_553:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_552
.label_551:
	jmp	.label_552
.label_552:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406c70
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_554
	jmp	.label_556
.label_556:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_554
	jmp	.label_555
.label_555:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_557
	jmp	.label_554
.label_554:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_558
.label_557:
	mov	byte ptr [rbp - 1], 0
.label_558:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ce0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_559
	jmp	.label_562
.label_562:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_560
	jmp	.label_559
.label_559:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_561
.label_560:
	mov	byte ptr [rbp - 1], 0
.label_561:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406d30
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_563
	jmp	.label_564
.label_564:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_565
.label_563:
	mov	byte ptr [rbp - 1], 0
.label_565:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406d60
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_566
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_566:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406d90
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 0x20
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	jb	.label_567
	jmp	.label_569
.label_569:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_570
	jmp	.label_567
.label_567:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_568
.label_570:
	mov	byte ptr [rbp - 1], 0
.label_568:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406de0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_571
	jmp	.label_573
.label_573:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_572
.label_571:
	mov	byte ptr [rbp - 1], 0
.label_572:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406e20
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_574
	jmp	.label_576
.label_576:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_575
.label_574:
	mov	byte ptr [rbp - 1], 0
.label_575:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406e60
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_577
	jmp	.label_579
.label_579:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_578
.label_577:
	mov	byte ptr [rbp - 1], 0
.label_578:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ea0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_580
	jmp	.label_582
.label_582:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_581
.label_580:
	mov	byte ptr [rbp - 1], 0
.label_581:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ee0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	mov	eax, edi
	sub	edi, 0x5d
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_583
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_585]]
	jmp	rcx
.label_712:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_584
.label_583:
	mov	byte ptr [rbp - 1], 0
.label_584:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f30
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_586
	jmp	.label_588
.label_588:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_589
	jmp	.label_586
.label_586:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_587
.label_589:
	mov	byte ptr [rbp - 1], 0
.label_587:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f80
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_590
	jmp	.label_592
.label_592:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_591
.label_590:
	mov	byte ptr [rbp - 1], 0
.label_591:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406fc0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_593
	jmp	.label_596
.label_596:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_593
	jmp	.label_594
.label_594:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_595
	jmp	.label_593
.label_593:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_597
.label_595:
	mov	byte ptr [rbp - 1], 0
.label_597:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407030

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_598
	jmp	.label_600
.label_600:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_599
.label_598:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_599:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407070
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_601
	jmp	.label_603
.label_603:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_602
.label_601:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_602:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
