	.section	.text
	.align	16
	#Procedure 0x401bf0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
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
	je	.label_7
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_7:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.9
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.9
	mov	ecx, OFFSET FLAT:.str.42
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_8:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
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
	#Procedure 0x401e30

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	qword ptr [rsp + 0x28], rsi
	mov	dword ptr [rsp + 0x34], edi
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.11
	mov	esi, OFFSET FLAT:.str.12
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.11
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	dword ptr [rip + change_times],  0
	mov	byte ptr [rip + use_ref],  0
	mov	byte ptr [rip + no_create],  0
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_20
.label_1101:
	mov	byte ptr [rip + use_ref],  1
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + ref_file],  rax
	nop	dword ptr [rax + rax]
.label_20:
	mov	edx, OFFSET FLAT:.str.13
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, dword ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0x28]
	call	getopt_long
	cmp	eax, 0x60
	jle	.label_48
	lea	ecx, [rax - 0x61]
	cmp	ecx, 0x13
	ja	.label_37
	jmp	qword ptr [(rcx * 8) + label_53]
.label_1096:
	or	byte ptr [rip + change_times],  1
	jmp	.label_20
.label_37:
	cmp	eax, 0x80
	jne	.label_51
	mov	rsi, qword ptr [rip + optarg]
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:.str.15
	mov	edx, OFFSET FLAT:time_args
	mov	ecx, OFFSET FLAT:time_masks
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + time_masks]
	or	dword ptr [rip + change_times],  eax
	jmp	.label_20
.label_1097:
	mov	byte ptr [rip + no_create],  1
	jmp	.label_20
.label_1098:
	mov	r14, qword ptr [rip + optarg]
	jmp	.label_20
.label_1099:
	mov	byte ptr [rip + no_dereference],  1
	jmp	.label_20
.label_1100:
	or	byte ptr [rip + change_times],  2
	jmp	.label_20
.label_1102:
	mov	rsi, qword ptr [rip + optarg]
	mov	edi, OFFSET FLAT:newtime
	mov	edx, 6
	call	posixtime
	test	al, al
	je	.label_31
	mov	qword ptr [rip + label_14],  0
	movaps	xmm0, xmmword ptr [rip + newtime]
	movaps	xmmword ptr [rip + label_15],  xmm0
	mov	bl, 1
	jmp	.label_20
.label_48:
	cmp	eax, -1
	jne	.label_42
	cmp	dword ptr [rip + change_times],  0
	jne	.label_44
	mov	dword ptr [rip + change_times],  3
.label_44:
	test	bl, bl
	mov	al, byte ptr [rip + use_ref]
	je	.label_46
	test	r14, r14
	setne	cl
	or	cl, al
	test	cl, 1
	je	.label_52
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	jmp	.label_25
.label_46:
	test	al, 1
	je	.label_52
	mov	rsi, qword ptr [rip + ref_file]
	movzx	eax, byte ptr [rip + no_dereference]
	and	eax, 1
	lea	rdx, [rsp + 0x58]
	mov	edi, 1
	cmp	eax, 1
	jne	.label_39
	call	__lxstat
	jmp	.label_16
.label_52:
	test	r14, r14
	je	.label_18
	lea	rbx, [rsp + 0x58]
	mov	rdi, rbx
	call	gettime
	mov	edi, OFFSET FLAT:newtime
	mov	rsi, r14
	mov	rdx, rbx
	call	parse_datetime
	test	al, al
	je	.label_22
	movaps	xmm0, xmmword ptr [rip + newtime]
	movaps	xmmword ptr [rip + label_15],  xmm0
	mov	bl, 1
	cmp	dword ptr [rip + change_times],  3
	jne	.label_18
	mov	rax, qword ptr [rip + newtime]
	cmp	rax, qword ptr [rsp + 0x58]
	jne	.label_18
	mov	rcx, qword ptr [rip + label_14]
	cmp	rcx, qword ptr [rsp + 0x60]
	jne	.label_18
	xor	rax, 1
	mov	qword ptr [rsp + 0x48], rax
	mov	qword ptr [rsp + 0x50], rcx
	lea	rdi, [rsp + 0x38]
	lea	rdx, [rsp + 0x48]
	mov	rsi, r14
	call	parse_datetime
	test	al, al
	je	.label_22
	mov	rax, qword ptr [rsp + 0x38]
	mov	bl, 1
	cmp	rax, qword ptr [rsp + 0x48]
	jne	.label_18
	mov	rax, qword ptr [rsp + 0x40]
	cmp	rax, qword ptr [rsp + 0x50]
	setne	bl
.label_18:
	test	bl, 1
	jne	.label_43
	mov	eax, dword ptr [rsp + 0x34]
	sub	eax, dword ptr [rip + optind]
	cmp	eax, 2
	jl	.label_12
	call	posix2_version
	cmp	eax, 0x30daf
	jg	.label_12
	movsxd	rax, dword ptr [rip + optind]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	edi, OFFSET FLAT:newtime
	mov	edx, 9
	call	posixtime
	test	al, al
	je	.label_12
	mov	qword ptr [rip + label_14],  0
	movaps	xmm0, xmmword ptr [rip + newtime]
	movaps	xmmword ptr [rip + label_15],  xmm0
	mov	edi, OFFSET FLAT:.str.24
	call	getenv
	test	rax, rax
	jne	.label_23
	mov	edi, OFFSET FLAT:newtime
	call	localtime
	mov	rbx, rax
	test	rbx, rbx
	je	.label_23
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rcx + rax*8]
	movsxd	r8, dword ptr [rbx + 0x14]
	add	r8, 0x76c
	mov	r9d, dword ptr [rbx + 0x10]
	inc	r9d
	mov	eax, dword ptr [rbx + 0xc]
	mov	esi, dword ptr [rbx + 8]
	mov	edi, dword ptr [rbx]
	mov	ebp, dword ptr [rbx + 4]
	mov	dword ptr [rsp + 0x18], edi
	mov	dword ptr [rsp + 0x10], ebp
	mov	dword ptr [rsp + 8], esi
	mov	dword ptr [rsp], eax
	mov	edi, 0
	mov	esi, 0
	xor	eax, eax
	call	error
.label_23:
	inc	dword ptr [rip + optind]
	jmp	.label_43
.label_12:
	cmp	dword ptr [rip + change_times],  3
	jne	.label_45
	mov	byte ptr [rip + amtime_now],  1
	jmp	.label_43
.label_45:
	mov	qword ptr [rip + label_14],  0x3fffffff
	mov	qword ptr [rip + label_19],  0x3fffffff
	jmp	.label_43
.label_39:
	call	__xstat
.label_16:
	test	eax, eax
	jne	.label_50
	movups	xmm0, xmmword ptr [rsp + 0xa0]
	movaps	xmmword ptr [rip + newtime],  xmm0
	movups	xmm0, xmmword ptr [rsp + 0xb0]
	movaps	xmmword ptr [rip + label_15],  xmm0
	test	r14, r14
	je	.label_43
	mov	eax, dword ptr [rip + change_times]
	test	al, 1
	je	.label_17
	mov	edi, OFFSET FLAT:newtime
	mov	edx, OFFSET FLAT:newtime
	mov	rsi, r14
	call	parse_datetime
	test	al, al
	je	.label_22
	mov	eax, dword ptr [rip + change_times]
.label_17:
	test	al, 2
	je	.label_43
	mov	edi, OFFSET FLAT:label_15
	mov	edx, OFFSET FLAT:label_15
	mov	rsi, r14
	call	parse_datetime
	test	al, al
	je	.label_22
.label_43:
	mov	eax, dword ptr [rip + optind]
	cmp	eax, dword ptr [rsp + 0x34]
	je	.label_30
	mov	r15b, 1
	jge	.label_40
	nop	word ptr [rax + rax]
.label_29:
	cdqe	
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rcx + rax*8]
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x2d
	jne	.label_34
	cmp	byte ptr [r13 + 1], 0
	je	.label_38
.label_34:
	mov	al, byte ptr [rip + no_create]
	xor	r14d, r14d
	and	al, 1
	mov	ebp, 0xffffffff
	jne	.label_33
	mov	al, byte ptr [rip + no_dereference]
	and	al, 1
	jne	.label_33
	xor	r14d, r14d
	xor	edi, edi
	mov	edx, 0x941
	mov	ecx, 0x1b6
	mov	rsi, r13
	call	fd_reopen
	cmp	eax, -1
	je	.label_47
	mov	ebp, eax
	jmp	.label_33
.label_38:
	mov	ebp, 1
	xor	r14d, r14d
	jmp	.label_33
.label_47:
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0x16
	ja	.label_28
	mov	ecx, 0x600002
	bt	ecx, eax
	jb	.label_33
.label_28:
	mov	r14d, eax
	nop	dword ptr [rax + rax]
.label_33:
	mov	eax, dword ptr [rip + change_times]
	cmp	eax, 1
	je	.label_9
	cmp	eax, 3
	je	.label_11
	cmp	eax, 2
	jne	.label_13
	mov	qword ptr [rip + label_14],  0x3ffffffe
	jmp	.label_11
	nop	word ptr cs:[rax + rax]
.label_9:
	mov	qword ptr [rip + label_19],  0x3ffffffe
.label_11:
	mov	al, byte ptr [rip + amtime_now]
	and	al, 1
	mov	ecx, OFFSET FLAT:newtime
	mov	eax, 0
	cmovne	rcx, rax
	cmp	ebp, 1
	mov	rdx, r13
	cmove	rdx, rax
	movzx	r8d, byte ptr [rip + no_dereference]
	and	r8d, 1
	shl	r8d, 8
	cmp	ebp, -1
	cmovne	r8d, eax
	mov	esi, 0xffffff9c
	mov	edi, ebp
	call	fdutimensat
	mov	ebx, eax
	test	ebp, ebp
	je	.label_32
	cmp	ebp, 1
	setne	al
	test	ebx, ebx
	je	.label_36
	test	al, al
	jne	.label_36
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_36
	mov	al, byte ptr [rip + no_create]
	and	al, 1
	mov	r12b, 1
	je	.label_41
	jmp	.label_10
	nop	
.label_32:
	xor	edi, edi
	call	close
	test	eax, eax
	je	.label_36
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
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
	jmp	.label_35
	nop	word ptr [rax + rax]
.label_36:
	mov	r12b, 1
	test	ebx, ebx
	je	.label_10
.label_41:
	test	r14d, r14d
	je	.label_24
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
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
	jmp	.label_21
.label_24:
	movzx	ebx, byte ptr [rip + no_create]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	and	ebx, 1
	cmp	ebx, 1
	jne	.label_26
	mov	r12b, 1
	cmp	ebp, 2
	je	.label_10
.label_26:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
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
.label_21:
	mov	rdx, rbx
.label_35:
	call	error
.label_10:
	and	r15b, r12b
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, dword ptr [rsp + 0x34]
	jl	.label_29
.label_40:
	movzx	eax, r15b
	xor	eax, 1
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_13:
	mov	edi, OFFSET FLAT:.str.56
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 0x99
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.touch
	call	__assert_fail
.label_42:
	cmp	eax, 0xffffff7d
	je	.label_49
	cmp	eax, 0xffffff7e
	jne	.label_51
	xor	edi, edi
	call	usage
.label_51:
	mov	edi, 1
	call	usage
.label_49:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp + 0x18], 0
	mov	qword ptr [rsp + 16], OFFSET FLAT:.str.21
	mov	qword ptr [rsp + 8], OFFSET FLAT:.str.20
	mov	qword ptr [rsp], OFFSET FLAT:.str.19
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.17_0
	mov	r9d, OFFSET FLAT:.str.18_0
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_31:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	jmp	.label_27
.label_30:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
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
.label_22:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
.label_27:
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_50:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402610

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402620

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
	mov	qword ptr [rsp + 0x20], rbp
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_55
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_54:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_60
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_57
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_59
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_58
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_60
.label_58:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_60
.label_59:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_60:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_54
	jmp	.label_56
.label_55:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_56:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_57:
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
	.align	16
	#Procedure 0x402720
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
	je	.label_61
	mov	esi, OFFSET FLAT:.str.1_0
	jmp	.label_62
.label_61:
	mov	esi, OFFSET FLAT:.str_1
.label_62:
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
	.align	16
	#Procedure 0x402790

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
	mov	rbx, rdi
	mov	qword ptr [rsp], rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbx]
	test	rbx, rbx
	je	.label_64
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_67:
	test	r15, r15
	je	.label_63
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_66
.label_63:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_0
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_68
	nop	word ptr cs:[rax + rax]
.label_66:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_68:
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_67
.label_64:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_65
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
.label_65:
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
	.align	16
	#Procedure 0x4028c0

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
	mov	rbx, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_70
	mov	qword ptr [rsp + 0x10], rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_71
	mov	esi, OFFSET FLAT:.str.1_0
	jmp	.label_69
.label_71:
	mov	esi, OFFSET FLAT:.str_1
.label_69:
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r14
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
.label_70:
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
	.align	16
	#Procedure 0x402980
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
	je	.label_72
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_73:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_72
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_73
.label_72:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4029f0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a00
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a10

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_77
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_76
	cmp	dword ptr [rbp], 0x20
	jne	.label_76
.label_77:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_75
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_76:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_74
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_75:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_74:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_1
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
	#Procedure 0x402ad0

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
	je	.label_78
	test	ebx, ebx
	js	.label_78
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
	jmp	.label_79
.label_78:
	mov	eax, ebx
.label_79:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b30

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
	js	.label_82
	mov	edi, ebx
	mov	rsi, r12
	call	futimens
.label_82:
	test	rbp, rbp
	je	.label_80
	test	ebx, ebx
	js	.label_83
	cmp	eax, -1
	jne	.label_80
	call	__errno_location
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	dword ptr [rcx], 0x26
	jne	.label_81
.label_83:
	mov	edi, r15d
	mov	rsi, rbp
	mov	rdx, r12
	mov	ecx, r14d
	call	utimensat
.label_80:
	cmp	eax, 1
	jne	.label_81
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	eax, 0xffffffff
.label_81:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bb0

	.globl gettime
	.type gettime, @function
gettime:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402bc0
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
	.align	16
	#Procedure 0x402be0

	.globl yyparse
	.type yyparse, @function
yyparse:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x598
	mov	r13, rdi
	lea	r8, [rsp + 0x550]
	lea	r15, [rsp + 0xf0]
	mov	word ptr [rsp + 0x550], 0
	lea	r9, [rsp + 0x576]
	lea	rax, [r13 + 0x58]
	mov	qword ptr [rsp + 0x80], rax
	lea	rax, [r13 + 0x50]
	mov	qword ptr [rsp + 0x70], rax
	lea	rax, [r13 + 0x20]
	mov	qword ptr [rsp + 0x78], rax
	mov	r14d, 0xfffffffe
	movabs	rax, 0x3ffffff03ffffff
	movabs	rcx, 0x3ffffffffffffff
	and	rcx, rax
	mov	qword ptr [rsp + 0x58], rcx
	mov	r12d, 0x80001f
	mov	eax, 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xc8], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x90], rcx
	mov	dword ptr [rsp + 0x9c], 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x88], rcx
	jmp	.label_164
	nop	
.label_224:
	movsxd	rbp, eax
	movsx	edx, byte ptr [rbp + yypact]
	cmp	edx, -0x5d
	je	.label_155
	cmp	r14d, -2
	jne	.label_127
	mov	dword ptr [rsp + 0xe0], edx
	mov	qword ptr [rsp + 0xe8], rbp
	mov	rdx, qword ptr [r13]
	movabs	r10, 0x8000000000000000
	mov	r11d, 0xffffffff
	jmp	.label_131
	nop	word ptr cs:[rax + rax]
.label_142:
	inc	rdx
	mov	qword ptr [r13], rdx
.label_131:
	mov	bl, byte ptr [rdx]
	movzx	ecx, bl
	lea	eax, [rcx - 9]
	cmp	eax, 0x17
	ja	.label_139
	bt	r12d, eax
	jb	.label_142
.label_139:
	lea	eax, [rcx - 0x30]
	cmp	eax, 0xa
	jb	.label_147
	cmp	ecx, 0x2d
	je	.label_147
	cmp	ecx, 0x2b
	jne	.label_149
	nop	dword ptr [rax]
.label_147:
	cmp	ecx, 0x2d
	je	.label_151
	xor	eax, eax
	cmp	ecx, 0x2b
	jne	.label_152
.label_151:
	cmp	ecx, 0x2d
	mov	eax, 1
	cmove	eax, r11d
	inc	rdx
	mov	rdi, rdx
	nop	word ptr cs:[rax + rax]
.label_160:
	mov	rdx, rdi
	mov	qword ptr [r13], rdx
	mov	bl, byte ptr [rdx]
	movzx	ecx, bl
	lea	ebp, [rcx - 9]
	cmp	ebp, 0x17
	ja	.label_157
	lea	rdi, [rdx + 1]
	bt	r12d, ebp
	jb	.label_160
.label_157:
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_131
	jmp	.label_152
.label_149:
	lea	eax, [rcx - 0x41]
	cmp	eax, 0x39
	ja	.label_274
	movabs	rsi, 0x3ffffff03ffffff
	bt	rsi, rax
	jb	.label_167
.label_274:
	cmp	ecx, 0x28
	jne	.label_169
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_190:
	mov	rax, rdx
	lea	rdx, [rax + 1]
	mov	qword ptr [r13], rdx
	movzx	esi, byte ptr [rax]
	cmp	esi, 0x28
	je	.label_178
	movzx	eax, sil
	cmp	eax, 0x29
	je	.label_181
	xor	eax, eax
	test	sil, sil
	jne	.label_183
	jmp	.label_186
	nop	word ptr cs:[rax + rax]
.label_181:
	dec	rcx
	jmp	.label_183
	nop	word ptr cs:[rax + rax]
.label_178:
	inc	rcx
.label_183:
	test	rcx, rcx
	jne	.label_190
	jmp	.label_131
.label_186:
	xor	r14d, r14d
	mov	rbp, qword ptr [rsp + 0xe8]
	mov	edx, dword ptr [rsp + 0xe0]
	jmp	.label_144
.label_152:
	mov	rdi, rdx
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_269:
	mov	rbp, rdi
	mov	r14d, 0x3f
	test	rcx, rcx
	js	.label_198
	movabs	rsi, 0xccccccccccccccc
	cmp	rcx, rsi
	jle	.label_145
	jmp	.label_204
	nop	word ptr cs:[rax + rax]
.label_198:
	movabs	rsi, 0xf333333333333334
	cmp	rcx, rsi
	jl	.label_204
.label_145:
	add	rcx, rcx
	movzx	edi, bl
	mov	ebx, 0x30
	sub	ebx, edi
	add	edi, -0x30
	test	eax, eax
	lea	rsi, [rcx + rcx*4]
	cmovs	edi, ebx
	movsxd	rcx, edi
	test	ecx, ecx
	js	.label_210
	lea	rdi, [r10 - 1]
	sub	rdi, rcx
	mov	r14d, 0x3f
	cmp	rdi, rsi
	jge	.label_214
	jmp	.label_204
	nop	word ptr [rax + rax]
.label_210:
	mov	rdi, r10
	sub	rdi, rcx
	mov	r14d, 0x3f
	cmp	rsi, rdi
	jl	.label_204
.label_214:
	add	rcx, rsi
	lea	rdi, [rbp + 1]
	movzx	ebx, byte ptr [rbp + 1]
	mov	esi, ebx
	add	esi, -0x30
	cmp	esi, 0xa
	jb	.label_269
	or	bl, 2
	movzx	esi, bl
	cmp	esi, 0x2e
	jne	.label_223
	movsx	esi, byte ptr [rbp + 2]
	add	esi, -0x30
	cmp	esi, 9
	ja	.label_223
	lea	edx, [rsi + rsi*4]
	movsx	esi, byte ptr [rbp + 3]
	add	esi, -0x30
	lea	rdi, [rbp + 3]
	add	rbp, 4
	cmp	esi, 0xa
	cmovae	rbp, rdi
	mov	ebx, 0
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
	test	eax, eax
	jns	.label_231
	movsx	ebp, byte ptr [rdx]
	jmp	.label_265
	nop	word ptr cs:[rax + rax]
.label_271:
	movsx	ebp, byte ptr [rdx + 1]
	inc	rdx
.label_265:
	mov	edi, ebp
	add	edi, -0x30
	cmp	edi, 0xa
	jae	.label_231
	movzx	edi, bpl
	cmp	edi, 0x30
	je	.label_271
	inc	esi
.label_231:
	dec	rdx
	nop	
.label_273:
	movsx	edi, byte ptr [rdx + 1]
	inc	rdx
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_273
	test	eax, eax
	jns	.label_87
	test	esi, esi
	je	.label_87
	mov	r14d, 0x3f
	cmp	rcx, r10
	jne	.label_110
.label_204:
	mov	rcx, qword ptr [rsp + 0xc8]
	jmp	.label_94
.label_223:
	mov	esi, eax
	shr	esi, 0x1f
	mov	dword ptr [rsp + 0x9c], esi
	mov	qword ptr [r13], rdi
	sub	rdi, rdx
	test	eax, eax
	sete	al
	movzx	r14d, al
	or	r14d, 0x112
	mov	qword ptr [rsp + 0x90], rdi
.label_94:
	mov	rbp, qword ptr [rsp + 0xe8]
	mov	edx, dword ptr [rsp + 0xe0]
	jmp	.label_182
.label_169:
	lea	rax, [rdx + 1]
	mov	qword ptr [r13], rax
	movzx	r14d, byte ptr [rdx]
	jmp	.label_114
.label_167:
	lea	rdi, [rsp + 0x580]
	mov	rax, rdi
	mov	rsi, qword ptr [rsp + 0x58]
	nop	dword ptr [rax + rax]
.label_137:
	lea	rcx, [rsp + 0x593]
	cmp	rax, rcx
	jae	.label_124
	mov	byte ptr [rax], bl
	inc	rax
	mov	rdx, qword ptr [r13]
.label_124:
	mov	rcx, rdx
	lea	rdx, [rcx + 1]
	mov	qword ptr [r13], rdx
	movzx	ebx, byte ptr [rcx + 1]
	mov	ecx, ebx
	add	ecx, -0x41
	cmp	ecx, 0x39
	ja	.label_128
	mov	rbp, rsi
	shr	rbp, cl
	and	ebp, 1
	jmp	.label_132
	nop	word ptr [rax + rax]
.label_128:
	xor	ebp, ebp
.label_132:
	movzx	ecx, bl
	cmp	ecx, 0x2e
	je	.label_137
	test	bpl, bpl
	jne	.label_137
	mov	qword ptr [rsp + 0xa0], r8
	mov	byte ptr [rax], 0
	mov	al, byte ptr [rsp + 0x580]
	test	al, al
	lea	rcx, [rsp + 0x581]
	je	.label_138
	nop	dword ptr [rax]
.label_209:
	movzx	edx, al
	add	edx, -0x61
	cmp	edx, 0x1a
	jae	.label_146
	add	al, 0xe0
.label_146:
	mov	byte ptr [rcx - 1], al
	mov	al, byte ptr [rcx]
	inc	rcx
	test	al, al
	jne	.label_209
.label_138:
	mov	esi, OFFSET FLAT:.str.99
	mov	rbp, rdi
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:meridian_table
	je	.label_86
	mov	esi, OFFSET FLAT:.str.100
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_255
	je	.label_86
	mov	esi, OFFSET FLAT:.str.101
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_163
	je	.label_86
	mov	esi, OFFSET FLAT:.str.102
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_168
	je	.label_86
	mov	rdi, rbp
	call	strlen
	mov	r14b, 1
	cmp	rax, 3
	je	.label_170
	cmp	rax, 4
	jne	.label_174
	movzx	ecx, byte ptr [rsp + 0x583]
	cmp	ecx, 0x2e
	sete	r14b
	jmp	.label_170
.label_110:
	dec	rcx
	mov	edi, 0x3b9aca00
	sub	edi, esi
	mov	esi, edi
.label_87:
	mov	rbp, qword ptr [rsp + 0xe8]
	mov	rdi, rcx
	shr	rdi, 8
	mov	qword ptr [rsp + 0x88], rdi
	mov	dword ptr [rsp + 0x9c], ecx
	movsxd	rcx, esi
	mov	qword ptr [r13], rdx
	test	eax, eax
	sete	al
	movzx	r14d, al
	or	r14d, 0x114
	mov	edx, dword ptr [rsp + 0xe0]
	jmp	.label_182
.label_174:
	xor	r14d, r14d
.label_170:
	mov	qword ptr [rsp + 0xd8], rax
	mov	esi, OFFSET FLAT:.str.103
	mov	ebx, OFFSET FLAT:month_and_day_table
.label_206:
	test	r14b, r14b
	mov	rdi, rbp
	je	.label_196
	mov	edx, 3
	mov	rbp, rdi
	call	strncmp
	jmp	.label_201
.label_196:
	mov	rbp, rdi
	call	strcmp
.label_201:
	test	eax, eax
	je	.label_86
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_206
	mov	rdi, r13
	mov	rsi, rbp
	call	lookup_zone
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_86
	mov	esi, OFFSET FLAT:.str.177
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:dst_table
	je	.label_86
	mov	esi, OFFSET FLAT:.str.178
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:time_units_table
	je	.label_86
	mov	esi, OFFSET FLAT:.str.179
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_218
	je	.label_86
	mov	esi, OFFSET FLAT:.str.180
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_221
	je	.label_86
	mov	esi, OFFSET FLAT:.str.181
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_226
	je	.label_86
	mov	esi, OFFSET FLAT:.str.182
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_192
	je	.label_86
	mov	esi, OFFSET FLAT:.str.183
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_97
	je	.label_86
	mov	esi, OFFSET FLAT:.str.184
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_103
	je	.label_86
	mov	esi, OFFSET FLAT:.str.185
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_112
	je	.label_86
	mov	esi, OFFSET FLAT:.str.186
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_118
	je	.label_86
	mov	esi, OFFSET FLAT:.str.187
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_125
	je	.label_86
	mov	rax, qword ptr [rsp + 0xd8]
	movzx	eax, byte ptr [rax + rbp - 1]
	cmp	eax, 0x53
	jne	.label_254
	mov	rax, qword ptr [rsp + 0xd8]
	mov	byte ptr [rsp + rax + 0x57f], 0
	mov	esi, OFFSET FLAT:.str.178
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:time_units_table
	je	.label_86
	mov	esi, OFFSET FLAT:.str.179
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_218
	je	.label_86
	mov	esi, OFFSET FLAT:.str.180
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_221
	je	.label_86
	mov	esi, OFFSET FLAT:.str.181
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_226
	je	.label_86
	mov	esi, OFFSET FLAT:.str.182
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_192
	je	.label_86
	mov	esi, OFFSET FLAT:.str.183
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_97
	je	.label_86
	mov	esi, OFFSET FLAT:.str.184
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_103
	je	.label_86
	mov	esi, OFFSET FLAT:.str.185
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_112
	je	.label_86
	mov	esi, OFFSET FLAT:.str.186
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_118
	je	.label_86
	mov	esi, OFFSET FLAT:.str.187
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_125
	je	.label_86
	mov	rax, qword ptr [rsp + 0xd8]
	mov	byte ptr [rsp + rax + 0x57f], 0x53
.label_254:
	mov	esi, OFFSET FLAT:.str.188
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:relative_time_table
	je	.label_86
	mov	esi, OFFSET FLAT:.str.189
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_134
	je	.label_86
	mov	esi, OFFSET FLAT:.str.190
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_140
	je	.label_86
	mov	esi, OFFSET FLAT:.str.191
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_150
	je	.label_86
	mov	esi, OFFSET FLAT:.str.192
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_154
	je	.label_86
	mov	esi, OFFSET FLAT:.str.193
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_156
	je	.label_86
	mov	esi, OFFSET FLAT:.str.194
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_162
	je	.label_86
	mov	esi, OFFSET FLAT:.str.195
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_166
	je	.label_86
	mov	esi, OFFSET FLAT:.str.196
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_171
	je	.label_86
	mov	esi, OFFSET FLAT:.str.197
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_179
	je	.label_86
	mov	esi, OFFSET FLAT:.str.198
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_184
	je	.label_86
	mov	esi, OFFSET FLAT:.str.199
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_187
	je	.label_86
	mov	esi, OFFSET FLAT:.str.200
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_99
	je	.label_86
	mov	esi, OFFSET FLAT:.str.201
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_197
	je	.label_86
	mov	esi, OFFSET FLAT:.str.202
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_203
	je	.label_86
	mov	esi, OFFSET FLAT:.str.203
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_207
	je	.label_86
	mov	esi, OFFSET FLAT:.str.204
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_202
	je	.label_86
	mov	esi, OFFSET FLAT:.str.205
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_215
	je	.label_86
	mov	esi, OFFSET FLAT:.str.206
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_217
	je	.label_86
	mov	esi, OFFSET FLAT:.str.207
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_220
	je	.label_86
	movzx	edi, word ptr [rsp + 0x580]
	cmp	qword ptr [rsp + 0xd8], 1
	mov	cl, dil
	jne	.label_222
	movzx	edx, cl
	cmp	edx, 0x41
	mov	ebx, OFFSET FLAT:military_table
	mov	rsi, rbp
	je	.label_86
	cmp	edx, 0x42
	mov	ebx, OFFSET FLAT:label_232
	je	.label_86
	cmp	edx, 0x43
	mov	ebx, OFFSET FLAT:label_216
	je	.label_86
	cmp	edx, 0x44
	mov	ebx, OFFSET FLAT:label_236
	je	.label_86
	cmp	edx, 0x45
	mov	ebx, OFFSET FLAT:label_237
	je	.label_86
	cmp	edx, 0x46
	mov	ebx, OFFSET FLAT:label_241
	je	.label_86
	cmp	edx, 0x47
	mov	ebx, OFFSET FLAT:label_129
	je	.label_86
	cmp	edx, 0x48
	mov	ebx, OFFSET FLAT:label_246
	je	.label_86
	cmp	edx, 0x49
	mov	ebx, OFFSET FLAT:label_249
	je	.label_86
	cmp	edx, 0x4b
	mov	ebx, OFFSET FLAT:label_85
	je	.label_86
	cmp	edx, 0x4c
	mov	ebx, OFFSET FLAT:label_252
	je	.label_86
	cmp	edx, 0x4d
	mov	ebx, OFFSET FLAT:label_253
	je	.label_86
	cmp	edx, 0x4e
	mov	ebx, OFFSET FLAT:label_143
	je	.label_86
	cmp	edx, 0x4f
	mov	ebx, OFFSET FLAT:label_256
	je	.label_86
	cmp	edx, 0x50
	mov	ebx, OFFSET FLAT:label_176
	je	.label_86
	cmp	edx, 0x51
	mov	ebx, OFFSET FLAT:label_262
	je	.label_86
	cmp	edx, 0x52
	mov	ebx, OFFSET FLAT:label_264
	je	.label_86
	cmp	edx, 0x53
	mov	ebx, OFFSET FLAT:label_266
	je	.label_86
	cmp	edx, 0x54
	mov	ebx, OFFSET FLAT:label_267
	je	.label_86
	cmp	edx, 0x55
	mov	ebx, OFFSET FLAT:label_194
	je	.label_86
	cmp	edx, 0x56
	mov	ebx, OFFSET FLAT:label_258
	je	.label_86
	cmp	edx, 0x57
	mov	ebx, OFFSET FLAT:label_275
	je	.label_86
	cmp	edx, 0x58
	mov	ebx, OFFSET FLAT:label_88
	je	.label_86
	cmp	edx, 0x59
	mov	ebx, OFFSET FLAT:label_92
	je	.label_86
	test	cl, cl
	je	.label_101
	cmp	edx, 0x5a
	mov	ebx, OFFSET FLAT:label_98
	je	.label_86
	jmp	.label_159
.label_222:
	test	cl, cl
	mov	rsi, rbp
	je	.label_101
.label_159:
	shr	edi, 8
	movzx	ecx, cl
	cmp	ecx, 0x2e
	sete	dl
	lea	rcx, [rsp + 0x581]
	cmove	rcx, rsi
	mov	rbp, rsi
	mov	byte ptr [rcx], dil
	test	dil, dil
	lea	rax, [rsp + 0x582]
	je	.label_177
.label_238:
	movzx	esi, byte ptr [rax - 1]
	lea	rdi, [rcx + 1]
	cmp	esi, 0x2e
	mov	sil, 1
	je	.label_173
	mov	sil, dl
.label_173:
	cmovne	rcx, rdi
	mov	dl, byte ptr [rax]
	mov	byte ptr [rcx], dl
	inc	rax
	test	dl, dl
	mov	dl, sil
	jne	.label_238
.label_177:
	test	dl, 1
	mov	rsi, rbp
	je	.label_101
	mov	rdi, r13
	call	lookup_zone
	mov	rbx, rax
	test	rbx, rbx
	je	.label_101
.label_86:
	mov	r14d, dword ptr [rbx + 8]
	mov	eax, dword ptr [rbx + 0xc]
	mov	dword ptr [rsp + 0x9c], eax
	sar	eax, 8
	cdqe	
	mov	qword ptr [rsp + 0x88], rax
.label_133:
	mov	r8, qword ptr [rsp + 0xa0]
	lea	r9, [rsp + 0x576]
.label_114:
	mov	rbp, qword ptr [rsp + 0xe8]
	mov	edx, dword ptr [rsp + 0xe0]
	nop	
.label_127:
	xor	eax, eax
	test	r14d, r14d
	jle	.label_141
	mov	eax, 2
	cmp	r14d, 0x115
	mov	rcx, qword ptr [rsp + 0xc8]
	ja	.label_144
.label_182:
	movsxd	rax, r14d
	movzx	eax, byte ptr [rax + yytranslate]
	mov	qword ptr [rsp + 0xc8], rcx
	jmp	.label_144
.label_141:
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_144:
	add	edx, eax
	cmp	edx, 0x70
	ja	.label_155
	movsxd	rcx, edx
	movsx	edx, byte ptr [rcx + yycheck]
	cmp	edx, eax
	jne	.label_155
	movzx	eax, byte ptr [rcx + yytable]
	or	rcx, 4
	cmp	rcx, 0x6f
	jne	.label_158
	neg	eax
	jmp	.label_93
	nop	
.label_155:
	movzx	eax, byte ptr [rbp + yydefact]
	test	eax, eax
	mov	ebp, 1
	je	.label_89
.label_93:
	movsxd	r10, eax
	movzx	r11d, byte ptr [r10 + yyr2]
	mov	eax, 1
	sub	rax, r11
	imul	rax, rax, 0x38
	mov	rsi, qword ptr [r15 + rax]
	mov	rdx, qword ptr [r15 + rax + 8]
	mov	rdi, qword ptr [r15 + rax + 0x10]
	mov	rcx, qword ptr [r15 + rax + 0x18]
	mov	qword ptr [rsp + 0xe8], rcx
	mov	rcx, qword ptr [r15 + rax + 0x20]
	mov	qword ptr [rsp + 0xe0], rcx
	mov	rcx, qword ptr [r15 + rax + 0x28]
	mov	qword ptr [rsp + 0xd8], rcx
	mov	ecx, dword ptr [r15 + rax + 0x30]
	mov	dword ptr [rsp + 0xd4], ecx
	mov	ebx, dword ptr [r15 + rax + 0x34]
	lea	eax, [r10 - 4]
	cmp	eax, 0x57
	ja	.label_84
	jmp	qword ptr [(rax * 8) + label_188]
.label_1162:
	mov	rax, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r15]
	movups	xmm1, xmmword ptr [r15 + 0x10]
	movups	xmm2, xmmword ptr [r15 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	ebp, 1
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, 1
	mov	qword ptr [rsp + 0xb0], rdi
	mov	rdi, r13
	mov	dword ptr [rsp + 0xac], ebx
	mov	rbx, r8
	mov	qword ptr [rsp + 0x60], r10
	mov	qword ptr [rsp + 0x68], r11
	mov	qword ptr [rsp + 0xc0], rdx
	call	apply_relative_time
	mov	rdx, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	r11, qword ptr [rsp + 0x68]
	mov	r10, qword ptr [rsp + 0x60]
	lea	r9, [rsp + 0x576]
	mov	r8, rbx
	mov	ebx, dword ptr [rsp + 0xac]
	jmp	.label_208
.label_158:
	mov	rcx, qword ptr [rsp + 0x88]
	shl	rcx, 8
	mov	edx, dword ptr [rsp + 0x9c]
	movzx	edx, dl
	or	rdx, rcx
	mov	qword ptr [r15 + 0x38], rdx
	mov	rcx, qword ptr [rsp + 0xc8]
	mov	qword ptr [r15 + 0x40], rcx
	mov	rcx, qword ptr [rsp + 0x90]
	mov	qword ptr [r15 + 0x48], rcx
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15 + 0x60], xmm0
	movdqu	xmmword ptr [r15 + 0x50], xmm0
	lea	rcx, [r15 + 0x38]
	mov	r14d, 0xfffffffe
	jmp	.label_135
.label_1170:
	mov	rdi, qword ptr [r15]
	lea	rcx, [r15 - 0x30]
	test	rdi, rdi
	jns	.label_229
	mov	rsi, qword ptr [r15 - 0x30]
	jmp	.label_233
.label_1182:
	mov	rsi, qword ptr [r15 + 8]
	xor	edx, edx
	jmp	.label_84
.label_1164:
	mov	rsi, qword ptr [r15 - 0x30]
	jmp	.label_235
.label_1176:
	mov	rax, qword ptr [r15 - 0x30]
	jmp	.label_200
.label_1167:
	mov	rdx, qword ptr [r15 - 0x30]
	xor	esi, esi
	jmp	.label_126
.label_1171:
	mov	rdi, qword ptr [r15]
	jmp	.label_240
.label_1173:
	mov	rax, qword ptr [r15 - 0x30]
	jmp	.label_243
.label_1179:
	mov	rax, qword ptr [r15 - 0x30]
	jmp	.label_244
.label_1180:
	mov	rax, qword ptr [r15 - 0x38]
	mov	qword ptr [rsp + 0xd8], rax
	mov	eax, dword ptr [r15 - 0x30]
	mov	dword ptr [rsp + 0xd4], eax
	xor	esi, esi
	xor	edx, edx
	xor	edi, edi
	xor	eax, eax
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0xe0], rax
	jmp	.label_84
.label_1184:
	mov	qword ptr [rsp + 0xb0], rdi
	movdqu	xmm0, xmmword ptr [r15 - 0x38]
	mov	rdi, qword ptr [r15 - 0x28]
	mov	rax, qword ptr [r13 + 0xa8]
	test	rax, rax
	je	.label_116
	cmp	qword ptr [r13 + 0x30], 0
	jne	.label_116
	cmp	byte ptr [r13 + 0xa1], 0
	je	.label_257
.label_116:
	cmp	rdi, 5
	jl	.label_260
	mov	qword ptr [rsp + 0xc0], rdx
	mov	qword ptr [rsp + 0xb8], rsi
	mov	dword ptr [rsp + 0xac], ebx
	mov	qword ptr [rsp + 0x68], r11
	mov	qword ptr [rsp + 0x60], r10
	mov	rbx, r8
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
	jmp	.label_120
.label_1169:
	mov	rdi, qword ptr [r15]
	lea	rcx, [r15 - 0x38]
	test	rdi, rdi
	js	.label_113
.label_229:
	test	rdi, rdi
	je	.label_115
	mov	rsi, qword ptr [rcx]
	movabs	rax, 0x8000000000000000
	test	rsi, rsi
	js	.label_119
	dec	rax
	jmp	.label_123
.label_1168:
	xor	esi, esi
	mov	edx, 1
	jmp	.label_126
.label_1161:
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, dword ptr [r15]
	mov	rax, qword ptr [r15 - 8]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r15 - 0x38]
	movups	xmm1, xmmword ptr [r15 - 0x28]
	movups	xmm2, xmmword ptr [r15 - 0x18]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	qword ptr [rsp + 0xb0], rdi
	mov	rdi, r13
	mov	qword ptr [rsp + 0xa0], r8
	mov	rbp, r9
	mov	qword ptr [rsp + 0x60], r10
	mov	dword ptr [rsp + 0xac], ebx
	mov	rbx, r11
	mov	qword ptr [rsp + 0xc0], rdx
	call	apply_relative_time
	mov	rdx, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	r11, rbx
	mov	ebx, dword ptr [rsp + 0xac]
	mov	r10, qword ptr [rsp + 0x60]
	mov	r9, rbp
	mov	r8, qword ptr [rsp + 0xa0]
	mov	ebp, 1
.label_208:
	test	al, al
	jne	.label_84
	jmp	.label_89
.label_1160:
	mov	r9, rdx
	mov	rax, qword ptr [r15 - 0x60]
	mov	rcx, qword ptr [rsp + 0x78]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [r15 - 0x70]
	movdqu	xmmword ptr [rcx], xmm0
	mov	rax, qword ptr [r15 - 0x30]
	mov	rcx, rax
	neg	rcx
	movabs	rdx, 0x8000000000000000
	cmp	rax, rdx
	mov	qword ptr [r13 + 0x38], rcx
	mov	ebp, 1
	je	.label_89
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, rax
	neg	rcx
	cmp	rax, rdx
	mov	qword ptr [r13 + 0x40], rcx
	mov	rdx, r9
	lea	r9, [rsp + 0x576]
	jne	.label_84
	jmp	.label_89
.label_1158:
	mov	rax, qword ptr [r15 - 0x30]
	mov	qword ptr [r13 + 0x40], rax
	mov	rax, qword ptr [r15]
	mov	qword ptr [r13 + 0x38], rax
	jmp	.label_84
.label_1185:
	mov	rsi, -1
	jmp	.label_84
.label_1140:
	mov	dword ptr [r13 + 0x14], 1
	inc	qword ptr [r13 + 0xc0]
	jmp	.label_84
.label_1143:
	mov	eax, dword ptr [r15 - 0x38]
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_191
.label_1135:
	mov	rax, qword ptr [r15 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0x70]
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [r13 + 0x1c], 2
	jmp	.label_84
.label_1147:
	mov	eax, 0xe10
	add	eax, dword ptr [r15 - 0x38]
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_84
.label_1145:
	mov	qword ptr [rsp + 0xc0], rdx
	mov	rdx, qword ptr [r15 - 0x30]
	imul	rcx, rdx, 0x64
	cmp	qword ptr [r15 - 0x28], 3
	mov	rax, qword ptr [r15]
	cmovge	rcx, rdx
	test	rax, rax
	cmovns	rcx, rdx
	js	.label_205
	mov	qword ptr [rsp + 0xb8], rsi
	mov	qword ptr [rsp + 0xb0], rdi
	mov	dl, byte ptr [r15 - 0x38]
	test	rcx, rcx
	js	.label_211
	movabs	rsi, 0x222222222222222
	cmp	rcx, rsi
	movabs	rdi, 0x8000000000000000
	jg	.label_225
	xor	esi, esi
	jmp	.label_193
.label_1132:
	mov	rax, qword ptr [r15 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0x70]
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_219
.label_1155:
	mov	r9, rdx
	mov	rax, qword ptr [r15 - 0x70]
	mov	qword ptr [r13 + 0x38], rax
	mov	rax, qword ptr [r15 - 0x30]
	mov	rcx, rax
	neg	rcx
	movabs	rdx, 0x8000000000000000
	cmp	rax, rdx
	mov	qword ptr [r13 + 0x40], rcx
	mov	ebp, 1
	je	.label_89
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, rax
	neg	rcx
	cmp	rax, rdx
	mov	qword ptr [r13 + 0x28], rcx
	mov	rdx, r9
	lea	r9, [rsp + 0x576]
	jne	.label_234
	jmp	.label_89
.label_1150:
	mov	rax, qword ptr [r15 - 0x38]
	jmp	.label_239
.label_1144:
	mov	dword ptr [r13 + 0x18], 0x6270
.label_191:
	mov	rax, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r15]
	movups	xmm1, xmmword ptr [r15 + 0x10]
	movups	xmm2, xmmword ptr [r15 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	ebp, 1
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, 1
	mov	qword ptr [rsp + 0xb0], rdi
	mov	rdi, r13
	mov	qword ptr [rsp + 0xa0], r8
	mov	dword ptr [rsp + 0xac], ebx
	mov	rbx, r10
	mov	qword ptr [rsp + 0x68], r11
	mov	qword ptr [rsp + 0xc0], rdx
	call	apply_relative_time
	mov	rcx, qword ptr [rsp + 0x68]
	test	al, al
	je	.label_89
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	mov	rbp, rcx
	jmp	.label_259
.label_1134:
	mov	rax, qword ptr [r15 - 0x110]
	mov	rcx, qword ptr [r15 - 0xa0]
	mov	r9, rdx
	mov	rdx, qword ptr [r15 - 0x38]
	mov	rbp, rsi
	movsxd	rsi, dword ptr [r15 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	mov	qword ptr [r13 + 0x50], rcx
	mov	qword ptr [r13 + 0x58], rdx
	mov	rdx, r9
	lea	r9, [rsp + 0x576]
	mov	qword ptr [r13 + 0x60], rsi
	mov	rsi, rbp
	jmp	.label_219
.label_1141:
	mov	eax, dword ptr [r15]
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_84
.label_1124:
	inc	qword ptr [r13 + 0xc8]
	mov	qword ptr [rsp + 0xb0], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, OFFSET FLAT:.str.2_1
	jmp	.label_153
.label_1151:
	mov	rax, qword ptr [r15 - 0x30]
.label_239:
	mov	qword ptr [r13 + 8], rax
	mov	eax, dword ptr [r15]
	mov	dword ptr [r13 + 0x10], eax
	mov	byte ptr [r13 + 0xe0], 1
	jmp	.label_84
.label_1153:
	mov	rbp, qword ptr [r15 - 0xd0]
	mov	al, byte ptr [r13 + 0xd9]
	cmp	rbp, 4
	jl	.label_100
	lea	rcx, [r15 - 0xe0]
	mov	qword ptr [rsp + 0x68], rcx
	test	al, al
	je	.label_106
	mov	qword ptr [rsp + 0xb0], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, OFFSET FLAT:.str.10
	mov	qword ptr [rsp + 0xc0], rdx
	mov	edx, 5
	mov	qword ptr [rsp + 0xa0], r8
	mov	qword ptr [rsp + 0x60], r10
	mov	dword ptr [rsp + 0xac], ebx
	mov	rbx, r11
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [r15 - 0xd8]
	xor	eax, eax
	mov	rdi, rcx
	mov	rdx, rbp
	call	dbg_printf
	mov	rdx, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	r11, rbx
	mov	ebx, dword ptr [rsp + 0xac]
	mov	r10, qword ptr [rsp + 0x60]
	lea	r9, [rsp + 0x576]
	mov	r8, qword ptr [rsp + 0xa0]
.label_106:
	mov	rbp, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rsp + 0x78]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [rbp]
	movdqu	xmmword ptr [rcx], xmm0
.label_1152:
	mov	rax, qword ptr [r15 - 0x68]
	jmp	.label_175
.label_1127:
	inc	qword ptr [r13 + 0xa8]
	mov	qword ptr [rsp + 0xb0], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, OFFSET FLAT:.str.5_0
	jmp	.label_153
.label_1133:
	mov	rax, qword ptr [r15 - 0xa0]
	mov	rcx, qword ptr [r15 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	mov	qword ptr [r13 + 0x50], rcx
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0x80]
	movdqu	xmmword ptr [rax], xmm0
.label_219:
	mov	eax, dword ptr [r15]
	mov	dword ptr [r13 + 0x1c], eax
	jmp	.label_84
.label_1146:
	mov	eax, 0xe10
	add	eax, dword ptr [r15]
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_84
.label_1122:
	movdqu	xmm0, xmmword ptr [r15]
	mov	rax, qword ptr [rsp + 0x80]
	movdqu	xmmword ptr [rax], xmm0
	mov	byte ptr [r13 + 0xa0], 1
	mov	qword ptr [rsp + 0xb0], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, OFFSET FLAT:.str_4
	jmp	.label_153
.label_1123:
	inc	qword ptr [r13 + 0xc8]
	inc	qword ptr [r13 + 0xa8]
	mov	qword ptr [rsp + 0xb0], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, OFFSET FLAT:.str.1_2
	jmp	.label_153
.label_1128:
	inc	qword ptr [r13 + 0xb0]
	mov	qword ptr [rsp + 0xb0], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, OFFSET FLAT:.str.6_0
	jmp	.label_153
.label_1129:
	mov	qword ptr [rsp + 0xb0], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, OFFSET FLAT:.str.7_0
	jmp	.label_272
.label_1136:
	mov	rax, qword ptr [r15 - 0xa0]
	mov	rcx, qword ptr [r15 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	mov	qword ptr [r13 + 0x50], rcx
	jmp	.label_199
.label_1165:
	xor	edx, edx
	mov	esi, 1
	jmp	.label_126
.label_1137:
	mov	rax, qword ptr [r15 - 0x110]
	mov	rcx, qword ptr [r15 - 0xa0]
	mov	r9, rdx
	mov	rdx, qword ptr [r15 - 0x38]
	mov	rbp, rsi
	movsxd	rsi, dword ptr [r15 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	mov	qword ptr [r13 + 0x50], rcx
	mov	qword ptr [r13 + 0x58], rdx
	mov	rdx, r9
	lea	r9, [rsp + 0x576]
	mov	qword ptr [r13 + 0x60], rsi
	mov	rsi, rbp
	mov	dword ptr [r13 + 0x1c], 2
	jmp	.label_84
.label_1125:
	inc	qword ptr [r13 + 0xb8]
	mov	qword ptr [rsp + 0xb0], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, OFFSET FLAT:.str.3_1
	jmp	.label_153
.label_1186:
	mov	rsi, qword ptr [r15 + 8]
	jmp	.label_84
.label_1126:
	inc	qword ptr [r13 + 0xd0]
	mov	qword ptr [rsp + 0xb0], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, OFFSET FLAT:.str.4_1
	jmp	.label_153
.label_1159:
	mov	rax, qword ptr [r15 - 0x68]
	mov	qword ptr [r13 + 0x40], rax
	mov	rax, qword ptr [r15 - 0x38]
	mov	qword ptr [r13 + 0x38], rax
	jmp	.label_228
.label_1166:
	mov	rdx, qword ptr [r15 - 0x38]
	xor	esi, esi
	jmp	.label_126
.label_1131:
	mov	qword ptr [rsp + 0xb0], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, OFFSET FLAT:.str.9_0
.label_272:
	mov	qword ptr [rsp + 0xc0], rdx
	mov	edx, 5
	mov	qword ptr [rsp + 0xa0], r8
	mov	dword ptr [rsp + 0xac], ebx
	mov	rbx, r10
	mov	rbp, r11
.label_259:
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r13
	call	debug_print_relative_time
	jmp	.label_248
.label_1130:
	mov	qword ptr [rsp + 0xb0], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, OFFSET FLAT:.str.8_0
.label_153:
	mov	qword ptr [rsp + 0xc0], rdx
	mov	edx, 5
	mov	qword ptr [rsp + 0xa0], r8
	mov	dword ptr [rsp + 0xac], ebx
	mov	rbx, r10
	mov	rbp, r11
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r13
	call	debug_print_current_time
.label_248:
	mov	rdx, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	r11, rbp
	mov	r10, rbx
	mov	ebx, dword ptr [rsp + 0xac]
	lea	r9, [rsp + 0x576]
	mov	r8, qword ptr [rsp + 0xa0]
	jmp	.label_84
.label_1139:
	mov	eax, dword ptr [r15]
	mov	dword ptr [r13 + 0x14], eax
	jmp	.label_84
.label_1156:
	mov	rax, qword ptr [r15 - 0x38]
.label_175:
	mov	qword ptr [r13 + 0x38], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r13 + 0x40], rax
	jmp	.label_84
.label_1138:
	mov	qword ptr [rsp + 0xc0], rdx
	inc	qword ptr [r13 + 0xd0]
	mov	rdx, qword ptr [r15 - 0x30]
	imul	rcx, rdx, 0x64
	cmp	qword ptr [r15 - 0x28], 3
	mov	rax, qword ptr [r15]
	cmovge	rcx, rdx
	test	rax, rax
	cmovns	rcx, rdx
	js	.label_270
	mov	qword ptr [rsp + 0xb8], rsi
	mov	rbp, rdi
	mov	dl, byte ptr [r15 - 0x38]
	test	rcx, rcx
	js	.label_90
	movabs	rsi, 0x222222222222222
	cmp	rcx, rsi
	movabs	rdi, 0x8000000000000000
	jg	.label_96
	xor	esi, esi
	jmp	.label_105
.label_1172:
	mov	rax, qword ptr [r15 - 0x38]
.label_243:
	mov	qword ptr [rsp + 0xe8], rax
	xor	esi, esi
	jmp	.label_189
.label_1177:
	xor	esi, esi
	mov	eax, 1
	mov	qword ptr [rsp + 0xe0], rax
	jmp	.label_111
.label_1178:
	mov	rax, qword ptr [r15 - 0x38]
.label_244:
	mov	qword ptr [rsp + 0xd8], rax
	xor	esi, esi
	jmp	.label_117
.label_1163:
	mov	rsi, qword ptr [r15 - 0x38]
.label_235:
	xor	edx, edx
.label_126:
	xor	edi, edi
	jmp	.label_121
.label_1142:
	mov	dword ptr [r13 + 0x18], 0x6270
	jmp	.label_84
.label_1174:
	xor	esi, esi
	mov	eax, 1
	mov	qword ptr [rsp + 0xe8], rax
.label_189:
	xor	edx, edx
	xor	edi, edi
	jmp	.label_130
.label_1183:
	mov	qword ptr [rsp + 0xb0], rdi
	movdqu	xmm0, xmmword ptr [r15]
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r13 + 0xa8]
	test	rax, rax
	je	.label_102
	cmp	qword ptr [r13 + 0x30], 0
	jne	.label_102
	cmp	byte ptr [r13 + 0xa1], 0
	je	.label_136
.label_102:
	mov	qword ptr [rsp + 0xc0], rdx
	mov	qword ptr [rsp + 0xb8], rsi
	cmp	rdi, 5
	jl	.label_165
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
	jmp	.label_195
.label_1149:
	mov	qword ptr [r13 + 8], 0
	mov	eax, dword ptr [r15 - 0x38]
	mov	dword ptr [r13 + 0x10], eax
	jmp	.label_84
.label_1148:
	mov	qword ptr [r13 + 8], 0
	mov	eax, dword ptr [r15]
	mov	dword ptr [r13 + 0x10], eax
	jmp	.label_84
.label_1157:
	mov	rax, qword ptr [r15 - 0xa8]
	jmp	.label_185
.label_1154:
	mov	rax, qword ptr [r15 - 0x68]
	mov	qword ptr [r13 + 0x40], rax
	mov	rax, qword ptr [r15 - 0x38]
	mov	qword ptr [r13 + 0x38], rax
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, rax
	neg	rcx
	mov	rbp, rdx
	movabs	rdx, 0x8000000000000000
	cmp	rax, rdx
	mov	rdx, rbp
	mov	qword ptr [r13 + 0x28], rcx
	mov	ebp, 1
	je	.label_89
.label_234:
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r13 + 0x30], rax
	jmp	.label_84
.label_1181:
	xor	esi, esi
	mov	eax, 1
	mov	qword ptr [rsp + 0xd8], rax
.label_117:
	xor	edx, edx
	xor	edi, edi
	xor	eax, eax
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0xe0], rax
	mov	dword ptr [rsp + 0xd4], 0
	jmp	.label_84
.label_1175:
	mov	rax, qword ptr [r15 - 0x38]
.label_200:
	mov	qword ptr [rsp + 0xe0], rax
	xor	esi, esi
.label_111:
	xor	edx, edx
	xor	edi, edi
	xor	eax, eax
	mov	qword ptr [rsp + 0xe8], rax
	jmp	.label_212
.label_100:
	test	al, al
	je	.label_213
	mov	qword ptr [rsp + 0xb0], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, OFFSET FLAT:.str.11_0
	mov	qword ptr [rsp + 0xc0], rdx
	mov	edx, 5
	mov	qword ptr [rsp + 0xa0], r8
	mov	dword ptr [rsp + 0xac], ebx
	mov	rbx, r10
	mov	rbp, r11
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [r15 - 0xd8]
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	mov	rdx, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	r11, rbp
	mov	r10, rbx
	mov	ebx, dword ptr [rsp + 0xac]
	lea	r9, [rsp + 0x576]
	mov	r8, qword ptr [rsp + 0xa0]
.label_213:
	mov	rax, qword ptr [r15 - 0xd8]
.label_185:
	mov	qword ptr [r13 + 0x38], rax
	mov	rax, qword ptr [r15 - 0x68]
	mov	qword ptr [r13 + 0x40], rax
.label_228:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [rsp + 0x78]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [r15]
	movdqu	xmmword ptr [rcx], xmm0
	jmp	.label_84
.label_260:
	inc	qword ptr [r13 + 0xc8]
	xor	eax, eax
	cmp	rdi, 3
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	jge	.label_245
	mov	dword ptr [rsp + 0xac], ebx
	jmp	.label_95
.label_165:
	inc	qword ptr [r13 + 0xc8]
	xor	eax, eax
	cmp	rdi, 3
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	jl	.label_251
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
.label_251:
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0xc0]
.label_109:
	mov	qword ptr [r13 + 0x48], rcx
	mov	qword ptr [r13 + 0x50], rax
.label_199:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0x80]
	movdqu	xmmword ptr [rax], xmm0
	mov	dword ptr [r13 + 0x1c], 2
	jmp	.label_84
.label_113:
	mov	rsi, qword ptr [r15 - 0x38]
.label_233:
	test	rsi, rsi
	js	.label_268
	cmp	rdi, -1
	movabs	rax, 0x8000000000000000
	je	.label_115
.label_123:
	cqo	
	idiv	rdi
	mov	ebp, 1
	cmp	rax, rsi
	jge	.label_115
	jmp	.label_89
.label_268:
	movabs	rax, 0x8000000000000000
	dec	rax
.label_119:
	cqo	
	idiv	rdi
	mov	ebp, 1
	cmp	rsi, rax
	jl	.label_89
.label_115:
	imul	rdi, qword ptr [rcx]
.label_240:
	xor	esi, esi
	xor	edx, edx
.label_121:
	xor	eax, eax
	mov	qword ptr [rsp + 0xe8], rax
.label_130:
	xor	eax, eax
	mov	qword ptr [rsp + 0xe0], rax
.label_212:
	xor	eax, eax
	mov	qword ptr [rsp + 0xd8], rax
	mov	dword ptr [rsp + 0xd4], 0
.label_84:
	mov	rax, r11
	neg	rax
	imul	rax, rax, 0x38
	add	r11, r11
	sub	r8, r11
	lea	rcx, [r15 + rax + 0x38]
	mov	qword ptr [r15 + rax + 0x38], rsi
	mov	qword ptr [r15 + rax + 0x40], rdx
	mov	qword ptr [r15 + rax + 0x48], rdi
	mov	rdx, qword ptr [rsp + 0xe8]
	mov	qword ptr [r15 + rax + 0x50], rdx
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	qword ptr [r15 + rax + 0x58], rdx
	mov	rdx, qword ptr [rsp + 0xd8]
	mov	qword ptr [r15 + rax + 0x60], rdx
	mov	edx, dword ptr [rsp + 0xd4]
	mov	dword ptr [r15 + rax + 0x68], edx
	mov	dword ptr [r15 + rax + 0x6c], ebx
	movzx	eax, byte ptr [r10 + yyr1]
	movsx	esi, byte ptr [rax + label_107]
	movsx	edx, word ptr [r8]
	add	esi, edx
	cmp	esi, 0x70
	ja	.label_108
	movsxd	rsi, esi
	movsx	edi, byte ptr [rsi + yycheck]
	cmp	edi, edx
	jne	.label_108
	movzx	eax, byte ptr [rsi + yytable]
	jmp	.label_135
.label_108:
	movsx	eax, byte ptr [rax + label_122]
.label_135:
	mov	word ptr [r8 + 2], ax
	add	r8, 2
	mov	ebp, 2
	cmp	r9, r8
	mov	r15, rcx
	ja	.label_164
	jmp	.label_89
.label_205:
	mov	qword ptr [rsp + 0xb8], rsi
	mov	qword ptr [rsp + 0xb0], rdi
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
	movabs	rdi, 0x8000000000000000
	jmp	.label_148
.label_270:
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
	jmp	.label_161
.label_211:
	movabs	rsi, 0xfdddddddddddddde
	cmp	rcx, rsi
	movabs	rdi, 0x8000000000000000
	jge	.label_172
.label_225:
	mov	sil, 1
	jmp	.label_193
.label_90:
	movabs	rsi, 0xfdddddddddddddde
	cmp	rcx, rsi
	movabs	rdi, 0x8000000000000000
	jge	.label_180
.label_96:
	mov	sil, 1
	jmp	.label_105
.label_245:
	mov	dword ptr [rsp + 0xac], ebx
	mov	rbp, rdx
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	mov	rdi, rsi
	imul	rsi, rdx, 0x64
	mov	rax, rcx
	sub	rax, rsi
	mov	rsi, rdi
	mov	rcx, rdx
	mov	rdx, rbp
.label_95:
	mov	qword ptr [rsp + 0xc0], rdx
	mov	qword ptr [rsp + 0xb8], rsi
	mov	qword ptr [rsp + 0x68], r11
	mov	qword ptr [rsp + 0x60], r10
	mov	rbx, r8
	mov	qword ptr [r13 + 0x48], rcx
	mov	qword ptr [r13 + 0x50], rax
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0x80]
	movdqu	xmmword ptr [rax], xmm0
	mov	dword ptr [r13 + 0x1c], 2
.label_120:
	mov	rax, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r15]
	movups	xmm1, xmmword ptr [r15 + 0x10]
	movups	xmm2, xmmword ptr [r15 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	ebp, 1
	mov	esi, 1
	mov	rdi, r13
	call	apply_relative_time
	test	al, al
	mov	r8, rbx
	lea	r9, [rsp + 0x576]
	mov	r10, qword ptr [rsp + 0x60]
	mov	r11, qword ptr [rsp + 0x68]
	mov	ebx, dword ptr [rsp + 0xac]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0xc0]
	jne	.label_84
	jmp	.label_89
.label_172:
	xor	esi, esi
.label_193:
	imul	rcx, rcx, 0x3c
	test	dl, dl
	je	.label_227
	mov	rdx, rax
	xor	rdx, rdi
	cmp	rcx, rdx
	setl	dl
	sub	rcx, rax
	jmp	.label_230
.label_227:
	lea	rdx, [rdi - 1]
	sub	rdx, rax
	cmp	rdx, rcx
	setl	dl
	add	rcx, rax
.label_230:
	or	dl, sil
	sete	al
.label_148:
	mov	ebp, 1
	test	al, al
	je	.label_89
	lea	rax, [rcx + 0x5a0]
	cmp	rax, 0xb40
	ja	.label_89
	movabs	rsi, 0x3c00000000
	imul	eax, ecx, 0x3c
	mov	dword ptr [r13 + 0x18], eax
	mov	rdx, qword ptr [r15 - 0x70]
	test	rdx, rdx
	js	.label_242
	dec	rdi
	sub	rdi, rdx
	imul	rcx, rsi
	sar	rcx, 0x20
	cmp	rdi, rcx
	jge	.label_247
	jmp	.label_250
.label_242:
	imul	rcx, rsi
	sar	rcx, 0x20
	mov	rsi, rdi
	sub	rsi, rdx
	cmp	rcx, rsi
	jl	.label_250
.label_247:
	add	rcx, rdx
	sub	rcx, -0x80000000
	shr	rcx, 0x20
	jne	.label_250
	add	edx, eax
	mov	dword ptr [r13 + 0x18], edx
.label_195:
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0xc0]
	jmp	.label_84
.label_180:
	xor	esi, esi
.label_105:
	imul	rcx, rcx, 0x3c
	test	dl, dl
	je	.label_261
	mov	rdx, rax
	xor	rdx, rdi
	cmp	rcx, rdx
	setl	dl
	sub	rcx, rax
	jmp	.label_263
.label_261:
	lea	rdx, [rdi - 1]
	sub	rdx, rax
	cmp	rdx, rcx
	setl	dl
	add	rcx, rax
.label_263:
	or	dl, sil
	sete	al
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
.label_161:
	mov	ebp, 1
	test	al, al
	mov	rdx, qword ptr [rsp + 0xc0]
	je	.label_89
	lea	rax, [rcx + 0x5a0]
	cmp	rax, 0xb40
	ja	.label_89
	imul	eax, ecx, 0x3c
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_84
.label_257:
	cmp	rdi, 2
	jg	.label_91
	mov	rax, qword ptr [r13 + 0xc8]
	test	rax, rax
	jne	.label_91
	mov	dword ptr [rsp + 0xac], ebx
	mov	qword ptr [r13 + 0xc8], 1
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	xor	eax, eax
	jmp	.label_95
.label_136:
	cmp	rdi, 2
	jg	.label_104
	mov	rax, qword ptr [r13 + 0xc8]
	test	rax, rax
	jne	.label_104
	mov	qword ptr [r13 + 0xc8], 1
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0xb0]
	jmp	.label_109
.label_91:
	mov	qword ptr [rsp + 0xc0], rdx
	mov	qword ptr [rsp + 0xb8], rsi
	mov	dword ptr [rsp + 0xac], ebx
	mov	qword ptr [rsp + 0x68], r11
	mov	qword ptr [rsp + 0x60], r10
	mov	rbx, r8
	mov	byte ptr [r13 + 0xd8], 1
	movdqu	xmmword ptr [r13 + 0x20], xmm0
	mov	qword ptr [r13 + 0x30], rdi
	jmp	.label_120
.label_104:
	mov	byte ptr [r13 + 0xd8], 1
	movdqu	xmmword ptr [r13 + 0x20], xmm0
	mov	qword ptr [r13 + 0x30], rdi
	mov	rdi, qword ptr [rsp + 0xb0]
	jmp	.label_84
.label_101:
	mov	r14d, 0x3f
	cmp	byte ptr [r13 + 0xd9], 0
	je	.label_133
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.98
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	lea	rsi, [rsp + 0x580]
	call	dbg_printf
	jmp	.label_133
	nop	word ptr cs:[rax + rax]
.label_164:
	cmp	eax, 0xc
	jne	.label_224
	xor	ebp, ebp
.label_89:
	mov	eax, ebp
	add	rsp, 0x598
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_250:
	add	edx, eax
	mov	dword ptr [r13 + 0x18], edx
	jmp	.label_89
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d50

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
	jne	.label_286
.label_276:
	add	rsp, 0x70
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_286:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.77
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbx
	call	dbg_printf
	cmp	qword ptr [r15 + 0xa8], 0
	je	.label_278
	cmp	byte ptr [r15 + 0xda], 0
	jne	.label_294
	mov	rdi, qword ptr [rip + stderr]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	r8, qword ptr [r15 + 0x38]
	mov	r9, qword ptr [r15 + 0x40]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.78
	xor	eax, eax
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xda], 1
	mov	r12b, 1
	jmp	.label_278
.label_294:
	xor	r12d, r12d
.label_278:
	mov	rax, qword ptr [r15 + 0xd8]
	mov	rcx, rax
	shr	rcx, 0x38
	movzx	edx, al
	cmp	edx, ecx
	je	.label_291
	test	r12b, r12b
	je	.label_292
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0x20
	call	fputc
.label_292:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.79
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
.label_291:
	cmp	qword ptr [r15 + 0xc8], 0
	je	.label_287
	shr	rax, 0x28
	test	al, al
	jne	.label_287
	mov	r9, qword ptr [r15 + 0x58]
	mov	rdi, qword ptr [rip + stderr]
	xor	r12b, 1
	movzx	eax, r12b
	lea	rdx, qword ptr [rax + .str.80]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	r8, qword ptr [r15 + 0x50]
	mov	esi, 1
	xor	eax, eax
	call	__fprintf_chk
	mov	rcx, qword ptr [r15 + 0x60]
	test	rcx, rcx
	je	.label_277
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.81
	xor	eax, eax
	call	__fprintf_chk
.label_277:
	cmp	dword ptr [r15 + 0x1c], 1
	jne	.label_281
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:.str.41_0
	mov	esi, 2
	mov	edx, 1
	call	fwrite
.label_281:
	mov	byte ptr [r15 + 0xdd], 1
	mov	r12b, 1
.label_287:
	cmp	qword ptr [r15 + 0xb0], 0
	je	.label_290
	cmp	byte ptr [r15 + 0xdb], 0
	jne	.label_290
	test	r12b, r12b
	je	.label_285
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0x20
	call	fputc
.label_285:
	mov	r14, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.82
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
.label_290:
	cmp	qword ptr [r15 + 0xb8], 0
	je	.label_289
	cmp	byte ptr [r15 + 0xdc], 0
	jne	.label_289
	mov	rdi, qword ptr [rip + stderr]
	xor	r12b, 1
	movzx	eax, r12b
	lea	rdx, qword ptr [rax + .str.83]
	mov	ecx, dword ptr [r15 + 0x14]
	mov	r8d, OFFSET FLAT:.str.84
	cmp	qword ptr [r15 + 0xc0], 0
	jne	.label_293
	mov	r8d, OFFSET FLAT:.str_0
.label_293:
	mov	esi, 1
	xor	eax, eax
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xdc], 1
	mov	r12b, 1
.label_289:
	cmp	qword ptr [r15 + 0xd0], 0
	je	.label_282
	cmp	byte ptr [r15 + 0xde], 0
	jne	.label_282
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
	mov	ecx, OFFSET FLAT:.str.233
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
	lea	rdx, qword ptr [rdx + .str.85]
	je	.label_280
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
	jne	.label_288
	add	rax, 3
	jmp	.label_284
.label_288:
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
.label_284:
	mov	byte ptr [rax], 0
.label_280:
	lea	rcx, [rsp]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xde], 1
	mov	r12b, 1
.label_282:
	cmp	byte ptr [r15 + 0xa0], 0
	je	.label_283
	mov	r14, qword ptr [r15 + 0x58]
	test	r12b, r12b
	je	.label_279
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0x20
	call	fputc
.label_279:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.86
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, rcx
	mov	rcx, r14
	call	__fprintf_chk
.label_283:
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	call	fputc
	jmp	.label_276
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405190

	.globl debug_print_relative_time
	.type debug_print_relative_time, @function
debug_print_relative_time:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [r14 + 0xd9], 0
	je	.label_300
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.77
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbx
	call	dbg_printf
	mov	rcx, qword ptr [r14 + 0x68]
	test	rcx, rcx
	je	.label_296
	mov	rdi, qword ptr [rip + stderr]
	xor	ebx, ebx
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_299
	mov	r8d, OFFSET FLAT:.str.88
	xor	eax, eax
	call	__fprintf_chk
	mov	rcx, qword ptr [r14 + 0x70]
	mov	al, 1
	test	rcx, rcx
	jne	.label_307
	jmp	.label_298
.label_300:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_296:
	mov	rcx, qword ptr [r14 + 0x70]
	mov	ebx, 1
	test	rcx, rcx
	je	.label_295
.label_307:
	mov	rdi, qword ptr [rip + stderr]
	lea	rdx, qword ptr [rbx + .str.95]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:.str.89
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_298:
	mov	rcx, qword ptr [r14 + 0x78]
	test	rcx, rcx
	je	.label_310
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + .str.95]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:.str.90
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_310:
	mov	rcx, qword ptr [r14 + 0x80]
	test	rcx, rcx
	je	.label_306
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + .str.95]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:.str.91
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_306:
	mov	rcx, qword ptr [r14 + 0x88]
	test	rcx, rcx
	je	.label_304
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + .str.95]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:.str.92
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_304:
	mov	rcx, qword ptr [r14 + 0x90]
	test	rcx, rcx
	je	.label_303
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + .str.95]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:.str.93
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_303:
	movsxd	rcx, dword ptr [r14 + 0x98]
	test	rcx, rcx
	je	.label_297
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + .str.95]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:.str.94
	xor	eax, eax
	call	__fprintf_chk
.label_297:
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	fputc
.label_295:
	cmp	qword ptr [r14 + 0x78], 0
	je	.label_309
	xor	eax, eax
	jmp	.label_298
.label_309:
	cmp	qword ptr [r14 + 0x80], 0
	je	.label_305
	xor	eax, eax
	jmp	.label_298
.label_305:
	cmp	qword ptr [r14 + 0x88], 0
	je	.label_308
	xor	eax, eax
	jmp	.label_298
.label_308:
	cmp	qword ptr [r14 + 0x90], 0
	je	.label_301
	xor	eax, eax
	jmp	.label_298
.label_301:
	cmp	dword ptr [r14 + 0x98], 0
	je	.label_302
	xor	eax, eax
	jmp	.label_298
.label_302:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.87
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
	.align	16
	#Procedure 0x4053d0

	.globl apply_relative_time
	.type apply_relative_time, @function
apply_relative_time:
	lea	r8, [rsp + 8]
	movabs	r10, 0x7fffffffffffffff
	mov	edx, dword ptr [rsp + 0x38]
	test	esi, esi
	js	.label_358
	test	edx, edx
	js	.label_362
	mov	esi, 0x7fffffff
	sub	esi, edx
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	cmp	esi, eax
	jl	.label_365
	jmp	.label_312
.label_358:
	test	edx, edx
	js	.label_313
	lea	rcx, [rdi + 0x98]
	mov	esi, dword ptr [rdi + 0x98]
	mov	eax, edx
	xor	eax, 0x80000000
	cmp	esi, eax
	jl	.label_316
	jmp	.label_323
.label_362:
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	mov	esi, 0x80000000
	sub	esi, edx
	cmp	eax, esi
	jge	.label_312
.label_365:
	add	edx, eax
	mov	dword ptr [rcx], edx
	mov	r9d, 1
	jmp	.label_329
.label_312:
	add	edx, eax
	mov	dword ptr [rcx], edx
	xor	r9d, r9d
.label_329:
	mov	rdx, qword ptr [r8 + 0x28]
	test	rdx, rdx
	js	.label_332
	mov	rsi, r10
	sub	rsi, rdx
	lea	rcx, [rdi + 0x90]
	mov	rax, qword ptr [rdi + 0x90]
	cmp	rsi, rax
	jl	.label_357
	jmp	.label_339
.label_332:
	lea	rcx, [rdi + 0x90]
	mov	rax, qword ptr [rdi + 0x90]
	lea	rsi, [r10 + 1]
	sub	rsi, rdx
	cmp	rax, rsi
	jge	.label_339
.label_357:
	add	rdx, rax
	mov	qword ptr [rcx], rdx
	mov	edx, 1
	jmp	.label_346
.label_339:
	add	rdx, rax
	mov	qword ptr [rcx], rdx
	xor	edx, edx
.label_346:
	or	edx, r9d
	mov	rsi, qword ptr [r8 + 0x20]
	test	rsi, rsi
	js	.label_351
	mov	rcx, r10
	sub	rcx, rsi
	lea	r9, [rdi + 0x88]
	mov	rax, qword ptr [rdi + 0x88]
	cmp	rcx, rax
	jl	.label_354
	jmp	.label_359
.label_351:
	lea	r9, [rdi + 0x88]
	mov	rax, qword ptr [rdi + 0x88]
	lea	rcx, [r10 + 1]
	sub	rcx, rsi
	cmp	rax, rcx
	jge	.label_359
.label_354:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	mov	eax, 1
	jmp	.label_345
.label_359:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	xor	eax, eax
.label_345:
	or	edx, eax
	mov	rsi, qword ptr [r8 + 0x18]
	test	rsi, rsi
	js	.label_311
	mov	rcx, r10
	sub	rcx, rsi
	lea	r9, [rdi + 0x80]
	mov	rax, qword ptr [rdi + 0x80]
	cmp	rcx, rax
	jl	.label_326
	jmp	.label_322
.label_311:
	lea	r9, [rdi + 0x80]
	mov	rax, qword ptr [rdi + 0x80]
	lea	rcx, [r10 + 1]
	sub	rcx, rsi
	cmp	rax, rcx
	jge	.label_322
.label_326:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	mov	eax, 1
	jmp	.label_327
.label_322:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	xor	eax, eax
.label_327:
	or	edx, eax
	mov	rsi, qword ptr [r8 + 0x10]
	test	rsi, rsi
	js	.label_331
	mov	rcx, r10
	sub	rcx, rsi
	lea	r9, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	cmp	rcx, rax
	jl	.label_334
	jmp	.label_337
.label_331:
	lea	r9, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	lea	rcx, [r10 + 1]
	sub	rcx, rsi
	cmp	rax, rcx
	jge	.label_337
.label_334:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	mov	eax, 1
	jmp	.label_343
.label_337:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	xor	eax, eax
.label_343:
	or	edx, eax
	mov	rsi, qword ptr [r8 + 8]
	test	rsi, rsi
	js	.label_348
	mov	rcx, r10
	sub	rcx, rsi
	lea	r9, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	cmp	rcx, rax
	jl	.label_350
	jmp	.label_341
.label_348:
	lea	r9, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	lea	rcx, [r10 + 1]
	sub	rcx, rsi
	cmp	rax, rcx
	jge	.label_341
.label_350:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	mov	eax, 1
	jmp	.label_360
.label_341:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	xor	eax, eax
.label_360:
	or	edx, eax
	mov	rcx, qword ptr [r8]
	test	rcx, rcx
	js	.label_364
	sub	r10, rcx
	lea	rsi, [rdi + 0x68]
	mov	rax, qword ptr [rdi + 0x68]
	cmp	r10, rax
	jl	.label_367
	jmp	.label_318
.label_364:
	lea	rsi, [rdi + 0x68]
	mov	rax, qword ptr [rdi + 0x68]
	inc	r10
	sub	r10, rcx
	cmp	rax, r10
	jge	.label_318
.label_367:
	add	rcx, rax
	mov	qword ptr [rsi], rcx
	mov	eax, 1
	jmp	.label_321
.label_318:
	add	rcx, rax
	mov	qword ptr [rsi], rcx
	xor	eax, eax
.label_321:
	or	edx, eax
	je	.label_325
	xor	eax, eax
	ret	
.label_313:
	lea	eax, [rdx + 0x7fffffff]
	lea	rcx, [rdi + 0x98]
	mov	esi, dword ptr [rdi + 0x98]
	cmp	eax, esi
	jge	.label_323
.label_316:
	sub	esi, edx
	mov	dword ptr [rcx], esi
	mov	r9d, 1
	jmp	.label_368
.label_323:
	sub	esi, edx
	mov	dword ptr [rcx], esi
	xor	r9d, r9d
.label_368:
	mov	rdx, qword ptr [r8 + 0x28]
	test	rdx, rdx
	js	.label_330
	lea	rcx, [rdi + 0x90]
	mov	rsi, qword ptr [rdi + 0x90]
	lea	rax, [r10 + 1]
	xor	rax, rdx
	cmp	rsi, rax
	jl	.label_336
	jmp	.label_342
.label_330:
	lea	rax, [rdx + r10]
	lea	rcx, [rdi + 0x90]
	mov	rsi, qword ptr [rdi + 0x90]
	cmp	rax, rsi
	jge	.label_342
.label_336:
	sub	rsi, rdx
	mov	qword ptr [rcx], rsi
	mov	edx, 1
	jmp	.label_347
.label_342:
	sub	rsi, rdx
	mov	qword ptr [rcx], rsi
	xor	edx, edx
.label_347:
	or	edx, r9d
	mov	rsi, qword ptr [r8 + 0x20]
	test	rsi, rsi
	js	.label_353
	lea	r9, [rdi + 0x88]
	mov	rcx, qword ptr [rdi + 0x88]
	lea	rax, [r10 + 1]
	xor	rax, rsi
	cmp	rcx, rax
	jl	.label_355
	jmp	.label_361
.label_353:
	lea	rax, [rsi + r10]
	lea	r9, [rdi + 0x88]
	mov	rcx, qword ptr [rdi + 0x88]
	cmp	rax, rcx
	jge	.label_361
.label_355:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	mov	eax, 1
	jmp	.label_352
.label_361:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	xor	eax, eax
.label_352:
	or	edx, eax
	mov	rsi, qword ptr [r8 + 0x18]
	test	rsi, rsi
	js	.label_314
	lea	r9, [rdi + 0x80]
	mov	rcx, qword ptr [rdi + 0x80]
	lea	rax, [r10 + 1]
	xor	rax, rsi
	cmp	rcx, rax
	jl	.label_317
	jmp	.label_319
.label_314:
	lea	rax, [rsi + r10]
	lea	r9, [rdi + 0x80]
	mov	rcx, qword ptr [rdi + 0x80]
	cmp	rax, rcx
	jge	.label_319
.label_317:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	mov	eax, 1
	jmp	.label_328
.label_319:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	xor	eax, eax
.label_328:
	or	edx, eax
	mov	rsi, qword ptr [r8 + 0x10]
	test	rsi, rsi
	js	.label_333
	lea	r9, [rdi + 0x78]
	mov	rcx, qword ptr [rdi + 0x78]
	lea	rax, [r10 + 1]
	xor	rax, rsi
	cmp	rcx, rax
	jl	.label_335
	jmp	.label_338
.label_333:
	lea	rax, [rsi + r10]
	lea	r9, [rdi + 0x78]
	mov	rcx, qword ptr [rdi + 0x78]
	cmp	rax, rcx
	jge	.label_338
.label_335:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	mov	eax, 1
	jmp	.label_344
.label_338:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	xor	eax, eax
.label_344:
	or	edx, eax
	mov	rsi, qword ptr [r8 + 8]
	test	rsi, rsi
	js	.label_349
	lea	r9, [rdi + 0x70]
	mov	rcx, qword ptr [rdi + 0x70]
	lea	rax, [r10 + 1]
	xor	rax, rsi
	cmp	rcx, rax
	jl	.label_315
	jmp	.label_356
.label_349:
	lea	rax, [rsi + r10]
	lea	r9, [rdi + 0x70]
	mov	rcx, qword ptr [rdi + 0x70]
	cmp	rax, rcx
	jge	.label_356
.label_315:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	mov	eax, 1
	jmp	.label_340
.label_356:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	xor	eax, eax
.label_340:
	or	edx, eax
	mov	rcx, qword ptr [r8]
	test	rcx, rcx
	js	.label_363
	lea	r8, [rdi + 0x68]
	mov	rsi, qword ptr [rdi + 0x68]
	inc	r10
	xor	r10, rcx
	cmp	rsi, r10
	jl	.label_366
	jmp	.label_324
.label_363:
	add	r10, rcx
	lea	r8, [rdi + 0x68]
	mov	rsi, qword ptr [rdi + 0x68]
	cmp	r10, rsi
	jge	.label_324
.label_366:
	sub	rsi, rcx
	mov	qword ptr [r8], rsi
	mov	eax, 1
	jmp	.label_320
.label_324:
	sub	rsi, rcx
	mov	qword ptr [r8], rsi
	xor	eax, eax
.label_320:
	or	edx, eax
	je	.label_325
	xor	eax, eax
	ret	
.label_325:
	mov	byte ptr [rdi + 0xa1], 1
	mov	al, 1
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405840

	.globl dbg_printf
	.type dbg_printf, @function
dbg_printf:
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, rdi
	test	al, al
	je	.label_369
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_369:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rsi
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:.str.96
	mov	esi, 6
	mov	edx, 1
	call	fwrite
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 8
	mov	rdi, qword ptr [rip + stderr]
	lea	rcx, [rsp + 0xb0]
	mov	esi, 1
	mov	rdx, rbx
	call	__vfprintf_chk
	add	rsp, 0xd0
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405910

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
	mov	edi, OFFSET FLAT:.str_5
	call	getenv
	mov	r13, rax
	mov	rdi, r13
	call	tzalloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_371
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
	jmp	.label_370
.label_371:
	xor	ebp, ebp
.label_370:
	mov	al, bpl
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
	#Procedure 0x405980

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
	mov	qword ptr [rsp + 0x78], r9
	mov	r13, r8
	mov	r14d, ecx
	mov	r15, rdx
	mov	r12, rsi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rdi, r12
	call	strlen
	mov	qword ptr [rsp + 0x70], rax
	test	r15, r15
	jne	.label_441
	lea	r15, [rsp + 0x220]
	mov	rdi, r15
	call	gettime
.label_441:
	mov	rax, qword ptr [r15]
	mov	qword ptr [rsp + 0x88], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rsp + 0x80], rax
	movzx	eax, byte ptr [r12]
	add	eax, -9
	cmp	eax, 0x17
	mov	rbp, r12
	ja	.label_448
	mov	ecx, 0x80001f
	mov	rbp, r12
	nop	dword ptr [rax + rax]
.label_459:
	bt	ecx, eax
	jae	.label_448
	movzx	eax, byte ptr [rbp + 1]
	inc	rbp
	add	eax, -9
	cmp	eax, 0x18
	jb	.label_459
.label_448:
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 4
	mov	rdi, rbp
	call	strncmp
	test	eax, eax
	jne	.label_465
	lea	rbx, [rbp + 4]
	mov	edi, 1
	mov	rax, rbx
	jmp	.label_468
	nop	dword ptr [rax + rax]
.label_474:
	inc	rax
	inc	rdi
.label_468:
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x5c
	je	.label_472
	test	cl, cl
	je	.label_465
	movzx	ecx, cl
	cmp	ecx, 0x22
	jne	.label_474
	jmp	.label_475
	nop	
.label_472:
	movzx	ecx, byte ptr [rax + 1]
	inc	rax
	cmp	ecx, 0x22
	je	.label_474
	movzx	ecx, cl
	cmp	ecx, 0x5c
	je	.label_474
.label_465:
	xor	eax, eax
	mov	qword ptr [rsp + 0x90], rax
	mov	rbx, r13
.label_374:
	lea	rdx, [rsp + 0x1e8]
	mov	rdi, rbx
	mov	rsi, r15
	call	localtime_rz
	test	rax, rax
	je	.label_482
	movabs	r15, 0x7fffffffffffffff
	mov	eax, OFFSET FLAT:.str.20_0
	cmp	byte ptr [rbp], 0
	je	.label_485
	mov	rax, rbp
.label_485:
	mov	qword ptr [rsp + 0xd0], rax
	and	r14b, 1
	mov	byte ptr [rsp + 0x1a9], r14b
	movsxd	rax, dword ptr [rsp + 0x1fc]
	add	rax, 0x76c
	mov	qword ptr [rsp + 0xf8], rax
	mov	qword ptr [rsp + 0x100], 0
	movsxd	rax, dword ptr [rsp + 0x1f8]
	inc	rax
	mov	qword ptr [rsp + 0x108], rax
	movsxd	rax, dword ptr [rsp + 0x1f4]
	mov	qword ptr [rsp + 0x110], rax
	movsxd	rax, dword ptr [rsp + 0x1f0]
	mov	qword ptr [rsp + 0x118], rax
	movsxd	rax, dword ptr [rsp + 0x1ec]
	mov	qword ptr [rsp + 0x120], rax
	movsxd	rax, dword ptr [rsp + 0x1e8]
	mov	qword ptr [rsp + 0x128], rax
	mov	rax, qword ptr [rsp + 0x80]
	cdqe	
	mov	qword ptr [rsp + 0x130], rax
	mov	eax, dword ptr [rsp + 0x208]
	mov	dword ptr [rsp + 0x388], eax
	mov	dword ptr [rsp + 0xec], 2
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x162], xmm0
	movups	xmmword ptr [rsp + 0x158], xmm0
	movups	xmmword ptr [rsp + 0x148], xmm0
	movups	xmmword ptr [rsp + 0x138], xmm0
	movups	xmmword ptr [rsp + 0x198], xmm0
	movups	xmmword ptr [rsp + 0x188], xmm0
	movups	xmmword ptr [rsp + 0x178], xmm0
	mov	byte ptr [rsp + 0x1a8], 0
	mov	byte ptr [rsp + 0x1b0], 0
	mov	word ptr [rsp + 0x1ae], 0
	mov	dword ptr [rsp + 0x1aa], 0
	mov	rcx, qword ptr [rsp + 0x218]
	mov	qword ptr [rsp + 0x1b8], rcx
	mov	dword ptr [rsp + 0x1c0], 0x10d
	mov	dword ptr [rsp + 0x1c4], eax
	mov	qword ptr [rsp + 0x1c8], 0
	lea	rax, [r15 - 0x76a700]
	mov	rbp, qword ptr [rsp + 0x88]
	cmp	rbp, rax
	jg	.label_387
	lea	rax, [rbp + 0x76a700]
	mov	qword ptr [rsp + 0x98], rax
	lea	rsi, [rsp + 0x98]
	lea	rdx, [rsp + 0x3a0]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_386
	mov	rax, qword ptr [rsp + 0x3d0]
	test	rax, rax
	je	.label_386
	mov	ecx, dword ptr [rsp + 0x3c0]
	cmp	ecx, dword ptr [rsp + 0x1c4]
	jne	.label_391
.label_386:
	lea	rax, [r15 - 0xed4e00]
	cmp	rbp, rax
	jg	.label_387
	lea	rax, [rbp + 0xed4e00]
	mov	qword ptr [rsp + 0x98], rax
	lea	rsi, [rsp + 0x98]
	lea	rdx, [rsp + 0x3a0]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_401
	mov	rax, qword ptr [rsp + 0x3d0]
	test	rax, rax
	je	.label_401
	mov	ecx, dword ptr [rsp + 0x3c0]
	cmp	ecx, dword ptr [rsp + 0x1c4]
	jne	.label_391
.label_401:
	lea	rax, [r15 - 0x163f500]
	cmp	rbp, rax
	jg	.label_387
	add	rbp, 0x163f500
	mov	qword ptr [rsp + 0x98], rbp
	lea	rsi, [rsp + 0x98]
	lea	rdx, [rsp + 0x3a0]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_387
	mov	rax, qword ptr [rsp + 0x3d0]
	test	rax, rax
	je	.label_387
	mov	ecx, dword ptr [rsp + 0x3c0]
	cmp	ecx, dword ptr [rsp + 0x1c4]
	je	.label_387
.label_391:
	mov	qword ptr [rsp + 0x1c8], rax
	mov	dword ptr [rsp + 0x1d0], 0x10d
	mov	dword ptr [rsp + 0x1d4], ecx
	mov	qword ptr [rsp + 0x1d8], 0
.label_387:
	mov	rdi, qword ptr [rsp + 0x1b8]
	test	rdi, rdi
	je	.label_425
	mov	rsi, qword ptr [rsp + 0x1c8]
	test	rsi, rsi
	je	.label_425
	call	strcmp
	test	eax, eax
	jne	.label_425
	mov	dword ptr [rsp + 0x1c4], 0xffffffff
	mov	qword ptr [rsp + 0x1c8], 0
.label_425:
	lea	rdi, [rsp + 0xd0]
	call	yyparse
	test	eax, eax
	mov	al, byte ptr [rsp + 0x1a9]
	je	.label_411
	test	al, al
	je	.label_419
	add	r12, qword ptr [rsp + 0x70]
	cmp	r12, qword ptr [rsp + 0xd0]
	jbe	.label_438
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23_0
	jmp	.label_511
.label_482:
	xor	ebp, ebp
	jmp	.label_379
.label_411:
	test	al, al
	mov	r12, qword ptr [rsp + 0x68]
	jne	.label_442
.label_394:
	cmp	byte ptr [rsp + 0x170], 0
	je	.label_446
	lea	rax, [rsp + 0x128]
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r12], xmm0
.label_452:
	mov	rdi, qword ptr [rsp + 0x78]
	mov	bpl, 1
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_379
	test	rdi, rdi
	je	.label_455
	mov	esi, OFFSET FLAT:.str.28
	mov	r14, rdi
	call	strcmp
	mov	r15, rbx
	xor	edi, edi
	test	eax, eax
	je	.label_460
	mov	esi, OFFSET FLAT:.str.72
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, r14
	call	dbg_printf
	jmp	.label_469
.label_419:
	xor	ebp, ebp
	jmp	.label_379
.label_475:
	xor	eax, eax
	cmp	rdi, 0x65
	jl	.label_470
	call	malloc
	mov	rsi, rax
	xor	ebp, ebp
	test	rsi, rsi
	mov	edi, 0
	jne	.label_473
	jmp	.label_476
.label_438:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22_0
.label_511:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [rsp + 0xd0]
	xor	ebp, ebp
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	jmp	.label_379
.label_446:
	mov	rax, qword ptr [rsp + 0x178]
	mov	rcx, qword ptr [rsp + 0x198]
	mov	rdx, rax
	or	rdx, rcx
	or	rdx, qword ptr [rsp + 0x180]
	or	rdx, qword ptr [rsp + 0x190]
	mov	rsi, qword ptr [rsp + 0x1a0]
	add	rsi, qword ptr [rsp + 0x188]
	or	rsi, rdx
	mov	r14b, byte ptr [rsp + 0x1a9]
	cmp	rsi, 2
	jl	.label_483
	test	r14b, r14b
	je	.label_490
	cmp	rcx, 2
	jl	.label_435
	mov	edi, OFFSET FLAT:.str.34
	xor	eax, eax
	call	dbg_printf
	mov	rax, qword ptr [rsp + 0x178]
.label_435:
	cmp	rax, 2
	jl	.label_462
	mov	edi, OFFSET FLAT:.str.35
	xor	eax, eax
	call	dbg_printf
.label_462:
	cmp	qword ptr [rsp + 0x180], 2
	jl	.label_499
	mov	edi, OFFSET FLAT:.str.36_0
	xor	eax, eax
	call	dbg_printf
.label_499:
	cmp	qword ptr [rsp + 0x190], 2
	jl	.label_466
	mov	edi, OFFSET FLAT:.str.37
	xor	eax, eax
	call	dbg_printf
.label_466:
	mov	rax, qword ptr [rsp + 0x1a0]
	add	rax, qword ptr [rsp + 0x188]
	xor	ebp, ebp
	cmp	rax, 2
	jl	.label_379
	mov	edi, OFFSET FLAT:.str.38_0
	xor	eax, eax
	call	dbg_printf
	jmp	.label_379
.label_470:
	lea	rsi, [rsp + 0x230]
.label_473:
	mov	qword ptr [rsp + 0x90], rax
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x22
	jne	.label_517
	mov	qword ptr [rsp + 0x60], r13
	mov	r13, rbx
	mov	rax, rsi
	jmp	.label_520
.label_517:
	mov	qword ptr [rsp + 0x60], r13
	mov	rax, rsi
	nop	dword ptr [rax]
.label_522:
	movzx	ecx, cl
	cmp	ecx, 0x5c
	sete	cl
	movzx	ecx, cl
	mov	dl, byte ptr [rbx + rcx]
	mov	byte ptr [rax], dl
	inc	rax
	lea	r13, [rbx + rcx + 1]
	movzx	ecx, byte ptr [rbx + rcx + 1]
	cmp	ecx, 0x22
	mov	rbx, r13
	jne	.label_522
.label_520:
	mov	byte ptr [rax], 0
	mov	rdi, rsi
	mov	qword ptr [rsp + 0x78], rsi
	call	tzalloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_495
	inc	r13
	mov	eax, 0x80001f
	nop	word ptr [rax + rax]
.label_534:
	mov	rbp, r13
	movzx	ecx, byte ptr [rbp]
	add	ecx, -9
	cmp	ecx, 0x17
	ja	.label_532
	lea	r13, [rbp + 1]
	bt	eax, ecx
	jb	.label_534
.label_532:
	mov	r13, qword ptr [rsp + 0x60]
	jmp	.label_374
.label_483:
	mov	r12, rbx
	mov	rbx, qword ptr [rsp + 0xf8]
	test	rbx, rbx
	js	.label_378
	cmp	qword ptr [rsp + 0x100], 2
	jne	.label_382
	cmp	rbx, 0x45
	mov	eax, 0x7d0
	mov	ebp, 0x76c
	cmovl	rbp, rax
	add	rbp, rbx
	test	r14b, r14b
	je	.label_385
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.234
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbx
	mov	rdx, rbp
	call	dbg_printf
.label_385:
	test	rbp, rbp
	jns	.label_488
	jmp	.label_396
.label_495:
	xor	ebp, ebp
	jmp	.label_388
.label_455:
	mov	r15, rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	jmp	.label_398
.label_460:
	mov	esi, OFFSET FLAT:.str.71
.label_398:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_469:
	mov	r14, qword ptr [r12]
	mov	ebx, dword ptr [r12 + 8]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.73
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, r14
	mov	edx, ebx
	call	dbg_printf
	lea	rsi, [rsp + 0x3a0]
	mov	rdi, r12
	call	gmtime_r
	test	rax, rax
	je	.label_414
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.74
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	r14, [rsp + 0x2a0]
	lea	rcx, [rsp + 0x3a0]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:.str.254
	xor	r8d, r8d
	xor	r9d, r9d
	mov	rdi, r14
	call	nstrftime
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, r14
	call	dbg_printf
.label_414:
	lea	rdx, [rsp + 0x98]
	mov	rbx, r15
	mov	rdi, rbx
	mov	rsi, r12
	call	localtime_rz
	test	rax, rax
	je	.label_379
	mov	r12, rbx
	movsxd	r15, dword ptr [rsp + 0xc0]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.75
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	lea	rdi, [rsp + 0x2a0]
	lea	rcx, [rsp + 0x98]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:.str.254
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
	lea	rdi, [rsp + 0x310]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:.str.233
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebx, 0xe10
	mov	esi, r15d
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	r15d, edx
	je	.label_454
	cdqe	
	lea	rax, [rsp + rax + 0x310]
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
	je	.label_461
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
	jmp	.label_479
.label_490:
	xor	ebp, ebp
	jmp	.label_379
.label_378:
	mov	rbp, rbx
.label_396:
	lea	rdx, [rbp + r15]
	mov	ecx, 0x7ffff894
	mov	eax, 0xfffff894
	sub	eax, ebp
	cmp	rdx, -0x76c
	mov	rbx, r12
	jl	.label_489
	sub	rcx, rbp
	shr	rcx, 0x20
	je	.label_491
	jmp	.label_489
.label_442:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	cmp	byte ptr [rsp + 0x170], 0
	jne	.label_497
	cmp	qword ptr [rsp + 0x1a0], 0
	jne	.label_501
	mov	rax, qword ptr [rsp + 0x78]
	test	rax, rax
	jne	.label_502
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	jmp	.label_481
.label_382:
	mov	rbp, rbx
.label_488:
	lea	rcx, [rbp + 0x7ffff894]
	lea	eax, [rbp - 0x76c]
	shr	rcx, 0x20
	mov	rbx, r12
	je	.label_491
.label_489:
	mov	dword ptr [rsp + 0x37c], eax
	test	r14b, r14b
	je	.label_515
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.235
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbp
	call	dbg_printf
	jmp	.label_515
.label_491:
	mov	dword ptr [rsp + 0x37c], eax
	mov	rax, qword ptr [rsp + 0x108]
	lea	ecx, [rax - 1]
	cmp	rax, -0x7fffffff
	mov	dword ptr [rsp + 0x378], ecx
	jl	.label_515
	dec	rax
	cmp	rax, 0x7fffffff
	jg	.label_515
	mov	r12d, 0x80000000
	mov	rax, qword ptr [rsp + 0x110]
	mov	dword ptr [rsp + 0x374], eax
	sub	rax, -0x80000000
	shr	rax, 0x20
	je	.label_526
.label_515:
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_530
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	jmp	.label_379
.label_530:
	xor	ebp, ebp
	jmp	.label_379
.label_461:
	add	rax, 3
.label_479:
	mov	byte ptr [rax], 0
.label_454:
	lea	rsi, [rsp + 0x2a0]
	lea	rdx, [rsp + 0x310]
	xor	eax, eax
	mov	rdi, r14
	call	dbg_printf
	mov	rbx, r12
.label_379:
	cmp	rbx, r13
	je	.label_388
	mov	rdi, rbx
	call	tzfree
.label_388:
	mov	rdi, qword ptr [rsp + 0x90]
.label_476:
	call	free
	mov	al, bpl
	add	rsp, 0x408
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_497:
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25_0
	jmp	.label_481
.label_526:
	mov	rax, qword ptr [rsp + 0x198]
	test	rax, rax
	jne	.label_397
	cmp	byte ptr [rsp + 0x171], 0
	je	.label_399
	mov	rcx, qword ptr [rsp + 0x180]
	or	rcx, qword ptr [rsp + 0x178]
	jne	.label_399
.label_397:
	mov	rdx, qword ptr [rsp + 0x118]
	mov	ecx, dword ptr [rsp + 0xec]
	test	ecx, ecx
	je	.label_408
	cmp	ecx, 1
	jne	.label_410
	lea	rdi, [rdx - 1]
	lea	rbp, [rdx + 0xc]
	cmp	rdx, 0xc
	mov	rsi, -1
	cmove	rsi, rdx
	cmp	rdi, 0xb
	cmovb	rsi, rbp
	jmp	.label_412
.label_501:
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26_0
.label_481:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
.label_384:
	mov	rdx, rcx
	call	__fprintf_chk
.label_402:
	mov	rax, qword ptr [rsp + 0x1a0]
	cmp	qword ptr [rsp + 0x188], 0
	mov	rbx, rbp
	je	.label_422
	test	rax, rax
	jne	.label_422
	cmp	dword ptr [rsp + 0xe4], 0
	jle	.label_430
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.32
	xor	eax, eax
	call	__fprintf_chk
	mov	rax, qword ptr [rsp + 0x1a0]
.label_422:
	test	rax, rax
	je	.label_430
	mov	r12, rbx
	mov	r14, qword ptr [rip + stderr]
	movsxd	rbx, dword ptr [rsp + 0xe8]
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
	lea	rdi, [rsp + 0x310]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:.str.233
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	je	.label_450
	cdqe	
	lea	rax, [rsp + rax + 0x310]
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
	jne	.label_456
	add	rax, 3
	jmp	.label_478
.label_502:
	cmp	rbx, r13
	jne	.label_484
	mov	esi, OFFSET FLAT:.str.28
	mov	rdi, rax
	mov	r14, rax
	call	strcmp
	mov	rcx, qword ptr [rip + stderr]
	mov	qword ptr [rsp + 0x88], rcx
	mov	rbp, rbx
	xor	edi, edi
	test	eax, eax
	jne	.label_480
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x88]
	jmp	.label_384
.label_408:
	lea	rdi, [rdx - 1]
	xor	ebp, ebp
	cmp	rdx, 0xc
	mov	rsi, -1
	cmove	rsi, rbp
	cmp	rdi, 0xb
	cmovb	rsi, rdx
	jmp	.label_412
.label_410:
	cmp	rdx, 0x18
	mov	rsi, -1
	cmovb	rsi, rdx
.label_412:
	mov	dword ptr [rsp + 0x370], esi
	test	esi, esi
	js	.label_493
	mov	ecx, dword ptr [rsp + 0x120]
	mov	dword ptr [rsp + 0x36c], ecx
	mov	ecx, dword ptr [rsp + 0x128]
	mov	dword ptr [rsp + 0x368], ecx
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_380
	mov	r14, rbx
	xor	edi, edi
	test	rax, rax
	je	.label_503
	mov	esi, OFFSET FLAT:.str.44
	jmp	.label_506
.label_493:
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_507
	cmp	ecx, 1
	mov	eax, OFFSET FLAT:.str.41_0
	mov	edx, OFFSET FLAT:.str_0
	cmove	rdx, rax
	test	ecx, ecx
	mov	r14, rbx
	mov	ebx, OFFSET FLAT:.str.40_0
	cmovne	rbx, rdx
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [rsp + 0x118]
	xor	eax, eax
	mov	rdi, rcx
	mov	rdx, rbx
	mov	rbx, r14
	call	dbg_printf
	jmp	.label_379
.label_456:
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
.label_478:
	mov	byte ptr [rax], 0
.label_450:
	lea	rcx, [rsp + 0x310]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.33
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x68]
.label_430:
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	call	fputc
	jmp	.label_394
.label_399:
	mov	dword ptr [rsp + 0x368], 0
	mov	dword ptr [rsp + 0x36c], 0
	mov	dword ptr [rsp + 0x370], 0
	mov	qword ptr [rsp + 0x130], 0
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_380
	mov	edi, OFFSET FLAT:.str.46
	xor	eax, eax
	call	dbg_printf
	jmp	.label_380
.label_484:
	mov	rbp, rbx
	mov	r14, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27_0
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
	jmp	.label_402
.label_503:
	mov	esi, OFFSET FLAT:.str.45
.label_506:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	r9d, dword ptr [rsp + 0x370]
	mov	eax, dword ptr [rsp + 0x368]
	mov	ecx, dword ptr [rsp + 0x36c]
	mov	dword ptr [rsp + 8], eax
	mov	dword ptr [rsp], ecx
	lea	rbp, [rsp + 0x2a0]
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:.str.236
	xor	eax, eax
	mov	rdi, rbp
	call	__snprintf_chk
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rbp
	call	dbg_printf
	mov	rbx, r14
.label_380:
	mov	rax, qword ptr [rsp + 0x180]
	or	rax, qword ptr [rsp + 0x178]
	or	rax, qword ptr [rsp + 0x198]
	je	.label_415
	mov	dword ptr [rsp + 0x388], 0xffffffff
.label_415:
	cmp	qword ptr [rsp + 0x188], 0
	je	.label_423
	mov	eax, dword ptr [rsp + 0xe4]
	mov	dword ptr [rsp + 0x388], eax
	jmp	.label_428
.label_423:
	mov	eax, dword ptr [rsp + 0x388]
.label_428:
	mov	qword ptr [rsp + 0x60], r13
	mov	rcx, qword ptr [rsp + 0x368]
	mov	dword ptr [rsp + 0x330], ecx
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x334], ecx
	mov	rcx, qword ptr [rsp + 0x370]
	mov	dword ptr [rsp + 0x338], ecx
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x33c], ecx
	mov	rcx, qword ptr [rsp + 0x378]
	mov	dword ptr [rsp + 0x340], ecx
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x344], ecx
	mov	dword ptr [rsp + 0x350], eax
	mov	dword ptr [rsp + 0x380], 0xffffffff
	lea	rsi, [rsp + 0x368]
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x88], rbx
	call	mktime_z
	mov	r14, rax
	cmp	dword ptr [rsp + 0x380], 0
	js	.label_487
	mov	rax, qword ptr [rsp + 0x368]
	mov	rcx, qword ptr [rsp + 0x370]
	xor	rax, qword ptr [rsp + 0x330]
	xor	rcx, qword ptr [rsp + 0x338]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x378]
	xor	rax, qword ptr [rsp + 0x340]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	je	.label_494
.label_487:
	mov	rax, qword ptr [rsp + 0x1a0]
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_464
	mov	byte ptr [rsp + 0x3a2], 0x58
	mov	word ptr [rsp + 0x3a0], 0x5858
	movsxd	rbx, dword ptr [rsp + 0xe8]
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
	lea	rdi, [rsp + 0x3a3]
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:.str.233
	xor	eax, eax
	call	__sprintf_chk
	imul	ecx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, ecx
	mov	edx, esi
	neg	edx
	cmovl	edx, esi
	cmp	ebx, ecx
	je	.label_486
	cdqe	
	lea	rcx, [rsp + rax + 0x3a3]
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
	je	.label_458
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
.label_458:
	mov	byte ptr [rcx], 0
.label_486:
	lea	rdi, [rsp + 0x3a0]
	call	tzalloc
	mov	r13, rax
	test	r13, r13
	mov	rbx, qword ptr [rsp + 0x88]
	je	.label_516
	mov	rax, qword ptr [rsp + 0x330]
	mov	dword ptr [rsp + 0x368], eax
	shr	rax, 0x20
	mov	dword ptr [rsp + 0x36c], eax
	mov	rax, qword ptr [rsp + 0x338]
	mov	dword ptr [rsp + 0x370], eax
	shr	rax, 0x20
	mov	dword ptr [rsp + 0x374], eax
	mov	rax, qword ptr [rsp + 0x340]
	mov	dword ptr [rsp + 0x378], eax
	shr	rax, 0x20
	mov	dword ptr [rsp + 0x37c], eax
	mov	eax, dword ptr [rsp + 0x350]
	mov	dword ptr [rsp + 0x388], eax
	mov	dword ptr [rsp + 0x380], 0xffffffff
	lea	rsi, [rsp + 0x368]
	mov	rdi, r13
	call	mktime_z
	mov	r14, rax
	cmp	dword ptr [rsp + 0x380], 0
	js	.label_372
	mov	rax, qword ptr [rsp + 0x368]
	mov	rcx, qword ptr [rsp + 0x370]
	xor	rax, qword ptr [rsp + 0x330]
	xor	rcx, qword ptr [rsp + 0x338]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rbx, qword ptr [rsp + 0x378]
	xor	rbx, qword ptr [rsp + 0x340]
	mov	ebp, ebx
	or	ebp, ecx
	or	ebp, edx
	shr	rbx, 0x20
	mov	rdi, r13
	call	tzfree
	or	ebx, ebp
	jne	.label_464
.label_494:
	cmp	qword ptr [rsp + 0x180], 0
	mov	r13, qword ptr [rsp + 0x60]
	je	.label_393
	mov	rax, qword ptr [rsp + 0x178]
	test	rax, rax
	jne	.label_393
	mov	rcx, qword ptr [rsp + 0xd8]
	test	rcx, rcx
	jle	.label_513
	mov	eax, dword ptr [rsp + 0x380]
	cmp	eax, dword ptr [rsp + 0xe0]
	setne	al
	jmp	.label_405
.label_516:
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_409
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsp + 0x3a0]
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_409:
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x60]
	jmp	.label_379
.label_507:
	xor	ebp, ebp
	jmp	.label_379
.label_480:
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x88]
	mov	rdx, rcx
	mov	rcx, r14
	call	__fprintf_chk
	jmp	.label_402
.label_372:
	mov	rdi, r13
	call	tzfree
.label_464:
	mov	r9, qword ptr [rsp + 0x330]
	mov	rsi, qword ptr [rsp + 0x338]
	mov	qword ptr [rsp + 0x78], rsi
	mov	r11, qword ptr [rsp + 0x368]
	mov	rdi, qword ptr [rsp + 0x370]
	mov	qword ptr [rsp + 0x70], rdi
	cmp	r9d, r11d
	sete	r14b
	mov	rax, r9
	shr	rax, 0x20
	mov	qword ptr [rsp + 0x68], rax
	mov	rcx, r11
	shr	rcx, 0x20
	mov	qword ptr [rsp + 0x58], rcx
	cmp	eax, ecx
	sete	al
	mov	rcx, rsi
	shr	rcx, 0x20
	mov	r15, rdi
	shr	r15, 0x20
	cmp	ecx, r15d
	sete	byte ptr [rsp + 0x57]
	mov	rbp, qword ptr [rsp + 0x340]
	mov	rbx, qword ptr [rsp + 0x378]
	cmp	ebp, ebx
	sete	dl
	mov	r13, rbp
	shr	r13, 0x20
	mov	r12, rbx
	shr	r12, 0x20
	cmp	r13d, r12d
	sete	r10b
	cmp	esi, edi
	setne	r8b
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_427
	and	dl, r10b
	and	r14b, r8b
	and	al, r14b
	and	al, byte ptr [rsp + 0x57]
	and	al, dl
	mov	byte ptr [rsp + 0x57], al
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.237
	mov	edx, 5
	mov	qword ptr [rsp + 0x38], rbp
	mov	r14, rcx
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x30], rbx
	mov	qword ptr [rsp + 0x40], r11
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.238
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x330]
	lea	rsi, [rsp + 0xd0]
	lea	rbp, [rsp + 0x3a0]
	mov	rdx, rbp
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.239
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x368]
	lea	rsi, [rsp + 0xd0]
	mov	rdx, rbp
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	dbg_printf
	cmp	r13d, r12d
	mov	r8d, OFFSET FLAT:.str_0
	mov	r9d, OFFSET FLAT:.str.241
	cmove	r9, r8
	mov	r12, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x30]
	cmp	r12d, r13d
	mov	ecx, OFFSET FLAT:.str.242
	mov	edx, OFFSET FLAT:.str.242
	cmove	rdx, r8
	cmp	r14d, r15d
	mov	esi, OFFSET FLAT:.str.242
	cmove	rsi, r8
	mov	rdi, qword ptr [rsp + 0x78]
	mov	rbp, qword ptr [rsp + 0x70]
	cmp	edi, ebp
	mov	edi, OFFSET FLAT:.str.242
	cmove	rdi, r8
	mov	rbp, qword ptr [rsp + 0x68]
	mov	rbx, qword ptr [rsp + 0x58]
	cmp	ebp, ebx
	mov	ebp, OFFSET FLAT:.str.242
	cmove	rbp, r8
	mov	rbx, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rsp + 0x40]
	cmp	ebx, eax
	cmove	rcx, r8
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x18], rbp
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rdx
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:.str.240
	xor	eax, eax
	lea	rdi, [rsp + 0x3a0]
	call	__snprintf_chk
	test	eax, eax
	mov	rbx, r12
	mov	rbp, r13
	js	.label_509
	cmp	eax, 0x63
	mov	ecx, 0x63
	cmovb	ecx, eax
	inc	ecx
	not	eax
	cmp	eax, -0x64
	mov	edx, 0xffffff9c
	cmova	edx, eax
	mov	eax, 0xfffffffe
	sub	eax, edx
	cdqe	
	lea	rdx, [rsp + rax + 0x3a0]
.label_431:
	mov	rax, rcx
	cmp	rax, 2
	jl	.label_519
	lea	rcx, [rax - 1]
	movzx	esi, byte ptr [rdx]
	dec	rdx
	cmp	esi, 0x20
	je	.label_431
.label_519:
	dec	rax
	cdqe	
	mov	byte ptr [rsp + rax + 0x3a0], 0
.label_509:
	lea	rsi, [rsp + 0x3a0]
	mov	edi, OFFSET FLAT:.str.243
	xor	eax, eax
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.244
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	cmp	byte ptr [rsp + 0x57], 0
	je	.label_528
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.245
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_528:
	cmp	r14d, r15d
	je	.label_373
	cmp	ebx, ebp
	je	.label_373
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.246
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_373:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.247
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_390
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.249
	jmp	.label_392
.label_390:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.250
.label_392:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, OFFSET FLAT:.str.248
	xor	eax, eax
	mov	rsi, rcx
	call	dbg_printf
.label_427:
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x60]
	mov	rbx, qword ptr [rsp + 0x88]
	jmp	.label_379
.label_513:
	xor	eax, eax
.label_405:
	movzx	eax, al
	cmp	rcx, rax
	jge	.label_400
	test	rcx, rcx
	jle	.label_433
	mov	eax, dword ptr [rsp + 0x380]
	cmp	eax, dword ptr [rsp + 0xe0]
	setne	al
	jmp	.label_524
.label_400:
	test	rcx, rcx
	jle	.label_407
	mov	eax, dword ptr [rsp + 0x380]
	cmp	eax, dword ptr [rsp + 0xe0]
	setne	al
	jmp	.label_389
.label_433:
	xor	eax, eax
.label_524:
	movzx	eax, al
	mov	rdx, rcx
	sub	rdx, rax
	movabs	rax, 0xedb6db6db6db6db7
	cmp	rdx, rax
	jge	.label_505
	jmp	.label_413
.label_407:
	xor	eax, eax
.label_389:
	movzx	eax, al
	mov	rdx, rcx
	sub	rdx, rax
	movabs	rax, 0x1249249249249249
	cmp	rdx, rax
	jg	.label_413
.label_505:
	test	rcx, rcx
	jle	.label_416
	mov	eax, dword ptr [rsp + 0x380]
	cmp	eax, dword ptr [rsp + 0xe0]
	setne	al
	jmp	.label_417
.label_416:
	xor	eax, eax
.label_417:
	movzx	eax, al
	sub	rcx, rax
	lea	rax, [rcx*8]
	sub	rax, rcx
	js	.label_421
	mov	rsi, r15
	sub	rsi, rax
	mov	ecx, dword ptr [rsp + 0xe0]
	mov	edx, dword ptr [rsp + 0x380]
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
	jmp	.label_426
.label_421:
	mov	ecx, dword ptr [rsp + 0xe0]
	mov	edx, dword ptr [rsp + 0x380]
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
.label_426:
	cmp	rsi, rdi
	jl	.label_413
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
	movsxd	rax, dword ptr [rsp + 0x374]
	test	rax, rax
	js	.label_445
	mov	rdx, r15
	sub	rdx, rax
	cmp	rdx, rcx
	jl	.label_457
	jmp	.label_377
.label_445:
	lea	rdx, [r15 + 1]
	sub	rdx, rax
	cmp	rcx, rdx
	jl	.label_457
.label_377:
	lea	rdx, [rcx + r12]
	add	rdx, rax
	shr	rdx, 0x20
	je	.label_443
.label_457:
	add	ecx, eax
	mov	dword ptr [rsp + 0x374], ecx
.label_413:
	cmp	byte ptr [rsp + 0x1a9], 0
	jne	.label_467
	jmp	.label_383
.label_443:
	add	ecx, eax
	mov	dword ptr [rsp + 0x374], ecx
	mov	dword ptr [rsp + 0x388], 0xffffffff
	lea	rsi, [rsp + 0x368]
	mov	rdi, qword ptr [rsp + 0x88]
	call	mktime_z
	mov	r14, rax
	mov	al, byte ptr [rsp + 0x1a9]
	cmp	r14, -1
	je	.label_477
	test	al, al
	je	.label_393
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x80], rax
	lea	rbp, [rsp + 0xd0]
	lea	rsi, [rsp + 0x3a0]
	mov	rdi, rbp
	call	str_days
	mov	rbx, rax
	lea	rdi, [rsp + 0x368]
	lea	rdx, [rsp + 0x2a0]
	mov	rsi, rbp
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x80]
	mov	rsi, rbx
	mov	rdx, rcx
	call	dbg_printf
.label_393:
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_429
	mov	rax, qword ptr [rsp + 0x178]
	mov	rcx, qword ptr [rsp + 0x180]
	mov	rdx, rcx
	or	rdx, rax
	jne	.label_492
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x60], r13
	mov	r13, rax
	movsxd	rax, dword ptr [rsp + 0x37c]
	cmp	rax, -0x76d
	setg	cl
	movzx	ecx, cl
	lea	rcx, qword ptr [rcx + .str.257]
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
	lea	rbx, [rsp + 0x98]
	mov	esi, 1
	mov	edx, 0xd
	xor	eax, eax
	mov	rdi, rbx
	call	__sprintf_chk
	mov	eax, dword ptr [rsp + 0x374]
	mov	ecx, dword ptr [rsp + 0x378]
	inc	ecx
	mov	dword ptr [rsp + 8], eax
	mov	dword ptr [rsp], ecx
	lea	rbp, [rsp + 0x2a0]
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:.str.256
	xor	eax, eax
	mov	rdi, rbp
	mov	r9, rbx
	call	__snprintf_chk
	xor	eax, eax
	mov	rdi, r13
	mov	r13, qword ptr [rsp + 0x60]
	mov	rsi, rbp
	call	dbg_printf
	mov	rax, qword ptr [rsp + 0x178]
	mov	rcx, qword ptr [rsp + 0x180]
.label_492:
	test	rcx, rcx
	je	.label_533
	test	rax, rax
	je	.label_533
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0xd0]
	lea	rsi, [rsp + 0x3a0]
	call	str_days
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	dbg_printf
.label_533:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x368]
	lea	rsi, [rsp + 0xd0]
	lea	rdx, [rsp + 0x2a0]
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	dbg_printf
.label_429:
	mov	rcx, qword ptr [rsp + 0x140]
	mov	rax, qword ptr [rsp + 0x148]
	or	rcx, qword ptr [rsp + 0x138]
	mov	rdx, rcx
	or	rdx, rax
	je	.label_395
	mov	rbp, r13
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_404
	test	rcx, rcx
	je	.label_406
	cmp	dword ptr [rsp + 0x374], 0xf
	je	.label_406
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	mov	rax, qword ptr [rsp + 0x148]
.label_406:
	test	rax, rax
	je	.label_404
	cmp	dword ptr [rsp + 0x370], 0xc
	je	.label_404
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_404:
	mov	r13, qword ptr [rsp + 0x138]
	test	r13, r13
	js	.label_418
	mov	rcx, r15
	sub	rcx, r13
	movsxd	rax, dword ptr [rsp + 0x37c]
	cmp	rcx, rax
	jl	.label_420
	jmp	.label_424
.label_418:
	movsxd	rax, dword ptr [rsp + 0x37c]
	lea	rcx, [r15 + 1]
	sub	rcx, r13
	cmp	rax, rcx
	jl	.label_420
.label_424:
	movsxd	rcx, eax
	lea	rdx, [r13 + r12]
	add	rdx, rcx
	shr	rdx, 0x20
	jne	.label_420
	mov	rbx, qword ptr [rsp + 0x140]
	test	rbx, rbx
	js	.label_434
	mov	rdx, r15
	sub	rdx, rbx
	movsxd	rcx, dword ptr [rsp + 0x378]
	cmp	rdx, rcx
	jl	.label_420
	jmp	.label_437
.label_434:
	movsxd	rcx, dword ptr [rsp + 0x378]
	lea	rdx, [r15 + 1]
	sub	rdx, rbx
	cmp	rcx, rdx
	jl	.label_420
.label_437:
	movsxd	rdx, ecx
	lea	rsi, [rbx + r12]
	add	rsi, rdx
	shr	rsi, 0x20
	jne	.label_420
	mov	rdi, qword ptr [rsp + 0x148]
	test	rdi, rdi
	js	.label_463
	mov	rsi, r15
	sub	rsi, rdi
	movsxd	rdx, dword ptr [rsp + 0x374]
	cmp	rsi, rdx
	jl	.label_420
	jmp	.label_498
.label_477:
	test	al, al
	je	.label_383
.label_467:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x80], rax
	lea	r15, [rsp + 0xd0]
	lea	rsi, [rsp + 0x3a0]
	mov	rdi, r15
	call	str_days
	mov	r12, rax
	mov	r14, r13
	mov	r13, qword ptr [rsp + 0xd8]
	mov	ebx, dword ptr [rsp + 0xe0]
	lea	rdi, [rsp + 0x368]
	lea	rdx, [rsp + 0x2a0]
	mov	rsi, r15
	call	debug_strfdatetime
	mov	rbp, rax
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x80]
	mov	rsi, r12
	mov	rdx, r13
	mov	r13, r14
	mov	ecx, ebx
	mov	r8, rbp
	call	dbg_printf
	jmp	.label_383
.label_463:
	movsxd	rdx, dword ptr [rsp + 0x374]
	lea	rsi, [r15 + 1]
	sub	rsi, rdi
	cmp	rdx, rsi
	jl	.label_420
.label_498:
	movsxd	rsi, edx
	add	r12, rdi
	add	r12, rsi
	shr	r12, 0x20
	je	.label_471
.label_420:
	cmp	byte ptr [rsp + 0x1a9], 0
	mov	r13, rbp
	je	.label_383
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, OFFSET FLAT:.str.56_0
	mov	edx, 0x877
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	jmp	.label_383
.label_471:
	add	r13d, eax
	add	ebx, ecx
	add	edi, edx
	mov	qword ptr [rsp + 0x80], rdi
	mov	dword ptr [rsp + 0x37c], r13d
	mov	dword ptr [rsp + 0x378], ebx
	mov	dword ptr [rsp + 0x374], edi
	mov	eax, dword ptr [rsp + 0x338]
	mov	dword ptr [rsp + 0x370], eax
	mov	eax, dword ptr [rsp + 0x334]
	mov	dword ptr [rsp + 0x36c], eax
	mov	eax, dword ptr [rsp + 0x330]
	mov	dword ptr [rsp + 0x368], eax
	mov	eax, dword ptr [rsp + 0x350]
	mov	dword ptr [rsp + 0x388], eax
	lea	rsi, [rsp + 0x368]
	mov	rdi, qword ptr [rsp + 0x88]
	call	mktime_z
	mov	r14, rax
	cmp	r14, -1
	mov	al, byte ptr [rsp + 0x1a9]
	je	.label_514
	test	al, al
	je	.label_381
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58_0
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x138]
	mov	rdx, qword ptr [rsp + 0x140]
	mov	rcx, qword ptr [rsp + 0x148]
	xor	eax, eax
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59_0
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	lea	rdi, [rsp + 0x368]
	lea	rsi, [rsp + 0xd0]
	lea	rdx, [rsp + 0x2a0]
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, r12
	mov	rsi, rcx
	call	dbg_printf
	mov	eax, dword ptr [rsp + 0x350]
	cmp	eax, -1
	je	.label_496
	cmp	dword ptr [rsp + 0x388], eax
	je	.label_496
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_496:
	cmp	qword ptr [rsp + 0x148], 0
	jne	.label_381
	mov	rax, qword ptr [rsp + 0x80]
	cmp	dword ptr [rsp + 0x374], eax
	jne	.label_432
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_381
	cmp	dword ptr [rsp + 0x378], ebx
	je	.label_381
.label_432:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x70], rax
	cmp	r13d, 0xfffff893
	setg	al
	movzx	eax, al
	lea	rcx, qword ptr [rax + .str.257]
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
	lea	r13, [rsp + 0x98]
	mov	esi, 1
	mov	edx, 0xd
	xor	eax, eax
	mov	rdi, r13
	call	__sprintf_chk
	inc	ebx
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x70]
	mov	rsi, r13
	mov	edx, ebx
	mov	rcx, qword ptr [rsp + 0x80]
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rsp + 0x37c]
	cmp	rax, -0x76d
	setg	cl
	movzx	ecx, cl
	lea	rcx, qword ptr [rcx + .str.257]
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
	mov	ecx, dword ptr [rsp + 0x374]
	mov	edx, dword ptr [rsp + 0x378]
	inc	edx
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, r13
	call	dbg_printf
.label_381:
	mov	r13, rbp
.label_395:
	cmp	qword ptr [rsp + 0x1a0], 0
	je	.label_439
	movsxd	rax, dword ptr [rsp + 0xe8]
	mov	rdx, qword ptr [rsp + 0x390]
	test	rdx, rdx
	js	.label_440
	lea	rsi, [r15 + 1]
	xor	rsi, rdx
	mov	ecx, 1
	cmp	rax, rsi
	jl	.label_444
	jmp	.label_447
.label_440:
	lea	rsi, [rdx + r15]
	mov	ecx, 1
	cmp	rsi, rax
	jl	.label_444
.label_447:
	xor	ecx, ecx
.label_444:
	sub	rax, rdx
	js	.label_449
	lea	rsi, [r15 + 1]
	xor	rsi, rax
	mov	edx, 1
	cmp	r14, rsi
	jl	.label_451
	jmp	.label_453
.label_449:
	lea	rsi, [rax + r15]
	mov	edx, 1
	cmp	rsi, r14
	jl	.label_451
.label_453:
	xor	edx, edx
.label_451:
	or	edx, ecx
	je	.label_527
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_383
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, dword ptr [rsp + 0xe8]
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	jmp	.label_383
.label_527:
	sub	r14, rax
.label_439:
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_436
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x368]
	lea	rsi, [rsp + 0xd0]
	lea	rdx, [rsp + 0x2a0]
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	mov	rdx, r14
	call	dbg_printf
.label_436:
	movsxd	rdi, dword ptr [rsp + 0x168]
	mov	rsi, qword ptr [rsp + 0x130]
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
	mov	rax, qword ptr [rsp + 0x150]
	test	rax, rax
	js	.label_510
	movabs	rsi, 0x91a2b3c4d5e6f
	cmp	rax, rsi
	jg	.label_376
	jmp	.label_500
.label_510:
	movabs	rsi, 0xfff6e5d4c3b2a191
	cmp	rax, rsi
	jl	.label_376
.label_500:
	imul	rbx, rax, 0xe10
	test	rbx, rbx
	js	.label_504
	mov	rsi, r15
	sub	rsi, rbx
	cmp	rsi, r14
	jl	.label_376
	jmp	.label_508
.label_504:
	lea	rsi, [r15 + 1]
	sub	rsi, rbx
	cmp	r14, rsi
	jl	.label_376
.label_508:
	mov	rsi, qword ptr [rsp + 0x158]
	test	rsi, rsi
	js	.label_512
	movabs	rbp, 0x222222222222222
	cmp	rsi, rbp
	jg	.label_376
	jmp	.label_518
.label_512:
	movabs	rbp, 0xfdddddddddddddde
	cmp	rsi, rbp
	jl	.label_376
.label_518:
	add	rbx, r14
	imul	r14, rsi, 0x3c
	test	r14, r14
	js	.label_521
	mov	rbp, r15
	sub	rbp, r14
	cmp	rbp, rbx
	jl	.label_376
	jmp	.label_523
.label_521:
	lea	rbp, [r15 + 1]
	sub	rbp, r14
	cmp	rbx, rbp
	jl	.label_376
.label_523:
	add	r14, rbx
	mov	rbx, qword ptr [rsp + 0x160]
	test	rbx, rbx
	js	.label_525
	mov	rbp, r15
	sub	rbp, rbx
	cmp	rbp, r14
	jl	.label_376
	jmp	.label_529
.label_525:
	lea	rbp, [r15 + 1]
	sub	rbp, rbx
	cmp	r14, rbp
	jl	.label_376
.label_529:
	mov	rbp, rdx
	shr	rbp, 0x3f
	sar	rdx, 0x1a
	add	rdx, rbp
	add	r14, rbx
	movsxd	rdx, edx
	test	edx, edx
	js	.label_531
	sub	r15, rdx
	cmp	r15, r14
	jl	.label_376
	jmp	.label_375
.label_514:
	test	al, al
	mov	r13, rbp
	je	.label_383
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x368]
	lea	rsi, [rsp + 0xd0]
	lea	rdx, [rsp + 0x2a0]
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	dbg_printf
	jmp	.label_383
.label_531:
	inc	r15
	sub	r15, rdx
	cmp	r14, r15
	jge	.label_375
.label_376:
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_383
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_383:
	xor	ebp, ebp
	mov	rbx, qword ptr [rsp + 0x88]
	jmp	.label_379
.label_375:
	add	r14, rdx
	mov	rdx, qword ptr [rsp + 0x68]
	mov	qword ptr [rdx], r14
	mov	qword ptr [rdx + 8], rcx
	mov	rbp, rdx
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_403
	or	rsi, rax
	or	rsi, rbx
	or	rsi, rdi
	je	.label_403
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x150]
	mov	rdx, qword ptr [rsp + 0x158]
	mov	rcx, qword ptr [rsp + 0x160]
	mov	r8d, dword ptr [rsp + 0x168]
	xor	eax, eax
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, r14
	call	dbg_printf
	cmp	dword ptr [rsp + 0x388], -1
	je	.label_403
	lea	rdx, [rsp + 0x98]
	mov	rdi, qword ptr [rsp + 0x88]
	mov	rsi, rbp
	call	localtime_rz
	test	rax, rax
	je	.label_403
	mov	eax, dword ptr [rsp + 0x388]
	cmp	eax, dword ptr [rsp + 0xb8]
	je	.label_403
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.69
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_403:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	r12, rbp
	jmp	.label_452
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d90

	.globl str_days
	.type str_days, @function
str_days:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xe0], 0
	je	.label_535
	mov	r9, qword ptr [rbx + 8]
	lea	rax, [r9 + 1]
	cmp	rax, 0xd
	ja	.label_537
	imul	rax, rax, 0xb
	lea	r9, qword ptr [rax + str_days.ordinal_values]
	mov	esi, 0x64
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:.str_2
	jmp	.label_536
.label_535:
	mov	byte ptr [r14], 0
	xor	eax, eax
	jmp	.label_538
.label_537:
	mov	esi, 0x64
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:.str.252
.label_536:
	xor	eax, eax
	mov	rdi, r14
	call	__snprintf_chk
.label_538:
	movsxd	rcx, dword ptr [rbx + 0x10]
	test	rcx, rcx
	js	.label_539
	cmp	eax, 0x63
	ja	.label_539
	cmp	ecx, 6
	jg	.label_539
	movsxd	rdi, eax
	add	rdi, r14
	mov	edx, 0x64
	sub	edx, eax
	movsxd	rsi, edx
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	r8, qword ptr [rax + .str.253]
	lea	r9, qword ptr [(rcx * 4) + str_days.days_values]
	mov	edx, 1
	mov	rcx, -1
	xor	eax, eax
	call	__snprintf_chk
.label_539:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e60

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
	mov	edx, OFFSET FLAT:.str.254
	xor	r8d, r8d
	xor	r9d, r9d
	mov	rdi, r15
	mov	rcx, rax
	call	nstrftime
	test	rbx, rbx
	je	.label_540
	cmp	eax, 0x63
	jg	.label_540
	cmp	qword ptr [rbx + 0xd0], 0
	je	.label_540
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
	mov	ecx, OFFSET FLAT:.str.233
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
	je	.label_542
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
	je	.label_541
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
	jmp	.label_543
.label_541:
	add	rax, 3
.label_543:
	mov	byte ptr [rax], 0
.label_542:
	lea	r9, [rsp]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:.str.255
	xor	eax, eax
	mov	rdi, r14
	call	__snprintf_chk
.label_540:
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
	.align	16
	#Procedure 0x408010

	.globl lookup_zone
	.type lookup_zone, @function
lookup_zone:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	esi, OFFSET FLAT:.str.127
	mov	rdi, r15
	call	strcmp
	mov	ebx, OFFSET FLAT:universal_time_zone_table
	test	eax, eax
	je	.label_545
	mov	esi, OFFSET FLAT:.str.128
	mov	rdi, r15
	call	strcmp
	mov	ebx, OFFSET FLAT:label_547
	test	eax, eax
	je	.label_545
	mov	esi, OFFSET FLAT:.str.129
	mov	rdi, r15
	call	strcmp
	mov	ebx, OFFSET FLAT:label_544
	test	eax, eax
	je	.label_545
	mov	rsi, qword ptr [r14 + 0xe8]
	mov	r13d, OFFSET FLAT:time_zone_table
	mov	r12d, OFFSET FLAT:.str.130
	test	rsi, rsi
	je	.label_548
	add	r14, 0xe8
	mov	r13d, OFFSET FLAT:time_zone_table
	mov	r12d, OFFSET FLAT:.str.130
	mov	rbx, r14
	nop	word ptr [rax + rax]
.label_546:
	mov	rdi, r15
	call	strcmp
	test	eax, eax
	je	.label_545
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_546
	nop	dword ptr [rax]
.label_548:
	mov	rdi, r15
	mov	rsi, r12
	call	strcmp
	test	eax, eax
	je	.label_549
	mov	r12, qword ptr [r13 + 0x10]
	add	r13, 0x10
	xor	ebx, ebx
	test	r12, r12
	jne	.label_548
	jmp	.label_545
.label_549:
	mov	rbx, r13
.label_545:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4080f0

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
	mov	r14d, edx
	mov	r13, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	xor	r12d, r12d
	test	r14b, 4
	je	.label_553
	mov	esi, 0x2e
	mov	rdi, r13
	call	strchr
	xor	r12d, r12d
	test	rax, rax
	je	.label_553
	mov	rcx, rax
	sub	rcx, r13
	sub	rbp, rcx
	cmp	rbp, 3
	mov	r12, rax
	mov	rbp, rcx
	jne	.label_550
.label_553:
	lea	rcx, [rbp - 8]
	mov	eax, ebp
	and	eax, 1
	cmp	rcx, 4
	ja	.label_550
	test	rax, rax
	jne	.label_550
	xor	ebx, ebx
	test	rbp, rbp
	je	.label_555
	nop	word ptr cs:[rax + rax]
.label_554:
	movsx	eax, byte ptr [r13 + rbx]
	add	eax, -0x30
	cmp	eax, 0xa
	jae	.label_550
	inc	rbx
	cmp	rbx, rbp
	jb	.label_554
	xor	ebx, ebx
	mov	rax, rbp
	shr	rax, 1
	je	.label_555
	mov	rcx, rbp
	shr	rcx, 1
	xor	esi, esi
	bt	rbp, 1
	jae	.label_558
	movsx	edx, byte ptr [r13]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [r13 + 1]
	lea	edx, [rsi + rdx*2 - 0x210]
	mov	dword ptr [rsp + 0x50], edx
	mov	esi, 1
.label_558:
	cmp	rcx, 1
	je	.label_567
	sub	rcx, rsi
	lea	rdx, [rsp + rsi*4 + 0x54]
	lea	rsi, [r13 + rsi*2 + 3]
	nop	word ptr [rax + rax]
.label_557:
	movsx	edi, byte ptr [rsi - 3]
	lea	edi, [rdi + rdi*4]
	movsx	ebp, byte ptr [rsi - 2]
	lea	edi, [rbp + rdi*2 - 0x210]
	mov	dword ptr [rdx - 4], edi
	movsx	edi, byte ptr [rsi - 1]
	lea	edi, [rdi + rdi*4]
	movsx	ebp, byte ptr [rsi]
	lea	edi, [rbp + rdi*2 - 0x210]
	mov	dword ptr [rdx], edi
	add	rdx, 8
	add	rsi, 4
	add	rcx, -2
	jne	.label_557
.label_567:
	mov	rbx, rax
.label_555:
	mov	r15d, r14d
	and	r15d, 1
	je	.label_559
	lea	rax, [rsp + 0x50]
	jmp	.label_560
.label_559:
	cmp	rbx, 4
	je	.label_563
	cmp	rbx, 6
	je	.label_564
	cmp	rbx, 5
	jne	.label_565
	mov	r10d, dword ptr [rsp + 0x50]
	cmp	r10d, 0x44
	jg	.label_552
	test	r14b, 8
	jne	.label_550
	add	r10d, 0x64
	jmp	.label_552
.label_563:
	lea	rbp, [rsp + 0x70]
	mov	rdi, rbp
	call	time
	mov	rdi, rbp
	call	localtime
	test	rax, rax
	je	.label_550
	mov	r10d, dword ptr [rax + 0x14]
	jmp	.label_552
.label_564:
	test	r14b, 2
	je	.label_550
	mov	rax, qword ptr [rsp + 0x50]
	imul	ecx, eax, 0x64
	shr	rax, 0x20
	lea	r10d, [rax + rcx - 0x76c]
.label_552:
	add	rbx, -4
	lea	rax, [rsp + rbx*4 + 0x50]
	mov	ebx, 4
.label_560:
	mov	esi, dword ptr [rax]
	mov	r9d, dword ptr [rax + 4]
	mov	r8d, dword ptr [rax + 8]
	mov	edi, dword ptr [rax + 0xc]
	test	r15d, r15d
	je	.label_561
	cmp	rbx, 4
	je	.label_566
	cmp	rbx, 6
	je	.label_569
	cmp	rbx, 5
	jne	.label_565
	mov	r10d, dword ptr [rax + 0x10]
	cmp	r10d, 0x44
	jg	.label_561
	test	r14b, 8
	jne	.label_550
	add	r10d, 0x64
	jmp	.label_561
.label_566:
	mov	dword ptr [rsp + 8], r9d
	mov	dword ptr [rsp + 0xc], r8d
	mov	r15d, edi
	mov	ebp, esi
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	time
	mov	rdi, rbx
	call	localtime
	test	rax, rax
	je	.label_550
	mov	r10d, dword ptr [rax + 0x14]
	mov	esi, ebp
	mov	edi, r15d
	mov	r8d, dword ptr [rsp + 0xc]
	mov	r9d, dword ptr [rsp + 8]
	jmp	.label_561
.label_569:
	test	r14b, 2
	je	.label_550
	imul	ecx, dword ptr [rax + 0x10], 0x64
	mov	eax, dword ptr [rax + 0x14]
	lea	r10d, [rax + rcx - 0x76c]
.label_561:
	xor	eax, eax
	test	r12, r12
	je	.label_562
	movsx	eax, byte ptr [r12 + 1]
	lea	ecx, [rax - 0x30]
	cmp	ecx, 9
	ja	.label_550
	movsx	ecx, byte ptr [r12 + 2]
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_550
	lea	eax, [rax + rax*4]
	lea	eax, [rcx + rax*2 - 0x210]
.label_562:
	mov	dword ptr [rsp + 0xc], eax
	mov	dword ptr [rsp + 8], r14d
	dec	esi
	mov	dword ptr [rsp + 0x18], eax
	mov	dword ptr [rsp + 0x1c], edi
	mov	dword ptr [rsp + 0x20], r8d
	mov	dword ptr [rsp + 0x24], r9d
	mov	dword ptr [rsp + 0x28], esi
	mov	dword ptr [rsp + 0x2c], r10d
	mov	dword ptr [rsp + 0x30], 0xffffffff
	mov	dword ptr [rsp + 0x38], 0xffffffff
	mov	ebx, edi
	lea	rdi, [rsp + 0x18]
	mov	ebp, esi
	mov	r12d, r8d
	mov	r15d, r9d
	mov	r14d, r10d
	call	mktime
	mov	rcx, rax
	cmp	dword ptr [rsp + 0x30], 0
	js	.label_570
	xor	r14d, dword ptr [rsp + 0x2c]
	xor	ebp, dword ptr [rsp + 0x28]
	xor	r15d, dword ptr [rsp + 0x24]
	or	r15d, r14d
	xor	r12d, dword ptr [rsp + 0x20]
	or	r12d, r15d
	xor	ebx, dword ptr [rsp + 0x1c]
	or	ebx, r12d
	or	ebx, ebp
	mov	eax, dword ptr [rsp + 0x18]
	mov	edx, dword ptr [rsp + 0xc]
	xor	eax, edx
	or	eax, ebx
	je	.label_571
	mov	rbp, rcx
	cmp	edx, 0x3c
	jne	.label_556
	lea	rbx, [rsp + 0x50]
	mov	edx, 0x10
	mov	rdi, rbx
	mov	rsi, r13
	call	__stpcpy_chk
	mov	byte ptr [rax], 0
	mov	word ptr [rax - 2], 0x3935
	lea	rdi, [rsp + 0x70]
	mov	rsi, rbx
	mov	edx, dword ptr [rsp + 8]
	call	posixtime
	test	al, al
	mov	rcx, rbp
	je	.label_568
.label_571:
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rcx
	mov	al, 1
	jmp	.label_551
.label_550:
	xor	eax, eax
.label_551:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_570:
	xor	eax, eax
	jmp	.label_551
.label_556:
	xor	eax, eax
	jmp	.label_551
.label_568:
	xor	eax, eax
	jmp	.label_551
.label_565:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408490

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rax
	mov	edi, OFFSET FLAT:.str_6
	call	getenv
	mov	rcx, rax
	mov	eax, 0x31069
	test	rcx, rcx
	je	.label_572
	mov	eax, 0x31069
	cmp	byte ptr [rcx], 0
	je	.label_572
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rcx
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	je	.label_572
	mov	eax, 0x31069
.label_572:
	cmp	rax, 0x7fffffff
	mov	ecx, 0x7fffffff
	cmovl	ecx, eax
	cmp	rax, -0x80000000
	mov	eax, 0x80000000
	cmovge	eax, ecx
	pop	rcx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4084f0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_574
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_573
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_573
	mov	esi, OFFSET FLAT:.str.2_2
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_575
	add	r14, 3
	mov	qword ptr [rip + program_invocation_short_name],  r14
.label_575:
	mov	rbx, r14
.label_573:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_574:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:.str_7
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4085a0
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
	#Procedure 0x4085e0
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
	#Procedure 0x4085f0
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
	#Procedure 0x408600
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
	.align	16
	#Procedure 0x408640
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
	#Procedure 0x408660
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_576
	test	rdx, rdx
	je	.label_576
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_576:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408690
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
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	mov	rcx, qword ptr [rbp + 0x30]
	add	rbp, 8
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rbp
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408710

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
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0xa8], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x98], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0xa0], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r12b, bl
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x90], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xc8], rax
	mov	eax, 0
	mov	dword ptr [rsp + 0xd8], 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_639:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_694
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [(rcx * 8) + label_697]
.label_1094:
	mov	edi, OFFSET FLAT:.str.11_1
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_1095:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_594
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_594
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_622:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_649
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_649:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_622
.label_594:
	mov	rbp, qword ptr [rsp + 0x98]
	mov	rdi, rbp
	mov	rbx, r10
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xc8], rax
	mov	r9d, r15d
	mov	qword ptr [rsp + 0xb8], rbp
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r11, qword ptr [rsp + 0xa8]
	jmp	.label_636
.label_1087:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_636
.label_1090:
	mov	al, 1
.label_1088:
	mov	r12b, 1
.label_1091:
	test	r12b, 1
	mov	cl, 1
	je	.label_653
	mov	cl, al
.label_653:
	mov	al, cl
.label_1089:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_657
	test	r10, r10
	je	.label_660
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_661
.label_657:
	xor	ecx, ecx
	jmp	.label_661
.label_1092:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_669
	test	r10, r10
	je	.label_676
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_678
.label_1093:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_636
.label_660:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_661:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_636
.label_669:
	xor	eax, eax
	jmp	.label_678
.label_676:
	mov	eax, 1
.label_678:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_636:
	mov	qword ptr [rsp + 0x80], rsi
	mov	byte ptr [rsp + 0x8f], dil
	cmp	qword ptr [rsp + 0x140], 0
	setne	dl
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	and	cl, 1
	mov	byte ptr [rsp + 0xb6], cl
	sete	byte ptr [rsp + 0x6b]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0xd7], bl
	cmp	qword ptr [rsp + 0xc8], 0
	setne	r13b
	mov	r12b, r13b
	and	r12b, bl
	mov	byte ptr [rsp + 0xc6], r12b
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc7], bl
	sete	cl
	and	al, bl
	mov	byte ptr [rsp + 0x7f], al
	and	dl, bl
	mov	byte ptr [rsp + 0xc5], dl
	or	cl, r15b
	mov	byte ptr [rsp + 0xb7], cl
	and	dil, sil
	and	dil, r13b
	mov	byte ptr [rsp + 0x6a], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xd8]
	jmp	.label_595
.label_640:
	inc	rdi
.label_595:
	cmp	rbp, -1
	je	.label_674
	cmp	rdi, rbp
	jne	.label_632
	jmp	.label_633
	nop	word ptr cs:[rax + rax]
.label_674:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_638
.label_632:
	test	r12b, r12b
	je	.label_641
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_643
	cmp	rbp, -1
	jne	.label_643
	mov	eax, r14d
	mov	r14, rdi
	mov	rdi, r11
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xd8], eax
	mov	r12, r11
	call	strlen
	mov	rdi, r14
	mov	r11, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	r14d, dword ptr [rsp + 0xd8]
	mov	r9, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_643:
	cmp	rbx, rbp
	jbe	.label_666
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_656
	nop	word ptr [rax + rax]
.label_641:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_656
.label_666:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	r12, rbp
	mov	r13, r9
	mov	r15b, r8b
	mov	rbx, r10
	mov	r14, rdi
	lea	rdi, [r11 + r14]
	mov	rbp, r11
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0xc8]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_689
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_656
	jmp	.label_609
.label_689:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_656:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_583
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_588]
.label_1111:
	test	rdi, rdi
	jne	.label_593
	jmp	.label_597
.label_1115:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_599
	test	rdi, rdi
	jne	.label_602
	cmp	rbp, 1
	je	.label_597
	xor	r13d, r13d
	jmp	.label_601
.label_1104:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_607
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_609
	cmp	r9d, 2
	jne	.label_614
	mov	al, r14b
	and	al, 1
	jne	.label_617
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_621
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_621:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_693
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_693:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_651
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_651:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_626
.label_1105:
	mov	bl, 0x62
	jmp	.label_650
.label_1106:
	mov	cl, 0x74
	jmp	.label_637
.label_1107:
	mov	bl, 0x76
	jmp	.label_650
.label_1108:
	mov	bl, 0x66
	jmp	.label_650
.label_1109:
	mov	cl, 0x72
	jmp	.label_637
.label_1112:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_658
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_662
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x90], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_691
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_691:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_686
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_686:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_690
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_690:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_658:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_601
.label_1113:
	cmp	r9d, 5
	je	.label_673
	cmp	r9d, 2
	jne	.label_593
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_593
	jmp	.label_579
.label_1114:
	cmp	r9d, 2
	jne	.label_581
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_584
	jmp	.label_589
.label_583:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_590
	mov	r13d, r14d
	mov	r14, r11
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	eax, 1
.label_591:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_608
	test	cl, cl
	je	.label_608
	xor	eax, eax
	jmp	.label_601
.label_599:
	test	rdi, rdi
	jne	.label_628
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_628
.label_597:
	mov	dl, 1
.label_1110:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_631
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_601
.label_607:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_640
	jmp	.label_593
.label_581:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_637
.label_584:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_644
.label_637:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_645
.label_650:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_601
	jmp	.label_654
.label_590:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_655
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_655:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_596:
	mov	qword ptr [rsp + 0xd8], rax
	mov	qword ptr [rsp + 0x50], rdi
	lea	rax, [rax + rdi]
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_685
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_688
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_692
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_696
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_580:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_699
	bt	rsi, rdx
	jb	.label_700
.label_699:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_580
.label_696:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_612
	xor	r13d, r13d
.label_612:
	mov	rax, qword ptr [rsp + 0xd8]
	add	rax, rbp
	mov	rdi, rbx
	mov	rbp, rax
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_596
	jmp	.label_591
.label_628:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_601
.label_673:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_593
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_593
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_593
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_618
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_623
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_682
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_615
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_615:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_663
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_663:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_648
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_648:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_620
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_620:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_601
.label_593:
	xor	eax, eax
	xor	r13d, r13d
.label_601:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_672
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_675
	jmp	.label_625
	nop	word ptr [rax + rax]
.label_672:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_625
.label_675:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_681
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_687
	nop	word ptr cs:[rax + rax]
.label_625:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_687:
	mov	bl, r15b
	je	.label_644
	jmp	.label_654
.label_681:
	mov	bl, r15b
.label_654:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_609
	cmp	r9d, 2
	jne	.label_695
	mov	al, r14b
	and	al, 1
	jne	.label_695
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_670
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_670:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_577
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_577:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_587
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_587:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_695:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_600
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_600:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_604
.label_602:
	xor	r13d, r13d
	jmp	.label_601
.label_608:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_610
	nop	word ptr [rax + rax]
.label_605:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_610:
	test	cl, cl
	je	.label_624
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_627
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_629
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_629:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_627
	nop	word ptr [rax + rax]
.label_624:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_609
	cmp	r9d, 2
	jne	.label_585
	mov	al, r14b
	and	al, 1
	jne	.label_585
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_652
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_652:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_646
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_646:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_668
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_668:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_585:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_680
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_680:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_684
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_684:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_667
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_667:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_627:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_644
	test	r14b, 1
	je	.label_578
	mov	bl, al
	and	bl, 1
	jne	.label_578
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_598
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_598:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_592
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_592:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_578:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_605
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_605
	nop	dword ptr [rax]
.label_644:
	test	r14b, 1
	je	.label_619
	and	al, 1
	jne	.label_619
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_630
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_630:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_647
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_647:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_619:
	mov	bl, r15b
.label_604:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_642
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_642:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_640
.label_614:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_626
.label_617:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_626:
	cmp	rcx, r10
	jae	.label_659
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_659:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_665
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_701
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_677
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_679
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_679:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_683
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_683:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_601
.label_665:
	xor	r13d, r13d
	jmp	.label_601
.label_701:
	xor	r13d, r13d
	jmp	.label_601
.label_677:
	xor	r13d, r13d
	jmp	.label_601
.label_688:
	xor	r13d, r13d
.label_685:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_591
.label_692:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_698
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_611:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_582
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_611
	xor	r13d, r13d
	jmp	.label_591
.label_698:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_591
.label_582:
	xor	r13d, r13d
	jmp	.label_591
.label_618:
	xor	r13d, r13d
	jmp	.label_601
.label_623:
	xor	r13d, r13d
	jmp	.label_601
	nop	dword ptr [rax]
.label_633:
	mov	r13, rdi
.label_638:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_606
	or	al, dl
	je	.label_613
.label_606:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	qword ptr [rsp + 0xa8], r11
	cmp	r9d, 2
	setne	al
	cmp	byte ptr [rsp + 0xc7], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x8f]
	mov	rsi, qword ptr [rsp + 0x80]
	je	.label_616
	or	al, dl
	jne	.label_616
	test	r8b, 1
	jne	.label_635
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_616
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_639
.label_616:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_603
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_603
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_603
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_664:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_634
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_634:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_664
.label_603:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_671
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_671
.label_631:
	mov	r9d, 2
	jmp	.label_609
.label_700:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_609
.label_613:
	mov	rbp, r13
	jmp	.label_609
.label_645:
	mov	r9d, 2
.label_609:
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r8d, 4
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x6c]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rdx, r11
	mov	rcx, rbp
.label_586:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_671:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_635:
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_586
.label_662:
	mov	r9d, 2
	jmp	.label_609
.label_589:
	mov	r9d, 2
	jmp	.label_609
.label_579:
	mov	r9d, 2
	jmp	.label_609
.label_682:
	mov	r9d, 5
	jmp	.label_609
.label_694:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4098a0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x20], rbx
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x34], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	eax, dword ptr [rsp + 0x34]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x38
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
	#Procedure 0x409970
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
	call	xmalloc
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
	je	.label_702
	mov	qword ptr [rax], rbx
.label_702:
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
	.align	16
	#Procedure 0x409a70
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_703
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_705:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_705
.label_703:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_706
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_707], OFFSET FLAT:slot0
.label_706:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_704
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_704:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409b10
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x409b20

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
	js	.label_708
	mov	ecx, dword ptr [rax]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  ebx
	jle	.label_711
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_714
.label_711:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_710
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
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_709
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_709:
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
	mov	r14, qword ptr [rsp + 0x38]
.label_714:
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
	ja	.label_712
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_713
	mov	rdi, rbx
	call	free
.label_713:
	mov	rdi, r14
	call	xmalloc
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
.label_712:
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
.label_708:
	call	abort
.label_710:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409cf0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d00
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
	#Procedure 0x409d20
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
	#Procedure 0x409d40

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_715
	mov	dword ptr [rsp + 8], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_715:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x409db0
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_716
	mov	dword ptr [rsp + 8], esi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rax, [rsp + 8]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_716:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e20

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_717
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_717:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e90
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_718
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_718:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f00
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_719]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_720]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_721]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	al, cl
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
	#Procedure 0x409f70
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_719]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_720]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_721]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
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
	#Procedure 0x409fe0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_719]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_720]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_721]
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
	#Procedure 0x40a040
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_719]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_720]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_721]
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
	#Procedure 0x40a0a0
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	sub	rsp, 0xa8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	dword ptr [rsp + 0xa0], 0
	cmp	esi, 0xa
	je	.label_722
	mov	ecx, dword ptr [rsp + 0xa0]
	mov	dword ptr [rsp + 0x30], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x70]
	movaps	xmm1, xmmword ptr [rsp + 0x80]
	movaps	xmm2, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rsp + 0x20], xmm2
	movaps	xmmword ptr [rsp + 0x10], xmm1
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x38], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x6c], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x5c], xmm2
	movups	xmmword ptr [rsp + 0x4c], xmm1
	movups	xmmword ptr [rsp + 0x3c], xmm0
	or	byte ptr [rsp + 0x47], 4
	lea	rcx, [rsp + 0x38]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0xa8
	ret	
.label_722:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a150
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_719]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_720]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_721]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_723
	test	rdx, rdx
	je	.label_723
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_723:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a1c0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_719]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_720]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_721]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_724
	test	rdx, rdx
	je	.label_724
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_724:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a230
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_719]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_720]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_721]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_725
	test	rsi, rsi
	je	.label_725
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_725:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40a2a0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_719]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_720]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_721]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_726
	test	rsi, rsi
	je	.label_726
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
.label_726:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a310
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a320
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
	#Procedure 0x40a340

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a360

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
	#Procedure 0x40a380

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
	jne	.label_728
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_729
	cmp	ecx, 0x55
	jne	.label_727
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_727
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_727
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_727
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_727
	cmp	byte ptr [rax + 5], 0
	jne	.label_727
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_728
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_728
.label_729:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_727
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_727
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_727
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_727
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_727
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_727
	cmp	byte ptr [rax + 7], 0
	je	.label_730
.label_727:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_728:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_730:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_728
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_728
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a470

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
	je	.label_737
	mov	edx, OFFSET FLAT:.str_8
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_736
.label_737:
	mov	edx, OFFSET FLAT:.str.1_4
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_736:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_3
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
	mov	esi, OFFSET FLAT:.str.3_2
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_732
	jmp	qword ptr [(r12 * 8) + label_733]
.label_1047:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_2
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
.label_732:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_731
.label_1048:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_1
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
.label_1049:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_1
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
.label_1050:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_738
.label_1051:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_740
.label_1052:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_735
.label_1053:
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
.label_735:
	mov	qword ptr [rsp + 0x10], rdi
.label_740:
	mov	qword ptr [rsp + 8], rsi
.label_738:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_739
.label_1055:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_731:
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
	jmp	.label_734
.label_1054:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_2
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
.label_734:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_739:
	call	__fprintf_chk
.label_1046:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a760
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_741:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_741
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a790
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_744:
	cmp	r10d, 0x28
	ja	.label_742
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_743
	nop	word ptr cs:[rax + rax]
.label_742:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_743:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_745
	inc	r9
	cmp	r9, 0xa
	jb	.label_744
.label_745:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a7f0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_746
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_746:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0x130]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	xor	r9d, r9d
	mov	r8d, dword ptr [rsp + 0xb0]
	nop	word ptr cs:[rax + rax]
.label_750:
	cmp	r8d, 0x28
	ja	.label_747
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_749
	nop	
.label_747:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_749:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_748
	inc	r9
	cmp	r9, 0xa
	jb	.label_750
.label_748:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a8f0
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
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_1
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a970
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_751
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_752
	test	rax, rax
	je	.label_751
.label_752:
	pop	rbx
	ret	
.label_751:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a9b0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_753
	test	rax, rax
	je	.label_754
.label_753:
	pop	rbx
	ret	
.label_754:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a9d0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_755
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_756
	test	rbx, rbx
	jne	.label_756
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_756:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_757
	test	rax, rax
	je	.label_755
.label_757:
	pop	rbx
	ret	
.label_755:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa20

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_758
	test	rbx, rbx
	jne	.label_758
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_758:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_760
	test	rax, rax
	je	.label_759
.label_760:
	pop	rbx
	ret	
.label_759:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40aa50
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_764
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_765
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_761
.label_764:
	test	rcx, rcx
	jne	.label_767
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_767:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_766
.label_761:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_762
	test	rbx, rbx
	jne	.label_762
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_762:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_763
	test	rax, rax
	je	.label_765
.label_763:
	pop	rbx
	ret	
.label_765:
	call	xalloc_die
.label_766:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aaf0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_768
	test	rax, rax
	je	.label_769
.label_768:
	pop	rbx
	ret	
.label_769:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ab10
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_772
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_774
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_771
	call	free
	xor	eax, eax
	jmp	.label_773
.label_772:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_770
	mov	qword ptr [rsi], rbx
.label_771:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_773
	test	rax, rax
	je	.label_770
.label_773:
	pop	rbx
	ret	
.label_770:
	call	xalloc_die
.label_774:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ab80
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
	je	.label_776
	test	r14, r14
	je	.label_775
.label_776:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_775:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40abc0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_777
	call	rpl_calloc
	test	rax, rax
	je	.label_777
	pop	rcx
	ret	
.label_777:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40abf0

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
	je	.label_778
	test	r15, r15
	je	.label_779
.label_778:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_779:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ac30
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
	je	.label_781
	test	r15, r15
	je	.label_780
.label_781:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_780:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ac80

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_5
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
	.align	16
	#Procedure 0x40acb0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_782
	test	rsi, rsi
	mov	ecx, 1
	je	.label_783
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_783
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_782:
	mov	ecx, 1
.label_783:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ad00

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
	je	.label_784
	cmp	r15, -2
	jb	.label_784
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_784
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_784:
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
	#Procedure 0x40ad60

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
	je	.label_785
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_785:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_786
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_786
	mov	r12, rbx
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_786:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ade0

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbx
	cmp	rdi, 2
	jb	.label_787
	nop	word ptr [rax + rax]
.label_788:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_788
.label_787:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ae10

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
	je	.label_792
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_791
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_789
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	bpl, al
	xor	bpl, 1
.label_789:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_790
.label_792:
	mov	rdi, rbp
	mov	rsi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_791:
	xor	eax, eax
.label_790:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aea0

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
	mov	edi, OFFSET FLAT:.str_5
	call	getenv
	mov	r15, rax
	test	r15, r15
	mov	bl, byte ptr [r14 + 8]
	je	.label_801
	test	bl, bl
	je	.label_793
	lea	rdi, [r14 + 9]
	mov	rsi, r15
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_795
.label_793:
	mov	rdi, r15
	call	strlen
	mov	r12, rax
	inc	r12
	mov	bpl, 1
	jmp	.label_797
.label_801:
	xor	ebp, ebp
	mov	eax, 1
	test	bl, bl
	mov	r12d, 0
	je	.label_795
.label_797:
	lea	rax, [r12 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r12, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_795
	mov	qword ptr [r13], 0
	mov	byte ptr [r13 + 8], bpl
	mov	byte ptr [r13 + 9], 0
	test	bpl, bpl
	je	.label_800
	lea	rbp, [r13 + 9]
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	mov	byte ptr [rbp + r12], 0
.label_800:
	test	bl, bl
	je	.label_796
	add	r14, 9
	mov	edi, OFFSET FLAT:.str_5
	mov	edx, 1
	mov	rsi, r14
	call	setenv
	jmp	.label_802
.label_796:
	mov	edi, OFFSET FLAT:.str_5
	call	unsetenv
.label_802:
	test	eax, eax
	je	.label_799
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	cmp	r13, 2
	jb	.label_794
	nop	dword ptr [rax]
.label_798:
	mov	rbx, qword ptr [r13]
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_798
.label_794:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_795
.label_799:
	call	tzset
	mov	rax, r13
.label_795:
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
	#Procedure 0x40afe0

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
	je	.label_804
	cmp	r15, rbx
	ja	.label_803
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	jb	.label_804
.label_803:
	mov	ebp, OFFSET FLAT:.str_0
	cmp	byte ptr [rbx], 0
	je	.label_806
	lea	rbp, [r12 + 9]
	jmp	.label_811
.label_815:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	cmovne	r12, rax
.label_811:
	lea	r13, [r12 + 9]
.label_812:
	mov	rdi, rbp
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_806
	cmp	byte ptr [rbp], 0
	jne	.label_807
	cmp	rbp, r13
	jne	.label_809
	cmp	byte ptr [r12 + 8], 0
	je	.label_810
.label_807:
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rax + rbp + 1]
	cmp	byte ptr [rax + rbp + 1], 0
	mov	rbp, rcx
	jne	.label_812
	jmp	.label_815
.label_810:
	mov	rbp, r13
.label_809:
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rax + 1]
	mov	rcx, rbp
	sub	rcx, r13
	mov	rsi, rcx
	not	rsi
	cmp	rdx, rsi
	jbe	.label_805
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_814:
	xor	r14d, r14d
	jmp	.label_804
.label_805:
	add	rcx, rdx
	cmp	rcx, 0x76
	ja	.label_813
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	mov	qword ptr [r15 + 0x30], rbp
	jmp	.label_804
.label_813:
	add	rax, 0x12
	and	rax, 0xfffffffffffffff8
	cmp	rdx, 0x77
	mov	r13, rdx
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	test	rax, rax
	je	.label_808
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
.label_806:
	mov	qword ptr [r15 + 0x30], rbp
.label_804:
	mov	al, r14b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_808:
	mov	qword ptr [r12], 0
	jmp	.label_814
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b150

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
	je	.label_818
	call	__errno_location
	mov	r14, rax
	mov	r15d, dword ptr [r14]
	cmp	byte ptr [rbp + 8], 0
	je	.label_817
	lea	rsi, [rbp + 9]
	mov	edi, OFFSET FLAT:.str_5
	mov	edx, 1
	call	setenv
	jmp	.label_816
.label_817:
	mov	edi, OFFSET FLAT:.str_5
	call	unsetenv
.label_816:
	test	eax, eax
	je	.label_820
	mov	r15d, dword ptr [r14]
	xor	r12d, r12d
	jmp	.label_821
.label_820:
	call	tzset
	mov	r12b, 1
.label_821:
	cmp	rbp, 2
	jb	.label_819
	nop	
.label_822:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_822
.label_819:
	mov	dword ptr [r14], r15d
.label_818:
	mov	al, r12b
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b1e0

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
	je	.label_823
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_824
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp + 0x38], rax
	cmp	rax, -1
	jne	.label_827
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp]
	call	localtime_r
	test	rax, rax
	je	.label_825
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	xor	rax, qword ptr [r15]
	xor	rcx, qword ptr [r15 + 8]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x10]
	xor	rax, qword ptr [r15 + 0x10]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	edi, dword ptr [r15 + 0x20]
	mov	edx, dword ptr [rsp + 0x20]
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
	jne	.label_825
.label_827:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_825
	mov	qword ptr [rsp + 0x38], -1
.label_825:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_824
	mov	rax, qword ptr [rsp + 0x38]
	jmp	.label_826
.label_824:
	mov	rax, -1
.label_826:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_823:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b2e0

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
	jne	.label_829
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_828
	test	cl, cl
	jne	.label_828
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_828
.label_829:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_828
	call	__errno_location
	mov	dword ptr [rax], 0
.label_828:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b340

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_831
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_832
	cmp	byte ptr [rax + 1], 0
	je	.label_830
.label_832:
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_831
.label_830:
	xor	ebx, ebx
.label_831:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b380

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_7
	cmp	byte ptr [rcx], 0
	je	.label_833
	mov	rax, rcx
.label_833:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b3b0

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	sub	rsp, 0x18
	mov	dword ptr [rsp + 0x10], r9d
	mov	qword ptr [rsp + 8], r8
	mov	dword ptr [rsp], 0xffffffff
	xor	r8d, r8d
	xor	r9d, r9d
	call	__strftime_internal
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b3e0

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4a8
	mov	dword ptr [rsp + 0x5c], r8d
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x70], rsi
	mov	eax, dword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x30]
	test	rdx, rdx
	mov	esi, OFFSET FLAT:.str_0
	cmovne	rsi, rdx
	lea	edx, [rax - 0xc]
	test	eax, eax
	mov	ebx, 0xc
	cmovne	ebx, eax
	cmp	eax, 0xc
	cmovg	ebx, edx
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1004
	mov	dword ptr [rsp + 0x2c], ebx
	mov	qword ptr [rsp + 0x30], rsi
	mov	qword ptr [rsp + 0x48], rcx
	mov	dword ptr [rsp + 0x3c], r9d
	mov	r14d, dword ptr [rsp + 0x4e0]
	movabs	r15, 0x1000000000002500
	xor	esi, esi
	jmp	.label_846
.label_1004:
	xor	esi, esi
	jmp	.label_855
.label_964:
	mov	edi, 3
	jmp	.label_859
	nop	word ptr cs:[rax + rax]
.label_846:
	movzx	ecx, al
	xor	r12d, r12d
	cmp	ecx, 0x25
	jne	.label_863
	mov	qword ptr [rsp + 0x78], rsi
	mov	eax, dword ptr [rsp + 0x5c]
	mov	bl, al
	xor	r13d, r13d
	jmp	.label_865
	nop	
.label_863:
	test	r14d, r14d
	mov	ecx, r14d
	mov	edx, 0
	cmovs	ecx, edx
	movsxd	rbx, ecx
	cmp	ebx, 1
	mov	edx, 1
	cmovbe	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x70]
	sub	rdx, rsi
	cmp	rbx, rdx
	jae	.label_869
	test	rdi, rdi
	mov	edx, 0
	je	.label_877
	cmp	ecx, 2
	jb	.label_881
	movsxd	r14, r14d
	lea	rdx, [r14 - 1]
	mov	r12, rsi
	mov	esi, 0x20
	mov	r13, rdi
	call	memset
	mov	rdi, r13
	mov	rsi, r12
	lea	rdi, [rdi + r14 - 1]
	mov	al, byte ptr [rbp]
.label_881:
	mov	byte ptr [rdi], al
.label_973:
	inc	rdi
	mov	rdx, rdi
.label_877:
	add	rsi, rbx
	mov	rdi, rdx
	jmp	.label_896
	nop	word ptr cs:[rax + rax]
.label_907:
	mov	r12b, 1
	mov	al, bl
	jmp	.label_865
	nop	word ptr [rax + rax]
.label_906:
	inc	rbp
	mov	r13d, edx
.label_909:
	mov	cl, byte ptr [rbp]
	movsx	edx, cl
	lea	esi, [rdx - 0x23]
	cmp	esi, 0x3c
	ja	.label_901
	bt	r15, rsi
	jb	.label_906
	mov	al, 1
	test	rsi, rsi
	je	.label_907
	cmp	rsi, 0x3b
	jne	.label_901
.label_865:
	mov	bl, al
	inc	rbp
	jmp	.label_909
	nop	
.label_901:
	mov	qword ptr [rsp + 0x68], rdi
	add	edx, -0x30
	xor	eax, eax
	cmp	edx, 9
	ja	.label_911
	nop	
.label_902:
	mov	r14d, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_882
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	jne	.label_916
	lea	edx, [rcx - 0x30]
	cmp	edx, 7
	jg	.label_882
.label_916:
	lea	eax, [rax + rax*4]
	lea	r14d, [rcx + rax*2 - 0x30]
.label_882:
	movsx	ecx, byte ptr [rbp + 1]
	inc	rbp
	mov	eax, ecx
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, r14d
	jb	.label_902
.label_911:
	movsx	r9d, cl
	cmp	r9d, 0x4f
	je	.label_926
	cmp	r9d, 0x45
	jne	.label_936
.label_926:
	mov	qword ptr [rsp + 0x60], rbx
	mov	cl, byte ptr [rbp + 1]
	inc	rbp
	jmp	.label_927
.label_936:
	mov	qword ptr [rsp + 0x60], rbx
	xor	r9d, r9d
.label_927:
	movsx	r11d, cl
	xor	ebx, ebx
	mov	esi, 1
	lea	edx, [r11 - 0x25]
	cmp	edx, 0x55
	ja	.label_929
	mov	eax, OFFSET FLAT:.str.3_3
	mov	qword ptr [rsp + 0x50], rax
	mov	r8b, 0x72
	mov	r10d, 0xffffffff
	xor	eax, eax
	xor	edi, edi
	jmp	qword ptr [(rdx * 8) + label_934]
.label_1196:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_835
	mov	rdx, qword ptr [rsp + 0x48]
	mov	r8d, dword ptr [rdx + 0x14]
	mov	r9d, dword ptr [rdx + 0x18]
	mov	eax, r8d
	sar	eax, 0x1f
	and	eax, 0x190
	lea	r12d, [r8 + rax - 0x64]
	mov	ebx, dword ptr [rdx + 0x1c]
	lea	eax, [rbx + 0x17e]
	sub	eax, r9d
	movsxd	rdx, eax
	imul	rax, rdx, -0x6db6db6d
	shr	rax, 0x20
	add	eax, edx
	mov	edi, eax
	shr	edi, 0x1f
	sar	eax, 2
	add	eax, edi
	lea	edi, [rax*8]
	sub	edi, eax
	sub	edx, edi
	lea	eax, [rbx + 3]
	sub	eax, edx
	js	.label_941
	mov	edx, 0x16d
	test	r12b, 3
	jne	.label_954
	movsxd	rdx, r12d
	imul	rdx, rdx, 0x51eb851f
	mov	rdi, rdx
	sar	rdi, 0x25
	mov	rsi, rdx
	shr	rsi, 0x3f
	add	edi, esi
	imul	edi, edi, 0x64
	sar	rdx, 0x27
	add	edx, esi
	imul	edx, edx, 0x190
	cmp	r12d, edx
	sete	dl
	movzx	esi, dl
	add	esi, 0x16d
	cmp	r12d, edi
	mov	edx, 0x16e
	cmove	edx, esi
.label_954:
	sub	ebx, edx
	lea	edx, [rbx + 0x17e]
	sub	edx, r9d
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	add	esi, edx
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 2
	add	esi, edi
	lea	edi, [rsi*8]
	sub	edi, esi
	sub	edx, edi
	add	ebx, 3
	sub	ebx, edx
	cmovns	eax, ebx
	shr	ebx, 0x1f
	xor	ebx, 1
	jmp	.label_960
	nop	dword ptr [rax]
.label_928:
	inc	rsi
.label_1190:
	movzx	eax, byte ptr [rbp + rsi]
	cmp	eax, 0x3a
	je	.label_928
	movzx	eax, al
	cmp	eax, 0x7a
	jne	.label_835
	add	rbp, rsi
	mov	rbx, rsi
.label_1227:
	mov	rax, qword ptr [rsp + 0x48]
	cmp	dword ptr [rax + 0x20], 0
	js	.label_974
	mov	r8d, dword ptr [rax + 0x28]
	mov	sil, 1
	test	r8d, r8d
	js	.label_975
	test	r8d, r8d
	je	.label_978
	xor	esi, esi
	jmp	.label_975
.label_1210:
	test	r12b, r12b
	je	.label_979
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
.label_979:
	xor	eax, eax
	cmp	r9d, 0x45
	je	.label_835
	mov	r8b, cl
	jmp	.label_841
.label_929:
	test	r11d, r11d
	jne	.label_835
	dec	rbp
	jmp	.label_835
.label_1189:
	test	r9d, r9d
	jne	.label_835
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rdx, eax
	cmp	edx, 1
	mov	ebx, 1
	cmova	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rdx, rsi
	cmp	rbx, rdx
	mov	rdi, qword ptr [rsp + 0x68]
	jae	.label_869
	xor	edx, edx
	test	rdi, rdi
	je	.label_877
	cmp	eax, 2
	jb	.label_998
	movsxd	r14, r14d
	dec	r14
	cmp	r13d, 0x30
	je	.label_999
	cmp	r13d, 0x2b
	jne	.label_940
.label_999:
	mov	r12, rsi
	mov	esi, 0x30
	jmp	.label_1003
.label_1191:
	test	r9d, r9d
	jne	.label_835
	test	r12b, r12b
	je	.label_1005
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
.label_1005:
	xor	eax, eax
	mov	r8b, 0x41
	jmp	.label_841
.label_1192:
	cmp	r9d, 0x45
	je	.label_835
	test	r12b, r12b
	je	.label_837
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
.label_837:
	xor	eax, eax
	mov	r8b, 0x42
	jmp	.label_841
.label_1193:
	mov	r10d, r9d
	cmp	r10d, 0x45
	jne	.label_845
	mov	r9d, r10d
	xor	eax, eax
	mov	r8b, 0x43
	jmp	.label_841
.label_1194:
	test	r9d, r9d
	jne	.label_835
	mov	eax, OFFSET FLAT:.str.1_8
	mov	qword ptr [rsp + 0x50], rax
	mov	r10d, 0xffffffff
	jmp	.label_850
.label_1195:
	test	r9d, r9d
	jne	.label_835
	test	r13d, r13d
	jne	.label_862
	test	r14d, r14d
	jns	.label_862
	mov	eax, OFFSET FLAT:.str.2_4
	mov	qword ptr [rsp + 0x50], rax
	mov	r13d, 0x2b
	mov	r10d, 4
	jmp	.label_850
.label_1197:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_835
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 8]
	jmp	.label_858
.label_1198:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_835
	mov	edi, 2
	mov	eax, dword ptr [rsp + 0x2c]
	mov	edx, eax
	jmp	.label_874
.label_1199:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_835
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 4]
	jmp	.label_858
.label_1200:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_835
	cmp	r14d, -1
	je	.label_891
	cmp	r14d, 8
	jg	.label_895
	mov	esi, 9
	sub	esi, r14d
	mov	eax, 8
	sub	eax, r14d
	test	sil, 3
	mov	edx, dword ptr [rsp + 0x4f0]
	mov	ebx, r14d
	je	.label_898
	and	esi, 3
	neg	esi
	mov	edx, dword ptr [rsp + 0x4f0]
	mov	ebx, r14d
.label_904:
	movsxd	rdx, edx
	imul	rdx, rdx, 0x66666667
	mov	rdi, rdx
	shr	rdi, 0x3f
	sar	rdx, 0x22
	add	edx, edi
	inc	ebx
	inc	esi
	jne	.label_904
.label_898:
	cmp	eax, 3
	jae	.label_910
	mov	edi, r14d
	jmp	.label_874
.label_1201:
	mov	dil, 1
.label_1219:
	xor	ebx, ebx
	test	r12b, r12b
	je	.label_852
	mov	eax, 0
	mov	qword ptr [rsp + 0x60], rax
.label_852:
	je	.label_917
	mov	dil, 1
.label_917:
	mov	r8b, 0x70
	mov	al, dil
	jmp	.label_875
.label_1202:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_835
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax]
	jmp	.label_858
.label_1203:
	mov	eax, OFFSET FLAT:.str.4_3
.label_924:
	mov	qword ptr [rsp + 0x50], rax
.label_850:
	mov	dword ptr [rsp + 0x40], r10d
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], ecx
	mov	rcx, qword ptr [rsp + 0x4e8]
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], r10d
	movzx	r8d, al
	xor	ebx, ebx
	xor	edi, edi
	mov	rsi, -1
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r9d, r13d
	call	__strftime_internal
	mov	rdi, qword ptr [rsp + 0x68]
	test	r14d, r14d
	cmovns	ebx, r14d
	movsxd	rdx, ebx
	cmp	rax, rdx
	mov	rbx, rax
	cmovb	rbx, rdx
	mov	r12, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	r12, rsi
	cmp	rbx, r12
	jae	.label_869
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_864
	cmp	rax, rdx
	jae	.label_945
	movsxd	rcx, r14d
	sub	rcx, rax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r13d, 0x30
	je	.label_949
	cmp	r13d, 0x2b
	jne	.label_951
.label_949:
	mov	esi, 0x30
	jmp	.label_952
.label_1204:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_835
	mov	rdx, qword ptr [rsp + 0x48]
	mov	eax, dword ptr [rdx + 0x1c]
	add	eax, 7
	sub	eax, dword ptr [rdx + 0x18]
	movsxd	rdx, eax
	jmp	.label_956
.label_1205:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_835
	mov	rdx, qword ptr [rsp + 0x48]
	mov	eax, dword ptr [rdx + 0x18]
	mov	edx, dword ptr [rdx + 0x1c]
	lea	esi, [rax + 6]
	movsxd	rsi, esi
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	lea	eax, [rdi + rax + 6]
	mov	edi, eax
	shr	edi, 0x1f
	sar	eax, 2
	add	eax, edi
	lea	edi, [rax*8]
	sub	edi, eax
	sub	esi, edi
	add	edx, 7
	sub	edx, esi
	movsxd	rdx, edx
.label_956:
	imul	rax, rdx, -0x6db6db6d
	shr	rax, 0x20
	add	edx, eax
	mov	eax, edx
	shr	eax, 0x1f
	sar	edx, 2
	add	edx, eax
	jmp	.label_858
.label_1206:
	cmp	r9d, 0x4f
	je	.label_835
	xor	eax, eax
	mov	r8b, 0x58
	jmp	.label_841
.label_1207:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_970
	cmp	r10d, 0x4f
	je	.label_835
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0x14]
	cmp	edx, 0xfffff894
	setl	sil
	add	edx, 0x76c
	mov	edi, 4
	jmp	.label_861
.label_1208:
	mov	rdi, qword ptr [rsp + 0x30]
	call	strlen
	mov	rdi, qword ptr [rsp + 0x68]
	mov	r9, rax
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	cdqe	
	cmp	r9, rax
	mov	rbx, r9
	cmovb	rbx, rax
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_869
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_864
	cmp	r9, rax
	jae	.label_919
	movsxd	r14, r14d
	sub	r14, r9
	mov	qword ptr [rsp + 0x50], r9
	cmp	r13d, 0x30
	je	.label_991
	cmp	r13d, 0x2b
	jne	.label_993
.label_991:
	mov	esi, 0x30
	jmp	.label_995
.label_1209:
	test	r9d, r9d
	jne	.label_835
	test	r12b, r12b
	je	.label_1006
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
.label_1006:
	xor	eax, eax
	mov	r8b, 0x61
	jmp	.label_841
.label_1211:
	cmp	r9d, 0x4f
	je	.label_835
	xor	eax, eax
	mov	r8b, 0x63
	jmp	.label_841
.label_1212:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_835
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0xc]
	jmp	.label_858
.label_1213:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_835
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0xc]
	jmp	.label_913
.label_1214:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_835
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0x1c]
	cmp	edx, -1
	setl	sil
	inc	edx
	mov	edi, 3
	jmp	.label_839
.label_1215:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_835
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 8]
	jmp	.label_913
.label_1216:
	mov	r10d, r9d
	cmp	r10d, 0x45
	mov	eax, dword ptr [rsp + 0x2c]
	mov	edx, eax
	je	.label_835
.label_913:
	test	r13d, r13d
	mov	eax, 0x5f
	cmove	r13d, eax
	jmp	.label_858
.label_1217:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_835
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0x10]
	cmp	edx, -1
	setl	sil
	inc	edx
	mov	edi, 2
	jmp	.label_839
.label_1218:
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x68]
	jae	.label_869
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_864
	cmp	eax, 2
	jb	.label_887
	mov	r12, rsi
	movsxd	r14, r14d
	dec	r14
	cmp	r13d, 0x30
	je	.label_899
	cmp	r13d, 0x2b
	jne	.label_890
.label_899:
	mov	esi, 0x30
	jmp	.label_893
.label_1220:
	mov	rax, qword ptr [rsp + 0x48]
	imul	edx, dword ptr [rax + 0x10], 0xb
	sar	edx, 5
	inc	edx
	mov	edi, 1
	xor	ebx, ebx
	xor	r8d, r8d
	xor	esi, esi
	mov	r10d, r9d
	jmp	.label_880
.label_1221:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0xb0], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0x90], xmm1
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsp + 0x80]
	mov	rdi, qword ptr [rsp + 0x4e8]
	call	mktime_z
	mov	rcx, rax
	mov	rsi, rcx
	shr	rsi, 0x3f
	lea	r12, [rsp + 0x4a7]
	nop	dword ptr [rax + rax]
.label_921:
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
	ja	.label_921
	mov	r10d, 1
	xor	r8d, r8d
	jmp	.label_931
.label_1222:
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x68]
	jae	.label_869
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_864
	cmp	eax, 2
	jb	.label_943
	mov	r12, rsi
	movsxd	r14, r14d
	dec	r14
	cmp	r13d, 0x30
	je	.label_944
	cmp	r13d, 0x2b
	jne	.label_947
.label_944:
	mov	esi, 0x30
	jmp	.label_950
.label_1223:
	mov	rax, qword ptr [rsp + 0x48]
	mov	eax, dword ptr [rax + 0x18]
	lea	edx, [rax + 6]
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	lea	eax, [rsi + rax + 6]
	mov	esi, eax
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	lea	esi, [rax*8]
	sub	esi, eax
	sub	edx, esi
	inc	edx
	mov	edi, 1
	mov	r10d, r9d
	jmp	.label_874
.label_1224:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_835
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0x18]
	mov	edi, 1
	jmp	.label_874
.label_1225:
	cmp	r9d, 0x4f
	je	.label_835
	xor	eax, eax
	mov	r8b, 0x78
	jmp	.label_841
.label_1226:
	mov	r10d, r9d
	cmp	r10d, 0x45
	jne	.label_854
	mov	r9d, r10d
	xor	eax, eax
	mov	r8b, 0x79
	jmp	.label_841
.label_945:
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_965
.label_941:
	dec	r12d
	mov	eax, 0x16d
	test	r12b, 3
	jne	.label_967
	movsxd	rax, r12d
	imul	rax, rax, 0x51eb851f
	mov	rdx, rax
	sar	rdx, 0x25
	mov	rdi, rax
	shr	rdi, 0x3f
	add	edx, edi
	imul	edx, edx, 0x64
	sar	rax, 0x27
	add	eax, edi
	imul	eax, eax, 0x190
	cmp	r12d, eax
	sete	al
	movzx	edi, al
	add	edi, 0x16d
	cmp	r12d, edx
	mov	eax, 0x16e
	cmove	eax, edi
.label_967:
	lea	edx, [rax + rbx + 0x17e]
	sub	edx, r9d
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	add	esi, edx
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 2
	add	esi, edi
	lea	edi, [rsi*8]
	sub	edi, esi
	sub	edx, edi
	lea	eax, [rax + rbx + 3]
	sub	eax, edx
	mov	ebx, 0xffffffff
.label_960:
	cmp	r11d, 0x47
	je	.label_982
	cmp	r11d, 0x67
	jne	.label_988
	movsxd	rax, r8d
	imul	rax, rax, 0x51eb851f
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x25
	add	eax, edx
	imul	eax, eax, 0x64
	mov	edx, r8d
	sub	edx, eax
	add	edx, ebx
	movsxd	rdx, edx
	imul	rax, rdx, 0x51eb851f
	mov	rsi, rax
	shr	rsi, 0x3f
	sar	rax, 0x25
	add	eax, esi
	imul	eax, eax, 0x64
	sub	edx, eax
	mov	edi, 2
	jns	.label_990
	mov	eax, 0xfffff894
	sub	eax, ebx
	mov	esi, edx
	neg	esi
	add	edx, 0x64
	cmp	r8d, eax
	jmp	.label_1000
.label_974:
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, qword ptr [rsp + 0x68]
	jmp	.label_896
.label_845:
	mov	rax, qword ptr [rsp + 0x48]
	movsxd	rax, dword ptr [rax + 0x14]
	cmp	rax, -0x76c
	setl	sil
	setg	bl
	imul	rdx, rax, 0x51eb851f
	mov	rdi, rdx
	shr	rdi, 0x3f
	sar	rdx, 0x25
	add	edx, edi
	imul	edi, edx, 0x64
	cmp	eax, edi
	sets	al
	and	al, bl
	movzx	eax, al
	sub	edx, eax
	add	edx, 0x13
	mov	edi, 2
	jmp	.label_861
.label_854:
	mov	rax, qword ptr [rsp + 0x48]
	movsxd	rax, dword ptr [rax + 0x14]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	esi, edx, 0x64
	mov	edx, eax
	mov	edi, 2
	sub	edx, esi
	js	.label_986
.label_990:
	xor	esi, esi
	jmp	.label_861
.label_982:
	mov	eax, 0xfffff894
	sub	eax, ebx
	cmp	r8d, eax
	setl	sil
	lea	edx, [rbx + r8 + 0x76c]
	mov	edi, 4
	jmp	.label_861
.label_988:
	cdqe	
	imul	rdx, rax, -0x6db6db6d
	shr	rdx, 0x20
	add	eax, edx
	mov	edx, eax
	sar	edx, 2
	shr	eax, 0x1f
	lea	edx, [rdx + rax + 1]
.label_858:
	mov	edi, 2
.label_874:
	mov	esi, edx
	shr	esi, 0x1f
.label_839:
	xor	ebx, ebx
	xor	r8d, r8d
.label_880:
	cmp	r10d, 0x4f
	jne	.label_873
	test	sil, sil
	jne	.label_873
	mov	r9d, r10d
	xor	eax, eax
	mov	r8b, cl
	mov	rbx, rdi
	jmp	.label_875
.label_873:
	mov	r10, rdi
	mov	eax, edx
	neg	eax
	test	sil, sil
	cmove	eax, edx
	lea	r12, [rsp + 0x4a7]
	nop	
.label_892:
	test	bl, 1
	je	.label_889
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_889:
	sar	ebx, 1
	mov	edi, eax
	mov	edx, 0xcccccccd
	imul	rdx, rdi
	shr	rdx, 0x23
	lea	edi, [rdx + rdx]
	lea	edi, [rdi + rdi*4]
	mov	ecx, eax
	sub	ecx, edi
	or	ecx, 0x30
	mov	byte ptr [r12 - 1], cl
	dec	r12
	cmp	eax, 9
	mov	eax, edx
	ja	.label_892
	test	ebx, ebx
	mov	eax, edx
	jne	.label_892
.label_931:
	mov	rdi, qword ptr [rsp + 0x68]
	cmp	r10d, r14d
	cmovl	r10d, r14d
	mov	qword ptr [rsp + 0x50], r10
	test	r8b, r8b
	je	.label_962
	mov	r8b, 0x2b
.label_962:
	test	sil, sil
	mov	r9b, 0x2d
	jne	.label_984
	mov	r9b, r8b
.label_984:
	cmp	r13d, 0x2d
	mov	rsi, qword ptr [rsp + 0x78]
	jne	.label_908
	test	r9b, r9b
	je	.label_842
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_869
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_923
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x50]
	test	ecx, ecx
	jne	.label_843
	test	al, al
	jne	.label_843
	movsxd	rax, r14d
	mov	qword ptr [rsp + 0x20], rax
	lea	rdx, [rax - 1]
	mov	esi, 0x20
	mov	byte ptr [rsp + 0x40], r9b
	mov	qword ptr [rsp + 0x68], rdi
	call	memset
	mov	r9b, byte ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rax, qword ptr [rsp + 0x20]
	lea	rdi, [rdi + rax - 1]
	jmp	.label_843
.label_908:
	mov	rax, qword ptr [rsp + 0x50]
	cdqe	
	mov	rcx, r12
	lea	rdx, [rsp + 0x4a7]
	sub	rcx, rdx
	mov	dl, r9b
	neg	dl
	sbb	rbx, rbx
	add	rbx, rcx
	add	rbx, rax
	test	ebx, ebx
	jle	.label_938
	cmp	r13d, 0x5f
	jne	.label_942
	movsxd	rdx, ebx
	mov	rax, qword ptr [rsp + 0x70]
	sub	rax, rsi
	cmp	rdx, rax
	jae	.label_869
	xor	r10d, r10d
	test	rdi, rdi
	mov	r8d, 0
	je	.label_948
	mov	esi, 0x20
	mov	byte ptr [rsp + 0x40], r9b
	mov	qword ptr [rsp + 0x20], rdx
	call	memset
	mov	rdx, qword ptr [rsp + 0x20]
	xor	r10d, r10d
	mov	r9b, byte ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rax, qword ptr [rsp + 0x68]
	add	rax, rdx
	mov	r8, rax
.label_948:
	add	rsi, rdx
	sub	r14d, ebx
	cmovg	r10d, r14d
	test	r9b, r9b
	je	.label_957
	xor	eax, eax
	test	r10d, r10d
	cmovns	eax, r10d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_869
	xor	edi, edi
	test	r8, r8
	je	.label_840
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x50]
	test	ecx, ecx
	jne	.label_857
	mov	byte ptr [rsp + 0x40], r9b
	test	al, al
	jne	.label_963
	movsxd	r14, r10d
	mov	qword ptr [rsp + 0x68], r10
	lea	rdx, [r14 - 1]
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x20
	mov	rdi, r8
	mov	qword ptr [rsp + 0x20], r8
	call	memset
	mov	r8, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x78]
	lea	r8, [r8 + r14 - 1]
	jmp	.label_972
.label_938:
	test	r9b, r9b
	je	.label_842
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_869
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_923
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x50]
	test	ecx, ecx
	jne	.label_843
	test	al, al
	jne	.label_843
	mov	byte ptr [rsp + 0x40], r9b
	movsxd	rax, r14d
	dec	rax
	cmp	r13d, 0x30
	je	.label_985
	cmp	r13d, 0x2b
	jne	.label_885
.label_985:
	mov	esi, 0x30
	jmp	.label_900
.label_942:
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rax, rcx
	jae	.label_869
	test	r9b, r9b
	je	.label_997
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	r8, eax
	cmp	r8d, 1
	mov	edx, 1
	cmova	rdx, r8
	cmp	rdx, rcx
	jae	.label_869
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_1001
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x50]
	test	ecx, ecx
	jne	.label_1002
	test	al, al
	jne	.label_1002
	mov	qword ptr [rsp + 0x20], rdx
	mov	byte ptr [rsp + 0x40], r9b
	movsxd	rax, r14d
	dec	rax
	cmp	r13d, 0x30
	je	.label_996
	cmp	r13d, 0x2b
	jne	.label_844
.label_996:
	mov	esi, 0x30
	jmp	.label_838
.label_957:
	mov	rdi, r8
	mov	r14d, r10d
	jmp	.label_842
.label_970:
	mov	r9d, r10d
	xor	eax, eax
	mov	r8b, 0x59
.label_841:
	xor	ebx, ebx
.label_875:
	mov	dword ptr [rsp + 0x50], eax
	mov	r12, qword ptr [rsp + 0x68]
	mov	word ptr [rsp + 0x48b], 0x2520
	test	r9d, r9d
	lea	rcx, [rsp + 0x48d]
	je	.label_992
	mov	byte ptr [rsp + 0x48d], r9b
	lea	rcx, [rsp + 0x48e]
.label_992:
	mov	byte ptr [rcx], r8b
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0x80]
	lea	rdx, [rsp + 0x48b]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x48]
	call	strftime
	test	rax, rax
	je	.label_868
	mov	r8, rbx
	lea	r9, [rax - 1]
	mov	qword ptr [rsp + 0x40], rax
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	cdqe	
	cmp	r9, rax
	mov	rdx, r9
	cmovb	rdx, rax
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	cmp	rdx, rcx
	mov	ebx, dword ptr [rsp + 0x50]
	jae	.label_869
	xor	ecx, ecx
	mov	rdi, r12
	test	rdi, rdi
	je	.label_879
	cmp	r9, rax
	setae	al
	mov	r12, rdx
	test	r8d, r8d
	jne	.label_884
	test	al, al
	jne	.label_884
	movsxd	r14, r14d
	sub	r14, r9
	mov	qword ptr [rsp + 0x20], r9
	cmp	r13d, 0x30
	je	.label_912
	cmp	r13d, 0x2b
	jne	.label_894
.label_912:
	mov	esi, 0x30
	jmp	.label_937
.label_868:
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, r12
	jmp	.label_896
.label_894:
	mov	esi, 0x20
.label_937:
	mov	rdx, r14
	mov	rbx, rdi
	call	memset
	add	rbx, r14
	mov	rdi, rbx
	mov	r9, qword ptr [rsp + 0x20]
	mov	ebx, dword ptr [rsp + 0x50]
.label_884:
	test	bl, 1
	jne	.label_903
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	jne	.label_905
	lea	rsi, [rsp + 0x81]
	mov	rdx, r9
	mov	r14, rdi
	mov	rbx, r9
	call	memcpy
	mov	r9, rbx
	mov	rdi, r14
	jmp	.label_866
.label_903:
	test	r9, r9
	je	.label_866
	mov	r14, rdi
	mov	rbx, r9
	call	__ctype_tolower_loc
	mov	r9, rbx
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	lea	ecx, [rdx + 3]
	mov	r8, rdx
	add	r8, -2
	test	cl, 3
	mov	rcx, r9
	je	.label_918
	lea	esi, [rdx + 3]
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	nop	
.label_969:
	movzx	edx, byte ptr [rsp + rcx + 0x80]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	inc	rsi
	jne	.label_969
.label_918:
	cmp	r8, 3
	jb	.label_866
	nop	word ptr cs:[rax + rax]
.label_932:
	movzx	edx, byte ptr [rsp + rcx + 0x80]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	movzx	edx, byte ptr [rsp + rcx + 0x7f]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [rsp + rcx + 0x7e]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [rsp + rcx + 0x7d]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_932
	jmp	.label_866
.label_905:
	test	r9, r9
	je	.label_866
	mov	r14, rdi
	mov	rbx, r9
	call	__ctype_toupper_loc
	mov	r9, rbx
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	lea	ecx, [rdx + 3]
	mov	r8, rdx
	add	r8, -2
	test	cl, 3
	mov	rcx, r9
	je	.label_946
	lea	esi, [rdx + 3]
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	nop	word ptr [rax + rax]
.label_955:
	movzx	edx, byte ptr [rsp + rcx + 0x80]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	inc	rsi
	jne	.label_955
.label_946:
	cmp	r8, 3
	jb	.label_866
.label_958:
	movzx	edx, byte ptr [rsp + rcx + 0x80]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	movzx	edx, byte ptr [rsp + rcx + 0x7f]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [rsp + rcx + 0x7e]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [rsp + rcx + 0x7d]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_958
.label_866:
	add	rdi, r9
	mov	rcx, rdi
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, r12
	jmp	.label_879
.label_919:
	mov	r14, qword ptr [rsp + 0x30]
	jmp	.label_966
.label_951:
	mov	esi, 0x20
.label_952:
	mov	rdx, rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rdi
	call	memset
	add	r14, qword ptr [rsp + 0x18]
	mov	rdi, r14
.label_965:
	mov	edx, dword ptr [rsp + 0x40]
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], ecx
	mov	rcx, qword ptr [rsp + 0x4e8]
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], edx
	movzx	r8d, al
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r14, rdi
	mov	r9d, r13d
	call	__strftime_internal
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, r14
	mov	rcx, rax
	jmp	.label_981
.label_978:
	mov	rax, qword ptr [rsp + 0x30]
	movzx	edx, byte ptr [rax]
	cmp	edx, 0x2d
	sete	sil
.label_975:
	cmp	rbx, 3
	mov	r10d, r9d
	ja	.label_835
	movsxd	rdx, r8d
	imul	rdi, rdx, -0x77777777
	shr	rdi, 0x20
	add	edi, r8d
	mov	r9, rbx
	mov	ebx, edi
	shr	ebx, 0x1f
	sar	edi, 5
	add	edi, ebx
	imul	rdx, rdx, -0x6e5d4c3b
	shr	rdx, 0x20
	add	edx, r8d
	mov	ebx, edx
	shr	ebx, 0x1f
	sar	edx, 0xb
	add	edx, ebx
	movsxd	rbx, edi
	imul	rdi, rbx, -0x77777777
	shr	rdi, 0x20
	add	edi, ebx
	mov	eax, edi
	shr	eax, 0x1f
	sar	edi, 5
	add	edi, eax
	imul	eax, edi, 0x3c
	imul	edi, ebx, 0x3c
	sub	ebx, eax
	sub	r8d, edi
	jmp	qword ptr [(r9 * 8) + label_987]
.label_1233:
	imul	edx, edx, 0x64
	add	edx, ebx
	mov	edi, 5
.label_859:
	mov	r8b, 1
	xor	ebx, ebx
	jmp	.label_880
.label_835:
	lea	rbx, [rbp + 1]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_1007:
	inc	r12
	movzx	eax, byte ptr [rbx - 1]
	dec	rbx
	cmp	eax, 0x25
	jne	.label_1007
	test	r14d, r14d
	mov	eax, r14d
	mov	ecx, 0
	cmovs	eax, ecx
	cmp	r12d, eax
	mov	ecx, eax
	cmova	ecx, r12d
	movsxd	r8, ecx
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	cmp	r8, rcx
	mov	rdi, qword ptr [rsp + 0x68]
	jae	.label_869
	test	rdi, rdi
	mov	ecx, 0
	je	.label_848
	movsxd	rdx, r12d
	cmp	r12d, eax
	jae	.label_849
	movsxd	r14, r14d
	sub	r14, rdx
	cmp	r13d, 0x30
	je	.label_853
	cmp	r13d, 0x2b
	jne	.label_856
.label_853:
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x50], r8
	mov	esi, 0x30
	jmp	.label_860
.label_856:
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x50], r8
	mov	esi, 0x20
.label_860:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	mov	rdi, r13
	add	rdi, r14
	mov	rsi, qword ptr [rsp + 0x78]
	mov	r8, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x40]
.label_849:
	mov	qword ptr [rsp + 0x50], r8
	mov	qword ptr [rsp + 0x78], rsi
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	jne	.label_871
	mov	rsi, rbx
	mov	r14, rdi
	mov	rbx, rdx
	call	memcpy
	mov	r10, rbx
	mov	r9, r14
	mov	r8, qword ptr [rsp + 0x50]
	jmp	.label_876
.label_871:
	mov	r13, rdi
	mov	r14, rdx
	call	__ctype_toupper_loc
	mov	r10, r14
	mov	r9, r13
	movsxd	rcx, r12d
	lea	r8, [rcx - 1]
	test	cl, 3
	mov	rcx, r10
	je	.label_886
	and	r12d, 3
	neg	r12
	mov	rcx, r10
	nop	word ptr [rax + rax]
.label_897:
	movzx	esi, byte ptr [rbx + rcx - 1]
	mov	rdi, qword ptr [rax]
	mov	dl, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rcx - 1], dl
	dec	rcx
	inc	r12
	jne	.label_897
.label_886:
	cmp	r8, 3
	mov	r8, qword ptr [rsp + 0x50]
	jb	.label_876
	nop	word ptr cs:[rax + rax]
.label_935:
	movzx	edx, byte ptr [rbx + rcx - 1]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 1], dl
	movzx	edx, byte ptr [rbx + rcx - 2]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 2], dl
	movzx	edx, byte ptr [rbx + rcx - 3]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 3], dl
	movzx	edx, byte ptr [rbx + rcx - 4]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 4], dl
	add	rcx, -4
	jne	.label_935
.label_876:
	add	r9, r10
	mov	rcx, r9
	mov	rsi, qword ptr [rsp + 0x78]
.label_848:
	add	rsi, r8
	jmp	.label_922
.label_862:
	xor	eax, eax
	mov	r10d, r14d
	add	r10d, -6
	cmovs	r10d, eax
	mov	eax, OFFSET FLAT:.str.2_4
	jmp	.label_924
.label_891:
	mov	edi, 9
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	edx, eax
	mov	r14d, 9
	jmp	.label_874
.label_986:
	mov	esi, edx
	neg	esi
	add	edx, 0x64
	cmp	eax, 0xfffff894
.label_1000:
	cmovl	edx, esi
	xor	esi, esi
.label_861:
	mov	eax, dword ptr [rsp + 0x3c]
	mov	dword ptr [rsp + 0x3c], eax
	test	r13d, r13d
	cmove	r13d, eax
	xor	ebx, ebx
	cmp	r13d, 0x2b
	mov	r8d, 0
	jne	.label_880
	mov	rax, rdi
	cmp	eax, 2
	mov	r8d, 0x63
	mov	edi, 0x270f
	cmove	edi, r8d
	cmp	edi, edx
	setb	r9b
	cmp	eax, r14d
	mov	rdi, rax
	setl	r8b
	or	r8b, r9b
	jmp	.label_880
.label_1236:
	test	r8d, r8d
	je	.label_870
.label_1235:
	imul	edx, edx, 0x2710
	imul	eax, ebx, 0x64
	add	edx, r8d
	add	edx, eax
	mov	edi, 9
	mov	r8b, 1
	mov	ebx, 0x14
	jmp	.label_880
.label_895:
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	edx, eax
	mov	edi, r14d
	jmp	.label_874
.label_857:
	mov	qword ptr [rsp + 0x68], r10
	jmp	.label_953
.label_963:
	mov	qword ptr [rsp + 0x68], r10
.label_972:
	mov	r9b, byte ptr [rsp + 0x40]
.label_953:
	mov	byte ptr [r8], r9b
	inc	r8
	mov	rdi, r8
	mov	r10, qword ptr [rsp + 0x68]
.label_840:
	add	rsi, rbx
	mov	r14d, r10d
	jmp	.label_842
.label_993:
	mov	esi, 0x20
.label_995:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	add	r13, r14
	mov	r14, qword ptr [rsp + 0x30]
	mov	rdi, r13
	mov	r9, qword ptr [rsp + 0x50]
.label_966:
	test	r12b, r12b
	je	.label_959
	test	r9, r9
	je	.label_851
	mov	r12, rbx
	mov	r13, rdi
	mov	rbx, r9
	call	__ctype_tolower_loc
	mov	r9, rbx
	lea	r8, [r9 - 1]
	test	r9b, 3
	je	.label_961
	mov	esi, r9d
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	mov	rdi, r13
	nop	dword ptr [rax + rax]
.label_968:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	inc	rsi
	jne	.label_968
	jmp	.label_971
.label_959:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	je	.label_939
	test	r9, r9
	je	.label_851
	mov	r12, rbx
	mov	r13, rdi
	mov	rbx, r9
	call	__ctype_toupper_loc
	mov	r9, rbx
	lea	r8, [r9 - 1]
	test	r9b, 3
	je	.label_976
	mov	esi, r9d
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	mov	rdi, r13
.label_980:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	inc	rsi
	jne	.label_980
	jmp	.label_983
.label_890:
	mov	esi, 0x20
.label_893:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	add	r13, r14
	mov	rsi, r12
	mov	rdi, r13
.label_887:
	mov	byte ptr [rdi], 0xa
	jmp	.label_989
.label_947:
	mov	esi, 0x20
.label_950:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	add	r13, r14
	mov	rsi, r12
	mov	rdi, r13
.label_943:
	mov	byte ptr [rdi], 9
.label_989:
	inc	rdi
	mov	rcx, rdi
	add	rsi, rbx
	jmp	.label_922
.label_885:
	mov	esi, 0x20
.label_900:
	mov	rdx, rax
	mov	qword ptr [rsp + 0x20], rdx
	call	memset
	mov	rax, qword ptr [rsp + 0x68]
	add	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, rax
	mov	r9b, byte ptr [rsp + 0x40]
.label_843:
	mov	byte ptr [rdi], r9b
	inc	rdi
	mov	rcx, rdi
.label_923:
	add	rsi, rbx
	mov	rdi, rcx
	jmp	.label_842
.label_961:
	mov	rcx, r9
	mov	rdi, r13
.label_971:
	cmp	r8, 3
	mov	rbx, r12
	jb	.label_851
	nop	word ptr cs:[rax + rax]
.label_834:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	movzx	edx, byte ptr [r14 + rcx - 2]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [r14 + rcx - 3]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [r14 + rcx - 4]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_834
	jmp	.label_851
.label_939:
	mov	rsi, r14
	mov	rdx, r9
	mov	r13, rdi
	mov	r12, rbx
	mov	rbx, r9
	call	memcpy
	mov	r9, rbx
	mov	rbx, r12
	mov	rdi, r13
	jmp	.label_851
.label_910:
	mov	eax, 9
	sub	eax, ebx
	nop	word ptr cs:[rax + rax]
.label_867:
	movsxd	rdx, edx
	imul	rdx, rdx, 0x68db8bad
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x2c
	add	edx, esi
	add	eax, -4
	jne	.label_867
	mov	edi, r14d
	jmp	.label_874
.label_844:
	mov	esi, 0x20
.label_838:
	mov	rdx, rax
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rdi
	call	memset
	add	r14, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, r14
	mov	r9b, byte ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x20]
.label_1002:
	mov	byte ptr [rdi], r9b
	inc	rdi
	mov	rcx, rdi
.label_1001:
	add	rsi, rdx
	mov	rdi, rcx
.label_997:
	xor	r14d, r14d
	test	rdi, rdi
	movsxd	rcx, ebx
	mov	ebx, 0
	je	.label_888
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x30
	mov	qword ptr [rsp + 0x68], rcx
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rbx, rdi
	call	memset
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x78]
	add	rbx, rcx
.label_888:
	add	rsi, rcx
	mov	rdi, rbx
.label_842:
	lea	rbx, [rsp + 0x4a7]
	sub	rbx, r12
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	cdqe	
	cmp	rbx, rax
	mov	rdx, rbx
	cmovb	rdx, rax
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rdx, rcx
	jae	.label_869
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_879
	cmp	rbx, rax
	setae	al
	mov	rcx, qword ptr [rsp + 0x50]
	test	ecx, ecx
	jne	.label_836
	test	al, al
	jne	.label_914
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r13d, 0x30
	je	.label_915
	cmp	r13d, 0x2b
	jne	.label_878
.label_915:
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x30
	jmp	.label_920
.label_879:
	add	rsi, rdx
	jmp	.label_922
.label_836:
	mov	qword ptr [rsp + 0x78], rsi
	jmp	.label_925
.label_914:
	mov	qword ptr [rsp + 0x78], rsi
	jmp	.label_925
.label_878:
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x20
.label_920:
	mov	qword ptr [rsp + 0x68], rdx
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rdi, r13
	add	rdi, r14
.label_925:
	mov	r13, rdx
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	je	.label_930
	lea	rax, [rsp + 0x4a7]
	cmp	rax, r12
	je	.label_933
	mov	r14, rdi
	call	__ctype_toupper_loc
	mov	rdi, r14
	lea	rcx, [rsp + 0x4a7]
	sub	ecx, r12d
	lea	r8, [rsp + 0x4a6]
	sub	r8, r12
	test	cl, 3
	mov	rcx, rbx
	mov	r9, rbx
	je	.label_847
	lea	rsi, [rsp + 0x4a7]
	sub	esi, r12d
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	nop	word ptr cs:[rax + rax]
.label_872:
	movzx	ebx, byte ptr [r12 + rcx - 1]
	mov	rdx, qword ptr [rax]
	mov	dl, byte ptr [rdx + rbx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	dec	rcx
	inc	rsi
	jne	.label_872
.label_847:
	cmp	r8, 3
	mov	rbx, r9
	jb	.label_933
	nop	word ptr cs:[rax + rax]
.label_883:
	movzx	edx, byte ptr [r12 + rcx - 1]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	movzx	edx, byte ptr [r12 + rcx - 2]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [r12 + rcx - 3]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [r12 + rcx - 4]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_883
	jmp	.label_933
.label_930:
	mov	rsi, r12
	mov	rdx, rbx
	mov	r14, rdi
	call	memcpy
	mov	rdi, r14
.label_933:
	add	rdi, rbx
	mov	rcx, rdi
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, r13
	add	rsi, rdx
	jmp	.label_922
.label_870:
	test	ebx, ebx
	je	.label_964
.label_1234:
	imul	edx, edx, 0x64
	add	edx, ebx
	mov	edi, 6
	mov	r8b, 1
	mov	ebx, 4
	jmp	.label_880
.label_940:
	mov	r12, rsi
	mov	esi, 0x20
.label_1003:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	mov	rdi, r13
	mov	rsi, r12
	add	rdi, r14
	mov	cl, byte ptr [rbp]
.label_998:
	mov	byte ptr [rdi], cl
	jmp	.label_973
.label_976:
	mov	rcx, r9
	mov	rdi, r13
.label_983:
	cmp	r8, 3
	mov	rbx, r12
	jb	.label_851
.label_977:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	movzx	edx, byte ptr [r14 + rcx - 2]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [r14 + rcx - 3]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [r14 + rcx - 4]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_977
.label_851:
	mov	qword ptr [rsp + 0x30], r14
	add	rdi, r9
	mov	rcx, rdi
.label_981:
	mov	rsi, qword ptr [rsp + 0x78]
.label_864:
	add	rsi, rbx
	nop	dword ptr [rax]
.label_922:
	mov	rdi, rcx
.label_896:
	mov	al, byte ptr [rbp + 1]
	inc	rbp
	mov	r14d, 0xffffffff
	test	al, al
	jne	.label_846
.label_855:
	cmp	qword ptr [rsp + 0x70], 0
	je	.label_994
	test	rdi, rdi
	je	.label_994
	mov	byte ptr [rdi], 0
	jmp	.label_994
.label_869:
	xor	esi, esi
.label_994:
	mov	rax, rsi
	add	rsp, 0x4a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cfc0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1008
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1009
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1008
.label_1009:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1008
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1010
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_1010:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1008:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d040

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1011
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1011
	test	byte ptr [rbx + 1], 1
	je	.label_1011
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_1011:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d080

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
	jne	.label_1012
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1012
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1013
.label_1012:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1013:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1014
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1014:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x40d0f0

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