	.section	.text
	.align	32
	#Procedure 0x401540

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
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
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
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	mov	ecx, OFFSET FLAT:label_18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_15
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_15
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_15:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_18
	mov	ecx, OFFSET FLAT:label_10
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_10
	mov	ecx, OFFSET FLAT:label_11
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_9:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
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
	#Procedure 0x401760

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_55
	call	setlocale
	mov	edi, OFFSET FLAT:label_29
	mov	esi, OFFSET FLAT:label_30
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_29
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + have_read_stdin],  0
	mov	byte ptr [rip + serial_merge],  0
	mov	ebx, OFFSET FLAT:label_42
	mov	r15d, OFFSET FLAT:label_43
	jmp	.label_33
.label_52:
	mov	byte ptr [rip + line_delim],  1
	nop	dword ptr [rax + rax]
.label_33:
	mov	edx, OFFSET FLAT:label_46
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x63
	jle	.label_50
	cmp	eax, 0x7a
	je	.label_52
	cmp	eax, 0x73
	je	.label_54
	cmp	eax, 0x64
	jne	.label_36
	mov	rbx, qword ptr [rip + optarg]
	cmp	byte ptr [rbx], 0
	cmove	rbx, r15
	jmp	.label_33
.label_54:
	mov	byte ptr [rip + serial_merge],  1
	jmp	.label_33
.label_50:
	cmp	eax, -1
	jne	.label_37
	movsxd	rax, dword ptr [rip + optind]
	sub	ebp, eax
	jne	.label_38
	mov	qword ptr [r14 + (rax * 8)], OFFSET FLAT:label_32
	mov	ebp, 1
.label_38:
	mov	rdi, rbx
	call	xstrdup
	mov	qword ptr [rip + delims],  rax
	mov	dl, byte ptr [rbx]
	test	dl, dl
	je	.label_31
	mov	rcx, rbx
	nop	word ptr cs:[rax + rax]
.label_47:
	lea	rsi, [rcx + 1]
	cmp	dl, 0x5c
	jne	.label_48
	movzx	edx, byte ptr [rsi]
	movsx	esi, dl
	lea	edi, [rsi - 0x30]
	cmp	edi, 0x46
	ja	.label_51
	jmp	qword ptr [(rdi * 8) + label_56]
.label_493:
	mov	byte ptr [rax], 0
	jmp	.label_35
	nop	word ptr cs:[rax + rax]
.label_48:
	mov	byte ptr [rax], dl
	jmp	.label_34
.label_495:
	mov	byte ptr [rax], 0x5c
	jmp	.label_35
.label_496:
	mov	byte ptr [rax], 8
	jmp	.label_35
.label_497:
	mov	byte ptr [rax], 0xc
	jmp	.label_35
.label_498:
	mov	byte ptr [rax], 0xa
	jmp	.label_35
.label_499:
	mov	byte ptr [rax], 0xd
	jmp	.label_35
.label_500:
	mov	byte ptr [rax], 9
	jmp	.label_35
.label_501:
	mov	byte ptr [rax], 0xb
	jmp	.label_35
.label_51:
	test	esi, esi
	je	.label_44
.label_494:
	mov	byte ptr [rax], dl
	nop	word ptr cs:[rax + rax]
.label_35:
	add	rcx, 2
	mov	rsi, rcx
.label_34:
	inc	rax
	movzx	edx, byte ptr [rsi]
	test	dl, dl
	mov	rcx, rsi
	jne	.label_47
.label_31:
	mov	qword ptr [rip + delim_end],  rax
	mov	al, byte ptr [rip + serial_merge]
	mov	ecx, OFFSET FLAT:paste_serial
	mov	edx, OFFSET FLAT:paste_parallel
	test	al, al
	cmovne	rdx, rcx
	movsxd	rdi, ebp
	movsxd	rax, dword ptr [rip + optind]
	lea	rsi, [r14 + rax*8]
	call	rdx
	mov	ebx, eax
	mov	rdi, qword ptr [rip + delims]
	call	free
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_39
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_45
.label_39:
	movzx	eax, bl
	xor	eax, 1
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_44:
	mov	qword ptr [rip + delim_end],  rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 6
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_37:
	cmp	eax, 0xffffff7d
	je	.label_49
	cmp	eax, 0xffffff7e
	jne	.label_36
	xor	edi, edi
	call	usage
.label_49:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_10
	mov	edx, OFFSET FLAT:label_17
	mov	r8d, OFFSET FLAT:label_40
	mov	r9d, OFFSET FLAT:label_41
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_36:
	mov	edi, 1
	call	usage
.label_45:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_32
	xor	eax, eax
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a10

	.globl paste_serial
	.type paste_serial, @function
paste_serial:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15, rsi
	mov	rbx, rdi
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	test	rbx, rbx
	je	.label_62
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_87:
	mov	rdi, qword ptr [r15]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_72
	cmp	byte ptr [rdi + 1], 0
	je	.label_76
.label_72:
	mov	esi, OFFSET FLAT:label_78
	call	fopen
	mov	rbp, rax
	test	rbp, rbp
	je	.label_81
	mov	qword ptr [rsp + 0x10], rbx
	mov	esi, 2
	mov	rdi, rbp
	call	fadvise
	xor	ebx, ebx
	jmp	.label_89
	nop	word ptr cs:[rax + rax]
.label_81:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_59
.label_76:
	mov	qword ptr [rsp + 0x10], rbx
	mov	byte ptr [rip + have_read_stdin],  1
	mov	bl, 1
	mov	rbp, qword ptr [rip + stdin]
.label_89:
	mov	r13, qword ptr [rip + delims]
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_69
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	r14d, byte ptr [rax]
	call	__errno_location
.label_90:
	mov	qword ptr [rsp + 0x20], rax
	mov	dword ptr [rsp + 0x1c], ebx
	jmp	.label_75
	nop	word ptr cs:[rax + rax]
.label_66:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bl
.label_75:
	mov	ebx, r14d
.label_71:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_88
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	r14d, byte ptr [rax]
.label_74:
	movzx	eax, byte ptr [rip + line_delim]
	test	al, al
	mov	eax, 0xa
	cmovne	eax, r12d
	cmp	ebx, eax
	je	.label_58
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_66
	movzx	esi, bl
	call	__overflow
	test	eax, eax
	mov	ebx, r14d
	jns	.label_71
	jmp	.label_80
.label_88:
	mov	rdi, rbp
	call	__uflow
	mov	r14d, eax
	cmp	r14d, -1
	jne	.label_74
	jmp	.label_79
.label_58:
	movzx	esi, byte ptr [r13]
	test	esi, esi
	je	.label_63
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_83
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_63:
	inc	r13
	cmp	r13, qword ptr [rip + delim_end]
	cmove	r13, qword ptr [rip + delims]
	jmp	.label_75
.label_83:
	call	__overflow
	test	eax, eax
	jns	.label_63
	jmp	.label_64
	nop	dword ptr [rax + rax]
.label_79:
	mov	r14, qword ptr [rsp + 0x20]
	mov	r13d, dword ptr [r14]
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_68
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bl
.label_70:
	mov	al, byte ptr [rip + line_delim]
	test	al, al
	jne	.label_73
	mov	al, 0xa
	jmp	.label_77
	nop	word ptr cs:[rax + rax]
.label_73:
	xor	eax, eax
.label_77:
	movzx	esi, al
	cmp	ebx, esi
	mov	ebx, dword ptr [rsp + 0x1c]
	jne	.label_86
	jmp	.label_61
.label_69:
	mov	rdi, rbp
	call	__uflow
	mov	r14d, eax
	call	__errno_location
	cmp	r14d, -1
	jne	.label_90
	mov	r13d, dword ptr [rax]
	mov	cl, byte ptr [rip + line_delim]
	test	cl, cl
	mov	r14, rax
	jne	.label_60
	mov	al, 0xa
	jmp	.label_65
.label_68:
	movzx	esi, bl
	call	__overflow
	test	eax, eax
	jns	.label_70
	jmp	.label_64
.label_60:
	xor	eax, eax
.label_65:
	movzx	esi, al
	nop	word ptr cs:[rax + rax]
.label_86:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_57
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_61:
	test	byte ptr [rbp], 0x20
	je	.label_84
	mov	rdx, qword ptr [r15]
	mov	dword ptr [rsp + 0xc], 0
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_82
	xor	eax, eax
	mov	esi, r13d
	call	error
.label_84:
	mov	rdi, rbp
	test	bl, bl
	je	.label_85
	call	clearerr_unlocked
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_67
	nop	word ptr cs:[rax + rax]
.label_85:
	call	rpl_fclose
	cmp	eax, -1
	mov	rbx, qword ptr [rsp + 0x10]
	jne	.label_67
	mov	ebp, dword ptr [r14]
.label_59:
	mov	rdx, qword ptr [r15]
	mov	dword ptr [rsp + 0xc], 0
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_82
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_67:
	add	r15, 8
	dec	rbx
	jne	.label_87
	jmp	.label_62
.label_57:
	call	__overflow
	test	eax, eax
	jns	.label_61
.label_64:
	call	write_error
.label_62:
	mov	eax, dword ptr [rsp + 0xc]
	and	al, 1
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_80:
	call	write_error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d30

	.globl paste_parallel
	.type paste_parallel, @function
paste_parallel:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x10], rsi
	mov	r12, rdi
	lea	rdi, [r12 + 2]
	call	xmalloc
	mov	qword ptr [rsp + 0x20], rax
	lea	rdi, [r12 + 1]
	mov	rax, rdi
	shr	rax, 0x3c
	jne	.label_108
	shl	rdi, 3
	call	xmalloc
	mov	rbp, rax
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	test	r12, r12
	je	.label_112
	xor	edi, edi
	xor	r14d, r14d
	jmp	.label_95
.label_123:
	mov	byte ptr [rip + have_read_stdin],  1
	mov	rax, qword ptr [rip + stdin]
	mov	rdi, r13
	mov	qword ptr [rbp + rdi*8], rax
	jmp	.label_116
	nop	word ptr cs:[rax + rax]
.label_95:
	mov	rax, qword ptr [rsp + 0x10]
	mov	r13, rdi
	mov	rdx, rdi
	mov	rdi, qword ptr [rax + rdx*8]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_121
	cmp	byte ptr [rdi + 1], 0
	je	.label_123
.label_121:
	mov	esi, OFFSET FLAT:label_78
	call	fopen
	mov	rcx, rbp
	mov	rbp, rax
	mov	rbx, rcx
	mov	qword ptr [rcx + r13*8], rbp
	test	rbp, rbp
	je	.label_128
	mov	rdi, rbp
	call	fileno
	test	eax, eax
	mov	r15b, 1
	je	.label_132
	mov	r15d, r14d
.label_132:
	mov	esi, 2
	mov	rdi, rbp
	call	fadvise
	mov	r14b, r15b
	mov	rdi, r13
	mov	rbp, rbx
.label_116:
	inc	rdi
	cmp	rdi, r12
	jb	.label_95
	test	r14b, 1
	je	.label_97
	cmp	byte ptr [rip + have_read_stdin],  1
	je	.label_99
.label_97:
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rsp + 0x30], r12
	mov	qword ptr [rsp + 0x40], rbp
	nop	dword ptr [rax]
.label_103:
	test	rdi, rdi
	je	.label_105
	test	r12, r12
	je	.label_105
	mov	rbx, qword ptr [rip + delims]
	xor	r15d, r15d
	xor	edx, edx
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	nop	word ptr cs:[rax + rax]
.label_115:
	mov	r13, qword ptr [rbp + r15*8]
	test	r13, r13
	je	.label_96
	mov	r12, rdx
	mov	qword ptr [rsp + 0x28], rdi
	mov	rax, qword ptr [r13 + 8]
	cmp	rax, qword ptr [r13 + 0x10]
	jae	.label_114
	lea	rcx, [rax + 1]
	mov	qword ptr [r13 + 8], rcx
	movzx	r14d, byte ptr [rax]
.label_118:
	call	__errno_location
	mov	rbp, rax
	mov	eax, dword ptr [rbp]
	mov	dword ptr [rsp + 0x3c], eax
	mov	rdx, r12
	test	rdx, rdx
	je	.label_119
	cmp	r14d, -1
	je	.label_119
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r12, rbp
	mov	rbp, rbx
	mov	rbx, rdx
	call	fwrite_unlocked
	cmp	rax, rbx
	mov	rbx, rbp
	mov	rbp, r12
	mov	edx, 0
	jne	.label_98
.label_119:
	cmp	r14d, -1
	mov	esi, 0
	je	.label_131
	mov	al, byte ptr [rip + line_delim]
	test	al, al
	mov	eax, 0xa
	cmovne	eax, esi
	cmp	r14d, eax
	mov	eax, r14d
	mov	r12, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x40]
	je	.label_111
	nop	word ptr cs:[rax + rax]
.label_110:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_101
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r14b
.label_100:
	mov	rax, qword ptr [r13 + 8]
	cmp	rax, qword ptr [r13 + 0x10]
	jae	.label_130
	lea	rcx, [rax + 1]
	mov	qword ptr [r13 + 8], rcx
	movzx	r14d, byte ptr [rax]
.label_126:
	movzx	eax, byte ptr [rip + line_delim]
	test	al, al
	mov	eax, 0xa
	cmovne	eax, esi
	cmp	r14d, eax
	mov	eax, r14d
	jne	.label_110
	jmp	.label_111
.label_101:
	movzx	esi, r14b
	mov	r14, rdx
	call	__overflow
	mov	rdx, r14
	xor	esi, esi
	test	eax, eax
	jns	.label_100
	jmp	.label_98
.label_130:
	mov	rdi, r13
	mov	r14, rdx
	call	__uflow
	mov	rdx, r14
	xor	esi, esi
	mov	r14d, eax
	mov	eax, 0xffffffff
	cmp	r14d, -1
	jne	.label_126
	nop	word ptr cs:[rax + rax]
.label_111:
	inc	r15
	cmp	r15, r12
	jne	.label_122
	mov	cl, byte ptr [rip + line_delim]
	test	cl, cl
	mov	ecx, 0xa
	cmovne	ecx, esi
	cmp	eax, -1
	cmovne	ecx, eax
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_125
	lea	rsi, [rax + 1]
	mov	qword ptr [rdi + 0x28], rsi
	mov	byte ptr [rax], cl
	jmp	.label_133
	nop	word ptr cs:[rax + rax]
.label_131:
	mov	r14, rdx
	test	byte ptr [r13], 0x20
	je	.label_94
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rax + r15*8]
	mov	dword ptr [rsp + 0xc], 0
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_82
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0x3c]
	call	error
.label_94:
	cmp	r13, qword ptr [rip + stdin]
	je	.label_107
	mov	rdi, r13
	call	rpl_fclose
	cmp	eax, -1
	mov	r12, qword ptr [rsp + 0x30]
	jne	.label_92
	mov	ebp, dword ptr [rbp]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rax + r15*8]
	mov	dword ptr [rsp + 0xc], 0
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_82
	xor	eax, eax
	mov	esi, ebp
	call	error
	jmp	.label_92
.label_122:
	mov	cl, byte ptr [rip + line_delim]
	test	cl, cl
	mov	ecx, 0xa
	cmovne	ecx, esi
	cmp	eax, -1
	je	.label_113
	cmp	eax, ecx
	je	.label_113
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_117
	lea	rsi, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rsi
	mov	byte ptr [rcx], al
.label_113:
	movzx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_127
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_129
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_127:
	inc	rbx
	cmp	rbx, qword ptr [rip + delim_end]
	cmove	rbx, qword ptr [rip + delims]
.label_133:
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	rdi, qword ptr [rsp + 0x28]
	jmp	.label_93
.label_107:
	mov	rdi, r13
	call	clearerr_unlocked
	mov	r12, qword ptr [rsp + 0x30]
.label_92:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	qword ptr [rbp + r15*8], 0
	mov	rdi, qword ptr [rsp + 0x28]
	dec	rdi
	mov	rdx, r14
.label_96:
	inc	r15
	cmp	r15, r12
	je	.label_124
	mov	al, byte ptr [rbx]
	test	al, al
	je	.label_109
	mov	rcx, qword ptr [rsp + 0x20]
	mov	byte ptr [rcx + rdx], al
	inc	rdx
.label_109:
	inc	rbx
	cmp	rbx, qword ptr [rip + delim_end]
	cmove	rbx, qword ptr [rip + delims]
.label_93:
	test	rdi, rdi
	je	.label_105
	cmp	r15, r12
	jb	.label_115
	jmp	.label_105
.label_114:
	mov	rdi, r13
	call	__uflow
	mov	r14d, eax
	jmp	.label_118
.label_125:
	movzx	esi, cl
	mov	r14, rdx
	call	__overflow
	mov	rdx, r14
	mov	cl, 1
	mov	qword ptr [rsp + 0x18], rcx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x28]
	jns	.label_93
	jmp	.label_98
.label_129:
	mov	r14, rdx
	call	__overflow
	mov	rdx, r14
	test	eax, eax
	jns	.label_127
	jmp	.label_98
.label_117:
	movzx	esi, al
	mov	r14, rdx
	call	__overflow
	mov	rdx, r14
	test	eax, eax
	jns	.label_113
	jmp	.label_98
.label_124:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, 1
	je	.label_105
	mov	r14, rbp
	test	rdx, rdx
	je	.label_91
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rdx
	call	fwrite_unlocked
	mov	rdi, rbx
	cmp	rax, rbp
	jne	.label_98
.label_91:
	mov	al, byte ptr [rip + line_delim]
	mov	rbx, rdi
	test	al, al
	jne	.label_102
	mov	al, 0xa
	jmp	.label_104
.label_102:
	xor	eax, eax
.label_104:
	mov	rbp, r14
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_106
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
	mov	rdi, rbx
	nop	word ptr cs:[rax + rax]
.label_105:
	test	rdi, rdi
	jne	.label_103
	jmp	.label_112
.label_106:
	movzx	esi, al
	call	__overflow
	test	eax, eax
	mov	rdi, rbx
	jns	.label_105
	call	write_error
.label_112:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	eax, dword ptr [rsp + 0xc]
	and	al, 1
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_98:
	call	write_error
.label_128:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rax + r13*8]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_82
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_108:
	call	xalloc_die
.label_99:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402320

	.globl write_error
	.type write_error, @function
write_error:
	push	rbx
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_134
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402350
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402360
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402370

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_139
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_137
	cmp	dword ptr [rbp], 0x20
	jne	.label_137
.label_139:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_136
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_137:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_134
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_135
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_82
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_136:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_135:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_138
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
	#Procedure 0x402430
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402440

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_140
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_140:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402460

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_141
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_143
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_145
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_143
	mov	esi, OFFSET FLAT:label_144
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_146
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_146:
	mov	rbx, r14
.label_143:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_141:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_142
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402510
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
	#Procedure 0x402550
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
	#Procedure 0x402560
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
	#Procedure 0x402570
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
	#Procedure 0x4025b0
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
	#Procedure 0x4025d0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_147
	test	rdx, rdx
	je	.label_147
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_147:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402600
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
	#Procedure 0x402680

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
.label_231:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_228
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_234]
.label_410:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_240
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_172
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_411:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_254
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_254
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_264:
	cmp	r14, r11
	jae	.label_188
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_188:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_264
.label_254:
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
	jmp	.label_155
.label_403:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_155
.label_406:
	mov	al, 1
.label_404:
	mov	r12b, 1
.label_407:
	test	r12b, 1
	mov	cl, 1
	je	.label_160
	mov	ecx, eax
.label_160:
	mov	al, cl
.label_405:
	test	r12b, 1
	jne	.label_163
	test	r11, r11
	je	.label_165
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_165:
	mov	r14d, 1
	jmp	.label_168
.label_163:
	xor	r14d, r14d
.label_168:
	mov	ecx, OFFSET FLAT:label_172
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_155
.label_408:
	test	r12b, 1
	jne	.label_183
	test	r11, r11
	je	.label_186
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_186:
	mov	r14d, 1
	jmp	.label_193
.label_409:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_195
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_155
.label_183:
	xor	r14d, r14d
.label_193:
	mov	eax, OFFSET FLAT:label_195
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_155:
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
	jmp	.label_212
	nop	dword ptr [rax]
.label_167:
	inc	rsi
.label_212:
	cmp	rbp, -1
	je	.label_246
	cmp	rsi, rbp
	jne	.label_248
	jmp	.label_249
	nop	word ptr cs:[rax + rax]
.label_246:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_256
.label_248:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_258
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_169
	cmp	rbp, -1
	jne	.label_169
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
.label_169:
	cmp	rbx, rbp
	jbe	.label_268
.label_258:
	xor	r8d, r8d
.label_202:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_262
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_150]
.label_452:
	test	rsi, rsi
	jne	.label_156
	jmp	.label_159
	nop	word ptr cs:[rax + rax]
.label_268:
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
	jne	.label_173
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_202
	jmp	.label_192
.label_173:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_202
.label_456:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_203
	test	rsi, rsi
	jne	.label_204
	cmp	rbp, 1
	je	.label_159
	xor	r13d, r13d
	jmp	.label_153
.label_445:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_210
	cmp	byte ptr [rsp + 6], 0
	jne	.label_211
	cmp	r12d, 2
	jne	.label_216
	mov	eax, r9d
	and	al, 1
	jne	.label_216
	cmp	r14, r11
	jae	.label_219
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_219:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_222
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_222:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_162
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_162:
	add	r14, 3
	mov	r9b, 1
.label_216:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_232
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_232:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_237
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_237
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_237
	cmp	r14, r11
	jae	.label_201
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_201:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_177
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_177:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_153
.label_446:
	mov	bl, 0x62
	jmp	.label_260
.label_447:
	mov	cl, 0x74
	jmp	.label_181
.label_448:
	mov	bl, 0x76
	jmp	.label_260
.label_449:
	mov	bl, 0x66
	jmp	.label_260
.label_450:
	mov	cl, 0x72
	jmp	.label_181
.label_453:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_263
	cmp	byte ptr [rsp + 6], 0
	jne	.label_149
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
	jae	.label_267
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_267:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_157
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_157:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_161
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_161:
	add	r14, 3
	xor	r9d, r9d
.label_263:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_153
.label_454:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_170
	cmp	r12d, 2
	jne	.label_156
	cmp	byte ptr [rsp + 6], 0
	je	.label_156
	jmp	.label_149
.label_455:
	cmp	r12d, 2
	jne	.label_184
	cmp	byte ptr [rsp + 6], 0
	jne	.label_149
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_247
.label_262:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_198
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
.label_176:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_215
	test	r8b, r8b
	je	.label_215
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_153
.label_203:
	test	rsi, rsi
	jne	.label_230
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_230
.label_159:
	mov	dl, 1
.label_451:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_149
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_153:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_242
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_180
	jmp	.label_245
	nop	word ptr cs:[rax + rax]
.label_242:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_245
.label_180:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_252
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_247
	jmp	.label_261
	nop	dword ptr [rax]
.label_245:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_261
	jmp	.label_247
.label_252:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_261
.label_210:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_167
	xor	r15d, r15d
	jmp	.label_156
.label_184:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_181
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_247
.label_181:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_149
.label_260:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_153
	nop	word ptr cs:[rax + rax]
.label_261:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_211
	cmp	r12d, 2
	jne	.label_166
	mov	eax, r9d
	and	al, 1
	jne	.label_166
	cmp	r14, r11
	jae	.label_257
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_257:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_174
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_174:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_185
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_185:
	add	r14, 3
	mov	r9b, 1
.label_166:
	cmp	r14, r11
	jae	.label_189
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_189:
	inc	r14
	jmp	.label_196
.label_198:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_199
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_199:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_265:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_220
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_224
	cmp	rbp, -2
	je	.label_227
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_217
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_164:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_207
	bt	rsi, rdx
	jb	.label_244
.label_207:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_164
.label_217:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_259
	xor	r13d, r13d
.label_259:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_265
	jmp	.label_176
.label_237:
	xor	r13d, r13d
	jmp	.label_153
.label_230:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_153
.label_170:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_156
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_156
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_156
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_251
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_238
	cmp	byte ptr [rsp + 6], 0
	jne	.label_213
	cmp	r14, r11
	jae	.label_179
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_179:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_250
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_250:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_171
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_171:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_236
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_236:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_153
.label_156:
	xor	eax, eax
.label_204:
	xor	r13d, r13d
	jmp	.label_153
.label_215:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_197
	nop	word ptr cs:[rax + rax]
.label_266:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_197:
	test	r8b, r8b
	je	.label_205
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_206
	cmp	r14, r11
	jae	.label_208
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_208:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_206
	nop	dword ptr [rax]
.label_205:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_192
	cmp	r12d, 2
	jne	.label_151
	mov	eax, r9d
	and	al, 1
	jne	.label_151
	cmp	r14, r11
	jae	.label_223
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_223:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_225
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_225:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_229
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_229:
	add	r14, 3
	mov	r9b, 1
.label_151:
	cmp	r14, r11
	jae	.label_255
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_255:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_241
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_241:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_243
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_243:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_206:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_247
	test	r9b, 1
	je	.label_182
	mov	ebx, eax
	and	bl, 1
	jne	.label_182
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_269
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_269:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_154
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_154:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_182:
	cmp	r14, r11
	jae	.label_266
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_266
	nop	word ptr cs:[rax + rax]
.label_247:
	test	r9b, 1
	je	.label_148
	and	al, 1
	jne	.label_148
	cmp	r14, r11
	jae	.label_152
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_152:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_191
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_191:
	add	r14, 2
	xor	r9d, r9d
.label_148:
	mov	ebx, r15d
.label_196:
	cmp	r14, r11
	jae	.label_235
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_235:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_167
.label_224:
	xor	r13d, r13d
.label_220:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_176
.label_227:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_190
	mov	rsi, qword ptr [rsp + 0x58]
.label_194:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_187
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_194
	xor	r13d, r13d
	jmp	.label_176
.label_190:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_176
.label_187:
	xor	r13d, r13d
	jmp	.label_176
.label_251:
	xor	r13d, r13d
	jmp	.label_153
.label_238:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_153
	nop	dword ptr [rax + rax]
.label_249:
	mov	rcx, rsi
.label_256:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_209
	or	al, dl
	je	.label_214
.label_209:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_218
	or	al, dl
	jne	.label_218
	test	r10b, 1
	jne	.label_226
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_218
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_231
.label_218:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_239
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_233
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_233
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_253:
	cmp	r14, r11
	jae	.label_221
	mov	byte ptr [rcx + r14], al
.label_221:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_253
	jmp	.label_233
.label_211:
	mov	qword ptr [rsp + 0x20], rbp
.label_192:
	mov	rdx, rdi
	jmp	.label_158
.label_149:
	mov	qword ptr [rsp + 0x20], rbp
.label_244:
	mov	rdx, rdi
	mov	eax, 2
.label_200:
	mov	qword ptr [rsp + 0x38], rax
.label_158:
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
.label_175:
	mov	r14, rax
.label_178:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_214:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_158
.label_226:
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
	jmp	.label_175
.label_239:
	mov	rcx, qword ptr [rsp + 8]
.label_233:
	cmp	r14, r11
	jae	.label_178
	mov	byte ptr [rcx + r14], 0
	jmp	.label_178
.label_213:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_200
.label_228:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403490
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
	#Procedure 0x403560
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
	je	.label_270
	mov	qword ptr [rax], rbx
.label_270:
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
	#Procedure 0x403650
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_271
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_273:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_273
.label_271:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_275
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_274], OFFSET FLAT:slot0
.label_275:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_272
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_272:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036f0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x403700

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
	js	.label_276
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_279
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
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_277
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_277:
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
.label_279:
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
	jmp	.label_278
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
.label_278:
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
.label_276:
	call	abort
.label_281:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4038c0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038d0
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
	#Procedure 0x4038f0
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
	#Procedure 0x403910
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
	je	.label_283
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
.label_283:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403980
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
	je	.label_284
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
.label_284:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039f0
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
	je	.label_285
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
.label_285:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a60
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
	je	.label_286
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
.label_286:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ad0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_287]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_288]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_289]
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
	#Procedure 0x403b40
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_287]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_288]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_289]
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
	#Procedure 0x403bb0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_287]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_288]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_289]
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
	#Procedure 0x403c10
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_287]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_288]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_289]
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
	#Procedure 0x403c70

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
	je	.label_290
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
.label_290:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d10
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_287]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_288]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_289]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_291
	test	rdx, rdx
	je	.label_291
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_291:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x403d80
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_287]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_288]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_289]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_292
	test	rdx, rdx
	je	.label_292
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_292:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403df0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_287]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_288]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_289]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_293
	test	rsi, rsi
	je	.label_293
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_293:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403e60
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_287]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_288]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_289]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_294
	test	rsi, rsi
	je	.label_294
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
.label_294:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403ed0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ee0
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
	#Procedure 0x403f00
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f20
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
	#Procedure 0x403f40

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
	jne	.label_296
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_301
	cmp	ecx, 0x55
	jne	.label_295
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_295
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_295
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_295
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_295
	cmp	byte ptr [rax + 5], 0
	jne	.label_295
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_298
	mov	eax, OFFSET FLAT:label_299
	jmp	.label_300
.label_301:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_295
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_295
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_295
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_295
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_295
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_295
	cmp	byte ptr [rax + 7], 0
	je	.label_297
.label_295:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_195
	mov	eax, OFFSET FLAT:label_172
.label_300:
	cmove	rax, rcx
.label_296:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_297:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_302
	mov	eax, OFFSET FLAT:label_303
	jmp	.label_300
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404010

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
	je	.label_314
	mov	edx, OFFSET FLAT:label_319
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_306
.label_314:
	mov	edx, OFFSET FLAT:label_308
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_306:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_313
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
	mov	esi, OFFSET FLAT:label_309
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_315
	jmp	qword ptr [(r12 * 8) + label_316]
.label_428:
	add	rsp, 8
	jmp	.label_307
.label_315:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_322
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
	jmp	.label_307
.label_429:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_310
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
.label_430:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
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
.label_431:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_320
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
.label_432:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_317
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
	jmp	.label_307
.label_433:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_312
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
	jmp	.label_307
.label_434:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_318
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
	jmp	.label_307
.label_435:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
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
	jmp	.label_307
.label_437:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_305
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
	jmp	.label_307
.label_436:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_311
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
.label_307:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404370
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_323:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_323
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043a0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_334
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_336
.label_334:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_336:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_325
	cmp	r10d, 0x29
	jae	.label_333
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_335
.label_333:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_335:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_325
	cmp	r10d, 0x29
	jae	.label_331
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_332
.label_331:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_332:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_325
	cmp	r10d, 0x29
	jae	.label_329
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_330
.label_329:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_330:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_325
	cmp	r10d, 0x29
	jae	.label_327
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_328
.label_327:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_328:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_325
	cmp	r10d, 0x29
	jae	.label_324
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_326
.label_324:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_326:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_325
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_325
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_325
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_325
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_325:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404590

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_337
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_337:
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
	#Procedure 0x404620
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_338
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_339
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	mov	ecx, OFFSET FLAT:label_18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_340
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046a0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_342
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_343
	test	rax, rax
	je	.label_342
.label_343:
	pop	rbx
	ret	
.label_342:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046e0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_344
	test	rax, rax
	je	.label_345
.label_344:
	pop	rbx
	ret	
.label_345:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404700
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_346
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_347
	test	rbx, rbx
	jne	.label_347
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_347:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_348
	test	rax, rax
	je	.label_346
.label_348:
	pop	rbx
	ret	
.label_346:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404750

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_349
	test	rbx, rbx
	jne	.label_349
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_349:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_351
	test	rax, rax
	je	.label_350
.label_351:
	pop	rbx
	ret	
.label_350:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404780
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_352
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_355
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_353
.label_352:
	test	rcx, rcx
	jne	.label_358
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_358:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_354
.label_353:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_357
	test	rbx, rbx
	jne	.label_357
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_357:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_356
	test	rax, rax
	je	.label_355
.label_356:
	pop	rbx
	ret	
.label_355:
	call	xalloc_die
.label_354:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404820
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_359
	test	rax, rax
	je	.label_360
.label_359:
	pop	rbx
	ret	
.label_360:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404840
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_361
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_364
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_365
	call	free
	xor	eax, eax
	jmp	.label_362
.label_361:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_363
	mov	qword ptr [rsi], rbx
.label_365:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_362
	test	rax, rax
	je	.label_363
.label_362:
	pop	rbx
	ret	
.label_363:
	call	xalloc_die
.label_364:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048b0
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
	je	.label_367
	test	r14, r14
	je	.label_366
.label_367:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_366:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048f0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_368
	call	rpl_calloc
	test	rax, rax
	je	.label_368
	pop	rcx
	ret	
.label_368:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404920

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
	je	.label_369
	test	r15, r15
	je	.label_370
.label_369:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_370:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404960

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
	je	.label_372
	test	r15, r15
	je	.label_371
.label_372:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_371:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049b0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_373
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_82
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4049e0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_374
	test	rsi, rsi
	mov	ecx, 1
	je	.label_375
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_375
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_374:
	mov	ecx, 1
.label_375:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a30

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_376
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_378
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_376
.label_378:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_376
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_377
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_377:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_376:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ab0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_379
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_379
	test	byte ptr [rbx + 1], 1
	je	.label_379
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_379:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404af0

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
	jne	.label_380
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_380
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_381
.label_380:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_381:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_382
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_382:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404b60

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
	je	.label_383
	cmp	r15, -2
	jb	.label_383
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_383
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_383:
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
	#Procedure 0x404bc0

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
	jne	.label_385
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_384
	test	cl, cl
	jne	.label_384
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_384
.label_385:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_384
	call	__errno_location
	mov	dword ptr [rax], 0
.label_384:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c20

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_387
	cmp	byte ptr [rax], 0x43
	jne	.label_389
	cmp	byte ptr [rax + 1], 0
	je	.label_386
.label_389:
	mov	esi, OFFSET FLAT:label_388
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_387
.label_386:
	xor	ebx, ebx
.label_387:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c60

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_55
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_390
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x404c90

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
