	.section	.text
	.align	32
	#Procedure 0x401ce0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_7
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
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	mov	rbx,  qword ptr [word ptr [rip + stdout]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	esi, 1
	mov	ecx, 2
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
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
	call	emit_size_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_7:
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401e40

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e70

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ea0

	.globl emit_size_note
	.type emit_size_note, @function
emit_size_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ed0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.47
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.8
	call	strcmp
	test	eax, eax
	je	.label_9
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_10
.label_9:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.8
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
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
	je	.label_8
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.8
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.8
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.61
	mov	ecx, OFFSET FLAT:.str_0
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
	#Procedure 0x401ff0

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
	mov	qword ptr [rsp + 0xb0], rbp
	mov	dword ptr [rsp + 0xbc], edi
	call	getpagesize
	movsxd	rbx, eax
	mov	qword ptr [rsp + 0xa0], rbx
	mov	qword ptr [rsp + 0x160], 0
	mov	qword ptr [rsp + 0x158], 0
	mov	rdi, qword ptr [rbp]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.10
	mov	esi, OFFSET FLAT:.str.11
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.10
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	edi, OFFSET FLAT:.str.12
	call	bad_cast
	mov	qword ptr [word ptr [rip + infile]],  rax
	mov	edi, OFFSET FLAT:.str.13
	call	bad_cast
	mov	qword ptr [word ptr [rip + outbase]],  rax
	not	rbx
	mov	qword ptr [rsp + 0x98], rbx
	xor	eax, eax
	mov	qword ptr [rsp + 0xa8], rax
	movabs	r13, 0x7fffffffffffffff
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_20
	nop	
.label_24:
	mov	qword ptr [rsp + 0x158], rcx
	mov	ebx, 4
	mov	eax, ebp
	mov	qword ptr [rsp + 0xa8], rax
.label_20:
	mov	ebp,  dword ptr [dword ptr [rip + optind]]
	test	ebp, ebp
	mov	eax, 1
	cmove	ebp, eax
	mov	edx, OFFSET FLAT:.str.14
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, dword ptr [rsp + 0xbc]
	mov	rsi, qword ptr [rsp + 0xb0]
	call	getopt_long
	mov	r15d, eax
	cmp	r15d, 0x42
	jle	.label_42
	lea	eax, [r15 - 0x74]
	cmp	eax, 0xf
	jbe	.label_44
	lea	eax, [r15 - 0x61]
	cmp	eax, 0xd
	ja	.label_49
	jmp	qword ptr [word ptr [+ (rax * 8) + label_50]]
.label_694:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, rbp
	movabs	rdx, 0x1fffffffffffffff
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [word ptr [rip + suffix_length]],  rax
	jmp	.label_20
	nop	word ptr cs:[rax + rax]
.label_42:
	cmp	r15d, 0x2f
	jle	.label_56
	lea	eax, [r15 - 0x30]
	cmp	eax, 0xa
	jae	.label_47
	cmp	ebx, 4
	je	.label_58
	test	ebx, ebx
	jne	.label_11
	mov	qword ptr [rsp + 0x158], 0
.label_58:
	mov	rax, qword ptr [rsp + 0xa8]
	test	eax, eax
	je	.label_62
	cmp	eax, ebp
	je	.label_62
	mov	qword ptr [rsp + 0x158], 0
	xor	eax, eax
	jmp	.label_63
	nop	dword ptr [rax + rax]
.label_44:
	jmp	qword ptr [word ptr [+ (rax * 8) + label_66]]
.label_703:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	cl, byte ptr [rax]
	test	cl, cl
	je	.label_68
	mov	dl, byte ptr [rax + 1]
	test	dl, dl
	je	.label_71
	movzx	ecx, cl
	cmp	ecx, 0x5c
	jne	.label_14
	movzx	ecx, dl
	cmp	ecx, 0x30
	jne	.label_14
	cmp	byte ptr [rax + 2], 0
	jne	.label_14
	xor	ecx, ecx
.label_71:
	mov	edx,  dword ptr [dword ptr [rip + eolchar]]
	test	edx, edx
	movsx	eax, cl
	js	.label_15
	cmp	eax, edx
	jne	.label_18
.label_15:
	mov	dword ptr [dword ptr [rip + eolchar]],  eax
	jmp	.label_20
	nop	word ptr cs:[rax + rax]
.label_62:
	mov	rax, qword ptr [rsp + 0x158]
	movabs	rcx, 0x1999999999999999
	cmp	rax, rcx
	ja	.label_22
.label_63:
	lea	rcx, [rax + rax*4]
	movsxd	rdx, r15d
	lea	rcx, [rdx + rcx*2 - 0x30]
	cmp	rcx, rax
	jae	.label_24
	jmp	.label_22
.label_696:
	cmp	r15d, 0x64
	mov	ebp, OFFSET FLAT:.str.29
	mov	eax, OFFSET FLAT:.str.28
	cmove	rbp, rax
	mov	qword ptr [word ptr [rip + suffix_alphabet]],  rbp
	mov	r12,  qword ptr [word ptr [rip + optarg]]
	test	r12, r12
	je	.label_20
	mov	rdi, r12
	call	strlen
	mov	qword ptr [rsp + 0x90], rax
	mov	rdi, r12
	mov	rsi, rbp
	call	strspn
	cmp	qword ptr [rsp + 0x90], rax
	jne	.label_33
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movzx	ecx, byte ptr [rax]
	jmp	.label_35
	nop	word ptr cs:[rax + rax]
.label_19:
	lea	rax, [rcx + 1]
	mov	qword ptr [word ptr [rip + optarg]],  rax
	movzx	ecx, byte ptr [rcx + 1]
.label_35:
	cmp	ecx, 0x30
	jne	.label_40
	cmp	byte ptr [rax + 1], 0
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	jne	.label_19
	jmp	.label_26
.label_49:
	cmp	r15d, 0x43
	jne	.label_47
	test	ebx, ebx
	jne	.label_11
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rdx, r13
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x158], rax
	mov	ebx, 2
	jmp	.label_20
.label_704:
	mov	byte ptr [byte ptr [rip + unbuffered]],  1
	jmp	.label_20
.label_705:
	mov	byte ptr [byte ptr [rip + verbose]],  1
	jmp	.label_20
.label_706:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + filter_command]],  rax
	jmp	.label_20
.label_707:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, rbp
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r8, rax
	call	xdectoumax
	mov	r14, rax
	jmp	.label_20
.label_708:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	rdi, rbp
	call	last_component
	cmp	rax, rbp
	jne	.label_69
	mov	qword ptr [word ptr [rip + additional_suffix]],  rbp
	jmp	.label_20
.label_695:
	test	ebx, ebx
	jne	.label_11
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rdx, r13
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x158], rax
	mov	ebx, 1
	jmp	.label_20
.label_697:
	mov	byte ptr [byte ptr [rip + elide_empty_files]],  1
	jmp	.label_20
.label_698:
	test	ebx, ebx
	jne	.label_11
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x158], rax
	mov	ebx, 3
	jmp	.label_20
.label_699:
	test	ebx, ebx
	jne	.label_11
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	movsx	edi, byte ptr [rbp]
	call	to_uchar
	movzx	r15d, al
	call	__ctype_b_loc
	mov	rbx, rax
	mov	rax, qword ptr [rbx]
	test	byte ptr [rax + r15*2 + 1], 0x20
	je	.label_34
	inc	rbp
	nop	dword ptr [rax]
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
.label_34:
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 2
	mov	rdi, rbp
	call	strncmp
	test	eax, eax
	je	.label_45
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 2
	mov	rdi, rbp
	call	strncmp
	mov	ebx, 5
	test	eax, eax
	jne	.label_21
	add	rbp, 2
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	mov	ebx, 6
	jmp	.label_21
.label_40:
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
.label_26:
	mov	qword ptr [word ptr [rip + numeric_suffix_start]],  rcx
	jmp	.label_20
.label_45:
	add	rbp, 2
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	mov	ebx, 7
.label_21:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	esi, 0x2f
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	je	.label_55
	lea	rdi, [rsp + 0x160]
	lea	rsi, [rsp + 0x158]
	mov	rdx, rax
	call	parse_chunk
	jmp	.label_20
.label_55:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x158], rax
	jmp	.label_20
.label_56:
	cmp	r15d, -1
	jne	.label_65
	cmp	qword ptr [rsp + 0x160], 0
	je	.label_67
	mov	rax,  qword ptr [word ptr [rip + filter_command]]
	test	rax, rax
	jne	.label_70
.label_67:
	test	ebx, ebx
	je	.label_12
	cmp	qword ptr [rsp + 0x158], 0
	jne	.label_13
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:.str.38
	call	quote
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	mov	edi, 1
	call	usage
.label_12:
	mov	qword ptr [rsp + 0x158], 0x3e8
	mov	ebx, 3
.label_13:
	cmp	dword ptr [dword ptr [rip + eolchar]],  0
	jns	.label_23
	mov	dword ptr [dword ptr [rip + eolchar]],  0xa
.label_23:
	mov	rdi, qword ptr [rsp + 0x158]
	mov	esi, ebx
	call	set_suffix_length
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, dword ptr [rsp + 0xbc]
	jge	.label_27
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [word ptr [rip + infile]],  rax
.label_27:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, dword ptr [rsp + 0xbc]
	jge	.label_31
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [word ptr [rip + outbase]],  rax
.label_31:
	mov	eax, dword ptr [rsp + 0xbc]
	cmp	dword ptr [dword ptr [rip + optind]],  eax
	jl	.label_36
	mov	rdi,  qword ptr [word ptr [rip + numeric_suffix_start]]
	test	rdi, rdi
	je	.label_38
	call	strlen
	cmp	rax,  qword ptr [word ptr [rip + suffix_length]]
	ja	.label_41
.label_38:
	mov	rax,  qword ptr [word ptr [rip + infile]]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_43
	cmp	byte ptr [rax + 1], 0
	je	.label_48
.label_43:
	mov	rsi,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	xor	edx, edx
	xor	ecx, ecx
	call	fd_reopen
	test	eax, eax
	js	.label_52
.label_48:
	xor	edi, edi
	mov	esi, OFFSET FLAT:in_stat_buf
	call	__fstat
	test	eax, eax
	jne	.label_46
	test	r14, r14
	jne	.label_54
	mov	ecx, 0x12
	mov	esi, OFFSET FLAT:in_stat_buf
	mov	rdi, rsp
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	call	io_blksize
	mov	r14, rax
.label_54:
	mov	rbp, qword ptr [rsp + 0xa0]
	lea	rdi, [r14 + rbp]
	call	xmalloc
	mov	rdi, rax
	mov	rsi, rbp
	call	ptr_align
	mov	r15, rax
	lea	eax, [rbx - 5]
	mov	rbp, -1
	cmp	eax, 1
	ja	.label_57
	mov	rdi, r15
	mov	rsi, r14
	call	input_file_size
	test	rax, rax
	js	.label_60
	mov	r13, qword ptr [rsp + 0x158]
	test	r13, r13
	js	.label_61
	cmp	rax, r14
	mov	rbp, r14
	cmovb	rbp, rax
	cmp	rax, r13
	cmova	r13, rax
.label_57:
	cmp	qword ptr [word ptr [rip + filter_command]],  0
	je	.label_64
	mov	edi, OFFSET FLAT:newblocked
	call	sigemptyset
	lea	rdx, [rsp + 0xc0]
	mov	edi, 0xd
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0xc0], 1
	je	.label_72
	mov	edi, OFFSET FLAT:newblocked
	mov	esi, 0xd
	call	sigaddset
.label_72:
	xor	edi, edi
	mov	esi, OFFSET FLAT:newblocked
	mov	edx, OFFSET FLAT:oldblocked
	call	sigprocmask
.label_64:
	dec	ebx
	cmp	ebx, 6
	ja	.label_16
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_17]]
.label_720:
	mov	rdi, qword ptr [rsp + 0x158]
	mov	rsi, r15
	mov	rdx, r14
	call	lines_split
	jmp	.label_30
.label_718:
	mov	rdi, qword ptr [rsp + 0x158]
	mov	rcx, -1
	xor	r8d, r8d
	mov	rsi, r15
	mov	rdx, r14
	call	bytes_split
	jmp	.label_30
.label_719:
	mov	rdi, qword ptr [rsp + 0x158]
	mov	rsi, r15
	mov	rdx, r14
	call	line_bytes_split
	jmp	.label_30
.label_721:
	mov	rdi, qword ptr [rsp + 0x160]
	mov	rbx, qword ptr [rsp + 0x158]
	test	rdi, rdi
	je	.label_28
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	mov	r8, rbp
	mov	r9, r13
	call	bytes_chunk_extract
	jmp	.label_30
.label_722:
	mov	rdi, qword ptr [rsp + 0x160]
	mov	rsi, qword ptr [rsp + 0x158]
	mov	rdx, r15
	mov	rcx, r14
	mov	r8, rbp
	mov	r9, r13
	call	lines_chunk_split
	jmp	.label_30
.label_723:
	mov	rdi, qword ptr [rsp + 0x160]
	mov	rsi, qword ptr [rsp + 0x158]
	mov	rdx, r15
	mov	rcx, r14
	call	lines_rr
	jmp	.label_30
.label_28:
	xor	edx, edx
	mov	rax, r13
	div	rbx
	mov	rdi, rax
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	bytes_split
.label_30:
	xor	edi, edi
	call	close
	test	eax, eax
	jne	.label_46
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
.label_65:
	cmp	r15d, 0xffffff7d
	je	.label_53
	cmp	r15d, 0xffffff7e
	jne	.label_47
	xor	edi, edi
	call	usage
.label_22:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0x158]
	lea	rsi, [rsp + 0xc0]
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	r8d, r15d
	call	error
.label_11:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_0
.label_25:
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
.label_47:
	mov	edi, 1
	call	usage
.label_53:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.34
	mov	r9d, OFFSET FLAT:.str.35
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_46:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_14:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
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
.label_70:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	jmp	.label_25
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rdi, qword ptr [rcx + rax*8]
	jmp	.label_29
.label_16:
	call	abort
.label_68:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	jmp	.label_32
.label_18:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
.label_32:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_69:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	jmp	.label_37
.label_33:
	xor	edi, edi
	cmp	r15d, 0x64
	jne	.label_39
	mov	esi, OFFSET FLAT:.str.30
	jmp	.label_37
.label_52:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + infile]]
	mov	edi, 4
	call	quotearg_style
	jmp	.label_51
.label_41:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	jmp	.label_25
.label_60:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
.label_51:
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_61:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0x158]
	lea	rsi, [rsp + 0xc0]
	call	umaxtostr
	mov	rdi, rax
	call	quote
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 0x4b
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_39:
	mov	esi, OFFSET FLAT:.str.31
.label_37:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
.label_29:
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
	nop	
	.section	.text
	.align	32
	#Procedure 0x402c10

	.globl bad_cast
	.type bad_cast, @function
bad_cast:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c20

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	movzx	eax, dil
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c30

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
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, r12
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [r15], rax
	cmp	qword ptr [word ptr [rip + optarg]],  rbx
	je	.label_73
	mov	byte ptr [rbx], 0
	mov	r12,  qword ptr [word ptr [rip + optarg]]
	mov	rbx, qword ptr [r15]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.78
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, r12
	mov	rdx, rbx
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [r14], rax
.label_73:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402cd0

	.globl set_suffix_length
	.type set_suffix_length, @function
set_suffix_length:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	cmp	qword ptr [word ptr [rip + numeric_suffix_start]],  0
	je	.label_76
	mov	byte ptr [byte ptr [rip + suffix_auto]],  1
.label_76:
	add	esi, -5
	xor	ebx, ebx
	cmp	esi, 2
	ja	.label_75
	cmp	qword ptr [word ptr [rip + numeric_suffix_start]],  0
	je	.label_79
	mov	rdi,  qword ptr [word ptr [rip + numeric_suffix_start]]
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	call	xstrtoumax
	test	eax, eax
	jne	.label_79
	mov	rax, qword ptr [rsp]
	mov	rcx, r14
	not	rcx
	xor	edx, edx
	cmp	rax, r14
	mov	esi, 0
	cmovb	rsi, rax
	cmp	rax, rcx
	cmova	rsi, rdx
	add	r14, rsi
.label_79:
	mov	rdi,  qword ptr [word ptr [rip + suffix_alphabet]]
	call	strlen
	mov	rcx, rax
	xor	edx, edx
	mov	rax, r14
	div	rcx
	mov	rsi, rdx
	mov	rbx, -1
	nop	word ptr cs:[rax + rax]
.label_74:
	xor	edx, edx
	mov	rax, r14
	div	rcx
	inc	rbx
	mov	r14, rax
	test	r14, r14
	jne	.label_74
	mov	byte ptr [byte ptr [rip + suffix_auto]],  1
	cmp	rsi, 1
	sbb	rbx, -1
.label_75:
	mov	rax,  qword ptr [word ptr [rip + suffix_length]]
	test	rax, rax
	je	.label_77
	cmp	rax, rbx
	jb	.label_80
	mov	byte ptr [byte ptr [rip + suffix_auto]],  1
	jmp	.label_78
.label_77:
	cmp	rbx, 2
	mov	eax, 2
	cmovae	rax, rbx
	mov	qword ptr [word ptr [rip + suffix_length]],  rax
.label_78:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_80:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	.section	.text
	.align	32
	#Procedure 0x402df0

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
	jl	.label_81
	or	al, dl
	jne	.label_81
	movabs	rax, 0x2000000000000001
	cmp	rcx, rax
	mov	edx, 0x200
	mov	eax, 0x200
	cmovb	rax, rcx
	test	rcx, rcx
	cmovle	rax, rdx
	ret	
.label_81:
	mov	eax, 0x20000
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e50

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
	.align	32
	#Procedure 0x402e70

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
	xor	ebx, ebx
	xor	edi, edi
	xor	esi, esi
	mov	edx, 1
	call	lseek
	mov	r14, rax
	test	r14, r14
	js	.label_87
	nop	word ptr [rax + rax]
.label_83:
	lea	rsi, [r12 + rbx]
	mov	rdx, r15
	sub	rdx, rbx
	xor	edi, edi
	call	safe_read
	cmp	rax, -1
	je	.label_90
	test	rax, rax
	je	.label_84
	add	rbx, rax
	cmp	rbx, r15
	jb	.label_83
	mov	r15,  qword ptr [word ptr [rip + label_85]]
	test	r15, r15
	je	.label_86
	add	r14, rbx
	call	usable_st_size
	cmp	r14, r15
	jg	.label_82
	xor	al, 1
	je	.label_89
.label_82:
	xor	edi, edi
	xor	esi, esi
	mov	edx, 2
	call	lseek
	mov	r15, rax
	test	r15, r15
	js	.label_91
	cmp	r15, r14
	je	.label_89
	xor	edi, edi
	xor	edx, edx
	mov	rsi, r14
	call	lseek
	test	rax, rax
	js	.label_88
	cmp	r15, r14
	cmovl	r15, r14
.label_89:
	sub	r15, r14
	add	rbx, r15
	movabs	rax, 0x7fffffffffffffff
	cmp	rbx, rax
	jne	.label_84
.label_86:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	mov	rbx, -1
	jmp	.label_84
.label_87:
	call	__errno_location
	mov	rbx, -1
	cmp	dword ptr [rax], 0x1d
	jne	.label_84
	mov	dword ptr [rax], 0
	jmp	.label_84
.label_90:
	mov	rbx, -1
	jmp	.label_84
.label_91:
	mov	rbx, -1
	jmp	.label_84
.label_88:
	mov	rbx, -1
.label_84:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f90

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
	mov	qword ptr [rsp + 8], rdx
	mov	r14, rsi
	mov	qword ptr [rsp], r14
	mov	r13, rdi
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_92:
	xor	edi, edi
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 8]
	call	safe_read
	cmp	rax, -1
	je	.label_95
	lea	rbx, [r14 + rax]
	mov	cl,  byte ptr [byte ptr [rip + eolchar]]
	mov	byte ptr [r14 + rax], cl
	lea	rbp, [r14 + rax + 1]
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_97
	nop	word ptr cs:[rax + rax]
.label_94:
	mov	eax, dword ptr [rsp + 0x1c]
	and	al, 1
	mov	rdx, r14
	mov	rsi, qword ptr [rsp + 0x20]
	sub	rdx, rsi
	movzx	edi, al
	call	cwrite
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
	xor	r12d, r12d
.label_97:
	mov	qword ptr [rsp + 0x20], r14
	mov	r15d,  dword ptr [dword ptr [rip + eolchar]]
	nop	
.label_96:
	mov	rdx, rbp
	sub	rdx, r14
	mov	rdi, r14
	mov	esi, r15d
	call	memchr
	mov	r14, rax
	cmp	r14, rbx
	je	.label_93
	inc	r14
	inc	r12
	cmp	r12, r13
	jb	.label_96
	jmp	.label_94
	nop	word ptr cs:[rax + rax]
.label_93:
	mov	rsi, qword ptr [rsp + 0x20]
	sub	rbx, rsi
	je	.label_98
	mov	eax, dword ptr [rsp + 0x1c]
	and	al, 1
	movzx	edi, al
	mov	rdx, rbx
	call	cwrite
	mov	dword ptr [rsp + 0x1c], 0
.label_98:
	mov	r14, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	jne	.label_92
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_95:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030e0

	.globl bytes_split
	.type bytes_split, @function
bytes_split:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x10], r8
	mov	r14, rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x30], rdi
	lea	rsi, [r8 - 1]
	mov	bpl, 1
	xor	r12d, r12d
	mov	r13b, 1
	mov	rcx, rdi
.label_113:
	cmp	r14, -1
	je	.label_114
	cmp	r14, qword ptr [rsp + 0x18]
	setb	byte ptr [rsp + 0x2f]
	jmp	.label_107
	nop	word ptr [rax + rax]
.label_114:
	test	r13b, 1
	jne	.label_110
	mov	r15, rsi
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rcx
	mov	rbx, rcx
	call	lseek
	cmp	rax, -1
	je	.label_101
	mov	bpl, 1
.label_101:
	cmovne	rbx, qword ptr [rsp + 0x30]
	jmp	.label_104
.label_110:
	mov	rbx, rcx
	mov	r15, rsi
.label_104:
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	call	safe_read
	mov	r14, rax
	cmp	r14, -1
	je	.label_111
	test	r14, r14
	sete	byte ptr [rsp + 0x2f]
	mov	rsi, r15
	mov	rcx, rbx
.label_107:
	cmp	r14, rcx
	mov	r15, qword ptr [rsp + 0x20]
	jb	.label_103
	nop	dword ptr [rax + rax]
.label_109:
	mov	al, r13b
	or	al, bpl
	and	bpl, 1
	test	al, 1
	je	.label_99
	movzx	edi, bpl
	mov	r13, r12
	mov	r12, rsi
	mov	rsi, r15
	mov	rdx, rcx
	mov	rbx, rbp
	mov	rbp, rcx
	call	cwrite
	mov	rcx, rbp
	mov	rbp, rbx
	mov	rsi, r12
	mov	r12, r13
	mov	r13b, al
.label_99:
	movzx	eax, bpl
	add	r12, rax
	cmp	rsi, r12
	jae	.label_108
	mov	al, r13b
	and	al, 1
	je	.label_106
.label_108:
	cmp	rsi, r12
	setae	bpl
	add	r15, rcx
	sub	r14, rcx
	mov	rax, qword ptr [rsp + 0x30]
	cmp	r14, rax
	mov	rcx, rax
	jae	.label_109
	mov	rcx, qword ptr [rsp + 0x30]
.label_103:
	mov	al, 1
	test	r14, r14
	je	.label_105
	mov	qword ptr [rsp + 8], rcx
	mov	al, r13b
	or	al, bpl
	and	bpl, 1
	test	al, 1
	je	.label_102
	movzx	edi, bpl
	mov	rbx, r12
	mov	r12, rsi
	mov	rsi, r15
	mov	rdx, r14
	call	cwrite
	mov	rsi, r12
	mov	r12, rbx
	mov	r13b, al
.label_102:
	movzx	eax, bpl
	add	r12, rax
	xor	ebp, ebp
	mov	bl, r13b
	and	bl, 1
	mov	rdx, r14
	cmove	rdx, rbp
	cmp	r12, qword ptr [rsp + 0x10]
	setne	al
	cmovne	rdx, r14
	mov	rcx, qword ptr [rsp + 8]
	sub	rcx, rdx
	or	al, bl
.label_105:
	test	al, 1
	je	.label_106
	xor	byte ptr [rsp + 0x2f], 1
	mov	r14, -1
	jne	.label_113
.label_106:
	mov	rbx, qword ptr [rsp + 0x10]
	cmp	r12, rbx
	jae	.label_100
	sub	rbx, r12
	nop	word ptr cs:[rax + rax]
.label_112:
	mov	edi, 1
	xor	esi, esi
	xor	edx, edx
	call	cwrite
	dec	rbx
	jne	.label_112
.label_100:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_111:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403300

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
	mov	qword ptr [rsp + 0x28], rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x10], r14
	mov	qword ptr [rsp + 0x30], rdi
	mov	rax, rdx
	not	rax
	mov	qword ptr [rsp + 0x20], rax
	xor	esi, esi
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	ebx, ebx
.label_131:
	mov	r12, rsi
	xor	edi, edi
	mov	rsi, r14
	call	safe_read
	test	rax, rax
	je	.label_132
	cmp	rax, -1
	mov	rbp, r14
	mov	rcx, rax
	mov	qword ptr [rsp + 8], rax
	mov	rsi, r12
	jne	.label_128
	jmp	.label_116
.label_124:
	mov	dil, r15b
	mov	r15, qword ptr [rsp + 0x38]
	jmp	.label_137
.label_120:
	mov	dil, r15b
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rbp, r13
	mov	r15, qword ptr [rsp + 0x38]
	jmp	.label_137
	nop	word ptr cs:[rax + rax]
.label_128:
	mov	qword ptr [rsp + 0x58], rsi
	mov	r14, qword ptr [rsp + 0x30]
	sub	r14, rbx
	sub	r14, qword ptr [rsp + 0x60]
	cmp	r14, rcx
	jbe	.label_122
	mov	esi,  dword ptr [dword ptr [rip + eolchar]]
	mov	rdi, rbp
	mov	rdx, rcx
	mov	qword ptr [rsp + 0x40], rdx
	call	memrchr
	mov	r12, rax
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	jmp	.label_123
	nop	dword ptr [rax]
.label_122:
	mov	qword ptr [rsp + 0x40], rcx
	lea	rax, [rbp + r14 - 1]
	mov	qword ptr [rsp + 0x38], rax
	mov	esi,  dword ptr [dword ptr [rip + eolchar]]
	mov	rdi, rbp
	mov	rdx, r14
	call	memrchr
	mov	r12, rax
.label_123:
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_115
	test	rbx, rbx
	je	.label_118
	test	r12, r12
	jne	.label_118
	mov	qword ptr [rsp + 0x50], rbx
	jmp	.label_121
	nop	
.label_115:
	mov	qword ptr [rsp + 0x50], rbx
	jmp	.label_129
	nop	word ptr [rax + rax]
.label_118:
	mov	r13, rbp
	test	rbx, rbx
	sete	al
	movzx	edi, al
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0x60]
	mov	rdx, rbp
	call	cwrite
	add	rbx, rbp
	mov	rsi, qword ptr [rsp + 0x28]
	cmp	rbp, rsi
	jbe	.label_133
	mov	qword ptr [rsp + 0x50], rbx
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rbx, r13
	mov	rbp, rsi
	call	xrealloc
	mov	qword ptr [rsp + 0x48], rax
	mov	qword ptr [rsp + 0x58], rbp
	mov	rbp, rbx
.label_129:
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	jmp	.label_121
.label_133:
	mov	qword ptr [rsp + 0x50], rbx
	mov	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	mov	rbp, r13
	nop	word ptr [rax + rax]
.label_121:
	test	r12, r12
	je	.label_136
	mov	r13, r12
	sub	r13, rbp
	mov	rsi, rbp
	lea	rbp, [r13 + 1]
	mov	rbx, qword ptr [rsp + 0x50]
	test	rbx, rbx
	sete	al
	movzx	edi, al
	mov	rdx, rbp
	call	cwrite
	lea	rbx, [rbx + r13 + 1]
	mov	qword ptr [rsp + 0x50], rbx
	mov	rcx, qword ptr [rsp + 0x40]
	sub	rcx, rbp
	inc	r12
	mov	r15, qword ptr [rsp + 0x38]
	test	r15, r15
	cmove	rbp, r15
	sub	r14, rbp
	mov	dil, 1
	mov	rbp, r12
	jmp	.label_130
	nop	word ptr [rax + rax]
.label_136:
	mov	rcx, qword ptr [rsp + 0x40]
	test	rcx, rcx
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_124
	mov	r13, rbp
	mov	al, r15b
	and	al, 1
	jne	.label_120
	mov	rbx, qword ptr [rsp + 0x50]
	test	rbx, rbx
	sete	al
	mov	rsi, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x18], r15
	mov	r15, rsi
	test	r15, r15
	mov	rbp, rcx
	cmovne	rbp, r14
	movzx	edi, al
	mov	r12, r14
	cmove	r12, r15
	mov	rsi, r13
	mov	rdx, rbp
	call	cwrite
	mov	rcx, qword ptr [rsp + 0x40]
	add	rbx, rbp
	mov	qword ptr [rsp + 0x50], rbx
	sub	rcx, rbp
	add	r13, rbp
	mov	rbp, r13
	sub	r14, r12
	mov	rax, qword ptr [rsp + 0x18]
	mov	dil, al
.label_130:
	mov	rsi, qword ptr [rsp + 0x58]
.label_137:
	test	r15, r15
	mov	rbx, qword ptr [rsp + 0x50]
	je	.label_138
	test	r14, r14
	jne	.label_117
.label_138:
	test	r15, r15
	jne	.label_119
	test	rcx, rcx
	je	.label_119
.label_117:
	mov	r13, rbp
	test	r15, r15
	cmove	r14, rcx
	mov	rax, rsi
	sub	rax, qword ptr [rsp + 0x60]
	cmp	rax, r14
	jae	.label_127
	mov	byte ptr [rsp + 0x40], dil
	mov	rbp, rcx
	cmp	rsi, qword ptr [rsp + 0x20]
	ja	.label_126
	add	rsi, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x58], rsi
	mov	rdi, qword ptr [rsp + 0x48]
	call	xrealloc
	mov	qword ptr [rsp + 0x48], rax
	jmp	.label_134
	nop	word ptr cs:[rax + rax]
.label_127:
	mov	byte ptr [rsp + 0x40], dil
	mov	rbp, rcx
.label_134:
	mov	rax, qword ptr [rsp + 0x48]
	mov	r12, qword ptr [rsp + 0x60]
	lea	rdi, [rax + r12]
	mov	rsi, r13
	mov	rdx, r14
	call	memcpy
	add	r12, r14
	mov	qword ptr [rsp + 0x60], r12
	mov	rcx, rbp
	mov	rbp, r13
	sub	rcx, r14
	add	rbp, r14
	mov	rsi, qword ptr [rsp + 0x58]
	mov	dil, byte ptr [rsp + 0x40]
.label_119:
	xor	eax, eax
	test	r15, r15
	mov	r15d, 0
	jne	.label_125
	mov	r15b, dil
.label_125:
	cmovne	rbx, rax
	test	rcx, rcx
	jne	.label_128
	cmp	qword ptr [rsp + 8], 0
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r14, qword ptr [rsp + 0x10]
	jne	.label_131
.label_132:
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_135
	test	rbx, rbx
	sete	al
	movzx	edi, al
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x60]
	call	cwrite
.label_135:
	mov	rdi, qword ptr [rsp + 0x48]
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_126:
	call	xalloc_die
.label_116:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x4036d0

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
	jae	.label_141
	cmp	rsi, r9
	ja	.label_141
	xor	edx, edx
	mov	rax, r9
	div	rsi
	mov	r12, rax
	imul	r13, r12
	imul	r12, rdi
	cmp	rdi, rsi
	cmove	r12, r9
	cmp	r13, rbx
	jae	.label_146
	lea	rsi, [r15 + r13]
	sub	rbx, r13
	mov	rdi, r15
	mov	rdx, rbx
	call	memmove
	jmp	.label_139
.label_146:
	xor	edi, edi
	mov	edx, 1
	mov	rsi, r13
	call	lseek
	mov	rbx, -1
	test	rax, rax
	jns	.label_139
	jmp	.label_140
	nop	dword ptr [rax]
.label_143:
	add	r13, rbp
	mov	rbx, -1
.label_139:
	cmp	r12, r13
	jle	.label_142
	cmp	rbx, -1
	jne	.label_144
	xor	edi, edi
	mov	rsi, r15
	mov	rdx, r14
	call	safe_read
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_140
.label_144:
	test	rbx, rbx
	je	.label_142
	mov	rbp, r12
	sub	rbp, r13
	cmp	rbx, rbp
	cmovb	rbp, rbx
	mov	edi, 1
	mov	rsi, r15
	mov	rdx, rbp
	call	full_write
	cmp	rax, rbp
	je	.label_143
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	edi, ebx
	call	ignorable
	test	al, al
	jne	.label_143
	xor	edi, edi
	mov	esi, 3
	mov	edx, OFFSET FLAT:.str.12
	jmp	.label_145
.label_142:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_140:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
.label_145:
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_141:
	mov	edi, OFFSET FLAT:.str.102
	mov	esi, OFFSET FLAT:.str.82
	mov	edx, 0x3e0
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.bytes_chunk_extract
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403820

	.globl lines_chunk_split
	.type lines_chunk_split, @function
lines_chunk_split:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	rbx, r9
	mov	qword ptr [rsp + 8], rbx
	mov	r15, r8
	mov	rbp, rcx
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x20], rdx
	mov	r14, rdi
	cmp	r14, rsi
	ja	.label_157
	lea	rax, [rsi - 1]
	cmp	rax, rbx
	jae	.label_157
	xor	edx, edx
	mov	rax, rbx
	div	rsi
	mov	r13d, 1
	xor	ecx, ecx
	cmp	r14, 2
	jb	.label_167
	mov	qword ptr [rsp + 0x60], rsi
	lea	r13, [r14 - 1]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x58], rax
	imul	rcx, r13
	dec	rcx
	mov	rsi, rcx
	sub	rsi, r15
	jae	.label_172
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rsi, [rdi + rcx]
	sub	r15, rcx
	mov	rdx, r15
	mov	r12, rcx
	call	memmove
	mov	rcx, r12
	jmp	.label_158
.label_167:
	mov	qword ptr [rsp + 0x60], rsi
	mov	qword ptr [rsp + 0x58], rax
	lea	r12, [rax - 1]
	jmp	.label_158
.label_172:
	xor	edi, edi
	mov	edx, 1
	mov	r15, rcx
	call	lseek
	mov	rcx, r15
	mov	r15, -1
	test	rax, rax
	mov	r12, rcx
	js	.label_154
.label_158:
	cmp	rcx, rbx
	jge	.label_169
	lea	rax, [rbx - 1]
	mov	qword ptr [rsp + 0x50], rax
	mov	byte ptr [rsp + 0x4f], 1
	xor	edx, edx
.label_147:
	cmp	r15, -1
	jne	.label_175
	mov	qword ptr [rsp + 0x28], rdx
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, rbp
	mov	rbp, rcx
	call	safe_read
	mov	rcx, rbp
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r15, rax
	cmp	r15, -1
	je	.label_154
.label_175:
	test	r15, r15
	je	.label_160
	mov	rbp, rbx
	sub	rbp, rcx
	cmp	r15, rbp
	cmovb	rbp, r15
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	test	rbp, rbp
	je	.label_161
	mov	rax, qword ptr [rsp + 0x20]
	lea	rbx, [rax + rbp]
	mov	qword ptr [rsp + 0x10], rbx
	mov	rdi, rax
	nop	word ptr [rax + rax]
.label_156:
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rbp
	mov	al, byte ptr [rsp + 0x4f]
	mov	byte ptr [rsp + 0x40], al
	mov	r15, rdi
	mov	rax, r12
	sub	rax, rcx
	mov	ecx, 0
	cmovns	rcx, rax
	cmp	rbp, rcx
	cmovb	rcx, rbp
	lea	rdi, [r15 + rcx]
	mov	esi,  dword ptr [dword ptr [rip + eolchar]]
	mov	rdx, rbp
	sub	rdx, rcx
	call	memchr
	mov	rbp, rax
	lea	rdi, [rbp + 1]
	test	rbp, rbp
	setne	byte ptr [rsp + 0x4f]
	cmove	rdi, rbx
	mov	rdx, rdi
	sub	rdx, r15
	cmp	r13, r14
	jne	.label_171
	mov	qword ptr [rsp + 0x40], rdi
	mov	edi, 1
	mov	rsi, r15
	mov	r15, rdx
	call	full_write
	mov	rdi, qword ptr [rsp + 0x40]
	cmp	rax, r15
	mov	rdx, r15
	je	.label_163
	jmp	.label_170
	nop	word ptr cs:[rax + rax]
.label_171:
	test	r14, r14
	jne	.label_163
	mov	al, byte ptr [rsp + 0x40]
	and	al, 1
	mov	qword ptr [rsp + 0x40], rdi
	movzx	edi, al
	mov	rsi, r15
	mov	r15, rdx
	call	cwrite
	mov	rdx, r15
	mov	rdi, qword ptr [rsp + 0x40]
	nop	word ptr cs:[rax + rax]
.label_163:
	mov	rcx, qword ptr [rsp + 0x38]
	add	rcx, rdx
	test	rbp, rbp
	setne	r15b
	cmp	r12, rcx
	jl	.label_173
	test	r15b, r15b
	je	.label_164
.label_173:
	mov	qword ptr [rsp + 0x38], rdx
	mov	al, byte ptr [rsp + 0x4f]
.label_166:
	mov	dword ptr [rsp + 0x1c], eax
	cmp	rdi, rbx
	mov	qword ptr [rsp + 0x40], rdi
	sete	al
	mov	bl, r15b
	xor	bl, 1
	and	bl, al
	inc	r13
.label_159:
	test	bl, bl
	jne	.label_155
	test	r14, r14
	je	.label_174
	cmp	r13, r14
	ja	.label_150
.label_174:
	add	r12, qword ptr [rsp + 0x58]
	cmp	qword ptr [rsp + 0x60], r13
	cmove	r12, qword ptr [rsp + 0x50]
	test	r14, r14
	jne	.label_149
	cmp	r12, rcx
	jge	.label_149
	mov	edi, 1
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rcx
	call	cwrite
	mov	rcx, rbp
	cmp	r12, rcx
	setl	al
	or	al, r15b
	inc	r13
	test	al, 1
	jne	.label_159
	jmp	.label_153
	nop	word ptr cs:[rax + rax]
.label_149:
	cmp	r12, rcx
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x40]
	jge	.label_168
	mov	eax, dword ptr [rsp + 0x1c]
	jmp	.label_162
.label_168:
	xor	eax, eax
.label_162:
	mov	r15b, al
	and	r15b, 1
	cmp	r12, rcx
	jl	.label_166
	test	r15b, r15b
	jne	.label_166
	jmp	.label_152
.label_155:
	dec	r13
	mov	al, 1
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_148
.label_153:
	dec	r13
.label_148:
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x40]
.label_152:
	mov	rdx, qword ptr [rsp + 0x38]
.label_164:
	mov	rbp, qword ptr [rsp + 0x30]
	sub	rbp, rdx
	cmp	rdi, rbx
	jne	.label_156
	nop	word ptr cs:[rax + rax]
.label_161:
	mov	r15, -1
	mov	rbx, qword ptr [rsp + 8]
	cmp	rcx, rbx
	mov	rbp, qword ptr [rsp]
	mov	rdx, qword ptr [rsp + 0x28]
	jl	.label_147
	jmp	.label_160
.label_169:
	xor	edx, edx
.label_160:
	and	dl, 1
	movzx	eax, dl
	test	r14, r14
	jne	.label_150
	lea	rcx, [r13 + rax]
	cmp	rcx, qword ptr [rsp + 0x60]
	ja	.label_150
	lea	rbx, [r13 + rax + 1]
	nop	
.label_151:
	mov	edi, 1
	xor	esi, esi
	xor	edx, edx
	call	cwrite
	test	r14, r14
	jne	.label_150
	cmp	rbx, qword ptr [rsp + 0x60]
	lea	rbx, [rbx + 1]
	jbe	.label_151
.label_150:
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_170:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	jmp	.label_165
.label_157:
	mov	edi, OFFSET FLAT:.str.103
	mov	esi, OFFSET FLAT:.str.82
	mov	edx, 0x362
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.lines_chunk_split
	call	__assert_fail
.label_154:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
.label_165:
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebx
	call	error
	.section	.text
	.align	32
	#Procedure 0x403c10

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
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 0x40], rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x60], rdi
	test	rdi, rdi
	jne	.label_176
	mov	esi, 0x20
	mov	rdi, r14
	call	xnmalloc
	mov	r15, rax
	test	r14, r14
	je	.label_176
	mov	rbp, r15
	add	rbp, 0x18
	mov	rbx, r14
	nop	word ptr [rax + rax]
.label_200:
	call	next_file_name
	mov	rdi,  qword ptr [word ptr [rip + outfile]]
	call	xstrdup
	mov	qword ptr [rbp - 0x18], rax
	mov	dword ptr [rbp - 0x10], 0xffffffff
	mov	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp], 0
	add	rbp, 0x20
	dec	rbx
	jne	.label_200
.label_176:
	mov	qword ptr [rsp + 0x50], r15
	mov	qword ptr [rsp + 0x38], r14
	xor	ebp, ebp
	mov	eax, 1
	mov	qword ptr [rsp + 0x58], rax
	xor	ebx, ebx
	xor	eax, eax
	mov	qword ptr [rsp], rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_179
	nop	dword ptr [rax + rax]
.label_194:
	mov	r12, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x48]
.label_179:
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, r12
	call	safe_read
	mov	r12, rax
	test	r12, r12
	je	.label_192
	cmp	r12, -1
	je	.label_196
	mov	r15, qword ptr [rsp + 0x40]
	add	r12, r15
	jmp	.label_187
	nop	dword ptr [rax]
.label_204:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, qword ptr [rsp + 0x38]
	lea	rax, [rax + 1]
	mov	ecx, 1
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, qword ptr [rsp + 0x48]
.label_187:
	mov	rax, rbp
	mov	r13b, bl
.label_186:
	mov	rbp, rax
.label_189:
	mov	qword ptr [rsp + 0x48], rbp
	shl	rbp, 5
	mov	qword ptr [rsp + 0x18], rbp
	mov	rax, qword ptr [rsp + 0x50]
	lea	rcx, [rax + rbp + 8]
	mov	qword ptr [rsp + 0x28], rcx
	lea	rax, [rax + rbp + 0x10]
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, r15
.label_201:
	mov	bl, r13b
	nop	word ptr [rax + rax]
.label_185:
	cmp	rbp, r12
	je	.label_194
	mov	esi,  dword ptr [dword ptr [rip + eolchar]]
	mov	rdx, r12
	sub	rdx, rbp
	mov	rdi, rbp
	call	memchr
	mov	r14, rax
	lea	r15, [r14 + 1]
	test	r14, r14
	mov	r13, r15
	cmove	r13, r12
	sub	r13, rbp
	mov	rax, qword ptr [rsp + 0x60]
	test	rax, rax
	je	.label_199
	cmp	qword ptr [rsp + 0x58], rax
	jne	.label_177
	movzx	eax,  byte ptr [byte ptr [rip + unbuffered]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_182
	mov	edi, 1
	mov	rsi, rbp
	mov	rdx, r13
	call	full_write
	cmp	rax, r13
	je	.label_177
	jmp	.label_188
	nop	dword ptr [rax + rax]
.label_182:
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, r13
	call	fwrite_unlocked
	cmp	rax, 1
	jne	.label_197
.label_177:
	test	r14, r14
	mov	rbp, r12
	je	.label_185
	jmp	.label_204
	nop	word ptr cs:[rax + rax]
.label_199:
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x38]
	call	ofile_open
	mov	byte ptr [rsp + 0x17], al
	movzx	eax,  byte ptr [byte ptr [rip + unbuffered]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_183
	mov	rax, qword ptr [rsp + 0x28]
	mov	edi, dword ptr [rax]
	mov	rsi, rbp
	mov	rdx, r13
	call	full_write
	cmp	rax, r13
	je	.label_190
	jmp	.label_191
.label_183:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rax]
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, r13
	call	fwrite_unlocked
	cmp	rax, 1
	je	.label_190
.label_191:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	edi, ebp
	call	ignorable
	test	al, al
	je	.label_203
.label_190:
	and	bl, 1
	mov	r13b, byte ptr [rsp + 0x17]
	or	r13b, bl
	call	__errno_location
	mov	rbp, rax
	mov	edi, dword ptr [rbp]
	call	ignorable
	test	al, al
	jne	.label_180
	mov	al, 1
	mov	qword ptr [rsp], rax
.label_180:
	test	r13b, r13b
	mov	rbx, qword ptr [rsp + 0x30]
	je	.label_184
	mov	rdi, qword ptr [rbx]
	call	rpl_fclose
	test	eax, eax
	jne	.label_195
	mov	qword ptr [rbx], 0
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 0xfffffffe
.label_184:
	test	r14, r14
	mov	rbp, r12
	je	.label_201
	mov	rbp, qword ptr [rsp + 0x48]
	inc	rbp
	cmp	rbp, qword ptr [rsp + 0x38]
	jne	.label_189
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
	xor	eax, eax
	mov	rcx, qword ptr [rsp]
	test	cl, 1
	mov	ecx, 0
	mov	qword ptr [rsp], rcx
	jne	.label_186
.label_192:
	cmp	qword ptr [rsp + 0x60], 0
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x50]
	jne	.label_178
	test	r15, r15
	je	.label_178
	mov	rax, qword ptr [rsp + 8]
	test	al, 1
	cmovne	rbp, r15
	movsxd	r14, ebp
	lea	rbp, [r12 + 0x18]
	xor	ebx, ebx
	nop	
.label_202:
	cmp	rbx, r14
	jb	.label_181
	mov	al,  byte ptr [byte ptr [rip + elide_empty_files]]
	and	al, 1
	jne	.label_181
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, r15
	call	ofile_open
.label_181:
	mov	esi, dword ptr [rbp - 0x10]
	test	esi, esi
	js	.label_193
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp]
	call	closeout
.label_193:
	mov	dword ptr [rbp - 0x10], 0xfffffffe
	inc	rbx
	add	rbp, 0x20
	cmp	r15, rbx
	jne	.label_202
.label_178:
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_197:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	clearerr_unlocked
.label_188:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
.label_198:
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_196:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + infile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	jmp	.label_198
.label_195:
	mov	ebp, dword ptr [rbp]
.label_203:
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rax + rcx]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x404020

	.globl closeout
	.type closeout, @function
closeout:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rcx
	mov	r15d, edx
	mov	ebx, esi
	mov	rbp, rdi
	test	rbp, rbp
	je	.label_213
	mov	rdi, rbp
	call	rpl_fclose
	test	eax, eax
	je	.label_213
	call	__errno_location
	mov	r12d, dword ptr [rax]
	mov	edi, r12d
	call	ignorable
	test	al, al
	je	.label_214
.label_213:
	test	ebx, ebx
	js	.label_212
	test	rbp, rbp
	jne	.label_215
	mov	edi, ebx
	call	close
	test	eax, eax
	js	.label_210
.label_215:
	mov	rax,  qword ptr [word ptr [rip + n_open_pipes]]
	test	rax, rax
	je	.label_212
	mov	rdx,  qword ptr [word ptr [rip + open_pipes]]
	mov	rsi,  qword ptr [word ptr [rip + n_open_pipes]]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_209:
	cmp	dword ptr [rdx + rcx*4], ebx
	je	.label_208
	inc	rcx
	cmp	rcx, rsi
	mov	rax, rsi
	jb	.label_209
	jmp	.label_212
.label_208:
	lea	rdx, [rax - 1]
	mov	qword ptr [word ptr [rip + n_open_pipes]],  rdx
	mov	rdx,  qword ptr [word ptr [rip + open_pipes]]
	mov	eax, dword ptr [rdx + rax*4 - 4]
	mov	dword ptr [rdx + rcx*4], eax
.label_212:
	test	r15d, r15d
	jle	.label_206
	mov	dword ptr [rsp + 0x1c], 0
	lea	rsi, [rsp + 0x1c]
	xor	edx, edx
	mov	edi, r15d
	call	waitpid
	cmp	eax, -1
	jne	.label_216
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0xa
	jne	.label_217
.label_216:
	mov	ebx, dword ptr [rsp + 0x1c]
	mov	ebp, ebx
	and	ebp, 0x7f
	mov	eax, ebp
	shl	eax, 0x18
	add	eax, 0x1000000
	sar	eax, 0x19
	test	eax, eax
	jle	.label_205
	cmp	ebp, 0xd
	je	.label_206
	lea	rsi, [rsp]
	mov	edi, ebp
	call	sig2str
	test	eax, eax
	je	.label_211
	lea	rdi, [rsp]
	mov	esi, 1
	mov	edx, 0x13
	mov	ecx, OFFSET FLAT:.str.107
	xor	eax, eax
	mov	r8d, ebp
	call	__sprintf_chk
.label_211:
	or	ebp, 0x80
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.108
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	r9,  qword ptr [word ptr [rip + filter_command]]
	lea	r8, [rsp]
	mov	esi, 0
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rbx
	call	error
	jmp	.label_206
.label_205:
	test	ebp, ebp
	jne	.label_207
	shr	ebx, 8
	and	ebx, 0xff
	je	.label_206
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.109
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
.label_206:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_214:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, r12d
	call	error
.label_210:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_217:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.106
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_207:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.110
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	ecx, dword ptr [rsp + 0x1c]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042a0

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	mov	eax, 0x2000
	or	eax,  dword ptr [dword ptr [rip + label_218]]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_219
	mov	al, 1
	ret	
.label_219:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4042c0

	.globl cwrite
	.type cwrite, @function
cwrite:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	test	dil, dil
	je	.label_220
	test	r14, r14
	jne	.label_223
	test	rbx, rbx
	jne	.label_223
	mov	al,  byte ptr [byte ptr [rip + elide_empty_files]]
	and	al, 1
	mov	al, 1
	jne	.label_222
.label_223:
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
	js	.label_224
.label_220:
	mov	edi,  dword ptr [dword ptr [rip + output_desc]]
	mov	rsi, r14
	mov	rdx, rbx
	call	full_write
	mov	rcx, rax
	mov	al, 1
	cmp	rcx, rbx
	je	.label_222
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	edi, ebx
	call	ignorable
	test	al, al
	je	.label_221
	xor	eax, eax
.label_222:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_224:
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_221:
	mov	rdx,  qword ptr [word ptr [rip + outfile]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404390

	.globl next_file_name
	.type next_file_name, @function
next_file_name:
	push	r15
	push	r14
	push	rbx
	cmp	qword ptr [word ptr [rip + outfile]],  0
	je	.label_233
	mov	rax,  qword ptr [word ptr [rip + suffix_length]]
	test	rax, rax
	je	.label_234
	mov	rcx,  qword ptr [word ptr [rip + next_file_name.sufindex]]
	mov	dl,  byte ptr [byte ptr [rip + suffix_auto]]
	xor	dl, 1
	mov	rsi,  qword ptr [word ptr [rip + suffix_alphabet]]
	mov	rdi,  qword ptr [word ptr [rip + outfile_mid]]
	nop	dword ptr [rax]
.label_226:
	inc	qword ptr [rcx + rax*8 - 8]
	cmp	rax, 1
	sete	bl
	and	bl, dl
	movzx	ebx, bl
	cmp	ebx, 1
	jne	.label_230
	mov	rbx, qword ptr [rcx]
	cmp	byte ptr [rbx + rsi + 1], 0
	je	.label_233
.label_230:
	mov	rbx, qword ptr [rcx + rax*8 - 8]
	mov	bl, byte ptr [rsi + rbx]
	mov	byte ptr [rdi + rax - 1], bl
	test	bl, bl
	jne	.label_231
	mov	qword ptr [rcx + rax*8 - 8], 0
	mov	bl, byte ptr [rsi]
	mov	byte ptr [rdi + rax - 1], bl
	dec	rax
	jne	.label_226
.label_234:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_233:
	mov	rbx,  qword ptr [word ptr [rip + next_file_name.outfile_length]]
	test	rbx, rbx
	je	.label_238
	lea	rax, [rbx + 2]
	mov	qword ptr [word ptr [rip + next_file_name.outfile_length]],  rax
	inc	qword ptr [word ptr [rip + suffix_length]]
	jmp	.label_228
.label_238:
	mov	rdi,  qword ptr [word ptr [rip + outbase]]
	call	strlen
	mov	qword ptr [word ptr [rip + next_file_name.outbase_length]],  rax
	mov	rdi,  qword ptr [word ptr [rip + additional_suffix]]
	xor	eax, eax
	test	rdi, rdi
	je	.label_236
	call	strlen
.label_236:
	mov	qword ptr [word ptr [rip + next_file_name.addsuf_length]],  rax
	add	rax,  qword ptr [word ptr [rip + next_file_name.outbase_length]]
	add	rax,  qword ptr [word ptr [rip + suffix_length]]
	mov	qword ptr [word ptr [rip + next_file_name.outfile_length]],  rax
.label_228:
	mov	rsi,  qword ptr [word ptr [rip + next_file_name.outfile_length]]
	inc	rsi
	cmp	rsi,  qword ptr [word ptr [rip + next_file_name.outbase_length]]
	jb	.label_232
	mov	rdi,  qword ptr [word ptr [rip + outfile]]
	call	xrealloc
	test	rbx, rbx
	mov	qword ptr [word ptr [rip + outfile]],  rax
	je	.label_225
	mov	rcx,  qword ptr [word ptr [rip + next_file_name.sufindex]]
	mov	rcx, qword ptr [rcx]
	mov	rdx,  qword ptr [word ptr [rip + suffix_alphabet]]
	mov	cl, byte ptr [rdx + rcx]
	mov	rdx,  qword ptr [word ptr [rip + next_file_name.outbase_length]]
	mov	byte ptr [rax + rdx], cl
	inc	rdx
	mov	qword ptr [word ptr [rip + next_file_name.outbase_length]],  rdx
	jmp	.label_229
.label_225:
	mov	rsi,  qword ptr [word ptr [rip + outbase]]
	mov	rdx,  qword ptr [word ptr [rip + next_file_name.outbase_length]]
	mov	rdi, rax
	call	memcpy
.label_229:
	mov	rdi,  qword ptr [word ptr [rip + outfile]]
	add	rdi,  qword ptr [word ptr [rip + next_file_name.outbase_length]]
	mov	qword ptr [word ptr [rip + outfile_mid]],  rdi
	mov	rax,  qword ptr [word ptr [rip + suffix_alphabet]]
	mov	rdx,  qword ptr [word ptr [rip + suffix_length]]
	movzx	esi, byte ptr [rax]
	call	memset
	mov	rsi,  qword ptr [word ptr [rip + additional_suffix]]
	test	rsi, rsi
	je	.label_237
	mov	rdi,  qword ptr [word ptr [rip + outfile_mid]]
	add	rdi,  qword ptr [word ptr [rip + suffix_length]]
	mov	rdx,  qword ptr [word ptr [rip + next_file_name.addsuf_length]]
	call	memcpy
.label_237:
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
	je	.label_231
	test	rbx, rbx
	jne	.label_227
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
	je	.label_231
	mov	rcx,  qword ptr [word ptr [rip + next_file_name.sufindex]]
	mov	rax,  qword ptr [word ptr [rip + numeric_suffix_start]]
	lea	rcx, [rcx + r15*8 - 8]
	nop	dword ptr [rax + rax]
.label_235:
	movsx	rdx, byte ptr [rax + rbx - 1]
	add	rdx, -0x30
	dec	rbx
	mov	qword ptr [rcx], rdx
	lea	rcx, [rcx - 8]
	jne	.label_235
.label_231:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_232:
	call	xalloc_die
.label_227:
	mov	edi, OFFSET FLAT:.str.81
	mov	esi, OFFSET FLAT:.str.82
	mov	edx, 0x198
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.next_file_name
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404630

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
	je	.label_247
	mov	edi, OFFSET FLAT:.str.88
	call	getenv
	test	rax, rax
	mov	r14d, OFFSET FLAT:.str.89
	cmovne	r14, rax
	mov	edi, OFFSET FLAT:.str.90
	mov	edx, 1
	mov	rsi, r15
	call	setenv
	test	eax, eax
	jne	.label_260
	movzx	eax,  byte ptr [byte ptr [rip + verbose]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_262
	mov	rbp,  qword ptr [word ptr [rip + stdout]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.92
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
.label_262:
	lea	rdi, [rsp + 8]
	call	pipe
	test	eax, eax
	jne	.label_251
	call	fork
	mov	ebx, eax
	test	ebx, ebx
	je	.label_256
	cmp	ebx, -1
	je	.label_258
	mov	edi, dword ptr [rsp + 8]
	call	close
	test	eax, eax
	jne	.label_239
	mov	dword ptr [dword ptr [rip + filter_pid]],  ebx
	mov	rax,  qword ptr [word ptr [rip + n_open_pipes]]
	cmp	rax,  qword ptr [word ptr [rip + open_pipes_alloc]]
	jne	.label_248
	mov	rdi,  qword ptr [word ptr [rip + open_pipes]]
	mov	esi, OFFSET FLAT:open_pipes_alloc
	mov	edx, 4
	call	x2nrealloc
	mov	qword ptr [word ptr [rip + open_pipes]],  rax
.label_248:
	mov	eax, dword ptr [rsp + 0xc]
	mov	rcx,  qword ptr [word ptr [rip + n_open_pipes]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + n_open_pipes]],  rdx
	mov	rdx,  qword ptr [word ptr [rip + open_pipes]]
	mov	dword ptr [rdx + rcx*4], eax
	mov	ebp, dword ptr [rsp + 0xc]
	jmp	.label_240
.label_247:
	movzx	eax,  byte ptr [byte ptr [rip + verbose]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_252
	mov	r14,  qword ptr [word ptr [rip + stdout]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.84
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
.label_252:
	mov	esi, 0x41
	mov	edx, 0x1b6
	xor	eax, eax
	mov	rdi, r15
	call	open_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_240
	lea	rsi, [rsp + 8]
	mov	edi, ebp
	call	__fstat
	test	eax, eax
	jne	.label_250
	mov	rax,  qword ptr [word ptr [rip + label_254]]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_255
	mov	rax,  qword ptr [word ptr [rip + in_stat_buf]]
	cmp	rax, qword ptr [rsp + 8]
	je	.label_257
.label_255:
	xor	esi, esi
	mov	edi, ebp
	call	ftruncate
	test	eax, eax
	je	.label_240
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x8000
	je	.label_243
.label_240:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_256:
	xor	ebx, ebx
	cmp	qword ptr [word ptr [rip + n_open_pipes]],  0
	je	.label_246
	nop	dword ptr [rax + rax]
.label_261:
	mov	rax,  qword ptr [word ptr [rip + open_pipes]]
	mov	edi, dword ptr [rax + rbx*4]
	call	close
	test	eax, eax
	jne	.label_253
	inc	rbx
	cmp	rbx,  qword ptr [word ptr [rip + n_open_pipes]]
	jb	.label_261
.label_246:
	mov	edi, dword ptr [rsp + 0xc]
	call	close
	test	eax, eax
	jne	.label_242
	mov	edi, dword ptr [rsp + 8]
	test	edi, edi
	je	.label_259
	xor	esi, esi
	call	dup2
	test	eax, eax
	jne	.label_245
	mov	edi, dword ptr [rsp + 8]
	call	close
	test	eax, eax
	jne	.label_244
.label_259:
	mov	edi, 2
	mov	esi, OFFSET FLAT:oldblocked
	xor	edx, edx
	call	sigprocmask
	mov	rdi, r14
	call	last_component
	mov	rsi, rax
	mov	rcx,  qword ptr [word ptr [rip + filter_command]]
	mov	edx, OFFSET FLAT:.str.98
	xor	r8d, r8d
	xor	eax, eax
	mov	rdi, r14
	call	execl
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.99
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
.label_253:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.94
	jmp	.label_241
.label_242:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.95
	jmp	.label_241
.label_245:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.96
	jmp	.label_241
.label_244:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.97
.label_241:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_260:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.91
	jmp	.label_241
.label_251:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.93
	jmp	.label_241
.label_258:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.100
	jmp	.label_241
.label_239:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.101
	jmp	.label_241
.label_250:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.85
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	jmp	.label_249
.label_243:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.87
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
.label_249:
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_257:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.86
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
	.align	32
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
	.align	32
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
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	rax, rbx
	shl	rax, 5
	cmp	dword ptr [r15 + rax + 8], 0
	js	.label_273
	xor	ebp, ebp
	jmp	.label_267
.label_273:
	lea	rcx, [r15 + rax + 8]
	mov	qword ptr [rsp + 0x10], rcx
	test	rbx, rbx
	mov	r13, r14
	cmovne	r13, rbx
	dec	r13
	lea	rcx, [r15 + rax]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp], rax
	xor	ebp, ebp
	jmp	.label_269
	nop	word ptr cs:[rax + rax]
.label_276:
	lea	rax, [r15 + rbp + 8]
	lea	rcx, [r15 + rbp + 0x10]
	mov	qword ptr [rcx], 0
	mov	dword ptr [rax], 0xfffffffe
	mov	bpl, 1
.label_269:
	mov	rax, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rsp + 0x10]
	cmp	dword ptr [rax], -1
	je	.label_272
	mov	esi, 0xc01
	xor	eax, eax
	call	open_safer
	jmp	.label_264
	nop	word ptr [rax + rax]
.label_272:
	call	create
.label_264:
	test	eax, eax
	jns	.label_266
	call	__errno_location
	mov	r12, rax
	mov	ebp, dword ptr [r12]
	lea	eax, [rbp - 0x17]
	cmp	eax, 2
	jae	.label_270
	nop	word ptr cs:[rax + rax]
.label_268:
	mov	rbp, r13
	shl	rbp, 5
	cmp	dword ptr [r15 + rbp + 8], 0
	jns	.label_263
	test	r13, r13
	cmove	r13, r14
	dec	r13
	cmp	r13, rbx
	jne	.label_268
	jmp	.label_275
.label_263:
	mov	rdi, qword ptr [r15 + rbp + 0x10]
	call	rpl_fclose
	test	eax, eax
	je	.label_276
	mov	ebx, dword ptr [r12]
	mov	rdx, qword ptr [r15 + rbp]
	jmp	.label_274
.label_266:
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rcx], eax
	mov	esi, OFFSET FLAT:.str.105
	mov	edi, eax
	call	fdopen
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [r15 + rcx + 0x10], rax
	test	rax, rax
	je	.label_265
	mov	eax,  dword ptr [dword ptr [rip + filter_pid]]
	mov	dword ptr [r15 + rcx + 0x18], eax
	mov	dword ptr [dword ptr [rip + filter_pid]],  0
.label_267:
	and	bpl, 1
	mov	al, bpl
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_275:
	mov	ebx, dword ptr [r12]
.label_271:
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax]
.label_274:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_270:
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_265:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	jmp	.label_271
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404c30
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c40
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
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
	je	.label_277
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_279
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_279
.label_277:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_278
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_279:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_280
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_278:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_280:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x404d10

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_281:
	movzx	eax, byte ptr [rdi + 1]
	inc	rdi
	cmp	eax, 0x2f
	je	.label_281
	xor	ecx, ecx
	mov	rax, rdi
	jmp	.label_284
	nop	word ptr cs:[rax + rax]
.label_282:
	inc	rax
	mov	cl, dl
.label_284:
	movzx	esi, byte ptr [rax]
	mov	dl, 1
	cmp	esi, 0x2f
	je	.label_282
	test	sil, sil
	je	.label_285
	mov	dl, cl
	and	dl, 1
	je	.label_283
	xor	ecx, ecx
.label_283:
	test	dl, dl
	cmovne	rdi, rax
	mov	dl, cl
	jmp	.label_282
.label_285:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d70
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_287:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_286
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_287
.label_286:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404da0

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_288
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_288:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_291
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_290
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_289
.label_290:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_289:
	mov	edx, dword ptr [rax]
.label_291:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e80

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
	je	.label_292
	test	ebx, ebx
	js	.label_292
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
	jmp	.label_293
.label_292:
	mov	eax, ebx
.label_293:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ee0

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
	je	.label_294
	nop	word ptr [rax + rax]
.label_296:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_294
	test	rax, rax
	je	.label_295
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_296
	jmp	.label_294
.label_295:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_294:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404f40

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_297:
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
	ja	.label_297
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f90

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_300
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_299
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_299
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_298
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_298:
	mov	rbx, r14
.label_299:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_300:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405040
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
	#Procedure 0x405080
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
	#Procedure 0x405090
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
	#Procedure 0x4050a0

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
	.align	32
	#Procedure 0x4050e0
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
	#Procedure 0x405100

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_301
	test	rdx, rdx
	je	.label_301
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_301:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405130
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
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x30]
	lea	rdx, [rbp + 8]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051b0

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
	mov	r13d, r8d
	mov	qword ptr [rsp + 0xc0], rcx
	mov	r12, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x88], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0x90], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r15b, bl
	shr	r15b, 1
	and	r15b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x80], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xd0], rax
	mov	eax, 0
	xor	r11d, r11d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_333:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_320
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_355]]
.label_636:
	mov	r12d, r11d
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r13d
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r13d
	call	gettext_quote
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x88], rax
.label_637:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_359
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_359
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_386:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_374
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_374:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_386
.label_359:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rdi, rbx
	mov	r12, r10
	call	strlen
	mov	r10, r12
	mov	qword ptr [rsp + 0xd0], rax
	mov	r14d, r13d
	mov	qword ptr [rsp + 0xa8], rbx
	mov	sil, 1
	mov	dil, r15b
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, rbp
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r11d, dword ptr [rsp + 0xb8]
	jmp	.label_312
.label_629:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_312
.label_632:
	mov	al, 1
.label_630:
	mov	r15b, 1
.label_633:
	test	r15b, 1
	mov	cl, 1
	je	.label_414
	mov	cl, al
.label_414:
	mov	al, cl
.label_631:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_354
	test	r10, r10
	je	.label_370
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_416
.label_354:
	xor	ecx, ecx
	jmp	.label_416
.label_634:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_419
	test	r10, r10
	je	.label_303
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_308
.label_635:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_312
.label_370:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_416:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_312
.label_419:
	xor	eax, eax
	jmp	.label_308
.label_303:
	mov	eax, 1
.label_308:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_312:
	mov	qword ptr [rsp + 0x98], rdi
	mov	byte ptr [rsp + 0xa6], sil
	cmp	qword ptr [rsp + 0x140], 0
	setne	bl
	cmp	r14d, 2
	setne	r15b
	sete	dl
	mov	cl, sil
	and	cl, 1
	mov	byte ptr [rsp + 0xa5], cl
	sete	byte ptr [rsp + 0x6b]
	mov	r12b, r15b
	and	r12b, cl
	mov	byte ptr [rsp + 0xbf], r12b
	cmp	qword ptr [rsp + 0xd0], 0
	setne	r13b
	mov	al, r13b
	and	al, r12b
	mov	byte ptr [rsp + 0xdf], al
	mov	al, dil
	and	al, 1
	mov	byte ptr [rsp + 0xcf], al
	sete	cl
	and	dl, al
	mov	byte ptr [rsp + 0x7f], dl
	and	bl, al
	mov	byte ptr [rsp + 0xb7], bl
	or	cl, r15b
	mov	byte ptr [rsp + 0xa7], cl
	and	sil, dil
	and	sil, r13b
	mov	byte ptr [rsp + 0x6a], sil
	xor	esi, esi
	jmp	.label_379
	nop	dword ptr [rax + rax]
.label_314:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_379:
	cmp	rbp, -1
	je	.label_396
	cmp	rsi, rbp
	jne	.label_399
	jmp	.label_372
	nop	dword ptr [rax]
.label_396:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_372
.label_399:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_404
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_325
	cmp	rbp, -1
	jne	.label_325
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rdi, r9
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r14
	mov	r12, r9
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r11d, dword ptr [rsp + 0xb8]
	mov	r9, r12
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	r14, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_325:
	cmp	rbx, rbp
	jbe	.label_423
.label_404:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_345:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_311
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_335]]
.label_646:
	test	rsi, rsi
	jne	.label_319
	jmp	.label_309
	nop	word ptr cs:[rax + rax]
.label_423:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12d, r11d
	mov	r13, r14
	mov	r15b, r8b
	mov	rbx, r10
	lea	rdi, [r9 + rsi]
	mov	r14, rsi
	mov	rbp, r9
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rdx, qword ptr [rsp + 0xd0]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_340
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_345
	jmp	.label_353
.label_340:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_345
.label_650:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_365
	test	rsi, rsi
	jne	.label_368
	cmp	rbp, 1
	je	.label_309
	xor	r15d, r15d
	jmp	.label_318
.label_639:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_371
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_353
	cmp	edi, 2
	jne	.label_381
	mov	al, r11b
	and	al, 1
	jne	.label_385
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_388
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_388:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_327
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_327:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_398
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_398:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_326
.label_640:
	mov	bl, 0x62
	jmp	.label_317
.label_641:
	mov	cl, 0x74
	jmp	.label_412
.label_642:
	mov	bl, 0x76
	jmp	.label_317
.label_643:
	mov	bl, 0x66
	jmp	.label_317
.label_644:
	mov	cl, 0x72
	jmp	.label_412
.label_647:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_415
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_310
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x80], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_422
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_422:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_323
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_323:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_331
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_331:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_338
.label_648:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_344
	cmp	r14d, 2
	jne	.label_347
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_310
.label_347:
	mov	rdi, r14
	jmp	.label_319
.label_649:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_350
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_310
	mov	rdi, r14
	jmp	.label_356
.label_311:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_360
	mov	r14, r9
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	r9, r14
	mov	rax, qword ptr [rax]
	movzx	r15d, word ptr [rax + r13*2]
	shr	r15d, 0xe
	and	r15b, 1
	mov	ebx, 1
.label_387:
	and	r15b, 1
	mov	dl, r15b
	or	dl, byte ptr [rsp + 0x6b]
	mov	byte ptr [rsp + 0xc0], dl
	cmp	rbx, 1
	mov	rcx, rbx
	mov	r10, qword ptr [rsp + 0x40]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r11d, dword ptr [rsp + 0xb8]
	ja	.label_376
	test	dl, dl
	je	.label_376
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_318
.label_365:
	test	rsi, rsi
	jne	.label_395
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_395
.label_309:
	mov	dl, 1
.label_645:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_353
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_318
.label_371:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_319
	mov	r14, rdi
	inc	rsi
	jmp	.label_379
.label_415:
	mov	rdi, r14
.label_338:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_318
.label_350:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_412
.label_356:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_346
.label_412:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_353
.label_317:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_318
	jmp	.label_352
.label_360:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_302
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_302:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_378:
	lea	rax, [rbx + rsi]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [r9 + rax]
	mov	qword ptr [rsp + 0x48], r9
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_334
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_339
	cmp	rbp, -2
	je	.label_348
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_349
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_366:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_361
	bt	rsi, rdx
	jb	.label_364
.label_361:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_366
.label_349:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_322
	xor	r15d, r15d
.label_322:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_378
	jmp	.label_387
.label_395:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_318
.label_344:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_319
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_319
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_319
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_400
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_403
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_353
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_410
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_410:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_373
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_373:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_420
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_420:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_362
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_362:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_318
.label_319:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_318:
	test	r12b, r12b
	je	.label_417
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_328
	jmp	.label_315
	nop	word ptr cs:[rax + rax]
.label_417:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_315
.label_328:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_336
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_346
	jmp	.label_352
	nop	word ptr cs:[rax + rax]
.label_315:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_352
	jmp	.label_346
.label_336:
	mov	bl, r13b
	mov	rsi, r14
.label_352:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_353
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_363
	mov	al, r11b
	and	al, 1
	jne	.label_363
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_367
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_367:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_402
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_402:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_382
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_382:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_363:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_392
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_392:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_304
.label_368:
	xor	r15d, r15d
	jmp	.label_318
.label_376:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_401
	nop	word ptr cs:[rax + rax]
.label_397:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_401:
	test	dl, dl
	je	.label_411
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_413
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_357
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_357:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_413
	nop	word ptr [rax + rax]
.label_411:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_310
	cmp	r14d, 2
	jne	.label_313
	mov	al, r11b
	and	al, 1
	jne	.label_313
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_316
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_316:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_324
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_324:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_332
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_332:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_313:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_405
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_405:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_306
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_306:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_358
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_358:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_413:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_346
	test	r11b, 1
	je	.label_377
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_380
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_384
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_384:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_390
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_390:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_380
	nop	word ptr cs:[rax + rax]
.label_377:
	mov	r14, rdi
.label_380:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_397
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_397
.label_346:
	test	r11b, 1
	je	.label_406
	and	al, 1
	jne	.label_406
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_351
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_351:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_418
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_418:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_304
	nop	dword ptr [rax + rax]
.label_406:
	mov	bl, r13b
	mov	r14, rdi
.label_304:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_314
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_314
.label_381:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_326
.label_385:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_326:
	cmp	rcx, r10
	jae	.label_329
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_329:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_307
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_341
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_407
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_408
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_408:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_342
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_342:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_318
.label_307:
	xor	r15d, r15d
	jmp	.label_318
.label_341:
	xor	r15d, r15d
	jmp	.label_318
.label_407:
	xor	r15d, r15d
	jmp	.label_318
.label_334:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_369
.label_339:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_375
.label_348:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_383
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_393:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_391
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_393
	xor	r15d, r15d
	jmp	.label_369
.label_383:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_375:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_369:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_387
.label_391:
	xor	r15d, r15d
	jmp	.label_369
.label_400:
	xor	r15d, r15d
	jmp	.label_318
.label_403:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_318
	nop	dword ptr [rax + rax]
.label_372:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_409
	or	dl, al
	je	.label_310
.label_409:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_305
	or	dl, al
	jne	.label_305
	test	r8b, 1
	jne	.label_421
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_305
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_333
.label_305:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_321
	test	cl, cl
	jne	.label_321
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_321
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_337:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_330
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_330:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_337
.label_321:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_343
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_343
.label_353:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_389:
	test	r8b, 1
	mov	r8d, 4
	cmove	r8d, r14d
	cmp	r14d, 2
	cmovne	r8d, r14d
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rcx, rbp
.label_394:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_343:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_364:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_389
.label_310:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_389
.label_421:
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_394
.label_320:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063c0
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
	#Procedure 0x4063d0

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
	call	xcharalloc
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
	je	.label_424
	mov	qword ptr [rax], rbx
.label_424:
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
	.align	32
	#Procedure 0x4064d0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_425
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_428:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_428
.label_425:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_429
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_426]], OFFSET FLAT:slot0
.label_429:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_427
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_427:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406570

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x406580

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
	js	.label_430
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_433
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_436
.label_433:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_432
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
	jne	.label_431
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_431:
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
.label_436:
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
	ja	.label_434
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_435
	mov	rdi, rbx
	call	free
.label_435:
	mov	rdi, r14
	call	xcharalloc
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
.label_434:
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
.label_430:
	call	abort
.label_432:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406750

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406760
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
	#Procedure 0x406770
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
	#Procedure 0x406780

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
	#Procedure 0x4067c0

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
	je	.label_437
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
.label_437:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406820

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
	#Procedure 0x406860

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
	#Procedure 0x406880
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
	#Procedure 0x4068a0

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
	mov	rcx,  qword ptr [word ptr [rip + label_438]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_439]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_440]]
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
	#Procedure 0x406910

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
	#Procedure 0x406920

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406930
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406940

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
	#Procedure 0x406990

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4069a0

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
	mov	rax,  qword ptr [word ptr [rip + label_438]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_439]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_440]]
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
	#Procedure 0x406a10
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
	#Procedure 0x406a30
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
	#Procedure 0x406a50

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a60
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
	#Procedure 0x406a70

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406a80

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
	#Procedure 0x406a90

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_442
	call	locale_charset
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0
	mov	dword ptr [rsp], 0
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	je	.label_441
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_442
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_442
.label_441:
	mov	dword ptr [rsp + 8], 0x30
	mov	dword ptr [rsp], 0x33
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	je	.label_443
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_442
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_442
.label_443:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_442:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406b70

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
	je	.label_445
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_446
	jmp	.label_444
.label_445:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_444
.label_446:
	mov	eax, 1
	test	bpl, bpl
	je	.label_444
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
.label_444:
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
	#Procedure 0x406c00

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
	je	.label_449
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_447
	jmp	.label_448
.label_449:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_448
.label_447:
	mov	eax, 1
	test	bpl, bpl
	je	.label_448
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
.label_448:
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
	#Procedure 0x406c90

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
	je	.label_451
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_452
	jmp	.label_450
.label_451:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_450
.label_452:
	mov	eax, 1
	test	bpl, bpl
	je	.label_450
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
.label_450:
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
	#Procedure 0x406d10

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
	je	.label_455
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_454
	jmp	.label_453
.label_455:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_453
.label_454:
	mov	eax, 1
	test	bpl, bpl
	je	.label_453
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
.label_453:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406d80

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
	je	.label_458
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_456
	jmp	.label_457
.label_458:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_457
.label_456:
	mov	eax, 1
	test	bpl, bpl
	je	.label_457
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_457:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406df0

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
	je	.label_461
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_460
	jmp	.label_459
.label_461:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_459
.label_460:
	mov	eax, 1
	test	bpl, bpl
	je	.label_459
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_459:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406e40

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
	je	.label_464
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_463
	jmp	.label_462
.label_464:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_462
.label_463:
	mov	eax, 1
	test	bpl, bpl
	je	.label_462
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_462:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e90

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_467
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_466
	jmp	.label_465
.label_467:
	mov	eax, 1
	test	cl, cl
	je	.label_465
.label_466:
	xor	eax, eax
.label_465:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406ec0

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
.label_469:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_468
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_469
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
	jb	.label_468
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_469
.label_468:
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
	.align	32
	#Procedure 0x406f50

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
.label_471:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	write
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_470
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_471
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
	jb	.label_470
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_471
.label_470:
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
	.align	32
	#Procedure 0x406fe0

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
	ja	.label_472
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
	jmp	.label_473
.label_472:
	mov	eax, ebx
.label_473:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407030

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
	je	.label_480
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_479
.label_480:
	mov	edx, OFFSET FLAT:.str.1_1
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_479:
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
	ja	.label_475
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_476]]
.label_601:
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
.label_475:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_474
.label_602:
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
.label_603:
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
.label_604:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_481
.label_605:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_483
.label_606:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_478
.label_607:
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
.label_478:
	mov	qword ptr [rsp + 0x10], rdi
.label_483:
	mov	qword ptr [rsp + 8], rsi
.label_481:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_482
.label_609:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_474:
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
	jmp	.label_477
.label_608:
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
.label_477:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_482:
	call	__fprintf_chk
.label_600:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407320
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_484:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_484
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407350

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_486:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_485
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_487
	nop	dword ptr [rax]
.label_485:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_487:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_488
	inc	r9
	cmp	r9, 0xa
	jb	.label_486
.label_488:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4073b0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_489
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_489:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	lea	r8, [rsp + 0xb0]
	call	version_etc_va
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407440
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
	mov	esi, OFFSET FLAT:.str.16_0
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
	.align	32
	#Procedure 0x4074c0

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_490
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_490:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074f0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_491
	test	rax, rax
	je	.label_492
.label_491:
	pop	rbx
	ret	
.label_492:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407510
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_493
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_493:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407540

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_494
	test	rbx, rbx
	jne	.label_494
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_494:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_496
	test	rax, rax
	je	.label_495
.label_496:
	pop	rbx
	ret	
.label_495:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407570

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_497
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_500
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_498
.label_497:
	test	rcx, rcx
	jne	.label_501
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_501:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_499
.label_498:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_500:
	call	xalloc_die
.label_499:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4075f0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407600
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407610
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
	#Procedure 0x407640

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_502
	call	rpl_calloc
	test	rax, rax
	je	.label_502
	pop	rcx
	ret	
.label_502:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407670

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
	#Procedure 0x4076a0

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4076c0

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
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4076f0

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
	je	.label_506
	cmp	eax, 1
	je	.label_508
	test	eax, eax
	jne	.label_503
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jb	.label_504
	cmp	rbx, r15
	jbe	.label_505
.label_504:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_507
	mov	dword ptr [rax], 0x4b
	jmp	.label_503
.label_506:
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_503
.label_508:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_503
.label_507:
	mov	dword ptr [rax], 0x22
.label_503:
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
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	call	error
.label_505:
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
	.align	32
	#Procedure 0x4077c0

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
	.align	32
	#Procedure 0x4077f0

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
	jae	.label_531
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_525:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_525
	test	rbp, rbp
	lea	rcx, [rsp + 0x10]
	cmovne	rcx, rbp
	movzx	eax, al
	mov	r15d, 4
	cmp	eax, 0x2d
	je	.label_514
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	mov	edx, r14d
	call	strtoumax
	mov	rcx, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_533
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_511
	cmp	eax, 0x22
	jne	.label_514
	mov	r12d, 1
.label_511:
	test	rbp, rbp
	jne	.label_519
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jmp	.label_521
.label_533:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_514
	mov	rbx, rcx
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_514
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_514
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_519:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_532
	mov	r13, rcx
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_510
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_527
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_523
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r14d, 1
	mov	rbx, r13
	test	rax, rax
	je	.label_522
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	je	.label_529
	cmp	ecx, 0x44
	je	.label_529
	cmp	ecx, 0x69
	jne	.label_522
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	cmp	eax, 0x42
	je	.label_522
	mov	r14d, 1
	jmp	.label_522
.label_529:
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_522:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_516
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	ja	.label_520
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_517]]
.label_668:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_524
.label_516:
	cmp	eax, 0x73
	jg	.label_518
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_526
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_513]]
.label_717:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_524
.label_520:
	cmp	eax, 0x54
	je	.label_509
	cmp	eax, 0x59
	jne	.label_510
	lea	rdi, [rsp + 8]
	mov	edx, 8
	jmp	.label_515
.label_518:
	cmp	eax, 0x74
	je	.label_509
	cmp	eax, 0x77
	jne	.label_510
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_524:
	call	bkm_scale
	jmp	.label_530
.label_670:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	jmp	.label_515
.label_671:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	jmp	.label_515
.label_672:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	jmp	.label_515
.label_509:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	jmp	.label_515
.label_526:
	cmp	eax, 0x5a
	jne	.label_510
	lea	rdi, [rsp + 8]
	mov	edx, 7
	jmp	.label_515
.label_510:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_528
.label_669:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_515
.label_673:
	lea	rdi, [rsp + 8]
	mov	edx, 5
.label_515:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_530:
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	cmp	byte ptr [rcx + r14], 0
	je	.label_512
	or	eax, 2
.label_512:
	mov	r12d, eax
.label_532:
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_521:
	mov	qword ptr [rcx], rax
.label_528:
	mov	r15d, r12d
.label_514:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_527:
	mov	rbx, r13
	jmp	.label_522
.label_523:
	mov	rbx, r13
	jmp	.label_522
.label_531:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b00

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
	.align	32
	#Procedure 0x407b30

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebx, ebx
	test	ebp, ebp
	je	.label_534
	nop	word ptr cs:[rax + rax]
.label_535:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebx, eax
	dec	ebp
	jne	.label_535
.label_534:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407b70

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_536
	test	rsi, rsi
	mov	ecx, 1
	je	.label_537
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_537
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_536:
	mov	ecx, 1
.label_537:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407bc0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_539
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_538
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_539
.label_538:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_539
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_540
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_540:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_539:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c40

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_541
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_541
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_541:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c70

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_542
	ret	
.label_542:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407c90

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
	jne	.label_543
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_543
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_544
.label_543:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_544:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_545
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_545:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407d00

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
	je	.label_546
	cmp	r15, -2
	jb	.label_546
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_546
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_546:
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
	#Procedure 0x407d60
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
	.align	32
	#Procedure 0x407d70

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
	xor	ebx, ebx
	mov	ebp, OFFSET FLAT:label_554
	cmp	eax, 9
	ja	.label_551
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	cmp	rax, 0x40
	jg	.label_547
	mov	rcx, qword ptr [rsp]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_552
	jmp	.label_547
	nop	dword ptr [rax + rax]
.label_551:
	mov	rdi, rbp
	mov	rsi, r15
	call	strcmp
	test	eax, eax
	je	.label_549
	inc	rbx
	add	rbp, 0xc
	cmp	rbx, 0x22
	jbe	.label_551
	call	__libc_current_sigrtmin
	mov	ebp, eax
	call	__libc_current_sigrtmax
	mov	r14d, eax
	test	ebp, ebp
	jle	.label_553
	mov	esi, OFFSET FLAT:.str_7
	mov	edx, 5
	mov	rdi, r15
	call	strncmp
	test	eax, eax
	je	.label_548
.label_553:
	test	r14d, r14d
	jle	.label_547
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 5
	mov	rdi, r15
	call	strncmp
	test	eax, eax
	jne	.label_547
	add	r15, 5
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	jne	.label_547
	sub	ebp, r14d
	movsxd	rcx, ebp
	cmp	rcx, rax
	jg	.label_547
	test	rax, rax
	jg	.label_547
	mov	ecx, r14d
	jmp	.label_550
.label_549:
	mov	eax, dword ptr [rbp - 4]
	jmp	.label_552
.label_548:
	add	r15, 5
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	test	rax, rax
	js	.label_547
	mov	rcx, qword ptr [rsp]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	jne	.label_547
	sub	r14d, ebp
	movsxd	rcx, r14d
	cmp	rax, rcx
	jle	.label_555
.label_547:
	mov	eax, 0xffffffff
.label_552:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_555:
	mov	ecx, ebp
.label_550:
	add	rax, rcx
	jmp	.label_552
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407eb0

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
	mov	esi, OFFSET FLAT:label_554
	nop	word ptr cs:[rax + rax]
.label_558:
	cmp	dword ptr [rsi - 4], ebp
	je	.label_556
	inc	eax
	add	rsi, 0xc
	cmp	eax, 0x22
	jbe	.label_558
	call	__libc_current_sigrtmin
	mov	r15d, eax
	call	__libc_current_sigrtmax
	cmp	r15d, ebp
	mov	ebx, 0xffffffff
	jg	.label_557
	cmp	eax, ebp
	jl	.label_557
	mov	ecx, eax
	sub	ecx, r15d
	mov	edx, ecx
	shr	edx, 0x1f
	add	edx, ecx
	sar	edx, 1
	add	edx, r15d
	cmp	edx, ebp
	jge	.label_559
	mov	word ptr [r14 + 4], 0x58
	mov	dword ptr [r14], 0x414d5452
	mov	r15d, eax
	jmp	.label_560
.label_556:
	mov	rdi, r14
	call	strcpy
	xor	ebx, ebx
	jmp	.label_557
.label_559:
	mov	word ptr [r14 + 4], 0x4e
	mov	dword ptr [r14], 0x494d5452
.label_560:
	xor	ebx, ebx
	cmp	r15d, ebp
	je	.label_557
	sub	ebp, r15d
	add	r14, 5
	xor	ebx, ebx
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.2_2
	xor	eax, eax
	mov	rdi, r14
	mov	r8d, ebp
	call	__sprintf_chk
.label_557:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f80
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_561
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_561
.label_562:
	ret	
.label_561:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_562
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407fb0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_563
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_563:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407fd0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407fe0
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
	#Procedure 0x407ff0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_564
.label_565:
	ret	
.label_564:
	cmp	edi, 0x7f
	je	.label_565
	xor	eax, eax
	jmp	.label_565
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408010
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
	#Procedure 0x408020
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
	#Procedure 0x408030
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
	#Procedure 0x408040
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
	#Procedure 0x408050
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_566
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_566
.label_567:
	ret	
.label_566:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_567
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408080
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_568
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_568:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4080a0

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
	#Procedure 0x4080b0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_569
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_569:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4080d0
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
	#Procedure 0x4080e0
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
	#Procedure 0x4080f0

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
	je	.label_571
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_570
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_570
.label_571:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_570
	test	cl, cl
	jne	.label_570
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_570:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408160

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_573
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_574
	cmp	byte ptr [rax + 1], 0
	je	.label_572
.label_574:
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_573
.label_572:
	xor	ebx, ebx
.label_573:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4081a0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_6
	cmp	byte ptr [rcx], 0
	je	.label_575
	mov	rax, rcx
.label_575:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4081d0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	32
	#Procedure 0x4081e0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	je	.label_584
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_584:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_581
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_588
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_587
	test	esi, esi
	jne	.label_581
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_589
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_580
.label_581:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_576
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_587
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_577
.label_588:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_587:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_582
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_585
.label_582:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_585:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_577:
	cmp	eax, 6
	jne	.label_576
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_586
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_578
.label_576:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_579
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_583
.label_589:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_580:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	ret	
.label_586:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_578:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	ret	
.label_579:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_583:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083f0

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
	.align	32
	#Procedure 0x408400

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_590
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_592
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_592
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_593
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_594
.label_592:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_594
.label_590:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_594:
	test	ebx, ebx
	js	.label_593
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_593
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_591
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_593
.label_591:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_593:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4084d0

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
	nop	dword ptr [rax]
	.section .text
	.align	32
	#Procedure 0x4085a0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
