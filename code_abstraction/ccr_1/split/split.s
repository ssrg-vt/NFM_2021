	.section	.text
	.align	16
	#Procedure 0x401d90

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_14
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	mov	rbx,  qword ptr [word ptr [rip + stdout]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	esi, 1
	mov	ecx, 2
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
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
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_size_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_14:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ef0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f20

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f50

	.globl emit_size_note
	.type emit_size_note, @function
emit_size_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f80

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_22
	nop	
.label_35:
	mov	edi, OFFSET FLAT:label_26
	call	strcmp
	test	eax, eax
	je	.label_33
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_35
.label_33:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_26
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_25
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_23
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_23
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_23:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_26
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_25
	mov	ecx, OFFSET FLAT:label_26
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_29
	mov	ecx, OFFSET FLAT:label_30
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
	.align	16
	#Procedure 0x4020a0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x168
	mov	rbp, rsi
	mov	dword ptr [rsp + 0x9c], edi
	call	getpagesize
	movsxd	rbx, eax
	mov	qword ptr [rsp + 0xa0], 0
	mov	qword ptr [rsp + 0x90], 0
	mov	qword ptr [rsp + 0xa8], rbp
	mov	rdi, qword ptr [rbp]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_30
	call	setlocale
	mov	edi, OFFSET FLAT:label_80
	mov	esi, OFFSET FLAT:label_81
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_80
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	edi, OFFSET FLAT:label_88
	call	bad_cast
	mov	qword ptr [word ptr [rip + infile]],  rax
	mov	edi, OFFSET FLAT:label_90
	call	bad_cast
	mov	qword ptr [word ptr [rip + outbase]],  rax
	mov	qword ptr [rsp + 0xc0], rbx
	not	rbx
	mov	qword ptr [rsp + 0xc8], rbx
	xor	eax, eax
	mov	qword ptr [rsp + 0xb0], rax
	movabs	r13, 0x7fffffffffffffff
	xor	r15d, r15d
	xor	ebx, ebx
	jmp	.label_37
	nop	
.label_44:
	mov	qword ptr [rsp + 0x90], rcx
	mov	ebx, 4
	mov	eax, ebp
	mov	qword ptr [rsp + 0xb0], rax
.label_37:
	mov	ebp,  dword ptr [dword ptr [rip + optind]]
	test	ebp, ebp
	mov	eax, 1
	cmove	ebp, eax
	mov	edx, OFFSET FLAT:label_104
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, dword ptr [rsp + 0x9c]
	mov	rsi, qword ptr [rsp + 0xa8]
	call	getopt_long
	mov	r14d, eax
	lea	eax, [r14 + 0x83]
	cmp	eax, 0x106
	ja	.label_109
	jmp	qword ptr [word ptr [+ (rax * 8) + label_105]]
.label_807:
	cmp	ebx, 4
	je	.label_113
	test	ebx, ebx
	jne	.label_50
	mov	qword ptr [rsp + 0x90], 0
.label_113:
	mov	rax, qword ptr [rsp + 0xb0]
	test	eax, eax
	je	.label_120
	cmp	eax, ebp
	je	.label_120
	mov	qword ptr [rsp + 0x90], 0
	xor	eax, eax
	jmp	.label_121
.label_120:
	mov	rax, qword ptr [rsp + 0x90]
	movabs	rcx, 0x1999999999999999
	cmp	rax, rcx
	ja	.label_38
.label_121:
	lea	rcx, [rax + rax*4]
	movsxd	rdx, r14d
	lea	rcx, [rdx + rcx*2 - 0x30]
	cmp	rcx, rax
	jae	.label_44
	jmp	.label_38
.label_811:
	cmp	r14d, 0x64
	mov	ebp, OFFSET FLAT:label_73
	mov	eax, OFFSET FLAT:label_74
	cmove	rbp, rax
	mov	qword ptr [word ptr [rip + suffix_alphabet]],  rbp
	mov	r12,  qword ptr [word ptr [rip + optarg]]
	test	r12, r12
	je	.label_37
	mov	rdi, r12
	call	strlen
	mov	qword ptr [rsp + 0xb8], rax
	mov	rdi, r12
	mov	rsi, rbp
	call	strspn
	cmp	qword ptr [rsp + 0xb8], rax
	jne	.label_58
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	cmp	byte ptr [rcx], 0x30
	jne	.label_61
.label_64:
	cmp	byte ptr [rcx + 1], 0
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	je	.label_98
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + optarg]],  rcx
	cmp	byte ptr [rax + 1], 0x30
	je	.label_64
.label_61:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
.label_98:
	mov	qword ptr [word ptr [rip + numeric_suffix_start]],  rax
	jmp	.label_37
.label_813:
	test	ebx, ebx
	jne	.label_50
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_30
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x90], rax
	mov	ebx, 3
	jmp	.label_37
.label_816:
	mov	byte ptr [byte ptr [rip + unbuffered]],  1
	jmp	.label_37
.label_818:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + filter_command]],  rax
	jmp	.label_37
.label_820:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	rdi, rbp
	call	last_component
	cmp	rax, rbp
	jne	.label_96
	mov	qword ptr [word ptr [rip + additional_suffix]],  rbp
	jmp	.label_37
.label_808:
	test	ebx, ebx
	jne	.label_50
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_101
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rdx, r13
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x90], rax
	mov	ebx, 2
	jmp	.label_37
.label_809:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_107
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	ecx, OFFSET FLAT:label_30
	xor	r9d, r9d
	mov	rdi, rbp
	movabs	rdx, 0x1fffffffffffffff
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [word ptr [rip + suffix_length]],  rax
	jmp	.label_37
.label_810:
	test	ebx, ebx
	jne	.label_50
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_101
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rdx, r13
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x90], rax
	mov	ebx, 1
	jmp	.label_37
.label_812:
	mov	byte ptr [byte ptr [rip + elide_empty_files]],  1
	jmp	.label_37
.label_814:
	test	ebx, ebx
	jne	.label_50
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	movsx	edi, byte ptr [rbp]
	call	to_uchar
	movzx	r14d, al
	call	__ctype_b_loc
	mov	rbx, rax
	mov	rax, qword ptr [rbx]
	test	byte ptr [rax + r14*2 + 1], 0x20
	je	.label_57
	inc	rbp
.label_59:
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	movsx	edi, byte ptr [rbp]
	call	to_uchar
	movzx	eax, al
	mov	rcx, qword ptr [rbx]
	inc	rbp
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_59
	dec	rbp
.label_57:
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 2
	mov	rdi, rbp
	call	strncmp
	test	eax, eax
	je	.label_54
	mov	esi, OFFSET FLAT:label_70
	mov	edx, 2
	mov	rdi, rbp
	call	strncmp
	mov	ebx, 5
	test	eax, eax
	jne	.label_72
	add	rbp, 2
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	mov	ebx, 6
	jmp	.label_72
.label_815:
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	mov	al, byte ptr [rcx]
	test	al, al
	je	.label_79
	mov	dl, byte ptr [rcx + 1]
	test	dl, dl
	je	.label_83
	cmp	al, 0x5c
	jne	.label_85
	cmp	dl, 0x30
	jne	.label_85
	cmp	byte ptr [rcx + 2], 0
	jne	.label_85
	xor	eax, eax
.label_83:
	mov	ecx,  dword ptr [dword ptr [rip + eolchar]]
	test	ecx, ecx
	movsx	eax, al
	js	.label_89
	cmp	eax, ecx
	jne	.label_93
.label_89:
	mov	dword ptr [dword ptr [rip + eolchar]],  eax
	jmp	.label_37
.label_817:
	mov	byte ptr [byte ptr [rip + verbose]],  1
	jmp	.label_37
.label_819:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, rbp
	mov	rdx, qword ptr [rsp + 0xc8]
	mov	r8, rax
	call	xdectoumax
	mov	r15, rax
	jmp	.label_37
.label_54:
	add	rbp, 2
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	mov	ebx, 7
.label_72:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	esi, 0x2f
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	je	.label_108
	lea	rdi, [rsp + 0xa0]
	lea	rsi, [rsp + 0x90]
	mov	rdx, rax
	call	parse_chunk
	jmp	.label_37
.label_108:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_30
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x90], rax
	jmp	.label_37
.label_806:
	cmp	qword ptr [rsp + 0xa0], 0
	je	.label_41
	mov	rax,  qword ptr [word ptr [rip + filter_command]]
	test	rax, rax
	jne	.label_43
.label_41:
	test	ebx, ebx
	je	.label_46
	cmp	qword ptr [rsp + 0x90], 0
	jne	.label_47
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:label_51
	call	quote
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	mov	edi, 1
	call	usage
.label_46:
	mov	qword ptr [rsp + 0x90], 0x3e8
	mov	ebx, 3
.label_47:
	cmp	dword ptr [dword ptr [rip + eolchar]],  0
	jns	.label_60
	mov	dword ptr [dword ptr [rip + eolchar]],  0xa
.label_60:
	mov	rdi, qword ptr [rsp + 0x90]
	mov	esi, ebx
	call	set_suffix_length
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, dword ptr [rsp + 0x9c]
	jge	.label_65
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [word ptr [rip + infile]],  rax
.label_65:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, dword ptr [rsp + 0x9c]
	jge	.label_76
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [word ptr [rip + outbase]],  rax
.label_76:
	mov	eax, dword ptr [rsp + 0x9c]
	cmp	dword ptr [dword ptr [rip + optind]],  eax
	jl	.label_86
	mov	rdi,  qword ptr [word ptr [rip + numeric_suffix_start]]
	test	rdi, rdi
	je	.label_66
	call	strlen
	cmp	rax,  qword ptr [word ptr [rip + suffix_length]]
	ja	.label_92
.label_66:
	mov	rax,  qword ptr [word ptr [rip + infile]]
	cmp	byte ptr [rax], 0x2d
	jne	.label_94
	cmp	byte ptr [rax + 1], 0
	je	.label_95
.label_94:
	mov	rsi,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	xor	edx, edx
	xor	ecx, ecx
	call	fd_reopen
	test	eax, eax
	js	.label_99
.label_95:
	xor	edi, edi
	xor	esi, esi
	call	xset_binary_mode
	xor	edi, edi
	mov	esi, OFFSET FLAT:in_stat_buf
	call	fstat
	test	eax, eax
	jne	.label_103
	test	r15, r15
	jne	.label_75
	mov	ecx, 0x12
	mov	esi, OFFSET FLAT:in_stat_buf
	mov	rdi, rsp
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	call	io_blksize
	mov	r15, rax
.label_75:
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [r15 + rbp]
	call	xmalloc
	mov	rdi, rax
	mov	rsi, rbp
	call	ptr_align
	mov	r14, rax
	lea	eax, [rbx - 5]
	mov	rbp, -1
	cmp	eax, 1
	ja	.label_111
	mov	rdi, r14
	mov	rsi, r15
	call	input_file_size
	test	rax, rax
	js	.label_115
	mov	r13, qword ptr [rsp + 0x90]
	test	r13, r13
	js	.label_117
	cmp	rax, r15
	mov	rbp, r15
	cmovb	rbp, rax
	cmp	rax, r13
	cmova	r13, rax
.label_111:
	cmp	qword ptr [word ptr [rip + filter_command]],  0
	je	.label_36
	mov	edi, OFFSET FLAT:newblocked
	call	sigemptyset
	lea	rdx, [rsp + 0xd0]
	mov	edi, 0xd
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0xd0], 1
	je	.label_45
	mov	edi, OFFSET FLAT:newblocked
	mov	esi, 0xd
	call	sigaddset
.label_45:
	xor	edi, edi
	mov	esi, OFFSET FLAT:newblocked
	mov	edx, OFFSET FLAT:oldblocked
	call	sigprocmask
.label_36:
	dec	ebx
	cmp	ebx, 6
	ja	.label_52
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_56]]
.label_850:
	mov	rdi, qword ptr [rsp + 0x90]
	mov	rsi, r14
	mov	rdx, r15
	call	lines_split
	jmp	.label_42
.label_848:
	mov	rdi, qword ptr [rsp + 0x90]
	mov	rcx, -1
	xor	r8d, r8d
	mov	rsi, r14
	mov	rdx, r15
	jmp	.label_87
.label_849:
	mov	rdi, qword ptr [rsp + 0x90]
	mov	rsi, r14
	mov	rdx, r15
	call	line_bytes_split
	jmp	.label_42
.label_851:
	mov	rdi, qword ptr [rsp + 0xa0]
	mov	rbx, qword ptr [rsp + 0x90]
	test	rdi, rdi
	je	.label_67
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbp
	mov	r9, r13
	call	bytes_chunk_extract
	jmp	.label_42
.label_852:
	mov	rdi, qword ptr [rsp + 0xa0]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbp
	mov	r9, r13
	call	lines_chunk_split
	jmp	.label_42
.label_853:
	mov	rdi, qword ptr [rsp + 0xa0]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, r14
	mov	rcx, r15
	call	lines_rr
	jmp	.label_42
.label_67:
	xor	edx, edx
	mov	rax, r13
	div	rbx
	mov	rdi, rax
	mov	rsi, r14
	mov	rdx, r15
	mov	rcx, rbp
	mov	r8, rbx
.label_87:
	call	bytes_split
.label_42:
	xor	edi, edi
	call	close
	test	eax, eax
	jne	.label_103
	mov	esi,  dword ptr [dword ptr [rip + output_desc]]
	mov	edx,  dword ptr [dword ptr [rip + filter_pid]]
	mov	rcx,  qword ptr [word ptr [rip + outfile]]
	xor	edi, edi
	call	closeout
	xor	eax, eax
	add	rsp, 0x168
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_38:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0x90]
	lea	rsi, [rsp + 0xd0]
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	r8d, r14d
	call	error
.label_50:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
.label_78:
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
.label_804:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_26
	mov	edx, OFFSET FLAT:label_24
	mov	r8d, OFFSET FLAT:label_118
	mov	r9d, OFFSET FLAT:label_119
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_805:
	xor	edi, edi
	call	usage
.label_109:
	mov	edi, 1
	call	usage
.label_103:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_85:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_58:
	xor	edi, edi
	cmp	r14d, 0x64
	jne	.label_62
	mov	esi, OFFSET FLAT:label_63
	jmp	.label_40
.label_96:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	jmp	.label_40
.label_79:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
	jmp	.label_69
.label_93:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
.label_69:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_43:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	jmp	.label_78
.label_86:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	rdi, qword ptr [rcx + rax*8]
	jmp	.label_84
.label_52:
	call	abort
.label_99:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + infile]]
	mov	edi, 4
	call	quotearg_style
	jmp	.label_116
.label_92:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_82
	jmp	.label_78
.label_115:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_100
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
.label_116:
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_117:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0x90]
	lea	rsi, [rsp + 0xd0]
	call	umaxtostr
	mov	rdi, rax
	call	quote
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 0x4b
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_62:
	mov	esi, OFFSET FLAT:label_122
.label_40:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
.label_84:
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402c30

	.globl bad_cast
	.type bad_cast, @function
bad_cast:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c40

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c50

	.globl parse_chunk
	.type parse_chunk, @function
parse_chunk:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	lea	r12, [rbx + 1]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_30
	xor	r9d, r9d
	mov	rdi, r12
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [r15], rax
	cmp	qword ptr [word ptr [rip + optarg]],  rbx
	je	.label_124
	mov	byte ptr [rbx], 0
	mov	r12,  qword ptr [word ptr [rip + optarg]]
	mov	rbx, qword ptr [r15]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:label_30
	xor	r9d, r9d
	mov	rdi, r12
	mov	rdx, rbx
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [r14], rax
.label_124:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402cf0

	.globl set_suffix_length
	.type set_suffix_length, @function
set_suffix_length:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	cmp	qword ptr [word ptr [rip + numeric_suffix_start]],  0
	je	.label_131
	mov	byte ptr [byte ptr [rip + suffix_auto]],  1
.label_131:
	add	esi, -5
	xor	r14d, r14d
	cmp	esi, 2
	ja	.label_128
	cmp	qword ptr [word ptr [rip + numeric_suffix_start]],  0
	je	.label_129
	mov	rdi,  qword ptr [word ptr [rip + numeric_suffix_start]]
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_30
	call	xstrtoumax
	test	eax, eax
	jne	.label_129
	mov	rax, qword ptr [rsp]
	mov	rcx, rbx
	not	rcx
	xor	edx, edx
	cmp	rax, rbx
	mov	esi, 0
	cmovb	rsi, rax
	cmp	rax, rcx
	cmova	rsi, rdx
	add	rbx, rsi
.label_129:
	mov	rdi,  qword ptr [word ptr [rip + suffix_alphabet]]
	call	strlen
	mov	rcx, rax
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	mov	rsi, rdx
	xor	edi, edi
	cmp	rcx, rbx
	ja	.label_127
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_132:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	inc	rdi
	mov	rbx, rax
	cmp	rcx, rbx
	jbe	.label_132
.label_127:
	xor	r14d, r14d
	test	rsi, rsi
	setne	r14b
	add	r14, rdi
	mov	byte ptr [byte ptr [rip + suffix_auto]],  1
.label_128:
	mov	rax,  qword ptr [word ptr [rip + suffix_length]]
	test	rax, rax
	je	.label_133
	cmp	rax, r14
	jb	.label_126
	mov	byte ptr [byte ptr [rip + suffix_auto]],  1
	jmp	.label_125
.label_133:
	cmp	r14, 2
	mov	eax, 2
	cmovae	rax, r14
	mov	qword ptr [word ptr [rip + suffix_length]],  rax
.label_125:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_126:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_130
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r14
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e20

	.globl io_blksize
	.type io_blksize, @function
io_blksize:
	mov	rcx, qword ptr [rsp + 0x40]
	test	rcx, rcx
	setle	al
	movabs	rdx, 0x2000000000000000
	cmp	rcx, rdx
	seta	dl
	cmp	rcx, 0x20000
	jl	.label_134
	or	al, dl
	jne	.label_134
	movabs	rax, 0x2000000000000001
	cmp	rcx, rax
	mov	edx, 0x200
	mov	eax, 0x200
	cmovb	rax, rcx
	test	rcx, rcx
	cmovle	rax, rdx
	ret	
.label_134:
	mov	eax, 0x20000
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e80

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	lea	rcx, [rdi + rsi - 1]
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	sub	rcx, rdx
	mov	rax, rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ea0

	.globl input_file_size
	.type input_file_size, @function
input_file_size:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r12, rdi
	xor	edi, edi
	xor	esi, esi
	mov	edx, 1
	call	lseek
	mov	r14, rax
	test	r14, r14
	js	.label_139
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_140:
	lea	rsi, [r12 + rbx]
	mov	rdx, r15
	sub	rdx, rbx
	xor	edi, edi
	call	safe_read
	cmp	rax, -1
	je	.label_135
	test	rax, rax
	je	.label_136
	add	rbx, rax
	cmp	rbx, r15
	jb	.label_140
	mov	r15,  qword ptr [word ptr [rip + label_141]]
	test	r15, r15
	je	.label_142
	add	r14, rbx
	call	usable_st_size
	cmp	r14, r15
	jg	.label_138
	xor	al, 1
	je	.label_137
.label_138:
	xor	edi, edi
	xor	esi, esi
	mov	edx, 2
	call	lseek
	mov	r15, rax
	test	r15, r15
	js	.label_135
	cmp	r15, r14
	je	.label_137
	xor	edi, edi
	xor	edx, edx
	mov	rsi, r14
	call	lseek
	test	rax, rax
	js	.label_135
	cmp	r15, r14
	cmovl	r15, r14
.label_137:
	sub	r15, r14
	add	rbx, r15
	movabs	rax, 0x7fffffffffffffff
	cmp	rbx, rax
	jne	.label_136
.label_142:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
.label_135:
	mov	rbx, -1
	jmp	.label_136
.label_139:
	call	__errno_location
	mov	rbx, -1
	cmp	dword ptr [rax], 0x1d
	jne	.label_136
	mov	dword ptr [rax], 0
.label_136:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fa0

	.globl lines_split
	.type lines_split, @function
lines_split:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rsi
	mov	r13, rdi
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	xor	r12d, r12d
	mov	qword ptr [rsp + 8], r14
	nop	word ptr [rax + rax]
.label_144:
	xor	edi, edi
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x18]
	call	safe_read
	cmp	rax, -1
	je	.label_149
	lea	rbx, [r14 + rax]
	mov	cl,  byte ptr [byte ptr [rip + eolchar]]
	mov	byte ptr [r14 + rax], cl
	mov	qword ptr [rsp + 0x20], rax
	lea	rbp, [r14 + rax + 1]
	jmp	.label_145
	nop	word ptr cs:[rax + rax]
.label_143:
	mov	eax, dword ptr [rsp + 4]
	and	al, 1
	mov	rdx, r14
	mov	rsi, qword ptr [rsp + 0x10]
	sub	rdx, rsi
	movzx	edi, al
	call	cwrite
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	xor	r12d, r12d
.label_145:
	mov	r15d,  dword ptr [dword ptr [rip + eolchar]]
	mov	qword ptr [rsp + 0x10], r14
	nop	
.label_147:
	mov	rdx, rbp
	sub	rdx, r14
	mov	rdi, r14
	mov	esi, r15d
	call	memchr
	mov	r14, rax
	cmp	r14, rbx
	je	.label_146
	inc	r14
	inc	r12
	cmp	r12, r13
	jb	.label_147
	jmp	.label_143
	nop	word ptr cs:[rax + rax]
.label_146:
	mov	rsi, qword ptr [rsp + 0x10]
	sub	rbx, rsi
	je	.label_148
	mov	eax, dword ptr [rsp + 4]
	and	al, 1
	movzx	edi, al
	mov	rdx, rbx
	call	cwrite
	mov	dword ptr [rsp + 4], 0
.label_148:
	mov	r14, qword ptr [rsp + 8]
	cmp	qword ptr [rsp + 0x20], 0
	jne	.label_144
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_149:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030f0

	.globl bytes_split
	.type bytes_split, @function
bytes_split:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, r8
	mov	r14, rcx
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 8], rsi
	lea	rsi, [r13 - 1]
	mov	bpl, 1
	xor	r12d, r12d
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rdi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x10], rsi
.label_163:
	cmp	r14, -1
	je	.label_159
	cmp	r14, qword ptr [rsp + 0x20]
	setb	byte ptr [rsp + 7]
	jmp	.label_161
	nop	dword ptr [rax]
.label_159:
	mov	r15d, eax
	test	al, 1
	jne	.label_150
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbx
	call	lseek
	cmp	rax, -1
	je	.label_156
	mov	bpl, 1
.label_156:
	cmovne	rbx, qword ptr [rsp + 0x18]
.label_150:
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x20]
	call	safe_read
	mov	r14, rax
	cmp	r14, -1
	je	.label_165
	test	r14, r14
	sete	byte ptr [rsp + 7]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	eax, r15d
.label_161:
	cmp	r14, rbx
	jae	.label_155
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_158
	nop	
.label_155:
	mov	r15, qword ptr [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_160:
	mov	ecx, eax
	or	cl, bpl
	and	bpl, 1
	test	cl, 1
	je	.label_164
	movzx	edi, bpl
	mov	rsi, r15
	mov	rdx, rbx
	call	cwrite
	mov	rsi, qword ptr [rsp + 0x10]
.label_164:
	movzx	ecx, bpl
	add	r12, rcx
	cmp	rsi, r12
	jae	.label_154
	mov	ecx, eax
	and	cl, 1
	je	.label_157
.label_154:
	cmp	rsi, r12
	setae	bpl
	add	r15, rbx
	sub	r14, rbx
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	r14, rcx
	mov	rbx, rcx
	jae	.label_160
	mov	rbx, qword ptr [rsp + 0x18]
.label_158:
	mov	cl, 1
	test	r14, r14
	je	.label_151
	mov	ecx, eax
	or	cl, bpl
	and	bpl, 1
	test	cl, 1
	je	.label_153
	movzx	edi, bpl
	mov	rsi, r15
	mov	rdx, r14
	call	cwrite
	mov	rsi, qword ptr [rsp + 0x10]
.label_153:
	movzx	ecx, bpl
	add	r12, rcx
	xor	ebp, ebp
	mov	edi, eax
	and	dil, 1
	mov	rdx, r14
	cmove	rdx, rbp
	cmp	r12, r13
	setne	cl
	cmovne	rdx, r14
	sub	rbx, rdx
	or	cl, dil
.label_151:
	test	cl, 1
	je	.label_157
	xor	byte ptr [rsp + 7], 1
	mov	r14, -1
	jne	.label_163
.label_157:
	cmp	r12, r13
	jae	.label_162
	sub	r13, r12
	nop	word ptr cs:[rax + rax]
.label_152:
	mov	edi, 1
	xor	esi, esi
	xor	edx, edx
	call	cwrite
	dec	r13
	jne	.label_152
.label_162:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_165:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032e0

	.globl line_bytes_split
	.type line_bytes_split, @function
line_bytes_split:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	qword ptr [rsp + 0x60], rdi
	mov	qword ptr [rsp + 0x28], rdx
	mov	rax, rdx
	not	rax
	mov	qword ptr [rsp + 0x58], rax
	xor	edx, edx
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	xor	ebx, ebx
.label_181:
	mov	r12, rdx
	xor	edi, edi
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r14, rsi
	call	safe_read
	test	rax, rax
	je	.label_185
	cmp	rax, -1
	mov	qword ptr [rsp + 0x50], r14
	mov	r13, r14
	mov	qword ptr [rsp + 0x48], rax
	mov	rcx, rax
	mov	rdx, r12
	je	.label_174
	nop	dword ptr [rax + rax]
.label_186:
	mov	qword ptr [rsp + 0x30], r15
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, qword ptr [rsp + 0x60]
	sub	r14, rbx
	mov	qword ptr [rsp + 0x20], rbp
	sub	r14, rbp
	cmp	r14, rcx
	mov	qword ptr [rsp + 0x40], rcx
	jbe	.label_182
	mov	esi,  dword ptr [dword ptr [rip + eolchar]]
	mov	rdi, r13
	mov	rdx, rcx
	call	memrchr
	mov	r12, rax
	xor	r14d, r14d
	xor	r15d, r15d
	jmp	.label_168
.label_182:
	lea	r15, [r13 + r14 - 1]
	mov	esi,  dword ptr [dword ptr [rip + eolchar]]
	mov	rdi, r13
	mov	rdx, r14
	call	memrchr
	mov	r12, rax
.label_168:
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_173
	test	rbx, rbx
	je	.label_175
	test	r12, r12
	jne	.label_175
	mov	qword ptr [rsp + 0x10], rbx
	jmp	.label_177
	nop	word ptr cs:[rax + rax]
.label_173:
	mov	qword ptr [rsp + 0x10], rbx
	jmp	.label_172
	nop	word ptr [rax + rax]
.label_175:
	xor	edi, edi
	test	rbx, rbx
	sete	dil
	mov	rsi, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rdx, rbp
	call	cwrite
	add	rbx, rbp
	cmp	rbp, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x10], rbx
	jbe	.label_189
	mov	rdi, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rsi, rbx
	call	xrealloc
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x18], rbx
	jmp	.label_172
.label_189:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x18], rax
.label_172:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
.label_177:
	test	r12, r12
	mov	qword ptr [rsp + 0x38], r15
	je	.label_176
	mov	rsi, r13
	mov	r13, r12
	sub	r13, rsi
	lea	rbp, [r13 + 1]
	xor	edi, edi
	mov	rbx, qword ptr [rsp + 0x10]
	test	rbx, rbx
	sete	dil
	mov	rdx, rbp
	call	cwrite
	lea	rbx, [rbx + r13 + 1]
	mov	rcx, qword ptr [rsp + 0x40]
	sub	rcx, rbp
	inc	r12
	test	r15, r15
	cmove	rbp, r15
	sub	r14, rbp
	mov	sil, 1
	mov	r13, r12
	jmp	.label_183
	nop	dword ptr [rax + rax]
.label_176:
	mov	rcx, qword ptr [rsp + 0x40]
	test	rcx, rcx
	je	.label_179
	mov	rdx, qword ptr [rsp + 0x30]
	mov	eax, edx
	and	al, 1
	jne	.label_171
	xor	edi, edi
	mov	rbx, qword ptr [rsp + 0x10]
	test	rbx, rbx
	sete	dil
	test	r15, r15
	mov	rbp, rcx
	cmovne	rbp, r14
	mov	r12, r14
	cmove	r12, r15
	mov	rsi, r13
	mov	r15, rcx
	mov	rdx, rbp
	call	cwrite
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 0x38]
	add	rbx, rbp
	sub	rcx, rbp
	add	r13, rbp
	sub	r14, r12
	mov	rax, qword ptr [rsp + 0x30]
	mov	esi, eax
	jmp	.label_183
.label_179:
	mov	rax, qword ptr [rsp + 0x30]
	mov	esi, eax
	jmp	.label_188
.label_171:
	mov	esi, edx
.label_188:
	mov	rbx, qword ptr [rsp + 0x10]
	nop	
.label_183:
	test	r15, r15
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	je	.label_166
	test	r14, r14
	jne	.label_169
.label_166:
	test	r15, r15
	jne	.label_170
	test	rcx, rcx
	je	.label_170
.label_169:
	mov	rax, r15
	mov	r15, r13
	test	rax, rax
	cmove	r14, rcx
	mov	rax, rdx
	sub	rax, rbp
	cmp	rax, r14
	jae	.label_187
	mov	r12d, esi
	mov	r13, rcx
	cmp	rdx, qword ptr [rsp + 0x58]
	ja	.label_178
	add	rdx, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rsp + 8], rax
	jmp	.label_180
	nop	dword ptr [rax]
.label_187:
	mov	qword ptr [rsp + 0x18], rdx
	mov	r12d, esi
	mov	r13, rcx
.label_180:
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rax + rbp]
	mov	rsi, r15
	mov	rdx, r14
	call	memcpy
	add	rbp, r14
	mov	rcx, r13
	mov	r13, r15
	sub	rcx, r14
	add	r13, r14
	mov	r15, qword ptr [rsp + 0x38]
	mov	esi, r12d
	mov	rdx, qword ptr [rsp + 0x18]
.label_170:
	xor	eax, eax
	test	r15, r15
	mov	r15d, 0
	jne	.label_167
	mov	r15b, sil
.label_167:
	cmovne	rbx, rax
	test	rcx, rcx
	jne	.label_186
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsi, qword ptr [rsp + 0x50]
	jne	.label_181
.label_185:
	test	rbp, rbp
	je	.label_184
	xor	edi, edi
	test	rbx, rbx
	sete	dil
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	cwrite
.label_184:
	mov	rdi, qword ptr [rsp + 8]
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_178:
	call	xalloc_die
.label_174:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403650

	.globl bytes_chunk_extract
	.type bytes_chunk_extract, @function
bytes_chunk_extract:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, r8
	mov	r14, rcx
	mov	r15, rdx
	lea	r13, [rdi - 1]
	cmp	r13, rsi
	jae	.label_195
	cmp	rsi, r9
	ja	.label_195
	xor	edx, edx
	mov	rax, r9
	div	rsi
	mov	r12, rax
	imul	r13, r12
	imul	r12, rdi
	cmp	rdi, rsi
	cmove	r12, r9
	cmp	r13, rbx
	jae	.label_200
	lea	rsi, [r15 + r13]
	sub	rbx, r13
	mov	rdi, r15
	mov	rdx, rbx
	call	memmove
	jmp	.label_193
.label_200:
	xor	edi, edi
	mov	edx, 1
	mov	rsi, r13
	call	lseek
	mov	rbx, -1
	test	rax, rax
	jns	.label_193
	jmp	.label_194
	nop	dword ptr [rax]
.label_197:
	add	r13, rbp
	mov	rbx, -1
.label_193:
	cmp	r12, r13
	jle	.label_196
	cmp	rbx, -1
	jne	.label_198
	xor	edi, edi
	mov	rsi, r15
	mov	rdx, r14
	call	safe_read
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_194
.label_198:
	test	rbx, rbx
	je	.label_196
	mov	rbp, r12
	sub	rbp, r13
	cmp	rbx, rbp
	cmovb	rbp, rbx
	mov	edi, 1
	mov	rsi, r15
	mov	rdx, rbp
	call	full_write
	cmp	rax, rbp
	je	.label_197
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	edi, ebx
	call	ignorable
	test	al, al
	jne	.label_197
	xor	edi, edi
	mov	esi, 3
	mov	edx, OFFSET FLAT:label_88
	jmp	.label_199
.label_196:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_194:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
.label_199:
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_195:
	mov	edi, OFFSET FLAT:label_190
	mov	esi, OFFSET FLAT:label_191
	mov	edx, 0x3e0
	mov	ecx, OFFSET FLAT:label_192
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037a0

	.globl lines_chunk_split
	.type lines_chunk_split, @function
lines_chunk_split:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r14, r9
	mov	rbp, r8
	mov	qword ptr [rsp + 0x58], rcx
	mov	qword ptr [rsp + 0x38], rdx
	cmp	rdi, rsi
	ja	.label_209
	lea	rax, [rsi - 1]
	cmp	rax, r14
	jae	.label_209
	xor	edx, edx
	mov	rax, r14
	div	rsi
	mov	ecx, 1
	mov	qword ptr [rsp + 8], rcx
	xor	r13d, r13d
	cmp	rdi, 2
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 0x40], rsi
	mov	qword ptr [rsp + 0x70], rax
	jb	.label_230
	lea	rcx, [rdi - 1]
	mov	r13, rax
	mov	rax, rcx
	mov	qword ptr [rsp + 8], rax
	imul	r13, rcx
	dec	r13
	mov	rsi, r13
	sub	rsi, rbp
	jae	.label_232
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rsi, [rdi + r13]
	sub	rbp, r13
	mov	rdx, rbp
	call	memmove
	mov	r15, r13
	mov	rdi, qword ptr [rsp + 0x10]
	jmp	.label_217
.label_230:
	lea	r15, [rax - 1]
	jmp	.label_217
.label_232:
	xor	edi, edi
	mov	edx, 1
	call	lseek
	mov	rbp, -1
	test	rax, rax
	mov	r15, r13
	mov	rdi, qword ptr [rsp + 0x10]
	js	.label_208
.label_217:
	cmp	r13, r14
	jge	.label_227
	lea	rax, [r14 - 1]
	mov	qword ptr [rsp + 0x68], rax
	mov	al, 1
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x28], rcx
	mov	qword ptr [rsp + 0x50], r14
.label_202:
	cmp	rbp, -1
	jne	.label_201
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rsp + 7], al
	call	safe_read
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rbp, rax
	mov	al, byte ptr [rsp + 7]
	cmp	rbp, -1
	je	.label_208
.label_201:
	test	rbp, rbp
	je	.label_210
	mov	rdx, r14
	sub	rdx, r13
	cmp	rbp, rdx
	cmovb	rdx, rbp
	test	rdx, rdx
	je	.label_219
	mov	ecx, eax
	mov	rax, qword ptr [rsp + 0x38]
	lea	rsi, [rax + rdx]
	xor	edi, edi
	mov	qword ptr [rsp + 0x28], rdi
	mov	rdi, rax
	mov	eax, ecx
	mov	qword ptr [rsp + 0x18], rsi
.label_226:
	mov	r14d, eax
	mov	r12, rsi
	mov	rbp, rdi
	mov	rax, r15
	sub	rax, r13
	mov	ecx, 0
	cmovns	rcx, rax
	cmp	rdx, rcx
	cmovb	rcx, rdx
	lea	rdi, [rbp + rcx]
	mov	esi,  dword ptr [dword ptr [rip + eolchar]]
	mov	qword ptr [rsp + 0x60], rdx
	sub	rdx, rcx
	call	memchr
	test	rax, rax
	lea	rcx, [rax + 1]
	setne	al
	cmove	rcx, r12
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbx, rcx
	sub	rbx, rbp
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	qword ptr [rsp + 8], rcx
	jne	.label_212
	mov	edi, 1
	mov	rsi, rbp
	mov	rdx, rbx
	mov	ebp, eax
	call	full_write
	cmp	rax, rbx
	mov	eax, ebp
	je	.label_224
	jmp	.label_228
	nop	word ptr [rax + rax]
.label_212:
	test	rcx, rcx
	jne	.label_224
	and	r14b, 1
	movzx	edi, r14b
	mov	rsi, rbp
	mov	rdx, rbx
	mov	ebp, eax
	call	cwrite
	mov	eax, ebp
	nop	dword ptr [rax]
.label_224:
	add	r13, rbx
	test	al, al
	setne	r14b
	cmp	r15, r13
	jl	.label_204
	test	al, al
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	je	.label_207
	mov	qword ptr [rsp + 0x30], rbx
	mov	byte ptr [rsp + 7], al
	mov	dl, al
	mov	rcx, r15
	jmp	.label_211
.label_204:
	mov	qword ptr [rsp + 0x30], rbx
	mov	byte ptr [rsp + 7], al
	mov	dl, al
	mov	rcx, r15
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
.label_211:
	mov	dword ptr [rsp + 0x4c], edx
	cmp	rdi, rsi
	sete	al
	mov	r15, rcx
	mov	ebp, r14d
	xor	bpl, 1
	and	bpl, al
	mov	rax, qword ptr [rsp + 8]
	lea	r12, [rax + 1]
	mov	rbx, r15
	nop	dword ptr [rax + rax]
.label_221:
	test	bpl, bpl
	jne	.label_222
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_203
	cmp	r12, rax
	ja	.label_205
.label_203:
	add	r15, qword ptr [rsp + 0x70]
	cmp	qword ptr [rsp + 0x40], r12
	cmove	r15, qword ptr [rsp + 0x68]
	test	rax, rax
	jne	.label_214
	cmp	r15, r13
	jge	.label_214
	mov	edi, 1
	xor	esi, esi
	xor	edx, edx
	call	cwrite
	cmp	r15, r13
	setl	al
	or	al, r14b
	inc	r12
	test	al, 1
	jne	.label_221
	jmp	.label_233
	nop	word ptr cs:[rax + rax]
.label_214:
	cmp	r15, r13
	jge	.label_220
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	edx, dword ptr [rsp + 0x4c]
	jmp	.label_225
.label_220:
	xor	edx, edx
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
.label_225:
	mov	r14d, edx
	and	r14b, 1
	cmp	r15, r13
	mov	rax, r12
	mov	qword ptr [rsp + 8], rax
	mov	rcx, r15
	jl	.label_211
	test	r14b, r14b
	mov	rax, r12
	mov	qword ptr [rsp + 8], rax
	mov	rcx, r15
	jne	.label_211
	mov	qword ptr [rsp + 8], r12
	mov	al, byte ptr [rsp + 7]
	jmp	.label_231
.label_222:
	mov	r15, rbx
	mov	al, 1
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_218
.label_233:
	dec	r12
	mov	qword ptr [rsp + 8], r12
.label_218:
	mov	al, byte ptr [rsp + 7]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
.label_231:
	mov	rbx, qword ptr [rsp + 0x30]
.label_207:
	mov	rdx, qword ptr [rsp + 0x60]
	sub	rdx, rbx
	cmp	rdi, rsi
	jne	.label_226
	jmp	.label_223
	nop	word ptr cs:[rax + rax]
.label_219:
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x28], rcx
.label_223:
	mov	rbp, -1
	mov	r14, qword ptr [rsp + 0x50]
	cmp	r13, r14
	mov	rdi, qword ptr [rsp + 0x10]
	jl	.label_202
	jmp	.label_210
.label_227:
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
.label_210:
	mov	rax, qword ptr [rsp + 0x28]
	and	al, 1
	movzx	eax, al
	test	rdi, rdi
	jne	.label_205
	mov	rcx, qword ptr [rsp + 8]
	lea	rcx, [rcx + rax]
	cmp	rcx, qword ptr [rsp + 0x40]
	ja	.label_205
	mov	rcx, qword ptr [rsp + 8]
	lea	rbp, [rcx + rax + 1]
	nop	word ptr cs:[rax + rax]
.label_229:
	mov	edi, 1
	xor	esi, esi
	xor	edx, edx
	call	cwrite
	cmp	qword ptr [rsp + 0x10], 0
	jne	.label_205
	cmp	rbp, qword ptr [rsp + 0x40]
	lea	rbp, [rbp + 1]
	jbe	.label_229
.label_205:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_228:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_206
	mov	edx, 5
	call	dcgettext
	jmp	.label_213
.label_209:
	mov	edi, OFFSET FLAT:label_215
	mov	esi, OFFSET FLAT:label_191
	mov	edx, 0x362
	mov	ecx, OFFSET FLAT:label_216
	call	__assert_fail
.label_208:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
.label_213:
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c00

	.globl lines_rr
	.type lines_rr, @function
lines_rr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r12, rcx
	mov	qword ptr [rsp + 0x50], rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x20], rdi
	test	rdi, rdi
	jne	.label_234
	mov	esi, 0x20
	mov	rdi, r14
	call	xnmalloc
	mov	r15, rax
	test	r14, r14
	je	.label_234
	mov	rbp, r15
	add	rbp, 0x18
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_251:
	call	next_file_name
	mov	rdi,  qword ptr [word ptr [rip + outfile]]
	call	xstrdup
	mov	qword ptr [rbp - 0x18], rax
	mov	dword ptr [rbp - 0x10], 0xffffffff
	mov	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp], 0
	add	rbp, 0x20
	dec	rbx
	jne	.label_251
.label_234:
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp + 0x10], r14
	xor	ebp, ebp
	mov	ebx, 1
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	mov	qword ptr [rsp + 0x60], r12
	jmp	.label_235
	nop	word ptr cs:[rax + rax]
.label_246:
	mov	r12, qword ptr [rsp + 0x60]
	mov	rbp, qword ptr [rsp + 0x18]
.label_235:
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, r12
	call	safe_read
	mov	r15, rax
	test	r15, r15
	je	.label_250
	cmp	r15, -1
	je	.label_253
	mov	rax, qword ptr [rsp + 0x50]
	add	r15, rax
	mov	rsi, rax
	jmp	.label_257
	nop	dword ptr [rax]
.label_263:
	cmp	rbx, qword ptr [rsp + 0x10]
	lea	rax, [rbx + 1]
	mov	ebx, 1
	cmovne	rbx, rax
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x58]
.label_257:
	mov	rax, rbp
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r13d, ecx
.label_261:
	mov	rbp, rax
.label_252:
	mov	qword ptr [rsp + 0x18], rbp
	shl	rbp, 5
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + rbp + 8]
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x30], rbp
	lea	r12, [rax + rbp + 0x10]
	mov	rbp, rsi
.label_249:
	mov	al, r13b
	mov	qword ptr [rsp + 0x38], rax
	nop	word ptr [rax + rax]
.label_259:
	cmp	rbp, r15
	je	.label_246
	mov	esi,  dword ptr [dword ptr [rip + eolchar]]
	mov	rdx, r15
	sub	rdx, rbp
	mov	rdi, rbp
	call	memchr
	mov	rcx, r15
	mov	r14, rax
	lea	r13, [r14 + 1]
	test	r14, r14
	mov	qword ptr [rsp + 0x58], r13
	cmove	r13, rcx
	sub	r13, rbp
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	je	.label_239
	cmp	rbx, rax
	jne	.label_241
	cmp	byte ptr [byte ptr [rip + unbuffered]],  1
	jne	.label_244
	mov	edi, 1
	mov	rsi, rbp
	mov	rdx, r13
	call	full_write
	cmp	rax, r13
	je	.label_241
	jmp	.label_238
	nop	dword ptr [rax + rax]
.label_244:
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, r13
	call	fwrite_unlocked
	cmp	rax, 1
	jne	.label_254
.label_241:
	test	r14, r14
	mov	rbp, r15
	je	.label_259
	jmp	.label_263
	nop	word ptr cs:[rax + rax]
.label_239:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x10]
	call	ofile_open
	mov	byte ptr [rsp + 7], al
	cmp	byte ptr [byte ptr [rip + unbuffered]],  1
	jne	.label_243
	mov	rax, qword ptr [rsp + 0x48]
	mov	edi, dword ptr [rax]
	mov	rsi, rbp
	mov	rdx, r13
	call	full_write
	cmp	rax, r13
	jne	.label_247
	jmp	.label_248
.label_243:
	mov	rcx, qword ptr [r12]
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, r13
	call	fwrite_unlocked
	cmp	rax, 1
	je	.label_248
.label_247:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	edi, ebp
	call	ignorable
	test	al, al
	je	.label_260
.label_248:
	mov	rax, qword ptr [rsp + 0x38]
	and	al, 1
	mov	r13b, byte ptr [rsp + 7]
	or	r13b, al
	call	__errno_location
	mov	rbp, rax
	mov	edi, dword ptr [rbp]
	call	ignorable
	test	al, al
	jne	.label_240
	mov	al, 1
	mov	qword ptr [rsp + 0x28], rax
.label_240:
	test	r13b, r13b
	mov	rcx, qword ptr [rsp + 0x20]
	je	.label_237
	mov	rdi, qword ptr [r12]
	call	rpl_fclose
	test	eax, eax
	jne	.label_255
	mov	qword ptr [r12], 0
	mov	rax, qword ptr [rsp + 0x48]
	mov	dword ptr [rax], 0xfffffffe
	mov	rcx, qword ptr [rsp + 0x20]
.label_237:
	test	r14, r14
	mov	rbp, r15
	je	.label_249
	mov	rbp, qword ptr [rsp + 0x18]
	inc	rbp
	cmp	rbp, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x58]
	jne	.label_252
	mov	al, 1
	mov	qword ptr [rsp + 0x40], rax
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x28]
	test	dl, 1
	mov	edx, 0
	mov	qword ptr [rsp + 0x28], rdx
	jne	.label_261
	jmp	.label_245
.label_250:
	mov	rcx, qword ptr [rsp + 0x20]
.label_245:
	test	rcx, rcx
	mov	r15, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 8]
	jne	.label_242
	test	r15, r15
	je	.label_242
	mov	rax, qword ptr [rsp + 0x40]
	test	al, 1
	cmovne	rbp, r15
	movsxd	r14, ebp
	lea	rbp, [r12 + 0x18]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_236:
	cmp	rbx, r14
	jb	.label_258
	movzx	eax,  byte ptr [byte ptr [rip + elide_empty_files]]
	test	al, al
	jne	.label_258
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, r15
	call	ofile_open
.label_258:
	mov	esi, dword ptr [rbp - 0x10]
	test	esi, esi
	js	.label_256
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp]
	call	closeout
.label_256:
	mov	dword ptr [rbp - 0x10], 0xfffffffe
	inc	rbx
	add	rbp, 0x20
	cmp	r15, rbx
	jne	.label_236
.label_242:
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_254:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	clearerr_unlocked
.label_238:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_206
	mov	edx, 5
	call	dcgettext
.label_262:
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_253:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	jmp	.label_262
.label_255:
	mov	ebp, dword ptr [rbp]
.label_260:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rax + rcx]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	esi, ebp
	call	error
	.section	.text
	.align	16
	#Procedure 0x404030

	.globl closeout
	.type closeout, @function
closeout:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x30
	mov	r14, rcx
	mov	r15d, edx
	mov	ebx, esi
	mov	rbp, rdi
	test	rbp, rbp
	je	.label_271
	mov	rdi, rbp
	call	rpl_fclose
	test	eax, eax
	je	.label_271
	call	__errno_location
	mov	r12d, dword ptr [rax]
	mov	edi, r12d
	call	ignorable
	test	al, al
	je	.label_279
.label_271:
	test	ebx, ebx
	js	.label_266
	test	rbp, rbp
	jne	.label_280
	mov	edi, ebx
	call	close
	test	eax, eax
	js	.label_264
.label_280:
	mov	rax,  qword ptr [word ptr [rip + n_open_pipes]]
	test	rax, rax
	je	.label_266
	mov	rdx,  qword ptr [word ptr [rip + open_pipes]]
	mov	rsi,  qword ptr [word ptr [rip + n_open_pipes]]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_274:
	cmp	dword ptr [rdx + rcx*4], ebx
	je	.label_272
	inc	rcx
	cmp	rcx, rsi
	mov	rax, rsi
	jb	.label_274
	jmp	.label_266
.label_272:
	lea	rdx, [rax - 1]
	mov	qword ptr [word ptr [rip + n_open_pipes]],  rdx
	mov	rdx,  qword ptr [word ptr [rip + open_pipes]]
	mov	eax, dword ptr [rdx + rax*4 - 4]
	mov	dword ptr [rdx + rcx*4], eax
.label_266:
	test	r15d, r15d
	jle	.label_269
	mov	dword ptr [rsp + 0xc], 0
	lea	rsi, [rsp + 0xc]
	xor	edx, edx
	mov	edi, r15d
	call	waitpid
	cmp	eax, -1
	jne	.label_281
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0xa
	jne	.label_270
.label_281:
	mov	ebx, dword ptr [rsp + 0xc]
	mov	ebp, ebx
	and	ebp, 0x7f
	mov	eax, ebp
	shl	eax, 0x18
	add	eax, 0x1000000
	sar	eax, 0x19
	test	eax, eax
	jle	.label_267
	cmp	ebp, 0xd
	je	.label_269
	lea	rsi, [rsp + 0x10]
	mov	edi, ebp
	call	sig2str
	test	eax, eax
	je	.label_275
	lea	rdi, [rsp + 0x10]
	mov	esi, 1
	mov	edx, 0x13
	mov	ecx, OFFSET FLAT:label_276
	xor	eax, eax
	mov	r8d, ebp
	call	__sprintf_chk
.label_275:
	or	ebp, 0x80
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_278
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	r9,  qword ptr [word ptr [rip + filter_command]]
	lea	r8, [rsp + 0x10]
	mov	esi, 0
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rbx
	call	error
	jmp	.label_269
.label_267:
	test	ebp, ebp
	jne	.label_273
	shr	ebx, 8
	and	ebx, 0xff
	je	.label_269
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_268
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	r9,  qword ptr [word ptr [rip + filter_command]]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	rdx, rbp
	mov	r8d, ebx
	call	error
.label_269:
	add	rsp, 0x30
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_279:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	esi, r12d
	call	error
.label_264:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_270:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_277
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_273:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_265
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	ecx, dword ptr [rsp + 0xc]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042b0

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	movzx	eax,  word ptr [word ptr [rip + label_282]]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_283
	mov	al, 1
	ret	
.label_283:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4042d0

	.globl cwrite
	.type cwrite, @function
cwrite:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	test	dil, dil
	je	.label_287
	test	r14, r14
	jne	.label_285
	test	rbx, rbx
	jne	.label_285
	mov	al, 1
	mov	cl,  byte ptr [byte ptr [rip + elide_empty_files]]
	test	cl, cl
	jne	.label_286
.label_285:
	mov	esi,  dword ptr [dword ptr [rip + output_desc]]
	mov	edx,  dword ptr [dword ptr [rip + filter_pid]]
	mov	rcx,  qword ptr [word ptr [rip + outfile]]
	xor	edi, edi
	call	closeout
	call	next_file_name
	mov	rdi,  qword ptr [word ptr [rip + outfile]]
	call	create
	mov	dword ptr [dword ptr [rip + output_desc]],  eax
	test	eax, eax
	js	.label_284
.label_287:
	mov	edi,  dword ptr [dword ptr [rip + output_desc]]
	mov	rsi, r14
	mov	rdx, rbx
	call	full_write
	mov	rcx, rax
	mov	al, 1
	cmp	rcx, rbx
	je	.label_286
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	edi, ebx
	call	ignorable
	test	al, al
	je	.label_288
	xor	eax, eax
.label_286:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_284:
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_288:
	mov	rdx,  qword ptr [word ptr [rip + outfile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043a0

	.globl next_file_name
	.type next_file_name, @function
next_file_name:
	push	r15
	push	r14
	push	rbx
	cmp	qword ptr [word ptr [rip + outfile]],  0
	je	.label_298
	mov	rax,  qword ptr [word ptr [rip + suffix_length]]
	test	rax, rax
	je	.label_304
	mov	rcx,  qword ptr [word ptr [rip + next_file_name.sufindex]]
	mov	dl,  byte ptr [byte ptr [rip + suffix_auto]]
	xor	dl, 1
	mov	rsi,  qword ptr [word ptr [rip + suffix_alphabet]]
	mov	rdi,  qword ptr [word ptr [rip + outfile_mid]]
	nop	dword ptr [rax]
.label_295:
	inc	qword ptr [rcx + rax*8 - 8]
	cmp	rax, 1
	sete	bl
	and	bl, dl
	cmp	bl, 1
	jne	.label_290
	mov	rbx, qword ptr [rcx]
	cmp	byte ptr [rsi + rbx + 1], 0
	je	.label_298
.label_290:
	mov	rbx, qword ptr [rcx + rax*8 - 8]
	movzx	ebx, byte ptr [rsi + rbx]
	mov	byte ptr [rdi + rax - 1], bl
	test	bl, bl
	jne	.label_292
	mov	qword ptr [rcx + rax*8 - 8], 0
	movzx	ebx, byte ptr [rsi]
	mov	byte ptr [rdi + rax - 1], bl
	dec	rax
	jne	.label_295
.label_304:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_301
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_298:
	mov	rbx,  qword ptr [word ptr [rip + next_file_name.outfile_length]]
	test	rbx, rbx
	je	.label_293
	lea	rax, [rbx + 2]
	mov	qword ptr [word ptr [rip + next_file_name.outfile_length]],  rax
	inc	qword ptr [word ptr [rip + suffix_length]]
	jmp	.label_296
.label_293:
	mov	rdi,  qword ptr [word ptr [rip + outbase]]
	call	strlen
	mov	qword ptr [word ptr [rip + next_file_name.outbase_length]],  rax
	mov	rdi,  qword ptr [word ptr [rip + additional_suffix]]
	xor	eax, eax
	test	rdi, rdi
	je	.label_305
	call	strlen
.label_305:
	mov	qword ptr [word ptr [rip + next_file_name.addsuf_length]],  rax
	add	rax,  qword ptr [word ptr [rip + next_file_name.outbase_length]]
	add	rax,  qword ptr [word ptr [rip + suffix_length]]
	mov	qword ptr [word ptr [rip + next_file_name.outfile_length]],  rax
.label_296:
	mov	rsi,  qword ptr [word ptr [rip + next_file_name.outfile_length]]
	inc	rsi
	cmp	rsi,  qword ptr [word ptr [rip + next_file_name.outbase_length]]
	jb	.label_302
	mov	rdi,  qword ptr [word ptr [rip + outfile]]
	call	xrealloc
	test	rbx, rbx
	mov	qword ptr [word ptr [rip + outfile]],  rax
	je	.label_294
	mov	rcx,  qword ptr [word ptr [rip + next_file_name.sufindex]]
	mov	rcx, qword ptr [rcx]
	mov	rdx,  qword ptr [word ptr [rip + suffix_alphabet]]
	mov	cl, byte ptr [rdx + rcx]
	mov	rdx,  qword ptr [word ptr [rip + next_file_name.outbase_length]]
	mov	byte ptr [rax + rdx], cl
	inc	rdx
	mov	qword ptr [word ptr [rip + next_file_name.outbase_length]],  rdx
	jmp	.label_297
.label_294:
	mov	rsi,  qword ptr [word ptr [rip + outbase]]
	mov	rdx,  qword ptr [word ptr [rip + next_file_name.outbase_length]]
	mov	rdi, rax
	call	memcpy
.label_297:
	mov	rdi,  qword ptr [word ptr [rip + outfile]]
	add	rdi,  qword ptr [word ptr [rip + next_file_name.outbase_length]]
	mov	qword ptr [word ptr [rip + outfile_mid]],  rdi
	mov	rax,  qword ptr [word ptr [rip + suffix_alphabet]]
	mov	rdx,  qword ptr [word ptr [rip + suffix_length]]
	movzx	esi, byte ptr [rax]
	call	memset
	mov	rsi,  qword ptr [word ptr [rip + additional_suffix]]
	test	rsi, rsi
	je	.label_291
	mov	rdi,  qword ptr [word ptr [rip + outfile_mid]]
	add	rdi,  qword ptr [word ptr [rip + suffix_length]]
	mov	rdx,  qword ptr [word ptr [rip + next_file_name.addsuf_length]]
	call	memcpy
.label_291:
	mov	rax,  qword ptr [word ptr [rip + next_file_name.outfile_length]]
	mov	rcx,  qword ptr [word ptr [rip + outfile]]
	mov	byte ptr [rcx + rax], 0
	mov	rdi,  qword ptr [word ptr [rip + next_file_name.sufindex]]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + suffix_length]]
	mov	esi, 8
	call	xcalloc
	mov	qword ptr [word ptr [rip + next_file_name.sufindex]],  rax
	mov	r14,  qword ptr [word ptr [rip + numeric_suffix_start]]
	test	r14, r14
	je	.label_292
	test	rbx, rbx
	jne	.label_303
	mov	rdi, r14
	call	strlen
	mov	rbx, rax
	mov	r15,  qword ptr [word ptr [rip + suffix_length]]
	mov	rdi,  qword ptr [word ptr [rip + outfile_mid]]
	add	rdi, r15
	sub	rdi, rbx
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	je	.label_292
	mov	rcx,  qword ptr [word ptr [rip + next_file_name.sufindex]]
	mov	rax,  qword ptr [word ptr [rip + numeric_suffix_start]]
	lea	rcx, [rcx + r15*8 - 8]
	nop	word ptr [rax + rax]
.label_289:
	movsx	rdx, byte ptr [rax + rbx - 1]
	add	rdx, -0x30
	dec	rbx
	mov	qword ptr [rcx], rdx
	lea	rcx, [rcx - 8]
	jne	.label_289
.label_292:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_302:
	call	xalloc_die
.label_303:
	mov	edi, OFFSET FLAT:label_299
	mov	esi, OFFSET FLAT:label_191
	mov	edx, 0x198
	mov	ecx, OFFSET FLAT:label_300
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404640

	.globl create
	.type create, @function
create:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x98
	mov	r15, rdi
	cmp	qword ptr [word ptr [rip + filter_command]],  0
	je	.label_326
	mov	edi, OFFSET FLAT:label_334
	call	getenv
	test	rax, rax
	mov	r14d, OFFSET FLAT:label_342
	cmovne	r14, rax
	mov	edi, OFFSET FLAT:label_343
	mov	edx, 1
	mov	rsi, r15
	call	setenv
	test	eax, eax
	jne	.label_307
	cmp	byte ptr [byte ptr [rip + verbose]],  1
	jne	.label_333
	mov	rbp,  qword ptr [word ptr [rip + stdout]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_317
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbp
	mov	rdx, rbx
	call	__fprintf_chk
.label_333:
	lea	rdi, [rsp + 8]
	call	pipe
	test	eax, eax
	jne	.label_335
	call	fork
	mov	ebx, eax
	test	ebx, ebx
	je	.label_340
	cmp	ebx, -1
	je	.label_346
	mov	edi, dword ptr [rsp + 8]
	call	close
	test	eax, eax
	jne	.label_309
	mov	dword ptr [dword ptr [rip + filter_pid]],  ebx
	mov	rax,  qword ptr [word ptr [rip + n_open_pipes]]
	cmp	rax,  qword ptr [word ptr [rip + open_pipes_alloc]]
	jne	.label_315
	mov	rdi,  qword ptr [word ptr [rip + open_pipes]]
	mov	esi, OFFSET FLAT:open_pipes_alloc
	mov	edx, 4
	call	x2nrealloc
	mov	qword ptr [word ptr [rip + open_pipes]],  rax
.label_315:
	mov	eax, dword ptr [rsp + 0xc]
	mov	rcx,  qword ptr [word ptr [rip + n_open_pipes]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + n_open_pipes]],  rdx
	mov	rdx,  qword ptr [word ptr [rip + open_pipes]]
	mov	dword ptr [rdx + rcx*4], eax
	mov	ebp, dword ptr [rsp + 0xc]
	jmp	.label_310
.label_326:
	cmp	byte ptr [byte ptr [rip + verbose]],  1
	jne	.label_316
	mov	r14,  qword ptr [word ptr [rip + stdout]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_345
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, rbp
	call	__fprintf_chk
.label_316:
	mov	esi, 0x41
	mov	edx, 0x1b6
	xor	eax, eax
	mov	rdi, r15
	call	open_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_310
	lea	rsi, [rsp + 8]
	mov	edi, ebp
	call	fstat
	test	eax, eax
	jne	.label_332
	mov	rax,  qword ptr [word ptr [rip + label_336]]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_337
	mov	rax,  qword ptr [word ptr [rip + in_stat_buf]]
	cmp	rax, qword ptr [rsp + 8]
	je	.label_341
.label_337:
	xor	esi, esi
	mov	edi, ebp
	call	ftruncate
	test	eax, eax
	je	.label_310
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x8000
	je	.label_308
.label_310:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_340:
	cmp	qword ptr [word ptr [rip + n_open_pipes]],  0
	je	.label_324
	xor	ebx, ebx
	nop	
.label_347:
	mov	rax,  qword ptr [word ptr [rip + open_pipes]]
	mov	edi, dword ptr [rax + rbx*4]
	call	close
	test	eax, eax
	jne	.label_328
	inc	rbx
	cmp	rbx,  qword ptr [word ptr [rip + n_open_pipes]]
	jb	.label_347
.label_324:
	mov	edi, dword ptr [rsp + 0xc]
	call	close
	test	eax, eax
	jne	.label_339
	mov	edi, dword ptr [rsp + 8]
	test	edi, edi
	je	.label_344
	xor	esi, esi
	call	dup2
	test	eax, eax
	jne	.label_320
	mov	edi, dword ptr [rsp + 8]
	call	close
	test	eax, eax
	jne	.label_319
.label_344:
	mov	edi, 2
	mov	esi, OFFSET FLAT:oldblocked
	xor	edx, edx
	call	sigprocmask
	mov	rdi, r14
	call	last_component
	mov	rsi, rax
	mov	rcx,  qword ptr [word ptr [rip + filter_command]]
	mov	edx, OFFSET FLAT:label_325
	xor	r8d, r8d
	xor	eax, eax
	mov	rdi, r14
	call	execl
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_306
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	r8,  qword ptr [word ptr [rip + filter_command]]
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, r14
	call	error
.label_328:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_311
	jmp	.label_312
.label_339:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_318
	jmp	.label_312
.label_320:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_322
	jmp	.label_312
.label_319:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_327
.label_312:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_307:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_338
	jmp	.label_312
.label_335:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
	jmp	.label_312
.label_346:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_323
	jmp	.label_312
.label_309:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_314
	jmp	.label_312
.label_332:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	jmp	.label_329
.label_308:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_331
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
.label_329:
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_341:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_313
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a50

	.globl ignorable
	.type ignorable, @function
ignorable:
	cmp	qword ptr [word ptr [rip + filter_command]],  0
	setne	cl
	cmp	edi, 0x20
	sete	al
	and	al, cl
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a70

	.globl ofile_open
	.type ofile_open, @function
ofile_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rax, rbx
	shl	rax, 5
	cmp	dword ptr [r14 + rax + 8], 0
	js	.label_359
	xor	ebp, ebp
	jmp	.label_352
.label_359:
	lea	rcx, [r14 + rax + 8]
	mov	qword ptr [rsp + 8], rcx
	test	rbx, rbx
	mov	r13, r15
	cmovne	r13, rbx
	dec	r13
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [r14 + rax]
	mov	qword ptr [rsp], rax
	xor	ebp, ebp
	jmp	.label_354
	nop	word ptr cs:[rax + rax]
.label_358:
	lea	rax, [r14 + rbp + 8]
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 0xfffffffe
	mov	bpl, 1
.label_354:
	mov	rax, qword ptr [rsp]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rsp + 8]
	cmp	dword ptr [rax], -1
	je	.label_356
	mov	esi, 0xc01
	xor	eax, eax
	call	open_safer
	jmp	.label_349
	nop	word ptr cs:[rax + rax]
.label_356:
	call	create
.label_349:
	test	eax, eax
	jns	.label_351
	call	__errno_location
	mov	r12, rax
	mov	ebp, dword ptr [r12]
	lea	eax, [rbp - 0x17]
	cmp	eax, 1
	ja	.label_355
	nop	word ptr cs:[rax + rax]
.label_353:
	mov	rbp, r13
	shl	rbp, 5
	cmp	dword ptr [r14 + rbp + 8], 0
	jns	.label_348
	test	r13, r13
	cmove	r13, r15
	dec	r13
	cmp	r13, rbx
	jne	.label_353
	jmp	.label_361
.label_348:
	mov	rdi, qword ptr [r14 + rbp + 0x10]
	call	rpl_fclose
	test	eax, eax
	je	.label_358
	mov	ebx, dword ptr [r12]
	mov	rdx, qword ptr [r14 + rbp]
	jmp	.label_360
.label_351:
	mov	rcx, qword ptr [rsp + 8]
	mov	dword ptr [rcx], eax
	mov	esi, OFFSET FLAT:label_362
	mov	edi, eax
	call	fdopen
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [r14 + rcx + 0x10], rax
	test	rax, rax
	je	.label_350
	mov	eax,  dword ptr [dword ptr [rip + filter_pid]]
	mov	dword ptr [r14 + rcx + 0x18], eax
	mov	dword ptr [dword ptr [rip + filter_pid]],  0
.label_352:
	and	bpl, 1
	mov	eax, ebp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_361:
	mov	ebx, dword ptr [r12]
.label_357:
	mov	rax, qword ptr [rsp]
	mov	rdx, qword ptr [rax]
.label_360:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_355:
	mov	rax, qword ptr [rsp]
	mov	rdx, qword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_350:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	jmp	.label_357
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404c30
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c40
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c50

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_363
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_365
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_365
.label_363:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_364
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_365:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_206
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_366
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_364:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_366:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d10

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_367:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_367
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_371
	nop	word ptr cs:[rax + rax]
.label_369:
	inc	rax
	mov	sil, dl
.label_371:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_369
	test	cl, cl
	je	.label_368
	mov	edx, esi
	and	dl, 1
	je	.label_370
	xor	esi, esi
.label_370:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_369
.label_368:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d70
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_373:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_372
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_373
.label_372:
	pop	rbx
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404da0

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_374
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_374:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_375
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_377
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_376
.label_377:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_376:
	mov	edx, dword ptr [rax]
.label_375:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e70

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edi
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	mov	edx, ecx
	call	open
	mov	ebx, eax
	cmp	ebx, ebp
	je	.label_378
	test	ebx, ebx
	js	.label_378
	mov	edi, ebx
	mov	esi, ebp
	call	dup2
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_379
.label_378:
	mov	eax, ebx
.label_379:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ed0

	.globl full_write
	.type full_write, @function
full_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	ebp, edi
	xor	r14d, r14d
	test	r15, r15
	je	.label_380
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_382:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_380
	test	rax, rax
	je	.label_381
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_382
	jmp	.label_380
.label_381:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_380:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404f30

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_383:
	mov	rax, rcx
	mul	r8
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_383
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f80

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_384
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_386
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_388
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_386
	mov	esi, OFFSET FLAT:label_387
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_389
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_389:
	mov	rbx, r14
.label_386:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_384:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_385
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405030
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
	#Procedure 0x405070
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
	#Procedure 0x405080
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
	#Procedure 0x405090

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
	#Procedure 0x4050d0
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
	#Procedure 0x4050f0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_390
	test	rdx, rdx
	je	.label_390
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_390:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405120
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
	.align	16
	#Procedure 0x4051a0

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
.label_409:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_451
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_416]]
.label_731:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_422
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_429
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_732:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_435
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_435
	xor	r14d, r14d
.label_449:
	cmp	r14, r11
	jae	.label_445
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_445:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_449
.label_435:
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
	jmp	.label_459
.label_724:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_459
.label_727:
	mov	al, 1
.label_725:
	mov	r12b, 1
.label_728:
	test	r12b, 1
	mov	cl, 1
	je	.label_465
	mov	ecx, eax
.label_465:
	mov	al, cl
.label_726:
	test	r12b, 1
	jne	.label_470
	test	r11, r11
	je	.label_497
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_497:
	mov	r14d, 1
	jmp	.label_477
.label_470:
	xor	r14d, r14d
.label_477:
	mov	ecx, OFFSET FLAT:label_429
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_459
.label_729:
	test	r12b, 1
	jne	.label_485
	test	r11, r11
	je	.label_468
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_468:
	mov	r14d, 1
	jmp	.label_488
.label_730:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_490
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_459
.label_485:
	xor	r14d, r14d
.label_488:
	mov	eax, OFFSET FLAT:label_490
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_459:
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
	jmp	.label_444
	nop	dword ptr [rax]
.label_455:
	inc	rsi
.label_444:
	cmp	rbp, -1
	je	.label_428
	cmp	rsi, rbp
	jne	.label_464
	jmp	.label_433
	nop	word ptr cs:[rax + rax]
.label_428:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_433
.label_464:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_438
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_427
	cmp	rbp, -1
	jne	.label_427
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
.label_427:
	cmp	rbx, rbp
	jbe	.label_452
.label_438:
	xor	r8d, r8d
.label_478:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_454
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_457]]
.label_761:
	test	rsi, rsi
	jne	.label_447
	jmp	.label_460
	nop	
.label_452:
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
	jne	.label_475
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_478
	jmp	.label_421
.label_475:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_478
.label_765:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_492
	test	rsi, rsi
	jne	.label_493
	cmp	rbp, 1
	je	.label_460
	xor	r13d, r13d
	jmp	.label_404
.label_754:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_501
	cmp	byte ptr [rsp + 7], 0
	jne	.label_412
	cmp	r12d, 2
	jne	.label_491
	mov	eax, r9d
	and	al, 1
	jne	.label_491
	cmp	r14, r11
	jae	.label_503
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_503:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_392
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_392:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_398
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_398:
	add	r14, 3
	mov	r9b, 1
.label_491:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_408
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_408:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_411
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_411
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_411
	cmp	r14, r11
	jae	.label_423
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_423:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_494
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_494:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_404
.label_755:
	mov	bl, 0x62
	jmp	.label_401
.label_756:
	mov	cl, 0x74
	jmp	.label_437
.label_757:
	mov	bl, 0x76
	jmp	.label_401
.label_758:
	mov	bl, 0x66
	jmp	.label_401
.label_759:
	mov	cl, 0x72
	jmp	.label_437
.label_762:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_443
	cmp	byte ptr [rsp + 7], 0
	jne	.label_412
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
	jae	.label_450
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_450:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_458
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_458:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_461
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_461:
	add	r14, 3
	xor	r9d, r9d
.label_443:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_404
.label_763:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_474
	cmp	r12d, 2
	jne	.label_447
	cmp	byte ptr [rsp + 7], 0
	je	.label_447
	jmp	.label_412
.label_764:
	cmp	r12d, 2
	jne	.label_483
	cmp	byte ptr [rsp + 7], 0
	jne	.label_412
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_426
.label_454:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_425
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
.label_407:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_400
	test	r8b, r8b
	je	.label_400
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_404
.label_492:
	test	rsi, rsi
	jne	.label_410
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_410
.label_460:
	mov	dl, 1
.label_760:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_412
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_404:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_418
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_419
	jmp	.label_424
	nop	word ptr cs:[rax + rax]
.label_418:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_424
.label_419:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_430
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_426
	jmp	.label_442
	nop	dword ptr [rax]
.label_424:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_442
	jmp	.label_426
.label_430:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_442
.label_501:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_455
	xor	r15d, r15d
	jmp	.label_447
.label_483:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_437
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_426
.label_437:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_412
.label_401:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_404
	nop	word ptr cs:[rax + rax]
.label_442:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_412
	cmp	r12d, 2
	jne	.label_466
	mov	eax, r9d
	and	al, 1
	jne	.label_466
	cmp	r14, r11
	jae	.label_471
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_471:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_396
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_396:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_480
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_480:
	add	r14, 3
	mov	r9b, 1
.label_466:
	cmp	r14, r11
	jae	.label_484
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_484:
	inc	r14
	jmp	.label_486
.label_425:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_489
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_489:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_502:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_505
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_395
	cmp	rbp, -2
	je	.label_441
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_406
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_439:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_399
	bt	rsi, rdx
	jb	.label_421
.label_399:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_439
.label_406:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_432
	xor	r13d, r13d
.label_432:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_502
	jmp	.label_407
.label_411:
	xor	r13d, r13d
	jmp	.label_404
.label_410:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_404
.label_474:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_447
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_447
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_447
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_391
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_417
	cmp	byte ptr [rsp + 7], 0
	jne	.label_412
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_462
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_462:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_446
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_446:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_476
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_476:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_479
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_479:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_404
.label_447:
	xor	eax, eax
.label_493:
	xor	r13d, r13d
	jmp	.label_404
.label_400:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_487
	nop	word ptr cs:[rax + rax]
.label_448:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_487:
	test	r8b, r8b
	je	.label_495
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_496
	cmp	r14, r11
	jae	.label_498
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_498:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_496
	nop	dword ptr [rax]
.label_495:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_421
	cmp	r12d, 2
	jne	.label_393
	mov	eax, r9d
	and	al, 1
	jne	.label_393
	cmp	r14, r11
	jae	.label_394
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_394:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_397
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_397:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_453
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_453:
	add	r14, 3
	mov	r9b, 1
.label_393:
	cmp	r14, r11
	jae	.label_473
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_473:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_414
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_414:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_420
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_420:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_496:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_426
	test	r9b, 1
	je	.label_436
	mov	ebx, eax
	and	bl, 1
	jne	.label_436
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_440
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_440:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_482
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_482:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_436:
	cmp	r14, r11
	jae	.label_448
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_448
	nop	word ptr cs:[rax + rax]
.label_426:
	test	r9b, 1
	je	.label_405
	and	al, 1
	jne	.label_405
	cmp	r14, r11
	jae	.label_456
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_456:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_434
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_434:
	add	r14, 2
	xor	r9d, r9d
.label_405:
	mov	ebx, r15d
.label_486:
	cmp	r14, r11
	jae	.label_463
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_463:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_455
.label_395:
	xor	r13d, r13d
.label_505:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_407
.label_441:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_481
	mov	rsi, qword ptr [rsp + 0x50]
.label_467:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_500
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_467
	xor	r13d, r13d
	jmp	.label_407
.label_481:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_407
.label_500:
	xor	r13d, r13d
	jmp	.label_407
.label_391:
	xor	r13d, r13d
	jmp	.label_404
.label_417:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_404
	nop	dword ptr [rax + rax]
.label_433:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_499
	or	dl, al
	je	.label_421
.label_499:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_402
	or	dl, al
	jne	.label_402
	test	r10b, 1
	jne	.label_403
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_402
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_409
.label_402:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_413
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_415
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_415
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_431:
	cmp	r14, r11
	jae	.label_504
	mov	byte ptr [rcx + r14], al
.label_504:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_431
	jmp	.label_415
.label_412:
	mov	qword ptr [rsp + 0x20], rbp
.label_421:
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
.label_469:
	mov	r14, rax
.label_472:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_403:
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
	jmp	.label_469
.label_413:
	mov	rcx, qword ptr [rsp + 8]
.label_415:
	cmp	r14, r11
	jae	.label_472
	mov	byte ptr [rcx + r14], 0
	jmp	.label_472
.label_451:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405f60
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f70

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
	je	.label_506
	mov	qword ptr [rax], rbx
.label_506:
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
	#Procedure 0x406060
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_507
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_509:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_509
.label_507:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_510
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_511]], OFFSET FLAT:slot0
.label_510:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_508
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_508:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406100

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x406110

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
	js	.label_515
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_518
	cmp	r12d, 0x7fffffff
	je	.label_513
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
	jne	.label_516
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_516:
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
.label_518:
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
	jbe	.label_514
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_517
.label_514:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_512
	mov	rdi, r14
	call	free
.label_512:
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
.label_517:
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
.label_515:
	call	abort
.label_513:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4062d0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062e0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4062f0
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
	.align	16
	#Procedure 0x406300

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
	.align	16
	#Procedure 0x406340

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
	je	.label_519
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
.label_519:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063a0

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
	.align	16
	#Procedure 0x4063e0

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
	.align	16
	#Procedure 0x406400
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
	.align	16
	#Procedure 0x406420

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
	mov	rcx,  qword ptr [word ptr [rip + label_520]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_521]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_522]]
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
	.align	16
	#Procedure 0x406490

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4064a0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064b0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064c0

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
	.align	16
	#Procedure 0x406510

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406520

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
	mov	rax,  qword ptr [word ptr [rip + label_520]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_521]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_522]]
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
	.align	16
	#Procedure 0x406590
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
	.align	16
	#Procedure 0x4065b0
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
	.align	16
	#Procedure 0x4065d0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065e0
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
	.align	16
	#Procedure 0x4065f0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406600

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406610

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
	jne	.label_527
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
	je	.label_523
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_528
	mov	eax, OFFSET FLAT:label_529
	jmp	.label_526
.label_523:
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
	je	.label_530
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_524
	mov	eax, OFFSET FLAT:label_525
	jmp	.label_526
.label_530:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_490
	mov	eax, OFFSET FLAT:label_429
.label_526:
	cmove	rax, rcx
.label_527:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4066d0

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
	je	.label_531
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_533
	jmp	.label_532
.label_531:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_532
.label_533:
	mov	eax, 1
	test	bpl, bpl
	je	.label_532
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
.label_532:
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
	.align	16
	#Procedure 0x406750

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
	je	.label_536
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_534
	jmp	.label_535
.label_536:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_535
.label_534:
	mov	eax, 1
	test	bpl, bpl
	je	.label_535
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
.label_535:
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
	#Procedure 0x4067e0

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
	je	.label_537
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_539
	jmp	.label_538
.label_537:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_538
.label_539:
	mov	eax, 1
	test	bpl, bpl
	je	.label_538
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
.label_538:
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
	.align	16
	#Procedure 0x406860

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
	je	.label_542
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_541
	jmp	.label_540
.label_542:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_540
.label_541:
	mov	eax, 1
	test	bpl, bpl
	je	.label_540
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
.label_540:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4068d0

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
	je	.label_545
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_543
	jmp	.label_544
.label_545:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_544
.label_543:
	mov	eax, 1
	test	bpl, bpl
	je	.label_544
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_544:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406930

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
	je	.label_546
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_548
	jmp	.label_547
.label_546:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_547
.label_548:
	mov	eax, 1
	test	bpl, bpl
	je	.label_547
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_547:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406980

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
	je	.label_551
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_550
	jmp	.label_549
.label_551:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_549
.label_550:
	mov	eax, 1
	test	bpl, bpl
	je	.label_549
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_549:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4069d0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_553
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_554
	jmp	.label_552
.label_553:
	mov	eax, 1
	test	cl, cl
	je	.label_552
.label_554:
	xor	eax, eax
.label_552:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406a00

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
	mov	r12d, 0x7ff00000
	nop	word ptr [rax + rax]
.label_556:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_555
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_556
	cmp	eax, 0x16
	sete	cl
	cmp	rbx, 0x7ff00000
	seta	dl
	and	dl, cl
	mov	rcx, rbx
	cmovne	rcx, r12
	test	dl, dl
	cmovne	rbp, r13
	cmp	rbx, 0x7ff00001
	jb	.label_555
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_556
.label_555:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a90

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
	mov	r12d, 0x7ff00000
	nop	word ptr [rax + rax]
.label_558:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	write
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_557
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_558
	cmp	eax, 0x16
	sete	cl
	cmp	rbx, 0x7ff00000
	seta	dl
	and	dl, cl
	mov	rcx, rbx
	cmovne	rcx, r12
	test	dl, dl
	cmovne	rbp, r13
	cmp	rbx, 0x7ff00001
	jb	.label_557
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_558
.label_557:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b20

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	ebx, 2
	ja	.label_559
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_560
.label_559:
	mov	eax, ebx
.label_560:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b70

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
	je	.label_572
	mov	edx, OFFSET FLAT:label_567
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_574
.label_572:
	mov	edx, OFFSET FLAT:label_575
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_574:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_579
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
	mov	esi, OFFSET FLAT:label_576
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_562
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_564]]
.label_859:
	add	rsp, 8
	jmp	.label_561
.label_562:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_571
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
	jmp	.label_561
.label_860:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_577
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
.label_861:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_563
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
.label_862:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_569
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
.label_863:
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
	jmp	.label_561
.label_864:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_568
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
	jmp	.label_561
.label_865:
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
	jmp	.label_561
.label_866:
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
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_561
.label_868:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_573
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
	jmp	.label_561
.label_867:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_578
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
.label_561:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ed0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_580:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_580
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f00

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_582:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_581
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_583
	nop	dword ptr [rax]
.label_581:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_583:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_584
	inc	r9
	cmp	r9, 0xa
	jb	.label_582
.label_584:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406f60

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_585
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_585:
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
	#Procedure 0x406ff0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_586
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_587
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_589
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_25
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_588
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407070

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_590
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_590:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070a0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
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
	#Procedure 0x4070c0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_593
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_593:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070f0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_594
	test	rbx, rbx
	jne	.label_594
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_594:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_596
	test	rax, rax
	je	.label_595
.label_596:
	pop	rbx
	ret	
.label_595:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x407120

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_597
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_600
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_598
.label_597:
	test	rcx, rcx
	jne	.label_601
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_601:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_599
.label_598:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_600:
	call	xalloc_die
.label_599:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4071a0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071b0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071c0
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
	.align	16
	#Procedure 0x4071f0

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_602
	call	rpl_calloc
	test	rax, rax
	je	.label_602
	pop	rcx
	ret	
.label_602:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407220

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
	.align	16
	#Procedure 0x407250

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
	.align	16
	#Procedure 0x407270

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_603
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4072a0
	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:

	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4072b0

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	jmp	set_binary_mode
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4072c0

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
	mov	r12, rdx
	mov	eax, esi
	mov	r13, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	cmp	eax, 3
	je	.label_605
	cmp	eax, 1
	je	.label_607
	test	eax, eax
	jne	.label_604
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jb	.label_608
	cmp	rbx, r15
	jbe	.label_609
.label_608:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_606
	mov	dword ptr [rax], 0x4b
	jmp	.label_604
.label_605:
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_604
.label_607:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_604
.label_606:
	mov	dword ptr [rax], 0x22
.label_604:
	mov	eax, dword ptr [rsp + 0x40]
	test	eax, eax
	mov	ebp, 1
	cmovne	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	cmp	ebx, 0x16
	cmove	ebx, eax
	mov	rdi, r13
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	call	error
.label_609:
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
	#Procedure 0x407390

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
	.section	.text
	.align	16
	#Procedure 0x4073c0

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
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_618
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_613:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_613
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_612
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_619
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_624
	cmp	eax, 0x22
	jne	.label_612
	mov	r12d, 1
.label_624:
	test	rbp, rbp
	jne	.label_627
	jmp	.label_616
.label_619:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_612
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_612
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_612
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_627:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_616
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_617
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_623
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_623
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_610
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_614
	cmp	ecx, 0x44
	je	.label_614
	cmp	ecx, 0x69
	jne	.label_610
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_610
.label_614:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_610
.label_623:
	mov	rsi, r14
.label_610:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_617
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_625]]
.label_784:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_611
.label_617:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_626
.label_785:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_611
.label_786:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_611
.label_788:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_611
.label_782:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_615
.label_783:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_611
.label_787:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_611
.label_789:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_611
.label_790:
	lea	rdi, [rsp]
	mov	edx, 7
.label_611:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_615:
	mov	rsi, r14
.label_792:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_616:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_626:
	mov	r15d, r12d
.label_612:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_791:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_615
.label_793:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_615
.label_618:
	mov	edi, OFFSET FLAT:label_620
	mov	esi, OFFSET FLAT:label_621
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_622
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407670

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	cmp	rax, rdx
	cmovb	rcx, rsi
	sbb	eax, eax
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4076a0

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebp, ebp
	test	ebx, ebx
	je	.label_628
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_629:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_629
.label_628:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4076e0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_630
	test	rsi, rsi
	mov	ecx, 1
	je	.label_631
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_631
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_630:
	mov	ecx, 1
.label_631:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407730

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_632
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_634
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_632
.label_634:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_632
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_633
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_633:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_632:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4077b0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_635
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_635
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_635:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4077e0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_636
	ret	
.label_636:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407800

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
	jne	.label_637
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_637
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_638
.label_637:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_638:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_639
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_639:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407870

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
	je	.label_640
	cmp	r15, -2
	jb	.label_640
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_640
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_640:
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
	#Procedure 0x4078d0
	.globl str2sig
	.type str2sig, @function
str2sig:

	push	rbx
	mov	rbx, rsi
	call	str2signum
	mov	dword ptr [rbx], eax
	sar	eax, 0x1f
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4078e0

	.globl str2signum
	.type str2signum, @function
str2signum:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdi
	movsx	eax, byte ptr [r15]
	add	eax, -0x30
	cmp	eax, 0xa
	jae	.label_646
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	cmp	rax, 0x40
	jg	.label_645
	mov	rcx, qword ptr [rsp]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_643
	jmp	.label_645
.label_646:
	xor	ebx, ebx
	mov	ebp, OFFSET FLAT:label_648
	nop	dword ptr [rax + rax]
.label_642:
	mov	rdi, rbp
	mov	rsi, r15
	call	strcmp
	test	eax, eax
	je	.label_651
	inc	rbx
	add	rbp, 0xc
	cmp	rbx, 0x22
	jbe	.label_642
	call	__libc_current_sigrtmin
	mov	ebp, eax
	call	__libc_current_sigrtmax
	mov	r14d, eax
	test	ebp, ebp
	jle	.label_644
	mov	esi, OFFSET FLAT:label_647
	mov	edx, 5
	mov	rdi, r15
	call	strncmp
	test	eax, eax
	je	.label_650
.label_644:
	test	r14d, r14d
	jle	.label_645
	mov	esi, OFFSET FLAT:label_652
	mov	edx, 5
	mov	rdi, r15
	call	strncmp
	test	eax, eax
	jne	.label_645
	add	r15, 5
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	jne	.label_645
	sub	ebp, r14d
	movsxd	rcx, ebp
	cmp	rcx, rax
	jg	.label_645
	test	rax, rax
	jg	.label_645
	mov	ecx, r14d
	jmp	.label_641
.label_651:
	mov	eax, dword ptr [rbp - 4]
	jmp	.label_643
.label_650:
	add	r15, 5
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	test	rax, rax
	js	.label_645
	mov	rcx, qword ptr [rsp]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	jne	.label_645
	sub	r14d, ebp
	movsxd	rcx, r14d
	cmp	rax, rcx
	jle	.label_649
.label_645:
	mov	eax, 0xffffffff
.label_643:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_649:
	mov	ecx, ebp
.label_641:
	add	rax, rcx
	jmp	.label_643
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a20

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebp, edi
	xor	eax, eax
	mov	esi, OFFSET FLAT:label_648
	nop	word ptr cs:[rax + rax]
.label_654:
	cmp	dword ptr [rsi - 4], ebp
	je	.label_653
	inc	eax
	add	rsi, 0xc
	cmp	eax, 0x22
	jbe	.label_654
	call	__libc_current_sigrtmin
	mov	r15d, eax
	call	__libc_current_sigrtmax
	cmp	r15d, ebp
	mov	ebx, 0xffffffff
	jg	.label_655
	cmp	eax, ebp
	jl	.label_655
	mov	ecx, eax
	sub	ecx, r15d
	mov	edx, ecx
	shr	edx, 0x1f
	add	edx, ecx
	sar	edx, 1
	add	edx, r15d
	cmp	edx, ebp
	jge	.label_656
	mov	word ptr [r14 + 4], 0x58
	mov	dword ptr [r14], 0x414d5452
	mov	r15d, eax
	jmp	.label_658
.label_653:
	mov	rdi, r14
	call	strcpy
	xor	ebx, ebx
	jmp	.label_655
.label_656:
	mov	word ptr [r14 + 4], 0x4e
	mov	dword ptr [r14], 0x494d5452
.label_658:
	xor	ebx, ebx
	sub	ebp, r15d
	je	.label_655
	add	r14, 5
	xor	ebx, ebx
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_657
	xor	eax, eax
	mov	rdi, r14
	mov	r8d, ebp
	call	__sprintf_chk
.label_655:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407af0
	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:

	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b00
	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:

	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b10

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b20
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_659
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_659
.label_660:
	ret	
.label_659:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_660
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b50
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_661
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_661:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407b70
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b80
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
	.align	16
	#Procedure 0x407b90
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_662
.label_663:
	ret	
.label_662:
	cmp	edi, 0x7f
	je	.label_663
	xor	eax, eax
	jmp	.label_663
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407bb0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407bc0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407bd0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407be0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407bf0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_664
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_665]]
.label_666:
	ret	
.label_664:
	xor	eax, eax
	jmp	.label_666
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c10
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_667
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_667:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c30

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c40
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_668
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_668:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407c60
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
	.align	16
	#Procedure 0x407c70
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
	.align	16
	#Procedure 0x407c80

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
	je	.label_669
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_670
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_670
.label_669:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_670
	test	cl, cl
	jne	.label_670
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_670:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407cf0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_672
	cmp	byte ptr [rax], 0x43
	jne	.label_674
	cmp	byte ptr [rax + 1], 0
	je	.label_671
.label_674:
	mov	esi, OFFSET FLAT:label_673
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_672
.label_671:
	xor	ebx, ebx
.label_672:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d30

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_30
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_675
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d60

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	16
	#Procedure 0x407d70

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_682
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_682:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_676
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_686
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_684
	test	esi, esi
	jne	.label_676
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_687
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_679
.label_676:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_677
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_684
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_689
.label_686:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_684:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_680
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_683
.label_680:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_683:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_689:
	cmp	eax, 6
	jne	.label_677
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_678
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_681
.label_677:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_685
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_688
.label_687:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_679:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_678:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_681:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_685:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_688:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f30

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407f40

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_690
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_692
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_692
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_693
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_694
.label_692:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_694
.label_690:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_694:
	test	ebx, ebx
	js	.label_693
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_693
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_691
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_693
.label_691:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_693:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408010

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
	nop	dword ptr [rax]
	.section .text
	.align	16
	#Procedure 0x4080e0

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
