	.section	.text
	.align	32
	#Procedure 0x401ca0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_21
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
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
	mov	esi, OFFSET FLAT:label_18
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
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_9
	mov	ecx, OFFSET FLAT:label_10
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_15
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_15
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_15:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_10
	mov	ecx, OFFSET FLAT:label_11
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
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
.label_21:
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
	.align	32
	#Procedure 0x401ee0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	dword ptr [rsp + 0xc], edi
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_31
	call	setlocale
	mov	edi, OFFSET FLAT:label_37
	mov	esi, OFFSET FLAT:label_38
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_37
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	dword ptr [rip + change_times],  0
	mov	byte ptr [rip + use_ref],  0
	mov	byte ptr [rip + no_create],  0
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_42
.label_1548:
	mov	rsi, qword ptr [rip + optarg]
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_57
	mov	edx, OFFSET FLAT:time_args
	mov	ecx, OFFSET FLAT:time_masks
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + time_masks]
	or	dword ptr [rip + change_times],  eax
	nop	dword ptr [rax + rax]
.label_42:
	mov	edx, OFFSET FLAT:label_73
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x10]
	call	getopt_long
	cmp	eax, 0x60
	jle	.label_80
	add	eax, -0x61
	cmp	eax, 0x1f
	ja	.label_71
	jmp	qword ptr [(rax * 8) + label_85]
.label_1541:
	or	byte ptr [rip + change_times],  1
	jmp	.label_42
.label_1542:
	mov	byte ptr [rip + no_create],  1
	jmp	.label_42
.label_1543:
	mov	r14, qword ptr [rip + optarg]
	jmp	.label_42
.label_1544:
	mov	byte ptr [rip + no_dereference],  1
	jmp	.label_42
.label_1545:
	or	byte ptr [rip + change_times],  2
	jmp	.label_42
.label_1546:
	mov	byte ptr [rip + use_ref],  1
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + ref_file],  rax
	jmp	.label_42
.label_1547:
	mov	rsi, qword ptr [rip + optarg]
	mov	edi, OFFSET FLAT:newtime
	mov	edx, 6
	call	posixtime
	test	al, al
	je	.label_40
	mov	qword ptr [rip + label_34],  0
	movaps	xmm0, xmmword ptr [rip + newtime]
	movaps	xmmword ptr [rip + label_41],  xmm0
	mov	bl, 1
	jmp	.label_42
.label_80:
	cmp	eax, -1
	jne	.label_79
	cmp	dword ptr [rip + change_times],  0
	jne	.label_56
	mov	dword ptr [rip + change_times],  3
.label_56:
	test	bl, bl
	mov	al, byte ptr [rip + use_ref]
	je	.label_65
	test	r14, r14
	setne	cl
	or	cl, al
	test	cl, 1
	je	.label_67
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	jmp	.label_70
.label_65:
	test	al, 1
	je	.label_67
	mov	rsi, qword ptr [rip + ref_file]
	cmp	byte ptr [rip + no_dereference],  1
	jne	.label_72
	lea	rdx, [rsp + 0x38]
	mov	edi, 1
	call	__lxstat
	jmp	.label_82
.label_67:
	test	r14, r14
	je	.label_35
	lea	rbx, [rsp + 0x38]
	mov	rdi, rbx
	call	gettime
	mov	edi, OFFSET FLAT:newtime
	mov	rsi, r14
	mov	rdx, rbx
	call	parse_datetime
	test	al, al
	je	.label_49
	movaps	xmm0, xmmword ptr [rip + newtime]
	movaps	xmmword ptr [rip + label_41],  xmm0
	mov	bl, 1
	cmp	dword ptr [rip + change_times],  3
	jne	.label_35
	mov	rax, qword ptr [rip + newtime]
	cmp	rax, qword ptr [rsp + 0x38]
	jne	.label_35
	mov	rcx, qword ptr [rip + label_34]
	cmp	rcx, qword ptr [rsp + 0x40]
	jne	.label_35
	xor	rax, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x20], rcx
	lea	rdi, [rsp + 0x28]
	lea	rdx, [rsp + 0x18]
	mov	rsi, r14
	call	parse_datetime
	test	al, al
	je	.label_49
	mov	rax, qword ptr [rsp + 0x28]
	mov	bl, 1
	cmp	rax, qword ptr [rsp + 0x18]
	jne	.label_35
	mov	rax, qword ptr [rsp + 0x30]
	cmp	rax, qword ptr [rsp + 0x20]
	setne	bl
.label_35:
	test	bl, 1
	jne	.label_51
	mov	eax, dword ptr [rsp + 0xc]
	sub	eax, dword ptr [rip + optind]
	cmp	eax, 2
	jl	.label_63
	call	posix2_version
	cmp	eax, 0x30daf
	jg	.label_63
	movsxd	rax, dword ptr [rip + optind]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	edi, OFFSET FLAT:newtime
	mov	edx, 9
	call	posixtime
	test	al, al
	je	.label_63
	mov	qword ptr [rip + label_34],  0
	movaps	xmm0, xmmword ptr [rip + newtime]
	movaps	xmmword ptr [rip + label_41],  xmm0
	mov	edi, OFFSET FLAT:label_81
	call	getenv
	test	rax, rax
	jne	.label_50
	mov	edi, OFFSET FLAT:newtime
	call	localtime
	mov	rbx, rax
	test	rbx, rbx
	je	.label_50
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rcx + rax*8]
	movsxd	r8, dword ptr [rbx + 0x14]
	add	r8, 0x76c
	mov	r9d, dword ptr [rbx + 0x10]
	inc	r9d
	mov	r10d, dword ptr [rbx + 0xc]
	mov	r11d, dword ptr [rbx + 8]
	mov	ebp, dword ptr [rbx]
	mov	ebx, dword ptr [rbx + 4]
	xor	edi, edi
	xor	esi, esi
	mov	eax, 0
	push	rbp
	push	rbx
	push	r11
	push	r10
	call	error
	add	rsp, 0x20
.label_50:
	inc	dword ptr [rip + optind]
	jmp	.label_51
.label_63:
	cmp	dword ptr [rip + change_times],  3
	jne	.label_55
	mov	byte ptr [rip + amtime_now],  1
	jmp	.label_51
.label_55:
	mov	qword ptr [rip + label_34],  0x3fffffff
	mov	qword ptr [rip + label_62],  0x3fffffff
	jmp	.label_51
.label_72:
	lea	rdx, [rsp + 0x38]
	mov	edi, 1
	call	__xstat
.label_82:
	test	eax, eax
	jne	.label_53
	movups	xmm0, xmmword ptr [rsp + 0x80]
	movaps	xmmword ptr [rip + newtime],  xmm0
	movups	xmm0, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rip + label_41],  xmm0
	test	r14, r14
	je	.label_51
	mov	eax, dword ptr [rip + change_times]
	test	al, 1
	je	.label_84
	mov	edi, OFFSET FLAT:newtime
	mov	edx, OFFSET FLAT:newtime
	mov	rsi, r14
	call	parse_datetime
	test	al, al
	je	.label_49
	mov	eax, dword ptr [rip + change_times]
.label_84:
	test	al, 2
	je	.label_51
	mov	edi, OFFSET FLAT:label_41
	mov	edx, OFFSET FLAT:label_41
	mov	rsi, r14
	call	parse_datetime
	test	al, al
	je	.label_49
.label_51:
	mov	eax, dword ptr [rip + optind]
	cmp	eax, dword ptr [rsp + 0xc]
	je	.label_95
	mov	r15b, 1
	jge	.label_36
	mov	r15b, 1
	nop	dword ptr [rax + rax]
.label_45:
	cdqe	
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r13, qword ptr [rcx + rax*8]
	cmp	byte ptr [r13], 0x2d
	jne	.label_89
	cmp	byte ptr [r13 + 1], 0
	je	.label_46
.label_89:
	mov	ebp, 0xffffffff
	xor	r14d, r14d
	movzx	eax, byte ptr [rip + no_create]
	test	al, al
	jne	.label_54
	movzx	eax, byte ptr [rip + no_dereference]
	test	al, al
	jne	.label_54
	xor	r14d, r14d
	xor	edi, edi
	mov	edx, 0x941
	mov	ecx, 0x1b6
	mov	rsi, r13
	call	fd_reopen
	cmp	eax, -1
	je	.label_66
	mov	ebp, eax
	jmp	.label_54
.label_46:
	mov	ebp, 1
	xor	r14d, r14d
	jmp	.label_54
.label_66:
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0x16
	ja	.label_87
	mov	ecx, 0x600002
	bt	ecx, eax
	jb	.label_54
.label_87:
	mov	r14d, eax
	nop	word ptr [rax + rax]
.label_54:
	mov	eax, dword ptr [rip + change_times]
	cmp	eax, 1
	je	.label_68
	cmp	eax, 3
	je	.label_43
	cmp	eax, 2
	jne	.label_83
	mov	qword ptr [rip + label_34],  0x3ffffffe
	jmp	.label_43
	nop	word ptr cs:[rax + rax]
.label_68:
	mov	qword ptr [rip + label_62],  0x3ffffffe
.label_43:
	movzx	eax, byte ptr [rip + amtime_now]
	test	al, al
	mov	ecx, OFFSET FLAT:newtime
	mov	eax, 0
	cmovne	rcx, rax
	cmp	ebp, 1
	mov	rdx, r13
	cmove	rdx, rax
	movzx	r8d, byte ptr [rip + no_dereference]
	shl	r8d, 8
	cmp	ebp, -1
	cmovne	r8d, eax
	mov	esi, 0xffffff9c
	mov	edi, ebp
	call	fdutimensat
	mov	ebx, eax
	test	ebp, ebp
	je	.label_39
	cmp	ebp, 1
	setne	al
	test	ebx, ebx
	je	.label_33
	test	al, al
	jne	.label_33
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_33
	mov	r12b, 1
	movzx	eax, byte ptr [rip + no_create]
	test	al, al
	je	.label_47
	jmp	.label_52
	nop	dword ptr [rax]
.label_39:
	xor	edi, edi
	call	close
	test	eax, eax
	je	.label_33
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	jmp	.label_88
	nop	word ptr [rax + rax]
.label_33:
	mov	r12b, 1
	test	ebx, ebx
	je	.label_52
.label_47:
	test	r14d, r14d
	je	.label_48
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_86
.label_48:
	movzx	ebx, byte ptr [rip + no_create]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	bl, 1
	jne	.label_91
	mov	r12b, 1
	cmp	ebp, 2
	je	.label_52
.label_91:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
.label_86:
	mov	rdx, rbx
.label_88:
	call	error
.label_52:
	and	r15b, r12b
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, dword ptr [rsp + 0xc]
	jl	.label_45
.label_36:
	movzx	eax, r15b
	xor	eax, 1
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_83:
	mov	edi, OFFSET FLAT:label_58
	mov	esi, OFFSET FLAT:label_59
	mov	edx, 0x99
	mov	ecx, OFFSET FLAT:label_60
	call	__assert_fail
.label_79:
	cmp	eax, 0xffffff7d
	je	.label_92
	cmp	eax, 0xffffff7e
	jne	.label_71
	xor	edi, edi
	call	usage
.label_92:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_11
	mov	edx, OFFSET FLAT:label_9
	mov	r8d, OFFSET FLAT:label_74
	mov	r9d, OFFSET FLAT:label_75
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_76
	push	OFFSET FLAT:label_77
	push	OFFSET FLAT:label_78
	call	version_etc
	add	rsp, 0x20
	xor	edi, edi
	call	exit
.label_71:
	mov	edi, 1
	call	usage
.label_40:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	jmp	.label_93
.label_95:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
.label_70:
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
.label_49:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
.label_93:
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_53:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + ref_file]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x4026a0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026b0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	call	strlen
	mov	r12, rax
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	je	.label_100
	test	r14, r14
	je	.label_102
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x20], r14
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_101:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_99
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_97
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	je	.label_104
	mov	rdi, rax
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_99
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_99
.label_104:
	mov	qword ptr [rsp + 8], rbx
	nop	word ptr [rax + rax]
.label_99:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	add	r14, r13
	test	rbp, rbp
	jne	.label_101
	jmp	.label_96
.label_100:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_96
.label_102:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_103:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_98
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_97
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	cmove	rax, rbx
	mov	qword ptr [rsp + 8], rax
	je	.label_98
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	word ptr [rax + rax]
.label_98:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	jne	.label_103
.label_96:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	cmove	rbx, qword ptr [rsp + 8]
.label_97:
	mov	rax, rbx
	add	rsp, 0x28
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
	#Procedure 0x402830
	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_105
	mov	esi, OFFSET FLAT:label_106
	jmp	.label_107
.label_105:
	mov	esi, OFFSET FLAT:label_108
.label_107:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	error
	.section	.text
	.align	32
	#Procedure 0x4028a0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	rbp, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_109
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_115
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_111:
	test	r15, r15
	je	.label_113
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_110
.label_113:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_116
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_112
	nop	word ptr cs:[rax + rax]
.label_110:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_114
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_112:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_111
.label_115:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_117
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_117:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029d0

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_118
	cmp	rax, -1
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbx, r14
	je	.label_119
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	jmp	.label_120
.label_119:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
.label_120:
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 0x10]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	rbx
	mov	rax, -1
.label_118:
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
	#Procedure 0x402aa0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	test	r13, r13
	je	.label_121
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_122:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_121
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_122
.label_121:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b10
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b20
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b30

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
	je	.label_126
	cmp	dword ptr [rbp], 0x20
	jne	.label_126
.label_129:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_125
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_126:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_123
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_124
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_125:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_123:
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
	#Procedure 0x402bf0

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
	je	.label_130
	test	ebx, ebx
	js	.label_130
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
	jmp	.label_131
.label_130:
	mov	eax, ebx
.label_131:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c50

	.globl fdutimensat
	.type fdutimensat, @function
fdutimensat:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r12, rcx
	mov	rbp, rdx
	mov	r15d, esi
	mov	ebx, edi
	mov	eax, 1
	test	ebx, ebx
	js	.label_134
	mov	edi, ebx
	mov	rsi, r12
	call	futimens
.label_134:
	test	rbp, rbp
	je	.label_132
	test	ebx, ebx
	js	.label_135
	cmp	eax, -1
	jne	.label_132
	call	__errno_location
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	dword ptr [rcx], 0x26
	jne	.label_133
.label_135:
	mov	edi, r15d
	mov	rsi, rbp
	mov	rdx, r12
	mov	ecx, r14d
	call	utimensat
.label_132:
	cmp	eax, 1
	jne	.label_133
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	eax, 0xffffffff
.label_133:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402cd0

	.globl gettime
	.type gettime, @function
gettime:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402ce0
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	sub	rsp, 0x18
	lea	rsi, [rsp + 8]
	xor	edi, edi
	call	clock_gettime
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402d00

	.globl yyparse
	.type yyparse, @function
yyparse:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x588
	mov	r13, rdi
	lea	r12, [rsp + 0x120]
	mov	word ptr [rsp + 0xf0], 0
	lea	rax, [r13 + 0x58]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [r13 + 0x50]
	mov	qword ptr [rsp + 0xd0], rax
	lea	rax, [r13 + 0x20]
	mov	qword ptr [rsp + 0xb8], rax
	mov	ebx, 0xfffffffe
	movabs	r10, 0x8000000000000000
	movabs	rax, 0x3ffffff03ffffff
	movabs	rcx, 0x3ffffffffffffff
	and	rcx, rax
	mov	qword ptr [rsp + 0xe8], rcx
	mov	r15d, 0x80001f
	mov	eax, 0
	mov	r8d, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xd8], rcx
	mov	dword ptr [rsp + 0xb4], 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xc8], rcx
	jmp	.label_224
.label_222:
	movsxd	rsi, eax
	movsx	r14d, byte ptr [rsi + yypact]
	cmp	r14d, -0x5d
	je	.label_242
	cmp	ebx, -2
	jne	.label_272
	mov	qword ptr [rsp + 0x48], rsi
	mov	rdi, qword ptr [r13]
	mov	rdx, rdi
	jmp	.label_275
.label_371:
	mov	rdi, rdx
	nop	
.label_275:
	mov	al, byte ptr [rdx]
	movzx	ecx, al
	lea	ebp, [rcx - 9]
	cmp	ebp, 0x17
	ja	.label_282
	inc	rdx
.label_428:
	mov	rsi, rdx
	bt	r15d, ebp
	jae	.label_287
	mov	qword ptr [r13], rsi
	mov	al, byte ptr [rsi]
	movzx	ecx, al
	lea	ebp, [rcx - 9]
	lea	rdx, [rsi + 1]
	cmp	ebp, 0x18
	mov	rdi, rsi
	jb	.label_428
	dec	rdx
	mov	rdi, rsi
	jmp	.label_282
	nop	dword ptr [rax]
.label_287:
	dec	rsi
	mov	rdx, rsi
.label_282:
	lea	esi, [rcx - 0x30]
	cmp	esi, 0xa
	jae	.label_297
	cmp	al, 0x2d
	je	.label_299
	xor	ecx, ecx
	cmp	al, 0x2b
	je	.label_299
	jmp	.label_244
	nop	dword ptr [rax]
.label_297:
	cmp	al, 0x2b
	je	.label_299
	cmp	al, 0x2d
	jne	.label_307
.label_299:
	inc	rdx
	mov	rsi, rdx
	nop	
.label_320:
	mov	rdx, rsi
	mov	qword ptr [r13], rdx
	mov	bpl, byte ptr [rdx]
	movzx	ecx, bpl
	lea	edi, [rcx - 9]
	cmp	edi, 0x17
	ja	.label_310
	lea	rsi, [rdx + 1]
	bt	r15d, edi
	jb	.label_320
.label_310:
	add	ecx, -0x30
	cmp	ecx, 9
	mov	rdi, rdx
	ja	.label_275
	jmp	.label_328
.label_307:
	add	ecx, -0x41
	cmp	ecx, 0x39
	ja	.label_330
	movabs	rsi, 0x3ffffff03ffffff
	bt	rsi, rcx
	jb	.label_260
.label_330:
	cmp	al, 0x28
	mov	rsi, qword ptr [rsp + 0x48]
	jne	.label_340
	xor	eax, eax
	nop	dword ptr [rax]
.label_368:
	mov	rcx, rdx
	lea	rdx, [rcx + 1]
	mov	qword ptr [r13], rdx
	movzx	ebx, byte ptr [rcx]
	cmp	bl, 0x28
	je	.label_344
	cmp	bl, 0x29
	je	.label_352
	xor	ecx, ecx
	test	bl, bl
	jne	.label_353
	jmp	.label_230
	nop	word ptr cs:[rax + rax]
.label_352:
	dec	rax
	jmp	.label_353
	nop	word ptr cs:[rax + rax]
.label_344:
	inc	rax
.label_353:
	test	rax, rax
	jne	.label_368
	jmp	.label_371
.label_328:
	cmp	al, 0x2d
	mov	ecx, 1
	mov	eax, 0xffffffff
	cmove	ecx, eax
	jne	.label_286
	mov	rsi, rdx
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_414:
	mov	ebx, 0x3f
	test	rax, rax
	js	.label_385
	movabs	rdi, 0xccccccccccccccc
	cmp	rax, rdi
	jle	.label_388
	jmp	.label_136
	nop	
.label_385:
	movabs	rdi, 0xf333333333333334
	cmp	rax, rdi
	jl	.label_136
.label_388:
	add	rax, rax
	lea	rdi, [rax + rax*4]
	movzx	eax, bpl
	mov	ebp, 0x30
	sub	ebp, eax
	movsxd	rax, ebp
	js	.label_395
	lea	rbp, [r10 - 1]
	sub	rbp, rax
	mov	ebx, 0x3f
	cmp	rbp, rdi
	jge	.label_407
	jmp	.label_136
.label_395:
	mov	rbp, r10
	sub	rbp, rax
	mov	ebx, 0x3f
	cmp	rdi, rbp
	jl	.label_136
.label_407:
	add	rax, rdi
	movzx	ebp, byte ptr [rsi + 1]
	inc	rsi
	mov	edi, ebp
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_414
	mov	qword ptr [rsp + 0x60], r9
	mov	qword ptr [rsp + 0x58], r8
	lea	r9, [rsi - 1]
	mov	r8b, 1
	mov	rdi, rdx
	jmp	.label_419
.label_286:
	mov	ecx, 1
	mov	al, bpl
	mov	rdi, rdx
.label_244:
	mov	bpl, al
	mov	rsi, rdx
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_170:
	mov	ebx, 0x3f
	test	rax, rax
	js	.label_431
	movabs	rdx, 0xccccccccccccccc
	cmp	rax, rdx
	jle	.label_435
	jmp	.label_136
	nop	
.label_431:
	movabs	rdx, 0xf333333333333334
	cmp	rax, rdx
	jl	.label_136
.label_435:
	add	rax, rax
	lea	rdx, [rax + rax*4]
	movzx	eax, bpl
	cmp	al, 0x2f
	ja	.label_146
	lea	rbp, [r10 + 0x30]
	sub	rbp, rax
	mov	ebx, 0x3f
	cmp	rdx, rbp
	jge	.label_152
	jmp	.label_136
	nop	dword ptr [rax + rax]
.label_146:
	lea	rbp, [r10 + 0x2f]
	sub	rbp, rax
	mov	ebx, 0x3f
	cmp	rbp, rdx
	jl	.label_136
.label_152:
	lea	rax, [rax - 0x30]
	add	rax, rdx
	movzx	ebp, byte ptr [rsi + 1]
	inc	rsi
	mov	edx, ebp
	add	edx, -0x30
	cmp	edx, 0xa
	jb	.label_170
	mov	qword ptr [rsp + 0x60], r9
	mov	qword ptr [rsp + 0x58], r8
	lea	r9, [rsi - 1]
	xor	r8d, r8d
.label_419:
	or	bpl, 2
	cmp	bpl, 0x2e
	jne	.label_188
	movsx	edx, byte ptr [r9 + 2]
	add	edx, -0x30
	cmp	edx, 9
	ja	.label_188
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [r9 + 3]
	add	esi, -0x30
	lea	rdi, [r9 + 3]
	add	r9, 4
	cmp	esi, 0xa
	cmovae	r9, rdi
	mov	ebx, 0
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [r9]
	add	esi, -0x30
	lea	rdi, [r9 + 1]
	cmp	esi, 0xa
	cmovae	rdi, r9
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rdi]
	add	esi, -0x30
	lea	rbp, [rdi + 1]
	cmp	esi, 0xa
	cmovae	rbp, rdi
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rbp]
	add	esi, -0x30
	lea	rdi, [rbp + 1]
	cmp	esi, 0xa
	cmovae	rdi, rbp
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rdi]
	add	esi, -0x30
	lea	rbp, [rdi + 1]
	cmp	esi, 0xa
	cmovae	rbp, rdi
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rbp]
	add	esi, -0x30
	lea	rdi, [rbp + 1]
	cmp	esi, 0xa
	cmovae	rdi, rbp
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rdi]
	add	esi, -0x30
	lea	rbp, [rdi + 1]
	cmp	esi, 0xa
	cmovae	rbp, rdi
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	esi, [rdx + rdx*4]
	movsx	edi, byte ptr [rbp]
	add	edi, -0x30
	lea	rdx, [rbp + 1]
	cmp	edi, 0xa
	cmovae	rdx, rbp
	cmovae	edi, ebx
	lea	esi, [rdi + rsi*2]
	test	r8b, r8b
	je	.label_198
	movsx	ebp, byte ptr [rdx]
	mov	edi, ebp
	add	edi, -0x30
	cmp	edi, 9
	mov	r9, qword ptr [rsp + 0x60]
	ja	.label_261
	nop	
.label_269:
	cmp	bpl, 0x30
	jne	.label_265
	movsx	ebp, byte ptr [rdx + 1]
	inc	rdx
	mov	edi, ebp
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_269
	jmp	.label_261
.label_188:
	mov	edx, ecx
	shr	edx, 0x1f
	mov	dword ptr [rsp + 0xb4], edx
	mov	qword ptr [r13], rsi
	sub	rsi, rdi
	xor	ebx, ebx
	test	ecx, ecx
	sete	bl
	or	ebx, 0x112
	mov	qword ptr [rsp + 0xd8], rsi
	mov	r8, qword ptr [rsp + 0x58]
	mov	rsi, qword ptr [rsp + 0x48]
	jmp	.label_285
.label_340:
	lea	rax, [rdx + 1]
	mov	qword ptr [r13], rax
	movzx	ebx, byte ptr [rdx]
	jmp	.label_272
.label_260:
	lea	rsi, [rsp + 0x70]
	mov	rbp, qword ptr [rsp + 0xe8]
	nop	word ptr cs:[rax + rax]
.label_318:
	lea	rcx, [rsp + 0x83]
	cmp	rsi, rcx
	jae	.label_245
	mov	byte ptr [rsi], al
	inc	rsi
	mov	rdx, qword ptr [r13]
.label_245:
	mov	rax, rdx
	lea	rdx, [rax + 1]
	mov	qword ptr [r13], rdx
	movzx	eax, byte ptr [rax + 1]
	mov	ecx, eax
	add	ecx, -0x41
	cmp	ecx, 0x39
	ja	.label_303
	mov	rdi, rbp
	shr	rdi, cl
	and	edi, 1
	jmp	.label_280
	nop	word ptr [rax + rax]
.label_303:
	xor	edi, edi
.label_280:
	cmp	al, 0x2e
	je	.label_318
	test	dil, dil
	jne	.label_318
	mov	byte ptr [rsi], 0
	mov	al, byte ptr [rsp + 0x70]
	test	al, al
	je	.label_322
	lea	rcx, [rsp + 0x71]
	nop	dword ptr [rax + rax]
.label_335:
	movzx	edx, al
	add	edx, -0x61
	cmp	edx, 0x1a
	jae	.label_329
	add	al, 0xe0
.label_329:
	mov	byte ptr [rcx - 1], al
	movzx	eax, byte ptr [rcx]
	inc	rcx
	test	al, al
	jne	.label_335
.label_322:
	mov	qword ptr [rsp + 0x60], r9
	mov	rbp, r8
	mov	esi, OFFSET FLAT:label_339
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:meridian_table
	je	.label_139
	mov	esi, OFFSET FLAT:label_348
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_356
	je	.label_139
	mov	esi, OFFSET FLAT:label_235
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_366
	je	.label_139
	mov	esi, OFFSET FLAT:label_369
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_377
	je	.label_139
	lea	rdi, [rsp + 0x70]
	call	strlen
	cmp	rax, 3
	mov	qword ptr [rsp + 0x90], rax
	je	.label_384
	cmp	rax, 4
	jne	.label_374
	cmp	byte ptr [rsp + 0x73], 0x2e
	jne	.label_374
.label_384:
	mov	esi, OFFSET FLAT:label_256
	mov	ebx, OFFSET FLAT:month_and_day_table
.label_403:
	mov	edx, 3
	lea	rdi, [rsp + 0x70]
	call	strncmp
	test	eax, eax
	je	.label_399
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_403
.label_214:
	mov	rdi, r13
	lea	rsi, [rsp + 0x70]
	call	lookup_zone
	test	rax, rax
	jne	.label_139
	mov	esi, OFFSET FLAT:label_410
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:dst_table
	je	.label_139
	mov	esi, OFFSET FLAT:label_211
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:time_units_table
	je	.label_139
	mov	esi, OFFSET FLAT:label_223
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_225
	je	.label_139
	mov	esi, OFFSET FLAT:label_314
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_236
	je	.label_139
	mov	esi, OFFSET FLAT:label_209
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_138
	je	.label_139
	mov	esi, OFFSET FLAT:label_143
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_149
	je	.label_139
	mov	esi, OFFSET FLAT:label_155
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_160
	je	.label_139
	mov	esi, OFFSET FLAT:label_165
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_171
	je	.label_139
	mov	esi, OFFSET FLAT:label_177
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_181
	je	.label_139
	mov	esi, OFFSET FLAT:label_186
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_192
	je	.label_139
	mov	esi, OFFSET FLAT:label_196
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_202
	je	.label_139
	mov	rax, qword ptr [rsp + 0x90]
	cmp	byte ptr [rsp + rax + 0x6f], 0x53
	jne	.label_208
	mov	rax, qword ptr [rsp + 0x90]
	mov	byte ptr [rsp + rax + 0x6f], 0
	mov	esi, OFFSET FLAT:label_211
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:time_units_table
	je	.label_139
	mov	esi, OFFSET FLAT:label_223
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_225
	je	.label_139
	mov	esi, OFFSET FLAT:label_314
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_236
	je	.label_139
	mov	esi, OFFSET FLAT:label_209
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_138
	je	.label_139
	mov	esi, OFFSET FLAT:label_143
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_149
	je	.label_139
	mov	esi, OFFSET FLAT:label_155
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_160
	je	.label_139
	mov	esi, OFFSET FLAT:label_165
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_171
	je	.label_139
	mov	esi, OFFSET FLAT:label_177
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_181
	je	.label_139
	mov	esi, OFFSET FLAT:label_186
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_192
	je	.label_139
	mov	esi, OFFSET FLAT:label_196
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_202
	je	.label_139
	mov	rax, qword ptr [rsp + 0x90]
	mov	byte ptr [rsp + rax + 0x6f], 0x53
.label_208:
	mov	esi, OFFSET FLAT:label_434
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:relative_time_table
	je	.label_139
	mov	esi, OFFSET FLAT:label_295
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_220
	je	.label_139
	mov	esi, OFFSET FLAT:label_302
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_306
	je	.label_139
	mov	esi, OFFSET FLAT:label_283
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_316
	je	.label_139
	mov	esi, OFFSET FLAT:label_323
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_153
	je	.label_139
	mov	esi, OFFSET FLAT:label_334
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_338
	je	.label_139
	mov	esi, OFFSET FLAT:label_343
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_346
	je	.label_139
	mov	esi, OFFSET FLAT:label_350
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_357
	je	.label_139
	mov	esi, OFFSET FLAT:label_360
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_367
	je	.label_139
	mov	esi, OFFSET FLAT:label_277
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_378
	je	.label_139
	mov	esi, OFFSET FLAT:label_382
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_387
	je	.label_139
	mov	esi, OFFSET FLAT:label_390
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_386
	je	.label_139
	mov	esi, OFFSET FLAT:label_393
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_401
	je	.label_139
	mov	esi, OFFSET FLAT:label_405
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_409
	je	.label_139
	mov	esi, OFFSET FLAT:label_411
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_413
	je	.label_139
	mov	esi, OFFSET FLAT:label_416
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_420
	je	.label_139
	mov	esi, OFFSET FLAT:label_273
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_162
	je	.label_139
	mov	esi, OFFSET FLAT:label_380
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_433
	je	.label_139
	mov	esi, OFFSET FLAT:label_436
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_140
	je	.label_139
	mov	esi, OFFSET FLAT:label_144
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_210
	je	.label_139
	movzx	esi, word ptr [rsp + 0x70]
	cmp	qword ptr [rsp + 0x90], 1
	mov	ecx, esi
	jne	.label_156
	cmp	cl, 0x41
	mov	eax, OFFSET FLAT:military_table
	je	.label_139
	cmp	cl, 0x42
	mov	eax, OFFSET FLAT:label_168
	je	.label_139
	cmp	cl, 0x43
	mov	eax, OFFSET FLAT:label_175
	je	.label_139
	cmp	cl, 0x44
	mov	eax, OFFSET FLAT:label_325
	je	.label_139
	cmp	cl, 0x45
	mov	eax, OFFSET FLAT:label_183
	je	.label_139
	cmp	cl, 0x46
	mov	eax, OFFSET FLAT:label_190
	je	.label_139
	cmp	cl, 0x47
	mov	eax, OFFSET FLAT:label_194
	je	.label_139
	cmp	cl, 0x48
	mov	eax, OFFSET FLAT:label_201
	je	.label_139
	cmp	cl, 0x49
	mov	eax, OFFSET FLAT:label_205
	je	.label_139
	cmp	cl, 0x4b
	mov	eax, OFFSET FLAT:label_187
	je	.label_139
	cmp	cl, 0x4c
	mov	eax, OFFSET FLAT:label_216
	je	.label_139
	cmp	cl, 0x4d
	mov	eax, OFFSET FLAT:label_218
	je	.label_139
	cmp	cl, 0x4e
	mov	eax, OFFSET FLAT:label_219
	je	.label_139
	cmp	cl, 0x4f
	mov	eax, OFFSET FLAT:label_361
	je	.label_139
	cmp	cl, 0x50
	mov	eax, OFFSET FLAT:label_228
	je	.label_139
	cmp	cl, 0x51
	mov	eax, OFFSET FLAT:label_231
	je	.label_139
	cmp	cl, 0x52
	mov	eax, OFFSET FLAT:label_237
	je	.label_139
	cmp	cl, 0x53
	mov	eax, OFFSET FLAT:label_239
	je	.label_139
	cmp	cl, 0x54
	mov	eax, OFFSET FLAT:label_241
	je	.label_139
	cmp	cl, 0x55
	mov	eax, OFFSET FLAT:label_243
	je	.label_139
	cmp	cl, 0x56
	mov	eax, OFFSET FLAT:label_248
	je	.label_139
	cmp	cl, 0x57
	mov	eax, OFFSET FLAT:label_250
	je	.label_139
	cmp	cl, 0x58
	mov	eax, OFFSET FLAT:label_254
	je	.label_139
	cmp	cl, 0x59
	mov	eax, OFFSET FLAT:label_234
	je	.label_139
	test	cl, cl
	je	.label_164
	cmp	cl, 0x5a
	mov	eax, OFFSET FLAT:label_264
	je	.label_139
	jmp	.label_268
.label_198:
	mov	r9, qword ptr [rsp + 0x60]
	jmp	.label_261
.label_265:
	inc	esi
.label_261:
	dec	rdx
	nop	dword ptr [rax]
.label_271:
	movsx	edi, byte ptr [rdx + 1]
	inc	rdx
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_271
	test	esi, esi
	setne	bl
	and	r8b, bl
	cmp	r8b, 1
	jne	.label_276
	mov	ebx, 0x3f
	cmp	rax, r10
	mov	r8, qword ptr [rsp + 0x58]
	jne	.label_281
.label_136:
	mov	rax, r9
	mov	rsi, qword ptr [rsp + 0x48]
	jmp	.label_285
.label_276:
	mov	r8, qword ptr [rsp + 0x58]
	jmp	.label_289
.label_281:
	dec	rax
	mov	edi, 0x3b9aca00
	sub	edi, esi
	mov	esi, edi
.label_289:
	mov	rdi, rax
	shr	rdi, 8
	mov	qword ptr [rsp + 0xc8], rdi
	mov	dword ptr [rsp + 0xb4], eax
	movsxd	rax, esi
	mov	qword ptr [r13], rdx
	xor	ebx, ebx
	test	ecx, ecx
	sete	bl
	or	ebx, 0x114
	mov	rsi, qword ptr [rsp + 0x48]
	jmp	.label_285
.label_374:
	mov	esi, OFFSET FLAT:label_256
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:month_and_day_table
	je	.label_139
	mov	esi, OFFSET FLAT:label_315
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_331
	je	.label_139
	mov	esi, OFFSET FLAT:label_326
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_333
	je	.label_139
	mov	esi, OFFSET FLAT:label_337
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_342
	je	.label_139
	mov	esi, OFFSET FLAT:label_151
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_349
	je	.label_139
	mov	esi, OFFSET FLAT:label_355
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_359
	je	.label_139
	mov	esi, OFFSET FLAT:label_365
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_370
	je	.label_139
	mov	esi, OFFSET FLAT:label_376
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_381
	je	.label_139
	mov	esi, OFFSET FLAT:label_351
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_389
	je	.label_139
	mov	esi, OFFSET FLAT:label_406
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_392
	je	.label_139
	mov	esi, OFFSET FLAT:label_145
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_404
	je	.label_139
	mov	esi, OFFSET FLAT:label_408
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_161
	je	.label_139
	mov	esi, OFFSET FLAT:label_249
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_421
	je	.label_139
	mov	esi, OFFSET FLAT:label_291
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_274
	je	.label_139
	mov	esi, OFFSET FLAT:label_206
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_255
	je	.label_139
	mov	esi, OFFSET FLAT:label_400
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_423
	je	.label_139
	mov	esi, OFFSET FLAT:label_137
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_173
	je	.label_139
	mov	esi, OFFSET FLAT:label_148
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_226
	je	.label_139
	mov	esi, OFFSET FLAT:label_159
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_270
	je	.label_139
	mov	esi, OFFSET FLAT:label_169
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_312
	je	.label_139
	mov	esi, OFFSET FLAT:label_179
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_184
	je	.label_139
	mov	esi, OFFSET FLAT:label_383
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_193
	je	.label_139
	mov	esi, OFFSET FLAT:label_197
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_203
	je	.label_139
	mov	esi, OFFSET FLAT:label_207
	lea	rdi, [rsp + 0x70]
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_213
	jne	.label_214
	jmp	.label_139
.label_399:
	mov	rax, rbx
.label_139:
	mov	ebx, dword ptr [rax + 8]
	mov	eax, dword ptr [rax + 0xc]
	mov	dword ptr [rsp + 0xb4], eax
	sar	eax, 8
	cdqe	
	mov	qword ptr [rsp + 0xc8], rax
.label_204:
	movabs	r10, 0x8000000000000000
	mov	r8, rbp
	mov	r9, qword ptr [rsp + 0x60]
	mov	rsi, qword ptr [rsp + 0x48]
	nop	word ptr cs:[rax + rax]
.label_272:
	xor	ecx, ecx
	test	ebx, ebx
	jle	.label_230
	mov	ecx, 2
	cmp	ebx, 0x115
	mov	rax, r9
	ja	.label_232
.label_285:
	movsxd	rcx, ebx
	movzx	ecx, byte ptr [rcx + yytranslate]
	mov	r9, rax
	jmp	.label_232
	nop	word ptr cs:[rax + rax]
.label_230:
	xor	ebx, ebx
.label_232:
	add	r14d, ecx
	cmp	r14d, 0x70
	ja	.label_242
	movsxd	rdx, r14d
	movsx	eax, byte ptr [rdx + yycheck]
	cmp	eax, ecx
	jne	.label_242
	movzx	eax, byte ptr [rdx + yytable]
	or	rdx, 4
	cmp	rdx, 0x6f
	jne	.label_247
	neg	eax
	jmp	.label_251
	nop	word ptr cs:[rax + rax]
.label_242:
	movzx	eax, byte ptr [rsi + yydefact]
	test	eax, eax
	mov	ebp, 1
	je	.label_174
.label_251:
	movsxd	rdi, eax
	movzx	r14d, byte ptr [rdi + yyr2]
	mov	eax, 1
	sub	rax, r14
	imul	rax, rax, 0x38
	mov	r11, qword ptr [r12 + rax]
	mov	rcx, qword ptr [r12 + rax + 8]
	mov	qword ptr [rsp + 0x48], rcx
	mov	rsi, qword ptr [r12 + rax + 0x10]
	mov	rcx, qword ptr [r12 + rax + 0x18]
	mov	qword ptr [rsp + 0x90], rcx
	mov	rcx, qword ptr [r12 + rax + 0x20]
	mov	qword ptr [rsp + 0xa0], rcx
	mov	rcx, qword ptr [r12 + rax + 0x28]
	mov	qword ptr [rsp + 0x98], rcx
	mov	ecx, dword ptr [r12 + rax + 0x30]
	mov	dword ptr [rsp + 0x44], ecx
	mov	edx, dword ptr [r12 + rax + 0x34]
	lea	eax, [rdi - 4]
	cmp	eax, 0x57
	ja	.label_150
	jmp	qword ptr [(rax * 8) + label_290]
.label_1514:
	mov	rax, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r12]
	movups	xmm1, xmmword ptr [r12 + 0x10]
	movups	xmm2, xmmword ptr [r12 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	ebp, 1
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, 1
	mov	qword ptr [rsp + 0x50], rdi
	mov	rdi, r13
	mov	qword ptr [rsp + 0x58], r8
	mov	qword ptr [rsp + 0x60], r9
	mov	dword ptr [rsp + 0x40], edx
	mov	qword ptr [rsp + 0xa8], r11
	call	apply_relative_time
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	edx, dword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	r9, qword ptr [rsp + 0x60]
	mov	r8, qword ptr [rsp + 0x58]
	movabs	r10, 0x8000000000000000
	jmp	.label_319
.label_247:
	mov	rcx, qword ptr [rsp + 0xc8]
	shl	rcx, 8
	mov	edx, dword ptr [rsp + 0xb4]
	movzx	edx, dl
	or	rdx, rcx
	mov	qword ptr [r12 + 0x38], rdx
	mov	qword ptr [r12 + 0x40], r9
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	qword ptr [r12 + 0x48], rcx
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r12 + 0x60], xmm0
	movdqu	xmmword ptr [r12 + 0x50], xmm0
	lea	rcx, [r12 + 0x38]
	mov	ebx, 0xfffffffe
	jmp	.label_292
.label_1528:
	mov	rax, qword ptr [r12 - 0x30]
	jmp	.label_362
.label_1535:
	mov	r11, qword ptr [r12 + 8]
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	jmp	.label_150
.label_1516:
	mov	r11, qword ptr [r12 - 0x30]
	jmp	.label_375
.label_1531:
	mov	rax, qword ptr [r12 - 0x30]
	jmp	.label_379
.label_1519:
	mov	rax, qword ptr [r12 - 0x30]
	jmp	.label_324
.label_1532:
	mov	rax, qword ptr [r12 - 0x38]
	mov	qword ptr [rsp + 0x98], rax
	mov	eax, dword ptr [r12 - 0x30]
	mov	dword ptr [rsp + 0x44], eax
	xor	r11d, r11d
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	esi, esi
	xor	eax, eax
	mov	qword ptr [rsp + 0x90], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0xa0], rax
	jmp	.label_150
.label_1523:
	mov	rsi, qword ptr [r12]
	jmp	.label_398
.label_1525:
	mov	rax, qword ptr [r12 - 0x30]
	jmp	.label_163
.label_1537:
	mov	qword ptr [rsp + 0x50], rdi
	movdqu	xmm0, xmmword ptr [r12 - 0x38]
	mov	rdi, qword ptr [r12 - 0x28]
	mov	rax, qword ptr [r13 + 0xa8]
	test	rax, rax
	mov	qword ptr [rsp + 0x58], r8
	mov	qword ptr [rsp + 0x60], r9
	mov	dword ptr [rsp + 0x40], edx
	mov	qword ptr [rsp + 0x68], rsi
	mov	qword ptr [rsp + 0xa8], r11
	je	.label_185
	cmp	qword ptr [r13 + 0x30], 0
	jne	.label_185
	cmp	byte ptr [r13 + 0xa1], 0
	je	.label_418
.label_185:
	cmp	rdi, 5
	jl	.label_424
	inc	rax
	mov	qword ptr [r13 + 0xa8], rax
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	movabs	rbp, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rbp
	mov	rsi, rdx
	add	rsi, rcx
	mov	rax, rsi
	shr	rax, 0x3f
	sar	rsi, 6
	add	rsi, rax
	imul	rax, rsi, 0x64
	mov	rdx, rcx
	sub	rdx, rax
	mov	qword ptr [r13 + 0x40], rdx
	mov	rax, rsi
	imul	rbp
	add	rdx, rsi
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x64
	sub	rsi, rax
	mov	qword ptr [r13 + 0x38], rsi
	movabs	rdx, 0x346dc5d63886594b
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0xb
	add	rdx, rax
	mov	qword ptr [r13 + 0x28], rdx
	add	rdi, -4
	mov	qword ptr [r13 + 0x30], rdi
	jmp	.label_147
.label_1521:
	mov	rsi, qword ptr [r12]
	test	rsi, rsi
	js	.label_172
	lea	r11, [r12 - 0x38]
	jmp	.label_178
.label_1520:
	xor	r11d, r11d
	mov	eax, 1
	jmp	.label_180
.label_1513:
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, dword ptr [r12]
	mov	rax, qword ptr [r12 - 8]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r12 - 0x38]
	movups	xmm1, xmmword ptr [r12 - 0x28]
	movups	xmm2, xmmword ptr [r12 - 0x18]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	qword ptr [rsp + 0x50], rdi
	mov	rdi, r13
	mov	qword ptr [rsp + 0x58], r8
	mov	rbp, r9
	mov	dword ptr [rsp + 0x40], edx
	mov	qword ptr [rsp + 0xa8], r11
	call	apply_relative_time
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	edx, dword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	r9, rbp
	mov	r8, qword ptr [rsp + 0x58]
	movabs	r10, 0x8000000000000000
	mov	ebp, 1
.label_319:
	test	al, al
	jne	.label_150
	jmp	.label_174
.label_1512:
	mov	rax, qword ptr [r12 - 0x60]
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [r12 - 0x70]
	movdqu	xmmword ptr [rcx], xmm0
	mov	rax, qword ptr [r12 - 0x30]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r10
	mov	qword ptr [r13 + 0x38], rcx
	mov	ebp, 1
	je	.label_174
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r10
	mov	qword ptr [r13 + 0x40], rcx
	jne	.label_150
	jmp	.label_174
.label_1664:
	mov	rax, qword ptr [r12 - 0x30]
	mov	qword ptr [r13 + 0x40], rax
	mov	rax, qword ptr [r12]
	mov	qword ptr [r13 + 0x38], rax
	jmp	.label_150
.label_1538:
	mov	r11, -1
	jmp	.label_150
.label_1646:
	mov	dword ptr [r13 + 0x14], 1
	inc	qword ptr [r13 + 0xc0]
	jmp	.label_150
.label_1649:
	mov	eax, dword ptr [r12 - 0x38]
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_263
.label_1641:
	mov	rax, qword ptr [r12 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xd0]
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [r13 + 0x1c], 2
	jmp	.label_150
.label_1653:
	mov	eax, 0xe10
	add	eax, dword ptr [r12 - 0x38]
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_150
.label_1651:
	mov	dword ptr [rsp + 0x40], edx
	mov	rdx, qword ptr [r12 - 0x30]
	imul	rcx, rdx, 0x64
	cmp	qword ptr [r12 - 0x28], 3
	mov	rax, qword ptr [r12]
	cmovge	rcx, rdx
	test	rax, rax
	cmovns	rcx, rdx
	js	.label_284
	mov	rbp, rsi
	mov	dl, byte ptr [r12 - 0x38]
	test	rcx, rcx
	js	.label_294
	movabs	rsi, 0x222222222222222
	cmp	rcx, rsi
	jg	.label_278
	jmp	.label_301
.label_1638:
	mov	rax, qword ptr [r12 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xd0]
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_305
.label_1661:
	mov	rax, qword ptr [r12 - 0x70]
	mov	qword ptr [r13 + 0x38], rax
	mov	rax, qword ptr [r12 - 0x30]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r10
	mov	qword ptr [r13 + 0x40], rcx
	mov	ebp, 1
	je	.label_174
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r10
	mov	qword ptr [r13 + 0x28], rcx
	jne	.label_332
	jmp	.label_174
.label_1656:
	mov	rax, qword ptr [r12 - 0x38]
	jmp	.label_341
.label_1650:
	mov	dword ptr [r13 + 0x18], 0x6270
.label_263:
	mov	rax, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r12]
	movups	xmm1, xmmword ptr [r12 + 0x10]
	movups	xmm2, xmmword ptr [r12 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	ebp, 1
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, 1
	mov	qword ptr [rsp + 0x50], rdi
	mov	rdi, r13
	mov	qword ptr [rsp + 0x58], r8
	mov	qword ptr [rsp + 0x60], r9
	mov	dword ptr [rsp + 0x40], edx
	mov	qword ptr [rsp + 0xa8], r11
	call	apply_relative_time
	test	al, al
	je	.label_174
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r13
	call	debug_print_relative_time
	mov	r11, qword ptr [rsp + 0xa8]
	jmp	.label_304
.label_1640:
	mov	rax, qword ptr [r12 - 0x110]
	mov	rcx, qword ptr [r12 - 0xa0]
	mov	ebp, edx
	mov	rdx, qword ptr [r12 - 0x38]
	mov	r10, r9
	mov	r9, r11
	mov	r11, rsi
	movsxd	rsi, dword ptr [r12 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	mov	qword ptr [r13 + 0x50], rcx
	mov	qword ptr [r13 + 0x58], rdx
	mov	edx, ebp
	mov	qword ptr [r13 + 0x60], rsi
	mov	rsi, r11
	mov	r11, r9
	mov	r9, r10
	movabs	r10, 0x8000000000000000
	jmp	.label_305
.label_1647:
	mov	eax, dword ptr [r12]
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_150
.label_1630:
	inc	qword ptr [r13 + 0xc8]
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_415
	jmp	.label_200
.label_1657:
	mov	rax, qword ptr [r12 - 0x30]
.label_341:
	mov	qword ptr [r13 + 8], rax
	mov	eax, dword ptr [r12]
	mov	dword ptr [r13 + 0x10], eax
	mov	byte ptr [r13 + 0xe0], 1
	jmp	.label_150
.label_1659:
	mov	rbp, qword ptr [r12 - 0xd0]
	mov	al, byte ptr [r13 + 0xd9]
	cmp	rbp, 4
	jl	.label_429
	lea	rcx, [r12 - 0xe0]
	mov	qword ptr [rsp + 0xe0], rcx
	test	al, al
	je	.label_417
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_141
	mov	dword ptr [rsp + 0x40], edx
	mov	edx, 5
	mov	qword ptr [rsp + 0x58], r8
	mov	qword ptr [rsp + 0x60], r9
	mov	qword ptr [rsp + 0xa8], r11
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [r12 - 0xd8]
	xor	eax, eax
	mov	rdi, rcx
	mov	rdx, rbp
	call	dbg_printf
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	edx, dword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	r9, qword ptr [rsp + 0x60]
	mov	r8, qword ptr [rsp + 0x58]
	movabs	r10, 0x8000000000000000
.label_417:
	mov	rbp, qword ptr [rsp + 0xe0]
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [rbp]
	movdqu	xmmword ptr [rcx], xmm0
.label_1658:
	mov	rax, qword ptr [r12 - 0x68]
	jmp	.label_195
.label_1633:
	inc	qword ptr [r13 + 0xa8]
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_199
	jmp	.label_200
.label_1639:
	mov	rax, qword ptr [r12 - 0xa0]
	mov	rcx, qword ptr [r12 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	mov	qword ptr [r13 + 0x50], rcx
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rax], xmm0
.label_305:
	mov	eax, dword ptr [r12]
	mov	dword ptr [r13 + 0x1c], eax
	jmp	.label_150
.label_1652:
	mov	eax, 0xe10
	add	eax, dword ptr [r12]
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_150
.label_1628:
	movdqu	xmm0, xmmword ptr [r12]
	mov	rax, qword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rax], xmm0
	mov	byte ptr [r13 + 0xa0], 1
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_227
	jmp	.label_200
.label_1629:
	inc	qword ptr [r13 + 0xc8]
	inc	qword ptr [r13 + 0xa8]
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_240
	jmp	.label_200
.label_1634:
	inc	qword ptr [r13 + 0xb0]
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_246
	jmp	.label_200
.label_1635:
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_252
	jmp	.label_253
.label_1642:
	mov	rax, qword ptr [r12 - 0xa0]
	mov	rcx, qword ptr [r12 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	mov	qword ptr [r13 + 0x50], rcx
	jmp	.label_262
.label_1517:
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	mov	r11d, 1
	jmp	.label_267
.label_1643:
	mov	rax, qword ptr [r12 - 0x110]
	mov	rcx, qword ptr [r12 - 0xa0]
	mov	ebp, edx
	mov	rdx, qword ptr [r12 - 0x38]
	mov	r10, r9
	mov	r9, r11
	mov	r11, rsi
	movsxd	rsi, dword ptr [r12 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	mov	qword ptr [r13 + 0x50], rcx
	mov	qword ptr [r13 + 0x58], rdx
	mov	edx, ebp
	mov	qword ptr [r13 + 0x60], rsi
	mov	rsi, r11
	mov	r11, r9
	mov	r9, r10
	movabs	r10, 0x8000000000000000
	mov	dword ptr [r13 + 0x1c], 2
	jmp	.label_150
.label_1631:
	inc	qword ptr [r13 + 0xb8]
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_293
	jmp	.label_200
.label_1632:
	inc	qword ptr [r13 + 0xd0]
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_298
	jmp	.label_200
.label_1539:
	mov	r11, qword ptr [r12 + 8]
	jmp	.label_150
.label_1511:
	mov	rax, qword ptr [r12 - 0x68]
	mov	qword ptr [r13 + 0x40], rax
	mov	rax, qword ptr [r12 - 0x38]
	mov	qword ptr [r13 + 0x38], rax
	jmp	.label_311
.label_1518:
	mov	rax, qword ptr [r12 - 0x38]
.label_324:
	mov	qword ptr [rsp + 0x48], rax
	xor	r11d, r11d
	jmp	.label_267
.label_1637:
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_327
.label_253:
	mov	dword ptr [rsp + 0x40], edx
	mov	edx, 5
	mov	qword ptr [rsp + 0x58], r8
	mov	qword ptr [rsp + 0x60], r9
	mov	rbp, r11
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r13
	call	debug_print_relative_time
	jmp	.label_157
.label_1524:
	mov	rax, qword ptr [r12 - 0x38]
.label_163:
	mov	qword ptr [rsp + 0x90], rax
	xor	r11d, r11d
	jmp	.label_347
.label_1636:
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_354
.label_200:
	mov	dword ptr [rsp + 0x40], edx
	mov	edx, 5
	mov	qword ptr [rsp + 0x58], r8
	mov	qword ptr [rsp + 0x60], r9
	mov	rbp, r11
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r13
	call	debug_print_current_time
.label_157:
	mov	r11, rbp
.label_304:
	mov	rsi, qword ptr [rsp + 0x68]
	mov	edx, dword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	r9, qword ptr [rsp + 0x60]
	mov	r8, qword ptr [rsp + 0x58]
	movabs	r10, 0x8000000000000000
	jmp	.label_150
.label_1645:
	mov	eax, dword ptr [r12]
	mov	dword ptr [r13 + 0x14], eax
	jmp	.label_150
.label_1662:
	mov	rax, qword ptr [r12 - 0x38]
.label_195:
	mov	qword ptr [r13 + 0x38], rax
	mov	rax, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x40], rax
	jmp	.label_150
.label_1644:
	mov	dword ptr [rsp + 0x40], edx
	inc	qword ptr [r13 + 0xd0]
	mov	rdx, qword ptr [r12 - 0x30]
	imul	rcx, rdx, 0x64
	cmp	qword ptr [r12 - 0x28], 3
	mov	rax, qword ptr [r12]
	cmovge	rcx, rdx
	test	rax, rax
	cmovns	rcx, rdx
	js	.label_394
	mov	rbp, rsi
	mov	dl, byte ptr [r12 - 0x38]
	test	rcx, rcx
	js	.label_364
	movabs	rsi, 0x222222222222222
	cmp	rcx, rsi
	jg	.label_412
	jmp	.label_391
.label_1515:
	mov	r11, qword ptr [r12 - 0x38]
.label_375:
	xor	eax, eax
.label_180:
	mov	qword ptr [rsp + 0x48], rax
.label_267:
	xor	esi, esi
	jmp	.label_422
.label_1648:
	mov	dword ptr [r13 + 0x18], 0x6270
	jmp	.label_150
.label_1530:
	mov	rax, qword ptr [r12 - 0x38]
.label_379:
	mov	qword ptr [rsp + 0x98], rax
	xor	r11d, r11d
	jmp	.label_426
.label_1536:
	mov	qword ptr [rsp + 0x50], rdi
	movdqu	xmm0, xmmword ptr [r12]
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rax, qword ptr [r13 + 0xa8]
	test	rax, rax
	je	.label_430
	cmp	qword ptr [r13 + 0x30], 0
	jne	.label_430
	cmp	byte ptr [r13 + 0xa1], 0
	je	.label_437
.label_430:
	cmp	rdi, 5
	jl	.label_142
	inc	rax
	mov	qword ptr [r13 + 0xa8], rax
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	movabs	rbp, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	mov	dword ptr [rsp + 0x40], edx
	imul	rbp
	mov	rbp, rsi
	mov	rsi, rdx
	add	rsi, rcx
	mov	rax, rsi
	shr	rax, 0x3f
	sar	rsi, 6
	add	rsi, rax
	imul	rax, rsi, 0x64
	mov	rdx, rcx
	sub	rdx, rax
	mov	qword ptr [r13 + 0x40], rdx
	mov	rax, rsi
	movabs	rdx, 0xa3d70a3d70a3d70b
	imul	rdx
	add	rdx, rsi
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x64
	sub	rsi, rax
	mov	qword ptr [r13 + 0x38], rsi
	mov	rsi, rbp
	movabs	rdx, 0x346dc5d63886594b
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0xb
	add	rdx, rax
	mov	qword ptr [r13 + 0x28], rdx
	mov	edx, dword ptr [rsp + 0x40]
	add	rdi, -4
.label_158:
	mov	qword ptr [r13 + 0x30], rdi
	mov	rdi, qword ptr [rsp + 0x50]
	jmp	.label_150
.label_1527:
	mov	rax, qword ptr [r12 - 0x38]
.label_362:
	mov	qword ptr [rsp + 0xa0], rax
	xor	r11d, r11d
	jmp	.label_217
.label_1526:
	xor	r11d, r11d
	mov	eax, 1
	mov	qword ptr [rsp + 0x90], rax
.label_347:
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	esi, esi
	jmp	.label_221
.label_1655:
	mov	qword ptr [r13 + 8], 0
	mov	eax, dword ptr [r12 - 0x38]
	mov	dword ptr [r13 + 0x10], eax
	jmp	.label_150
.label_1654:
	mov	qword ptr [r13 + 8], 0
	mov	eax, dword ptr [r12]
	mov	dword ptr [r13 + 0x10], eax
	jmp	.label_150
.label_1663:
	mov	rax, qword ptr [r12 - 0xa8]
	jmp	.label_238
.label_1660:
	mov	rax, qword ptr [r12 - 0x68]
	mov	qword ptr [r13 + 0x40], rax
	mov	rax, qword ptr [r12 - 0x38]
	mov	qword ptr [r13 + 0x38], rax
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r10
	mov	qword ptr [r13 + 0x28], rcx
	mov	ebp, 1
	je	.label_174
.label_332:
	mov	rax, qword ptr [r12 + 0x10]
	mov	qword ptr [r13 + 0x30], rax
	jmp	.label_150
.label_1533:
	xor	r11d, r11d
	mov	eax, 1
	mov	qword ptr [rsp + 0x98], rax
.label_426:
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	esi, esi
	xor	eax, eax
	mov	qword ptr [rsp + 0x90], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0xa0], rax
	jmp	.label_257
.label_1534:
	mov	rsi, qword ptr [r12]
	test	rsi, rsi
	jns	.label_266
	mov	rbp, rsi
	lea	r11, [r12 - 0x30]
	mov	rsi, qword ptr [r12 - 0x30]
	test	rsi, rsi
	js	.label_176
	mov	rcx, rbp
	cmp	rcx, -1
	jne	.label_182
	mov	rsi, rcx
	jmp	.label_167
.label_1522:
	mov	rsi, qword ptr [r12]
	test	rsi, rsi
	js	.label_279
.label_266:
	lea	r11, [r12 - 0x30]
.label_178:
	test	rsi, rsi
	je	.label_167
	mov	rbp, rsi
	mov	dword ptr [rsp + 0x40], edx
	mov	rsi, qword ptr [r11]
	test	rsi, rsi
	js	.label_288
	lea	rax, [r10 - 1]
	xor	edx, edx
	mov	rcx, rbp
	div	rcx
	mov	ebp, 1
	cmp	rax, rsi
	jmp	.label_154
.label_1529:
	xor	r11d, r11d
	mov	eax, 1
	mov	qword ptr [rsp + 0xa0], rax
.label_217:
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	esi, esi
	xor	eax, eax
	mov	qword ptr [rsp + 0x90], rax
	jmp	.label_300
.label_429:
	test	al, al
	je	.label_308
	mov	qword ptr [rsp + 0x50], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x68], rsi
	mov	esi, OFFSET FLAT:label_309
	mov	dword ptr [rsp + 0x40], edx
	mov	edx, 5
	mov	qword ptr [rsp + 0x58], r8
	mov	qword ptr [rsp + 0x60], r9
	mov	rbp, r11
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [r12 - 0xd8]
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	mov	r11, rbp
	mov	rsi, qword ptr [rsp + 0x68]
	mov	edx, dword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	r9, qword ptr [rsp + 0x60]
	mov	r8, qword ptr [rsp + 0x58]
	movabs	r10, 0x8000000000000000
.label_308:
	mov	rax, qword ptr [r12 - 0xd8]
.label_238:
	mov	qword ptr [r13 + 0x38], rax
	mov	rax, qword ptr [r12 - 0x68]
	mov	qword ptr [r13 + 0x40], rax
.label_311:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [r12]
	movdqu	xmmword ptr [rcx], xmm0
	jmp	.label_150
.label_424:
	inc	qword ptr [r13 + 0xc8]
	xor	eax, eax
	cmp	rdi, 3
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	jl	.label_363
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rsi, rdx, 0x64
	mov	rax, rcx
	sub	rax, rsi
	mov	rcx, rdx
.label_363:
	mov	qword ptr [r13 + 0x48], rcx
	mov	qword ptr [r13 + 0x50], rax
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rax], xmm0
	mov	dword ptr [r13 + 0x1c], 2
.label_147:
	mov	rax, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r12]
	movups	xmm1, xmmword ptr [r12 + 0x10]
	movups	xmm2, xmmword ptr [r12 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	ebp, 1
	mov	esi, 1
	mov	rdi, r13
	call	apply_relative_time
	test	al, al
	movabs	r10, 0x8000000000000000
	mov	r8, qword ptr [rsp + 0x58]
	mov	r9, qword ptr [rsp + 0x60]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	edx, dword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	r11, qword ptr [rsp + 0xa8]
	jne	.label_150
	jmp	.label_174
.label_142:
	inc	qword ptr [r13 + 0xc8]
	xor	eax, eax
	cmp	rdi, 3
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	jl	.label_425
	mov	edi, edx
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	mov	rbp, rsi
	imul	rsi, rdx, 0x64
	mov	rax, rcx
	sub	rax, rsi
	mov	rsi, rbp
	mov	rcx, rdx
	mov	edx, edi
.label_425:
	mov	rdi, qword ptr [rsp + 0x50]
	mov	qword ptr [r13 + 0x48], rcx
	mov	qword ptr [r13 + 0x50], rax
.label_262:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rax], xmm0
	mov	dword ptr [r13 + 0x1c], 2
	jmp	.label_150
.label_288:
	mov	rax, r10
	cqo	
	mov	rcx, rbp
	idiv	rcx
	mov	ebp, 1
	cmp	rsi, rax
.label_154:
	mov	rsi, rcx
	mov	edx, dword ptr [rsp + 0x40]
	jge	.label_167
	jmp	.label_174
.label_172:
	mov	rbp, rsi
	lea	r11, [r12 - 0x38]
	mov	rsi, qword ptr [r12 - 0x38]
	test	rsi, rsi
	js	.label_176
	mov	rcx, rbp
	cmp	rcx, -1
	jne	.label_182
	mov	rsi, rcx
	jmp	.label_167
.label_284:
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x3c
	imul	rdx, rdx, 0x64
	sub	rcx, rdx
	add	rcx, rax
	mov	al, 1
	jmp	.label_191
.label_394:
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x3c
	imul	rdx, rdx, 0x64
	sub	rcx, rdx
	add	rcx, rax
	mov	al, 1
	jmp	.label_212
.label_279:
	mov	rbp, rsi
	lea	r11, [r12 - 0x30]
	mov	rsi, qword ptr [r12 - 0x30]
	test	rsi, rsi
	js	.label_176
	mov	rcx, rbp
	cmp	rcx, -1
	je	.label_229
.label_182:
	mov	rax, r10
	mov	ebp, edx
	cqo	
	idiv	rcx
	mov	edx, ebp
	mov	ebp, 1
	cmp	rax, rsi
	jmp	.label_233
.label_176:
	lea	rax, [r10 - 1]
	mov	dword ptr [rsp + 0x40], edx
	cqo	
	mov	rcx, rbp
	idiv	rcx
	mov	edx, dword ptr [rsp + 0x40]
	mov	ebp, 1
	cmp	rsi, rax
.label_233:
	mov	rsi, rcx
	jl	.label_174
.label_167:
	imul	rsi, qword ptr [r11]
.label_398:
	xor	r11d, r11d
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
.label_422:
	xor	eax, eax
	mov	qword ptr [rsp + 0x90], rax
.label_221:
	xor	eax, eax
	mov	qword ptr [rsp + 0xa0], rax
.label_300:
	xor	eax, eax
	mov	qword ptr [rsp + 0x98], rax
.label_257:
	mov	dword ptr [rsp + 0x44], 0
.label_150:
	sub	r8, r14
	neg	r14
	imul	rax, r14, 0x38
	lea	rcx, [r12 + rax + 0x38]
	mov	qword ptr [r12 + rax + 0x38], r11
	mov	rbp, qword ptr [rsp + 0x48]
	mov	qword ptr [r12 + rax + 0x40], rbp
	mov	qword ptr [r12 + rax + 0x48], rsi
	mov	rsi, qword ptr [rsp + 0x90]
	mov	qword ptr [r12 + rax + 0x50], rsi
	mov	rsi, qword ptr [rsp + 0xa0]
	mov	qword ptr [r12 + rax + 0x58], rsi
	mov	rsi, qword ptr [rsp + 0x98]
	mov	qword ptr [r12 + rax + 0x60], rsi
	mov	esi, dword ptr [rsp + 0x44]
	mov	dword ptr [r12 + rax + 0x68], esi
	mov	dword ptr [r12 + rax + 0x6c], edx
	movzx	eax, byte ptr [rdi + yyr1]
	movsx	esi, byte ptr [rax + label_258]
	movsx	edx, word ptr [rsp + r8*2 + 0xf0]
	add	esi, edx
	cmp	esi, 0x70
	ja	.label_259
	movsxd	rsi, esi
	movsx	edi, byte ptr [rsi + yycheck]
	cmp	edi, edx
	jne	.label_259
	movzx	eax, byte ptr [rsi + yytable]
	jmp	.label_292
	nop	word ptr cs:[rax + rax]
.label_259:
	movsx	eax, byte ptr [rax + label_296]
.label_292:
	mov	word ptr [rsp + r8*2 + 0xf2], ax
	inc	r8
	mov	ebp, 2
	cmp	r8, 0x12
	mov	r12, rcx
	jle	.label_224
	jmp	.label_174
.label_294:
	movabs	rsi, 0xfdddddddddddddde
	cmp	rcx, rsi
	jge	.label_301
.label_278:
	mov	sil, 1
	jmp	.label_313
.label_301:
	xor	esi, esi
.label_313:
	imul	rcx, rcx, 0x3c
	test	dl, dl
	je	.label_317
	mov	rdx, rax
	xor	rdx, r10
	cmp	rcx, rdx
	setl	dl
	sub	rcx, rax
	jmp	.label_321
.label_317:
	lea	rdx, [r10 - 1]
	sub	rdx, rax
	cmp	rdx, rcx
	setl	dl
	add	rcx, rax
.label_321:
	or	dl, sil
	sete	al
	mov	rsi, rbp
.label_191:
	mov	ebp, 1
	test	al, al
	je	.label_174
	lea	rax, [rcx + 0x5a0]
	cmp	rax, 0xb40
	ja	.label_174
	mov	qword ptr [rsp + 0x68], rsi
	movabs	rsi, 0x3c00000000
	imul	eax, ecx, 0x3c
	mov	dword ptr [r13 + 0x18], eax
	mov	rdx, qword ptr [r12 - 0x70]
	test	rdx, rdx
	js	.label_345
	mov	qword ptr [rsp + 0x50], rdi
	lea	rdi, [r10 - 1]
	sub	rdi, rdx
	movabs	rsi, 0x3c00000000
	imul	rcx, rsi
	sar	rcx, 0x20
	cmp	rdi, rcx
	mov	rdi, qword ptr [rsp + 0x50]
	jge	.label_358
	jmp	.label_372
.label_345:
	imul	rcx, rsi
	sar	rcx, 0x20
	mov	rsi, r10
	sub	rsi, rdx
	cmp	rcx, rsi
	jl	.label_372
.label_358:
	add	rcx, rdx
	sub	rcx, -0x80000000
	shr	rcx, 0x20
	jne	.label_372
	add	edx, eax
	mov	dword ptr [r13 + 0x18], edx
	mov	edx, dword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x68]
	jmp	.label_150
.label_364:
	movabs	rsi, 0xfdddddddddddddde
	cmp	rcx, rsi
	jge	.label_391
.label_412:
	mov	sil, 1
	jmp	.label_427
.label_391:
	xor	esi, esi
.label_427:
	imul	rcx, rcx, 0x3c
	test	dl, dl
	je	.label_396
	mov	rdx, rax
	xor	rdx, r10
	cmp	rcx, rdx
	setl	dl
	sub	rcx, rax
	jmp	.label_402
.label_396:
	lea	rdx, [r10 - 1]
	sub	rdx, rax
	cmp	rdx, rcx
	setl	dl
	add	rcx, rax
.label_402:
	or	dl, sil
	sete	al
	mov	rsi, rbp
.label_212:
	mov	ebp, 1
	test	al, al
	mov	edx, dword ptr [rsp + 0x40]
	je	.label_174
	lea	rax, [rcx + 0x5a0]
	cmp	rax, 0xb40
	ja	.label_174
	imul	eax, ecx, 0x3c
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_150
.label_418:
	cmp	rdi, 2
	jg	.label_215
	mov	rax, qword ptr [r13 + 0xc8]
	test	rax, rax
	jne	.label_215
	mov	qword ptr [r13 + 0xc8], 1
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	xor	eax, eax
	jmp	.label_363
.label_437:
	cmp	rdi, 2
	jg	.label_432
	mov	rax, qword ptr [r13 + 0xc8]
	test	rax, rax
	jne	.label_432
	mov	qword ptr [r13 + 0xc8], 1
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	xor	eax, eax
	jmp	.label_425
.label_229:
	mov	rsi, rcx
	jmp	.label_167
.label_215:
	mov	byte ptr [r13 + 0xd8], 1
	movdqu	xmmword ptr [r13 + 0x20], xmm0
	mov	qword ptr [r13 + 0x30], rdi
	jmp	.label_147
.label_432:
	mov	byte ptr [r13 + 0xd8], 1
	movdqu	xmmword ptr [r13 + 0x20], xmm0
	jmp	.label_158
.label_156:
	test	cl, cl
	je	.label_164
.label_268:
	shr	esi, 8
	cmp	cl, 0x2e
	sete	dil
	lea	rcx, [rsp + 0x71]
	lea	rdx, [rsp + 0x70]
	cmove	rcx, rdx
	mov	byte ptr [rcx], sil
	test	sil, sil
	je	.label_166
	lea	rax, [rsp + 0x72]
.label_373:
	lea	rbx, [rcx + 1]
	movzx	edx, byte ptr [rax]
	cmp	byte ptr [rax - 1], 0x2e
	mov	sil, 1
	je	.label_336
	mov	esi, edi
.label_336:
	cmovne	rcx, rbx
	mov	byte ptr [rcx], dl
	inc	rax
	test	dl, dl
	mov	edi, esi
	jne	.label_373
	jmp	.label_397
.label_166:
	mov	esi, edi
.label_397:
	test	sil, 1
	je	.label_164
	mov	rdi, r13
	lea	rsi, [rsp + 0x70]
	call	lookup_zone
	test	rax, rax
	jne	.label_139
.label_164:
	mov	ebx, 0x3f
	cmp	byte ptr [r13 + 0xd9], 0
	je	.label_204
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_189
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	lea	rsi, [rsp + 0x70]
	call	dbg_printf
	jmp	.label_204
	nop	dword ptr [rax]
.label_224:
	cmp	eax, 0xc
	jne	.label_222
	xor	ebp, ebp
.label_174:
	mov	eax, ebp
	add	rsp, 0x588
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_372:
	add	edx, eax
	mov	dword ptr [r13 + 0x18], edx
	jmp	.label_174
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405120

	.globl debug_print_current_time
	.type debug_print_current_time, @function
debug_print_current_time:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x70
	mov	r15, rsi
	mov	rbx, rdi
	cmp	byte ptr [r15 + 0xd9], 0
	jne	.label_446
.label_459:
	add	rsp, 0x70
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_446:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_458
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbx
	call	dbg_printf
	cmp	qword ptr [r15 + 0xa8], 0
	je	.label_449
	cmp	byte ptr [r15 + 0xda], 0
	jne	.label_465
	mov	rdi, qword ptr [rip + stderr]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	r8, qword ptr [r15 + 0x38]
	mov	r9, qword ptr [r15 + 0x40]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_438
	xor	eax, eax
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xda], 1
	mov	r12b, 1
	jmp	.label_449
.label_465:
	xor	r12d, r12d
.label_449:
	mov	rax, qword ptr [r15 + 0xd8]
	mov	rcx, rax
	shr	rcx, 0x38
	cmp	al, cl
	je	.label_451
	test	r12b, r12b
	je	.label_457
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0x20
	call	fputc
.label_457:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_461
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	rax, qword ptr [r15 + 0xd8]
	mov	byte ptr [r15 + 0xdf], al
	mov	r12b, 1
.label_451:
	cmp	qword ptr [r15 + 0xc8], 0
	je	.label_444
	shr	rax, 0x28
	test	al, al
	jne	.label_444
	mov	r9, qword ptr [r15 + 0x58]
	mov	rdi, qword ptr [rip + stderr]
	xor	r12b, 1
	movzx	eax, r12b
	lea	rdx, qword ptr [rax + label_453]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	r8, qword ptr [r15 + 0x50]
	mov	esi, 1
	xor	eax, eax
	call	__fprintf_chk
	mov	rcx, qword ptr [r15 + 0x60]
	test	rcx, rcx
	je	.label_462
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_463
	xor	eax, eax
	call	__fprintf_chk
.label_462:
	cmp	dword ptr [r15 + 0x1c], 1
	jne	.label_443
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_440
	mov	esi, 2
	mov	edx, 1
	call	fwrite
.label_443:
	mov	byte ptr [r15 + 0xdd], 1
	mov	r12b, 1
.label_444:
	cmp	qword ptr [r15 + 0xb0], 0
	je	.label_452
	cmp	byte ptr [r15 + 0xdb], 0
	jne	.label_452
	test	r12b, r12b
	je	.label_456
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0x20
	call	fputc
.label_456:
	mov	r14, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_460
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsp]
	mov	rdi, r15
	call	str_days
	mov	rcx, rax
	mov	r8, qword ptr [r15 + 8]
	mov	r9d, dword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, rbx
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xdb], 1
	mov	r12b, 1
.label_452:
	cmp	qword ptr [r15 + 0xb8], 0
	je	.label_450
	cmp	byte ptr [r15 + 0xdc], 0
	jne	.label_450
	mov	rdi, qword ptr [rip + stderr]
	xor	r12b, 1
	movzx	eax, r12b
	lea	rdx, qword ptr [rax + label_454]
	cmp	qword ptr [r15 + 0xc0], 0
	mov	ecx, dword ptr [r15 + 0x14]
	mov	eax, OFFSET FLAT:label_455
	mov	r8d, OFFSET FLAT:label_31
	cmovne	r8, rax
	mov	esi, 1
	xor	eax, eax
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xdc], 1
	mov	r12b, 1
.label_450:
	cmp	qword ptr [r15 + 0xd0], 0
	je	.label_439
	cmp	byte ptr [r15 + 0xde], 0
	jne	.label_439
	mov	r14, qword ptr [rip + stderr]
	xor	r12b, 1
	movsxd	r13, dword ptr [r15 + 0x18]
	mov	eax, r13d
	shr	eax, 0x1f
	imul	rbx, r13, -0x6e5d4c3b
	shr	rbx, 0x20
	add	ebx, r13d
	mov	ecx, ebx
	shr	ecx, 0x1f
	sar	ebx, 0xb
	add	ebx, ecx
	mov	r9d, ebx
	neg	r9d
	cmp	r13, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebx
	lea	rdi, [rsp]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_447
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebx, 0xe10
	mov	esi, r13d
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	r13d, edx
	movzx	edx, r12b
	lea	rdx, qword ptr [rdx + label_466]
	je	.label_467
	cdqe	
	lea	rax, [rsp + rax]
	movsxd	r9, ecx
	imul	rsi, r9, -0x77777777
	shr	rsi, 0x20
	add	esi, r9d
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 5
	add	esi, edi
	imul	r8d, esi, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rsi, esi
	imul	rcx, rsi, 0x66666667
	mov	rdi, rcx
	shr	rdi, 0x3f
	sar	rcx, 0x22
	add	ecx, edi
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	esi, ecx
	add	esi, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], sil
	jne	.label_448
	add	rax, 3
	jmp	.label_441
.label_448:
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rsi, rcx
	shr	rsi, 0x3f
	sar	rcx, 0x22
	lea	edi, [rcx + rsi]
	lea	ecx, [rcx + rsi + 0x30]
	mov	byte ptr [rax + 4], cl
	add	edi, edi
	lea	ecx, [rdi + rdi*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
.label_441:
	mov	byte ptr [rax], 0
.label_467:
	lea	rcx, [rsp]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xde], 1
	mov	r12b, 1
.label_439:
	cmp	byte ptr [r15 + 0xa0], 0
	je	.label_464
	mov	r14, qword ptr [r15 + 0x58]
	test	r12b, r12b
	je	.label_445
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0x20
	call	fputc
.label_445:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_442
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, rcx
	mov	rcx, r14
	call	__fprintf_chk
.label_464:
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	call	fputc
	jmp	.label_459
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405560

	.globl debug_print_relative_time
	.type debug_print_relative_time, @function
debug_print_relative_time:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [r14 + 0xd9], 0
	je	.label_480
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_458
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbx
	call	dbg_printf
	mov	rcx, qword ptr [r14 + 0x68]
	test	rcx, rcx
	je	.label_475
	mov	rdi, qword ptr [rip + stderr]
	xor	ebx, ebx
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_478
	mov	r8d, OFFSET FLAT:label_479
	xor	eax, eax
	call	__fprintf_chk
	mov	rcx, qword ptr [r14 + 0x70]
	mov	al, 1
	test	rcx, rcx
	jne	.label_491
	jmp	.label_470
.label_480:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_475:
	mov	rcx, qword ptr [r14 + 0x70]
	mov	ebx, 1
	test	rcx, rcx
	je	.label_474
.label_491:
	mov	rdi, qword ptr [rip + stderr]
	lea	rdx, qword ptr [rbx + label_471]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_483
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_470:
	mov	rcx, qword ptr [r14 + 0x78]
	test	rcx, rcx
	je	.label_469
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_471]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_473
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_469:
	mov	rcx, qword ptr [r14 + 0x80]
	test	rcx, rcx
	je	.label_489
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_471]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_472
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_489:
	mov	rcx, qword ptr [r14 + 0x88]
	test	rcx, rcx
	je	.label_484
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_471]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_490
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_484:
	mov	rcx, qword ptr [r14 + 0x90]
	test	rcx, rcx
	je	.label_492
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_471]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_485
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_492:
	movsxd	rcx, dword ptr [r14 + 0x98]
	test	rcx, rcx
	je	.label_476
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_471]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_477
	xor	eax, eax
	call	__fprintf_chk
.label_476:
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	fputc
.label_474:
	cmp	qword ptr [r14 + 0x78], 0
	je	.label_481
	xor	eax, eax
	jmp	.label_470
.label_481:
	cmp	qword ptr [r14 + 0x80], 0
	je	.label_486
	xor	eax, eax
	jmp	.label_470
.label_486:
	cmp	qword ptr [r14 + 0x88], 0
	je	.label_468
	xor	eax, eax
	jmp	.label_470
.label_468:
	cmp	qword ptr [r14 + 0x90], 0
	je	.label_487
	xor	eax, eax
	jmp	.label_470
.label_487:
	cmp	dword ptr [r14 + 0x98], 0
	je	.label_482
	xor	eax, eax
	jmp	.label_470
.label_482:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_488
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	fputs
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4057a0

	.globl apply_relative_time
	.type apply_relative_time, @function
apply_relative_time:
	lea	r8, [rsp + 8]
	movabs	r10, 0x7fffffffffffffff
	mov	edx, dword ptr [rsp + 0x38]
	test	esi, esi
	js	.label_528
	test	edx, edx
	js	.label_510
	mov	esi, 0x7fffffff
	sub	esi, edx
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	cmp	esi, eax
	jl	.label_535
	jmp	.label_542
.label_528:
	test	edx, edx
	js	.label_534
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	mov	esi, edx
	xor	esi, 0x80000000
	cmp	eax, esi
	jl	.label_545
	jmp	.label_495
.label_510:
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	mov	esi, 0x80000000
	sub	esi, edx
	cmp	eax, esi
	jge	.label_542
.label_535:
	add	edx, eax
	mov	dword ptr [rcx], edx
	mov	r9d, 1
	jmp	.label_497
.label_542:
	add	edx, eax
	mov	dword ptr [rcx], edx
	xor	r9d, r9d
.label_497:
	mov	rdx, qword ptr [r8 + 0x28]
	test	rdx, rdx
	js	.label_500
	mov	rsi, r10
	sub	rsi, rdx
	lea	rcx, [rdi + 0x90]
	mov	rax, qword ptr [rdi + 0x90]
	cmp	rsi, rax
	jl	.label_502
	jmp	.label_511
.label_500:
	lea	rcx, [rdi + 0x90]
	mov	rax, qword ptr [rdi + 0x90]
	lea	rsi, [r10 + 1]
	sub	rsi, rdx
	cmp	rax, rsi
	jge	.label_511
.label_502:
	add	rdx, rax
	mov	qword ptr [rcx], rdx
	mov	r11d, 1
	jmp	.label_515
.label_511:
	add	rdx, rax
	mov	qword ptr [rcx], rdx
	xor	r11d, r11d
.label_515:
	or	r11d, r9d
	mov	rsi, qword ptr [r8 + 0x20]
	test	rsi, rsi
	js	.label_519
	mov	rcx, r10
	sub	rcx, rsi
	lea	r9, [rdi + 0x88]
	mov	rax, qword ptr [rdi + 0x88]
	cmp	rcx, rax
	jl	.label_523
	jmp	.label_529
.label_519:
	lea	r9, [rdi + 0x88]
	mov	rax, qword ptr [rdi + 0x88]
	lea	rcx, [r10 + 1]
	sub	rcx, rsi
	cmp	rax, rcx
	jge	.label_529
.label_523:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	mov	eax, 1
	jmp	.label_537
.label_529:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	xor	eax, eax
.label_537:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 0x18]
	test	rsi, rsi
	js	.label_543
	mov	rdx, r10
	sub	rdx, rsi
	mov	rcx, rdi
	sub	rcx, -0x80
	mov	rax, qword ptr [rdi + 0x80]
	cmp	rdx, rax
	jl	.label_508
	jmp	.label_506
.label_543:
	mov	rcx, rdi
	sub	rcx, -0x80
	mov	rax, qword ptr [rdi + 0x80]
	lea	rdx, [r10 + 1]
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_506
.label_508:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	mov	eax, 1
	jmp	.label_496
.label_506:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	xor	eax, eax
.label_496:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 0x10]
	test	rsi, rsi
	js	.label_501
	mov	rdx, r10
	sub	rdx, rsi
	lea	rcx, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	cmp	rdx, rax
	jl	.label_504
	jmp	.label_509
.label_501:
	lea	rcx, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	lea	rdx, [r10 + 1]
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_509
.label_504:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	mov	eax, 1
	jmp	.label_514
.label_509:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	xor	eax, eax
.label_514:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 8]
	test	rsi, rsi
	js	.label_517
	mov	rdx, r10
	sub	rdx, rsi
	lea	rcx, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	cmp	rdx, rax
	jl	.label_520
	jmp	.label_525
.label_517:
	lea	rcx, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	lea	rdx, [r10 + 1]
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_525
.label_520:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	mov	eax, 1
	jmp	.label_530
.label_525:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	xor	eax, eax
.label_530:
	or	r11d, eax
	mov	rcx, qword ptr [r8]
	test	rcx, rcx
	js	.label_536
	sub	r10, rcx
	lea	rsi, [rdi + 0x68]
	mov	rax, qword ptr [rdi + 0x68]
	cmp	r10, rax
	jl	.label_539
	jmp	.label_544
.label_536:
	lea	rsi, [rdi + 0x68]
	mov	rax, qword ptr [rdi + 0x68]
	inc	r10
	sub	r10, rcx
	cmp	rax, r10
	jge	.label_544
.label_539:
	add	rcx, rax
	mov	qword ptr [rsi], rcx
	mov	eax, 1
	jmp	.label_549
.label_544:
	add	rcx, rax
	mov	qword ptr [rsi], rcx
	xor	eax, eax
.label_549:
	or	r11d, eax
	je	.label_493
	xor	eax, eax
	ret	
.label_534:
	lea	esi, [rdx + 0x7fffffff]
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	cmp	esi, eax
	jge	.label_495
.label_545:
	sub	eax, edx
	mov	dword ptr [rcx], eax
	mov	r9d, 1
	jmp	.label_499
.label_495:
	sub	eax, edx
	mov	dword ptr [rcx], eax
	xor	r9d, r9d
.label_499:
	mov	rdx, qword ptr [r8 + 0x28]
	test	rdx, rdx
	js	.label_505
	lea	rcx, [rdi + 0x90]
	mov	rsi, qword ptr [rdi + 0x90]
	lea	rax, [r10 + 1]
	xor	rax, rdx
	cmp	rsi, rax
	jl	.label_507
	jmp	.label_513
.label_505:
	lea	rax, [rdx + r10]
	lea	rcx, [rdi + 0x90]
	mov	rsi, qword ptr [rdi + 0x90]
	cmp	rax, rsi
	jge	.label_513
.label_507:
	sub	rsi, rdx
	mov	qword ptr [rcx], rsi
	mov	r11d, 1
	jmp	.label_531
.label_513:
	sub	rsi, rdx
	mov	qword ptr [rcx], rsi
	xor	r11d, r11d
.label_531:
	or	r11d, r9d
	mov	rsi, qword ptr [r8 + 0x20]
	test	rsi, rsi
	js	.label_524
	lea	r9, [rdi + 0x88]
	mov	rcx, qword ptr [rdi + 0x88]
	lea	rax, [r10 + 1]
	xor	rax, rsi
	cmp	rcx, rax
	jl	.label_526
	jmp	.label_533
.label_524:
	lea	rax, [rsi + r10]
	lea	r9, [rdi + 0x88]
	mov	rcx, qword ptr [rdi + 0x88]
	cmp	rax, rcx
	jge	.label_533
.label_526:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	mov	eax, 1
	jmp	.label_540
.label_533:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	xor	eax, eax
.label_540:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 0x18]
	test	rsi, rsi
	js	.label_546
	mov	rcx, rdi
	sub	rcx, -0x80
	mov	rax, qword ptr [rdi + 0x80]
	lea	rdx, [r10 + 1]
	xor	rdx, rsi
	cmp	rax, rdx
	jl	.label_548
	jmp	.label_494
.label_546:
	lea	r9, [rsi + r10]
	mov	rcx, rdi
	sub	rcx, -0x80
	mov	rax, qword ptr [rdi + 0x80]
	cmp	r9, rax
	jge	.label_494
.label_548:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	mov	eax, 1
	jmp	.label_498
.label_494:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	xor	eax, eax
.label_498:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 0x10]
	test	rsi, rsi
	js	.label_503
	lea	rcx, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	lea	rdx, [r10 + 1]
	xor	rdx, rsi
	cmp	rax, rdx
	jl	.label_521
	jmp	.label_512
.label_503:
	lea	rdx, [rsi + r10]
	lea	rcx, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	cmp	rdx, rax
	jge	.label_512
.label_521:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	mov	eax, 1
	jmp	.label_516
.label_512:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	xor	eax, eax
.label_516:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 8]
	test	rsi, rsi
	js	.label_518
	lea	rcx, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	lea	rdx, [r10 + 1]
	xor	rdx, rsi
	cmp	rax, rdx
	jl	.label_522
	jmp	.label_527
.label_518:
	lea	rdx, [rsi + r10]
	lea	rcx, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	cmp	rdx, rax
	jge	.label_527
.label_522:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	mov	eax, 1
	jmp	.label_532
.label_527:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	xor	eax, eax
.label_532:
	or	r11d, eax
	mov	rcx, qword ptr [r8]
	test	rcx, rcx
	js	.label_538
	lea	r8, [rdi + 0x68]
	mov	rsi, qword ptr [rdi + 0x68]
	inc	r10
	xor	r10, rcx
	cmp	rsi, r10
	jl	.label_541
	jmp	.label_547
.label_538:
	add	r10, rcx
	lea	r8, [rdi + 0x68]
	mov	rsi, qword ptr [rdi + 0x68]
	cmp	r10, rsi
	jge	.label_547
.label_541:
	sub	rsi, rcx
	mov	qword ptr [r8], rsi
	mov	eax, 1
	jmp	.label_550
.label_547:
	sub	rsi, rcx
	mov	qword ptr [r8], rsi
	xor	eax, eax
.label_550:
	or	r11d, eax
	je	.label_493
	xor	eax, eax
	ret	
.label_493:
	mov	byte ptr [rdi + 0xa1], 1
	mov	al, 1
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c20

	.globl dbg_printf
	.type dbg_printf, @function
dbg_printf:
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, rdi
	test	al, al
	je	.label_551
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_551:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	qword ptr [rsp + 0x28], rsi
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_552
	mov	esi, 6
	mov	edx, 1
	call	fwrite
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 8
	mov	rdi, qword ptr [rip + stderr]
	lea	rcx, [rsp]
	mov	esi, 1
	mov	rdx, rbx
	call	__vfprintf_chk
	add	rsp, 0xd0
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cf0

	.globl parse_datetime
	.type parse_datetime, @function
parse_datetime:
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
	mov	edi, OFFSET FLAT:label_553
	call	getenv
	mov	r13, rax
	mov	rdi, r13
	call	tzalloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_555
	xor	ecx, ecx
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	mov	r8, rbx
	mov	r9, r13
	call	parse_datetime2
	mov	bpl, al
	mov	rdi, rbx
	call	tzfree
	jmp	.label_554
.label_555:
	xor	ebp, ebp
.label_554:
	mov	eax, ebp
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
	#Procedure 0x405d60

	.globl parse_datetime2
	.type parse_datetime2, @function
parse_datetime2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x408
	mov	qword ptr [rsp + 0x60], r9
	mov	r13, r8
	mov	r14d, ecx
	mov	r15, rdx
	mov	r12, rsi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rdi, r12
	call	strlen
	mov	qword ptr [rsp + 0x58], rax
	test	r15, r15
	jne	.label_677
	lea	r15, [rsp + 0x390]
	mov	rdi, r15
	call	gettime
.label_677:
	mov	rax, qword ptr [r15]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rsp + 8], rax
	movzx	eax, byte ptr [r12]
	add	eax, -9
	cmp	eax, 0x17
	mov	rbp, r12
	ja	.label_679
	mov	ecx, 0x80001f
	mov	rbp, r12
	nop	word ptr cs:[rax + rax]
.label_696:
	bt	ecx, eax
	jae	.label_679
	movzx	eax, byte ptr [rbp + 1]
	inc	rbp
	add	eax, -9
	cmp	eax, 0x18
	jb	.label_696
.label_679:
	mov	esi, OFFSET FLAT:label_699
	mov	edx, 4
	mov	rdi, rbp
	call	strncmp
	test	eax, eax
	jne	.label_703
	lea	rbx, [rbp + 4]
	mov	edi, 1
	mov	rax, rbx
	jmp	.label_704
	nop	dword ptr [rax + rax]
.label_714:
	inc	rax
	inc	rdi
.label_704:
	movzx	ecx, byte ptr [rax]
	cmp	cl, 0x5c
	je	.label_710
	test	cl, cl
	je	.label_703
	cmp	cl, 0x22
	jne	.label_714
	jmp	.label_715
	nop	dword ptr [rax]
.label_710:
	movzx	ecx, byte ptr [rax + 1]
	inc	rax
	cmp	cl, 0x22
	je	.label_714
	cmp	cl, 0x5c
	je	.label_714
.label_703:
	xor	eax, eax
	mov	qword ptr [rsp + 0x78], rax
	mov	rbx, r13
.label_822:
	lea	rdx, [rsp + 0x358]
	mov	rdi, rbx
	mov	rsi, r15
	call	localtime_rz
	test	rax, rax
	je	.label_726
	movabs	r15, 0x7fffffffffffffff
	cmp	byte ptr [rbp], 0
	mov	eax, OFFSET FLAT:label_728
	cmovne	rax, rbp
	mov	qword ptr [rsp + 0xb8], rax
	and	r14b, 1
	mov	byte ptr [rsp + 0x191], r14b
	movsxd	rax, dword ptr [rsp + 0x36c]
	add	rax, 0x76c
	mov	qword ptr [rsp + 0xe0], rax
	mov	qword ptr [rsp + 0xe8], 0
	movsxd	rax, dword ptr [rsp + 0x368]
	inc	rax
	mov	qword ptr [rsp + 0xf0], rax
	movsxd	rax, dword ptr [rsp + 0x364]
	mov	qword ptr [rsp + 0xf8], rax
	movsxd	rax, dword ptr [rsp + 0x360]
	mov	qword ptr [rsp + 0x100], rax
	movsxd	rax, dword ptr [rsp + 0x35c]
	mov	qword ptr [rsp + 0x108], rax
	movsxd	rax, dword ptr [rsp + 0x358]
	mov	qword ptr [rsp + 0x110], rax
	mov	rax, qword ptr [rsp + 8]
	cdqe	
	mov	qword ptr [rsp + 0x118], rax
	mov	eax, dword ptr [rsp + 0x378]
	mov	dword ptr [rsp + 0x40], eax
	mov	dword ptr [rsp + 0xd4], 2
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x14a], xmm0
	movups	xmmword ptr [rsp + 0x140], xmm0
	movups	xmmword ptr [rsp + 0x130], xmm0
	movups	xmmword ptr [rsp + 0x120], xmm0
	movups	xmmword ptr [rsp + 0x180], xmm0
	movups	xmmword ptr [rsp + 0x170], xmm0
	movups	xmmword ptr [rsp + 0x160], xmm0
	mov	byte ptr [rsp + 0x190], 0
	mov	byte ptr [rsp + 0x198], 0
	mov	word ptr [rsp + 0x196], 0
	mov	dword ptr [rsp + 0x192], 0
	mov	rcx, qword ptr [rsp + 0x388]
	mov	qword ptr [rsp + 0x1a0], rcx
	mov	dword ptr [rsp + 0x1a8], 0x10d
	mov	dword ptr [rsp + 0x1ac], eax
	mov	qword ptr [rsp + 0x1b0], 0
	lea	rax, [r15 - 0x76a700]
	mov	rbp, qword ptr [rsp]
	cmp	rbp, rax
	jg	.label_598
	lea	rax, [rbp + 0x76a700]
	mov	qword ptr [rsp + 0x220], rax
	lea	rsi, [rsp + 0x220]
	lea	rdx, [rsp + 0x290]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_558
	mov	rax, qword ptr [rsp + 0x2c0]
	test	rax, rax
	je	.label_558
	mov	ecx, dword ptr [rsp + 0x2b0]
	cmp	ecx, dword ptr [rsp + 0x1ac]
	jne	.label_567
.label_558:
	lea	rax, [r15 - 0xed4e00]
	cmp	rbp, rax
	jg	.label_598
	lea	rax, [rbp + 0xed4e00]
	mov	qword ptr [rsp + 0x220], rax
	lea	rsi, [rsp + 0x220]
	lea	rdx, [rsp + 0x290]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_593
	mov	rax, qword ptr [rsp + 0x2c0]
	test	rax, rax
	je	.label_593
	mov	ecx, dword ptr [rsp + 0x2b0]
	cmp	ecx, dword ptr [rsp + 0x1ac]
	jne	.label_567
.label_593:
	lea	rax, [r15 - 0x163f500]
	cmp	rbp, rax
	jg	.label_598
	add	rbp, 0x163f500
	mov	qword ptr [rsp + 0x220], rbp
	lea	rsi, [rsp + 0x220]
	lea	rdx, [rsp + 0x290]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_598
	mov	rax, qword ptr [rsp + 0x2c0]
	test	rax, rax
	je	.label_598
	mov	ecx, dword ptr [rsp + 0x2b0]
	cmp	ecx, dword ptr [rsp + 0x1ac]
	je	.label_598
.label_567:
	mov	qword ptr [rsp + 0x1b0], rax
	mov	dword ptr [rsp + 0x1b8], 0x10d
	mov	dword ptr [rsp + 0x1bc], ecx
	mov	qword ptr [rsp + 0x1c0], 0
.label_598:
	mov	rdi, qword ptr [rsp + 0x1a0]
	test	rdi, rdi
	je	.label_638
	mov	rsi, qword ptr [rsp + 0x1b0]
	test	rsi, rsi
	je	.label_638
	call	strcmp
	test	eax, eax
	jne	.label_638
	mov	dword ptr [rsp + 0x1ac], 0xffffffff
	mov	qword ptr [rsp + 0x1b0], 0
.label_638:
	lea	rdi, [rsp + 0xb8]
	call	yyparse
	test	eax, eax
	mov	al, byte ptr [rsp + 0x191]
	je	.label_653
	test	al, al
	je	.label_658
	add	r12, qword ptr [rsp + 0x58]
	cmp	r12, qword ptr [rsp + 0xb8]
	jbe	.label_797
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_605
	jmp	.label_606
.label_726:
	xor	ebp, ebp
	jmp	.label_584
.label_653:
	test	al, al
	mov	r12, qword ptr [rsp + 0x68]
	jne	.label_669
.label_799:
	cmp	byte ptr [rsp + 0x158], 0
	je	.label_674
	lea	rax, [rsp + 0x110]
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r12], xmm0
.label_641:
	mov	rdi, qword ptr [rsp + 0x60]
	mov	bpl, 1
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_584
	test	rdi, rdi
	je	.label_684
	mov	esi, OFFSET FLAT:label_618
	mov	r14, rdi
	call	strcmp
	mov	r15, rbx
	xor	edi, edi
	test	eax, eax
	je	.label_690
	mov	esi, OFFSET FLAT:label_694
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, r14
	call	dbg_printf
	jmp	.label_702
.label_658:
	xor	ebp, ebp
	jmp	.label_584
.label_715:
	xor	eax, eax
	cmp	rdi, 0x65
	jl	.label_705
	call	malloc
	mov	rsi, rax
	xor	ebp, ebp
	test	rsi, rsi
	mov	edi, 0
	jne	.label_707
	jmp	.label_712
.label_797:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_713
.label_606:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [rsp + 0xb8]
	xor	ebp, ebp
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_584:
	cmp	rbx, r13
	je	.label_592
	mov	rdi, rbx
	call	tzfree
.label_592:
	mov	rdi, qword ptr [rsp + 0x78]
.label_712:
	call	free
	mov	eax, ebp
	add	rsp, 0x408
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_674:
	mov	rax, qword ptr [rsp + 0x160]
	mov	rcx, qword ptr [rsp + 0x180]
	mov	rdx, rax
	or	rdx, rcx
	or	rdx, qword ptr [rsp + 0x168]
	or	rdx, qword ptr [rsp + 0x178]
	mov	rsi, qword ptr [rsp + 0x188]
	add	rsi, qword ptr [rsp + 0x170]
	or	rsi, rdx
	mov	r14b, byte ptr [rsp + 0x191]
	cmp	rsi, 2
	jl	.label_735
	test	r14b, r14b
	je	.label_755
	cmp	rcx, 2
	jl	.label_760
	mov	edi, OFFSET FLAT:label_763
	xor	eax, eax
	call	dbg_printf
	mov	rax, qword ptr [rsp + 0x160]
.label_760:
	cmp	rax, 2
	jl	.label_769
	mov	edi, OFFSET FLAT:label_689
	xor	eax, eax
	call	dbg_printf
.label_769:
	cmp	qword ptr [rsp + 0x168], 2
	jl	.label_774
	mov	edi, OFFSET FLAT:label_776
	xor	eax, eax
	call	dbg_printf
.label_774:
	cmp	qword ptr [rsp + 0x178], 2
	jl	.label_581
	mov	edi, OFFSET FLAT:label_782
	xor	eax, eax
	call	dbg_printf
.label_581:
	mov	rax, qword ptr [rsp + 0x188]
	add	rax, qword ptr [rsp + 0x170]
	xor	ebp, ebp
	cmp	rax, 2
	jl	.label_584
	mov	edi, OFFSET FLAT:label_786
	xor	eax, eax
	call	dbg_printf
	jmp	.label_584
.label_705:
	lea	rsi, [rsp + 0x3a0]
.label_707:
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rsp + 0x10], r13
	mov	cl, byte ptr [rbx]
	mov	rax, rsi
	cmp	cl, 0x22
	jne	.label_596
	mov	r13, rbx
	jmp	.label_795
.label_596:
	xor	edx, edx
	cmp	cl, 0x5c
	sete	dl
	movzx	ecx, byte ptr [rbx + rdx]
	mov	byte ptr [rax], cl
	inc	rax
	lea	r13, [rbx + rdx + 1]
	movzx	ecx, byte ptr [rbx + rdx + 1]
	cmp	cl, 0x22
	mov	rbx, r13
	jne	.label_596
.label_795:
	mov	byte ptr [rax], 0
	mov	qword ptr [rsp + 0x60], rsi
	mov	rdi, rsi
	call	tzalloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_809
	inc	r13
	mov	eax, 0x80001f
	nop	word ptr [rax + rax]
.label_820:
	mov	rbp, r13
	movzx	ecx, byte ptr [rbp]
	add	ecx, -9
	cmp	ecx, 0x17
	ja	.label_764
	lea	r13, [rbp + 1]
	bt	eax, ecx
	jb	.label_820
.label_764:
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_822
.label_735:
	mov	qword ptr [rsp], rbx
	mov	rbx, qword ptr [rsp + 0xe0]
	test	rbx, rbx
	js	.label_825
	cmp	qword ptr [rsp + 0xe8], 2
	jne	.label_559
	cmp	rbx, 0x45
	mov	eax, 0x7d0
	mov	ebp, 0x76c
	cmovl	rbp, rax
	add	rbp, rbx
	test	r14b, r14b
	je	.label_566
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_575
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbx
	mov	rdx, rbp
	call	dbg_printf
.label_566:
	test	rbp, rbp
	jns	.label_586
	jmp	.label_589
.label_809:
	xor	ebp, ebp
	jmp	.label_592
.label_684:
	mov	r15, rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_594
	jmp	.label_595
.label_690:
	mov	esi, OFFSET FLAT:label_600
.label_595:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_702:
	mov	r14, qword ptr [r12]
	mov	ebx, dword ptr [r12 + 8]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_611
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, r14
	mov	edx, ebx
	call	dbg_printf
	lea	rsi, [rsp + 0x290]
	mov	rdi, r12
	call	gmtime_r
	test	rax, rax
	je	.label_623
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_625
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	r14, [rsp + 0x220]
	lea	rcx, [rsp + 0x290]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_601
	xor	r8d, r8d
	xor	r9d, r9d
	mov	rdi, r14
	call	nstrftime
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, r14
	call	dbg_printf
.label_623:
	lea	rdx, [rsp + 0x80]
	mov	rbx, r15
	mov	rdi, rbx
	mov	rsi, r12
	call	localtime_rz
	test	rax, rax
	je	.label_584
	mov	r12, rbx
	movsxd	r15, dword ptr [rsp + 0xa8]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_650
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	lea	rdi, [rsp + 0x220]
	lea	rcx, [rsp + 0x80]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_601
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	mov	eax, r15d
	shr	eax, 0x1f
	imul	rbx, r15, -0x6e5d4c3b
	shr	rbx, 0x20
	add	ebx, r15d
	mov	ecx, ebx
	shr	ecx, 0x1f
	sar	ebx, 0xb
	add	ebx, ecx
	mov	r9d, ebx
	neg	r9d
	cmp	r15, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebx
	lea	rdi, [rsp + 0x330]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_447
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebx, 0xe10
	mov	esi, r15d
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	r15d, edx
	je	.label_688
	cdqe	
	lea	rax, [rsp + rax + 0x330]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	imul	r8d, edx, 0x3c
	imul	rdi, r9, 0x1b4e81b5
	mov	rbx, rdi
	shr	rbx, 0x3f
	shr	rdi, 0x26
	movsxd	rdx, edx
	imul	rsi, rdx, 0x66666667
	mov	rcx, rsi
	shr	rcx, 0x3f
	sar	rsi, 0x22
	add	esi, ecx
	add	esi, esi
	lea	ecx, [rsi + rsi*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rdi + rbx + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_697
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	esi, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	esi, esi
	lea	ecx, [rsi + rsi*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_723
.label_755:
	xor	ebp, ebp
	jmp	.label_584
.label_825:
	mov	rbp, rbx
.label_589:
	lea	rdx, [rbp + r15]
	mov	ecx, 0x7ffff894
	mov	eax, 0xfffff894
	sub	eax, ebp
	cmp	rdx, -0x76c
	mov	rbx, qword ptr [rsp]
	jl	.label_743
	sub	rcx, rbp
	shr	rcx, 0x20
	je	.label_754
	jmp	.label_743
.label_669:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_758
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	cmp	byte ptr [rsp + 0x158], 0
	jne	.label_768
	cmp	qword ptr [rsp + 0x188], 0
	jne	.label_645
	mov	rax, qword ptr [rsp + 0x60]
	test	rax, rax
	jne	.label_775
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_779
	jmp	.label_565
.label_559:
	mov	rbp, rbx
.label_586:
	lea	rcx, [rbp + 0x7ffff894]
	lea	eax, [rbp - 0x76c]
	shr	rcx, 0x20
	mov	rbx, qword ptr [rsp]
	je	.label_754
.label_743:
	mov	dword ptr [rsp + 0x34], eax
	test	r14b, r14b
	je	.label_785
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_789
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbp
	call	dbg_printf
	jmp	.label_785
.label_754:
	mov	dword ptr [rsp + 0x34], eax
	mov	rax, qword ptr [rsp + 0xf0]
	lea	ecx, [rax - 1]
	cmp	rax, -0x7fffffff
	mov	dword ptr [rsp + 0x30], ecx
	jl	.label_785
	dec	rax
	cmp	rax, 0x7fffffff
	jg	.label_785
	mov	rax, qword ptr [rsp + 0xf8]
	mov	dword ptr [rsp + 0x2c], eax
	sub	rax, -0x80000000
	shr	rax, 0x20
	je	.label_803
.label_785:
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_810
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_733
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	jmp	.label_584
.label_810:
	xor	ebp, ebp
	jmp	.label_584
.label_697:
	add	rax, 3
.label_723:
	mov	byte ptr [rax], 0
.label_688:
	lea	rsi, [rsp + 0x220]
	lea	rdx, [rsp + 0x330]
	xor	eax, eax
	mov	rdi, r14
	call	dbg_printf
	mov	rbx, r12
	jmp	.label_584
.label_768:
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_564
	jmp	.label_565
.label_803:
	mov	rax, qword ptr [rsp + 0x180]
	test	rax, rax
	jne	.label_639
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_576
	mov	rcx, qword ptr [rsp + 0x168]
	or	rcx, qword ptr [rsp + 0x160]
	jne	.label_576
.label_639:
	mov	rdx, qword ptr [rsp + 0x100]
	mov	ecx, dword ptr [rsp + 0xd4]
	test	ecx, ecx
	je	.label_588
	cmp	ecx, 1
	jne	.label_599
	lea	rdi, [rdx - 1]
	lea	rbp, [rdx + 0xc]
	cmp	rdx, 0xc
	mov	rsi, -1
	cmove	rsi, rdx
	cmp	rdi, 0xb
	cmovb	rsi, rbp
	jmp	.label_602
.label_645:
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_616
.label_565:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, rcx
	call	__fprintf_chk
.label_560:
	mov	rax, qword ptr [rsp + 0x188]
	cmp	qword ptr [rsp + 0x170], 0
	je	.label_624
	test	rax, rax
	mov	rbx, rbp
	jne	.label_630
	cmp	dword ptr [rsp + 0xcc], 0
	jle	.label_633
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_691
	xor	eax, eax
	call	__fprintf_chk
	mov	rax, qword ptr [rsp + 0x188]
	jmp	.label_630
.label_624:
	mov	rbx, rbp
.label_630:
	test	rax, rax
	je	.label_633
	mov	r12, rbx
	mov	r14, qword ptr [rip + stderr]
	movsxd	rbx, dword ptr [rsp + 0xd0]
	mov	eax, ebx
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	lea	rdi, [rsp + 0x330]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_447
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	je	.label_673
	cdqe	
	lea	rax, [rsp + rax + 0x330]
	movsxd	rcx, ecx
	imul	rdx, rcx, -0x77777777
	shr	rdx, 0x20
	add	edx, ecx
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	imul	r8d, edx, 0x3c
	imul	rdi, rcx, 0x1b4e81b5
	mov	rbp, rdi
	shr	rbp, 0x3f
	shr	rdi, 0x26
	movsxd	rdx, edx
	imul	rbx, rdx, 0x66666667
	mov	rsi, rbx
	shr	rsi, 0x3f
	sar	rbx, 0x22
	add	ebx, esi
	add	ebx, ebx
	lea	esi, [rbx + rbx*4]
	sub	edx, esi
	add	edx, 0x30
	sub	ecx, r8d
	mov	byte ptr [rax], 0x3a
	lea	esi, [rdi + rbp + 0x30]
	mov	byte ptr [rax + 1], sil
	mov	byte ptr [rax + 2], dl
	jne	.label_678
	add	rax, 3
	jmp	.label_706
.label_775:
	mov	rbp, rbx
	cmp	rbx, r13
	jne	.label_708
	mov	esi, OFFSET FLAT:label_618
	mov	rdi, rax
	mov	r14, rax
	call	strcmp
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	test	eax, eax
	jne	.label_716
	mov	esi, OFFSET FLAT:label_720
	jmp	.label_565
.label_588:
	lea	rdi, [rdx - 1]
	xor	ebp, ebp
	cmp	rdx, 0xc
	mov	rsi, -1
	cmove	rsi, rbp
	cmp	rdi, 0xb
	jmp	.label_721
.label_599:
	cmp	rdx, 0x18
	mov	rsi, -1
.label_721:
	cmovb	rsi, rdx
.label_602:
	mov	dword ptr [rsp + 0x28], esi
	test	esi, esi
	js	.label_731
	mov	ecx, dword ptr [rsp + 0x108]
	mov	dword ptr [rsp + 0x24], ecx
	mov	ecx, dword ptr [rsp + 0x110]
	mov	dword ptr [rsp + 0x20], ecx
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_736
	mov	r12, r13
	xor	edi, edi
	test	rax, rax
	je	.label_745
	mov	esi, OFFSET FLAT:label_749
	jmp	.label_750
.label_731:
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_753
	cmp	ecx, 1
	mov	eax, OFFSET FLAT:label_440
	mov	edx, OFFSET FLAT:label_31
	cmove	rdx, rax
	test	ecx, ecx
	mov	ebx, OFFSET FLAT:label_756
	cmovne	rbx, rdx
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_757
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [rsp + 0x100]
	xor	eax, eax
	mov	rdi, rcx
	mov	rdx, rbx
	mov	rbx, qword ptr [rsp]
	call	dbg_printf
	jmp	.label_584
.label_678:
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rdx, ecx
	imul	rdx, rdx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x22
	lea	edi, [rdx + rsi]
	lea	edx, [rdx + rsi + 0x30]
	mov	byte ptr [rax + 4], dl
	add	edi, edi
	lea	edx, [rdi + rdi*4]
	neg	edx
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
.label_706:
	mov	byte ptr [rax], 0
.label_673:
	lea	rcx, [rsp + 0x330]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_790
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x68]
.label_633:
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	call	fputc
	jmp	.label_799
.label_576:
	mov	dword ptr [rsp + 0x20], 0
	mov	dword ptr [rsp + 0x24], 0
	mov	dword ptr [rsp + 0x28], 0
	mov	qword ptr [rsp + 0x118], 0
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_736
	mov	edi, OFFSET FLAT:label_814
	xor	eax, eax
	call	dbg_printf
	jmp	.label_736
.label_708:
	mov	r14, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_722
	mov	edx, 5
	mov	rbx, rax
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, rcx
	mov	rcx, rbx
	call	__fprintf_chk
	jmp	.label_560
.label_745:
	mov	esi, OFFSET FLAT:label_561
.label_750:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rbp, rbx
	shr	rbp, 0x20
	mov	r9d, dword ptr [rsp + 0x28]
	lea	r13, [rsp + 0x220]
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:label_569
	mov	eax, 0
	mov	rdi, r13
	push	rbx
	push	rbp
	call	__snprintf_chk
	add	rsp, 0x10
	xor	eax, eax
	mov	rdi, r14
	mov	rsi, r13
	call	dbg_printf
	mov	r13, r12
	mov	rbx, qword ptr [rsp]
.label_736:
	mov	rax, qword ptr [rsp + 0x168]
	or	rax, qword ptr [rsp + 0x160]
	or	rax, qword ptr [rsp + 0x180]
	je	.label_751
	mov	dword ptr [rsp + 0x40], 0xffffffff
.label_751:
	cmp	qword ptr [rsp + 0x170], 0
	je	.label_613
	mov	eax, dword ptr [rsp + 0xcc]
	mov	dword ptr [rsp + 0x40], eax
	jmp	.label_617
.label_613:
	mov	eax, dword ptr [rsp + 0x40]
.label_617:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1e8], ecx
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x1ec], ecx
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rsp + 0x1f0], ecx
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x1f4], ecx
	mov	rcx, qword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x1f8], ecx
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x1fc], ecx
	mov	dword ptr [rsp + 0x208], eax
	mov	dword ptr [rsp + 0x38], 0xffffffff
	lea	rsi, [rsp + 0x20]
	mov	rdi, rbx
	call	mktime_z
	mov	r12, rax
	cmp	dword ptr [rsp + 0x38], 0
	js	.label_642
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x28]
	xor	rax, qword ptr [rsp + 0x1e8]
	xor	rcx, qword ptr [rsp + 0x1f0]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x30]
	xor	rax, qword ptr [rsp + 0x1f8]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	je	.label_644
.label_642:
	mov	rax, qword ptr [rsp + 0x188]
	mov	qword ptr [rsp + 0x58], rax
	test	rax, rax
	je	.label_652
	mov	byte ptr [rsp + 0x292], 0x58
	mov	word ptr [rsp + 0x290], 0x5858
	movsxd	rbx, dword ptr [rsp + 0xd0]
	mov	eax, ebx
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	rbx, -0xe10
	lea	rdi, [rsp + 0x293]
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_447
	xor	eax, eax
	call	__sprintf_chk
	imul	ecx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, ecx
	mov	edx, esi
	neg	edx
	cmovl	edx, esi
	cmp	ebx, ecx
	je	.label_695
	cdqe	
	lea	rcx, [rsp + rax + 0x293]
	movsxd	rax, edx
	imul	rdx, rax, -0x77777777
	shr	rdx, 0x20
	add	edx, eax
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	imul	r8d, edx, 0x3c
	imul	rdi, rax, 0x1b4e81b5
	mov	rbp, rdi
	shr	rbp, 0x3f
	shr	rdi, 0x26
	movsxd	rdx, edx
	imul	rbx, rdx, 0x66666667
	mov	rsi, rbx
	shr	rsi, 0x3f
	sar	rbx, 0x22
	add	ebx, esi
	add	ebx, ebx
	lea	esi, [rbx + rbx*4]
	sub	edx, esi
	add	edx, 0x30
	sub	eax, r8d
	mov	byte ptr [rcx], 0x3a
	lea	esi, [rdi + rbp + 0x30]
	mov	byte ptr [rcx + 1], sil
	mov	byte ptr [rcx + 2], dl
	lea	rcx, [rcx + 3]
	je	.label_701
	mov	byte ptr [rcx], 0x3a
	movsxd	rdx, eax
	imul	rdx, rdx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x22
	lea	edi, [rdx + rsi]
	lea	edx, [rdx + rsi + 0x30]
	mov	byte ptr [rcx + 1], dl
	add	edi, edi
	lea	edx, [rdi + rdi*4]
	neg	edx
	lea	eax, [rax + rdx + 0x30]
	mov	byte ptr [rcx + 2], al
	add	rcx, 3
.label_701:
	mov	byte ptr [rcx], 0
.label_695:
	lea	rdi, [rsp + 0x290]
	call	tzalloc
	mov	r14, rax
	test	r14, r14
	je	.label_748
	mov	rax, qword ptr [rsp + 0x1e8]
	mov	dword ptr [rsp + 0x20], eax
	shr	rax, 0x20
	mov	dword ptr [rsp + 0x24], eax
	mov	rax, qword ptr [rsp + 0x1f0]
	mov	dword ptr [rsp + 0x28], eax
	shr	rax, 0x20
	mov	dword ptr [rsp + 0x2c], eax
	mov	rax, qword ptr [rsp + 0x1f8]
	mov	dword ptr [rsp + 0x30], eax
	shr	rax, 0x20
	mov	dword ptr [rsp + 0x34], eax
	mov	eax, dword ptr [rsp + 0x208]
	mov	dword ptr [rsp + 0x40], eax
	mov	dword ptr [rsp + 0x38], 0xffffffff
	lea	rsi, [rsp + 0x20]
	mov	rdi, r14
	call	mktime_z
	mov	r12, rax
	cmp	dword ptr [rsp + 0x38], 0
	js	.label_619
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x28]
	xor	rax, qword ptr [rsp + 0x1e8]
	xor	rcx, qword ptr [rsp + 0x1f0]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rbx, qword ptr [rsp + 0x30]
	xor	rbx, qword ptr [rsp + 0x1f8]
	mov	ebp, ebx
	or	ebp, ecx
	or	ebp, edx
	shr	rbx, 0x20
	mov	rdi, r14
	call	tzfree
	or	ebx, ebp
	mov	rbx, qword ptr [rsp]
	jne	.label_652
.label_644:
	cmp	qword ptr [rsp + 0x168], 0
	je	.label_796
	mov	rax, qword ptr [rsp + 0x160]
	test	rax, rax
	jne	.label_796
	mov	rcx, qword ptr [rsp + 0xc0]
	test	rcx, rcx
	jle	.label_801
	mov	eax, dword ptr [rsp + 0x38]
	cmp	eax, dword ptr [rsp + 0xc8]
	setne	al
	jmp	.label_806
.label_748:
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_571
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_816
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsp + 0x290]
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_571:
	xor	ebp, ebp
	mov	rbx, qword ptr [rsp]
	jmp	.label_584
.label_753:
	xor	ebp, ebp
	jmp	.label_584
.label_716:
	mov	esi, OFFSET FLAT:label_556
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, rcx
	mov	rcx, r14
	call	__fprintf_chk
	jmp	.label_560
.label_619:
	mov	rdi, r14
	call	tzfree
	mov	rbx, qword ptr [rsp]
.label_652:
	mov	qword ptr [rsp + 0x10], r13
	mov	r9, qword ptr [rsp + 0x1e8]
	mov	r10, qword ptr [rsp + 0x1f0]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x28]
	cmp	r9d, ebp
	sete	r8b
	mov	rsi, r9
	shr	rsi, 0x20
	mov	rdi, rbp
	shr	rdi, 0x20
	cmp	esi, edi
	sete	r14b
	mov	rcx, r10
	shr	rcx, 0x20
	mov	rdx, rax
	shr	rdx, 0x20
	mov	qword ptr [rsp + 0x1e0], rcx
	mov	qword ptr [rsp + 0x1d8], rdx
	cmp	ecx, edx
	sete	r11b
	mov	r12, qword ptr [rsp + 0x1f8]
	mov	r13, qword ptr [rsp + 0x30]
	cmp	r12d, r13d
	sete	r15b
	mov	qword ptr [rsp + 0x60], r12
	shr	r12, 0x20
	mov	qword ptr [rsp + 0x68], r13
	shr	r13, 0x20
	cmp	r12d, r13d
	sete	dl
	cmp	r10d, eax
	setne	cl
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_577
	mov	byte ptr [rsp + 0x1f], dl
	mov	byte ptr [rsp + 0x1d0], r11b
	mov	qword ptr [rsp + 0x300], rdi
	mov	qword ptr [rsp + 0x308], rsi
	mov	qword ptr [rsp + 0x310], rax
	mov	qword ptr [rsp + 0x318], r10
	mov	qword ptr [rsp + 0x320], rbp
	mov	qword ptr [rsp + 0x328], r9
	and	r8b, cl
	and	r14b, r8b
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_627
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_649
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x2f8], rax
	lea	rdi, [rsp + 0x290]
	lea	rcx, [rsp + 0x1e8]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_601
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	mov	rbp, rax
	cmp	ebp, 0x63
	jg	.label_668
	mov	rax, qword ptr [rsp + 0x188]
	test	rax, rax
	je	.label_668
	mov	byte ptr [rsp + 0x70], r15b
	mov	byte ptr [rsp + 8], r14b
	movsxd	rbx, dword ptr [rsp + 0xd0]
	mov	r14d, 0x64
	sub	r14d, ebp
	mov	eax, ebx
	shr	eax, 0x1f
	imul	r15, rbx, -0x6e5d4c3b
	shr	r15, 0x20
	add	r15d, ebx
	mov	ecx, r15d
	shr	ecx, 0x1f
	sar	r15d, 0xb
	add	r15d, ecx
	mov	r9d, r15d
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, r15d
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_447
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, r15d, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	movsxd	rdx, ebp
	lea	rdi, [rsp + rdx + 0x290]
	movsxd	rsi, r14d
	je	.label_817
	cdqe	
	lea	rax, [rsp + rax + 0x80]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 5
	add	edx, ebp
	imul	r8d, edx, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rdx, edx
	imul	rcx, rdx, 0x66666667
	mov	rbp, rcx
	shr	rbp, 0x3f
	sar	rcx, 0x22
	add	ecx, ebp
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_711
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	ebp, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	ebp, ebp
	lea	ecx, [rbp + rbp*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_741
.label_801:
	xor	eax, eax
.label_806:
	movzx	eax, al
	cmp	rcx, rax
	jge	.label_637
	test	rcx, rcx
	jle	.label_761
	mov	eax, dword ptr [rsp + 0x38]
	cmp	eax, dword ptr [rsp + 0xc8]
	setne	al
	jmp	.label_765
.label_637:
	test	rcx, rcx
	jle	.label_771
	mov	eax, dword ptr [rsp + 0x38]
	cmp	eax, dword ptr [rsp + 0xc8]
	setne	al
	jmp	.label_773
.label_711:
	add	rax, 3
.label_741:
	mov	byte ptr [rax], 0
.label_817:
	lea	r9, [rsp + 0x80]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_570
	xor	eax, eax
	call	__snprintf_chk
	mov	r14b, byte ptr [rsp + 8]
	mov	r15b, byte ptr [rsp + 0x70]
.label_668:
	and	r15b, byte ptr [rsp + 0x1f]
	mov	byte ptr [rsp + 0x70], r15b
	and	r14b, byte ptr [rsp + 0x1d0]
	lea	rbx, [rsp + 0x290]
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x2f8]
	mov	rsi, rbx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_792
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	lea	rcx, [rsp + 0x20]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_601
	xor	r8d, r8d
	xor	r9d, r9d
	mov	rdi, rbx
	call	nstrftime
	mov	r15, rax
	cmp	r15d, 0x63
	jg	.label_808
	mov	rax, qword ptr [rsp + 0x188]
	test	rax, rax
	je	.label_808
	mov	qword ptr [rsp + 0x1d0], rbp
	mov	byte ptr [rsp + 8], r14b
	movsxd	rbx, dword ptr [rsp + 0xd0]
	mov	r14d, 0x64
	sub	r14d, r15d
	mov	eax, ebx
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_447
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	movsxd	rdx, r15d
	lea	rdi, [rsp + rdx + 0x290]
	movsxd	rsi, r14d
	je	.label_574
	cdqe	
	lea	rax, [rsp + rax + 0x80]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 5
	add	edx, ebp
	imul	r8d, edx, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rdx, edx
	imul	rcx, rdx, 0x66666667
	mov	rbp, rcx
	shr	rbp, 0x3f
	sar	rcx, 0x22
	add	ecx, ebp
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_587
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	ebp, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	ebp, ebp
	lea	ecx, [rbp + rbp*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_621
.label_587:
	add	rax, 3
.label_621:
	mov	byte ptr [rax], 0
.label_574:
	lea	r9, [rsp + 0x80]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_570
	xor	eax, eax
	call	__snprintf_chk
	mov	r14b, byte ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x1d0]
.label_808:
	and	r14b, byte ptr [rsp + 0x70]
	mov	byte ptr [rsp + 8], r14b
	lea	r14, [rsp + 0x290]
	xor	eax, eax
	mov	rdi, rbp
	mov	rsi, r14
	call	dbg_printf
	cmp	r12d, r13d
	mov	eax, OFFSET FLAT:label_31
	mov	r9d, OFFSET FLAT:label_659
	cmove	r9, rax
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rsp + 0x68]
	cmp	ecx, edx
	mov	r15d, OFFSET FLAT:label_660
	mov	r10d, OFFSET FLAT:label_660
	cmove	r10, rax
	mov	r12, qword ptr [rsp + 0x1e0]
	mov	r13, qword ptr [rsp + 0x1d8]
	cmp	r12d, r13d
	mov	r11d, OFFSET FLAT:label_660
	cmove	r11, rax
	mov	rcx, qword ptr [rsp + 0x318]
	mov	rdx, qword ptr [rsp + 0x310]
	cmp	ecx, edx
	mov	ebx, OFFSET FLAT:label_660
	cmove	rbx, rax
	mov	rcx, qword ptr [rsp + 0x308]
	mov	rdx, qword ptr [rsp + 0x300]
	cmp	ecx, edx
	mov	ebp, OFFSET FLAT:label_660
	cmove	rbp, rax
	mov	rcx, qword ptr [rsp + 0x328]
	mov	rdx, qword ptr [rsp + 0x320]
	cmp	ecx, edx
	cmove	r15, rax
	sub	rsp, 8
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:label_661
	mov	eax, 0
	mov	rdi, r14
	push	r15
	push	rbp
	push	rbx
	push	r11
	push	r10
	call	__snprintf_chk
	add	rsp, 0x30
	test	eax, eax
	mov	rbx, qword ptr [rsp]
	js	.label_607
	movabs	rcx, 0xffffffff00000000
	cmp	eax, 0x63
	mov	edx, 0x63
	cmovb	edx, eax
	inc	edx
	lea	rax, [rdx - 1]
	shl	rdx, 0x20
	add	rdx, rcx
.label_687:
	mov	rsi, rdx
	test	rax, rax
	jle	.label_717
	lea	rdx, [rsi + rcx]
	cmp	byte ptr [rsp + rax + 0x28f], 0x20
	lea	rax, [rax - 1]
	je	.label_687
.label_717:
	sar	rsi, 0x20
	mov	byte ptr [rsp + rsi + 0x290], 0
.label_607:
	lea	rsi, [rsp + 0x290]
	mov	edi, OFFSET FLAT:label_734
	xor	eax, eax
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_732
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	cmp	byte ptr [rsp + 8], 0
	je	.label_742
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_744
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_742:
	cmp	r12d, r13d
	je	.label_609
	mov	rax, qword ptr [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	eax, ecx
	je	.label_609
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_729
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_609:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_770
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	cmp	qword ptr [rsp + 0x58], 0
	je	.label_777
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_739
	jmp	.label_740
.label_777:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_781
.label_740:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, OFFSET FLAT:label_783
	xor	eax, eax
	mov	rsi, rcx
	call	dbg_printf
.label_577:
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_584
.label_761:
	xor	eax, eax
.label_765:
	movzx	eax, al
	mov	rdx, rcx
	sub	rdx, rax
	movabs	rax, 0xedb6db6db6db6db7
	cmp	rdx, rax
	jge	.label_788
	jmp	.label_620
.label_771:
	xor	eax, eax
.label_773:
	movzx	eax, al
	mov	rdx, rcx
	sub	rdx, rax
	movabs	rax, 0x1249249249249249
	cmp	rdx, rax
	jg	.label_620
.label_788:
	test	rcx, rcx
	jle	.label_800
	mov	eax, dword ptr [rsp + 0x38]
	cmp	eax, dword ptr [rsp + 0xc8]
	setne	al
	jmp	.label_667
.label_800:
	xor	eax, eax
.label_667:
	movzx	eax, al
	sub	rcx, rax
	lea	rax, [rcx*8]
	sub	rax, rcx
	js	.label_693
	mov	rsi, r15
	sub	rsi, rax
	mov	ecx, dword ptr [rsp + 0xc8]
	mov	edx, dword ptr [rsp + 0x38]
	lea	edi, [rcx + 7]
	sub	edi, edx
	movsxd	rdi, edi
	imul	rbp, rdi, -0x6db6db6d
	shr	rbp, 0x20
	add	ebp, edi
	mov	ebx, ebp
	shr	ebx, 0x1f
	sar	ebp, 2
	add	ebp, ebx
	lea	ebx, [rbp*8]
	sub	ebx, ebp
	sub	edi, ebx
	mov	rbx, qword ptr [rsp]
	movsxd	rdi, edi
	jmp	.label_812
.label_693:
	mov	ecx, dword ptr [rsp + 0xc8]
	mov	edx, dword ptr [rsp + 0x38]
	lea	esi, [rcx + 7]
	sub	esi, edx
	movsxd	rsi, esi
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	add	edi, esi
	mov	ebp, edi
	shr	ebp, 0x1f
	sar	edi, 2
	add	edi, ebp
	lea	ebp, [rdi*8]
	sub	ebp, edi
	sub	esi, ebp
	movsxd	rsi, esi
	lea	rdi, [r15 + 1]
	sub	rdi, rax
.label_812:
	cmp	rsi, rdi
	jl	.label_620
	add	ecx, 7
	sub	ecx, edx
	movsxd	rcx, ecx
	imul	rdx, rcx, -0x6db6db6d
	shr	rdx, 0x20
	add	edx, ecx
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 2
	add	edx, esi
	lea	esi, [rdx*8]
	sub	esi, edx
	sub	ecx, esi
	movsxd	rcx, ecx
	add	rcx, rax
	movsxd	rax, dword ptr [rsp + 0x2c]
	test	rax, rax
	js	.label_580
	mov	rdx, r15
	sub	rdx, rax
	cmp	rdx, rcx
	jge	.label_762
	jmp	.label_604
.label_580:
	lea	rdx, [r15 + 1]
	sub	rdx, rax
	cmp	rcx, rdx
	jl	.label_604
.label_762:
	mov	edx, 0x80000000
	lea	rdx, [rcx + rdx]
	add	rdx, rax
	shr	rdx, 0x20
	je	.label_612
.label_604:
	add	ecx, eax
	mov	dword ptr [rsp + 0x2c], ecx
.label_620:
	cmp	byte ptr [rsp + 0x191], 0
	jne	.label_818
	jmp	.label_585
.label_612:
	mov	r14, r13
	add	ecx, eax
	mov	dword ptr [rsp + 0x2c], ecx
	mov	dword ptr [rsp + 0x40], 0xffffffff
	lea	rsi, [rsp + 0x20]
	mov	rdi, rbx
	call	mktime_z
	mov	cl, byte ptr [rsp + 0x191]
	mov	r12, rax
	cmp	rax, -1
	je	.label_628
	test	cl, cl
	je	.label_635
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_629
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rsp + 0xb8]
	lea	rsi, [rsp + 0x290]
	call	str_days
	mov	qword ptr [rsp + 0x58], rax
	lea	rdi, [rsp + 0x220]
	lea	rcx, [rsp + 0x20]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_601
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	mov	rbp, rax
	cmp	ebp, 0x63
	jg	.label_655
	mov	rax, qword ptr [rsp + 0x188]
	test	rax, rax
	je	.label_655
	movsxd	r13, dword ptr [rsp + 0xd0]
	mov	eax, 0x64
	sub	eax, ebp
	mov	dword ptr [rsp + 0x70], eax
	mov	eax, r13d
	shr	eax, 0x1f
	imul	rbx, r13, -0x6e5d4c3b
	shr	rbx, 0x20
	add	ebx, r13d
	mov	ecx, ebx
	shr	ecx, 0x1f
	sar	ebx, 0xb
	add	ebx, ecx
	mov	r9d, ebx
	neg	r9d
	cmp	r13, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebx
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_447
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebx, 0xe10
	mov	esi, r13d
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	r13d, edx
	movsxd	rdx, ebp
	lea	rdi, [rsp + rdx + 0x220]
	movsxd	rsi, dword ptr [rsp + 0x70]
	je	.label_686
	cdqe	
	lea	rax, [rsp + rax + 0x80]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 5
	add	edx, ebp
	imul	r8d, edx, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rdx, edx
	imul	rcx, rdx, 0x66666667
	mov	rbp, rcx
	shr	rbp, 0x3f
	sar	rcx, 0x22
	add	ecx, ebp
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_737
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	ebp, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	ebp, ebp
	lea	ecx, [rbp + rbp*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_725
.label_628:
	test	cl, cl
	mov	r13, r14
	mov	rbx, qword ptr [rsp]
	je	.label_585
.label_818:
	mov	qword ptr [rsp + 0x10], r13
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_579
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	lea	rdi, [rsp + 0xb8]
	lea	rsi, [rsp + 0x290]
	call	str_days
	mov	r15, rax
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r13d, dword ptr [rsp + 0xc8]
	lea	rdi, [rsp + 0x220]
	lea	rcx, [rsp + 0x20]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_601
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	mov	r12, rax
	cmp	r12d, 0x63
	jg	.label_738
	mov	rax, qword ptr [rsp + 0x188]
	test	rax, rax
	je	.label_738
	mov	qword ptr [rsp + 0x58], rbp
	mov	qword ptr [rsp + 0x60], r15
	mov	qword ptr [rsp + 8], r14
	movsxd	rbx, dword ptr [rsp + 0xd0]
	mov	r14d, 0x64
	sub	r14d, r12d
	mov	eax, ebx
	shr	eax, 0x1f
	imul	r15, rbx, -0x6e5d4c3b
	shr	r15, 0x20
	add	r15d, ebx
	mov	ecx, r15d
	shr	ecx, 0x1f
	sar	r15d, 0xb
	add	r15d, ecx
	mov	r9d, r15d
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, r15d
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_447
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, r15d, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	movsxd	rdx, r12d
	lea	rdi, [rsp + rdx + 0x220]
	movsxd	rsi, r14d
	je	.label_805
	cdqe	
	lea	rax, [rsp + rax + 0x80]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 5
	add	edx, ebp
	imul	r8d, edx, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rdx, edx
	imul	rcx, rdx, 0x66666667
	mov	rbp, rcx
	shr	rbp, 0x3f
	sar	rcx, 0x22
	add	ecx, ebp
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_767
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	ebp, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	ebp, ebp
	lea	ecx, [rbp + rbp*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_672
.label_767:
	add	rax, 3
.label_672:
	mov	byte ptr [rax], 0
.label_805:
	lea	r9, [rsp + 0x80]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_570
	xor	eax, eax
	call	__snprintf_chk
	mov	rbx, qword ptr [rsp]
	mov	r14, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp + 0x60]
	mov	rbp, qword ptr [rsp + 0x58]
.label_738:
	lea	r8, [rsp + 0x220]
	xor	eax, eax
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	mov	ecx, r13d
	call	dbg_printf
	mov	r13, qword ptr [rsp + 0x10]
	xor	ebp, ebp
	jmp	.label_584
.label_737:
	add	rax, 3
.label_725:
	mov	byte ptr [rax], 0
.label_686:
	lea	r9, [rsp + 0x80]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_570
	xor	eax, eax
	call	__snprintf_chk
.label_655:
	lea	rdx, [rsp + 0x220]
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x58]
	call	dbg_printf
.label_635:
	mov	r13, r14
	mov	rbx, qword ptr [rsp]
.label_796:
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_647
	mov	rax, qword ptr [rsp + 0x160]
	mov	rcx, qword ptr [rsp + 0x168]
	mov	rdx, rcx
	or	rdx, rax
	jne	.label_648
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_656
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	movsxd	rax, dword ptr [rsp + 0x34]
	xor	ecx, ecx
	cmp	rax, -0x76d
	setg	cl
	lea	rcx, qword ptr [rcx + label_664]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	lea	edi, [rdx + rsi]
	lea	edx, [rdx + rsi + 0x13]
	mov	r8d, 0xffffffed
	sub	r8d, edi
	test	edx, edx
	cmovns	r8d, edx
	imul	edx, edi, 0x64
	sub	eax, edx
	mov	r9d, eax
	neg	r9d
	cmovl	r9d, eax
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0xd
	xor	eax, eax
	call	__sprintf_chk
	mov	ebx, dword ptr [rsp + 0x2c]
	mov	ebp, dword ptr [rsp + 0x30]
	inc	ebp
	mov	r14, r12
	mov	r12, r13
	lea	r13, [rsp + 0x220]
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:label_685
	mov	eax, 0
	mov	rdi, r13
	lea	r9, [rsp + 0x80]
	push	rbx
	mov	rbx, qword ptr [rsp + 8]
	push	rbp
	call	__snprintf_chk
	add	rsp, 0x10
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	mov	r13, r12
	mov	r12, r14
	call	dbg_printf
	mov	rax, qword ptr [rsp + 0x160]
	mov	rcx, qword ptr [rsp + 0x168]
.label_648:
	test	rcx, rcx
	je	.label_675
	test	rax, rax
	je	.label_675
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_719
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0xb8]
	lea	rsi, [rsp + 0x290]
	call	str_days
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rbx, qword ptr [rsp]
	mov	rsi, rcx
	call	dbg_printf
.label_675:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_662
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	lea	rdi, [rsp + 0x220]
	lea	rcx, [rsp + 0x20]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_601
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	cmp	eax, 0x63
	jg	.label_752
	mov	rcx, qword ptr [rsp + 0x188]
	test	rcx, rcx
	je	.label_752
	mov	qword ptr [rsp + 8], rbp
	mov	qword ptr [rsp + 0x10], r13
	movsxd	rbx, dword ptr [rsp + 0xd0]
	mov	r13d, 0x64
	sub	r13d, eax
	mov	edx, ebx
	shr	edx, 0x1f
	imul	r14, rbx, -0x6e5d4c3b
	shr	r14, 0x20
	add	r14d, ebx
	mov	rbp, rax
	mov	ecx, r14d
	shr	ecx, 0x1f
	sar	r14d, 0xb
	add	r14d, ecx
	mov	r9d, r14d
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rdx + rdx + 0x2b]
	cmovg	r9d, r14d
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_447
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, r14d, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	movsxd	rdx, ebp
	lea	rdi, [rsp + rdx + 0x220]
	movsxd	rsi, r13d
	je	.label_784
	cdqe	
	lea	rax, [rsp + rax + 0x80]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 5
	add	edx, ebp
	imul	r8d, edx, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rdx, edx
	imul	rcx, rdx, 0x66666667
	mov	rbp, rcx
	shr	rbp, 0x3f
	sar	rcx, 0x22
	add	ecx, ebp
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_791
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	ebp, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	ebp, ebp
	lea	ecx, [rbp + rbp*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_819
.label_791:
	add	rax, 3
.label_819:
	mov	byte ptr [rax], 0
.label_784:
	lea	r9, [rsp + 0x80]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_570
	xor	eax, eax
	call	__snprintf_chk
	mov	r13, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp]
	mov	rbp, qword ptr [rsp + 8]
.label_752:
	lea	rsi, [rsp + 0x220]
	xor	eax, eax
	mov	rdi, rbp
	call	dbg_printf
.label_647:
	mov	rcx, qword ptr [rsp + 0x128]
	mov	rax, qword ptr [rsp + 0x130]
	or	rcx, qword ptr [rsp + 0x120]
	mov	rdx, rcx
	or	rdx, rax
	je	.label_590
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_603
	test	rcx, rcx
	je	.label_608
	cmp	dword ptr [rsp + 0x2c], 0xf
	je	.label_608
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_614
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	mov	rax, qword ptr [rsp + 0x130]
.label_608:
	test	rax, rax
	je	.label_603
	cmp	dword ptr [rsp + 0x28], 0xc
	je	.label_603
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_622
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_603:
	mov	r14, r13
	mov	r13, qword ptr [rsp + 0x120]
	test	r13, r13
	js	.label_632
	mov	rcx, r15
	sub	rcx, r13
	movsxd	rax, dword ptr [rsp + 0x34]
	cmp	rcx, rax
	jge	.label_636
	jmp	.label_640
.label_632:
	movsxd	rax, dword ptr [rsp + 0x34]
	lea	rcx, [r15 + 1]
	sub	rcx, r13
	cmp	rax, rcx
	jl	.label_640
.label_636:
	movsxd	rcx, eax
	mov	edx, 0x80000000
	lea	rdx, [r13 + rdx]
	add	rdx, rcx
	shr	rdx, 0x20
	jne	.label_640
	mov	rdi, qword ptr [rsp + 0x128]
	test	rdi, rdi
	js	.label_651
	mov	rdx, r15
	sub	rdx, rdi
	movsxd	rcx, dword ptr [rsp + 0x30]
	cmp	rdx, rcx
	jge	.label_811
	jmp	.label_640
.label_651:
	movsxd	rcx, dword ptr [rsp + 0x30]
	lea	rdx, [r15 + 1]
	sub	rdx, rdi
	cmp	rcx, rdx
	jl	.label_640
.label_811:
	movsxd	rdx, ecx
	mov	esi, 0x80000000
	lea	rsi, [rdi + rsi]
	add	rsi, rdx
	shr	rsi, 0x20
	jne	.label_640
	mov	rbx, qword ptr [rsp + 0x130]
	test	rbx, rbx
	js	.label_670
	mov	rsi, r15
	sub	rsi, rbx
	movsxd	rdx, dword ptr [rsp + 0x2c]
	cmp	rsi, rdx
	jmp	.label_676
.label_670:
	movsxd	rdx, dword ptr [rsp + 0x2c]
	lea	rsi, [r15 + 1]
	sub	rsi, rbx
	cmp	rdx, rsi
.label_676:
	mov	rbp, rdi
	jl	.label_640
	movsxd	rsi, edx
	mov	edi, 0x80000000
	add	rdi, rbx
	add	rdi, rsi
	shr	rdi, 0x20
	je	.label_680
.label_640:
	cmp	byte ptr [rsp + 0x191], 0
	mov	r13, r14
	mov	rbx, qword ptr [rsp]
	je	.label_585
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_692
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, OFFSET FLAT:label_698
	mov	edx, 0x877
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	xor	ebp, ebp
	jmp	.label_584
.label_680:
	add	r13d, eax
	add	ebp, ecx
	add	ebx, edx
	mov	dword ptr [rsp + 0x34], r13d
	mov	qword ptr [rsp + 0x58], rbp
	mov	dword ptr [rsp + 0x30], ebp
	mov	dword ptr [rsp + 0x2c], ebx
	mov	eax, dword ptr [rsp + 0x1f0]
	mov	dword ptr [rsp + 0x28], eax
	mov	eax, dword ptr [rsp + 0x1ec]
	mov	dword ptr [rsp + 0x24], eax
	mov	eax, dword ptr [rsp + 0x1e8]
	mov	dword ptr [rsp + 0x20], eax
	mov	eax, dword ptr [rsp + 0x208]
	mov	dword ptr [rsp + 0x40], eax
	lea	rsi, [rsp + 0x20]
	mov	rdi, qword ptr [rsp]
	call	mktime_z
	mov	qword ptr [rsp + 8], rax
	cmp	rax, -1
	mov	al, byte ptr [rsp + 0x191]
	je	.label_772
	test	al, al
	je	.label_724
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_730
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x120]
	mov	rdx, qword ptr [rsp + 0x128]
	mov	rcx, qword ptr [rsp + 0x130]
	xor	eax, eax
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_746
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x70], rax
	lea	rdi, [rsp + 0x220]
	lea	rcx, [rsp + 0x20]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_601
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	mov	rcx, rax
	cmp	eax, 0x63
	jg	.label_665
	mov	rax, qword ptr [rsp + 0x188]
	test	rax, rax
	je	.label_665
	movsxd	r12, dword ptr [rsp + 0xd0]
	mov	eax, 0x64
	mov	qword ptr [rsp + 0x1d8], rcx
	sub	eax, ecx
	mov	dword ptr [rsp + 0x1e0], eax
	mov	eax, r12d
	shr	eax, 0x1f
	imul	rbp, r12, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, r12d
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	r12, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_447
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebp, 0xe10
	mov	esi, r12d
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	r12d, edx
	mov	rdx, qword ptr [rsp + 0x1d8]
	movsxd	rdx, edx
	lea	rdi, [rsp + rdx + 0x220]
	movsxd	rsi, dword ptr [rsp + 0x1e0]
	je	.label_793
	cdqe	
	lea	r11, [rsp + rax + 0x80]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 5
	add	edx, ebp
	imul	r8d, edx, 0x3c
	imul	rbp, r9, 0x1b4e81b5
	mov	r10, rbp
	shr	r10, 0x3f
	shr	rbp, 0x26
	movsxd	rdx, edx
	imul	rcx, rdx, 0x66666667
	mov	rax, rcx
	shr	rax, 0x3f
	sar	rcx, 0x22
	add	ecx, eax
	add	ecx, ecx
	lea	eax, [rcx + rcx*4]
	sub	edx, eax
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [r11], 0x3a
	lea	eax, [rbp + r10 + 0x30]
	mov	byte ptr [r11 + 1], al
	mov	byte ptr [r11 + 2], dl
	je	.label_700
	mov	byte ptr [r11 + 3], 0x3a
	movsxd	rax, r9d
	imul	rax, rax, 0x66666667
	mov	rcx, rax
	shr	rcx, 0x3f
	sar	rax, 0x22
	lea	edx, [rax + rcx]
	lea	eax, [rax + rcx + 0x30]
	mov	byte ptr [r11 + 4], al
	add	edx, edx
	lea	eax, [rdx + rdx*4]
	neg	eax
	lea	eax, [r9 + rax + 0x30]
	mov	byte ptr [r11 + 5], al
	add	r11, 6
	jmp	.label_815
.label_772:
	test	al, al
	mov	r13, r14
	mov	rbx, qword ptr [rsp]
	je	.label_585
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_597
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	lea	rdi, [rsp + 0x220]
	lea	rcx, [rsp + 0x20]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_601
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	mov	r12, rax
	cmp	r12d, 0x63
	jg	.label_568
	mov	rax, qword ptr [rsp + 0x188]
	test	rax, rax
	je	.label_568
	movsxd	rbx, dword ptr [rsp + 0xd0]
	mov	r15d, 0x64
	sub	r15d, r12d
	mov	eax, ebx
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_447
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	movsxd	rdx, r12d
	lea	rdi, [rsp + rdx + 0x220]
	movsxd	rsi, r15d
	je	.label_646
	cdqe	
	lea	rax, [rsp + rax + 0x80]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 5
	add	edx, ebp
	imul	r8d, edx, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rdx, edx
	imul	rcx, rdx, 0x66666667
	mov	rbp, rcx
	shr	rbp, 0x3f
	sar	rcx, 0x22
	add	ecx, ebp
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_654
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	ebp, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	ebp, ebp
	lea	ecx, [rbp + rbp*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_682
.label_700:
	add	r11, 3
.label_815:
	mov	byte ptr [r11], 0
.label_793:
	lea	r9, [rsp + 0x80]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_570
	xor	eax, eax
	call	__snprintf_chk
.label_665:
	lea	rsi, [rsp + 0x220]
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x70]
	call	dbg_printf
	mov	eax, dword ptr [rsp + 0x208]
	cmp	eax, -1
	je	.label_709
	cmp	dword ptr [rsp + 0x40], eax
	je	.label_709
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_718
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_709:
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_724
	cmp	dword ptr [rsp + 0x2c], ebx
	jne	.label_681
	cmp	qword ptr [rsp + 0x128], 0
	jne	.label_724
	mov	rax, qword ptr [rsp + 0x58]
	cmp	dword ptr [rsp + 0x30], eax
	je	.label_724
.label_681:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_683
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_666
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	eax, eax
	cmp	r13d, 0xfffff893
	setg	al
	lea	rcx, qword ptr [rax + label_664]
	movsxd	rax, r13d
	imul	rax, rax, 0x51eb851f
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x25
	lea	esi, [rax + rdx]
	lea	eax, [rax + rdx + 0x13]
	mov	ebp, 0xffffffed
	mov	r8d, 0xffffffed
	sub	r8d, esi
	test	eax, eax
	cmovns	r8d, eax
	imul	eax, esi, 0x64
	sub	r13d, eax
	mov	r9d, r13d
	neg	r9d
	cmovl	r9d, r13d
	lea	r13, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0xd
	xor	eax, eax
	mov	rdi, r13
	call	__sprintf_chk
	mov	rdx, qword ptr [rsp + 0x58]
	inc	edx
	xor	eax, eax
	mov	rdi, r12
	mov	rsi, r13
	mov	ecx, ebx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_643
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rsp + 0x34]
	xor	ecx, ecx
	cmp	rax, -0x76d
	setg	cl
	lea	rcx, qword ptr [rcx + label_664]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	lea	edi, [rdx + rsi]
	lea	edx, [rdx + rsi + 0x13]
	sub	ebp, edi
	test	edx, edx
	cmovns	ebp, edx
	imul	edx, edi, 0x64
	sub	eax, edx
	mov	r9d, eax
	neg	r9d
	cmovl	r9d, eax
	mov	esi, 1
	mov	edx, 0xd
	xor	eax, eax
	mov	rdi, r13
	mov	r8d, ebp
	call	__sprintf_chk
	mov	ecx, dword ptr [rsp + 0x2c]
	mov	edx, dword ptr [rsp + 0x30]
	inc	edx
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, r13
	call	dbg_printf
.label_724:
	mov	r13, r14
	mov	rbx, qword ptr [rsp]
	mov	r12, qword ptr [rsp + 8]
.label_590:
	cmp	qword ptr [rsp + 0x188], 0
	je	.label_821
	movsxd	rax, dword ptr [rsp + 0xd0]
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	js	.label_824
	lea	rsi, [r15 + 1]
	xor	rsi, rdx
	mov	ecx, 1
	cmp	rax, rsi
	jge	.label_557
	jmp	.label_563
.label_824:
	lea	rsi, [rdx + r15]
	mov	ecx, 1
	cmp	rsi, rax
	jl	.label_563
.label_557:
	xor	ecx, ecx
.label_563:
	sub	rax, rdx
	js	.label_572
	lea	rsi, [r15 + 1]
	xor	rsi, rax
	mov	edx, 1
	cmp	r12, rsi
	jge	.label_573
	jmp	.label_578
.label_572:
	lea	rsi, [rax + r15]
	mov	edx, 1
	cmp	rsi, r12
	jl	.label_578
.label_573:
	xor	edx, edx
.label_578:
	or	edx, ecx
	je	.label_583
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_585
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_591
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, dword ptr [rsp + 0xd0]
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	xor	ebp, ebp
	jmp	.label_584
.label_583:
	sub	r12, rax
.label_821:
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_610
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_615
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x220]
	lea	rcx, [rsp + 0x20]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_601
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	mov	r14, rax
	cmp	r14d, 0x63
	jg	.label_626
	mov	rax, qword ptr [rsp + 0x188]
	test	rax, rax
	je	.label_626
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rsp + 0x10], r13
	movsxd	rbx, dword ptr [rsp + 0xd0]
	mov	r13d, 0x64
	sub	r13d, r14d
	mov	eax, ebx
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_447
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	movsxd	rdx, r14d
	lea	rdi, [rsp + rdx + 0x220]
	movsxd	rsi, r13d
	je	.label_663
	cdqe	
	lea	rax, [rsp + rax + 0x80]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 5
	add	edx, ebp
	imul	r8d, edx, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rdx, edx
	imul	rcx, rdx, 0x66666667
	mov	rbp, rcx
	shr	rbp, 0x3f
	sar	rcx, 0x22
	add	ecx, ebp
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_671
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	ebp, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	ebp, ebp
	lea	ecx, [rbp + rbp*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_747
.label_671:
	add	rax, 3
.label_747:
	mov	byte ptr [rax], 0
.label_663:
	lea	r9, [rsp + 0x80]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_570
	xor	eax, eax
	call	__snprintf_chk
	mov	r13, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 8]
.label_626:
	lea	rsi, [rsp + 0x220]
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, r12
	call	dbg_printf
.label_610:
	movsxd	rdi, dword ptr [rsp + 0x150]
	mov	rsi, qword ptr [rsp + 0x118]
	add	rsi, rdi
	movabs	rbp, 0x112e0be826d694b3
	mov	rax, rsi
	imul	rbp
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	mov	rcx, rsi
	sub	rcx, rax
	add	rcx, 0x3b9aca00
	mov	rax, rcx
	imul	rbp
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	sub	rcx, rax
	sub	rsi, rcx
	mov	rax, rsi
	imul	rbp
	mov	rax, qword ptr [rsp + 0x138]
	test	rax, rax
	js	.label_727
	movabs	rsi, 0x91a2b3c4d5e6f
	cmp	rax, rsi
	jle	.label_766
	jmp	.label_759
.label_727:
	movabs	rsi, 0xfff6e5d4c3b2a191
	cmp	rax, rsi
	jl	.label_759
.label_766:
	imul	rbx, rax, 0xe10
	test	rbx, rbx
	js	.label_778
	mov	rsi, r15
	sub	rsi, rbx
	cmp	rsi, r12
	jge	.label_780
	jmp	.label_759
.label_778:
	lea	rsi, [r15 + 1]
	sub	rsi, rbx
	cmp	r12, rsi
	jl	.label_759
.label_780:
	mov	qword ptr [rsp + 0x10], r13
	mov	rsi, qword ptr [rsp + 0x140]
	test	rsi, rsi
	js	.label_794
	movabs	rbp, 0x222222222222222
	cmp	rsi, rbp
	mov	r13, qword ptr [rsp + 0x10]
	jle	.label_787
	jmp	.label_759
.label_794:
	movabs	rbp, 0xfdddddddddddddde
	cmp	rsi, rbp
	mov	r13, qword ptr [rsp + 0x10]
	jl	.label_759
.label_787:
	add	rbx, r12
	imul	r14, rsi, 0x3c
	test	r14, r14
	js	.label_798
	mov	rbp, r15
	sub	rbp, r14
	cmp	rbp, rbx
	jmp	.label_657
.label_798:
	lea	rbp, [r15 + 1]
	sub	rbp, r14
	cmp	rbx, rbp
.label_657:
	mov	r13, qword ptr [rsp + 0x10]
	jl	.label_759
	add	r14, rbx
	mov	rbx, qword ptr [rsp + 0x148]
	test	rbx, rbx
	js	.label_804
	mov	rbp, r15
	sub	rbp, rbx
	cmp	rbp, r14
	jmp	.label_813
.label_804:
	lea	rbp, [r15 + 1]
	sub	rbp, rbx
	cmp	r14, rbp
.label_813:
	mov	r13, qword ptr [rsp + 0x10]
	jl	.label_759
	mov	rbp, rdx
	shr	rbp, 0x3f
	sar	rdx, 0x1a
	add	rdx, rbp
	add	r14, rbx
	movsxd	rdx, edx
	test	edx, edx
	js	.label_631
	sub	r15, rdx
	cmp	r15, r14
	jmp	.label_823
.label_631:
	inc	r15
	sub	r15, rdx
	cmp	r14, r15
.label_823:
	mov	r13, qword ptr [rsp + 0x10]
	jge	.label_826
.label_759:
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_571
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_562
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	jmp	.label_571
.label_826:
	add	r14, rdx
	mov	rdx, qword ptr [rsp + 0x68]
	mov	qword ptr [rdx], r14
	mov	qword ptr [rdx + 8], rcx
	cmp	byte ptr [rsp + 0x191], 0
	je	.label_582
	or	rsi, rax
	or	rsi, rbx
	or	rsi, rdi
	je	.label_582
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_802
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x138]
	mov	rdx, qword ptr [rsp + 0x140]
	mov	rcx, qword ptr [rsp + 0x148]
	mov	r8d, dword ptr [rsp + 0x150]
	xor	eax, eax
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_807
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, r14
	call	dbg_printf
	cmp	dword ptr [rsp + 0x40], -1
	je	.label_582
	lea	rdx, [rsp + 0x80]
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x68]
	call	localtime_rz
	test	rax, rax
	je	.label_582
	mov	eax, dword ptr [rsp + 0x40]
	cmp	eax, dword ptr [rsp + 0xa0]
	je	.label_582
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_634
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_582:
	mov	r13, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp]
	mov	r12, qword ptr [rsp + 0x68]
	jmp	.label_641
.label_654:
	add	rax, 3
.label_682:
	mov	byte ptr [rax], 0
.label_646:
	lea	r9, [rsp + 0x80]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_570
	xor	eax, eax
	call	__snprintf_chk
.label_568:
	lea	rsi, [rsp + 0x220]
	xor	eax, eax
	mov	rdi, r13
	call	dbg_printf
	mov	r13, r14
	mov	rbx, qword ptr [rsp]
.label_585:
	xor	ebp, ebp
	jmp	.label_584
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d70

	.globl str_days
	.type str_days, @function
str_days:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xe0], 0
	je	.label_827
	mov	r9, qword ptr [rbx + 8]
	lea	rax, [r9 + 1]
	cmp	rax, 0xd
	ja	.label_829
	imul	rax, rax, 0xb
	lea	r9, qword ptr [rax + str_days.ordinal_values]
	mov	esi, 0x64
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_124
	jmp	.label_828
.label_827:
	mov	byte ptr [r14], 0
	xor	eax, eax
	jmp	.label_830
.label_829:
	mov	esi, 0x64
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_833
.label_828:
	xor	eax, eax
	mov	rdi, r14
	call	__snprintf_chk
.label_830:
	movsxd	rcx, dword ptr [rbx + 0x10]
	test	rcx, rcx
	js	.label_831
	cmp	eax, 0x63
	ja	.label_831
	cmp	ecx, 6
	jg	.label_831
	movsxd	rdi, eax
	add	rdi, r14
	mov	edx, 0x64
	sub	edx, eax
	movsxd	rsi, edx
	mov	r8d, OFFSET FLAT:label_832
	cmp	eax, 1
	adc	r8, 0
	lea	r9, qword ptr [(rcx * 4) + str_days.days_values]
	mov	edx, 1
	mov	rcx, -1
	xor	eax, eax
	call	__snprintf_chk
.label_831:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e40

	.globl lookup_zone
	.type lookup_zone, @function
lookup_zone:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	esi, OFFSET FLAT:label_834
	mov	rdi, r14
	call	strcmp
	mov	r12d, OFFSET FLAT:universal_time_zone_table
	test	eax, eax
	je	.label_835
	mov	esi, OFFSET FLAT:label_837
	mov	rdi, r14
	call	strcmp
	mov	r12d, OFFSET FLAT:label_840
	test	eax, eax
	je	.label_835
	mov	esi, OFFSET FLAT:label_836
	mov	rdi, r14
	call	strcmp
	mov	r12d, OFFSET FLAT:label_839
	test	eax, eax
	je	.label_835
	mov	rsi, qword ptr [r15 + 0xe8]
	test	rsi, rsi
	je	.label_843
	add	r15, 0xe8
	mov	r12, r15
	nop	word ptr cs:[rax + rax]
.label_838:
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_835
	mov	rsi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	test	rsi, rsi
	jne	.label_838
.label_843:
	mov	ebx, OFFSET FLAT:time_zone_table
	mov	esi, OFFSET FLAT:label_842
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_844:
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_841
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_844
	jmp	.label_835
.label_841:
	mov	r12, rbx
.label_835:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408f20

	.globl posixtime
	.type posixtime, @function
posixtime:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r13d, edx
	mov	rbx, rsi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	xor	r12d, r12d
	test	r13b, 4
	je	.label_856
	mov	esi, 0x2e
	mov	rdi, rbx
	call	strchr
	xor	r12d, r12d
	test	rax, rax
	je	.label_856
	mov	rcx, rax
	sub	rcx, rbx
	sub	rbp, rcx
	cmp	rbp, 3
	mov	r12, rax
	mov	rbp, rcx
	jne	.label_845
.label_856:
	lea	rcx, [rbp - 8]
	mov	eax, ebp
	and	eax, 1
	cmp	rcx, 4
	ja	.label_845
	test	rax, rax
	jne	.label_845
	xor	r14d, r14d
	test	rbp, rbp
	je	.label_850
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_855:
	movsx	ecx, byte ptr [rbx + rax]
	add	ecx, -0x30
	cmp	ecx, 0xa
	jae	.label_845
	inc	rax
	cmp	rax, rbp
	jb	.label_855
	xor	r14d, r14d
	shr	rbp, 1
	je	.label_850
	mov	ecx, ebp
	and	ecx, 1
	xor	eax, eax
	cmp	rbp, 1
	je	.label_860
	mov	rdx, rbp
	sub	rdx, rcx
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_862:
	movsx	esi, byte ptr [rbx + rax*2]
	lea	esi, [rsi + rsi*4]
	movsx	edi, byte ptr [rbx + rax*2 + 1]
	lea	esi, [rdi + rsi*2 - 0x210]
	mov	dword ptr [rsp + rax*4 + 0x10], esi
	movsx	esi, byte ptr [rbx + rax*2 + 2]
	lea	esi, [rsi + rsi*4]
	movsx	edi, byte ptr [rbx + rax*2 + 3]
	lea	esi, [rdi + rsi*2 - 0x210]
	mov	dword ptr [rsp + rax*4 + 0x14], esi
	add	rax, 2
	cmp	rdx, rax
	jne	.label_862
.label_860:
	test	rcx, rcx
	je	.label_854
	movsx	ecx, byte ptr [rbx + rax*2]
	lea	ecx, [rcx + rcx*4]
	movsx	edx, byte ptr [rbx + rax*2 + 1]
	lea	ecx, [rdx + rcx*2 - 0x210]
	mov	dword ptr [rsp + rax*4 + 0x10], ecx
.label_854:
	mov	r14, rbp
.label_850:
	mov	r15d, r13d
	and	r15d, 1
	je	.label_857
	lea	rax, [rsp + 0x10]
	jmp	.label_858
.label_857:
	movabs	rax, 0x7fffffffffffffff
	and	rax, r14
	cmp	rax, 4
	je	.label_849
	cmp	rax, 6
	je	.label_847
	cmp	rax, 5
	jne	.label_859
	mov	r10d, dword ptr [rsp + 0x10]
	cmp	r10d, 0x44
	jg	.label_853
	test	r13b, 8
	jne	.label_845
	add	r10d, 0x64
	jmp	.label_853
.label_849:
	lea	rbp, [rsp + 0x50]
	mov	rdi, rbp
	call	time
	mov	rdi, rbp
	call	localtime
	test	rax, rax
	je	.label_845
	mov	r10d, dword ptr [rax + 0x14]
	jmp	.label_853
.label_847:
	test	r13b, 2
	je	.label_845
	mov	rax, qword ptr [rsp + 0x10]
	imul	ecx, eax, 0x64
	shr	rax, 0x20
	lea	r10d, [rax + rcx - 0x76c]
.label_853:
	add	r14, -4
	lea	rax, [rsp + r14*4 + 0x10]
	mov	r14d, 4
.label_858:
	mov	edi, dword ptr [rax]
	mov	r9d, dword ptr [rax + 4]
	mov	r8d, dword ptr [rax + 8]
	mov	esi, dword ptr [rax + 0xc]
	test	r15d, r15d
	je	.label_852
	movabs	rcx, 0x7fffffffffffffff
	and	r14, rcx
	cmp	r14, 4
	je	.label_863
	cmp	r14, 6
	je	.label_861
	cmp	r14, 5
	jne	.label_859
	mov	r10d, dword ptr [rax + 0x10]
	cmp	r10d, 0x44
	jg	.label_852
	test	r13b, 8
	jne	.label_845
	add	r10d, 0x64
	jmp	.label_852
.label_863:
	mov	dword ptr [rsp + 8], r9d
	mov	r15d, r8d
	mov	r14d, edi
	mov	ebp, esi
	lea	rdi, [rsp + 0x50]
	call	time
	lea	rdi, [rsp + 0x50]
	call	localtime
	test	rax, rax
	je	.label_845
	mov	r10d, dword ptr [rax + 0x14]
	mov	esi, ebp
	mov	edi, r14d
	mov	r8d, r15d
	mov	r9d, dword ptr [rsp + 8]
	jmp	.label_852
.label_861:
	test	r13b, 2
	je	.label_845
	imul	ecx, dword ptr [rax + 0x10], 0x64
	mov	eax, dword ptr [rax + 0x14]
	lea	r10d, [rax + rcx - 0x76c]
.label_852:
	xor	eax, eax
	test	r12, r12
	je	.label_848
	movsx	eax, byte ptr [r12 + 1]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_845
	movsx	ecx, byte ptr [r12 + 2]
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_845
	lea	eax, [rax + rax*4]
	lea	eax, [rcx + rax*2 - 0x30]
.label_848:
	mov	dword ptr [rsp + 0xc], r13d
	dec	edi
	mov	dword ptr [rsp + 8], eax
	mov	dword ptr [rsp + 0x10], eax
	mov	dword ptr [rsp + 0x14], esi
	mov	dword ptr [rsp + 0x18], r8d
	mov	dword ptr [rsp + 0x1c], r9d
	mov	dword ptr [rsp + 0x20], edi
	mov	dword ptr [rsp + 0x24], r10d
	mov	dword ptr [rsp + 0x28], 0xffffffff
	mov	dword ptr [rsp + 0x30], 0xffffffff
	mov	r15d, edi
	lea	rdi, [rsp + 0x10]
	mov	ebp, esi
	mov	r12d, r8d
	mov	r14d, r9d
	mov	r13d, r10d
	call	mktime
	mov	rcx, rax
	cmp	dword ptr [rsp + 0x28], 0
	js	.label_845
	xor	r13d, dword ptr [rsp + 0x24]
	xor	r15d, dword ptr [rsp + 0x20]
	xor	r14d, dword ptr [rsp + 0x1c]
	or	r14d, r13d
	xor	r12d, dword ptr [rsp + 0x18]
	or	r12d, r14d
	xor	ebp, dword ptr [rsp + 0x14]
	or	ebp, r12d
	or	ebp, r15d
	mov	eax, dword ptr [rsp + 0x10]
	mov	edx, dword ptr [rsp + 8]
	xor	eax, edx
	or	eax, ebp
	je	.label_851
	cmp	edx, 0x3c
	jne	.label_845
	lea	rbp, [rsp + 0x50]
	mov	edx, 0x10
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rbx, rcx
	call	__stpcpy_chk
	mov	byte ptr [rax], 0
	mov	word ptr [rax - 2], 0x3935
	lea	rdi, [rsp + 0x70]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0xc]
	call	posixtime
	mov	rcx, rbx
	test	al, al
	je	.label_845
.label_851:
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [rax], rcx
	mov	al, 1
	jmp	.label_846
.label_845:
	xor	eax, eax
.label_846:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_859:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4092b0

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rax
	mov	edi, OFFSET FLAT:label_864
	call	getenv
	mov	ecx, 0x31069
	test	rax, rax
	je	.label_865
	mov	ecx, 0x31069
	cmp	byte ptr [rax], 0
	je	.label_865
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rax
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	mov	ecx, 0x31069
	cmove	rcx, rax
.label_865:
	cmp	rcx, 0x7fffffff
	mov	edx, 0x7fffffff
	cmovl	edx, ecx
	cmp	rcx, -0x80000000
	mov	eax, 0x80000000
	cmovge	eax, edx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409310

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_869
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_867
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_866
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_867
	mov	esi, OFFSET FLAT:label_871
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_868
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_868:
	mov	rbx, r14
.label_867:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_869:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_870
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4093c0
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
	#Procedure 0x409400
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
	#Procedure 0x409410
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
	#Procedure 0x409420
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
	#Procedure 0x409460
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
	#Procedure 0x409480
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_872
	test	rdx, rdx
	je	.label_872
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_872:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4094b0
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
	#Procedure 0x409530

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
	jmp	.label_887
	nop	
.label_885:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_879
	or	al, dl
	jne	.label_879
	test	dil, 1
	jne	.label_881
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_879
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_887
	jmp	.label_879
.label_1674:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_893
	test	rbp, rbp
	je	.label_897
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_897:
	mov	r14d, 1
	jmp	.label_900
.label_1675:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_901
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_902
.label_893:
	xor	r14d, r14d
.label_900:
	mov	eax, OFFSET FLAT:label_901
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_913
	nop	
.label_887:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_921
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_930]
.label_1676:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_937
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_954
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_1677:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_951
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_951
	xor	r14d, r14d
	nop	
.label_993:
	cmp	r14, rbp
	jae	.label_960
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_960:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_993
.label_951:
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
	jmp	.label_902
.label_1669:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_902
.label_1672:
	mov	al, 1
.label_1670:
	mov	r12b, 1
.label_1673:
	test	r12b, 1
	mov	cl, 1
	je	.label_980
	mov	ecx, eax
.label_980:
	mov	al, cl
.label_1671:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_983
	test	rbp, rbp
	je	.label_989
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_989:
	mov	r14d, 1
	jmp	.label_890
.label_983:
	xor	r14d, r14d
.label_890:
	mov	ecx, OFFSET FLAT:label_954
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_913:
	mov	sil, r12b
.label_902:
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
	jmp	.label_997
	nop	word ptr cs:[rax + rax]
.label_986:
	inc	r12
.label_997:
	cmp	r11, -1
	je	.label_908
	cmp	r12, r11
	jne	.label_910
	jmp	.label_912
	nop	word ptr cs:[rax + rax]
.label_908:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_916
.label_910:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_922
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_898
	cmp	r11, -1
	jne	.label_898
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_898:
	cmp	rbx, r11
	jbe	.label_941
.label_922:
	xor	esi, esi
.label_923:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_944
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_947]
.label_1689:
	test	r12, r12
	jne	.label_896
	jmp	.label_932
	nop	word ptr cs:[rax + rax]
.label_941:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_963
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_923
	jmp	.label_878
.label_963:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_923
.label_1693:
	xor	eax, eax
	cmp	r11, -1
	je	.label_975
	test	r12, r12
	jne	.label_977
	cmp	r11, 1
	je	.label_932
	xor	r13d, r13d
	jmp	.label_876
.label_1682:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_985
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_878
	cmp	r8d, 2
	jne	.label_990
	mov	eax, r9d
	and	al, 1
	jne	.label_990
	cmp	r14, rbp
	jae	.label_992
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_992:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_877
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_877:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_981
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_981:
	add	r14, 3
	mov	r9b, 1
.label_990:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_880
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_880:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_884
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_884
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_884
	cmp	r14, rbp
	jae	.label_996
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_996:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_995
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_995:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_876
.label_1683:
	mov	bl, 0x62
	jmp	.label_909
.label_1684:
	mov	cl, 0x74
	jmp	.label_903
.label_1685:
	mov	bl, 0x76
	jmp	.label_909
.label_1686:
	mov	bl, 0x66
	jmp	.label_909
.label_1687:
	mov	cl, 0x72
	jmp	.label_903
.label_1690:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_919
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_907
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
	jae	.label_931
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_931:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_945
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_945:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_949
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_949:
	add	r14, 3
	xor	r9d, r9d
.label_919:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_876
.label_1691:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_955
	cmp	r8d, 2
	jne	.label_896
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_896
	jmp	.label_907
.label_1692:
	cmp	r8d, 2
	jne	.label_967
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_907
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_971
.label_944:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_973
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_982
.label_975:
	test	r12, r12
	jne	.label_991
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_991
.label_932:
	mov	dl, 1
.label_1688:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_907
	xor	eax, eax
	mov	r13b, dl
.label_876:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_998
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_999
	jmp	.label_873
	nop	word ptr cs:[rax + rax]
.label_998:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_873
.label_999:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_882
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_889
	nop	dword ptr [rax]
.label_873:
	test	sil, sil
.label_889:
	mov	ebx, r15d
	je	.label_905
	jmp	.label_895
.label_882:
	mov	ebx, r15d
	jmp	.label_895
.label_985:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_986
	xor	r15d, r15d
	jmp	.label_896
.label_967:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_903
	xor	eax, eax
	mov	r15b, 0x5c
.label_971:
	xor	r13d, r13d
	jmp	.label_905
.label_903:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_907
.label_909:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_876
	nop	
.label_895:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_878
	cmp	r8d, 2
	jne	.label_920
	mov	eax, r9d
	and	al, 1
	jne	.label_920
	cmp	r14, rbp
	jae	.label_926
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_926:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_892
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_892:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_936
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_936:
	add	r14, 3
	mov	r9b, 1
.label_920:
	cmp	r14, rbp
	jae	.label_943
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_943:
	inc	r14
	jmp	.label_875
.label_973:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_948
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_948:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_942
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_935:
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
	je	.label_968
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_976
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_874
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_987
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_952:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_956
	bt	rsi, rdx
	jb	.label_907
.label_956:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_952
.label_987:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_950
	xor	r13d, r13d
.label_950:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_935
	jmp	.label_891
.label_884:
	xor	r13d, r13d
	jmp	.label_876
.label_991:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_876
.label_955:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_896
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_896
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_896
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_906
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_957
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_915
	cmp	r14, rbp
	jae	.label_917
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_917:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_924
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_924:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_939
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_939:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_953
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_953:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_957:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_876
.label_896:
	xor	eax, eax
.label_977:
	xor	r13d, r13d
	jmp	.label_876
.label_942:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_974:
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
	je	.label_964
	cmp	rbp, -1
	je	.label_966
	cmp	rbp, -2
	je	.label_968
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_970
	xor	r13d, r13d
.label_970:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_974
	jmp	.label_891
.label_968:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_883
	lea	rax, [r10 + r12]
.label_979:
	cmp	byte ptr [rax + rsi], 0
	je	.label_883
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_979
.label_883:
	mov	qword ptr [rsp + 0x40], rsi
.label_976:
	xor	r13d, r13d
	jmp	.label_874
.label_966:
	xor	r13d, r13d
.label_964:
	mov	r10, qword ptr [rsp + 0x28]
.label_874:
	mov	r12, qword ptr [rsp + 0x40]
.label_891:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_982:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_911
	test	al, al
	je	.label_911
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_876
.label_911:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_886
	nop	word ptr [rax + rax]
.label_978:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_886:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_894
	test	sil, 1
	je	.label_904
	cmp	r14, rbp
	jae	.label_899
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_899:
	inc	r14
	xor	esi, esi
	jmp	.label_904
	nop	word ptr cs:[rax + rax]
.label_894:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_878
	cmp	r8d, 2
	jne	.label_961
	mov	eax, r9d
	and	al, 1
	jne	.label_961
	cmp	r14, rbp
	jae	.label_914
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_914:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_918
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_918:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_969
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_969:
	add	r14, 3
	mov	r9b, 1
.label_961:
	cmp	r14, rbp
	jae	.label_934
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_934:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_929
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_929:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_946
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_946:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_904:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_905
	test	r9b, 1
	je	.label_958
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_972
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_962
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_962:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_888
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_888:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_958
	nop	word ptr cs:[rax + rax]
.label_972:
	mov	rbx, rcx
.label_958:
	cmp	r14, rbp
	jae	.label_978
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_978
	nop	
.label_905:
	test	r9b, 1
	je	.label_984
	and	al, 1
	jne	.label_984
	cmp	r14, rbp
	jae	.label_988
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_988:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_925
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_925:
	add	r14, 2
	xor	r9d, r9d
.label_984:
	mov	ebx, r15d
.label_875:
	cmp	r14, rbp
	jae	.label_994
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_994:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_986
.label_906:
	xor	r13d, r13d
	jmp	.label_876
	nop	word ptr cs:[rax + rax]
.label_912:
	mov	rcx, r12
.label_916:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_885
	or	al, dl
	jne	.label_885
	mov	r11, rcx
	jmp	.label_878
.label_907:
	mov	eax, 2
.label_965:
	mov	qword ptr [rsp + 0x38], rax
.label_878:
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
.label_928:
	mov	r14, rax
.label_959:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_879:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_927
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_933
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_933
	inc	rdx
	nop	dword ptr [rax + rax]
.label_940:
	cmp	r14, rbp
	jae	.label_938
	mov	byte ptr [rcx + r14], al
.label_938:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_940
	jmp	.label_933
.label_881:
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
	jmp	.label_928
.label_927:
	mov	rcx, qword ptr [rsp + 0x10]
.label_933:
	cmp	r14, rbp
	jae	.label_959
	mov	byte ptr [rcx + r14], 0
	jmp	.label_959
.label_915:
	mov	eax, 5
	jmp	.label_965
.label_921:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40a360
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
	#Procedure 0x40a430
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
	je	.label_1000
	mov	qword ptr [rax], rbx
.label_1000:
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
	#Procedure 0x40a520
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_1001
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1004:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_1004
.label_1001:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_1005
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_1002], OFFSET FLAT:slot0
.label_1005:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1003
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_1003:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a5c0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a5d0

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
	js	.label_1009
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_1012
	cmp	r12d, 0x7fffffff
	je	.label_1007
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
	jne	.label_1010
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_1010:
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
.label_1012:
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
	jbe	.label_1008
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_1011
.label_1008:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_1006
	mov	rdi, r14
	call	free
.label_1006:
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
.label_1011:
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
.label_1009:
	call	abort
.label_1007:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a790
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a7a0
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
	#Procedure 0x40a7c0
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
	#Procedure 0x40a7e0

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
	je	.label_1013
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
.label_1013:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a850
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
	je	.label_1014
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
.label_1014:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a8c0

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
	je	.label_1015
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
.label_1015:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a930
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
	je	.label_1016
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
.label_1016:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a9a0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_1017]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_1018]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1019]
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
	#Procedure 0x40aa10
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_1017]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_1018]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1019]
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
	#Procedure 0x40aa80

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_1017]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_1018]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1019]
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
	#Procedure 0x40aae0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_1017]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_1018]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1019]
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
	#Procedure 0x40ab40
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
	je	.label_1020
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
.label_1020:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40abe0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_1017]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_1018]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1019]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1021
	test	rdx, rdx
	je	.label_1021
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1021:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ac50
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_1017]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_1018]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1019]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1022
	test	rdx, rdx
	je	.label_1022
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1022:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40acc0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_1017]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_1018]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1019]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_1023
	test	rsi, rsi
	je	.label_1023
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1023:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40ad30
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_1017]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_1018]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1019]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_1024
	test	rsi, rsi
	je	.label_1024
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
.label_1024:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ada0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40adb0
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
	#Procedure 0x40add0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40adf0

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
	#Procedure 0x40ae10

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
	jne	.label_1029
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_1033
	cmp	ecx, 0x55
	jne	.label_1025
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_1025
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_1025
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_1025
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_1025
	cmp	byte ptr [rax + 5], 0
	jne	.label_1025
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1031
	mov	eax, OFFSET FLAT:label_1032
	jmp	.label_1028
.label_1033:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_1025
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_1025
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_1025
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_1025
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_1025
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_1025
	cmp	byte ptr [rax + 7], 0
	je	.label_1030
.label_1025:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_901
	mov	eax, OFFSET FLAT:label_954
.label_1028:
	cmove	rax, rcx
.label_1029:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1030:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1026
	mov	eax, OFFSET FLAT:label_1027
	jmp	.label_1028
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aee0

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
	je	.label_1046
	mov	edx, OFFSET FLAT:label_1037
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_1043
.label_1046:
	mov	edx, OFFSET FLAT:label_1044
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_1043:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1048
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
	mov	esi, OFFSET FLAT:label_1045
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_1049
	jmp	qword ptr [(r12 * 8) + label_1050]
.label_1413:
	add	rsp, 8
	jmp	.label_1036
.label_1049:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1040
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
	jmp	.label_1036
.label_1414:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1035
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
.label_1415:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1041
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
.label_1416:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1038
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
.label_1417:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1052
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
	jmp	.label_1036
.label_1418:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1051
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
	jmp	.label_1036
.label_1419:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1034
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
	jmp	.label_1036
.label_1420:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1039
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
	jmp	.label_1036
.label_1422:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1042
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
	jmp	.label_1036
.label_1421:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1047
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
.label_1036:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b240
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_1053:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_1053
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b270

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_1064
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_1066
.label_1064:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1066:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_1054
	cmp	r10d, 0x29
	jae	.label_1063
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1065
.label_1063:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1065:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_1054
	cmp	r10d, 0x29
	jae	.label_1061
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1062
.label_1061:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1062:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_1054
	cmp	r10d, 0x29
	jae	.label_1059
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1060
.label_1059:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1060:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_1054
	cmp	r10d, 0x29
	jae	.label_1057
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1058
.label_1057:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1058:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_1054
	cmp	r10d, 0x29
	jae	.label_1055
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1056
.label_1055:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1056:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_1054
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_1054
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_1054
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_1054
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_1054:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b460

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1067
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1067:
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
	#Procedure 0x40b4f0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1068
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_1069
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1071
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_9
	mov	ecx, OFFSET FLAT:label_10
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1070
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b570
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_1072
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_1073
	test	rax, rax
	je	.label_1072
.label_1073:
	pop	rbx
	ret	
.label_1072:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b5b0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1074
	test	rax, rax
	je	.label_1075
.label_1074:
	pop	rbx
	ret	
.label_1075:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b5d0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_1076
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_1077
	test	rbx, rbx
	jne	.label_1077
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1077:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1078
	test	rax, rax
	je	.label_1076
.label_1078:
	pop	rbx
	ret	
.label_1076:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b620

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_1079
	test	rbx, rbx
	jne	.label_1079
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1079:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1081
	test	rax, rax
	je	.label_1080
.label_1081:
	pop	rbx
	ret	
.label_1080:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40b650
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1085
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_1087
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1082
.label_1085:
	test	rcx, rcx
	jne	.label_1088
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_1088:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_1083
.label_1082:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_1084
	test	rbx, rbx
	jne	.label_1084
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1084:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1086
	test	rax, rax
	je	.label_1087
.label_1086:
	pop	rbx
	ret	
.label_1087:
	call	xalloc_die
.label_1083:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b6f0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1089
	test	rax, rax
	je	.label_1090
.label_1089:
	pop	rbx
	ret	
.label_1090:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b710
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1093
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_1095
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_1092
	call	free
	xor	eax, eax
	jmp	.label_1094
.label_1093:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_1091
	mov	qword ptr [rsi], rbx
.label_1092:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1094
	test	rax, rax
	je	.label_1091
.label_1094:
	pop	rbx
	ret	
.label_1091:
	call	xalloc_die
.label_1095:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b780
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
	je	.label_1097
	test	r14, r14
	je	.label_1096
.label_1097:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1096:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b7c0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1098
	call	rpl_calloc
	test	rax, rax
	je	.label_1098
	pop	rcx
	ret	
.label_1098:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b7f0

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
	je	.label_1099
	test	r15, r15
	je	.label_1100
.label_1099:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1100:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b830
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
	je	.label_1102
	test	r15, r15
	je	.label_1101
.label_1102:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1101:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b880

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1103
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_124
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40b8b0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1104
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1105
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1105
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1104:
	mov	ecx, 1
.label_1105:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b900

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
	je	.label_1106
	cmp	r15, -2
	jb	.label_1106
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_1106
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_1106:
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
	#Procedure 0x40b960

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_1107
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_1107:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1108
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_1108
	mov	r12, rbx
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_1108:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b9e0

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbx
	cmp	rdi, 2
	jb	.label_1109
	nop	word ptr [rax + rax]
.label_1110:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1110
.label_1109:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ba10

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbp, rsi
	mov	r15, rdi
	test	r15, r15
	je	.label_1111
	mov	qword ptr [rsp + 8], rdx
	mov	edi, OFFSET FLAT:label_553
	call	getenv
	mov	r13, rax
	test	r13, r13
	mov	bl, byte ptr [r15 + 8]
	mov	qword ptr [rsp + 0x10], rbp
	je	.label_1119
	test	bl, bl
	je	.label_1122
	lea	rdi, [r15 + 9]
	mov	rsi, r13
	call	strcmp
	mov	r14d, 1
	test	eax, eax
	je	.label_1113
.label_1122:
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	r12b, 1
	jmp	.label_1129
.label_1111:
	mov	rdi, rbp
	mov	rsi, rdx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_1119:
	xor	r12d, r12d
	mov	r14d, 1
	test	bl, bl
	mov	ebp, 0
	je	.label_1113
.label_1129:
	lea	rax, [rbp + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	rbp, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_1117
	mov	qword ptr [r14], 0
	mov	byte ptr [r14 + 8], r12b
	mov	byte ptr [r14 + 9], 0
	test	r12b, r12b
	je	.label_1126
	lea	r12, [r14 + 9]
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [r12 + rbp], 0
.label_1126:
	test	bl, bl
	je	.label_1131
	lea	rsi, [r15 + 9]
	mov	edi, OFFSET FLAT:label_553
	mov	edx, 1
	call	setenv
	jmp	.label_1128
.label_1131:
	mov	edi, OFFSET FLAT:label_553
	call	unsetenv
.label_1128:
	test	eax, eax
	je	.label_1115
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	cmp	r14, 2
	jb	.label_1116
	nop	word ptr cs:[rax + rax]
.label_1123:
	mov	rbx, qword ptr [r14]
	mov	rdi, r14
	call	free
	test	rbx, rbx
	mov	r14, rbx
	jne	.label_1123
.label_1116:
	mov	dword ptr [rbp], r15d
.label_1117:
	xor	eax, eax
	jmp	.label_1125
.label_1115:
	call	tzset
.label_1113:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 8]
	mov	rsi, rbx
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	mov	r12b, 1
	je	.label_1130
	mov	rdi, r15
	mov	rsi, rbx
	call	save_abbr
	mov	r12d, eax
	xor	r12b, 1
.label_1130:
	cmp	r14, 1
	je	.label_1112
	call	__errno_location
	mov	r15, rax
	mov	r13d, dword ptr [r15]
	cmp	byte ptr [r14 + 8], 0
	je	.label_1114
	lea	rsi, [r14 + 9]
	mov	edi, OFFSET FLAT:label_553
	mov	edx, 1
	call	setenv
	jmp	.label_1121
.label_1114:
	mov	edi, OFFSET FLAT:label_553
	call	unsetenv
.label_1121:
	test	eax, eax
	je	.label_1118
	mov	r13d, dword ptr [r15]
	xor	ebp, ebp
	jmp	.label_1124
.label_1118:
	call	tzset
	mov	bpl, 1
.label_1124:
	cmp	r14, 2
	jb	.label_1127
	nop	word ptr cs:[rax + rax]
.label_1120:
	mov	rbx, qword ptr [r14]
	mov	rdi, r14
	call	free
	test	rbx, rbx
	mov	r14, rbx
	jne	.label_1120
.label_1127:
	mov	dword ptr [r15], r13d
	mov	rbx, qword ptr [rsp + 8]
.label_1112:
	xor	eax, eax
	xor	bpl, 1
	cmovne	rbx, rax
	test	r12b, r12b
	cmovne	rbx, rax
	mov	rax, rbx
.label_1125:
	add	rsp, 0x18
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
	#Procedure 0x40bc30

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r15 + 0x30]
	mov	r14b, 1
	test	rbx, rbx
	je	.label_1136
	cmp	r15, rbx
	ja	.label_1134
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	jb	.label_1136
.label_1134:
	mov	ebp, OFFSET FLAT:label_31
	cmp	byte ptr [rbx], 0
	je	.label_1132
	lea	rbp, [r12 + 9]
	jmp	.label_1141
.label_1133:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	cmovne	r12, rax
.label_1141:
	lea	r13, [r12 + 9]
.label_1143:
	mov	rdi, rbp
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_1132
	cmp	byte ptr [rbp], 0
	jne	.label_1135
	cmp	rbp, r13
	jne	.label_1139
	cmp	byte ptr [r12 + 8], 0
	je	.label_1140
.label_1135:
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rbp + rax + 1]
	cmp	byte ptr [rbp + rax + 1], 0
	mov	rbp, rcx
	jne	.label_1143
	jmp	.label_1133
.label_1140:
	mov	rbp, r13
.label_1139:
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rax + 1]
	mov	rcx, rbp
	sub	rcx, r13
	mov	rsi, rcx
	not	rsi
	cmp	rdx, rsi
	jbe	.label_1137
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_1138:
	xor	r14d, r14d
	jmp	.label_1136
.label_1137:
	add	rcx, rdx
	cmp	rcx, 0x76
	ja	.label_1144
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	jmp	.label_1132
.label_1144:
	add	rax, 0x12
	and	rax, 0xfffffffffffffff8
	mov	r13, rdx
	cmp	rdx, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	test	rax, rax
	je	.label_1142
	mov	qword ptr [rax], 0
	mov	word ptr [rax + 8], 1
	mov	rbp, rax
	add	rbp, 9
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r13
	mov	rbx, rax
	call	memcpy
	mov	byte ptr [rbx + r13 + 9], 0
	mov	qword ptr [r12], rbx
	mov	byte ptr [rbx + 8], 0
.label_1132:
	mov	qword ptr [r15 + 0x30], rbp
.label_1136:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1142:
	mov	qword ptr [r12], 0
	jmp	.label_1138
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bda0

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbp, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1150
	mov	edi, OFFSET FLAT:label_553
	call	getenv
	mov	r13, rax
	test	r13, r13
	mov	r12b, byte ptr [rbx + 8]
	mov	qword ptr [rsp + 8], rbp
	je	.label_1156
	test	r12b, r12b
	je	.label_1159
	lea	rdi, [rbx + 9]
	mov	rsi, r13
	call	strcmp
	mov	r15d, 1
	test	eax, eax
	je	.label_1149
.label_1159:
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	r14b, 1
	jmp	.label_1165
.label_1150:
	mov	rdi, rbp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	timegm
.label_1156:
	xor	r14d, r14d
	mov	r15d, 1
	test	r12b, r12b
	mov	ebp, 0
	je	.label_1149
.label_1165:
	lea	rax, [rbp + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	rbp, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r15, rax
	mov	rax, -1
	test	r15, r15
	je	.label_1158
	mov	qword ptr [r15], 0
	mov	byte ptr [r15 + 8], r14b
	mov	byte ptr [r15 + 9], 0
	test	r14b, r14b
	je	.label_1161
	lea	r14, [r15 + 9]
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [r14 + rbp], 0
.label_1161:
	test	r12b, r12b
	je	.label_1146
	lea	rsi, [rbx + 9]
	mov	edi, OFFSET FLAT:label_553
	mov	edx, 1
	call	setenv
	jmp	.label_1151
.label_1146:
	mov	edi, OFFSET FLAT:label_553
	call	unsetenv
.label_1151:
	test	eax, eax
	je	.label_1152
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r15, 2
	jb	.label_1154
	nop	word ptr cs:[rax + rax]
.label_1160:
	mov	rbx, qword ptr [r15]
	mov	rdi, r15
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_1160
.label_1154:
	mov	dword ptr [rbp], r14d
	jmp	.label_1162
.label_1152:
	call	tzset
.label_1149:
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, rbp
	call	mktime
	mov	qword ptr [rsp], rax
	cmp	rax, -1
	jne	.label_1166
	lea	rdi, [rsp]
	lea	rsi, [rsp + 0x10]
	call	localtime_r
	test	rax, rax
	je	.label_1148
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	xor	rax, qword ptr [rbp]
	xor	rcx, qword ptr [rbp + 8]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x20]
	xor	rax, qword ptr [rbp + 0x10]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	edi, dword ptr [rbp + 0x20]
	mov	edx, dword ptr [rsp + 0x30]
	test	edi, edi
	sete	sil
	test	edx, edx
	sete	cl
	xor	cl, sil
	or	edx, edi
	setns	dl
	and	dl, cl
	movzx	ecx, dl
	or	ecx, eax
	jne	.label_1148
.label_1166:
	mov	rdi, rbx
	mov	rsi, rbp
	call	save_abbr
	test	al, al
	jne	.label_1148
	mov	qword ptr [rsp], -1
.label_1148:
	cmp	r15, 1
	je	.label_1145
	call	__errno_location
	mov	r14, rax
	mov	r12d, dword ptr [r14]
	cmp	byte ptr [r15 + 8], 0
	je	.label_1147
	lea	rsi, [r15 + 9]
	mov	edi, OFFSET FLAT:label_553
	mov	edx, 1
	call	setenv
	jmp	.label_1153
.label_1147:
	mov	edi, OFFSET FLAT:label_553
	call	unsetenv
.label_1153:
	test	eax, eax
	je	.label_1155
	mov	r12d, dword ptr [r14]
	xor	ebp, ebp
	jmp	.label_1157
.label_1155:
	call	tzset
	mov	bpl, 1
.label_1157:
	cmp	r15, 2
	jb	.label_1164
	nop	word ptr [rax + rax]
.label_1163:
	mov	rbx, qword ptr [r15]
	mov	rdi, r15
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_1163
.label_1164:
	mov	dword ptr [r14], r12d
	test	bpl, bpl
	je	.label_1162
.label_1145:
	mov	rax, qword ptr [rsp]
	jmp	.label_1158
.label_1162:
	mov	rax, -1
.label_1158:
	add	rsp, 0x48
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
	#Procedure 0x40c020

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
	jne	.label_1168
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1167
	test	cl, cl
	jne	.label_1167
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_1167
.label_1168:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1167
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1167:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c080

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1170
	cmp	byte ptr [rax], 0x43
	jne	.label_1172
	cmp	byte ptr [rax + 1], 0
	je	.label_1169
.label_1172:
	mov	esi, OFFSET FLAT:label_1171
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1170
.label_1169:
	xor	ebx, ebx
.label_1170:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c0c0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_31
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_1173
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c0f0

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	push	rax
	mov	eax, r9d
	mov	r10, r8
	sub	rsp, 8
	mov	r8d, 0
	mov	r9d, 0
	push	rax
	push	r10
	push	-1
	call	__strftime_internal
	add	rsp, 0x20
	pop	rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c120

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4b8
	mov	dword ptr [rsp + 0x88], r9d
	mov	dword ptr [rsp + 0x8c], r8d
	mov	r11, rcx
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x48], rsi
	mov	r10, rdi
	mov	eax, dword ptr [r11 + 8]
	mov	rcx, qword ptr [r11 + 0x30]
	test	rcx, rcx
	mov	edx, OFFSET FLAT:label_31
	cmovne	rdx, rcx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	esi, 0xc
	cmovne	esi, eax
	cmp	eax, 0xc
	cmovg	esi, ecx
	mov	dword ptr [rsp + 0x7c], esi
	mov	al, byte ptr [rbp]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
	test	al, al
	je	.label_1237
	mov	edi, dword ptr [rsp + 0x4f0]
	mov	qword ptr [rsp + 0x68], rdx
	lea	rcx, [rdx - 1]
	mov	qword ptr [rsp + 0x80], rcx
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x38], r11
	jmp	.label_1256
.label_1237:
	xor	r8d, r8d
	jmp	.label_1262
.label_1231:
	mov	rdx, r10
	mov	rsi, qword ptr [rsp + 0x80]
	mov	r9, r15
.label_1326:
	movzx	ebx, byte ptr [rsi + rdx]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 1], bl
	movzx	ebx, byte ptr [rsi + rdx - 1]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 2], bl
	movzx	ebx, byte ptr [rsi + rdx - 2]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 3], bl
	movzx	ebx, byte ptr [rsi + rdx - 3]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 4], bl
	lea	rdx, [rdx - 4]
	cmp	rcx, rdx
	jne	.label_1326
.label_1234:
	test	rcx, rcx
	mov	r8, qword ptr [rsp + 0x18]
	je	.label_1187
	lea	rsi, [r9 + rdx - 1]
	add	rdx, qword ptr [rsp + 0x80]
	neg	rcx
.label_1290:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_1290
.label_1187:
	add	r9, r10
	mov	rcx, r9
	jmp	.label_1238
.label_1271:
	mov	esi, 0x20
.label_1272:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	mov	rdi, r12
	mov	r8, qword ptr [rsp + 0x18]
	add	rdi, r14
	mov	cl, byte ptr [rbp]
	mov	r14d, r15d
.label_1267:
	mov	byte ptr [rdi], cl
	inc	rdi
	mov	rdx, rdi
.label_1261:
	add	r8, rbx
	mov	r10, rdx
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_1210
.label_1331:
	mov	edi, 3
	jmp	.label_1303
	nop	
.label_1256:
	cmp	al, 0x25
	jne	.label_1306
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x8c]
	mov	r12b, cl
	xor	r9d, r9d
.label_1432:
	mov	ebx, eax
	mov	al, r12b
.label_1322:
	mov	r12b, al
	inc	rbp
	jmp	.label_1312
	nop	word ptr cs:[rax + rax]
.label_1320:
	inc	rbp
	mov	r9d, edx
.label_1312:
	mov	cl, byte ptr [rbp]
	movsx	edx, cl
	mov	al, 1
	lea	esi, [rdx - 0x23]
	cmp	esi, 0xd
	ja	.label_1314
	jmp	qword ptr [(rsi * 8) + label_1318]
	nop	dword ptr [rax]
.label_1314:
	cmp	edx, 0x5f
	je	.label_1320
	cmp	edx, 0x5e
	je	.label_1322
.label_1433:
	add	edx, -0x30
	cmp	edx, 9
	ja	.label_1323
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1319:
	mov	edi, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_1328
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	jne	.label_1255
	lea	edx, [rcx - 0x30]
	cmp	edx, 7
	jg	.label_1328
.label_1255:
	lea	eax, [rax + rax*4]
	lea	edi, [rcx + rax*2 - 0x30]
.label_1328:
	movsx	ecx, byte ptr [rbp + 1]
	inc	rbp
	mov	eax, ecx
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, edi
	jb	.label_1319
.label_1323:
	mov	qword ptr [rsp + 0x18], r8
	movsx	r8d, cl
	cmp	r8d, 0x4f
	je	.label_1334
	cmp	r8d, 0x45
	jne	.label_1338
.label_1334:
	mov	cl, byte ptr [rbp + 1]
	inc	rbp
	jmp	.label_1341
	nop	dword ptr [rax]
.label_1306:
	test	edi, edi
	mov	ecx, edi
	mov	edx, 0
	cmovs	ecx, edx
	movsxd	rbx, ecx
	cmp	ebx, 1
	mov	edx, 1
	cmovbe	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x48]
	sub	rdx, r8
	mov	r15d, 1
	cmp	rbx, rdx
	jae	.label_1191
	test	r10, r10
	mov	edx, 0
	je	.label_1354
	cmp	ecx, 2
	jb	.label_1357
	mov	dword ptr [rsp + 0x2c], r14d
	movsxd	r14, edi
	lea	rdx, [r14 - 1]
	mov	esi, 0x20
	mov	rdi, r10
	mov	r15, r8
	mov	r12, r10
	call	memset
	mov	r11, qword ptr [rsp + 0x38]
	mov	r10, r12
	mov	r8, r15
	lea	r10, [r10 + r14 - 1]
	mov	r14d, dword ptr [rsp + 0x2c]
	mov	al, byte ptr [rbp]
.label_1357:
	mov	byte ptr [r10], al
	inc	r10
	mov	rdx, r10
.label_1354:
	add	r8, rbx
	xor	r15d, r15d
	mov	r10, rdx
.label_1191:
	test	r15d, r15d
	mov	eax, 4
	cmove	r15d, eax
.label_1315:
	or	r15d, 4
	cmp	r15d, 4
	je	.label_1210
	jmp	.label_1174
.label_1338:
	xor	r8d, r8d
.label_1341:
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 8], rdi
	movsx	esi, cl
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	esi, 0x7a
	ja	.label_1179
	mov	r15d, OFFSET FLAT:label_1185
	mov	dl, 0x72
	mov	r10d, 0xffffffff
	xor	eax, eax
	xor	edi, edi
	jmp	qword ptr [(rsi * 8) + label_1186]
.label_1448:
	cmp	r8d, 0x45
	je	.label_1179
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	eax, dword ptr [r11 + 0x14]
	mov	r9d, dword ptr [r11 + 0x18]
	mov	edx, eax
	sar	edx, 0x1f
	and	edx, 0x190
	lea	r10d, [rax + rdx - 0x64]
	mov	r11d, dword ptr [r11 + 0x1c]
	lea	edx, [r11 + 0x17e]
	sub	edx, r9d
	movsxd	rbx, edx
	imul	rdx, rbx, -0x6db6db6d
	shr	rdx, 0x20
	add	edx, ebx
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 2
	add	edx, edi
	lea	edi, [rdx*8]
	sub	edi, edx
	sub	ebx, edi
	lea	r12d, [r11 + 3]
	sub	r12d, ebx
	js	.label_1193
	mov	ebx, 0x16d
	test	r10b, 3
	jne	.label_1286
	movsxd	rdi, r10d
	imul	rdi, rdi, 0x51eb851f
	mov	rbx, rdi
	sar	rbx, 0x25
	mov	r14, rdi
	shr	r14, 0x3f
	add	ebx, r14d
	imul	r15d, ebx, 0x64
	sar	rdi, 0x27
	add	edi, r14d
	imul	ebx, edi, 0x190
	xor	edi, edi
	cmp	r10d, ebx
	sete	dil
	add	edi, 0x16d
	cmp	r10d, r15d
	mov	ebx, 0x16e
	cmove	ebx, edi
.label_1286:
	sub	r11d, ebx
	lea	edi, [r11 + 0x17e]
	sub	edi, r9d
	movsxd	rdi, edi
	imul	rbx, rdi, -0x6db6db6d
	shr	rbx, 0x20
	add	ebx, edi
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 2
	add	ebx, edx
	lea	edx, [rbx*8]
	sub	edx, ebx
	sub	edi, edx
	add	r11d, 3
	sub	r11d, edi
	cmovns	r12d, r11d
	shr	r11d, 0x1f
	xor	r11d, 1
	jmp	.label_1229
.label_1462:
	test	bl, bl
	je	.label_1245
	mov	r12b, 1
.label_1245:
	cmp	r8d, 0x45
	jne	.label_1247
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_1179
.label_1440:
	dec	rbp
	jmp	.label_1179
.label_1441:
	test	r8d, r8d
	jne	.label_1179
	mov	r15d, r14d
	xor	eax, eax
	mov	rsi, qword ptr [rsp + 8]
	test	esi, esi
	cmovns	eax, esi
	movsxd	rdx, eax
	cmp	edx, 1
	mov	ebx, 1
	cmova	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rdx, r8
	cmp	rbx, rdx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_1184
	xor	edx, edx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_1261
	cmp	eax, 2
	jb	.label_1267
	movsxd	r14, esi
	dec	r14
	cmp	r9d, 0x30
	je	.label_1307
	cmp	r9d, 0x2b
	jne	.label_1271
.label_1307:
	mov	esi, 0x30
	jmp	.label_1272
.label_1442:
	mov	edx, 1
	jmp	.label_1276
	nop	word ptr [rax + rax]
.label_1280:
	inc	rdx
.label_1276:
	movzx	ebx, byte ptr [rbp + rdx]
	cmp	bl, 0x3a
	je	.label_1280
	cmp	bl, 0x7a
	jne	.label_1179
	add	rbp, rdx
	mov	qword ptr [rsp + 0x20], rdx
.label_1479:
	cmp	dword ptr [r11 + 0x20], 0
	js	.label_1284
	mov	dword ptr [rsp + 0x30], r9d
	mov	rdx, r11
	mov	r11, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rdx + 0x28]
	mov	sil, 1
	test	r9d, r9d
	mov	r10, qword ptr [rsp + 0x20]
	js	.label_1287
	test	r9d, r9d
	je	.label_1293
	xor	esi, esi
	jmp	.label_1287
.label_1443:
	test	r8d, r8d
	jne	.label_1179
	test	bl, bl
	je	.label_1297
	mov	r12b, 1
.label_1297:
	xor	eax, eax
	mov	dl, 0x41
	jmp	.label_1270
.label_1444:
	cmp	r8d, 0x45
	je	.label_1179
	test	bl, bl
	je	.label_1299
	mov	r12b, 1
.label_1299:
	xor	eax, eax
	mov	dl, 0x42
	jmp	.label_1270
.label_1445:
	cmp	r8d, 0x45
	jne	.label_1300
	xor	eax, eax
	mov	dl, 0x43
	jmp	.label_1270
.label_1446:
	test	r8d, r8d
	jne	.label_1179
	mov	r15d, OFFSET FLAT:label_1310
	mov	r10d, 0xffffffff
	jmp	.label_1178
.label_1447:
	test	r8d, r8d
	jne	.label_1179
	test	r9d, r9d
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_1313
	test	ecx, ecx
	jns	.label_1313
	mov	r15d, OFFSET FLAT:label_1177
	mov	r9d, 0x2b
	mov	r10d, 4
	jmp	.label_1178
.label_1449:
	cmp	r8d, 0x45
	je	.label_1179
	mov	r13d, dword ptr [r11 + 8]
	jmp	.label_1175
.label_1450:
	mov	edi, 2
	cmp	r8d, 0x45
	je	.label_1179
	mov	edx, dword ptr [rsp + 0x7c]
	mov	r13d, edx
	jmp	.label_1221
.label_1451:
	cmp	r8d, 0x45
	je	.label_1179
	mov	r13d, dword ptr [r11 + 4]
	jmp	.label_1175
.label_1452:
	cmp	r8d, 0x45
	je	.label_1179
	mov	edi, 9
	mov	r11, qword ptr [rsp + 8]
	cmp	r11d, -1
	je	.label_1332
	cmp	r11d, 8
	jg	.label_1337
	mov	edx, 9
	sub	edx, r11d
	mov	esi, 8
	sub	esi, r11d
	and	edx, 3
	cmp	esi, 3
	mov	esi, dword ptr [rsp + 0x500]
	mov	r13d, esi
	mov	r10, qword ptr [rsp + 0x10]
	jb	.label_1339
	lea	esi, [r11 + rdx - 9]
	mov	edi, dword ptr [rsp + 0x500]
	mov	r13d, edi
.label_1351:
	movsxd	rdi, r13d
	imul	r13, rdi, 0x68db8bad
	mov	rdi, r13
	shr	rdi, 0x3f
	sar	r13, 0x2c
	add	r13d, edi
	add	esi, 4
	jne	.label_1351
.label_1339:
	test	edx, edx
	je	.label_1263
	neg	edx
	nop	word ptr cs:[rax + rax]
.label_1360:
	movsxd	rsi, r13d
	imul	r13, rsi, 0x66666667
	mov	rsi, r13
	shr	rsi, 0x3f
	sar	r13, 0x22
	add	r13d, esi
	inc	edx
	jne	.label_1360
.label_1263:
	mov	edi, r11d
	jmp	.label_1350
.label_1453:
	mov	dil, 1
.label_1471:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	test	bl, bl
	je	.label_1364
	mov	r12d, 0
.label_1364:
	je	.label_1365
	mov	dil, 1
.label_1365:
	mov	dl, 0x70
	mov	al, dil
	jmp	.label_1201
.label_1454:
	cmp	r8d, 0x45
	je	.label_1179
	mov	r13d, dword ptr [r11]
	jmp	.label_1175
.label_1455:
	mov	r15d, OFFSET FLAT:label_1180
.label_1178:
	mov	dword ptr [rsp + 0x2c], r14d
	mov	qword ptr [rsp + 0x58], r13
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x40], r12
	test	r12b, r12b
	setne	r8b
	sub	rsp, 8
	xor	r14d, r14d
	xor	edi, edi
	mov	rsi, -1
	mov	rdx, r15
	mov	rcx, r11
	mov	r13d, r9d
	mov	eax, dword ptr [rsp + 0x508]
	push	rax
	push	qword ptr [rsp + 0x508]
	mov	qword ptr [rsp + 0x38], r10
	push	r10
	call	__strftime_internal
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x38]
	add	rsp, 0x20
	mov	rbx, rax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	r14d, edx
	movsxd	rax, r14d
	cmp	rbx, rax
	mov	r14, rbx
	cmovb	r14, rax
	mov	r12, qword ptr [rsp + 0x48]
	sub	r12, r8
	cmp	r14, r12
	jae	.label_1184
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_1207
	cmp	rbx, rax
	jae	.label_1211
	movsxd	rcx, edx
	mov	qword ptr [rsp + 8], rbx
	sub	rcx, rbx
	mov	eax, r13d
	cmp	eax, 0x30
	mov	qword ptr [rsp + 0x30], rcx
	je	.label_1213
	cmp	eax, 0x2b
	jne	.label_1219
.label_1213:
	mov	esi, 0x30
	jmp	.label_1222
.label_1456:
	cmp	r8d, 0x45
	je	.label_1179
	mov	edx, dword ptr [r11 + 0x1c]
	add	edx, 7
	sub	edx, dword ptr [r11 + 0x18]
	movsxd	r13, edx
	jmp	.label_1225
.label_1457:
	cmp	r8d, 0x45
	je	.label_1179
	mov	edx, dword ptr [r11 + 0x18]
	mov	esi, dword ptr [r11 + 0x1c]
	lea	edi, [rdx + 6]
	movsxd	rdi, edi
	imul	rbx, rdi, -0x6db6db6d
	shr	rbx, 0x20
	lea	edx, [rbx + rdx + 6]
	mov	ebx, edx
	shr	ebx, 0x1f
	sar	edx, 2
	add	edx, ebx
	lea	ebx, [rdx*8]
	sub	ebx, edx
	sub	edi, ebx
	add	esi, 7
	sub	esi, edi
	movsxd	r13, esi
.label_1225:
	imul	rdx, r13, -0x6db6db6d
	shr	rdx, 0x20
	add	r13d, edx
	mov	edx, r13d
	shr	edx, 0x1f
	sar	r13d, 2
	add	r13d, edx
	jmp	.label_1175
.label_1458:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_1179
	mov	dl, 0x58
	jmp	.label_1250
.label_1459:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x45
	je	.label_1251
	cmp	r8d, 0x4f
	je	.label_1179
	mov	r13d, dword ptr [r11 + 0x14]
	cmp	r13d, 0xfffff894
	setl	bl
	add	r13d, 0x76c
	mov	esi, 4
	jmp	.label_1197
.label_1460:
	mov	r15d, r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	r12d, r14d
	mov	qword ptr [rsp + 0x58], r13
	mov	rdi, qword ptr [rsp + 0x68]
	call	strlen
	mov	r9, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, rax
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	cdqe	
	cmp	r10, rax
	mov	r13, r10
	cmovb	r13, rax
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	r13, rcx
	jae	.label_1184
	xor	ecx, ecx
	test	r9, r9
	mov	r14d, r12d
	je	.label_1238
	cmp	r10, rax
	jae	.label_1282
	movsxd	rax, edx
	mov	qword ptr [rsp + 0x20], r10
	sub	rax, r10
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 8], rax
	je	.label_1283
	cmp	r15d, 0x2b
	jne	.label_1289
.label_1283:
	mov	esi, 0x30
	jmp	.label_1292
.label_1461:
	test	r8d, r8d
	jne	.label_1179
	test	bl, bl
	je	.label_1295
	mov	r12b, 1
.label_1295:
	xor	eax, eax
	mov	dl, 0x61
	jmp	.label_1270
.label_1463:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_1179
	mov	dl, 0x63
	jmp	.label_1250
.label_1464:
	cmp	r8d, 0x45
	je	.label_1179
	mov	r13d, dword ptr [r11 + 0xc]
.label_1175:
	mov	edi, 2
	jmp	.label_1221
.label_1465:
	cmp	r8d, 0x45
	je	.label_1179
	mov	edx, dword ptr [r11 + 0xc]
	jmp	.label_1305
.label_1466:
	cmp	r8d, 0x45
	je	.label_1179
	mov	r13d, dword ptr [r11 + 0x1c]
	cmp	r13d, -1
	setl	bl
	inc	r13d
	mov	edi, 3
	jmp	.label_1309
.label_1467:
	cmp	r8d, 0x45
	je	.label_1179
	mov	edx, dword ptr [r11 + 8]
	jmp	.label_1305
.label_1468:
	cmp	r8d, 0x45
	mov	edx, dword ptr [rsp + 0x7c]
	je	.label_1179
.label_1305:
	test	r9d, r9d
	mov	esi, 0x5f
	cmove	r9d, esi
	mov	edi, 2
	mov	r13d, edx
	jmp	.label_1221
.label_1469:
	cmp	r8d, 0x45
	je	.label_1179
	mov	r13d, dword ptr [r11 + 0x10]
	cmp	r13d, -1
	setl	bl
	inc	r13d
	mov	edi, 2
.label_1309:
	xor	r14d, r14d
	xor	edx, edx
	jmp	.label_1329
.label_1470:
	mov	r15d, r14d
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_1184
	xor	ecx, ecx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_1233
	cmp	eax, 2
	jb	.label_1342
	movsxd	r14, edx
	dec	r14
	cmp	r9d, 0x30
	je	.label_1345
	cmp	r9d, 0x2b
	jne	.label_1346
.label_1345:
	mov	esi, 0x30
	jmp	.label_1349
.label_1472:
	imul	r13d, dword ptr [r11 + 0x10], 0xb
	sar	r13d, 5
	inc	r13d
	mov	edi, 1
	xor	r14d, r14d
	xor	edx, edx
	xor	ebx, ebx
.label_1329:
	mov	r11, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_1203
.label_1473:
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	dword ptr [rsp + 0x2c], r14d
	mov	r14, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp + 0xe0], rax
	movups	xmm0, xmmword ptr [r11]
	movups	xmm1, xmmword ptr [r11 + 0x10]
	movups	xmm2, xmmword ptr [r11 + 0x20]
	movaps	xmmword ptr [rsp + 0xd0], xmm2
	movaps	xmmword ptr [rsp + 0xc0], xmm1
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	lea	rsi, [rsp + 0xb0]
	mov	rdi, qword ptr [rsp + 0x4f8]
	call	mktime_z
	mov	rcx, rax
	mov	r15, rcx
	shr	r15, 0x3f
	lea	r12, [rsp + 0xa7]
	je	.label_1202
	nop	word ptr cs:[rax + rax]
.label_1218:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebx, ecx
	sub	ebx, edi
	add	rdx, rax
	mov	al, 0x30
	sub	al, bl
	mov	byte ptr [r12 - 1], al
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_1218
	jmp	.label_1200
	nop	word ptr cs:[rax + rax]
.label_1202:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebx, ecx
	sub	ebx, edi
	add	rdx, rax
	add	bl, 0x30
	mov	byte ptr [r12 - 1], bl
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_1202
.label_1200:
	xor	edx, edx
	mov	r8, r14
	mov	r10, qword ptr [rsp + 0x10]
	mov	esi, 1
	mov	eax, dword ptr [rsp + 0x2c]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	mov	rbx, r15
	jmp	.label_1216
.label_1474:
	mov	r15d, r14d
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_1184
	xor	ecx, ecx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_1233
	cmp	eax, 2
	jb	.label_1236
	movsxd	r14, edx
	dec	r14
	cmp	r9d, 0x30
	je	.label_1239
	cmp	r9d, 0x2b
	jne	.label_1240
.label_1239:
	mov	esi, 0x30
	jmp	.label_1243
.label_1475:
	mov	edx, dword ptr [r11 + 0x18]
	lea	esi, [rdx + 6]
	movsxd	r13, esi
	imul	rsi, r13, -0x6db6db6d
	shr	rsi, 0x20
	lea	edx, [rsi + rdx + 6]
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 2
	add	edx, esi
	lea	esi, [rdx*8]
	sub	esi, edx
	sub	r13d, esi
	inc	r13d
	jmp	.label_1246
.label_1476:
	cmp	r8d, 0x45
	je	.label_1179
	mov	r13d, dword ptr [r11 + 0x18]
.label_1246:
	mov	edi, 1
.label_1221:
	mov	r11, qword ptr [rsp + 8]
.label_1183:
	mov	r10, qword ptr [rsp + 0x10]
.label_1350:
	mov	ebx, r13d
	shr	ebx, 0x1f
	xor	r14d, r14d
	xor	edx, edx
	jmp	.label_1203
.label_1477:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_1179
	mov	dl, 0x78
	jmp	.label_1250
.label_1478:
	cmp	r8d, 0x45
	jne	.label_1268
	xor	eax, eax
	mov	dl, 0x79
	jmp	.label_1270
.label_1247:
	xor	eax, eax
	mov	edx, ecx
.label_1270:
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_1201
.label_1211:
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	mov	rdx, r15
	mov	r10, qword ptr [rsp + 0x20]
	jmp	.label_1274
.label_1193:
	dec	r10d
	mov	r14d, 0x16d
	test	r10b, 3
	jne	.label_1281
	movsxd	rdx, r10d
	imul	rdx, rdx, 0x51eb851f
	mov	rdi, rdx
	sar	rdi, 0x25
	mov	rbx, rdx
	shr	rbx, 0x3f
	add	edi, ebx
	imul	edi, edi, 0x64
	sar	rdx, 0x27
	add	edx, ebx
	imul	edx, edx, 0x190
	xor	ebx, ebx
	cmp	r10d, edx
	sete	bl
	add	ebx, 0x16d
	cmp	r10d, edi
	mov	r14d, 0x16e
	cmove	r14d, ebx
.label_1281:
	lea	edi, [r14 + r11 + 0x17e]
	sub	edi, r9d
	movsxd	rdi, edi
	imul	rbx, rdi, -0x6db6db6d
	shr	rbx, 0x20
	add	ebx, edi
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 2
	add	ebx, edx
	lea	edx, [rbx*8]
	sub	edx, ebx
	sub	edi, edx
	lea	r12d, [r14 + r11 + 3]
	sub	r12d, edi
	mov	r11d, 0xffffffff
.label_1229:
	cmp	esi, 0x47
	je	.label_1304
	cmp	esi, 0x67
	jne	.label_1344
	movsxd	rdx, eax
	imul	rdx, rdx, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	mov	esi, eax
	sub	esi, edx
	add	esi, r11d
	movsxd	r13, esi
	imul	rdx, r13, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	sub	r13d, edx
	mov	esi, 2
	jns	.label_1308
	mov	edx, 0xfffff894
	sub	edx, r11d
	mov	edi, r13d
	neg	edi
	add	r13d, 0x64
	cmp	eax, edx
	cmovl	r13d, edi
.label_1308:
	xor	ebx, ebx
	jmp	.label_1266
.label_1284:
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_1210
.label_1300:
	movsxd	rdx, dword ptr [r11 + 0x14]
	cmp	rdx, -0x76c
	setl	sil
	setg	bl
	imul	r13, rdx, 0x51eb851f
	mov	rdi, r13
	shr	rdi, 0x3f
	sar	r13, 0x25
	add	r13d, edi
	imul	edi, r13d, 0x64
	cmp	edx, edi
	sets	dl
	and	dl, bl
	mov	rbx, rsi
	movzx	edx, dl
	sub	r13d, edx
	add	r13d, 0x13
	mov	esi, 2
	jmp	.label_1197
.label_1268:
	movsxd	rdx, dword ptr [r11 + 0x14]
	imul	rsi, rdx, 0x51eb851f
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x25
	add	esi, edi
	imul	esi, esi, 0x64
	mov	r13d, edx
	sub	r13d, esi
	mov	esi, 2
	jns	.label_1340
	mov	edi, r13d
	neg	edi
	add	r13d, 0x64
	cmp	edx, 0xfffff894
	cmovl	r13d, edi
.label_1340:
	xor	ebx, ebx
.label_1197:
	mov	r11, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_1353
.label_1304:
	mov	edx, 0xfffff894
	sub	edx, r11d
	cmp	eax, edx
	setl	bl
	lea	r13d, [r11 + rax + 0x76c]
	mov	esi, 4
.label_1266:
	mov	r10, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
.label_1353:
	test	r9d, r9d
	cmove	r9d, dword ptr [rsp + 0x88]
	xor	r14d, r14d
	cmp	r9d, 0x2b
	mov	edx, 0
	jne	.label_1362
	cmp	esi, 2
	mov	edx, 0x63
	mov	edi, 0x270f
	cmove	edi, edx
	cmp	edi, r13d
	mov	rdi, rbx
	setb	bl
	cmp	esi, r11d
	setl	dl
	or	dl, bl
	mov	rbx, rdi
.label_1362:
	mov	rdi, rsi
.label_1203:
	cmp	r8d, 0x4f
	jne	.label_1181
	test	bl, bl
	jne	.label_1181
	mov	qword ptr [rsp + 8], r11
	xor	eax, eax
	mov	edx, ecx
	mov	r11, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x20], rdi
	jmp	.label_1201
.label_1181:
	mov	qword ptr [rsp + 0x40], r12
	mov	eax, r13d
	neg	eax
	test	bl, bl
	cmove	eax, r13d
	lea	r12, [rsp + 0xa7]
	mov	rsi, rdi
	mov	r8, qword ptr [rsp + 0x18]
	nop	word ptr [rax + rax]
.label_1199:
	test	r14b, 1
	je	.label_1196
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_1196:
	sar	r14d, 1
	mov	ecx, eax
	mov	r13d, 0xcccccccd
	imul	r13, rcx
	shr	r13, 0x23
	lea	ecx, [r13 + r13]
	lea	ecx, [rcx + rcx*4]
	mov	edi, eax
	sub	edi, ecx
	or	edi, 0x30
	mov	byte ptr [r12 - 1], dil
	dec	r12
	cmp	eax, 9
	mov	eax, r13d
	ja	.label_1199
	test	r14d, r14d
	mov	eax, r13d
	jne	.label_1199
	xor	eax, eax
.label_1216:
	cmp	esi, r11d
	cmovl	esi, r11d
	test	dl, dl
	je	.label_1209
	mov	dl, 0x2b
.label_1209:
	test	bl, bl
	mov	byte ptr [rsp + 0x50], 0x2d
	jne	.label_1212
	mov	ecx, edx
	mov	byte ptr [rsp + 0x50], cl
.label_1212:
	cmp	r9d, 0x2d
	mov	dword ptr [rsp + 0x2c], eax
	mov	qword ptr [rsp + 0x58], r13
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x20], rsi
	jne	.label_1217
	cmp	byte ptr [rsp + 0x50], 0
	je	.label_1195
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_1184
	xor	ecx, ecx
	test	r10, r10
	je	.label_1232
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_1189
	test	al, al
	jne	.label_1189
	movsxd	r14, r11d
	lea	rdx, [r14 - 1]
	mov	esi, 0x20
	mov	rdi, r10
	mov	r15, r8
	mov	r13, r10
	mov	qword ptr [rsp + 8], r11
	call	memset
	mov	r11, qword ptr [rsp + 8]
	mov	r10, r13
	mov	r8, r15
	lea	r10, [r10 + r14 - 1]
	jmp	.label_1189
.label_1217:
	movsxd	rax, esi
	mov	rcx, r12
	lea	rdx, [rsp + 0xa7]
	sub	rcx, rdx
	mov	dl, byte ptr [rsp + 0x50]
	neg	dl
	sbb	rbx, rbx
	add	rbx, rcx
	add	rbx, rax
	test	ebx, ebx
	jle	.label_1249
	cmp	r9d, 0x5f
	jne	.label_1257
	movsxd	r14, ebx
	mov	rax, qword ptr [rsp + 0x48]
	sub	rax, r8
	cmp	r14, rax
	jae	.label_1184
	xor	edx, edx
	test	r10, r10
	mov	r15d, 0
	je	.label_1278
	mov	esi, 0x20
	mov	rdi, r10
	mov	rdx, r14
	mov	r13, r8
	mov	r15, r10
	mov	qword ptr [rsp + 8], r11
	call	memset
	xor	edx, edx
	mov	r11, qword ptr [rsp + 8]
	mov	r8, r13
	add	r15, r14
.label_1278:
	add	r8, r14
	sub	r11d, ebx
	cmovg	edx, r11d
	cmp	byte ptr [rsp + 0x50], 0
	je	.label_1273
	xor	eax, eax
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_1184
	xor	r10d, r10d
	test	r15, r15
	je	.label_1254
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_1288
	test	al, al
	jne	.label_1288
	movsxd	r14, edx
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdx, [r14 - 1]
	mov	esi, 0x20
	mov	rdi, r15
	mov	r13, r8
	call	memset
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r8, r13
	lea	r15, [r15 + r14 - 1]
.label_1288:
	mov	al, byte ptr [rsp + 0x50]
	mov	byte ptr [r15], al
	inc	r15
	mov	r10, r15
.label_1254:
	add	r8, rbx
	mov	r11d, edx
	jmp	.label_1195
.label_1249:
	cmp	byte ptr [rsp + 0x50], 0
	je	.label_1195
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_1184
	xor	ecx, ecx
	test	r10, r10
	je	.label_1232
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_1189
	test	al, al
	jne	.label_1189
	movsxd	r14, r11d
	dec	r14
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	qword ptr [rsp + 8], r11
	je	.label_1316
	cmp	eax, 0x2b
	jne	.label_1241
.label_1316:
	mov	esi, 0x30
	jmp	.label_1324
.label_1257:
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rax, rcx
	jae	.label_1184
	cmp	byte ptr [rsp + 0x50], 0
	je	.label_1291
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rdx, eax
	cmp	edx, 1
	mov	r15d, 1
	cmova	r15, rdx
	cmp	r15, rcx
	jae	.label_1184
	xor	ecx, ecx
	test	r10, r10
	je	.label_1335
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_1336
	test	al, al
	jne	.label_1336
	movsxd	r14, r11d
	dec	r14
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	je	.label_1343
	cmp	eax, 0x2b
	jne	.label_1347
.label_1343:
	mov	esi, 0x30
	jmp	.label_1192
.label_1344:
	movsxd	rdx, r12d
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	add	edx, esi
	mov	esi, edx
	sar	esi, 2
	shr	edx, 0x1f
	lea	r13d, [rsi + rdx + 1]
	mov	edi, 2
	mov	r10, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	jmp	.label_1350
.label_1273:
	mov	r10, r15
	mov	r11d, edx
	jmp	.label_1195
.label_1251:
	mov	dl, 0x59
.label_1250:
	xor	eax, eax
.label_1201:
	mov	dword ptr [rsp + 0x40], eax
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x58], r13
	mov	r13, qword ptr [rsp + 0x10]
	mov	word ptr [rsp + 0x63], 0x2520
	test	r8d, r8d
	lea	rcx, [rsp + 0x65]
	je	.label_1361
	mov	byte ptr [rsp + 0x65], r8b
	lea	rcx, [rsp + 0x66]
.label_1361:
	mov	byte ptr [rcx], dl
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0xb0]
	lea	rdx, [rsp + 0x63]
	mov	esi, 0x400
	mov	rcx, r11
	call	strftime
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1182
	mov	rsi, qword ptr [rsp + 0x20]
	mov	r15, r12
	lea	r10, [rbx - 1]
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	cdqe	
	cmp	r10, rax
	mov	r12, r10
	cmovb	r12, rax
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	r12, rcx
	jae	.label_1184
	xor	ecx, ecx
	mov	rdi, r13
	test	rdi, rdi
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_1198
	cmp	r10, rax
	setae	al
	test	esi, esi
	jne	.label_1204
	test	al, al
	jne	.label_1204
	mov	dword ptr [rsp + 0x2c], r14d
	movsxd	r14, edx
	sub	r14, r10
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	qword ptr [rsp + 0x50], r10
	je	.label_1321
	cmp	eax, 0x2b
	jne	.label_1206
.label_1321:
	mov	esi, 0x30
	jmp	.label_1208
.label_1182:
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, r13
	mov	r13, qword ptr [rsp + 0x58]
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_1210
.label_1204:
	mov	eax, dword ptr [rsp + 0x40]
	jmp	.label_1194
.label_1206:
	mov	esi, 0x20
.label_1208:
	mov	rdx, r14
	call	memset
	mov	r10, qword ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdi, r13
	mov	r8, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rsp + 0x40]
	add	rdi, r14
	mov	r14d, dword ptr [rsp + 0x2c]
.label_1194:
	test	al, 1
	jne	.label_1252
	test	r15b, 1
	jne	.label_1228
	lea	rsi, [rsp + 0xb1]
	mov	rdx, r10
	mov	rbx, rdi
	mov	r15, r10
	call	memcpy
	mov	r10, r15
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdi, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_1176
.label_1252:
	test	r10, r10
	je	.label_1176
	mov	r13d, r14d
	mov	r14, rdi
	mov	r15, r10
	call	__ctype_tolower_loc
	mov	r10, r15
	mov	rdi, r14
	mov	rdx, rbx
	add	rdx, -2
	mov	r9d, r10d
	and	r9d, 3
	cmp	rdx, 3
	mov	rsi, r10
	jb	.label_1242
	lea	r8, [r9 + 1]
	nop	dword ptr [rax]
.label_1248:
	movzx	esi, byte ptr [rsp + rbx + 0xaf]
	mov	rdx, qword ptr [rax]
	movzx	edx, byte ptr [rdx + rsi*4]
	mov	byte ptr [rdi + rbx - 2], dl
	movzx	edx, byte ptr [rsp + rbx + 0xae]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 3], dl
	movzx	edx, byte ptr [rsp + rbx + 0xad]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 4], dl
	movzx	edx, byte ptr [rsp + rbx + 0xac]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 5], dl
	add	rbx, -4
	cmp	r8, rbx
	jne	.label_1248
	dec	rbx
	mov	rsi, rbx
.label_1242:
	test	r9, r9
	mov	r8, qword ptr [rsp + 0x18]
	mov	r14d, r13d
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_1176
	lea	rdx, [rdi + rsi - 1]
	lea	rsi, [rsp + rsi + 0xb0]
	neg	r9
	nop	word ptr cs:[rax + rax]
.label_1298:
	movzx	ecx, byte ptr [rsi]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rcx*4]
	mov	byte ptr [rdx], bl
	dec	rdx
	dec	rsi
	inc	r9
	jne	.label_1298
	jmp	.label_1176
.label_1228:
	test	r10, r10
	je	.label_1176
	mov	r13d, r14d
	mov	r14, rdi
	mov	r15, r10
	call	__ctype_toupper_loc
	mov	r10, r15
	mov	rdi, r14
	mov	rdx, rbx
	add	rdx, -2
	mov	r9d, r10d
	and	r9d, 3
	cmp	rdx, 3
	mov	rsi, r10
	jb	.label_1223
	lea	r8, [r9 + 1]
	nop	word ptr cs:[rax + rax]
.label_1275:
	movzx	esi, byte ptr [rsp + rbx + 0xaf]
	mov	rdx, qword ptr [rax]
	movzx	edx, byte ptr [rdx + rsi*4]
	mov	byte ptr [rdi + rbx - 2], dl
	movzx	edx, byte ptr [rsp + rbx + 0xae]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 3], dl
	movzx	edx, byte ptr [rsp + rbx + 0xad]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 4], dl
	movzx	edx, byte ptr [rsp + rbx + 0xac]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 5], dl
	add	rbx, -4
	cmp	r8, rbx
	jne	.label_1275
	dec	rbx
	mov	rsi, rbx
.label_1223:
	test	r9, r9
	mov	r8, qword ptr [rsp + 0x18]
	mov	r14d, r13d
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_1176
	lea	rdx, [rdi + rsi - 1]
	lea	rsi, [rsp + rsi + 0xb0]
	neg	r9
	nop	dword ptr [rax]
.label_1317:
	movzx	ecx, byte ptr [rsi]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rcx*4]
	mov	byte ptr [rdx], bl
	dec	rdx
	dec	rsi
	inc	r9
	jne	.label_1317
.label_1176:
	add	rdi, r10
	mov	rcx, rdi
.label_1198:
	add	r8, r12
	mov	r10, rcx
	jmp	.label_1325
.label_1282:
	mov	r15, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rsp + 0x40]
	jmp	.label_1327
.label_1219:
	mov	esi, 0x20
.label_1222:
	mov	rdx, rcx
	mov	rbx, rdi
	call	memset
	mov	rcx, qword ptr [rsp + 0x38]
	add	rbx, qword ptr [rsp + 0x30]
	mov	rdi, rbx
	mov	r9d, r13d
	mov	rdx, r15
	mov	r10, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rsp + 8]
.label_1274:
	xor	r8d, r8d
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	setne	r8b
	sub	rsp, 8
	mov	rsi, r12
	mov	eax, dword ptr [rsp + 0x508]
	push	rax
	push	qword ptr [rsp + 0x508]
	push	r10
	mov	r15, rdi
	call	__strftime_internal
	add	rsp, 0x20
	add	rbx, r15
	mov	rcx, rbx
	mov	r8, qword ptr [rsp + 0x18]
.label_1207:
	add	r8, r14
	jmp	.label_1348
.label_1293:
	mov	rdx, qword ptr [rsp + 0x68]
	cmp	byte ptr [rdx], 0x2d
	sete	sil
.label_1287:
	cmp	r10, 3
	ja	.label_1352
	movsxd	rax, r9d
	imul	rbx, rax, -0x77777777
	shr	rbx, 0x20
	add	ebx, r9d
	mov	edi, ebx
	shr	edi, 0x1f
	sar	ebx, 5
	add	ebx, edi
	imul	r13, rax, -0x6e5d4c3b
	shr	r13, 0x20
	add	r13d, r9d
	mov	edi, r13d
	shr	edi, 0x1f
	sar	r13d, 0xb
	add	r13d, edi
	movsxd	rdi, ebx
	imul	rbx, rdi, -0x77777777
	shr	rbx, 0x20
	add	ebx, edi
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 5
	add	ebx, edx
	imul	edx, ebx, 0x3c
	imul	ebx, edi, 0x3c
	sub	edi, edx
	sub	r9d, ebx
	jmp	qword ptr [(r10 * 8) + label_1355]
.label_1492:
	imul	r13d, r13d, 0x64
	add	r13d, edi
	mov	edi, 5
.label_1303:
	xor	r14d, r14d
	jmp	.label_1265
.label_1313:
	xor	eax, eax
	mov	r10d, ecx
	add	r10d, -6
	cmovs	r10d, eax
	mov	r15d, OFFSET FLAT:label_1177
	jmp	.label_1178
.label_1332:
	mov	edx, dword ptr [rsp + 0x500]
	mov	r13d, edx
	mov	r11d, 9
	jmp	.label_1183
.label_1352:
	xor	edi, edi
	mov	r15d, 0xe
	jmp	.label_1188
.label_1495:
	test	r9d, r9d
	je	.label_1190
.label_1494:
	imul	r13d, r13d, 0x2710
	imul	edx, edi, 0x64
	add	r13d, r9d
	add	r13d, edx
	mov	edi, 9
	mov	r14d, 0x14
	jmp	.label_1265
.label_1337:
	mov	edx, dword ptr [rsp + 0x500]
	mov	r13d, edx
	mov	edi, r11d
	jmp	.label_1183
.label_1289:
	mov	esi, 0x20
.label_1292:
	mov	rdi, r9
	mov	rdx, rax
	mov	r14, r9
	call	memset
	mov	r15, qword ptr [rsp + 0x68]
	add	r14, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r14
	mov	r14d, r12d
	mov	rax, qword ptr [rsp + 0x40]
	mov	r10, qword ptr [rsp + 0x20]
.label_1327:
	test	bl, bl
	je	.label_1214
	test	r10, r10
	je	.label_1187
	mov	r12, r9
	mov	rbx, r10
	call	__ctype_tolower_loc
	mov	r10, rbx
	lea	rdx, [r10 - 1]
	mov	ecx, r10d
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_1220
	mov	rdx, r10
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r12
	jmp	.label_1224
.label_1214:
	test	al, al
	je	.label_1227
	test	r10, r10
	je	.label_1187
	mov	r15, r9
	mov	rbx, r10
	call	__ctype_toupper_loc
	mov	r10, rbx
	lea	rdx, [r10 - 1]
	mov	ecx, r10d
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_1231
	mov	rdx, r10
	mov	r9, r15
	jmp	.label_1234
.label_1220:
	mov	rdx, r10
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r12
	nop	word ptr cs:[rax + rax]
.label_1244:
	movzx	esi, byte ptr [r15 + rdx - 1]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 1], bl
	movzx	esi, byte ptr [r15 + rdx - 2]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 2], bl
	movzx	esi, byte ptr [r15 + rdx - 3]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 3], bl
	movzx	esi, byte ptr [r15 + rdx - 4]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 4], bl
	lea	rdx, [rdx - 4]
	cmp	rcx, rdx
	jne	.label_1244
.label_1224:
	test	rcx, rcx
	je	.label_1187
	lea	rsi, [r9 + rdx - 1]
	add	rdx, qword ptr [rsp + 0x80]
	neg	rcx
	nop	word ptr [rax + rax]
.label_1264:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_1264
	jmp	.label_1187
.label_1346:
	mov	esi, 0x20
.label_1349:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	add	r12, r14
	mov	r8, qword ptr [rsp + 0x18]
	mov	rdi, r12
	mov	r14d, r15d
.label_1342:
	mov	byte ptr [rdi], 0xa
	jmp	.label_1277
.label_1240:
	mov	esi, 0x20
.label_1243:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	add	r12, r14
	mov	r8, qword ptr [rsp + 0x18]
	mov	rdi, r12
	mov	r14d, r15d
.label_1236:
	mov	byte ptr [rdi], 9
.label_1277:
	inc	rdi
	mov	rcx, rdi
.label_1233:
	add	r8, rbx
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_1210
.label_1241:
	mov	esi, 0x20
.label_1324:
	mov	rdi, r10
	mov	rdx, r14
	mov	r15, r8
	mov	r13, r10
	call	memset
	mov	r11, qword ptr [rsp + 8]
	mov	r10, r13
	mov	r8, r15
	add	r10, r14
.label_1189:
	mov	al, byte ptr [rsp + 0x50]
	mov	byte ptr [r10], al
	inc	r10
	mov	rcx, r10
.label_1232:
	add	r8, rbx
	mov	r10, rcx
	jmp	.label_1195
.label_1227:
	mov	rdi, r9
	mov	rsi, r15
	mov	rdx, r10
	mov	rbx, r9
	mov	r15, r10
	call	memcpy
	mov	r10, r15
	mov	r9, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_1187
.label_1190:
	test	edi, edi
	je	.label_1331
.label_1493:
	imul	r13d, r13d, 0x64
	add	r13d, edi
	mov	edi, 6
	mov	r14d, 4
.label_1265:
	mov	r15d, 0x21
.label_1188:
	mov	r10, r11
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	mov	ebx, r15d
	and	bl, 0x3f
	cmp	bl, 0xe
	je	.label_1311
	mov	dl, 1
	cmp	bl, 0x21
	mov	rbx, rsi
	je	.label_1203
	mov	r11, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_1315
.label_1311:
	mov	qword ptr [rsp + 0x20], rdi
.label_1179:
	mov	r10, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x40], r12
	mov	dword ptr [rsp + 0x2c], r14d
	mov	qword ptr [rsp + 0x58], r13
	lea	rax, [rbp - 2]
	xor	ecx, ecx
	xor	r15d, r15d
	mov	edx, 1
	nop	word ptr cs:[rax + rax]
.label_1330:
	mov	r12, rdx
	mov	r14, rax
	mov	r13, rcx
	mov	ebx, 1
	sub	rbx, r12
	lea	rdx, [r12 + 1]
	lea	rax, [r14 - 1]
	inc	r15b
	lea	rcx, [r13 - 1]
	cmp	byte ptr [rbp + rbx], 0x25
	jne	.label_1330
	mov	r11, qword ptr [rsp + 8]
	test	r11d, r11d
	mov	eax, r11d
	mov	ecx, 0
	cmovs	eax, ecx
	cmp	r12d, eax
	mov	ecx, eax
	cmova	ecx, r12d
	movsxd	rsi, ecx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	rsi, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_1184
	test	rdi, rdi
	mov	ecx, 0
	je	.label_1294
	movsxd	rdx, r12d
	test	r10d, r10d
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x30], rsi
	jne	.label_1230
	cmp	r12d, eax
	jae	.label_1230
	movsxd	rax, r11d
	sub	rax, rdx
	cmp	r9d, 0x30
	mov	qword ptr [rsp + 8], rax
	je	.label_1356
	cmp	r9d, 0x2b
	jne	.label_1358
.label_1356:
	mov	esi, 0x30
	jmp	.label_1359
.label_1358:
	mov	esi, 0x20
.label_1359:
	mov	rdx, rax
	call	memset
	mov	rax, qword ptr [rsp + 0x10]
	add	rax, qword ptr [rsp + 8]
	mov	rdi, rax
	mov	rdx, qword ptr [rsp + 0x20]
.label_1230:
	mov	rax, qword ptr [rsp + 0x40]
	test	al, 1
	jne	.label_1363
	add	rbx, rbp
	mov	rsi, rbx
	mov	rbx, rdi
	call	memcpy
	mov	r10, qword ptr [rsp + 0x20]
	mov	r9, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_1205
.label_1363:
	mov	rbx, rdi
	call	__ctype_toupper_loc
	mov	r10, qword ptr [rsp + 0x20]
	mov	r9, rbx
	movsxd	rcx, r12d
	lea	rdx, [rcx - 1]
	and	ecx, 3
	cmp	rdx, 3
	mov	rdx, r10
	jb	.label_1259
	movsxd	rdx, r12d
	add	r14, rdx
	and	r15b, 3
	movzx	esi, r15b
	mov	rdx, r10
	nop	word ptr cs:[rax + rax]
.label_1253:
	movzx	edi, byte ptr [r14 + 1]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 1], bl
	movzx	edi, byte ptr [r14]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 2], bl
	movzx	edi, byte ptr [r14 - 1]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 3], bl
	movzx	edi, byte ptr [r14 - 2]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 4], bl
	add	rdx, -4
	add	r14, -4
	cmp	rsi, rdx
	jne	.label_1253
.label_1259:
	test	rcx, rcx
	mov	r8, qword ptr [rsp + 0x18]
	je	.label_1205
	lea	rcx, [r9 + rdx - 1]
	add	rdx, rbp
	lea	rdx, [r13 + rdx - 1]
	and	r12d, 3
	neg	r12
	nop	
.label_1215:
	movzx	esi, byte ptr [rdx]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [rcx], bl
	dec	rcx
	dec	rdx
	inc	r12
	jne	.label_1215
.label_1205:
	add	r9, r10
	mov	rcx, r9
	mov	rsi, qword ptr [rsp + 0x30]
.label_1294:
	add	r8, rsi
.label_1348:
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x58]
	mov	r14d, dword ptr [rsp + 0x2c]
	jmp	.label_1210
.label_1347:
	mov	esi, 0x20
.label_1192:
	mov	rdi, r10
	mov	rdx, r14
	mov	r13, r10
	call	memset
	mov	r10, r13
	mov	r8, qword ptr [rsp + 0x18]
	add	r10, r14
.label_1336:
	mov	al, byte ptr [rsp + 0x50]
	mov	byte ptr [r10], al
	inc	r10
	mov	rcx, r10
.label_1335:
	add	r8, r15
	mov	r10, rcx
.label_1291:
	xor	r11d, r11d
	test	r10, r10
	movsxd	r15, ebx
	mov	eax, 0
	je	.label_1235
	mov	esi, 0x30
	mov	rdi, r10
	mov	rdx, r15
	mov	r14, r8
	mov	rbx, r10
	call	memset
	xor	r11d, r11d
	mov	r8, r14
	add	rbx, r15
	mov	rax, rbx
.label_1235:
	add	r8, r15
	mov	r10, rax
.label_1195:
	lea	r15, [rsp + 0xa7]
	sub	r15, r12
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	cdqe	
	cmp	r15, rax
	mov	r13, r15
	cmovb	r13, rax
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	r13, rcx
	jae	.label_1184
	xor	ecx, ecx
	test	r10, r10
	mov	r14d, dword ptr [rsp + 0x2c]
	je	.label_1238
	cmp	r15, rax
	setae	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_1258
	test	al, al
	jne	.label_1258
	mov	qword ptr [rsp + 0x18], r13
	mov	r13, r8
	movsxd	r14, r11d
	sub	r14, r15
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	je	.label_1260
	cmp	eax, 0x2b
	jne	.label_1301
.label_1260:
	mov	esi, 0x30
	jmp	.label_1269
.label_1301:
	mov	esi, 0x20
.label_1269:
	mov	rdi, r10
	mov	rdx, r14
	mov	rbx, r10
	call	memset
	add	rbx, r14
	mov	r8, r13
	mov	r10, rbx
	mov	r14d, dword ptr [rsp + 0x2c]
	mov	r13, qword ptr [rsp + 0x18]
.label_1258:
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	je	.label_1279
	test	r15, r15
	je	.label_1302
	mov	r14, r8
	mov	rbx, r10
	call	__ctype_toupper_loc
	mov	r10, rbx
	lea	rcx, [rsp + 0xa7]
	sub	ecx, r12d
	lea	rdx, [rsp + 0xa6]
	sub	rdx, r12
	and	ecx, 3
	cmp	rdx, 3
	mov	rdx, r15
	jb	.label_1285
	mov	r8, r12
	neg	r8
	mov	rdi, r10
	sub	rdi, r12
	dec	rdi
	mov	r9, -1
	sub	r8, rcx
	lea	rdx, [rsp + 0xa7]
	nop	dword ptr [rax]
.label_1296:
	movzx	esi, byte ptr [r9 + rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx], bl
	movzx	esi, byte ptr [r9 + rdx - 1]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx - 1], bl
	movzx	esi, byte ptr [r9 + rdx - 2]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx - 2], bl
	movzx	esi, byte ptr [r9 + rdx - 3]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx - 3], bl
	add	rdx, -4
	mov	rsi, r8
	add	rsi, rdx
	jne	.label_1296
	sub	rdx, r12
.label_1285:
	test	rcx, rcx
	mov	r8, r14
	mov	r14d, dword ptr [rsp + 0x2c]
	je	.label_1302
	lea	rsi, [r10 + rdx - 1]
	lea	rdx, [r12 + rdx - 1]
	neg	rcx
	nop	dword ptr [rax + rax]
.label_1226:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_1226
	jmp	.label_1302
.label_1279:
	mov	rdi, r10
	mov	rsi, r12
	mov	rdx, r15
	mov	r14, r8
	mov	rbx, r10
	call	memcpy
	mov	r10, rbx
	mov	r8, r14
	mov	r14d, dword ptr [rsp + 0x2c]
.label_1302:
	add	r10, r15
	mov	rcx, r10
.label_1238:
	add	r8, r13
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
.label_1325:
	mov	r13, qword ptr [rsp + 0x58]
	nop	
.label_1210:
	mov	al, byte ptr [rbp + 1]
	inc	rbp
	mov	edi, 0xffffffff
	test	al, al
	jne	.label_1256
.label_1262:
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_1333
	test	r10, r10
	je	.label_1333
	mov	byte ptr [r10], 0
.label_1333:
	mov	qword ptr [rsp + 0x70], r8
.label_1174:
	mov	rax, qword ptr [rsp + 0x70]
	add	rsp, 0x4b8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1184:
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
	jmp	.label_1174
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40df70

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1366
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1368
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1366
.label_1368:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1366
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1367
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_1367:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1366:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dff0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1369
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1369
	test	byte ptr [rbx + 1], 1
	je	.label_1369
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_1369:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e030

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
	jne	.label_1370
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1370
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1371
.label_1370:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1371:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1372
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1372:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x40e0a0

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
