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
.label_1279:
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
.label_1272:
	or	byte ptr [rip + change_times],  1
	jmp	.label_42
.label_1273:
	mov	byte ptr [rip + no_create],  1
	jmp	.label_42
.label_1274:
	mov	r14, qword ptr [rip + optarg]
	jmp	.label_42
.label_1275:
	mov	byte ptr [rip + no_dereference],  1
	jmp	.label_42
.label_1276:
	or	byte ptr [rip + change_times],  2
	jmp	.label_42
.label_1277:
	mov	byte ptr [rip + use_ref],  1
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + ref_file],  rax
	jmp	.label_42
.label_1278:
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
	mov	rbp, rsi
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_99
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_96:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_97
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_101
	cmp	qword ptr [rsp + 8], -1
	je	.label_102
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_98
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_97
.label_98:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_97
.label_102:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_97:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_96
	jmp	.label_100
.label_99:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_100:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_101:
	mov	rax, rbp
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
	#Procedure 0x4027b0

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
	je	.label_103
	mov	esi, OFFSET FLAT:label_104
	jmp	.label_105
.label_103:
	mov	esi, OFFSET FLAT:label_106
.label_105:
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
	#Procedure 0x402820

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
	mov	esi, OFFSET FLAT:label_107
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_112
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_109:
	test	r15, r15
	je	.label_111
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_108
.label_111:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_113
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_110
	nop	word ptr cs:[rax + rax]
.label_108:
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
.label_110:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_109
.label_112:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_115
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
.label_115:
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
	#Procedure 0x402950

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_116
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	r14
	mov	rax, -1
.label_116:
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
	#Procedure 0x4029c0
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
	je	.label_117
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_118:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_117
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_118
.label_117:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a30
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a40
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a50

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_125
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_122
	cmp	dword ptr [rbp], 0x20
	jne	.label_122
.label_125:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_121
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_122:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_119
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_120
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_121:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_119:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_124
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
	#Procedure 0x402b10

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
	je	.label_126
	test	ebx, ebx
	js	.label_126
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
	jmp	.label_127
.label_126:
	mov	eax, ebx
.label_127:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b70

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
	js	.label_130
	mov	edi, ebx
	mov	rsi, r12
	call	futimens
.label_130:
	test	rbp, rbp
	je	.label_128
	test	ebx, ebx
	js	.label_131
	cmp	eax, -1
	jne	.label_128
	call	__errno_location
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	dword ptr [rcx], 0x26
	jne	.label_129
.label_131:
	mov	edi, r15d
	mov	rsi, rbp
	mov	rdx, r12
	mov	ecx, r14d
	call	utimensat
.label_128:
	cmp	eax, 1
	jne	.label_129
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	eax, 0xffffffff
.label_129:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bf0

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
	#Procedure 0x402c00
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
	#Procedure 0x402c20

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
	mov	r14, rdi
	lea	r13, [rsp + 0x120]
	mov	word ptr [rsp + 0xf0], 0
	lea	rax, [r14 + 0x58]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [r14 + 0x50]
	mov	qword ptr [rsp + 0xd8], rax
	lea	rax, [r14 + 0x20]
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12d, 0xfffffffe
	movabs	r8, 0x8000000000000000
	movabs	rax, 0x3ffffff03ffffff
	movabs	rcx, 0x3ffffffffffffff
	and	rcx, rax
	mov	qword ptr [rsp + 0xe8], rcx
	mov	r15d, 0x80001f
	mov	r9d, 0xffffffff
	movabs	r10, 0xf333333333333334
	movabs	r11, 0xccccccccccccccc
	mov	eax, 0
	mov	edi, 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x98], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xe0], rcx
	mov	dword ptr [rsp + 0x94], 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xc8], rcx
	jmp	.label_145
	nop	word ptr cs:[rax + rax]
.label_175:
	movsxd	rsi, eax
	movsx	edx, byte ptr [rsi + yypact]
	cmp	edx, -0x5d
	je	.label_205
	cmp	r12d, -2
	jne	.label_210
	mov	dword ptr [rsp + 0x58], edx
	mov	qword ptr [rsp + 0x50], rsi
	mov	qword ptr [rsp + 0x48], rdi
	mov	rdi, qword ptr [r14]
	mov	rdx, rdi
	jmp	.label_211
.label_306:
	mov	rdi, rdx
	nop	word ptr cs:[rax + rax]
.label_211:
	mov	sil, byte ptr [rdx]
	movzx	eax, sil
	lea	ebp, [rax - 9]
	cmp	ebp, 0x17
	ja	.label_217
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_228:
	mov	rcx, rdx
	bt	r15d, ebp
	jae	.label_154
	mov	qword ptr [r14], rcx
	mov	sil, byte ptr [rcx]
	movzx	eax, sil
	lea	ebp, [rax - 9]
	lea	rdx, [rcx + 1]
	cmp	ebp, 0x18
	mov	rdi, rcx
	jb	.label_228
	dec	rdx
	mov	rdi, rcx
	jmp	.label_217
	nop	word ptr [rax + rax]
.label_154:
	dec	rcx
	mov	rdx, rcx
.label_217:
	lea	ecx, [rax - 0x30]
	cmp	ecx, 0xa
	jb	.label_240
	cmp	sil, 0x2d
	je	.label_240
	cmp	sil, 0x2b
	jne	.label_243
	nop	word ptr [rax + rax]
.label_240:
	cmp	sil, 0x2d
	je	.label_248
	xor	eax, eax
	cmp	sil, 0x2b
	jne	.label_250
.label_248:
	cmp	sil, 0x2d
	mov	eax, 1
	cmove	eax, r9d
	inc	rdx
	mov	rdi, rdx
	nop	word ptr cs:[rax + rax]
.label_268:
	mov	rdx, rdi
	mov	qword ptr [r14], rdx
	mov	sil, byte ptr [rdx]
	movzx	ecx, sil
	lea	ebp, [rcx - 9]
	cmp	ebp, 0x17
	ja	.label_264
	lea	rdi, [rdx + 1]
	bt	r15d, ebp
	jb	.label_268
.label_264:
	add	ecx, -0x30
	cmp	ecx, 9
	mov	rdi, rdx
	ja	.label_211
	jmp	.label_250
.label_243:
	add	eax, -0x41
	cmp	eax, 0x39
	ja	.label_276
	movabs	rcx, 0x3ffffff03ffffff
	bt	rcx, rax
	jb	.label_279
.label_276:
	cmp	sil, 0x28
	jne	.label_285
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x50]
	nop	word ptr cs:[rax + rax]
.label_304:
	mov	rax, rdx
	lea	rdx, [rax + 1]
	mov	qword ptr [r14], rdx
	movzx	ebx, byte ptr [rax]
	cmp	bl, 0x28
	je	.label_331
	cmp	bl, 0x29
	je	.label_298
	xor	eax, eax
	test	bl, bl
	jne	.label_300
	jmp	.label_302
	nop	
.label_298:
	dec	rcx
	jmp	.label_300
	nop	word ptr cs:[rax + rax]
.label_331:
	inc	rcx
.label_300:
	test	rcx, rcx
	jne	.label_304
	jmp	.label_306
.label_302:
	xor	r12d, r12d
	mov	edx, dword ptr [rsp + 0x58]
	jmp	.label_204
.label_250:
	add	rdx, 3
	xor	ecx, ecx
	nop	
.label_348:
	mov	r12d, 0x3f
	test	rcx, rcx
	js	.label_311
	cmp	rcx, r11
	jle	.label_313
	jmp	.label_315
	nop	word ptr cs:[rax + rax]
.label_311:
	cmp	rcx, r10
	jl	.label_315
.label_313:
	add	rcx, rcx
	movzx	ebp, sil
	mov	ebx, 0x30
	sub	ebx, ebp
	add	ebp, -0x30
	test	eax, eax
	lea	rsi, [rcx + rcx*4]
	cmovs	ebp, ebx
	movsxd	rcx, ebp
	test	ecx, ecx
	js	.label_325
	lea	rbp, [r8 - 1]
	sub	rbp, rcx
	mov	r12d, 0x3f
	cmp	rbp, rsi
	jge	.label_336
	jmp	.label_315
	nop	word ptr cs:[rax + rax]
.label_325:
	mov	rbp, r8
	sub	rbp, rcx
	mov	r12d, 0x3f
	cmp	rsi, rbp
	jl	.label_315
.label_336:
	add	rcx, rsi
	movzx	esi, byte ptr [rdx - 2]
	mov	ebp, esi
	add	ebp, -0x30
	inc	rdx
	cmp	ebp, 0xa
	jb	.label_348
	or	sil, 2
	cmp	sil, 0x2e
	jne	.label_355
	movsx	esi, byte ptr [rdx - 2]
	add	esi, -0x30
	cmp	esi, 9
	ja	.label_355
	lea	rdi, [rdx - 1]
	lea	esi, [rsi + rsi*4]
	movsx	ebp, byte ptr [rdx - 1]
	add	ebp, -0x30
	cmp	ebp, 0xa
	cmovb	rdi, rdx
	mov	ebx, 0
	cmovae	ebp, ebx
	lea	edx, [rbp + rsi*2]
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
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rbp]
	add	esi, -0x30
	lea	rdi, [rbp + 1]
	cmp	esi, 0xa
	cmovae	rdi, rbp
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	esi, [rdx + rdx*4]
	movsx	ebp, byte ptr [rdi]
	add	ebp, -0x30
	lea	rdx, [rdi + 1]
	cmp	ebp, 0xa
	cmovae	rdx, rdi
	cmovae	ebp, ebx
	lea	esi, [rbp + rsi*2]
	test	eax, eax
	jns	.label_153
	movsx	ebp, byte ptr [rdx]
	mov	edi, ebp
	add	edi, -0x30
	cmp	edi, 9
	ja	.label_153
	nop	
.label_162:
	cmp	bpl, 0x30
	jne	.label_160
	movsx	ebp, byte ptr [rdx + 1]
	inc	rdx
	mov	edi, ebp
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_162
	jmp	.label_153
.label_315:
	mov	rcx, qword ptr [rsp + 0x98]
	jmp	.label_170
.label_355:
	add	rdx, -3
	mov	esi, eax
	shr	esi, 0x1f
	mov	dword ptr [rsp + 0x94], esi
	mov	qword ptr [r14], rdx
	sub	rdx, rdi
	xor	r12d, r12d
	test	eax, eax
	sete	r12b
	or	r12d, 0x112
	mov	qword ptr [rsp + 0xe0], rdx
.label_170:
	mov	rdi, qword ptr [rsp + 0x48]
.label_272:
	mov	rsi, qword ptr [rsp + 0x50]
	mov	edx, dword ptr [rsp + 0x58]
	jmp	.label_186
.label_285:
	lea	rax, [rdx + 1]
	mov	qword ptr [r14], rax
	movzx	r12d, byte ptr [rdx]
	jmp	.label_189
.label_279:
	lea	rdi, [rsp + 0xa0]
	mov	rax, rdi
	mov	rbp, qword ptr [rsp + 0xe8]
	nop	
.label_213:
	lea	rcx, [rsp + 0xb3]
	cmp	rax, rcx
	jae	.label_218
	mov	byte ptr [rax], sil
	inc	rax
	mov	rdx, qword ptr [r14]
.label_218:
	mov	rcx, rdx
	lea	rdx, [rcx + 1]
	mov	qword ptr [r14], rdx
	movzx	esi, byte ptr [rcx + 1]
	mov	ecx, esi
	add	ecx, -0x41
	cmp	ecx, 0x39
	ja	.label_297
	mov	rbx, rbp
	shr	rbx, cl
	and	ebx, 1
	jmp	.label_207
	nop	dword ptr [rax]
.label_297:
	xor	ebx, ebx
.label_207:
	cmp	sil, 0x2e
	je	.label_213
	test	bl, bl
	jne	.label_213
	mov	byte ptr [rax], 0
	mov	al, byte ptr [rsp + 0xa0]
	test	al, al
	je	.label_215
	lea	rcx, [rsp + 0xa1]
	nop	word ptr cs:[rax + rax]
.label_225:
	movzx	edx, al
	add	edx, -0x61
	cmp	edx, 0x1a
	jae	.label_221
	add	al, 0xe0
.label_221:
	mov	byte ptr [rcx - 1], al
	movzx	eax, byte ptr [rcx]
	inc	rcx
	test	al, al
	jne	.label_225
.label_215:
	mov	esi, OFFSET FLAT:label_229
	mov	rbx, rdi
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:meridian_table
	je	.label_134
	mov	esi, OFFSET FLAT:label_233
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_239
	je	.label_134
	mov	esi, OFFSET FLAT:label_249
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_246
	je	.label_134
	mov	esi, OFFSET FLAT:label_251
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_253
	je	.label_134
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	mov	r12b, 1
	cmp	rbp, 3
	je	.label_262
	cmp	rbp, 4
	jne	.label_267
	cmp	byte ptr [rsp + 0xa3], 0x2e
	sete	r12b
	jmp	.label_262
.label_160:
	inc	esi
.label_153:
	dec	rdx
	nop	word ptr [rax + rax]
.label_274:
	movsx	edi, byte ptr [rdx + 1]
	inc	rdx
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_274
	test	eax, eax
	jns	.label_280
	test	esi, esi
	mov	rdi, qword ptr [rsp + 0x48]
	je	.label_282
	mov	r12d, 0x3f
	cmp	rcx, r8
	jne	.label_284
	mov	rcx, qword ptr [rsp + 0x98]
	jmp	.label_272
.label_284:
	dec	rcx
	mov	edi, 0x3b9aca00
	sub	edi, esi
	mov	esi, edi
.label_280:
	mov	rdi, qword ptr [rsp + 0x48]
.label_282:
	mov	rbx, rcx
	shr	rbx, 8
	mov	qword ptr [rsp + 0xc8], rbx
	mov	dword ptr [rsp + 0x94], ecx
	movsxd	rcx, esi
	mov	qword ptr [r14], rdx
	xor	r12d, r12d
	test	eax, eax
	sete	r12b
	or	r12d, 0x114
	jmp	.label_272
.label_267:
	xor	r12d, r12d
.label_262:
	mov	esi, OFFSET FLAT:label_307
	mov	ebx, OFFSET FLAT:month_and_day_table
	lea	rax, [rsp + 0xa0]
.label_321:
	test	r12b, r12b
	je	.label_310
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	jmp	.label_314
.label_310:
	mov	rdi, rax
	call	strcmp
.label_314:
	test	eax, eax
	je	.label_319
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	lea	rax, [rsp + 0xa0]
	jne	.label_321
	mov	rdi, r14
	mov	rsi, rax
	mov	rbx, rax
	call	lookup_zone
	test	rax, rax
	jne	.label_134
	mov	esi, OFFSET FLAT:label_337
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:dst_table
	je	.label_134
	mov	esi, OFFSET FLAT:label_141
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:time_units_table
	je	.label_134
	mov	esi, OFFSET FLAT:label_236
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_260
	je	.label_134
	mov	esi, OFFSET FLAT:label_163
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_167
	je	.label_134
	mov	esi, OFFSET FLAT:label_172
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_176
	je	.label_134
	mov	esi, OFFSET FLAT:label_178
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_182
	je	.label_134
	mov	esi, OFFSET FLAT:label_184
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_188
	je	.label_134
	mov	esi, OFFSET FLAT:label_179
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_193
	je	.label_134
	mov	esi, OFFSET FLAT:label_194
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_198
	je	.label_134
	mov	esi, OFFSET FLAT:label_256
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_147
	je	.label_134
	mov	esi, OFFSET FLAT:label_209
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_212
	je	.label_134
	cmp	byte ptr [rsp + rbp + 0x9f], 0x53
	jne	.label_135
	mov	byte ptr [rsp + rbp + 0x9f], 0
	mov	esi, OFFSET FLAT:label_141
	lea	rbx, [rsp + 0xa0]
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:time_units_table
	je	.label_134
	mov	esi, OFFSET FLAT:label_236
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_260
	je	.label_134
	mov	esi, OFFSET FLAT:label_163
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_167
	je	.label_134
	mov	esi, OFFSET FLAT:label_172
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_176
	je	.label_134
	mov	esi, OFFSET FLAT:label_178
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_182
	je	.label_134
	mov	esi, OFFSET FLAT:label_184
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_188
	je	.label_134
	mov	esi, OFFSET FLAT:label_179
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_193
	je	.label_134
	mov	esi, OFFSET FLAT:label_194
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_198
	je	.label_134
	mov	esi, OFFSET FLAT:label_256
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_147
	je	.label_134
	mov	esi, OFFSET FLAT:label_209
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_212
	je	.label_134
	mov	byte ptr [rsp + rbp + 0x9f], 0x53
.label_135:
	mov	esi, OFFSET FLAT:label_352
	lea	rbx, [rsp + 0xa0]
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:relative_time_table
	je	.label_134
	mov	esi, OFFSET FLAT:label_222
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_159
	je	.label_134
	mov	esi, OFFSET FLAT:label_230
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_231
	je	.label_134
	mov	esi, OFFSET FLAT:label_237
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_234
	je	.label_134
	mov	esi, OFFSET FLAT:label_327
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_281
	je	.label_134
	mov	esi, OFFSET FLAT:label_252
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_255
	je	.label_134
	mov	esi, OFFSET FLAT:label_197
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_265
	je	.label_134
	mov	esi, OFFSET FLAT:label_374
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_271
	je	.label_134
	mov	esi, OFFSET FLAT:label_273
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_278
	je	.label_134
	mov	esi, OFFSET FLAT:label_283
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_287
	je	.label_134
	mov	esi, OFFSET FLAT:label_290
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_292
	je	.label_134
	mov	esi, OFFSET FLAT:label_294
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_299
	je	.label_134
	mov	esi, OFFSET FLAT:label_303
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_341
	je	.label_134
	mov	esi, OFFSET FLAT:label_358
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_373
	je	.label_134
	mov	esi, OFFSET FLAT:label_312
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_318
	je	.label_134
	mov	esi, OFFSET FLAT:label_177
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_328
	je	.label_134
	mov	esi, OFFSET FLAT:label_332
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_334
	je	.label_134
	mov	esi, OFFSET FLAT:label_339
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_342
	je	.label_134
	mov	esi, OFFSET FLAT:label_296
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_346
	je	.label_134
	mov	esi, OFFSET FLAT:label_340
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_353
	je	.label_134
	movzx	esi, word ptr [rsp + 0xa0]
	cmp	rbp, 1
	mov	ecx, esi
	jne	.label_371
	cmp	cl, 0x41
	mov	eax, OFFSET FLAT:military_table
	lea	rdx, [rsp + 0xa0]
	je	.label_134
	cmp	cl, 0x42
	mov	eax, OFFSET FLAT:label_316
	je	.label_134
	cmp	cl, 0x43
	mov	eax, OFFSET FLAT:label_364
	je	.label_134
	cmp	cl, 0x44
	mov	eax, OFFSET FLAT:label_368
	je	.label_134
	cmp	cl, 0x45
	mov	eax, OFFSET FLAT:label_372
	je	.label_134
	cmp	cl, 0x46
	mov	eax, OFFSET FLAT:label_345
	je	.label_134
	cmp	cl, 0x47
	mov	eax, OFFSET FLAT:label_376
	je	.label_134
	cmp	cl, 0x48
	mov	eax, OFFSET FLAT:label_305
	je	.label_134
	cmp	cl, 0x49
	mov	eax, OFFSET FLAT:label_377
	je	.label_134
	cmp	cl, 0x4b
	mov	eax, OFFSET FLAT:label_378
	je	.label_134
	cmp	cl, 0x4c
	mov	eax, OFFSET FLAT:label_380
	je	.label_134
	cmp	cl, 0x4d
	mov	eax, OFFSET FLAT:label_382
	je	.label_134
	cmp	cl, 0x4e
	mov	eax, OFFSET FLAT:label_133
	je	.label_134
	cmp	cl, 0x4f
	mov	eax, OFFSET FLAT:label_140
	je	.label_134
	cmp	cl, 0x50
	mov	eax, OFFSET FLAT:label_144
	je	.label_134
	cmp	cl, 0x51
	mov	eax, OFFSET FLAT:label_309
	je	.label_134
	cmp	cl, 0x52
	mov	eax, OFFSET FLAT:label_150
	je	.label_134
	cmp	cl, 0x53
	mov	eax, OFFSET FLAT:label_187
	je	.label_134
	cmp	cl, 0x54
	mov	eax, OFFSET FLAT:label_156
	je	.label_134
	cmp	cl, 0x55
	mov	eax, OFFSET FLAT:label_161
	je	.label_134
	cmp	cl, 0x56
	mov	eax, OFFSET FLAT:label_291
	je	.label_134
	cmp	cl, 0x57
	mov	eax, OFFSET FLAT:label_166
	je	.label_134
	cmp	cl, 0x58
	mov	eax, OFFSET FLAT:label_169
	je	.label_134
	cmp	cl, 0x59
	mov	eax, OFFSET FLAT:label_174
	je	.label_134
	test	cl, cl
	je	.label_138
	cmp	cl, 0x5a
	mov	eax, OFFSET FLAT:label_277
	je	.label_134
	jmp	.label_181
.label_319:
	mov	rax, rbx
.label_134:
	mov	r12d, dword ptr [rax + 8]
	mov	eax, dword ptr [rax + 0xc]
	mov	dword ptr [rsp + 0x94], eax
	sar	eax, 8
	cdqe	
	mov	qword ptr [rsp + 0xc8], rax
.label_149:
	mov	r9d, 0xffffffff
	movabs	r8, 0x8000000000000000
	movabs	r10, 0xf333333333333334
	movabs	r11, 0xccccccccccccccc
.label_189:
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	edx, dword ptr [rsp + 0x58]
	nop	word ptr [rax + rax]
.label_210:
	xor	eax, eax
	test	r12d, r12d
	jle	.label_200
	mov	eax, 2
	cmp	r12d, 0x115
	mov	rcx, qword ptr [rsp + 0x98]
	ja	.label_204
.label_186:
	movsxd	rax, r12d
	movzx	eax, byte ptr [rax + yytranslate]
	mov	qword ptr [rsp + 0x98], rcx
	jmp	.label_204
.label_200:
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_204:
	add	edx, eax
	cmp	edx, 0x70
	ja	.label_205
	movsxd	rcx, edx
	movsx	edx, byte ptr [rcx + yycheck]
	cmp	edx, eax
	jne	.label_205
	movzx	eax, byte ptr [rcx + yytable]
	or	rcx, 4
	cmp	rcx, 0x6f
	jne	.label_219
	neg	eax
	jmp	.label_224
	nop	
.label_205:
	movzx	eax, byte ptr [rsi + yydefact]
	test	eax, eax
	mov	ebp, 1
	je	.label_148
.label_224:
	movsxd	rdx, eax
	movzx	esi, byte ptr [rdx + yyr2]
	mov	eax, 1
	sub	rax, rsi
	imul	rax, rax, 0x38
	mov	rcx, qword ptr [r13 + rax]
	mov	qword ptr [rsp + 0x58], rcx
	mov	rcx, qword ptr [r13 + rax + 8]
	mov	qword ptr [rsp + 0x68], rcx
	mov	rcx, qword ptr [r13 + rax + 0x10]
	mov	qword ptr [rsp + 0x50], rcx
	mov	rcx, qword ptr [r13 + rax + 0x18]
	mov	qword ptr [rsp + 0x80], rcx
	mov	rcx, qword ptr [r13 + rax + 0x20]
	mov	qword ptr [rsp + 0x78], rcx
	mov	rcx, qword ptr [r13 + rax + 0x28]
	mov	qword ptr [rsp + 0x70], rcx
	mov	ecx, dword ptr [r13 + rax + 0x30]
	mov	dword ptr [rsp + 0x44], ecx
	mov	eax, dword ptr [r13 + rax + 0x34]
	mov	dword ptr [rsp + 0xd4], eax
	lea	eax, [rdx - 4]
	cmp	eax, 0x57
	ja	.label_157
	jmp	qword ptr [(rax * 8) + label_365]
.label_1551:
	mov	rax, qword ptr [r13 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 0x10]
	movups	xmm2, xmmword ptr [r13 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	ebp, 1
	mov	qword ptr [rsp + 0x60], rsi
	mov	esi, 1
	mov	qword ptr [rsp + 0x48], rdi
	mov	rdi, r14
	mov	rbx, rdx
	call	apply_relative_time
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, rbx
	mov	rdi, qword ptr [rsp + 0x48]
	movabs	r11, 0xccccccccccccccc
	movabs	r10, 0xf333333333333334
	mov	r9d, 0xffffffff
	movabs	r8, 0x8000000000000000
	jmp	.label_288
.label_219:
	mov	rcx, qword ptr [rsp + 0xc8]
	shl	rcx, 8
	mov	edx, dword ptr [rsp + 0x94]
	movzx	edx, dl
	or	rdx, rcx
	mov	qword ptr [r13 + 0x38], rdx
	mov	rcx, qword ptr [rsp + 0x98]
	mov	qword ptr [r13 + 0x40], rcx
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	qword ptr [r13 + 0x48], rcx
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13 + 0x60], xmm0
	movdqu	xmmword ptr [r13 + 0x50], xmm0
	lea	rcx, [r13 + 0x38]
	mov	r12d, 0xfffffffe
	jmp	.label_238
.label_1565:
	mov	rax, qword ptr [r13 - 0x30]
	jmp	.label_323
.label_1572:
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 0x58], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	jmp	.label_157
.label_1553:
	mov	rax, qword ptr [r13 - 0x30]
	jmp	.label_333
.label_1568:
	mov	rax, qword ptr [r13 - 0x30]
	jmp	.label_335
.label_1556:
	mov	rax, qword ptr [r13 - 0x30]
	jmp	.label_247
.label_1569:
	mov	rax, qword ptr [r13 - 0x38]
	mov	qword ptr [rsp + 0x70], rax
	mov	eax, dword ptr [r13 - 0x30]
	mov	dword ptr [rsp + 0x44], eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x80], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x78], rax
	jmp	.label_157
.label_1560:
	mov	rax, qword ptr [r13]
	jmp	.label_354
.label_1562:
	mov	rax, qword ptr [r13 - 0x30]
	jmp	.label_356
.label_1574:
	mov	qword ptr [rsp + 0x48], rdi
	movdqu	xmm0, xmmword ptr [r13 - 0x38]
	mov	rdi, qword ptr [r13 - 0x28]
	mov	rax, qword ptr [r14 + 0xa8]
	test	rax, rax
	mov	qword ptr [rsp + 0x60], rsi
	je	.label_357
	cmp	qword ptr [r14 + 0x30], 0
	jne	.label_357
	cmp	byte ptr [r14 + 0xa1], 0
	je	.label_362
.label_357:
	mov	rbx, rdx
	cmp	rdi, 5
	jl	.label_366
	inc	rax
	mov	qword ptr [r14 + 0xa8], rax
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
	mov	qword ptr [r14 + 0x40], rdx
	mov	rax, rsi
	imul	rbp
	add	rdx, rsi
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x64
	sub	rsi, rax
	mov	qword ptr [r14 + 0x38], rsi
	movabs	rdx, 0x346dc5d63886594b
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0xb
	add	rdx, rax
	mov	qword ptr [r14 + 0x28], rdx
	add	rdi, -4
	mov	qword ptr [r14 + 0x30], rdi
	jmp	.label_369
.label_1558:
	mov	rbx, qword ptr [r13]
	test	rbx, rbx
	mov	qword ptr [rsp + 0x50], rbx
	js	.label_146
	lea	rcx, [r13 - 0x38]
	jmp	.label_383
.label_1557:
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	jmp	.label_152
.label_1550:
	mov	qword ptr [rsp + 0x60], rsi
	mov	esi, dword ptr [r13]
	mov	rax, qword ptr [r13 - 8]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r13 - 0x38]
	movups	xmm1, xmmword ptr [r13 - 0x28]
	movups	xmm2, xmmword ptr [r13 - 0x18]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	rbx, rdi
	mov	rdi, r14
	mov	rbp, rdx
	call	apply_relative_time
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, rbp
	mov	rdi, rbx
	movabs	r11, 0xccccccccccccccc
	movabs	r10, 0xf333333333333334
	mov	r9d, 0xffffffff
	movabs	r8, 0x8000000000000000
	mov	ebp, 1
.label_288:
	test	al, al
	jne	.label_157
	jmp	.label_148
.label_1549:
	mov	rax, qword ptr [r13 - 0x60]
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [r13 - 0x70]
	movdqu	xmmword ptr [rcx], xmm0
	mov	rax, qword ptr [r13 - 0x30]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r8
	mov	qword ptr [r14 + 0x38], rcx
	mov	ebp, 1
	je	.label_148
	mov	rax, qword ptr [r13 + 8]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r8
	mov	qword ptr [r14 + 0x40], rcx
	jne	.label_157
	jmp	.label_148
.label_1547:
	mov	rax, qword ptr [r13 - 0x30]
	mov	qword ptr [r14 + 0x40], rax
	mov	rax, qword ptr [r13]
	mov	qword ptr [r14 + 0x38], rax
	jmp	.label_157
.label_1575:
	mov	qword ptr [rsp + 0x58], -1
	jmp	.label_157
.label_1529:
	mov	dword ptr [r14 + 0x14], 1
	inc	qword ptr [r14 + 0xc0]
	jmp	.label_157
.label_1532:
	mov	eax, dword ptr [r13 - 0x38]
	mov	dword ptr [r14 + 0x18], eax
	jmp	.label_223
.label_1524:
	mov	rax, qword ptr [r13 - 0x30]
	mov	qword ptr [r14 + 0x48], rax
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xd8]
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [r14 + 0x1c], 2
	jmp	.label_157
.label_1536:
	mov	eax, 0xe10
	add	eax, dword ptr [r13 - 0x38]
	mov	dword ptr [r14 + 0x18], eax
	jmp	.label_157
.label_1534:
	mov	qword ptr [rsp + 0x88], rdx
	mov	rdx, qword ptr [r13 - 0x30]
	imul	rcx, rdx, 0x64
	cmp	qword ptr [r13 - 0x28], 3
	mov	rax, qword ptr [r13]
	cmovge	rcx, rdx
	test	rax, rax
	cmovns	rcx, rdx
	js	.label_242
	mov	rbx, rsi
	mov	dl, byte ptr [r13 - 0x38]
	test	rcx, rcx
	js	.label_257
	movabs	rsi, 0x222222222222222
	cmp	rcx, rsi
	jg	.label_351
	jmp	.label_254
.label_1521:
	mov	rax, qword ptr [r13 - 0x30]
	mov	qword ptr [r14 + 0x48], rax
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xd8]
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_185
.label_1544:
	mov	rax, qword ptr [r13 - 0x70]
	mov	qword ptr [r14 + 0x38], rax
	mov	rax, qword ptr [r13 - 0x30]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r8
	mov	qword ptr [r14 + 0x40], rcx
	mov	ebp, 1
	je	.label_148
	mov	rax, qword ptr [r13 + 8]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r8
	mov	qword ptr [r14 + 0x28], rcx
	jne	.label_289
	jmp	.label_148
.label_1539:
	mov	rax, qword ptr [r13 - 0x38]
	jmp	.label_295
.label_1533:
	mov	dword ptr [r14 + 0x18], 0x6270
.label_223:
	mov	rax, qword ptr [r13 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 0x10]
	movups	xmm2, xmmword ptr [r13 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	ebp, 1
	mov	qword ptr [rsp + 0x60], rsi
	mov	esi, 1
	mov	qword ptr [rsp + 0x48], rdi
	mov	rdi, r14
	mov	rbx, rdx
	call	apply_relative_time
	test	al, al
	je	.label_148
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_195
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	debug_print_relative_time
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, rbx
	jmp	.label_330
.label_1523:
	mov	rax, qword ptr [r13 - 0x110]
	mov	rcx, qword ptr [r13 - 0xa0]
	mov	rbx, rdx
	mov	rdx, qword ptr [r13 - 0x38]
	mov	rbp, rsi
	movsxd	rsi, dword ptr [r13 - 0x30]
	mov	qword ptr [r14 + 0x48], rax
	mov	qword ptr [r14 + 0x50], rcx
	mov	qword ptr [r14 + 0x58], rdx
	mov	rdx, rbx
	mov	qword ptr [r14 + 0x60], rsi
	mov	rsi, rbp
	jmp	.label_185
.label_1530:
	mov	eax, dword ptr [r13]
	mov	dword ptr [r14 + 0x18], eax
	jmp	.label_157
.label_1513:
	inc	qword ptr [r14 + 0xc8]
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_349
	jmp	.label_143
.label_1540:
	mov	rax, qword ptr [r13 - 0x30]
.label_295:
	mov	qword ptr [r14 + 8], rax
	mov	eax, dword ptr [r13]
	mov	dword ptr [r14 + 0x10], eax
	mov	byte ptr [r14 + 0xe0], 1
	jmp	.label_157
.label_1542:
	mov	rbp, qword ptr [r13 - 0xd0]
	mov	al, byte ptr [r14 + 0xd9]
	cmp	rbp, 4
	jl	.label_361
	lea	rbx, [r13 - 0xe0]
	test	al, al
	je	.label_363
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x60], rsi
	mov	esi, OFFSET FLAT:label_367
	mov	qword ptr [rsp + 0x88], rbx
	mov	rbx, rdx
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [r13 - 0xd8]
	xor	eax, eax
	mov	rdi, rcx
	mov	rdx, rbp
	call	dbg_printf
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, rbx
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rdi, qword ptr [rsp + 0x48]
	movabs	r11, 0xccccccccccccccc
	movabs	r10, 0xf333333333333334
	mov	r9d, 0xffffffff
	movabs	r8, 0x8000000000000000
.label_363:
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [rbx]
	movdqu	xmmword ptr [rcx], xmm0
.label_1541:
	mov	rax, qword ptr [r13 - 0x68]
	jmp	.label_137
.label_1516:
	inc	qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_142
	jmp	.label_143
.label_1522:
	mov	rax, qword ptr [r13 - 0xa0]
	mov	rcx, qword ptr [r13 - 0x30]
	mov	qword ptr [r14 + 0x48], rax
	mov	qword ptr [r14 + 0x50], rcx
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rax], xmm0
.label_185:
	mov	eax, dword ptr [r13]
	mov	dword ptr [r14 + 0x1c], eax
	jmp	.label_157
.label_1535:
	mov	eax, 0xe10
	add	eax, dword ptr [r13]
	mov	dword ptr [r14 + 0x18], eax
	jmp	.label_157
.label_1511:
	movdqu	xmm0, xmmword ptr [r13]
	mov	rax, qword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rax], xmm0
	mov	byte ptr [r14 + 0xa0], 1
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_173
	jmp	.label_143
.label_1512:
	inc	qword ptr [r14 + 0xc8]
	inc	qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_183
	jmp	.label_143
.label_1517:
	inc	qword ptr [r14 + 0xb0]
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_190
	jmp	.label_143
.label_1518:
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_195
	jmp	.label_196
.label_1525:
	mov	rax, qword ptr [r13 - 0xa0]
	mov	rcx, qword ptr [r13 - 0x30]
	mov	qword ptr [r14 + 0x48], rax
	mov	qword ptr [r14 + 0x50], rcx
	jmp	.label_201
.label_1554:
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_206
.label_1526:
	mov	rax, qword ptr [r13 - 0x110]
	mov	rcx, qword ptr [r13 - 0xa0]
	mov	rbx, rdx
	mov	rdx, qword ptr [r13 - 0x38]
	mov	rbp, rsi
	movsxd	rsi, dword ptr [r13 - 0x30]
	mov	qword ptr [r14 + 0x48], rax
	mov	qword ptr [r14 + 0x50], rcx
	mov	qword ptr [r14 + 0x58], rdx
	mov	rdx, rbx
	mov	qword ptr [r14 + 0x60], rsi
	mov	rsi, rbp
	mov	dword ptr [r14 + 0x1c], 2
	jmp	.label_157
.label_1514:
	inc	qword ptr [r14 + 0xb8]
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_227
	jmp	.label_143
.label_1515:
	inc	qword ptr [r14 + 0xd0]
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_232
	jmp	.label_143
.label_1576:
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_157
.label_1548:
	mov	rax, qword ptr [r13 - 0x68]
	mov	qword ptr [r14 + 0x40], rax
	mov	rax, qword ptr [r13 - 0x38]
	mov	qword ptr [r14 + 0x38], rax
	jmp	.label_244
.label_1555:
	mov	rax, qword ptr [r13 - 0x38]
.label_247:
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_206
.label_1520:
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_258
.label_196:
	mov	rbp, rdx
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	debug_print_relative_time
	jmp	.label_269
.label_1561:
	mov	rax, qword ptr [r13 - 0x38]
.label_356:
	mov	qword ptr [rsp + 0x80], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_270
.label_1519:
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_275
.label_143:
	mov	rbp, rdx
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	debug_print_current_time
.label_269:
	mov	rsi, rbx
	mov	rdx, rbp
.label_330:
	mov	rdi, qword ptr [rsp + 0x48]
	movabs	r11, 0xccccccccccccccc
	movabs	r10, 0xf333333333333334
	mov	r9d, 0xffffffff
	movabs	r8, 0x8000000000000000
	jmp	.label_157
.label_1528:
	mov	eax, dword ptr [r13]
	mov	dword ptr [r14 + 0x14], eax
	jmp	.label_157
.label_1545:
	mov	rax, qword ptr [r13 - 0x38]
.label_137:
	mov	qword ptr [r14 + 0x38], rax
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [r14 + 0x40], rax
	jmp	.label_157
.label_1527:
	mov	rbx, rdx
	inc	qword ptr [r14 + 0xd0]
	mov	rdx, qword ptr [r13 - 0x30]
	imul	rcx, rdx, 0x64
	cmp	qword ptr [r13 - 0x28], 3
	mov	rax, qword ptr [r13]
	cmovge	rcx, rdx
	test	rax, rax
	cmovns	rcx, rdx
	js	.label_308
	mov	rbp, rsi
	mov	dl, byte ptr [r13 - 0x38]
	test	rcx, rcx
	js	.label_320
	movabs	rsi, 0x222222222222222
	cmp	rcx, rsi
	jg	.label_326
	jmp	.label_317
.label_1552:
	mov	rax, qword ptr [r13 - 0x38]
.label_333:
	mov	qword ptr [rsp + 0x58], rax
	xor	eax, eax
.label_152:
	mov	qword ptr [rsp + 0x68], rax
.label_206:
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	jmp	.label_338
.label_1531:
	mov	dword ptr [r14 + 0x18], 0x6270
	jmp	.label_157
.label_1567:
	mov	rax, qword ptr [r13 - 0x38]
.label_335:
	mov	qword ptr [rsp + 0x70], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_343
.label_1573:
	mov	qword ptr [rsp + 0x48], rdi
	movdqu	xmm0, xmmword ptr [r13]
	mov	rdi, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r14 + 0xa8]
	test	rax, rax
	je	.label_347
	cmp	qword ptr [r14 + 0x30], 0
	jne	.label_347
	cmp	byte ptr [r14 + 0xa1], 0
	je	.label_370
.label_347:
	cmp	rdi, 5
	jl	.label_359
	inc	rax
	mov	qword ptr [r14 + 0xa8], rax
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	movabs	rbp, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	mov	qword ptr [rsp + 0x88], rdx
	imul	rbp
	mov	rbx, rsi
	mov	rsi, rdx
	add	rsi, rcx
	mov	rax, rsi
	shr	rax, 0x3f
	sar	rsi, 6
	add	rsi, rax
	imul	rax, rsi, 0x64
	mov	rdx, rcx
	sub	rdx, rax
	mov	qword ptr [r14 + 0x40], rdx
	mov	rax, rsi
	imul	rbp
	add	rdx, rsi
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x64
	sub	rsi, rax
	mov	qword ptr [r14 + 0x38], rsi
	mov	rsi, rbx
	movabs	rdx, 0x346dc5d63886594b
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0xb
	add	rdx, rax
	mov	qword ptr [r14 + 0x28], rdx
	mov	rdx, qword ptr [rsp + 0x88]
	add	rdi, -4
.label_375:
	mov	qword ptr [r14 + 0x30], rdi
	mov	rdi, qword ptr [rsp + 0x48]
	jmp	.label_157
.label_1564:
	mov	rax, qword ptr [r13 - 0x38]
.label_323:
	mov	qword ptr [rsp + 0x78], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_165
.label_1563:
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x80], rax
.label_270:
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	jmp	.label_151
.label_1538:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [r13 - 0x38]
	mov	dword ptr [r14 + 0x10], eax
	jmp	.label_157
.label_1537:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [r13]
	mov	dword ptr [r14 + 0x10], eax
	jmp	.label_157
.label_1546:
	mov	rax, qword ptr [r13 - 0xa8]
	jmp	.label_171
.label_1543:
	mov	rax, qword ptr [r13 - 0x68]
	mov	qword ptr [r14 + 0x40], rax
	mov	rax, qword ptr [r13 - 0x38]
	mov	qword ptr [r14 + 0x38], rax
	mov	rax, qword ptr [r13 + 8]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r8
	mov	qword ptr [r14 + 0x28], rcx
	mov	ebp, 1
	je	.label_148
.label_289:
	mov	rax, qword ptr [r13 + 0x10]
	mov	qword ptr [r14 + 0x30], rax
	jmp	.label_157
.label_1570:
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x70], rax
.label_343:
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x80], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x78], rax
	jmp	.label_192
.label_1571:
	mov	rbx, qword ptr [r13]
	test	rbx, rbx
	mov	qword ptr [rsp + 0x50], rbx
	jns	.label_199
	mov	qword ptr [rsp + 0x60], rsi
	lea	rcx, [r13 - 0x30]
	mov	rsi, qword ptr [r13 - 0x30]
	test	rsi, rsi
	js	.label_158
	cmp	rbx, -1
	mov	rbp, rbx
	jne	.label_208
	mov	rsi, qword ptr [rsp + 0x60]
	jmp	.label_216
.label_1559:
	mov	rbx, qword ptr [r13]
	test	rbx, rbx
	mov	qword ptr [rsp + 0x50], rbx
	js	.label_214
.label_199:
	lea	rcx, [r13 - 0x30]
.label_383:
	test	rbx, rbx
	je	.label_216
	mov	qword ptr [rsp + 0x60], rsi
	mov	qword ptr [rsp + 0x88], rdx
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	js	.label_220
	lea	rax, [r8 - 1]
	xor	edx, edx
	div	rbx
	mov	ebp, 1
	cmp	rax, rsi
	jmp	.label_226
.label_1566:
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x78], rax
.label_165:
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x80], rax
	jmp	.label_235
.label_361:
	test	al, al
	je	.label_259
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_245
	mov	rbp, rdx
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [r13 - 0xd8]
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	mov	rsi, rbx
	mov	rdx, rbp
	mov	rdi, qword ptr [rsp + 0x48]
	movabs	r11, 0xccccccccccccccc
	movabs	r10, 0xf333333333333334
	mov	r9d, 0xffffffff
	movabs	r8, 0x8000000000000000
.label_259:
	mov	rax, qword ptr [r13 - 0xd8]
.label_171:
	mov	qword ptr [r14 + 0x38], rax
	mov	rax, qword ptr [r13 - 0x68]
	mov	qword ptr [r14 + 0x40], rax
.label_244:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [r13]
	movdqu	xmmword ptr [rcx], xmm0
	jmp	.label_157
.label_366:
	inc	qword ptr [r14 + 0xc8]
	xor	eax, eax
	cmp	rdi, 3
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	jl	.label_191
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
.label_191:
	mov	qword ptr [r14 + 0x48], rcx
	mov	qword ptr [r14 + 0x50], rax
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rax], xmm0
	mov	dword ptr [r14 + 0x1c], 2
.label_369:
	mov	rax, qword ptr [r13 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 0x10]
	movups	xmm2, xmmword ptr [r13 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	ebp, 1
	mov	esi, 1
	mov	rdi, r14
	call	apply_relative_time
	test	al, al
	movabs	r8, 0x8000000000000000
	mov	r9d, 0xffffffff
	movabs	r10, 0xf333333333333334
	movabs	r11, 0xccccccccccccccc
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, rbx
	mov	rsi, qword ptr [rsp + 0x60]
	jne	.label_157
	jmp	.label_148
.label_359:
	inc	qword ptr [r14 + 0xc8]
	xor	eax, eax
	cmp	rdi, 3
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	jl	.label_344
	mov	rdi, rdx
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	mov	rbx, rsi
	imul	rsi, rdx, 0x64
	mov	rax, rcx
	sub	rax, rsi
	mov	rsi, rbx
	mov	rcx, rdx
	mov	rdx, rdi
.label_344:
	mov	rdi, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rcx
	mov	qword ptr [r14 + 0x50], rax
.label_201:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rax], xmm0
	mov	dword ptr [r14 + 0x1c], 2
	jmp	.label_157
.label_220:
	mov	rax, r8
	cqo	
	idiv	rbx
	mov	ebp, 1
	cmp	rsi, rax
.label_226:
	mov	rdx, qword ptr [rsp + 0x88]
	jmp	.label_168
.label_146:
	mov	qword ptr [rsp + 0x60], rsi
	lea	rcx, [r13 - 0x38]
	mov	rsi, qword ptr [r13 - 0x38]
	test	rsi, rsi
	js	.label_158
	cmp	rbx, -1
	mov	rbp, rbx
	jne	.label_208
	mov	rsi, qword ptr [rsp + 0x60]
	jmp	.label_216
.label_242:
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
	jmp	.label_379
.label_308:
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
	jmp	.label_139
.label_214:
	mov	qword ptr [rsp + 0x60], rsi
	lea	rcx, [r13 - 0x30]
	mov	rsi, qword ptr [r13 - 0x30]
	test	rsi, rsi
	js	.label_158
	cmp	rbx, -1
	mov	rbp, rbx
	je	.label_164
.label_208:
	mov	rax, r8
	mov	qword ptr [rsp + 0x88], rdx
	cqo	
	idiv	rbp
	mov	rdx, qword ptr [rsp + 0x88]
	mov	ebp, 1
	cmp	rax, rsi
	jmp	.label_168
.label_158:
	lea	rax, [r8 - 1]
	mov	rbp, rbx
	mov	qword ptr [rsp + 0x88], rdx
	cqo	
	idiv	rbp
	mov	rdx, qword ptr [rsp + 0x88]
	mov	ebp, 1
	cmp	rsi, rax
.label_168:
	mov	rsi, qword ptr [rsp + 0x60]
	jl	.label_148
.label_216:
	mov	rax, qword ptr [rsp + 0x50]
	imul	rax, qword ptr [rcx]
.label_354:
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
.label_338:
	xor	eax, eax
	mov	qword ptr [rsp + 0x80], rax
.label_151:
	xor	eax, eax
	mov	qword ptr [rsp + 0x78], rax
.label_235:
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
.label_192:
	mov	dword ptr [rsp + 0x44], 0
.label_157:
	sub	rdi, rsi
	neg	rsi
	imul	rax, rsi, 0x38
	lea	rcx, [r13 + rax + 0x38]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	qword ptr [r13 + rax + 0x38], rsi
	mov	rsi, qword ptr [rsp + 0x68]
	mov	qword ptr [r13 + rax + 0x40], rsi
	mov	rsi, qword ptr [rsp + 0x50]
	mov	qword ptr [r13 + rax + 0x48], rsi
	mov	rsi, qword ptr [rsp + 0x80]
	mov	qword ptr [r13 + rax + 0x50], rsi
	mov	rsi, qword ptr [rsp + 0x78]
	mov	qword ptr [r13 + rax + 0x58], rsi
	mov	rsi, qword ptr [rsp + 0x70]
	mov	qword ptr [r13 + rax + 0x60], rsi
	mov	esi, dword ptr [rsp + 0x44]
	mov	dword ptr [r13 + rax + 0x68], esi
	mov	esi, dword ptr [rsp + 0xd4]
	mov	dword ptr [r13 + rax + 0x6c], esi
	movzx	eax, byte ptr [rdx + yyr1]
	movsx	esi, byte ptr [rax + label_202]
	movsx	edx, word ptr [rsp + rdi*2 + 0xf0]
	add	esi, edx
	cmp	esi, 0x70
	ja	.label_203
	movsxd	rsi, esi
	mov	rbx, rdi
	movsx	edi, byte ptr [rsi + yycheck]
	cmp	edi, edx
	mov	rdi, rbx
	jne	.label_203
	movzx	eax, byte ptr [rsi + yytable]
	jmp	.label_238
	nop	word ptr cs:[rax + rax]
.label_203:
	movsx	eax, byte ptr [rax + label_241]
.label_238:
	mov	word ptr [rsp + rdi*2 + 0xf2], ax
	inc	rdi
	mov	ebp, 2
	cmp	rdi, 0x12
	mov	r13, rcx
	jle	.label_145
	jmp	.label_148
.label_257:
	movabs	rsi, 0xfdddddddddddddde
	cmp	rcx, rsi
	jge	.label_254
.label_351:
	mov	sil, 1
	jmp	.label_261
.label_254:
	xor	esi, esi
.label_261:
	imul	rcx, rcx, 0x3c
	test	dl, dl
	je	.label_263
	mov	rdx, rax
	xor	rdx, r8
	cmp	rcx, rdx
	setl	dl
	sub	rcx, rax
	jmp	.label_266
.label_263:
	lea	rdx, [r8 - 1]
	sub	rdx, rax
	cmp	rdx, rcx
	setl	dl
	add	rcx, rax
.label_266:
	or	dl, sil
	sete	al
	mov	rsi, rbx
.label_379:
	mov	ebp, 1
	test	al, al
	je	.label_148
	lea	rax, [rcx + 0x5a0]
	cmp	rax, 0xb40
	ja	.label_148
	mov	qword ptr [rsp + 0x60], rsi
	movabs	rsi, 0x3c00000000
	imul	eax, ecx, 0x3c
	mov	dword ptr [r14 + 0x18], eax
	mov	rdx, qword ptr [r13 - 0x70]
	test	rdx, rdx
	js	.label_286
	mov	rbx, rdi
	lea	rdi, [r8 - 1]
	sub	rdi, rdx
	imul	rcx, rsi
	sar	rcx, 0x20
	cmp	rdi, rcx
	mov	rdi, rbx
	jge	.label_293
	jmp	.label_301
.label_286:
	imul	rcx, rsi
	sar	rcx, 0x20
	mov	rsi, r8
	sub	rsi, rdx
	cmp	rcx, rsi
	jl	.label_301
.label_293:
	add	rcx, rdx
	sub	rcx, -0x80000000
	shr	rcx, 0x20
	jne	.label_301
	add	edx, eax
	mov	dword ptr [r14 + 0x18], edx
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsi, qword ptr [rsp + 0x60]
	jmp	.label_157
.label_320:
	movabs	rsi, 0xfdddddddddddddde
	cmp	rcx, rsi
	jge	.label_317
.label_326:
	mov	sil, 1
	jmp	.label_322
.label_317:
	xor	esi, esi
.label_322:
	imul	rcx, rcx, 0x3c
	test	dl, dl
	je	.label_324
	mov	rdx, rax
	xor	rdx, r8
	cmp	rcx, rdx
	setl	dl
	sub	rcx, rax
	jmp	.label_329
.label_324:
	lea	rdx, [r8 - 1]
	sub	rdx, rax
	cmp	rdx, rcx
	setl	dl
	add	rcx, rax
.label_329:
	or	dl, sil
	sete	al
	mov	rsi, rbp
.label_139:
	mov	ebp, 1
	test	al, al
	mov	rdx, rbx
	je	.label_148
	lea	rax, [rcx + 0x5a0]
	cmp	rax, 0xb40
	ja	.label_148
	imul	eax, ecx, 0x3c
	mov	dword ptr [r14 + 0x18], eax
	jmp	.label_157
.label_362:
	mov	rbx, rdx
	cmp	rdi, 2
	jg	.label_350
	mov	rax, qword ptr [r14 + 0xc8]
	test	rax, rax
	jne	.label_350
	mov	qword ptr [r14 + 0xc8], 1
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	xor	eax, eax
	jmp	.label_191
.label_370:
	cmp	rdi, 2
	jg	.label_360
	mov	rax, qword ptr [r14 + 0xc8]
	test	rax, rax
	jne	.label_360
	mov	qword ptr [r14 + 0xc8], 1
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	xor	eax, eax
	jmp	.label_344
.label_164:
	mov	rsi, qword ptr [rsp + 0x60]
	jmp	.label_216
.label_350:
	mov	byte ptr [r14 + 0xd8], 1
	movdqu	xmmword ptr [r14 + 0x20], xmm0
	mov	qword ptr [r14 + 0x30], rdi
	jmp	.label_369
.label_360:
	mov	byte ptr [r14 + 0xd8], 1
	movdqu	xmmword ptr [r14 + 0x20], xmm0
	jmp	.label_375
.label_371:
	test	cl, cl
	lea	rdx, [rsp + 0xa0]
	je	.label_138
.label_181:
	shr	esi, 8
	cmp	cl, 0x2e
	sete	dil
	lea	rcx, [rsp + 0xa1]
	cmove	rcx, rdx
	mov	byte ptr [rcx], sil
	test	sil, sil
	je	.label_180
	lea	rax, [rsp + 0xa2]
.label_132:
	lea	rbp, [rcx + 1]
	movzx	edx, byte ptr [rax]
	cmp	byte ptr [rax - 1], 0x2e
	mov	sil, 1
	je	.label_381
	mov	esi, edi
.label_381:
	cmovne	rcx, rbp
	mov	byte ptr [rcx], dl
	inc	rax
	test	dl, dl
	mov	edi, esi
	jne	.label_132
	jmp	.label_136
.label_180:
	mov	esi, edi
.label_136:
	test	sil, 1
	lea	rsi, [rsp + 0xa0]
	je	.label_138
	mov	rdi, r14
	call	lookup_zone
	test	rax, rax
	jne	.label_134
.label_138:
	mov	r12d, 0x3f
	cmp	byte ptr [r14 + 0xd9], 0
	je	.label_149
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	lea	rsi, [rsp + 0xa0]
	call	dbg_printf
	jmp	.label_149
	nop	word ptr cs:[rax + rax]
.label_145:
	cmp	eax, 0xc
	jne	.label_175
	xor	ebp, ebp
.label_148:
	mov	eax, ebp
	add	rsp, 0x588
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_301:
	add	edx, eax
	mov	dword ptr [r14 + 0x18], edx
	jmp	.label_148
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cb0

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
	jne	.label_396
.label_408:
	add	rsp, 0x70
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_396:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_407
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbx
	call	dbg_printf
	cmp	qword ptr [r15 + 0xa8], 0
	je	.label_399
	cmp	byte ptr [r15 + 0xda], 0
	jne	.label_385
	mov	rdi, qword ptr [rip + stderr]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	r8, qword ptr [r15 + 0x38]
	mov	r9, qword ptr [r15 + 0x40]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_388
	xor	eax, eax
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xda], 1
	mov	r12b, 1
	jmp	.label_399
.label_385:
	xor	r12d, r12d
.label_399:
	mov	rax, qword ptr [r15 + 0xd8]
	mov	rcx, rax
	shr	rcx, 0x38
	cmp	al, cl
	je	.label_402
	test	r12b, r12b
	je	.label_406
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0x20
	call	fputc
.label_406:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_392
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
.label_402:
	cmp	qword ptr [r15 + 0xc8], 0
	je	.label_395
	shr	rax, 0x28
	test	al, al
	jne	.label_395
	mov	r9, qword ptr [r15 + 0x58]
	mov	rdi, qword ptr [rip + stderr]
	xor	r12b, 1
	movzx	eax, r12b
	lea	rdx, qword ptr [rax + label_390]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	r8, qword ptr [r15 + 0x50]
	mov	esi, 1
	xor	eax, eax
	call	__fprintf_chk
	mov	rcx, qword ptr [r15 + 0x60]
	test	rcx, rcx
	je	.label_410
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_412
	xor	eax, eax
	call	__fprintf_chk
.label_410:
	cmp	dword ptr [r15 + 0x1c], 1
	jne	.label_411
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_391
	mov	esi, 2
	mov	edx, 1
	call	fwrite
.label_411:
	mov	byte ptr [r15 + 0xdd], 1
	mov	r12b, 1
.label_395:
	cmp	qword ptr [r15 + 0xb0], 0
	je	.label_401
	cmp	byte ptr [r15 + 0xdb], 0
	jne	.label_401
	test	r12b, r12b
	je	.label_405
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0x20
	call	fputc
.label_405:
	mov	r14, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_409
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
.label_401:
	cmp	qword ptr [r15 + 0xb8], 0
	je	.label_400
	cmp	byte ptr [r15 + 0xdc], 0
	jne	.label_400
	mov	rdi, qword ptr [rip + stderr]
	xor	r12b, 1
	movzx	eax, r12b
	lea	rdx, qword ptr [rax + label_403]
	cmp	qword ptr [r15 + 0xc0], 0
	mov	ecx, dword ptr [r15 + 0x14]
	mov	eax, OFFSET FLAT:label_404
	mov	r8d, OFFSET FLAT:label_31
	cmovne	r8, rax
	mov	esi, 1
	xor	eax, eax
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xdc], 1
	mov	r12b, 1
.label_400:
	cmp	qword ptr [r15 + 0xd0], 0
	je	.label_389
	cmp	byte ptr [r15 + 0xde], 0
	jne	.label_389
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
	mov	ecx, OFFSET FLAT:label_397
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
	lea	rdx, qword ptr [rdx + label_386]
	je	.label_387
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
	jne	.label_398
	add	rax, 3
	jmp	.label_393
.label_398:
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
.label_393:
	mov	byte ptr [rax], 0
.label_387:
	lea	rcx, [rsp]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xde], 1
	mov	r12b, 1
.label_389:
	cmp	byte ptr [r15 + 0xa0], 0
	je	.label_413
	mov	r14, qword ptr [r15 + 0x58]
	test	r12b, r12b
	je	.label_384
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0x20
	call	fputc
.label_384:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_394
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, rcx
	mov	rcx, r14
	call	__fprintf_chk
.label_413:
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	call	fputc
	jmp	.label_408
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050f0

	.globl debug_print_relative_time
	.type debug_print_relative_time, @function
debug_print_relative_time:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [r14 + 0xd9], 0
	je	.label_431
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_407
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbx
	call	dbg_printf
	mov	rcx, qword ptr [r14 + 0x68]
	test	rcx, rcx
	je	.label_427
	mov	rdi, qword ptr [rip + stderr]
	xor	ebx, ebx
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_429
	mov	r8d, OFFSET FLAT:label_430
	xor	eax, eax
	call	__fprintf_chk
	mov	rcx, qword ptr [r14 + 0x70]
	mov	al, 1
	test	rcx, rcx
	jne	.label_420
	jmp	.label_419
.label_431:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_427:
	mov	rcx, qword ptr [r14 + 0x70]
	mov	ebx, 1
	test	rcx, rcx
	je	.label_426
.label_420:
	mov	rdi, qword ptr [rip + stderr]
	lea	rdx, qword ptr [rbx + label_417]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_434
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_419:
	mov	rcx, qword ptr [r14 + 0x78]
	test	rcx, rcx
	je	.label_424
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_417]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_425
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_424:
	mov	rcx, qword ptr [r14 + 0x80]
	test	rcx, rcx
	je	.label_416
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_417]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_418
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_416:
	mov	rcx, qword ptr [r14 + 0x88]
	test	rcx, rcx
	je	.label_438
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_417]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_437
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_438:
	mov	rcx, qword ptr [r14 + 0x90]
	test	rcx, rcx
	je	.label_421
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_417]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_436
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_421:
	movsxd	rcx, dword ptr [r14 + 0x98]
	test	rcx, rcx
	je	.label_428
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_417]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_435
	xor	eax, eax
	call	__fprintf_chk
.label_428:
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	fputc
.label_426:
	cmp	qword ptr [r14 + 0x78], 0
	je	.label_432
	xor	eax, eax
	jmp	.label_419
.label_432:
	cmp	qword ptr [r14 + 0x80], 0
	je	.label_414
	xor	eax, eax
	jmp	.label_419
.label_414:
	cmp	qword ptr [r14 + 0x88], 0
	je	.label_422
	xor	eax, eax
	jmp	.label_419
.label_422:
	cmp	qword ptr [r14 + 0x90], 0
	je	.label_423
	xor	eax, eax
	jmp	.label_419
.label_423:
	cmp	dword ptr [r14 + 0x98], 0
	je	.label_433
	xor	eax, eax
	jmp	.label_419
.label_433:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_415
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
	#Procedure 0x405330

	.globl apply_relative_time
	.type apply_relative_time, @function
apply_relative_time:
	lea	r8, [rsp + 8]
	movabs	r10, 0x7fffffffffffffff
	mov	edx, dword ptr [rsp + 0x38]
	test	esi, esi
	js	.label_450
	test	edx, edx
	js	.label_480
	mov	esi, 0x7fffffff
	sub	esi, edx
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	cmp	esi, eax
	jl	.label_456
	jmp	.label_464
.label_450:
	test	edx, edx
	js	.label_465
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	mov	esi, edx
	xor	esi, 0x80000000
	cmp	eax, esi
	jl	.label_467
	jmp	.label_474
.label_480:
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	mov	esi, 0x80000000
	sub	esi, edx
	cmp	eax, esi
	jge	.label_464
.label_456:
	add	edx, eax
	mov	dword ptr [rcx], edx
	mov	r9d, 1
	jmp	.label_479
.label_464:
	add	edx, eax
	mov	dword ptr [rcx], edx
	xor	r9d, r9d
.label_479:
	mov	rdx, qword ptr [r8 + 0x28]
	test	rdx, rdx
	js	.label_484
	mov	rsi, r10
	sub	rsi, rdx
	lea	rcx, [rdi + 0x90]
	mov	rax, qword ptr [rdi + 0x90]
	cmp	rsi, rax
	jl	.label_475
	jmp	.label_491
.label_484:
	lea	rcx, [rdi + 0x90]
	mov	rax, qword ptr [rdi + 0x90]
	lea	rsi, [r10 + 1]
	sub	rsi, rdx
	cmp	rax, rsi
	jge	.label_491
.label_475:
	add	rdx, rax
	mov	qword ptr [rcx], rdx
	mov	r11d, 1
	jmp	.label_482
.label_491:
	add	rdx, rax
	mov	qword ptr [rcx], rdx
	xor	r11d, r11d
.label_482:
	or	r11d, r9d
	mov	rsi, qword ptr [r8 + 0x20]
	test	rsi, rsi
	js	.label_440
	mov	rcx, r10
	sub	rcx, rsi
	lea	r9, [rdi + 0x88]
	mov	rax, qword ptr [rdi + 0x88]
	cmp	rcx, rax
	jl	.label_443
	jmp	.label_451
.label_440:
	lea	r9, [rdi + 0x88]
	mov	rax, qword ptr [rdi + 0x88]
	lea	rcx, [r10 + 1]
	sub	rcx, rsi
	cmp	rax, rcx
	jge	.label_451
.label_443:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	mov	eax, 1
	jmp	.label_458
.label_451:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	xor	eax, eax
.label_458:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 0x18]
	test	rsi, rsi
	js	.label_462
	mov	rdx, r10
	sub	rdx, rsi
	mov	rcx, rdi
	sub	rcx, -0x80
	mov	rax, qword ptr [rdi + 0x80]
	cmp	rdx, rax
	jl	.label_471
	jmp	.label_453
.label_462:
	mov	rcx, rdi
	sub	rcx, -0x80
	mov	rax, qword ptr [rdi + 0x80]
	lea	rdx, [r10 + 1]
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_453
.label_471:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	mov	eax, 1
	jmp	.label_478
.label_453:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	xor	eax, eax
.label_478:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 0x10]
	test	rsi, rsi
	js	.label_485
	mov	rdx, r10
	sub	rdx, rsi
	lea	rcx, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	cmp	rdx, rax
	jl	.label_487
	jmp	.label_448
.label_485:
	lea	rcx, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	lea	rdx, [r10 + 1]
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_448
.label_487:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	mov	eax, 1
	jmp	.label_494
.label_448:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	xor	eax, eax
.label_494:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 8]
	test	rsi, rsi
	js	.label_445
	mov	rdx, r10
	sub	rdx, rsi
	lea	rcx, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	cmp	rdx, rax
	jl	.label_441
	jmp	.label_446
.label_445:
	lea	rcx, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	lea	rdx, [r10 + 1]
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_446
.label_441:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	mov	eax, 1
	jmp	.label_452
.label_446:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	xor	eax, eax
.label_452:
	or	r11d, eax
	mov	rcx, qword ptr [r8]
	test	rcx, rcx
	js	.label_457
	sub	r10, rcx
	lea	rsi, [rdi + 0x68]
	mov	rax, qword ptr [rdi + 0x68]
	cmp	r10, rax
	jl	.label_460
	jmp	.label_466
.label_457:
	lea	rsi, [rdi + 0x68]
	mov	rax, qword ptr [rdi + 0x68]
	inc	r10
	sub	r10, rcx
	cmp	rax, r10
	jge	.label_466
.label_460:
	add	rcx, rax
	mov	qword ptr [rsi], rcx
	mov	eax, 1
	jmp	.label_472
.label_466:
	add	rcx, rax
	mov	qword ptr [rsi], rcx
	xor	eax, eax
.label_472:
	or	r11d, eax
	je	.label_476
	xor	eax, eax
	ret	
.label_465:
	lea	esi, [rdx + 0x7fffffff]
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	cmp	esi, eax
	jge	.label_474
.label_467:
	sub	eax, edx
	mov	dword ptr [rcx], eax
	mov	r9d, 1
	jmp	.label_483
.label_474:
	sub	eax, edx
	mov	dword ptr [rcx], eax
	xor	r9d, r9d
.label_483:
	mov	rdx, qword ptr [r8 + 0x28]
	test	rdx, rdx
	js	.label_488
	lea	rcx, [rdi + 0x90]
	mov	rsi, qword ptr [rdi + 0x90]
	lea	rax, [r10 + 1]
	xor	rax, rdx
	cmp	rsi, rax
	jl	.label_490
	jmp	.label_493
.label_488:
	lea	rax, [rdx + r10]
	lea	rcx, [rdi + 0x90]
	mov	rsi, qword ptr [rdi + 0x90]
	cmp	rax, rsi
	jge	.label_493
.label_490:
	sub	rsi, rdx
	mov	qword ptr [rcx], rsi
	mov	r11d, 1
	jmp	.label_447
.label_493:
	sub	rsi, rdx
	mov	qword ptr [rcx], rsi
	xor	r11d, r11d
.label_447:
	or	r11d, r9d
	mov	rsi, qword ptr [r8 + 0x20]
	test	rsi, rsi
	js	.label_444
	lea	r9, [rdi + 0x88]
	mov	rcx, qword ptr [rdi + 0x88]
	lea	rax, [r10 + 1]
	xor	rax, rsi
	cmp	rcx, rax
	jl	.label_495
	jmp	.label_455
.label_444:
	lea	rax, [rsi + r10]
	lea	r9, [rdi + 0x88]
	mov	rcx, qword ptr [rdi + 0x88]
	cmp	rax, rcx
	jge	.label_455
.label_495:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	mov	eax, 1
	jmp	.label_461
.label_455:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	xor	eax, eax
.label_461:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 0x18]
	test	rsi, rsi
	js	.label_468
	mov	rcx, rdi
	sub	rcx, -0x80
	mov	rax, qword ptr [rdi + 0x80]
	lea	rdx, [r10 + 1]
	xor	rdx, rsi
	cmp	rax, rdx
	jl	.label_470
	jmp	.label_477
.label_468:
	lea	r9, [rsi + r10]
	mov	rcx, rdi
	sub	rcx, -0x80
	mov	rax, qword ptr [rdi + 0x80]
	cmp	r9, rax
	jge	.label_477
.label_470:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	mov	eax, 1
	jmp	.label_481
.label_477:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	xor	eax, eax
.label_481:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 0x10]
	test	rsi, rsi
	js	.label_486
	lea	rcx, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	lea	rdx, [r10 + 1]
	xor	rdx, rsi
	cmp	rax, rdx
	jl	.label_489
	jmp	.label_492
.label_486:
	lea	rdx, [rsi + r10]
	lea	rcx, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	cmp	rdx, rax
	jge	.label_492
.label_489:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	mov	eax, 1
	jmp	.label_496
.label_492:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	xor	eax, eax
.label_496:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 8]
	test	rsi, rsi
	js	.label_439
	lea	rcx, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	lea	rdx, [r10 + 1]
	xor	rdx, rsi
	cmp	rax, rdx
	jl	.label_442
	jmp	.label_449
.label_439:
	lea	rdx, [rsi + r10]
	lea	rcx, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	cmp	rdx, rax
	jge	.label_449
.label_442:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	mov	eax, 1
	jmp	.label_454
.label_449:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	xor	eax, eax
.label_454:
	or	r11d, eax
	mov	rcx, qword ptr [r8]
	test	rcx, rcx
	js	.label_459
	lea	r8, [rdi + 0x68]
	mov	rsi, qword ptr [rdi + 0x68]
	inc	r10
	xor	r10, rcx
	cmp	rsi, r10
	jl	.label_463
	jmp	.label_469
.label_459:
	add	r10, rcx
	lea	r8, [rdi + 0x68]
	mov	rsi, qword ptr [rdi + 0x68]
	cmp	r10, rsi
	jge	.label_469
.label_463:
	sub	rsi, rcx
	mov	qword ptr [r8], rsi
	mov	eax, 1
	jmp	.label_473
.label_469:
	sub	rsi, rcx
	mov	qword ptr [r8], rsi
	xor	eax, eax
.label_473:
	or	r11d, eax
	je	.label_476
	xor	eax, eax
	ret	
.label_476:
	mov	byte ptr [rdi + 0xa1], 1
	mov	al, 1
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4057b0

	.globl dbg_printf
	.type dbg_printf, @function
dbg_printf:
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, rdi
	test	al, al
	je	.label_497
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_497:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	qword ptr [rsp + 0x28], rsi
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_498
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
	#Procedure 0x405880

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
	mov	edi, OFFSET FLAT:label_499
	call	getenv
	mov	r13, rax
	mov	rdi, r13
	call	tzalloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_501
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
	jmp	.label_500
.label_501:
	xor	ebp, ebp
.label_500:
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
	#Procedure 0x4058f0

	.globl parse_datetime2
	.type parse_datetime2, @function
parse_datetime2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x3e8
	mov	qword ptr [rsp + 0x58], r9
	mov	r13, r8
	mov	r14d, ecx
	mov	r15, rdx
	mov	r12, rsi
	mov	qword ptr [rsp + 0x60], rdi
	mov	rdi, r12
	call	strlen
	mov	qword ptr [rsp + 0x78], rax
	test	r15, r15
	jne	.label_531
	lea	r15, [rsp + 0x370]
	mov	rdi, r15
	call	gettime
.label_531:
	mov	rax, qword ptr [r15]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rsp + 0x50], rax
	movzx	eax, byte ptr [r12]
	add	eax, -9
	cmp	eax, 0x17
	mov	rbp, r12
	ja	.label_573
	mov	ecx, 0x80001f
	mov	rbp, r12
	nop	word ptr cs:[rax + rax]
.label_586:
	bt	ecx, eax
	jae	.label_573
	movzx	eax, byte ptr [rbp + 1]
	inc	rbp
	add	eax, -9
	cmp	eax, 0x18
	jb	.label_586
.label_573:
	mov	esi, OFFSET FLAT:label_588
	mov	edx, 4
	mov	rdi, rbp
	call	strncmp
	test	eax, eax
	jne	.label_540
	lea	rbx, [rbp + 4]
	mov	edi, 1
	mov	rax, rbx
	jmp	.label_594
	nop	dword ptr [rax + rax]
.label_655:
	inc	rax
	inc	rdi
.label_594:
	movzx	ecx, byte ptr [rax]
	cmp	cl, 0x5c
	je	.label_600
	test	cl, cl
	je	.label_540
	cmp	cl, 0x22
	jne	.label_655
	jmp	.label_607
	nop	dword ptr [rax]
.label_600:
	movzx	ecx, byte ptr [rax + 1]
	inc	rax
	cmp	cl, 0x22
	je	.label_655
	cmp	cl, 0x5c
	je	.label_655
.label_540:
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
	mov	rbx, r13
.label_714:
	lea	rdx, [rsp + 0x300]
	mov	rdi, rbx
	mov	rsi, r15
	call	localtime_rz
	test	rax, rax
	je	.label_620
	movabs	r15, 0x7fffffffffffffff
	cmp	byte ptr [rbp], 0
	mov	eax, OFFSET FLAT:label_622
	cmovne	rax, rbp
	mov	qword ptr [rsp + 0x80], rax
	and	r14b, 1
	mov	byte ptr [rsp + 0x159], r14b
	movsxd	rax, dword ptr [rsp + 0x314]
	add	rax, 0x76c
	mov	qword ptr [rsp + 0xa8], rax
	mov	qword ptr [rsp + 0xb0], 0
	movsxd	rax, dword ptr [rsp + 0x310]
	inc	rax
	mov	qword ptr [rsp + 0xb8], rax
	movsxd	rax, dword ptr [rsp + 0x30c]
	mov	qword ptr [rsp + 0xc0], rax
	movsxd	rax, dword ptr [rsp + 0x308]
	mov	qword ptr [rsp + 0xc8], rax
	movsxd	rax, dword ptr [rsp + 0x304]
	mov	qword ptr [rsp + 0xd0], rax
	movsxd	rax, dword ptr [rsp + 0x300]
	mov	qword ptr [rsp + 0xd8], rax
	mov	rax, qword ptr [rsp + 0x50]
	cdqe	
	mov	qword ptr [rsp + 0xe0], rax
	mov	eax, dword ptr [rsp + 0x320]
	mov	dword ptr [rsp + 0x38], eax
	mov	dword ptr [rsp + 0x9c], 2
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x112], xmm0
	movups	xmmword ptr [rsp + 0x108], xmm0
	movups	xmmword ptr [rsp + 0xf8], xmm0
	movups	xmmword ptr [rsp + 0xe8], xmm0
	movups	xmmword ptr [rsp + 0x148], xmm0
	movups	xmmword ptr [rsp + 0x138], xmm0
	movups	xmmword ptr [rsp + 0x128], xmm0
	mov	byte ptr [rsp + 0x158], 0
	mov	byte ptr [rsp + 0x160], 0
	mov	word ptr [rsp + 0x15e], 0
	mov	dword ptr [rsp + 0x15a], 0
	mov	rcx, qword ptr [rsp + 0x330]
	mov	qword ptr [rsp + 0x168], rcx
	mov	dword ptr [rsp + 0x170], 0x10d
	mov	dword ptr [rsp + 0x174], eax
	mov	qword ptr [rsp + 0x178], 0
	lea	rax, [r15 - 0x76a700]
	mov	rbp, qword ptr [rsp + 0x10]
	cmp	rbp, rax
	jg	.label_510
	lea	rax, [rbp + 0x76a700]
	mov	qword ptr [rsp + 0x290], rax
	lea	rsi, [rsp + 0x290]
	lea	rdx, [rsp + 0x1d0]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_649
	mov	rax, qword ptr [rsp + 0x200]
	test	rax, rax
	je	.label_649
	mov	ecx, dword ptr [rsp + 0x1f0]
	cmp	ecx, dword ptr [rsp + 0x174]
	jne	.label_503
.label_649:
	lea	rax, [r15 - 0xed4e00]
	cmp	rbp, rax
	jg	.label_510
	lea	rax, [rbp + 0xed4e00]
	mov	qword ptr [rsp + 0x290], rax
	lea	rsi, [rsp + 0x290]
	lea	rdx, [rsp + 0x1d0]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_734
	mov	rax, qword ptr [rsp + 0x200]
	test	rax, rax
	je	.label_734
	mov	ecx, dword ptr [rsp + 0x1f0]
	cmp	ecx, dword ptr [rsp + 0x174]
	jne	.label_503
.label_734:
	lea	rax, [r15 - 0x163f500]
	cmp	rbp, rax
	jg	.label_510
	add	rbp, 0x163f500
	mov	qword ptr [rsp + 0x290], rbp
	lea	rsi, [rsp + 0x290]
	lea	rdx, [rsp + 0x1d0]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_510
	mov	rax, qword ptr [rsp + 0x200]
	test	rax, rax
	je	.label_510
	mov	ecx, dword ptr [rsp + 0x1f0]
	cmp	ecx, dword ptr [rsp + 0x174]
	je	.label_510
.label_503:
	mov	qword ptr [rsp + 0x178], rax
	mov	dword ptr [rsp + 0x180], 0x10d
	mov	dword ptr [rsp + 0x184], ecx
	mov	qword ptr [rsp + 0x188], 0
.label_510:
	mov	rdi, qword ptr [rsp + 0x168]
	test	rdi, rdi
	je	.label_538
	mov	rsi, qword ptr [rsp + 0x178]
	test	rsi, rsi
	je	.label_538
	call	strcmp
	test	eax, eax
	jne	.label_538
	mov	dword ptr [rsp + 0x174], 0xffffffff
	mov	qword ptr [rsp + 0x178], 0
.label_538:
	lea	rdi, [rsp + 0x80]
	call	yyparse
	test	eax, eax
	mov	al, byte ptr [rsp + 0x159]
	je	.label_555
	test	al, al
	je	.label_557
	add	r12, qword ptr [rsp + 0x78]
	cmp	r12, qword ptr [rsp + 0x80]
	jbe	.label_560
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_562
	jmp	.label_563
.label_620:
	xor	ebp, ebp
	jmp	.label_542
.label_555:
	test	al, al
	mov	r12, qword ptr [rsp + 0x60]
	jne	.label_564
.label_692:
	cmp	byte ptr [rsp + 0x120], 0
	je	.label_568
	lea	rax, [rsp + 0xd8]
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r12], xmm0
.label_726:
	mov	rdi, qword ptr [rsp + 0x58]
	mov	bpl, 1
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_542
	test	rdi, rdi
	je	.label_576
	mov	esi, OFFSET FLAT:label_580
	mov	r14, rdi
	call	strcmp
	mov	r15, rbx
	xor	edi, edi
	test	eax, eax
	je	.label_582
	mov	esi, OFFSET FLAT:label_585
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, r14
	call	dbg_printf
	jmp	.label_591
.label_557:
	xor	ebp, ebp
	jmp	.label_542
.label_607:
	xor	eax, eax
	cmp	rdi, 0x65
	jl	.label_595
	call	malloc
	mov	rsi, rax
	xor	ebp, ebp
	test	rsi, rsi
	mov	edi, 0
	jne	.label_597
	jmp	.label_603
.label_560:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_604
.label_563:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [rsp + 0x80]
	xor	ebp, ebp
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_542:
	cmp	rbx, r13
	je	.label_509
	mov	rdi, rbx
	call	tzfree
.label_509:
	mov	rdi, qword ptr [rsp + 0x70]
.label_603:
	call	free
	mov	eax, ebp
	add	rsp, 0x3e8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_568:
	mov	rax, qword ptr [rsp + 0x128]
	mov	rcx, qword ptr [rsp + 0x148]
	mov	rdx, rax
	or	rdx, rcx
	or	rdx, qword ptr [rsp + 0x130]
	or	rdx, qword ptr [rsp + 0x140]
	mov	rsi, qword ptr [rsp + 0x150]
	add	rsi, qword ptr [rsp + 0x138]
	or	rsi, rdx
	mov	r14b, byte ptr [rsp + 0x159]
	cmp	rsi, 2
	jl	.label_624
	test	r14b, r14b
	je	.label_637
	cmp	rcx, 2
	jl	.label_643
	mov	edi, OFFSET FLAT:label_647
	xor	eax, eax
	call	dbg_printf
	mov	rax, qword ptr [rsp + 0x128]
.label_643:
	cmp	rax, 2
	jl	.label_653
	mov	edi, OFFSET FLAT:label_654
	xor	eax, eax
	call	dbg_printf
.label_653:
	cmp	qword ptr [rsp + 0x130], 2
	jl	.label_657
	mov	edi, OFFSET FLAT:label_659
	xor	eax, eax
	call	dbg_printf
.label_657:
	cmp	qword ptr [rsp + 0x140], 2
	jl	.label_665
	mov	edi, OFFSET FLAT:label_668
	xor	eax, eax
	call	dbg_printf
.label_665:
	mov	rax, qword ptr [rsp + 0x150]
	add	rax, qword ptr [rsp + 0x138]
	xor	ebp, ebp
	cmp	rax, 2
	jl	.label_542
	mov	edi, OFFSET FLAT:label_674
	xor	eax, eax
	call	dbg_printf
	jmp	.label_542
.label_595:
	lea	rsi, [rsp + 0x380]
.label_597:
	mov	qword ptr [rsp + 0x70], rax
	mov	qword ptr [rsp + 0x68], r13
	mov	cl, byte ptr [rbx]
	mov	rax, rsi
	cmp	cl, 0x22
	jne	.label_610
	mov	r13, rbx
	jmp	.label_683
	nop	word ptr cs:[rax + rax]
.label_610:
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
	jne	.label_610
.label_683:
	mov	byte ptr [rax], 0
	mov	qword ptr [rsp + 0x58], rsi
	mov	rdi, rsi
	call	tzalloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_697
	inc	r13
	mov	eax, 0x80001f
	nop	word ptr [rax + rax]
.label_710:
	mov	rbp, r13
	movzx	ecx, byte ptr [rbp]
	add	ecx, -9
	cmp	ecx, 0x17
	ja	.label_706
	lea	r13, [rbp + 1]
	bt	eax, ecx
	jb	.label_710
.label_706:
	mov	r13, qword ptr [rsp + 0x68]
	jmp	.label_714
.label_624:
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbx, qword ptr [rsp + 0xa8]
	test	rbx, rbx
	js	.label_716
	cmp	qword ptr [rsp + 0xb0], 2
	jne	.label_614
	cmp	rbx, 0x45
	mov	eax, 0x7d0
	mov	ebp, 0x76c
	cmovl	rbp, rax
	add	rbp, rbx
	test	r14b, r14b
	je	.label_528
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_728
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbx
	mov	rdx, rbp
	call	dbg_printf
.label_528:
	test	rbp, rbp
	jns	.label_724
	jmp	.label_738
.label_697:
	xor	ebp, ebp
	jmp	.label_509
.label_576:
	mov	r15, rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_504
	jmp	.label_505
.label_582:
	mov	esi, OFFSET FLAT:label_511
.label_505:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_591:
	mov	r14, qword ptr [r12]
	mov	ebx, dword ptr [r12 + 8]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_569
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, r14
	mov	edx, ebx
	call	dbg_printf
	lea	rsi, [rsp + 0x1d0]
	mov	rdi, r12
	call	gmtime_r
	test	rax, rax
	je	.label_530
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_535
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	r14, [rsp + 0x290]
	lea	rcx, [rsp + 0x1d0]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_536
	xor	r8d, r8d
	xor	r9d, r9d
	mov	rdi, r14
	call	nstrftime
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, r14
	call	dbg_printf
.label_530:
	lea	rdx, [rsp + 0x338]
	mov	rbx, r15
	mov	rdi, rbx
	mov	rsi, r12
	call	localtime_rz
	test	rax, rax
	je	.label_542
	mov	r12, rbx
	movsxd	r15, dword ptr [rsp + 0x360]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_556
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	lea	rdi, [rsp + 0x290]
	lea	rcx, [rsp + 0x338]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_536
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
	lea	rdi, [rsp + 0x270]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_397
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebx, 0xe10
	mov	esi, r15d
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	r15d, edx
	je	.label_545
	cdqe	
	lea	rax, [rsp + rax + 0x270]
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
	je	.label_590
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
	jmp	.label_736
.label_637:
	xor	ebp, ebp
	jmp	.label_542
.label_716:
	mov	rbp, rbx
.label_738:
	lea	rdx, [rbp + r15]
	mov	ecx, 0x7ffff894
	mov	eax, 0xfffff894
	sub	eax, ebp
	cmp	rdx, -0x76c
	mov	rbx, qword ptr [rsp + 0x10]
	jl	.label_630
	sub	rcx, rbp
	shr	rcx, 0x20
	je	.label_641
	jmp	.label_630
.label_564:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_648
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	cmp	byte ptr [rsp + 0x120], 0
	jne	.label_656
	cmp	qword ptr [rsp + 0x150], 0
	jne	.label_660
	mov	rax, qword ptr [rsp + 0x58]
	test	rax, rax
	jne	.label_666
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_669
	jmp	.label_617
.label_614:
	mov	rbp, rbx
.label_724:
	lea	rcx, [rbp + 0x7ffff894]
	lea	eax, [rbp - 0x76c]
	shr	rcx, 0x20
	mov	rbx, qword ptr [rsp + 0x10]
	je	.label_641
.label_630:
	mov	dword ptr [rsp + 0x2c], eax
	test	r14b, r14b
	je	.label_677
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_678
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbp
	call	dbg_printf
	jmp	.label_677
.label_641:
	mov	dword ptr [rsp + 0x2c], eax
	mov	rax, qword ptr [rsp + 0xb8]
	lea	ecx, [rax - 1]
	cmp	rax, -0x7fffffff
	mov	dword ptr [rsp + 0x28], ecx
	jl	.label_677
	dec	rax
	cmp	rax, 0x7fffffff
	jg	.label_677
	mov	r12d, 0x80000000
	mov	rax, qword ptr [rsp + 0xc0]
	mov	dword ptr [rsp + 0x24], eax
	sub	rax, -0x80000000
	shr	rax, 0x20
	je	.label_694
.label_677:
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_518
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_703
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	jmp	.label_542
.label_518:
	xor	ebp, ebp
	jmp	.label_542
.label_590:
	add	rax, 3
.label_736:
	mov	byte ptr [rax], 0
.label_545:
	lea	rsi, [rsp + 0x290]
	lea	rdx, [rsp + 0x270]
	xor	eax, eax
	mov	rdi, r14
	call	dbg_printf
	mov	rbx, r12
	jmp	.label_542
.label_656:
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_723
	jmp	.label_617
.label_694:
	mov	rax, qword ptr [rsp + 0x148]
	test	rax, rax
	jne	.label_679
	cmp	byte ptr [rsp + 0x121], 0
	je	.label_731
	mov	rcx, qword ptr [rsp + 0x130]
	or	rcx, qword ptr [rsp + 0x128]
	jne	.label_731
.label_679:
	mov	rdx, qword ptr [rsp + 0xc8]
	mov	ecx, dword ptr [rsp + 0x9c]
	test	ecx, ecx
	je	.label_513
	cmp	ecx, 1
	jne	.label_512
	lea	rdi, [rdx - 1]
	lea	rbp, [rdx + 0xc]
	cmp	rdx, 0xc
	mov	rsi, -1
	cmove	rsi, rdx
	cmp	rdi, 0xb
	cmovb	rsi, rbp
	jmp	.label_709
.label_660:
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_521
.label_617:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, rcx
	call	__fprintf_chk
.label_685:
	mov	rax, qword ptr [rsp + 0x150]
	cmp	qword ptr [rsp + 0x138], 0
	je	.label_532
	test	rax, rax
	mov	rbx, rbp
	jne	.label_537
	cmp	dword ptr [rsp + 0x94], 0
	jle	.label_539
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_543
	xor	eax, eax
	call	__fprintf_chk
	mov	rax, qword ptr [rsp + 0x150]
	jmp	.label_537
.label_532:
	mov	rbx, rbp
.label_537:
	test	rax, rax
	je	.label_539
	mov	r12, rbx
	mov	r14, qword ptr [rip + stderr]
	movsxd	rbx, dword ptr [rsp + 0x98]
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
	lea	rdi, [rsp + 0x270]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_397
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	je	.label_572
	cdqe	
	lea	rax, [rsp + rax + 0x270]
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
	jne	.label_575
	add	rax, 3
	jmp	.label_601
.label_666:
	mov	rbp, rbx
	cmp	rbx, r13
	jne	.label_606
	mov	esi, OFFSET FLAT:label_580
	mov	rdi, rax
	mov	r14, rax
	call	strcmp
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	test	eax, eax
	jne	.label_613
	mov	esi, OFFSET FLAT:label_616
	jmp	.label_617
.label_513:
	lea	rdi, [rdx - 1]
	xor	ebp, ebp
	cmp	rdx, 0xc
	mov	rsi, -1
	cmove	rsi, rbp
	cmp	rdi, 0xb
	jmp	.label_619
.label_512:
	cmp	rdx, 0x18
	mov	rsi, -1
.label_619:
	cmovb	rsi, rdx
.label_709:
	mov	dword ptr [rsp + 0x20], esi
	test	esi, esi
	js	.label_626
	mov	ecx, dword ptr [rsp + 0xd0]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	ecx, dword ptr [rsp + 0xd8]
	mov	dword ptr [rsp + 0x18], ecx
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_628
	mov	r12, r13
	xor	edi, edi
	test	rax, rax
	je	.label_634
	mov	esi, OFFSET FLAT:label_638
	jmp	.label_639
.label_626:
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_644
	cmp	ecx, 1
	mov	eax, OFFSET FLAT:label_391
	mov	edx, OFFSET FLAT:label_31
	cmove	rdx, rax
	test	ecx, ecx
	mov	ebx, OFFSET FLAT:label_650
	cmovne	rbx, rdx
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_651
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [rsp + 0xc8]
	xor	eax, eax
	mov	rdi, rcx
	mov	rdx, rbx
	mov	rbx, qword ptr [rsp + 0x10]
	call	dbg_printf
	jmp	.label_542
.label_575:
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
.label_601:
	mov	byte ptr [rax], 0
.label_572:
	lea	rcx, [rsp + 0x270]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_681
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x60]
.label_539:
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	call	fputc
	jmp	.label_692
.label_731:
	mov	dword ptr [rsp + 0x18], 0
	mov	dword ptr [rsp + 0x1c], 0
	mov	dword ptr [rsp + 0x20], 0
	mov	qword ptr [rsp + 0xe0], 0
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_628
	mov	edi, OFFSET FLAT:label_705
	xor	eax, eax
	call	dbg_printf
	jmp	.label_628
.label_606:
	mov	r14, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_561
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
	jmp	.label_685
.label_634:
	mov	esi, OFFSET FLAT:label_722
.label_639:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	r9d, dword ptr [rsp + 0x20]
	mov	ebx, dword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp + 0x1c]
	lea	r13, [rsp + 0x290]
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:label_727
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
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r12d, 0x80000000
.label_628:
	mov	rax, qword ptr [rsp + 0x130]
	or	rax, qword ptr [rsp + 0x128]
	or	rax, qword ptr [rsp + 0x148]
	je	.label_687
	mov	dword ptr [rsp + 0x38], 0xffffffff
.label_687:
	cmp	qword ptr [rsp + 0x138], 0
	je	.label_519
	mov	eax, dword ptr [rsp + 0x94]
	mov	dword ptr [rsp + 0x38], eax
	jmp	.label_523
.label_519:
	mov	eax, dword ptr [rsp + 0x38]
.label_523:
	mov	rcx, qword ptr [rsp + 0x18]
	mov	dword ptr [rsp + 0x198], ecx
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x19c], ecx
	mov	rcx, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1a0], ecx
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x1a4], ecx
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rsp + 0x1a8], ecx
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x1ac], ecx
	mov	dword ptr [rsp + 0x1b8], eax
	mov	dword ptr [rsp + 0x30], 0xffffffff
	lea	rsi, [rsp + 0x18]
	mov	rdi, rbx
	call	mktime_z
	mov	rbp, rax
	cmp	dword ptr [rsp + 0x30], 0
	js	.label_552
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x20]
	xor	rax, qword ptr [rsp + 0x198]
	xor	rcx, qword ptr [rsp + 0x1a0]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x28]
	xor	rax, qword ptr [rsp + 0x1a8]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	je	.label_551
.label_552:
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	mov	qword ptr [rsp + 0x68], r13
	je	.label_565
	mov	byte ptr [rsp + 0x1d2], 0x58
	mov	word ptr [rsp + 0x1d0], 0x5858
	movsxd	rbx, dword ptr [rsp + 0x98]
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
	lea	rdi, [rsp + 0x1d3]
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_397
	xor	eax, eax
	call	__sprintf_chk
	imul	ecx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, ecx
	mov	edx, esi
	neg	edx
	cmovl	edx, esi
	cmp	ebx, ecx
	je	.label_593
	cdqe	
	lea	rcx, [rsp + rax + 0x1d3]
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
	je	.label_598
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
.label_598:
	mov	byte ptr [rcx], 0
.label_593:
	lea	rdi, [rsp + 0x1d0]
	call	tzalloc
	mov	r13, rax
	test	r13, r13
	je	.label_640
	mov	rax, qword ptr [rsp + 0x198]
	mov	dword ptr [rsp + 0x18], eax
	shr	rax, 0x20
	mov	dword ptr [rsp + 0x1c], eax
	mov	rax, qword ptr [rsp + 0x1a0]
	mov	dword ptr [rsp + 0x20], eax
	shr	rax, 0x20
	mov	dword ptr [rsp + 0x24], eax
	mov	rax, qword ptr [rsp + 0x1a8]
	mov	dword ptr [rsp + 0x28], eax
	shr	rax, 0x20
	mov	dword ptr [rsp + 0x2c], eax
	mov	eax, dword ptr [rsp + 0x1b8]
	mov	dword ptr [rsp + 0x38], eax
	mov	dword ptr [rsp + 0x30], 0xffffffff
	lea	rsi, [rsp + 0x18]
	mov	rdi, r13
	call	mktime_z
	mov	r14, rax
	cmp	dword ptr [rsp + 0x30], 0
	js	.label_673
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x20]
	xor	rax, qword ptr [rsp + 0x198]
	xor	rcx, qword ptr [rsp + 0x1a0]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rbx, qword ptr [rsp + 0x28]
	xor	rbx, qword ptr [rsp + 0x1a8]
	mov	ebp, ebx
	or	ebp, ecx
	or	ebp, edx
	shr	rbx, 0x20
	mov	rdi, r13
	call	tzfree
	or	ebx, ebp
	mov	rbp, r14
	mov	r13, qword ptr [rsp + 0x68]
	jne	.label_565
.label_551:
	cmp	qword ptr [rsp + 0x130], 0
	je	.label_691
	mov	rax, qword ptr [rsp + 0x128]
	test	rax, rax
	jne	.label_691
	mov	rcx, qword ptr [rsp + 0x88]
	test	rcx, rcx
	jle	.label_696
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, dword ptr [rsp + 0x90]
	setne	al
	jmp	.label_700
.label_640:
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_708
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_712
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsp + 0x1d0]
	xor	eax, eax
	mov	rdi, rcx
	jmp	.label_717
.label_644:
	xor	ebp, ebp
	jmp	.label_542
.label_613:
	mov	esi, OFFSET FLAT:label_720
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, rcx
	mov	rcx, r14
	call	__fprintf_chk
	jmp	.label_685
.label_673:
	mov	rdi, r13
	call	tzfree
.label_565:
	mov	r10, qword ptr [rsp + 0x198]
	mov	rsi, qword ptr [rsp + 0x1a0]
	mov	r11, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	r10d, r11d
	sete	r8b
	mov	rax, r10
	shr	rax, 0x20
	mov	rcx, r11
	shr	rcx, 0x20
	mov	qword ptr [rsp + 0x268], rax
	mov	qword ptr [rsp + 0x260], rcx
	cmp	eax, ecx
	sete	cl
	mov	r14, rsi
	shr	r14, 0x20
	mov	rdi, rbx
	shr	rdi, 0x20
	cmp	r14d, edi
	sete	byte ptr [rsp + 0x58]
	mov	rbp, qword ptr [rsp + 0x1a8]
	mov	rax, qword ptr [rsp + 0x28]
	cmp	ebp, eax
	sete	dl
	mov	r13, rbp
	shr	r13, 0x20
	mov	r12, rax
	shr	r12, 0x20
	cmp	r13d, r12d
	sete	r15b
	mov	qword ptr [rsp + 0x78], rsi
	mov	qword ptr [rsp + 0x60], rbx
	cmp	esi, ebx
	setne	r9b
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_708
	and	dl, r15b
	and	r8b, r9b
	and	cl, r8b
	and	cl, byte ptr [rsp + 0x58]
	and	cl, dl
	mov	byte ptr [rsp + 0xf], cl
	mov	qword ptr [rsp + 0x240], rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_675
	mov	edx, 5
	mov	qword ptr [rsp + 0x58], rbp
	mov	rbp, rax
	mov	qword ptr [rsp + 0x248], r10
	mov	qword ptr [rsp + 0x250], r11
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_554
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x198]
	lea	rsi, [rsp + 0x80]
	lea	r15, [rsp + 0x1d0]
	mov	rdx, r15
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_566
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x18]
	lea	rsi, [rsp + 0x80]
	mov	rdx, r15
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	dbg_printf
	cmp	r13d, r12d
	mov	eax, OFFSET FLAT:label_31
	mov	r9d, OFFSET FLAT:label_577
	cmove	r9, rax
	mov	qword ptr [rsp + 0x238], rbp
	mov	rcx, qword ptr [rsp + 0x58]
	cmp	ecx, ebp
	mov	r12d, OFFSET FLAT:label_578
	mov	r10d, OFFSET FLAT:label_578
	cmove	r10, rax
	mov	qword ptr [rsp + 0x258], r14
	mov	r15, qword ptr [rsp + 0x240]
	mov	r13, r15
	cmp	r14d, r15d
	mov	r11d, OFFSET FLAT:label_578
	cmove	r11, rax
	mov	rcx, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x60]
	cmp	ecx, edx
	mov	ebx, OFFSET FLAT:label_578
	cmove	rbx, rax
	mov	rcx, qword ptr [rsp + 0x268]
	mov	rdx, qword ptr [rsp + 0x260]
	cmp	ecx, edx
	mov	ebp, OFFSET FLAT:label_578
	cmove	rbp, rax
	mov	rcx, qword ptr [rsp + 0x250]
	mov	rdx, qword ptr [rsp + 0x248]
	cmp	edx, ecx
	cmove	r12, rax
	sub	rsp, 8
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:label_579
	mov	eax, 0
	lea	rdi, [rsp + 0x1d8]
	push	r12
	push	rbp
	push	rbx
	push	r11
	push	r10
	call	__snprintf_chk
	add	rsp, 0x30
	test	eax, eax
	js	.label_625
	movabs	rcx, 0xffffffff00000000
	cmp	eax, 0x63
	mov	edx, 0x63
	cmovb	edx, eax
	inc	edx
	lea	rax, [rdx - 1]
	shl	rdx, 0x20
	add	rdx, rcx
.label_633:
	mov	rsi, rdx
	test	rax, rax
	jle	.label_631
	lea	rdx, [rsi + rcx]
	cmp	byte ptr [rsp + rax + 0x1cf], 0x20
	lea	rax, [rax - 1]
	je	.label_633
.label_631:
	sar	rsi, 0x20
	mov	byte ptr [rsp + rsi + 0x1d0], 0
.label_625:
	lea	rsi, [rsp + 0x1d0]
	mov	edi, OFFSET FLAT:label_645
	xor	eax, eax
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_652
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_658
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_663
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_658:
	mov	rax, qword ptr [rsp + 0x258]
	cmp	eax, r13d
	je	.label_635
	mov	rax, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [rsp + 0x238]
	cmp	eax, ecx
	je	.label_635
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_574
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_635:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_618
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	cmp	qword ptr [rsp + 0x50], 0
	je	.label_686
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_611
	jmp	.label_612
.label_686:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_690
.label_612:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, OFFSET FLAT:label_693
	xor	eax, eax
	mov	rsi, rcx
.label_717:
	call	dbg_printf
.label_708:
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x68]
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_542
.label_696:
	xor	eax, eax
.label_700:
	movzx	eax, al
	cmp	rcx, rax
	jge	.label_525
	test	rcx, rcx
	jle	.label_704
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, dword ptr [rsp + 0x90]
	setne	al
	jmp	.label_707
.label_525:
	test	rcx, rcx
	jle	.label_711
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, dword ptr [rsp + 0x90]
	setne	al
	jmp	.label_713
.label_704:
	xor	eax, eax
.label_707:
	movzx	eax, al
	mov	rdx, rcx
	sub	rdx, rax
	movabs	rax, 0xedb6db6db6db6db7
	cmp	rdx, rax
	jge	.label_719
	jmp	.label_533
.label_711:
	xor	eax, eax
.label_713:
	movzx	eax, al
	mov	rdx, rcx
	sub	rdx, rax
	movabs	rax, 0x1249249249249249
	cmp	rdx, rax
	jg	.label_533
.label_719:
	test	rcx, rcx
	jle	.label_729
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, dword ptr [rsp + 0x90]
	setne	al
	jmp	.label_730
.label_729:
	xor	eax, eax
.label_730:
	movzx	eax, al
	sub	rcx, rax
	lea	rax, [rcx*8]
	sub	rax, rcx
	js	.label_732
	mov	rsi, r15
	sub	rsi, rax
	mov	ecx, dword ptr [rsp + 0x90]
	mov	edx, dword ptr [rsp + 0x30]
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
	movsxd	rdi, edi
	jmp	.label_737
.label_732:
	mov	ecx, dword ptr [rsp + 0x90]
	mov	edx, dword ptr [rsp + 0x30]
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
.label_737:
	cmp	rsi, rdi
	jl	.label_533
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
	movsxd	rax, dword ptr [rsp + 0x24]
	test	rax, rax
	js	.label_682
	mov	rdx, r15
	sub	rdx, rax
	cmp	rdx, rcx
	jge	.label_550
	jmp	.label_548
.label_682:
	lea	rdx, [r15 + 1]
	sub	rdx, rax
	cmp	rcx, rdx
	jl	.label_548
.label_550:
	lea	rdx, [rcx + r12]
	add	rdx, rax
	shr	rdx, 0x20
	je	.label_553
.label_548:
	add	ecx, eax
	mov	dword ptr [rsp + 0x24], ecx
.label_533:
	cmp	byte ptr [rsp + 0x159], 0
	jne	.label_559
	jmp	.label_527
.label_553:
	mov	rbp, r13
	add	ecx, eax
	mov	dword ptr [rsp + 0x24], ecx
	mov	dword ptr [rsp + 0x38], 0xffffffff
	lea	rsi, [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x10]
	call	mktime_z
	mov	cl, byte ptr [rsp + 0x159]
	mov	r14, rax
	cmp	rax, -1
	je	.label_567
	test	cl, cl
	je	.label_570
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_689
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	lea	r12, [rsp + 0x80]
	lea	rsi, [rsp + 0x1d0]
	mov	rdi, r12
	call	str_days
	mov	rbx, rax
	lea	rdi, [rsp + 0x18]
	lea	rdx, [rsp + 0x290]
	mov	rsi, r12
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, rcx
	call	dbg_printf
.label_570:
	mov	r13, rbp
	mov	r12d, 0x80000000
	mov	rbp, r14
.label_691:
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_592
	mov	rax, qword ptr [rsp + 0x128]
	mov	rcx, qword ptr [rsp + 0x130]
	mov	rdx, rcx
	or	rdx, rax
	jne	.label_596
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_602
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x50], rax
	movsxd	rax, dword ptr [rsp + 0x2c]
	xor	ecx, ecx
	cmp	rax, -0x76d
	setg	cl
	lea	rcx, qword ptr [rcx + label_609]
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
	lea	rdi, [rsp + 0x338]
	mov	esi, 1
	mov	edx, 0xd
	xor	eax, eax
	call	__sprintf_chk
	mov	ebx, dword ptr [rsp + 0x24]
	mov	r10, rbp
	mov	ebp, dword ptr [rsp + 0x28]
	inc	ebp
	mov	r14, r13
	lea	r13, [rsp + 0x290]
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:label_629
	mov	eax, 0
	mov	rdi, r13
	lea	r9, [rsp + 0x338]
	push	rbx
	push	rbp
	mov	rbp, r10
	call	__snprintf_chk
	add	rsp, 0x10
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, r13
	mov	r13, r14
	call	dbg_printf
	mov	rax, qword ptr [rsp + 0x128]
	mov	rcx, qword ptr [rsp + 0x130]
.label_596:
	test	rcx, rcx
	je	.label_664
	test	rax, rax
	je	.label_664
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_667
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x80]
	lea	rsi, [rsp + 0x1d0]
	call	str_days
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	dbg_printf
.label_664:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_676
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x18]
	lea	rsi, [rsp + 0x80]
	lea	rdx, [rsp + 0x290]
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	dbg_printf
.label_592:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rax, qword ptr [rsp + 0xf8]
	or	rcx, qword ptr [rsp + 0xe8]
	mov	rdx, rcx
	or	rdx, rax
	je	.label_688
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_695
	test	rcx, rcx
	je	.label_698
	cmp	dword ptr [rsp + 0x24], 0xf
	je	.label_698
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_701
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	mov	rax, qword ptr [rsp + 0xf8]
.label_698:
	test	rax, rax
	je	.label_695
	cmp	dword ptr [rsp + 0x20], 0xc
	je	.label_695
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_718
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_695:
	mov	rbx, r13
	mov	r13, qword ptr [rsp + 0xe8]
	test	r13, r13
	js	.label_721
	mov	rcx, r15
	sub	rcx, r13
	movsxd	rax, dword ptr [rsp + 0x2c]
	cmp	rcx, rax
	jge	.label_725
	jmp	.label_514
.label_721:
	movsxd	rax, dword ptr [rsp + 0x2c]
	lea	rcx, [r15 + 1]
	sub	rcx, r13
	cmp	rax, rcx
	jl	.label_514
.label_725:
	movsxd	rcx, eax
	lea	rdx, [r13 + r12]
	add	rdx, rcx
	shr	rdx, 0x20
	jne	.label_514
	mov	rbp, qword ptr [rsp + 0xf0]
	test	rbp, rbp
	js	.label_502
	mov	rdx, r15
	sub	rdx, rbp
	movsxd	rcx, dword ptr [rsp + 0x28]
	cmp	rdx, rcx
	jge	.label_507
	jmp	.label_514
.label_502:
	movsxd	rcx, dword ptr [rsp + 0x28]
	lea	rdx, [r15 + 1]
	sub	rdx, rbp
	cmp	rcx, rdx
	jl	.label_514
.label_507:
	movsxd	rdx, ecx
	lea	rsi, [rbp + r12]
	add	rsi, rdx
	shr	rsi, 0x20
	jne	.label_514
	mov	rdx, qword ptr [rsp + 0xf8]
	mov	r8, rdx
	test	rdx, rdx
	js	.label_524
	mov	rsi, r15
	sub	rsi, r8
	movsxd	rdx, dword ptr [rsp + 0x24]
	cmp	rsi, rdx
	jmp	.label_529
.label_567:
	test	cl, cl
	mov	r13, rbp
	je	.label_527
.label_559:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_534
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x50], rax
	lea	r15, [rsp + 0x80]
	lea	rsi, [rsp + 0x1d0]
	mov	rdi, r15
	call	str_days
	mov	r12, rax
	mov	r14, r13
	mov	r13, qword ptr [rsp + 0x88]
	mov	ebx, dword ptr [rsp + 0x90]
	lea	rdi, [rsp + 0x18]
	lea	rdx, [rsp + 0x290]
	mov	rsi, r15
	call	debug_strfdatetime
	mov	rbp, rax
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, r12
	mov	rdx, r13
	mov	r13, r14
	mov	ecx, ebx
	mov	r8, rbp
	call	dbg_printf
	jmp	.label_527
.label_524:
	movsxd	rdx, dword ptr [rsp + 0x24]
	lea	rsi, [r15 + 1]
	sub	rsi, r8
	cmp	rdx, rsi
.label_529:
	mov	edi, 0x80000000
	jl	.label_514
	movsxd	rsi, edx
	add	rdi, r8
	add	rdi, rsi
	shr	rdi, 0x20
	je	.label_642
.label_514:
	cmp	byte ptr [rsp + 0x159], 0
	mov	r13, rbx
	je	.label_527
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_571
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, OFFSET FLAT:label_715
	mov	edx, 0x877
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	jmp	.label_527
.label_642:
	add	r13d, eax
	add	ebp, ecx
	add	r8d, edx
	mov	dword ptr [rsp + 0x2c], r13d
	mov	dword ptr [rsp + 0x28], ebp
	mov	qword ptr [rsp + 0x50], r8
	mov	dword ptr [rsp + 0x24], r8d
	mov	eax, dword ptr [rsp + 0x1a0]
	mov	dword ptr [rsp + 0x20], eax
	mov	eax, dword ptr [rsp + 0x19c]
	mov	dword ptr [rsp + 0x1c], eax
	mov	eax, dword ptr [rsp + 0x198]
	mov	dword ptr [rsp + 0x18], eax
	mov	eax, dword ptr [rsp + 0x1b8]
	mov	dword ptr [rsp + 0x38], eax
	lea	rsi, [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x10]
	call	mktime_z
	mov	r14, rax
	cmp	rax, -1
	mov	al, byte ptr [rsp + 0x159]
	je	.label_672
	test	al, al
	je	.label_608
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_623
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0xe8]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	rcx, qword ptr [rsp + 0xf8]
	xor	eax, eax
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_621
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	lea	rdi, [rsp + 0x18]
	lea	rsi, [rsp + 0x80]
	lea	rdx, [rsp + 0x290]
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, r12
	mov	rsi, rcx
	call	dbg_printf
	mov	eax, dword ptr [rsp + 0x1b8]
	cmp	eax, -1
	je	.label_632
	cmp	dword ptr [rsp + 0x38], eax
	je	.label_632
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_584
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_632:
	cmp	qword ptr [rsp + 0xf8], 0
	jne	.label_608
	mov	rax, qword ptr [rsp + 0x50]
	cmp	dword ptr [rsp + 0x24], eax
	jne	.label_680
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_608
	cmp	dword ptr [rsp + 0x28], ebp
	je	.label_608
.label_680:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_662
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_670
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x78], rax
	xor	eax, eax
	cmp	r13d, 0xfffff893
	setg	al
	lea	rcx, qword ptr [rax + label_609]
	movsxd	rax, r13d
	imul	rax, rax, 0x51eb851f
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x25
	lea	esi, [rax + rdx]
	lea	eax, [rax + rdx + 0x13]
	mov	r12d, 0xffffffed
	mov	r8d, 0xffffffed
	sub	r8d, esi
	test	eax, eax
	cmovns	r8d, eax
	imul	eax, esi, 0x64
	sub	r13d, eax
	mov	r9d, r13d
	neg	r9d
	cmovl	r9d, r13d
	lea	r13, [rsp + 0x338]
	mov	esi, 1
	mov	edx, 0xd
	xor	eax, eax
	mov	rdi, r13
	call	__sprintf_chk
	inc	ebp
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x78]
	mov	rsi, r13
	mov	edx, ebp
	mov	rcx, qword ptr [rsp + 0x50]
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_699
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rsp + 0x2c]
	xor	ecx, ecx
	cmp	rax, -0x76d
	setg	cl
	lea	rcx, qword ptr [rcx + label_609]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	lea	edi, [rdx + rsi]
	lea	edx, [rdx + rsi + 0x13]
	sub	r12d, edi
	test	edx, edx
	cmovns	r12d, edx
	imul	edx, edi, 0x64
	sub	eax, edx
	mov	r9d, eax
	neg	r9d
	cmovl	r9d, eax
	mov	esi, 1
	mov	edx, 0xd
	xor	eax, eax
	mov	rdi, r13
	mov	r8d, r12d
	call	__sprintf_chk
	mov	ecx, dword ptr [rsp + 0x24]
	mov	edx, dword ptr [rsp + 0x28]
	inc	edx
	xor	eax, eax
	mov	rdi, rbp
	mov	rsi, r13
	call	dbg_printf
.label_608:
	mov	r13, rbx
	mov	rbp, r14
.label_688:
	cmp	qword ptr [rsp + 0x150], 0
	je	.label_733
	movsxd	rax, dword ptr [rsp + 0x98]
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	js	.label_739
	lea	rsi, [r15 + 1]
	xor	rsi, rdx
	mov	ecx, 1
	cmp	rax, rsi
	jge	.label_508
	jmp	.label_515
.label_739:
	lea	rsi, [rdx + r15]
	mov	ecx, 1
	cmp	rsi, rax
	jl	.label_515
.label_508:
	xor	ecx, ecx
.label_515:
	sub	rax, rdx
	js	.label_516
	lea	rsi, [r15 + 1]
	xor	rsi, rax
	mov	edx, 1
	cmp	rbp, rsi
	jge	.label_517
	jmp	.label_522
.label_516:
	lea	rsi, [rax + r15]
	mov	edx, 1
	cmp	rsi, rbp
	jl	.label_522
.label_517:
	xor	edx, edx
.label_522:
	or	edx, ecx
	je	.label_526
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_527
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_547
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, dword ptr [rsp + 0x98]
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	jmp	.label_527
.label_526:
	sub	rbp, rax
.label_733:
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_541
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_544
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x18]
	lea	rsi, [rsp + 0x80]
	lea	rdx, [rsp + 0x290]
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	mov	rdx, rbp
	call	dbg_printf
.label_541:
	mov	rdi, rbp
	movsxd	r8, dword ptr [rsp + 0x118]
	mov	rsi, qword ptr [rsp + 0xe0]
	add	rsi, r8
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
	mov	rax, qword ptr [rsp + 0x100]
	test	rax, rax
	js	.label_558
	movabs	rsi, 0x91a2b3c4d5e6f
	cmp	rax, rsi
	jle	.label_581
	jmp	.label_583
.label_558:
	movabs	rsi, 0xfff6e5d4c3b2a191
	cmp	rax, rsi
	jl	.label_583
.label_581:
	imul	rbx, rax, 0xe10
	test	rbx, rbx
	js	.label_589
	mov	rsi, r15
	sub	rsi, rbx
	cmp	rsi, rdi
	jge	.label_587
	jmp	.label_583
.label_589:
	lea	rsi, [r15 + 1]
	sub	rsi, rbx
	cmp	rdi, rsi
	jl	.label_583
.label_587:
	mov	r12, r13
	mov	rsi, qword ptr [rsp + 0x108]
	test	rsi, rsi
	js	.label_599
	movabs	rbp, 0x222222222222222
	cmp	rsi, rbp
	mov	r13, r12
	jle	.label_605
	jmp	.label_583
.label_599:
	movabs	rbp, 0xfdddddddddddddde
	cmp	rsi, rbp
	mov	r13, r12
	jl	.label_583
.label_605:
	add	rbx, rdi
	imul	r14, rsi, 0x3c
	test	r14, r14
	js	.label_615
	mov	rbp, r15
	sub	rbp, r14
	cmp	rbp, rbx
	jmp	.label_684
.label_615:
	lea	rbp, [r15 + 1]
	sub	rbp, r14
	cmp	rbx, rbp
.label_684:
	mov	r13, r12
	jl	.label_583
	add	r14, rbx
	mov	rbx, qword ptr [rsp + 0x110]
	test	rbx, rbx
	js	.label_546
	mov	rbp, r15
	sub	rbp, rbx
	cmp	rbp, r14
	jmp	.label_627
.label_546:
	lea	rbp, [r15 + 1]
	sub	rbp, rbx
	cmp	r14, rbp
.label_627:
	mov	r13, r12
	jl	.label_583
	mov	rbp, rdx
	shr	rbp, 0x3f
	sar	rdx, 0x1a
	add	rdx, rbp
	add	r14, rbx
	movsxd	rdx, edx
	test	edx, edx
	js	.label_506
	sub	r15, rdx
	cmp	r15, r14
	jmp	.label_636
.label_672:
	test	al, al
	mov	r13, rbx
	je	.label_527
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_646
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x18]
	lea	rsi, [rsp + 0x80]
	lea	rdx, [rsp + 0x290]
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	dbg_printf
	jmp	.label_527
.label_506:
	inc	r15
	sub	r15, rdx
	cmp	r14, r15
.label_636:
	mov	r13, r12
	jge	.label_520
.label_583:
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_527
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_671
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_527:
	xor	ebp, ebp
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_542
.label_520:
	add	r14, rdx
	mov	rdx, qword ptr [rsp + 0x60]
	mov	qword ptr [rdx], r14
	mov	qword ptr [rdx + 8], rcx
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_549
	or	rsi, rax
	or	rsi, rbx
	or	rsi, r8
	je	.label_549
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_661
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x100]
	mov	rdx, qword ptr [rsp + 0x108]
	mov	rcx, qword ptr [rsp + 0x110]
	mov	r8d, dword ptr [rsp + 0x118]
	xor	eax, eax
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_735
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, r14
	call	dbg_printf
	cmp	dword ptr [rsp + 0x38], -1
	je	.label_549
	lea	rdx, [rsp + 0x338]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x60]
	call	localtime_rz
	test	rax, rax
	je	.label_549
	mov	eax, dword ptr [rsp + 0x38]
	cmp	eax, dword ptr [rsp + 0x358]
	je	.label_549
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_702
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_549:
	mov	r13, r12
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x60]
	jmp	.label_726
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407be0

	.globl str_days
	.type str_days, @function
str_days:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xe0], 0
	je	.label_740
	mov	r9, qword ptr [rbx + 8]
	lea	rax, [r9 + 1]
	cmp	rax, 0xd
	ja	.label_742
	imul	rax, rax, 0xb
	lea	r9, qword ptr [rax + str_days.ordinal_values]
	mov	esi, 0x64
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_120
	jmp	.label_741
.label_740:
	mov	byte ptr [r14], 0
	xor	eax, eax
	jmp	.label_743
.label_742:
	mov	esi, 0x64
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_746
.label_741:
	xor	eax, eax
	mov	rdi, r14
	call	__snprintf_chk
.label_743:
	movsxd	rcx, dword ptr [rbx + 0x10]
	test	rcx, rcx
	js	.label_744
	cmp	eax, 0x63
	ja	.label_744
	cmp	ecx, 6
	jg	.label_744
	movsxd	rdi, eax
	add	rdi, r14
	mov	edx, 0x64
	sub	edx, eax
	movsxd	rsi, edx
	mov	r8d, OFFSET FLAT:label_745
	cmp	eax, 1
	adc	r8, 0
	lea	r9, qword ptr [(rcx * 4) + str_days.days_values]
	mov	edx, 1
	mov	rcx, -1
	xor	eax, eax
	call	__snprintf_chk
.label_744:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407cb0

	.globl debug_strfdatetime
	.type debug_strfdatetime, @function
debug_strfdatetime:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r15, rdx
	mov	rbx, rsi
	mov	rax, rdi
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_536
	xor	r8d, r8d
	xor	r9d, r9d
	mov	rdi, r15
	mov	rcx, rax
	call	nstrftime
	test	rbx, rbx
	je	.label_747
	cmp	eax, 0x63
	jg	.label_747
	cmp	qword ptr [rbx + 0xd0], 0
	je	.label_747
	movsxd	rbx, dword ptr [rbx + 0x18]
	cdqe	
	lea	r14, [r15 + rax]
	mov	r12d, 0x64
	sub	r12d, eax
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
	lea	rdi, [rsp]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_397
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	movsxd	rsi, r12d
	je	.label_751
	cdqe	
	lea	rax, [rsp + rax]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	r8d, edx, 0x3c
	imul	rbp, r9, 0x1b4e81b5
	mov	rbx, rbp
	shr	rbx, 0x3f
	shr	rbp, 0x26
	movsxd	rdx, edx
	imul	rdi, rdx, 0x66666667
	mov	rcx, rdi
	shr	rcx, 0x3f
	sar	rdi, 0x22
	add	edi, ecx
	add	edi, edi
	lea	ecx, [rdi + rdi*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbp + rbx + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_750
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	edi, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	edi, edi
	lea	ecx, [rdi + rdi*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_748
.label_750:
	add	rax, 3
.label_748:
	mov	byte ptr [rax], 0
.label_751:
	lea	r9, [rsp]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_749
	xor	eax, eax
	mov	rdi, r14
	call	__snprintf_chk
.label_747:
	mov	rax, r15
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e60

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
	mov	esi, OFFSET FLAT:label_752
	mov	rdi, r14
	call	strcmp
	mov	r12d, OFFSET FLAT:universal_time_zone_table
	test	eax, eax
	je	.label_753
	mov	esi, OFFSET FLAT:label_755
	mov	rdi, r14
	call	strcmp
	mov	r12d, OFFSET FLAT:label_758
	test	eax, eax
	je	.label_753
	mov	esi, OFFSET FLAT:label_754
	mov	rdi, r14
	call	strcmp
	mov	r12d, OFFSET FLAT:label_757
	test	eax, eax
	je	.label_753
	mov	rsi, qword ptr [r15 + 0xe8]
	test	rsi, rsi
	je	.label_761
	add	r15, 0xe8
	mov	r12, r15
	nop	word ptr cs:[rax + rax]
.label_756:
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_753
	mov	rsi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	test	rsi, rsi
	jne	.label_756
.label_761:
	mov	ebx, OFFSET FLAT:time_zone_table
	mov	esi, OFFSET FLAT:label_760
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_762:
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_759
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_762
	jmp	.label_753
.label_759:
	mov	r12, rbx
.label_753:
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
	#Procedure 0x407f40

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
	je	.label_776
	mov	esi, 0x2e
	mov	rdi, rbx
	call	strchr
	xor	r12d, r12d
	test	rax, rax
	je	.label_776
	mov	rcx, rax
	sub	rcx, rbx
	sub	rbp, rcx
	cmp	rbp, 3
	mov	r12, rax
	mov	rbp, rcx
	jne	.label_763
.label_776:
	lea	rcx, [rbp - 8]
	mov	eax, ebp
	and	eax, 1
	cmp	rcx, 4
	ja	.label_763
	test	rax, rax
	jne	.label_763
	xor	r14d, r14d
	test	rbp, rbp
	je	.label_773
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_777:
	movsx	ecx, byte ptr [rbx + rax]
	add	ecx, -0x30
	cmp	ecx, 0xa
	jae	.label_763
	inc	rax
	cmp	rax, rbp
	jb	.label_777
	xor	r14d, r14d
	shr	rbp, 1
	je	.label_773
	mov	ecx, ebp
	and	ecx, 1
	xor	eax, eax
	cmp	rbp, 1
	je	.label_781
	mov	rdx, rbp
	sub	rdx, rcx
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_766:
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
	jne	.label_766
.label_781:
	test	rcx, rcx
	je	.label_774
	movsx	ecx, byte ptr [rbx + rax*2]
	lea	ecx, [rcx + rcx*4]
	movsx	edx, byte ptr [rbx + rax*2 + 1]
	lea	ecx, [rdx + rcx*2 - 0x210]
	mov	dword ptr [rsp + rax*4 + 0x10], ecx
.label_774:
	mov	r14, rbp
.label_773:
	mov	r15d, r13d
	and	r15d, 1
	je	.label_778
	lea	rax, [rsp + 0x10]
	jmp	.label_770
.label_778:
	movabs	rax, 0x7fffffffffffffff
	and	rax, r14
	cmp	rax, 4
	je	.label_775
	cmp	rax, 6
	je	.label_765
	cmp	rax, 5
	jne	.label_767
	mov	r10d, dword ptr [rsp + 0x10]
	cmp	r10d, 0x44
	jg	.label_768
	test	r13b, 8
	jne	.label_763
	add	r10d, 0x64
	jmp	.label_768
.label_775:
	lea	rbp, [rsp + 0x50]
	mov	rdi, rbp
	call	time
	mov	rdi, rbp
	call	localtime
	test	rax, rax
	je	.label_763
	mov	r10d, dword ptr [rax + 0x14]
	jmp	.label_768
.label_765:
	test	r13b, 2
	je	.label_763
	mov	rax, qword ptr [rsp + 0x10]
	imul	ecx, eax, 0x64
	shr	rax, 0x20
	lea	r10d, [rax + rcx - 0x76c]
.label_768:
	add	r14, -4
	lea	rax, [rsp + r14*4 + 0x10]
	mov	r14d, 4
.label_770:
	mov	edi, dword ptr [rax]
	mov	r9d, dword ptr [rax + 4]
	mov	r8d, dword ptr [rax + 8]
	mov	esi, dword ptr [rax + 0xc]
	test	r15d, r15d
	je	.label_764
	movabs	rcx, 0x7fffffffffffffff
	and	r14, rcx
	cmp	r14, 4
	je	.label_769
	cmp	r14, 6
	je	.label_772
	cmp	r14, 5
	jne	.label_767
	mov	r10d, dword ptr [rax + 0x10]
	cmp	r10d, 0x44
	jg	.label_764
	test	r13b, 8
	jne	.label_763
	add	r10d, 0x64
	jmp	.label_764
.label_769:
	mov	dword ptr [rsp + 8], r9d
	mov	r15d, r8d
	mov	r14d, edi
	mov	ebp, esi
	lea	rdi, [rsp + 0x50]
	call	time
	lea	rdi, [rsp + 0x50]
	call	localtime
	test	rax, rax
	je	.label_763
	mov	r10d, dword ptr [rax + 0x14]
	mov	esi, ebp
	mov	edi, r14d
	mov	r8d, r15d
	mov	r9d, dword ptr [rsp + 8]
	jmp	.label_764
.label_772:
	test	r13b, 2
	je	.label_763
	imul	ecx, dword ptr [rax + 0x10], 0x64
	mov	eax, dword ptr [rax + 0x14]
	lea	r10d, [rax + rcx - 0x76c]
.label_764:
	xor	eax, eax
	test	r12, r12
	je	.label_780
	movsx	eax, byte ptr [r12 + 1]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_763
	movsx	ecx, byte ptr [r12 + 2]
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_763
	lea	eax, [rax + rax*4]
	lea	eax, [rcx + rax*2 - 0x30]
.label_780:
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
	js	.label_763
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
	je	.label_779
	cmp	edx, 0x3c
	jne	.label_763
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
	je	.label_763
.label_779:
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [rax], rcx
	mov	al, 1
	jmp	.label_771
.label_763:
	xor	eax, eax
.label_771:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_767:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4082d0

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rax
	mov	edi, OFFSET FLAT:label_782
	call	getenv
	mov	ecx, 0x31069
	test	rax, rax
	je	.label_783
	mov	ecx, 0x31069
	cmp	byte ptr [rax], 0
	je	.label_783
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rax
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	mov	ecx, 0x31069
	cmove	rcx, rax
.label_783:
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
	#Procedure 0x408330

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_786
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_785
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_784
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_785
	mov	esi, OFFSET FLAT:label_788
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_789
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_789:
	mov	rbx, r14
.label_785:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_786:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_787
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083e0
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
	#Procedure 0x408420
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
	#Procedure 0x408430
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
	#Procedure 0x408440
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
	#Procedure 0x408480
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
	#Procedure 0x4084a0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_790
	test	rdx, rdx
	je	.label_790
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_790:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084d0
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
	#Procedure 0x408550

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
.label_912:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_910
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_793]
.label_1591:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_800
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_805
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1592:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_815
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_815
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_834:
	cmp	r14, r11
	jae	.label_873
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_873:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_834
.label_815:
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
	jmp	.label_819
.label_1584:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_819
.label_1587:
	mov	al, 1
.label_1585:
	mov	r12b, 1
.label_1588:
	test	r12b, 1
	mov	cl, 1
	je	.label_852
	mov	ecx, eax
.label_852:
	mov	al, cl
.label_1586:
	test	r12b, 1
	jne	.label_855
	test	r11, r11
	je	.label_856
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_856:
	mov	r14d, 1
	jmp	.label_857
.label_855:
	xor	r14d, r14d
.label_857:
	mov	ecx, OFFSET FLAT:label_805
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_819
.label_1589:
	test	r12b, 1
	jne	.label_866
	test	r11, r11
	je	.label_868
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_868:
	mov	r14d, 1
	jmp	.label_870
.label_1590:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_872
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_819
.label_866:
	xor	r14d, r14d
.label_870:
	mov	eax, OFFSET FLAT:label_872
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_819:
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
	jmp	.label_892
	nop	dword ptr [rax]
.label_824:
	inc	rsi
.label_892:
	cmp	rbp, -1
	je	.label_809
	cmp	rsi, rbp
	jne	.label_811
	jmp	.label_812
	nop	word ptr cs:[rax + rax]
.label_809:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_816
.label_811:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_836
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_797
	cmp	rbp, -1
	jne	.label_797
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
.label_797:
	cmp	rbx, rbp
	jbe	.label_843
.label_836:
	xor	r8d, r8d
.label_848:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_835
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_845]
.label_1416:
	test	rsi, rsi
	jne	.label_837
	jmp	.label_851
	nop	word ptr cs:[rax + rax]
.label_843:
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
	jne	.label_861
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_848
	jmp	.label_854
.label_861:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_848
.label_1415:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_881
	test	rsi, rsi
	jne	.label_884
	cmp	rbp, 1
	je	.label_851
	xor	r13d, r13d
	jmp	.label_818
.label_1595:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_890
	cmp	byte ptr [rsp + 6], 0
	jne	.label_821
	cmp	r12d, 2
	jne	.label_896
	mov	eax, r9d
	and	al, 1
	jne	.label_896
	cmp	r14, r11
	jae	.label_899
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_899:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_903
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_903:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_879
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_879:
	add	r14, 3
	mov	r9b, 1
.label_896:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_792
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_792:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_794
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_794
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_794
	cmp	r14, r11
	jae	.label_883
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_883:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_803
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_803:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_818
.label_1596:
	mov	bl, 0x62
	jmp	.label_823
.label_1597:
	mov	cl, 0x74
	jmp	.label_841
.label_1598:
	mov	bl, 0x76
	jmp	.label_823
.label_1599:
	mov	bl, 0x66
	jmp	.label_823
.label_1600:
	mov	cl, 0x72
	jmp	.label_841
.label_1601:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_830
	cmp	byte ptr [rsp + 6], 0
	jne	.label_795
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
	jae	.label_839
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_839:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_849
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_849:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_853
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_853:
	add	r14, 3
	xor	r9d, r9d
.label_830:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_818
.label_1413:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_858
	cmp	r12d, 2
	jne	.label_837
	cmp	byte ptr [rsp + 6], 0
	je	.label_837
	jmp	.label_795
.label_1414:
	cmp	r12d, 2
	jne	.label_867
	cmp	byte ptr [rsp + 6], 0
	jne	.label_795
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_798
.label_835:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_876
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
.label_828:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_895
	test	r8b, r8b
	je	.label_895
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_818
.label_881:
	test	rsi, rsi
	jne	.label_791
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_791
.label_851:
	mov	dl, 1
.label_1412:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_795
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_818:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_804
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_869
	jmp	.label_808
	nop	word ptr cs:[rax + rax]
.label_804:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_808
.label_869:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_813
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_798
	jmp	.label_827
	nop	dword ptr [rax]
.label_808:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_827
	jmp	.label_798
.label_813:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_827
.label_890:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_824
	xor	r15d, r15d
	jmp	.label_837
.label_867:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_841
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_798
.label_841:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_795
.label_823:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_818
	nop	word ptr cs:[rax + rax]
.label_827:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_821
	cmp	r12d, 2
	jne	.label_842
	mov	eax, r9d
	and	al, 1
	jne	.label_842
	cmp	r14, r11
	jae	.label_829
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_829:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_850
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_850:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_893
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_893:
	add	r14, 3
	mov	r9b, 1
.label_842:
	cmp	r14, r11
	jae	.label_909
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_909:
	inc	r14
	jmp	.label_810
.label_876:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_877
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_877:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_840:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_901
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_905
	cmp	rbp, -2
	je	.label_886
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_862
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_891:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_859
	bt	rsi, rdx
	jb	.label_807
.label_859:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_891
.label_862:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_832
	xor	r13d, r13d
.label_832:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_840
	jmp	.label_828
.label_794:
	xor	r13d, r13d
	jmp	.label_818
.label_791:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_818
.label_858:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_837
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_837
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_837
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_844
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_865
	cmp	byte ptr [rsp + 6], 0
	jne	.label_898
	cmp	r14, r11
	jae	.label_833
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_833:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_817
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_817:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_860
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_860:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_831
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_831:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_818
.label_837:
	xor	eax, eax
.label_884:
	xor	r13d, r13d
	jmp	.label_818
.label_895:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_875
	nop	word ptr cs:[rax + rax]
.label_838:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_875:
	test	r8b, r8b
	je	.label_885
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_887
	cmp	r14, r11
	jae	.label_888
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_888:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_887
	nop	dword ptr [rax]
.label_885:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_854
	cmp	r12d, 2
	jne	.label_900
	mov	eax, r9d
	and	al, 1
	jne	.label_900
	cmp	r14, r11
	jae	.label_904
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_904:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_907
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_907:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_911
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_911:
	add	r14, 3
	mov	r9b, 1
.label_900:
	cmp	r14, r11
	jae	.label_820
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_820:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_801
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_801:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_806
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_806:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_887:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_798
	test	r9b, 1
	je	.label_825
	mov	ebx, eax
	and	bl, 1
	jne	.label_825
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_826
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_826:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_878
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_878:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_825:
	cmp	r14, r11
	jae	.label_838
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_838
	nop	word ptr cs:[rax + rax]
.label_798:
	test	r9b, 1
	je	.label_846
	and	al, 1
	jne	.label_846
	cmp	r14, r11
	jae	.label_847
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_847:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_880
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_880:
	add	r14, 2
	xor	r9d, r9d
.label_846:
	mov	ebx, r15d
.label_810:
	cmp	r14, r11
	jae	.label_799
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_799:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_824
.label_905:
	xor	r13d, r13d
.label_901:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_828
.label_886:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_874
	mov	rsi, qword ptr [rsp + 0x58]
.label_871:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_902
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_871
	xor	r13d, r13d
	jmp	.label_828
.label_874:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_828
.label_902:
	xor	r13d, r13d
	jmp	.label_828
.label_844:
	xor	r13d, r13d
	jmp	.label_818
.label_865:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_818
	nop	dword ptr [rax + rax]
.label_812:
	mov	rcx, rsi
.label_816:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_889
	or	al, dl
	je	.label_894
.label_889:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_897
	or	al, dl
	jne	.label_897
	test	r10b, 1
	jne	.label_908
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_897
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_912
.label_897:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_796
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_802
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_802
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_814:
	cmp	r14, r11
	jae	.label_906
	mov	byte ptr [rcx + r14], al
.label_906:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_814
	jmp	.label_802
.label_821:
	mov	qword ptr [rsp + 0x20], rbp
.label_854:
	mov	rdx, rdi
	jmp	.label_822
.label_795:
	mov	qword ptr [rsp + 0x20], rbp
.label_807:
	mov	rdx, rdi
	mov	eax, 2
.label_882:
	mov	qword ptr [rsp + 0x38], rax
.label_822:
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
.label_863:
	mov	r14, rax
.label_864:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_894:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_822
.label_908:
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
	jmp	.label_863
.label_796:
	mov	rcx, qword ptr [rsp + 8]
.label_802:
	cmp	r14, r11
	jae	.label_864
	mov	byte ptr [rcx + r14], 0
	jmp	.label_864
.label_898:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_882
.label_910:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409360
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
	#Procedure 0x409430
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
	je	.label_913
	mov	qword ptr [rax], rbx
.label_913:
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
	#Procedure 0x409520
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_914
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_916:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_916
.label_914:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_917
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_918], OFFSET FLAT:slot0
.label_917:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_915
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_915:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4095c0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4095d0

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
	js	.label_922
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_925
	cmp	r12d, 0x7fffffff
	je	.label_920
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
	jne	.label_923
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_923:
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
.label_925:
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
	jbe	.label_921
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_924
.label_921:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_919
	mov	rdi, r14
	call	free
.label_919:
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
.label_924:
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
.label_922:
	call	abort
.label_920:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409790
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097a0
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
	#Procedure 0x4097c0
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
	#Procedure 0x4097e0

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
	je	.label_926
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
.label_926:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409850
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
	je	.label_927
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
.label_927:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4098c0

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
	je	.label_928
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
.label_928:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409930
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
	je	.label_929
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
.label_929:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4099a0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_930]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_931]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_932]
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
	#Procedure 0x409a10
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_930]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_931]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_932]
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
	#Procedure 0x409a80

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_930]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_931]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_932]
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
	#Procedure 0x409ae0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_930]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_931]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_932]
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
	#Procedure 0x409b40
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
	je	.label_933
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
.label_933:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409be0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_930]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_931]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_932]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_934
	test	rdx, rdx
	je	.label_934
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_934:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x409c50
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_930]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_931]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_932]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_935
	test	rdx, rdx
	je	.label_935
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_935:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409cc0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_930]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_931]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_932]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_936
	test	rsi, rsi
	je	.label_936
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_936:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409d30
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_930]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_931]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_932]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_937
	test	rsi, rsi
	je	.label_937
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
.label_937:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409da0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409db0
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
	#Procedure 0x409dd0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409df0

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
	#Procedure 0x409e10

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
	jne	.label_942
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_946
	cmp	ecx, 0x55
	jne	.label_938
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_938
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_938
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_938
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_938
	cmp	byte ptr [rax + 5], 0
	jne	.label_938
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_944
	mov	eax, OFFSET FLAT:label_945
	jmp	.label_941
.label_946:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_938
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_938
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_938
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_938
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_938
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_938
	cmp	byte ptr [rax + 7], 0
	je	.label_943
.label_938:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_872
	mov	eax, OFFSET FLAT:label_805
.label_941:
	cmove	rax, rcx
.label_942:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_943:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_939
	mov	eax, OFFSET FLAT:label_940
	jmp	.label_941
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ee0

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
	je	.label_959
	mov	edx, OFFSET FLAT:label_950
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_956
.label_959:
	mov	edx, OFFSET FLAT:label_957
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_956:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_961
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
	mov	esi, OFFSET FLAT:label_958
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_962
	jmp	qword ptr [(r12 * 8) + label_963]
.label_1303:
	add	rsp, 8
	jmp	.label_949
.label_962:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_953
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
	jmp	.label_949
.label_1304:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_948
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
.label_1305:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_954
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
.label_1306:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_951
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
.label_1307:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_965
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
	jmp	.label_949
.label_1308:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_964
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
	jmp	.label_949
.label_1309:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_947
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
	jmp	.label_949
.label_1310:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_952
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
	jmp	.label_949
.label_1312:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_955
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
	jmp	.label_949
.label_1311:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_960
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
.label_949:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a240
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_966:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_966
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a270

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_977
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_979
.label_977:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_979:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_967
	cmp	r10d, 0x29
	jae	.label_976
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_978
.label_976:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_978:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_967
	cmp	r10d, 0x29
	jae	.label_974
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_975
.label_974:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_975:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_967
	cmp	r10d, 0x29
	jae	.label_972
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_973
.label_972:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_973:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_967
	cmp	r10d, 0x29
	jae	.label_970
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_971
.label_970:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_971:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_967
	cmp	r10d, 0x29
	jae	.label_968
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_969
.label_968:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_969:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_967
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_967
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_967
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_967
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_967:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a460

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_980
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_980:
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
	#Procedure 0x40a4f0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_981
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_982
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_984
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_9
	mov	ecx, OFFSET FLAT:label_10
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_983
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a570
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_985
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_986
	test	rax, rax
	je	.label_985
.label_986:
	pop	rbx
	ret	
.label_985:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a5b0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_987
	test	rax, rax
	je	.label_988
.label_987:
	pop	rbx
	ret	
.label_988:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a5d0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_989
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_990
	test	rbx, rbx
	jne	.label_990
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_990:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_991
	test	rax, rax
	je	.label_989
.label_991:
	pop	rbx
	ret	
.label_989:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a620

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_992
	test	rbx, rbx
	jne	.label_992
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_992:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_994
	test	rax, rax
	je	.label_993
.label_994:
	pop	rbx
	ret	
.label_993:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40a650
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_998
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_1000
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_995
.label_998:
	test	rcx, rcx
	jne	.label_1001
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_1001:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_996
.label_995:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_997
	test	rbx, rbx
	jne	.label_997
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_997:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_999
	test	rax, rax
	je	.label_1000
.label_999:
	pop	rbx
	ret	
.label_1000:
	call	xalloc_die
.label_996:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a6f0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1002
	test	rax, rax
	je	.label_1003
.label_1002:
	pop	rbx
	ret	
.label_1003:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a710
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1006
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_1008
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_1005
	call	free
	xor	eax, eax
	jmp	.label_1007
.label_1006:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_1004
	mov	qword ptr [rsi], rbx
.label_1005:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1007
	test	rax, rax
	je	.label_1004
.label_1007:
	pop	rbx
	ret	
.label_1004:
	call	xalloc_die
.label_1008:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a780
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
	je	.label_1010
	test	r14, r14
	je	.label_1009
.label_1010:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1009:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a7c0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1011
	call	rpl_calloc
	test	rax, rax
	je	.label_1011
	pop	rcx
	ret	
.label_1011:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a7f0

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
	je	.label_1012
	test	r15, r15
	je	.label_1013
.label_1012:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1013:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a830
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
	je	.label_1015
	test	r15, r15
	je	.label_1014
.label_1015:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1014:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a880

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1016
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_120
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40a8b0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1017
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1018
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1018
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1017:
	mov	ecx, 1
.label_1018:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a900

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
	je	.label_1019
	cmp	r15, -2
	jb	.label_1019
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_1019
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_1019:
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
	#Procedure 0x40a960

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
	je	.label_1020
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_1020:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1021
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_1021
	mov	r12, rbx
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_1021:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a9e0

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbx
	cmp	rdi, 2
	jb	.label_1022
	nop	word ptr [rax + rax]
.label_1023:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1023
.label_1022:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aa10

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1027
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_1026
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_1024
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	ebp, eax
	xor	bpl, 1
.label_1024:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_1025
.label_1027:
	mov	rdi, rbp
	mov	rsi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_1026:
	xor	eax, eax
.label_1025:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aaa0

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, OFFSET FLAT:label_499
	call	getenv
	mov	r15, rax
	test	r15, r15
	mov	bl, byte ptr [r14 + 8]
	je	.label_1036
	test	bl, bl
	je	.label_1028
	lea	rdi, [r14 + 9]
	mov	rsi, r15
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_1030
.label_1028:
	mov	rdi, r15
	call	strlen
	mov	r12, rax
	inc	r12
	mov	bpl, 1
	jmp	.label_1032
.label_1036:
	xor	ebp, ebp
	mov	eax, 1
	test	bl, bl
	mov	r12d, 0
	je	.label_1030
.label_1032:
	lea	rax, [r12 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r12, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_1030
	mov	qword ptr [r13], 0
	mov	byte ptr [r13 + 8], bpl
	mov	byte ptr [r13 + 9], 0
	test	bpl, bpl
	je	.label_1035
	lea	rbp, [r13 + 9]
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	mov	byte ptr [rbp + r12], 0
.label_1035:
	test	bl, bl
	je	.label_1031
	add	r14, 9
	mov	edi, OFFSET FLAT:label_499
	mov	edx, 1
	mov	rsi, r14
	call	setenv
	jmp	.label_1037
.label_1031:
	mov	edi, OFFSET FLAT:label_499
	call	unsetenv
.label_1037:
	test	eax, eax
	je	.label_1034
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	cmp	r13, 2
	jb	.label_1029
	nop	dword ptr [rax]
.label_1033:
	mov	rbx, qword ptr [r13]
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_1033
.label_1029:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_1030
.label_1034:
	call	tzset
	mov	rax, r13
.label_1030:
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
	#Procedure 0x40abe0

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
	je	.label_1039
	cmp	r15, rbx
	ja	.label_1038
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	jb	.label_1039
.label_1038:
	mov	ebp, OFFSET FLAT:label_31
	cmp	byte ptr [rbx], 0
	je	.label_1041
	lea	rbp, [r12 + 9]
	jmp	.label_1045
.label_1050:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	cmovne	r12, rax
.label_1045:
	lea	r13, [r12 + 9]
.label_1047:
	mov	rdi, rbp
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_1041
	cmp	byte ptr [rbp], 0
	jne	.label_1049
	cmp	rbp, r13
	jne	.label_1043
	cmp	byte ptr [r12 + 8], 0
	je	.label_1044
.label_1049:
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rbp + rax + 1]
	cmp	byte ptr [rbp + rax + 1], 0
	mov	rbp, rcx
	jne	.label_1047
	jmp	.label_1050
.label_1044:
	mov	rbp, r13
.label_1043:
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rax + 1]
	mov	rcx, rbp
	sub	rcx, r13
	mov	rsi, rcx
	not	rsi
	cmp	rdx, rsi
	jbe	.label_1040
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_1042:
	xor	r14d, r14d
	jmp	.label_1039
.label_1040:
	add	rcx, rdx
	cmp	rcx, 0x76
	ja	.label_1048
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	jmp	.label_1041
.label_1048:
	add	rax, 0x12
	and	rax, 0xfffffffffffffff8
	mov	r13, rdx
	cmp	rdx, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	test	rax, rax
	je	.label_1046
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
.label_1041:
	mov	qword ptr [r15 + 0x30], rbp
.label_1039:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1046:
	mov	qword ptr [r12], 0
	jmp	.label_1042
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ad50

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rdi
	mov	r12b, 1
	cmp	rbp, 1
	je	.label_1053
	call	__errno_location
	mov	r14, rax
	mov	r15d, dword ptr [r14]
	cmp	byte ptr [rbp + 8], 0
	je	.label_1052
	lea	rsi, [rbp + 9]
	mov	edi, OFFSET FLAT:label_499
	mov	edx, 1
	call	setenv
	jmp	.label_1051
.label_1052:
	mov	edi, OFFSET FLAT:label_499
	call	unsetenv
.label_1051:
	test	eax, eax
	je	.label_1055
	mov	r15d, dword ptr [r14]
	xor	r12d, r12d
	jmp	.label_1056
.label_1055:
	call	tzset
	mov	r12b, 1
.label_1056:
	cmp	rbp, 2
	jb	.label_1054
	nop	
.label_1057:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_1057
.label_1054:
	mov	dword ptr [r14], r15d
.label_1053:
	mov	eax, r12d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ade0

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r15, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1058
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_1059
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp], rax
	cmp	rax, -1
	jne	.label_1062
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	call	localtime_r
	test	rax, rax
	je	.label_1060
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x10]
	xor	rax, qword ptr [r15]
	xor	rcx, qword ptr [r15 + 8]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x18]
	xor	rax, qword ptr [r15 + 0x10]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	edi, dword ptr [r15 + 0x20]
	mov	edx, dword ptr [rsp + 0x28]
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
	jne	.label_1060
.label_1062:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_1060
	mov	qword ptr [rsp], -1
.label_1060:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_1059
	mov	rax, qword ptr [rsp]
	jmp	.label_1061
.label_1059:
	mov	rax, -1
.label_1061:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1058:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aee0

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
	jne	.label_1064
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1063
	test	cl, cl
	jne	.label_1063
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_1063
.label_1064:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1063
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1063:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40af40

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1066
	cmp	byte ptr [rax], 0x43
	jne	.label_1068
	cmp	byte ptr [rax + 1], 0
	je	.label_1065
.label_1068:
	mov	esi, OFFSET FLAT:label_1067
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1066
.label_1065:
	xor	ebx, ebx
.label_1066:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40af80

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
	mov	eax, OFFSET FLAT:label_1069
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40afb0

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
	#Procedure 0x40afe0

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
	je	.label_1255
	mov	edi, dword ptr [rsp + 0x4f0]
	mov	qword ptr [rsp + 0x68], rdx
	lea	rcx, [rdx - 1]
	mov	qword ptr [rsp + 0x80], rcx
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x38], r11
	jmp	.label_1089
.label_1255:
	xor	r8d, r8d
	jmp	.label_1098
.label_1241:
	mov	rdx, r10
	mov	rsi, qword ptr [rsp + 0x80]
	mov	r9, r15
.label_1220:
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
	jne	.label_1220
.label_1245:
	test	rcx, rcx
	mov	r8, qword ptr [rsp + 0x18]
	je	.label_1076
	lea	rsi, [r9 + rdx - 1]
	add	rdx, qword ptr [rsp + 0x80]
	neg	rcx
.label_1153:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_1153
.label_1076:
	add	r9, r10
	mov	rcx, r9
	jmp	.label_1110
.label_1103:
	mov	esi, 0x20
.label_1106:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	mov	rdi, r12
	mov	r8, qword ptr [rsp + 0x18]
	add	rdi, r14
	mov	cl, byte ptr [rbp]
	mov	r14d, r15d
.label_1099:
	mov	byte ptr [rdi], cl
	inc	rdi
	mov	rdx, rdi
.label_1097:
	add	r8, rbx
	mov	r10, rdx
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_1105
.label_1126:
	mov	edi, 3
	jmp	.label_1137
	nop	
.label_1089:
	cmp	al, 0x25
	jne	.label_1141
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x8c]
	mov	r12b, cl
	xor	r9d, r9d
.label_1360:
	mov	ebx, eax
	mov	al, r12b
.label_1161:
	mov	r12b, al
	inc	rbp
	jmp	.label_1148
	nop	word ptr cs:[rax + rax]
.label_1159:
	inc	rbp
	mov	r9d, edx
.label_1148:
	mov	cl, byte ptr [rbp]
	movsx	edx, cl
	mov	al, 1
	lea	esi, [rdx - 0x23]
	cmp	esi, 0xd
	ja	.label_1156
	jmp	qword ptr [(rsi * 8) + label_1158]
	nop	dword ptr [rax]
.label_1156:
	cmp	edx, 0x5f
	je	.label_1159
	cmp	edx, 0x5e
	je	.label_1161
.label_1361:
	add	edx, -0x30
	cmp	edx, 9
	ja	.label_1162
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1173:
	mov	edi, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_1165
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	jne	.label_1169
	lea	edx, [rcx - 0x30]
	cmp	edx, 7
	jg	.label_1165
.label_1169:
	lea	eax, [rax + rax*4]
	lea	edi, [rcx + rax*2 - 0x30]
.label_1165:
	movsx	ecx, byte ptr [rbp + 1]
	inc	rbp
	mov	eax, ecx
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, edi
	jb	.label_1173
.label_1162:
	mov	qword ptr [rsp + 0x18], r8
	movsx	r8d, cl
	cmp	r8d, 0x4f
	je	.label_1178
	cmp	r8d, 0x45
	jne	.label_1181
.label_1178:
	mov	cl, byte ptr [rbp + 1]
	inc	rbp
	jmp	.label_1185
	nop	dword ptr [rax]
.label_1141:
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
	jae	.label_1189
	test	r10, r10
	mov	edx, 0
	je	.label_1195
	cmp	ecx, 2
	jb	.label_1257
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
.label_1257:
	mov	byte ptr [r10], al
	inc	r10
	mov	rdx, r10
.label_1195:
	add	r8, rbx
	xor	r15d, r15d
	mov	r10, rdx
.label_1189:
	test	r15d, r15d
	mov	eax, 4
	cmove	r15d, eax
.label_1138:
	or	r15d, 4
	cmp	r15d, 4
	je	.label_1105
	jmp	.label_1079
.label_1181:
	xor	r8d, r8d
.label_1185:
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 8], rdi
	movsx	esi, cl
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	esi, 0x7a
	ja	.label_1077
	mov	r15d, OFFSET FLAT:label_1214
	mov	dl, 0x72
	mov	r10d, 0xffffffff
	xor	eax, eax
	xor	edi, edi
	jmp	qword ptr [(rsi * 8) + label_1215]
.label_1328:
	cmp	r8d, 0x45
	je	.label_1077
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
	js	.label_1218
	mov	ebx, 0x16d
	test	r10b, 3
	jne	.label_1237
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
.label_1237:
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
	jmp	.label_1249
.label_1342:
	test	bl, bl
	je	.label_1071
	mov	r12b, 1
.label_1071:
	cmp	r8d, 0x45
	jne	.label_1074
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_1077
.label_1320:
	dec	rbp
	jmp	.label_1077
.label_1321:
	test	r8d, r8d
	jne	.label_1077
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
	jae	.label_1072
	xor	edx, edx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_1097
	cmp	eax, 2
	jb	.label_1099
	movsxd	r14, esi
	dec	r14
	cmp	r9d, 0x30
	je	.label_1101
	cmp	r9d, 0x2b
	jne	.label_1103
.label_1101:
	mov	esi, 0x30
	jmp	.label_1106
.label_1322:
	mov	edx, 1
	jmp	.label_1108
	nop	word ptr [rax + rax]
.label_1109:
	inc	rdx
.label_1108:
	movzx	ebx, byte ptr [rbp + rdx]
	cmp	bl, 0x3a
	je	.label_1109
	cmp	bl, 0x7a
	jne	.label_1077
	add	rbp, rdx
	mov	qword ptr [rsp + 0x20], rdx
.label_1359:
	cmp	dword ptr [r11 + 0x20], 0
	js	.label_1114
	mov	dword ptr [rsp + 0x30], r9d
	mov	rdx, r11
	mov	r11, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rdx + 0x28]
	mov	sil, 1
	test	r9d, r9d
	mov	r10, qword ptr [rsp + 0x20]
	js	.label_1118
	test	r9d, r9d
	je	.label_1123
	xor	esi, esi
	jmp	.label_1118
.label_1323:
	test	r8d, r8d
	jne	.label_1077
	test	bl, bl
	je	.label_1128
	mov	r12b, 1
.label_1128:
	xor	eax, eax
	mov	dl, 0x41
	jmp	.label_1087
.label_1324:
	cmp	r8d, 0x45
	je	.label_1077
	test	bl, bl
	je	.label_1131
	mov	r12b, 1
.label_1131:
	xor	eax, eax
	mov	dl, 0x42
	jmp	.label_1087
.label_1325:
	cmp	r8d, 0x45
	jne	.label_1134
	xor	eax, eax
	mov	dl, 0x43
	jmp	.label_1087
.label_1326:
	test	r8d, r8d
	jne	.label_1077
	mov	r15d, OFFSET FLAT:label_1142
	mov	r10d, 0xffffffff
	jmp	.label_1143
.label_1327:
	test	r8d, r8d
	jne	.label_1077
	test	r9d, r9d
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_1152
	test	ecx, ecx
	jns	.label_1152
	mov	r15d, OFFSET FLAT:label_1157
	mov	r9d, 0x2b
	mov	r10d, 4
	jmp	.label_1143
.label_1329:
	cmp	r8d, 0x45
	je	.label_1077
	mov	r13d, dword ptr [r11 + 8]
	jmp	.label_1170
.label_1330:
	mov	edi, 2
	cmp	r8d, 0x45
	je	.label_1077
	mov	edx, dword ptr [rsp + 0x7c]
	mov	r13d, edx
	jmp	.label_1132
.label_1331:
	cmp	r8d, 0x45
	je	.label_1077
	mov	r13d, dword ptr [r11 + 4]
	jmp	.label_1170
.label_1332:
	cmp	r8d, 0x45
	je	.label_1077
	mov	edi, 9
	mov	r11, qword ptr [rsp + 8]
	cmp	r11d, -1
	je	.label_1175
	cmp	r11d, 8
	jg	.label_1070
	mov	edx, 9
	sub	edx, r11d
	mov	esi, 8
	sub	esi, r11d
	and	edx, 3
	cmp	esi, 3
	mov	esi, dword ptr [rsp + 0x500]
	mov	r13d, esi
	mov	r10, qword ptr [rsp + 0x10]
	jb	.label_1183
	lea	esi, [r11 + rdx - 9]
	mov	edi, dword ptr [rsp + 0x500]
	mov	r13d, edi
.label_1155:
	movsxd	rdi, r13d
	imul	r13, rdi, 0x68db8bad
	mov	rdi, r13
	shr	rdi, 0x3f
	sar	r13, 0x2c
	add	r13d, edi
	add	esi, 4
	jne	.label_1155
.label_1183:
	test	edx, edx
	je	.label_1198
	neg	edx
	nop	word ptr cs:[rax + rax]
.label_1205:
	movsxd	rsi, r13d
	imul	r13, rsi, 0x66666667
	mov	rsi, r13
	shr	rsi, 0x3f
	sar	r13, 0x22
	add	r13d, esi
	inc	edx
	jne	.label_1205
.label_1198:
	mov	edi, r11d
	jmp	.label_1196
.label_1333:
	mov	dil, 1
.label_1351:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	test	bl, bl
	je	.label_1202
	mov	r12d, 0
.label_1202:
	je	.label_1206
	mov	dil, 1
.label_1206:
	mov	dl, 0x70
	mov	al, dil
	jmp	.label_1090
.label_1334:
	cmp	r8d, 0x45
	je	.label_1077
	mov	r13d, dword ptr [r11]
	jmp	.label_1170
.label_1335:
	mov	r15d, OFFSET FLAT:label_1210
.label_1143:
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
	jae	.label_1072
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_1233
	cmp	rbx, rax
	jae	.label_1235
	movsxd	rcx, edx
	mov	qword ptr [rsp + 8], rbx
	sub	rcx, rbx
	mov	eax, r13d
	cmp	eax, 0x30
	mov	qword ptr [rsp + 0x30], rcx
	je	.label_1100
	cmp	eax, 0x2b
	jne	.label_1240
.label_1100:
	mov	esi, 0x30
	jmp	.label_1242
.label_1336:
	cmp	r8d, 0x45
	je	.label_1077
	mov	edx, dword ptr [r11 + 0x1c]
	add	edx, 7
	sub	edx, dword ptr [r11 + 0x18]
	movsxd	r13, edx
	jmp	.label_1164
.label_1337:
	cmp	r8d, 0x45
	je	.label_1077
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
.label_1164:
	imul	rdx, r13, -0x6db6db6d
	shr	rdx, 0x20
	add	r13d, edx
	mov	edx, r13d
	shr	edx, 0x1f
	sar	r13d, 2
	add	r13d, edx
	jmp	.label_1170
.label_1338:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_1077
	mov	dl, 0x58
	jmp	.label_1080
.label_1339:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x45
	je	.label_1081
	cmp	r8d, 0x4f
	je	.label_1077
	mov	r13d, dword ptr [r11 + 0x14]
	cmp	r13d, 0xfffff894
	setl	sil
	add	r13d, 0x76c
	mov	r15d, 4
	jmp	.label_1088
.label_1340:
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
	jae	.label_1072
	xor	ecx, ecx
	test	r9, r9
	mov	r14d, r12d
	je	.label_1110
	cmp	r10, rax
	jae	.label_1113
	movsxd	rax, edx
	mov	qword ptr [rsp + 0x20], r10
	sub	rax, r10
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 8], rax
	je	.label_1116
	cmp	r15d, 0x2b
	jne	.label_1120
.label_1116:
	mov	esi, 0x30
	jmp	.label_1122
.label_1341:
	test	r8d, r8d
	jne	.label_1077
	test	bl, bl
	je	.label_1258
	mov	r12b, 1
.label_1258:
	xor	eax, eax
	mov	dl, 0x61
	jmp	.label_1087
.label_1343:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_1077
	mov	dl, 0x63
	jmp	.label_1080
.label_1344:
	cmp	r8d, 0x45
	je	.label_1077
	mov	r13d, dword ptr [r11 + 0xc]
.label_1170:
	mov	edi, 2
	jmp	.label_1132
.label_1345:
	cmp	r8d, 0x45
	je	.label_1077
	mov	edx, dword ptr [r11 + 0xc]
	jmp	.label_1139
.label_1346:
	cmp	r8d, 0x45
	je	.label_1077
	mov	r13d, dword ptr [r11 + 0x1c]
	cmp	r13d, -1
	setl	sil
	inc	r13d
	mov	edi, 3
	jmp	.label_1144
.label_1347:
	cmp	r8d, 0x45
	je	.label_1077
	mov	edx, dword ptr [r11 + 8]
	jmp	.label_1139
.label_1348:
	cmp	r8d, 0x45
	mov	edx, dword ptr [rsp + 0x7c]
	je	.label_1077
.label_1139:
	test	r9d, r9d
	mov	esi, 0x5f
	cmove	r9d, esi
	mov	edi, 2
	mov	r13d, edx
	jmp	.label_1132
.label_1349:
	cmp	r8d, 0x45
	je	.label_1077
	mov	r13d, dword ptr [r11 + 0x10]
	cmp	r13d, -1
	setl	sil
	inc	r13d
	mov	edi, 2
.label_1144:
	xor	r14d, r14d
	xor	edx, edx
	jmp	.label_1167
.label_1350:
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
	jae	.label_1072
	xor	ecx, ecx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_1182
	cmp	eax, 2
	jb	.label_1186
	movsxd	r14, edx
	dec	r14
	cmp	r9d, 0x30
	je	.label_1112
	cmp	r9d, 0x2b
	jne	.label_1190
.label_1112:
	mov	esi, 0x30
	jmp	.label_1191
.label_1352:
	imul	r13d, dword ptr [r11 + 0x10], 0xb
	sar	r13d, 5
	inc	r13d
	mov	edi, 1
	xor	r14d, r14d
	xor	edx, edx
	xor	esi, esi
.label_1167:
	mov	r11, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_1092
.label_1353:
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	dword ptr [rsp + 0x2c], r14d
	mov	r15, qword ptr [rsp + 0x10]
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
	mov	rsi, rcx
	shr	rsi, 0x3f
	lea	r12, [rsp + 0xa7]
	nop	dword ptr [rax]
.label_1136:
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
	mov	eax, ebx
	neg	eax
	test	rsi, rsi
	cmove	eax, ebx
	add	eax, 0x30
	mov	byte ptr [r12 - 1], al
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_1136
	xor	edx, edx
	mov	r8, r14
	mov	r10, r15
	mov	ebx, 1
	mov	eax, dword ptr [rsp + 0x2c]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	jmp	.label_1227
.label_1354:
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
	jae	.label_1072
	xor	ecx, ecx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_1182
	cmp	eax, 2
	jb	.label_1244
	movsxd	r14, edx
	dec	r14
	cmp	r9d, 0x30
	je	.label_1246
	cmp	r9d, 0x2b
	jne	.label_1247
.label_1246:
	mov	esi, 0x30
	jmp	.label_1248
.label_1355:
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
	jmp	.label_1250
.label_1356:
	cmp	r8d, 0x45
	je	.label_1077
	mov	r13d, dword ptr [r11 + 0x18]
.label_1250:
	mov	edi, 1
.label_1132:
	mov	r11, qword ptr [rsp + 8]
.label_1204:
	mov	r10, qword ptr [rsp + 0x10]
.label_1196:
	mov	esi, r13d
	shr	esi, 0x1f
	xor	r14d, r14d
	xor	edx, edx
	jmp	.label_1092
.label_1357:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_1077
	mov	dl, 0x78
	jmp	.label_1080
.label_1358:
	cmp	r8d, 0x45
	jne	.label_1084
	xor	eax, eax
	mov	dl, 0x79
	jmp	.label_1087
.label_1074:
	xor	eax, eax
	mov	edx, ecx
.label_1087:
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_1090
.label_1235:
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	mov	rdx, r15
	mov	r10, qword ptr [rsp + 0x20]
	jmp	.label_1093
.label_1218:
	dec	r10d
	mov	r14d, 0x16d
	test	r10b, 3
	jne	.label_1096
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
.label_1096:
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
.label_1249:
	cmp	esi, 0x47
	je	.label_1172
	cmp	esi, 0x67
	jne	.label_1125
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
	mov	r15d, 2
	jns	.label_1127
	mov	edx, 0xfffff894
	sub	edx, r11d
	mov	esi, r13d
	neg	esi
	add	r13d, 0x64
	cmp	eax, edx
	cmovl	r13d, esi
.label_1127:
	xor	esi, esi
	jmp	.label_1147
.label_1114:
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_1105
.label_1134:
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
	movzx	edx, dl
	sub	r13d, edx
	add	r13d, 0x13
	mov	r15d, 2
	jmp	.label_1088
.label_1084:
	movsxd	rdx, dword ptr [r11 + 0x14]
	imul	rsi, rdx, 0x51eb851f
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x25
	add	esi, edi
	imul	esi, esi, 0x64
	mov	r13d, edx
	sub	r13d, esi
	mov	r15d, 2
	jns	.label_1166
	mov	esi, r13d
	neg	esi
	add	r13d, 0x64
	cmp	edx, 0xfffff894
	cmovl	r13d, esi
.label_1166:
	xor	esi, esi
.label_1088:
	mov	r11, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_1179
.label_1172:
	mov	edx, 0xfffff894
	sub	edx, r11d
	cmp	eax, edx
	setl	sil
	lea	r13d, [r11 + rax + 0x76c]
	mov	r15d, 4
.label_1147:
	mov	r10, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
.label_1179:
	test	r9d, r9d
	cmove	r9d, dword ptr [rsp + 0x88]
	xor	r14d, r14d
	cmp	r9d, 0x2b
	mov	edx, 0
	jne	.label_1192
	cmp	r15d, 2
	mov	edx, 0x63
	mov	edi, 0x270f
	cmove	edi, edx
	cmp	edi, r13d
	setb	bl
	cmp	r15d, r11d
	setl	dl
	or	dl, bl
.label_1192:
	mov	rdi, r15
.label_1092:
	cmp	r8d, 0x4f
	jne	.label_1201
	test	sil, sil
	jne	.label_1201
	mov	qword ptr [rsp + 8], r11
	xor	eax, eax
	mov	edx, ecx
	mov	r11, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x20], rdi
	jmp	.label_1090
.label_1201:
	mov	qword ptr [rsp + 0x40], r12
	mov	eax, r13d
	neg	eax
	test	sil, sil
	cmove	eax, r13d
	lea	r12, [rsp + 0xa7]
	mov	rbx, rdi
	mov	r8, qword ptr [rsp + 0x18]
	nop	
.label_1119:
	test	r14b, 1
	je	.label_1209
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_1209:
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
	ja	.label_1119
	test	r14d, r14d
	mov	eax, r13d
	jne	.label_1119
	xor	eax, eax
.label_1227:
	cmp	ebx, r11d
	cmovl	ebx, r11d
	test	dl, dl
	je	.label_1219
	mov	dl, 0x2b
.label_1219:
	test	sil, sil
	mov	sil, 0x2d
	jne	.label_1221
	mov	esi, edx
.label_1221:
	cmp	r9d, 0x2d
	mov	dword ptr [rsp + 0x2c], eax
	mov	qword ptr [rsp + 0x58], r13
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x20], rbx
	jne	.label_1225
	test	sil, sil
	je	.label_1117
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
	jae	.label_1072
	xor	ecx, ecx
	test	r10, r10
	je	.label_1216
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_1121
	test	al, al
	jne	.label_1121
	movsxd	r14, r11d
	lea	rdx, [r14 - 1]
	mov	byte ptr [rsp + 0x50], sil
	mov	esi, 0x20
	mov	rdi, r10
	mov	r15, r8
	mov	r13, r10
	mov	qword ptr [rsp + 8], r11
	call	memset
	mov	sil, byte ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 8]
	mov	r10, r13
	mov	r8, r15
	lea	r10, [r10 + r14 - 1]
	jmp	.label_1121
.label_1225:
	movsxd	rax, ebx
	mov	rcx, r12
	lea	rdx, [rsp + 0xa7]
	sub	rcx, rdx
	mov	edx, esi
	neg	dl
	sbb	r13, r13
	add	r13, rcx
	add	r13, rax
	test	r13d, r13d
	jle	.label_1254
	cmp	r9d, 0x5f
	jne	.label_1259
	movsxd	r14, r13d
	mov	rax, qword ptr [rsp + 0x48]
	sub	rax, r8
	cmp	r14, rax
	jae	.label_1072
	xor	edx, edx
	test	r10, r10
	mov	r15d, 0
	je	.label_1078
	mov	byte ptr [rsp + 0x50], sil
	mov	esi, 0x20
	mov	rdi, r10
	mov	rdx, r14
	mov	rbx, r8
	mov	r15, r10
	mov	qword ptr [rsp + 8], r11
	call	memset
	xor	edx, edx
	mov	sil, byte ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 8]
	mov	r8, rbx
	add	r15, r14
.label_1078:
	add	r8, r14
	sub	r11d, r13d
	cmovg	edx, r11d
	test	sil, sil
	je	.label_1094
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
	jae	.label_1072
	xor	r10d, r10d
	test	r15, r15
	je	.label_1104
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_1107
	test	al, al
	jne	.label_1107
	movsxd	r14, edx
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdx, [r14 - 1]
	mov	byte ptr [rsp + 0x50], sil
	mov	esi, 0x20
	mov	rdi, r15
	mov	r13, r8
	call	memset
	mov	rdx, qword ptr [rsp + 0x18]
	mov	sil, byte ptr [rsp + 0x50]
	mov	r8, r13
	lea	r15, [r15 + r14 - 1]
.label_1107:
	mov	byte ptr [r15], sil
	inc	r15
	mov	r10, r15
.label_1104:
	add	r8, rbx
	mov	r11d, edx
	jmp	.label_1117
.label_1254:
	test	sil, sil
	je	.label_1117
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
	jae	.label_1072
	xor	ecx, ecx
	test	r10, r10
	je	.label_1216
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_1121
	test	al, al
	jne	.label_1121
	movsxd	r14, r11d
	dec	r14
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	qword ptr [rsp + 8], r11
	mov	byte ptr [rsp + 0x50], sil
	je	.label_1140
	cmp	eax, 0x2b
	jne	.label_1146
.label_1140:
	mov	esi, 0x30
	jmp	.label_1150
.label_1259:
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rax, rcx
	jae	.label_1072
	test	sil, sil
	je	.label_1133
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rdx, eax
	cmp	edx, 1
	mov	r15d, 1
	cmova	r15, rdx
	cmp	r15, rcx
	jae	.label_1072
	xor	ecx, ecx
	test	r10, r10
	je	.label_1163
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_1129
	test	al, al
	jne	.label_1129
	movsxd	r14, r11d
	dec	r14
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	byte ptr [rsp + 0x50], sil
	je	.label_1171
	cmp	eax, 0x2b
	jne	.label_1176
.label_1171:
	mov	esi, 0x30
	jmp	.label_1174
.label_1125:
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
	jmp	.label_1196
.label_1094:
	mov	r10, r15
	mov	r11d, edx
	jmp	.label_1117
.label_1081:
	mov	dl, 0x59
.label_1080:
	xor	eax, eax
.label_1090:
	mov	dword ptr [rsp + 0x40], eax
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x58], r13
	mov	r13, qword ptr [rsp + 0x10]
	mov	word ptr [rsp + 0x63], 0x2520
	test	r8d, r8d
	lea	rcx, [rsp + 0x65]
	je	.label_1194
	mov	byte ptr [rsp + 0x65], r8b
	lea	rcx, [rsp + 0x66]
.label_1194:
	mov	byte ptr [rcx], dl
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0xb0]
	lea	rdx, [rsp + 0x63]
	mov	esi, 0x400
	mov	rcx, r11
	call	strftime
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1203
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
	jae	.label_1072
	xor	ecx, ecx
	mov	rdi, r13
	test	rdi, rdi
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_1213
	cmp	r10, rax
	setae	al
	test	esi, esi
	jne	.label_1217
	test	al, al
	jne	.label_1217
	mov	dword ptr [rsp + 0x2c], r14d
	movsxd	r14, edx
	sub	r14, r10
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	qword ptr [rsp + 0x50], r10
	je	.label_1145
	cmp	eax, 0x2b
	jne	.label_1222
.label_1145:
	mov	esi, 0x30
	jmp	.label_1223
.label_1203:
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, r13
	mov	r13, qword ptr [rsp + 0x58]
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_1105
.label_1217:
	mov	eax, dword ptr [rsp + 0x40]
	jmp	.label_1229
.label_1222:
	mov	esi, 0x20
.label_1223:
	mov	rdx, r14
	call	memset
	mov	r10, qword ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdi, r13
	mov	r8, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rsp + 0x40]
	add	rdi, r14
	mov	r14d, dword ptr [rsp + 0x2c]
.label_1229:
	test	al, 1
	jne	.label_1238
	test	r15b, 1
	jne	.label_1239
	lea	rsi, [rsp + 0xb1]
	mov	rdx, r10
	mov	rbx, rdi
	mov	r15, r10
	call	memcpy
	mov	r10, r15
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdi, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_1086
.label_1238:
	test	r10, r10
	je	.label_1086
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
	jb	.label_1251
	lea	r8, [r9 + 1]
	nop	
.label_1230:
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
	jne	.label_1230
	dec	rbx
	mov	rsi, rbx
.label_1251:
	test	r9, r9
	mov	r8, qword ptr [rsp + 0x18]
	mov	r14d, r13d
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_1086
	lea	rdx, [rdi + rsi - 1]
	lea	rsi, [rsp + rsi + 0xb0]
	neg	r9
	nop	word ptr cs:[rax + rax]
.label_1232:
	movzx	ecx, byte ptr [rsi]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rcx*4]
	mov	byte ptr [rdx], bl
	dec	rdx
	dec	rsi
	inc	r9
	jne	.label_1232
	jmp	.label_1086
.label_1239:
	test	r10, r10
	je	.label_1086
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
	jb	.label_1253
	lea	r8, [r9 + 1]
	nop	word ptr cs:[rax + rax]
.label_1115:
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
	jne	.label_1115
	dec	rbx
	mov	rsi, rbx
.label_1253:
	test	r9, r9
	mov	r8, qword ptr [rsp + 0x18]
	mov	r14d, r13d
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_1086
	lea	rdx, [rdi + rsi - 1]
	lea	rsi, [rsp + rsi + 0xb0]
	neg	r9
	nop	dword ptr [rax]
.label_1256:
	movzx	ecx, byte ptr [rsi]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rcx*4]
	mov	byte ptr [rdx], bl
	dec	rdx
	dec	rsi
	inc	r9
	jne	.label_1256
.label_1086:
	add	rdi, r10
	mov	rcx, rdi
.label_1213:
	add	r8, r12
	mov	r10, rcx
	jmp	.label_1149
.label_1113:
	mov	r15, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rsp + 0x40]
	jmp	.label_1154
.label_1240:
	mov	esi, 0x20
.label_1242:
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
.label_1093:
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
.label_1233:
	add	r8, r14
	jmp	.label_1177
.label_1123:
	mov	rdx, qword ptr [rsp + 0x68]
	cmp	byte ptr [rdx], 0x2d
	sete	sil
.label_1118:
	cmp	r10, 3
	ja	.label_1180
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
	jmp	qword ptr [(r10 * 8) + label_1184]
.label_1500:
	imul	r13d, r13d, 0x64
	add	r13d, edi
	mov	edi, 5
.label_1137:
	xor	r14d, r14d
	jmp	.label_1168
.label_1152:
	xor	eax, eax
	mov	r10d, ecx
	add	r10d, -6
	cmovs	r10d, eax
	mov	r15d, OFFSET FLAT:label_1157
	jmp	.label_1143
.label_1175:
	mov	edx, dword ptr [rsp + 0x500]
	mov	r13d, edx
	mov	r11d, 9
	jmp	.label_1204
.label_1180:
	xor	edi, edi
	mov	r15d, 0xe
	jmp	.label_1208
.label_1503:
	test	r9d, r9d
	je	.label_1111
.label_1502:
	imul	r13d, r13d, 0x2710
	imul	edx, edi, 0x64
	add	r13d, r9d
	add	r13d, edx
	mov	edi, 9
	mov	r14d, 0x14
	jmp	.label_1168
.label_1070:
	mov	edx, dword ptr [rsp + 0x500]
	mov	r13d, edx
	mov	edi, r11d
	jmp	.label_1204
.label_1120:
	mov	esi, 0x20
.label_1122:
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
.label_1154:
	test	bl, bl
	je	.label_1228
	test	r10, r10
	je	.label_1076
	mov	r12, r9
	mov	rbx, r10
	call	__ctype_tolower_loc
	mov	r10, rbx
	lea	rdx, [r10 - 1]
	mov	ecx, r10d
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_1231
	mov	rdx, r10
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r12
	jmp	.label_1234
.label_1228:
	test	al, al
	je	.label_1236
	test	r10, r10
	je	.label_1076
	mov	r15, r9
	mov	rbx, r10
	call	__ctype_toupper_loc
	mov	r10, rbx
	lea	rdx, [r10 - 1]
	mov	ecx, r10d
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_1241
	mov	rdx, r10
	mov	r9, r15
	jmp	.label_1245
.label_1231:
	mov	rdx, r10
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r12
	nop	word ptr cs:[rax + rax]
.label_1252:
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
	jne	.label_1252
.label_1234:
	test	rcx, rcx
	je	.label_1076
	lea	rsi, [r9 + rdx - 1]
	add	rdx, qword ptr [rsp + 0x80]
	neg	rcx
	nop	word ptr [rax + rax]
.label_1082:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_1082
	jmp	.label_1076
.label_1190:
	mov	esi, 0x20
.label_1191:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	add	r12, r14
	mov	r8, qword ptr [rsp + 0x18]
	mov	rdi, r12
	mov	r14d, r15d
.label_1186:
	mov	byte ptr [rdi], 0xa
	jmp	.label_1200
.label_1247:
	mov	esi, 0x20
.label_1248:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	add	r12, r14
	mov	r8, qword ptr [rsp + 0x18]
	mov	rdi, r12
	mov	r14d, r15d
.label_1244:
	mov	byte ptr [rdi], 9
.label_1200:
	inc	rdi
	mov	rcx, rdi
.label_1182:
	add	r8, rbx
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_1105
.label_1146:
	mov	esi, 0x20
.label_1150:
	mov	rdi, r10
	mov	rdx, r14
	mov	r15, r8
	mov	r13, r10
	call	memset
	mov	sil, byte ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 8]
	mov	r10, r13
	mov	r8, r15
	add	r10, r14
.label_1121:
	mov	byte ptr [r10], sil
	inc	r10
	mov	rcx, r10
.label_1216:
	add	r8, rbx
	mov	r10, rcx
	jmp	.label_1117
.label_1236:
	mov	rdi, r9
	mov	rsi, r15
	mov	rdx, r10
	mov	rbx, r9
	mov	r15, r10
	call	memcpy
	mov	r10, r15
	mov	r9, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_1076
.label_1111:
	test	edi, edi
	je	.label_1126
.label_1501:
	imul	r13d, r13d, 0x64
	add	r13d, edi
	mov	edi, 6
	mov	r14d, 4
.label_1168:
	mov	r15d, 0x21
.label_1208:
	mov	r10, r11
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	mov	ebx, r15d
	and	bl, 0x3f
	cmp	bl, 0xe
	je	.label_1130
	mov	dl, 1
	cmp	bl, 0x21
	je	.label_1092
	mov	r11, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_1138
.label_1130:
	mov	qword ptr [rsp + 0x20], rdi
.label_1077:
	mov	r10, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x40], r12
	mov	dword ptr [rsp + 0x2c], r14d
	mov	qword ptr [rsp + 0x58], r13
	lea	rax, [rbp - 2]
	xor	ecx, ecx
	xor	r15d, r15d
	mov	edx, 1
.label_1124:
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
	jne	.label_1124
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
	jae	.label_1072
	test	rdi, rdi
	mov	ecx, 0
	je	.label_1212
	movsxd	rdx, r12d
	test	r10d, r10d
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x30], rsi
	jne	.label_1075
	cmp	r12d, eax
	jae	.label_1075
	movsxd	rax, r11d
	sub	rax, rdx
	cmp	r9d, 0x30
	mov	qword ptr [rsp + 8], rax
	je	.label_1226
	cmp	r9d, 0x2b
	jne	.label_1187
.label_1226:
	mov	esi, 0x30
	jmp	.label_1188
.label_1187:
	mov	esi, 0x20
.label_1188:
	mov	rdx, rax
	call	memset
	mov	rax, qword ptr [rsp + 0x10]
	add	rax, qword ptr [rsp + 8]
	mov	rdi, rax
	mov	rdx, qword ptr [rsp + 0x20]
.label_1075:
	mov	rax, qword ptr [rsp + 0x40]
	test	al, 1
	jne	.label_1193
	add	rbx, rbp
	mov	rsi, rbx
	mov	rbx, rdi
	call	memcpy
	mov	r10, qword ptr [rsp + 0x20]
	mov	r9, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_1197
.label_1193:
	mov	rbx, rdi
	call	__ctype_toupper_loc
	mov	r10, qword ptr [rsp + 0x20]
	mov	r9, rbx
	movsxd	rcx, r12d
	lea	rdx, [rcx - 1]
	and	ecx, 3
	cmp	rdx, 3
	mov	rdx, r10
	jb	.label_1199
	movsxd	rdx, r12d
	add	r14, rdx
	and	r15b, 3
	movzx	esi, r15b
	mov	rdx, r10
	nop	word ptr cs:[rax + rax]
.label_1207:
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
	jne	.label_1207
.label_1199:
	test	rcx, rcx
	mov	r8, qword ptr [rsp + 0x18]
	je	.label_1197
	lea	rcx, [r9 + rdx - 1]
	add	rdx, rbp
	lea	rdx, [r13 + rdx - 1]
	and	r12d, 3
	neg	r12
	nop	
.label_1224:
	movzx	esi, byte ptr [rdx]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [rcx], bl
	dec	rcx
	dec	rdx
	inc	r12
	jne	.label_1224
.label_1197:
	add	r9, r10
	mov	rcx, r9
	mov	rsi, qword ptr [rsp + 0x30]
.label_1212:
	add	r8, rsi
.label_1177:
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x58]
	mov	r14d, dword ptr [rsp + 0x2c]
	jmp	.label_1105
.label_1176:
	mov	esi, 0x20
.label_1174:
	mov	rdi, r10
	mov	rdx, r14
	mov	rbx, r10
	call	memset
	mov	sil, byte ptr [rsp + 0x50]
	mov	r10, rbx
	mov	r8, qword ptr [rsp + 0x18]
	add	r10, r14
.label_1129:
	mov	byte ptr [r10], sil
	inc	r10
	mov	rcx, r10
.label_1163:
	add	r8, r15
	mov	r10, rcx
.label_1133:
	xor	r11d, r11d
	test	r10, r10
	movsxd	r15, r13d
	mov	eax, 0
	je	.label_1243
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
.label_1243:
	add	r8, r15
	mov	r10, rax
.label_1117:
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
	jae	.label_1072
	xor	ecx, ecx
	test	r10, r10
	mov	r14d, dword ptr [rsp + 0x2c]
	je	.label_1110
	cmp	r15, rax
	setae	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_1073
	test	al, al
	jne	.label_1073
	mov	qword ptr [rsp + 0x18], r13
	mov	r13, r8
	movsxd	r14, r11d
	sub	r14, r15
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	je	.label_1151
	cmp	eax, 0x2b
	jne	.label_1083
.label_1151:
	mov	esi, 0x30
	jmp	.label_1085
.label_1083:
	mov	esi, 0x20
.label_1085:
	mov	rdi, r10
	mov	rdx, r14
	mov	rbx, r10
	call	memset
	add	rbx, r14
	mov	r8, r13
	mov	r10, rbx
	mov	r14d, dword ptr [rsp + 0x2c]
	mov	r13, qword ptr [rsp + 0x18]
.label_1073:
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	je	.label_1095
	test	r15, r15
	je	.label_1091
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
	jb	.label_1102
	mov	r8, r12
	neg	r8
	mov	rdi, r10
	sub	rdi, r12
	dec	rdi
	mov	r9, -1
	sub	r8, rcx
	lea	rdx, [rsp + 0xa7]
	nop	word ptr [rax + rax]
.label_1211:
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
	jne	.label_1211
	sub	rdx, r12
.label_1102:
	test	rcx, rcx
	mov	r8, r14
	mov	r14d, dword ptr [rsp + 0x2c]
	je	.label_1091
	lea	rsi, [r10 + rdx - 1]
	lea	rdx, [r12 + rdx - 1]
	neg	rcx
	nop	dword ptr [rax + rax]
.label_1135:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_1135
	jmp	.label_1091
.label_1095:
	mov	rdi, r10
	mov	rsi, r12
	mov	rdx, r15
	mov	r14, r8
	mov	rbx, r10
	call	memcpy
	mov	r10, rbx
	mov	r8, r14
	mov	r14d, dword ptr [rsp + 0x2c]
.label_1091:
	add	r10, r15
	mov	rcx, r10
.label_1110:
	add	r8, r13
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
.label_1149:
	mov	r13, qword ptr [rsp + 0x58]
	nop	
.label_1105:
	mov	al, byte ptr [rbp + 1]
	inc	rbp
	mov	edi, 0xffffffff
	test	al, al
	jne	.label_1089
.label_1098:
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_1160
	test	r10, r10
	je	.label_1160
	mov	byte ptr [r10], 0
.label_1160:
	mov	qword ptr [rsp + 0x70], r8
.label_1079:
	mov	rax, qword ptr [rsp + 0x70]
	add	rsp, 0x4b8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1072:
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
	jmp	.label_1079
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cde0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1260
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1261
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1260
.label_1261:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1260
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1262
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_1262:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1260:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ce60

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1263
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1263
	test	byte ptr [rbx + 1], 1
	je	.label_1263
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_1263:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cea0

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
	jne	.label_1264
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1264
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1265
.label_1264:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1265:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1266
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1266:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x40cf10

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
