	.section	.text
	.align	16
	#Procedure 0x401bf0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	lea	rsi, [rsi]
	mov	edi, 5
	xor	esi, esi
	nop	
	call	setlocale
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_7
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	mov	rsp, rsp
	test	eax, eax
	nop	
	je	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rip + stdout]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
.label_7:
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.40
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.9
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.41
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.9
	mov	ecx, OFFSET FLAT:.str.42
	xor	eax, eax
	lea	rdi, [rdi]
	call	__printf_chk
	mov	rsp, rsp
	mov	edi, ebp
	lea	rsi, [rsi]
	call	exit
.label_8:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rip + stderr]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	rsp, rsp
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ed0

	.globl main
	.type main, @function
main:
	mov	rbp, rbp
	push	rbp
	nop	
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	sub	rsp, 0xe8
	nop	
	mov	qword ptr [rsp + 0xd0], rsi
	mov	dword ptr [rsp + 0xcc], edi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsi]
	lea	rsi, [rsi]
	call	set_program_name
	nop	
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	nop	
	call	setlocale
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.11
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.12
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.11
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	dword ptr [rip + change_times],  0
	lea	rdi, [rdi]
	mov	byte ptr [rip + use_ref],  0
	lea	rsi, [rsi]
	mov	byte ptr [rip + no_create],  0
	xor	r14d, r14d
	lea	rsi, [rsi]
	xor	ebx, ebx
	mov	rsp, rsp
	jmp	.label_19
.label_1212:
	lea	rdi, [rdi]
	mov	byte ptr [rip + use_ref],  1
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + ref_file],  rax
	nop	word ptr cs:[rax + rax]
.label_19:
	mov	edx, OFFSET FLAT:.str.13
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:longopts
	mov	rsp, rsp
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0xcc]
	mov	rsi, qword ptr [rsp + 0xd0]
	call	getopt_long
	cmp	eax, 0x60
	jle	.label_43
	lea	ecx, [rax - 0x61]
	cmp	ecx, 0x13
	ja	.label_45
	mov	rsp, rsp
	jmp	qword ptr [(rcx * 8) + label_49]
.label_1207:
	mov	rbp, rbp
	or	byte ptr [rip + change_times],  1
	nop	
	jmp	.label_19
.label_45:
	nop	
	cmp	eax, 0x80
	mov	rbp, rbp
	jne	.label_46
	mov	rsi, qword ptr [rip + optarg]
	mov	r9, qword ptr [rip + argmatch_die]
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.15
	mov	edx, OFFSET FLAT:time_args
	nop	
	mov	ecx, OFFSET FLAT:time_masks
	mov	rbp, rbp
	mov	r8d, 4
	lea	rsi, [rsi]
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + time_masks]
	mov	rsp, rsp
	or	dword ptr [rip + change_times],  eax
	jmp	.label_19
.label_1208:
	lea	rdi, [rdi]
	mov	byte ptr [rip + no_create],  1
	mov	rbp, rbp
	jmp	.label_19
.label_1209:
	mov	r14, qword ptr [rip + optarg]
	jmp	.label_19
.label_1210:
	nop	
	mov	byte ptr [rip + no_dereference],  1
	mov	rsp, rsp
	jmp	.label_19
.label_1211:
	lea	rdi, [rdi]
	or	byte ptr [rip + change_times],  2
	jmp	.label_19
.label_1213:
	nop	
	mov	rsi, qword ptr [rip + optarg]
	mov	edi, OFFSET FLAT:newtime
	mov	edx, 6
	lea	rdi, [rdi]
	call	posixtime
	lea	rsi, [rsi]
	test	al, al
	je	.label_37
	mov	qword ptr [rip + label_30],  0
	movaps	xmm0, xmmword ptr [rip + newtime]
	mov	rbp, rbp
	movaps	xmmword ptr [rip + label_21],  xmm0
	mov	bl, 1
	jmp	.label_19
.label_43:
	cmp	eax, -1
	jne	.label_44
	lea	rsi, [rsi]
	cmp	dword ptr [rip + change_times],  0
	mov	rbp, rbp
	jne	.label_47
	mov	rbp, rbp
	mov	dword ptr [rip + change_times],  3
.label_47:
	lea	rsi, [rsi]
	test	bl, bl
	mov	al, byte ptr [rip + use_ref]
	je	.label_26
	mov	rbp, rbp
	test	r14, r14
	mov	rbp, rbp
	setne	cl
	nop	
	or	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	je	.label_17
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	jmp	.label_12
.label_26:
	test	al, 1
	je	.label_17
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rip + ref_file]
	movzx	eax, byte ptr [rip + no_dereference]
	and	eax, 1
	lea	rdx, [rsp + 0x38]
	mov	edi, 1
	nop	
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_18
	call	__lxstat
	mov	rbp, rbp
	jmp	.label_24
.label_17:
	lea	rsi, [rsi]
	test	r14, r14
	nop	
	je	.label_13
	lea	rbx, [rsp + 0x38]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	gettime
	mov	edi, OFFSET FLAT:newtime
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rdx, rbx
	mov	rbp, rbp
	call	parse_datetime
	test	al, al
	nop	
	je	.label_16
	movaps	xmm0, xmmword ptr [rip + newtime]
	movaps	xmmword ptr [rip + label_21],  xmm0
	mov	rsp, rsp
	mov	bl, 1
	cmp	dword ptr [rip + change_times],  3
	jne	.label_13
	mov	rsp, rsp
	mov	rax, qword ptr [rip + newtime]
	cmp	rax, qword ptr [rsp + 0x38]
	nop	
	jne	.label_13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rip + label_30]
	cmp	rcx, qword ptr [rsp + 0x40]
	jne	.label_13
	lea	rsi, [rsi]
	xor	rax, 1
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	lea	rdi, [rsp + 0xd8]
	lea	rdx, [rsp + 0x28]
	mov	rsi, r14
	call	parse_datetime
	test	al, al
	lea	rdi, [rdi]
	je	.label_16
	mov	rax, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	mov	bl, 1
	cmp	rax, qword ptr [rsp + 0x28]
	jne	.label_13
	mov	rax, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	setne	bl
.label_13:
	test	bl, 1
	jne	.label_20
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0xcc]
	sub	eax, dword ptr [rip + optind]
	nop	
	cmp	eax, 2
	lea	rsi, [rsi]
	jl	.label_22
	lea	rsi, [rsi]
	call	posix2_version
	cmp	eax, 0x30daf
	jg	.label_22
	movsxd	rax, dword ptr [rip + optind]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xd0]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	edi, OFFSET FLAT:newtime
	mov	rsp, rsp
	mov	edx, 9
	call	posixtime
	test	al, al
	je	.label_22
	nop	
	mov	qword ptr [rip + label_30],  0
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rip + newtime]
	movaps	xmmword ptr [rip + label_21],  xmm0
	nop	
	mov	edi, OFFSET FLAT:.str.24
	call	getenv
	nop	
	test	rax, rax
	jne	.label_14
	mov	edi, OFFSET FLAT:newtime
	call	localtime
	lea	rsi, [rsi]
	mov	rbx, rax
	test	rbx, rbx
	je	.label_14
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.25
	nop	
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rcx, qword ptr [rsp + 0xd0]
	mov	rcx, qword ptr [rcx + rax*8]
	nop	
	movsxd	r8, dword ptr [rbx + 0x14]
	lea	rsi, [rsi]
	add	r8, 0x76c
	mov	rsp, rsp
	mov	r9d, dword ptr [rbx + 0x10]
	mov	rbp, rbp
	inc	r9d
	mov	eax, dword ptr [rbx + 0xc]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbx]
	mov	ebp, dword ptr [rbx + 4]
	mov	dword ptr [rsp + 0x18], edi
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x10], ebp
	mov	dword ptr [rsp + 8], esi
	lea	rsi, [rsi]
	mov	dword ptr [rsp], eax
	mov	edi, 0
	mov	esi, 0
	mov	rsp, rsp
	xor	eax, eax
	call	error
.label_14:
	inc	dword ptr [rip + optind]
	jmp	.label_20
.label_22:
	mov	rbp, rbp
	cmp	dword ptr [rip + change_times],  3
	jne	.label_40
	mov	byte ptr [rip + amtime_now],  1
	jmp	.label_20
.label_40:
	mov	rsp, rsp
	mov	qword ptr [rip + label_30],  0x3fffffff
	mov	qword ptr [rip + label_32],  0x3fffffff
	mov	rbp, rbp
	jmp	.label_20
.label_18:
	lea	rdi, [rdi]
	call	__xstat
.label_24:
	nop	
	test	eax, eax
	mov	rbp, rbp
	jne	.label_41
	movups	xmm0, xmmword ptr [rsp + 0x80]
	mov	rsp, rsp
	movaps	xmmword ptr [rip + newtime],  xmm0
	movups	xmm0, xmmword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rip + label_21],  xmm0
	lea	rdi, [rdi]
	test	r14, r14
	nop	
	je	.label_20
	mov	rbp, rbp
	mov	eax, dword ptr [rip + change_times]
	lea	rsi, [rsi]
	test	al, 1
	je	.label_51
	mov	edi, OFFSET FLAT:newtime
	mov	edx, OFFSET FLAT:newtime
	lea	rdi, [rdi]
	mov	rsi, r14
	call	parse_datetime
	lea	rdi, [rdi]
	test	al, al
	mov	rbp, rbp
	je	.label_16
	mov	eax, dword ptr [rip + change_times]
.label_51:
	mov	rbp, rbp
	test	al, 2
	mov	rsp, rsp
	je	.label_20
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:label_21
	mov	edx, OFFSET FLAT:label_21
	mov	rsi, r14
	lea	rsi, [rsi]
	call	parse_datetime
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_16
.label_20:
	mov	eax, dword ptr [rip + optind]
	mov	rbp, rbp
	cmp	eax, dword ptr [rsp + 0xcc]
	lea	rsi, [rsi]
	je	.label_28
	lea	rdi, [rdi]
	mov	r15b, 1
	mov	rbp, rbp
	jge	.label_35
	nop	word ptr [rax + rax]
.label_39:
	cdqe	
	mov	rcx, qword ptr [rsp + 0xd0]
	mov	r13, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	jne	.label_34
	mov	rbp, rbp
	cmp	byte ptr [r13 + 1], 0
	je	.label_38
.label_34:
	lea	rdi, [rdi]
	mov	al, byte ptr [rip + no_create]
	nop	
	xor	r14d, r14d
	and	al, 1
	mov	ebp, 0xffffffff
	jne	.label_9
	nop	
	mov	al, byte ptr [rip + no_dereference]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	jne	.label_9
	xor	r14d, r14d
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	edx, 0x941
	lea	rdi, [rdi]
	mov	ecx, 0x1b6
	nop	
	mov	rsi, r13
	call	fd_reopen
	lea	rsi, [rsi]
	cmp	eax, -1
	je	.label_52
	mov	ebp, eax
	jmp	.label_9
.label_38:
	mov	ebp, 1
	mov	rsp, rsp
	xor	r14d, r14d
	jmp	.label_9
.label_52:
	mov	rsp, rsp
	call	__errno_location
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	eax, 0x16
	mov	rbp, rbp
	ja	.label_33
	mov	ecx, 0x600002
	lea	rsi, [rsi]
	bt	ecx, eax
	mov	rbp, rbp
	jb	.label_9
.label_33:
	mov	r14d, eax
	nop	word ptr cs:[rax + rax]
.label_9:
	mov	eax, dword ptr [rip + change_times]
	cmp	eax, 1
	je	.label_23
	cmp	eax, 3
	je	.label_25
	cmp	eax, 2
	mov	rsp, rsp
	jne	.label_27
	mov	qword ptr [rip + label_30],  0x3ffffffe
	jmp	.label_25
	nop	dword ptr [rax]
.label_23:
	mov	qword ptr [rip + label_32],  0x3ffffffe
.label_25:
	nop	
	mov	al, byte ptr [rip + amtime_now]
	lea	rdi, [rdi]
	and	al, 1
	mov	ecx, OFFSET FLAT:newtime
	mov	eax, 0
	cmovne	rcx, rax
	lea	rsi, [rsi]
	cmp	ebp, 1
	mov	rsp, rsp
	mov	rdx, r13
	cmove	rdx, rax
	movzx	r8d, byte ptr [rip + no_dereference]
	lea	rsi, [rsi]
	and	r8d, 1
	shl	r8d, 8
	cmp	ebp, -1
	cmovne	r8d, eax
	mov	esi, 0xffffff9c
	mov	edi, ebp
	call	fdutimensat
	mov	rsp, rsp
	mov	ebx, eax
	nop	
	test	ebp, ebp
	mov	rsp, rsp
	je	.label_53
	mov	rbp, rbp
	cmp	ebp, 1
	nop	
	setne	al
	test	ebx, ebx
	je	.label_15
	mov	rbp, rbp
	test	al, al
	jne	.label_15
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 9
	mov	rbp, rbp
	jne	.label_15
	mov	al, byte ptr [rip + no_create]
	and	al, 1
	mov	r12b, 1
	mov	rsp, rsp
	je	.label_11
	jmp	.label_10
	nop	dword ptr [rax + rax]
.label_53:
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	call	close
	test	eax, eax
	je	.label_15
	mov	rsp, rsp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	jmp	.label_50
	nop	
.label_15:
	lea	rsi, [rsi]
	mov	r12b, 1
	test	ebx, ebx
	je	.label_10
.label_11:
	mov	rsp, rsp
	test	r14d, r14d
	je	.label_36
	mov	rsp, rsp
	xor	r12d, r12d
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, r13
	lea	rsi, [rsi]
	call	quotearg_style
	nop	
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, r14d
	lea	rsi, [rsi]
	jmp	.label_48
.label_36:
	movzx	ebx, byte ptr [rip + no_create]
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	ebp, dword ptr [rax]
	nop	
	and	ebx, 1
	cmp	ebx, 1
	mov	rbp, rbp
	jne	.label_29
	mov	r12b, 1
	lea	rdi, [rdi]
	cmp	ebp, 2
	lea	rsi, [rsi]
	je	.label_10
.label_29:
	mov	rsp, rsp
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
.label_48:
	mov	rdx, rbx
.label_50:
	call	error
.label_10:
	and	r15b, r12b
	mov	eax, dword ptr [rip + optind]
	nop	
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, dword ptr [rsp + 0xcc]
	jl	.label_39
.label_35:
	lea	rdi, [rdi]
	movzx	eax, r15b
	xor	eax, 1
	lea	rdi, [rdi]
	add	rsp, 0xe8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_27:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.56
	mov	esi, OFFSET FLAT:.str.57
	lea	rsi, [rsi]
	mov	edx, 0x99
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.touch
	nop	
	call	__assert_fail
.label_44:
	lea	rdi, [rdi]
	cmp	eax, 0xffffff7d
	mov	rbp, rbp
	je	.label_42
	mov	rsp, rsp
	cmp	eax, 0xffffff7e
	mov	rbp, rbp
	jne	.label_46
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	call	usage
.label_46:
	mov	edi, 1
	mov	rbp, rbp
	call	usage
.label_42:
	mov	rsp, rsp
	mov	rdi, qword ptr [rip + stdout]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp + 0x18], 0
	mov	qword ptr [rsp + 16], OFFSET FLAT:.str.21
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], OFFSET FLAT:.str.20
	mov	qword ptr [rsp], OFFSET FLAT:.str.19
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.17_0
	mov	r9d, OFFSET FLAT:.str.18_0
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	call	version_etc
	xor	edi, edi
	nop	
	call	exit
.label_37:
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	mov	rsp, rsp
	jmp	.label_31
.label_28:
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.26
.label_12:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rcx
	call	error
	lea	rdi, [rdi]
	mov	edi, 1
	call	usage
.label_16:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
.label_31:
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	error
.label_41:
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rip + ref_file]
	mov	edi, 4
	nop	
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	nop	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x402950

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x402960

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r13, rcx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbp
	lea	rsi, [rsi]
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_59
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], -1
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_58:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	jne	.label_56
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	je	.label_54
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_57
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rax, rax
	je	.label_60
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	lea	rdi, [rdi]
	add	rdi, rax
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r13
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	je	.label_56
.label_60:
	mov	rsp, rsp
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_56
.label_57:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbp
	nop	dword ptr [rax + rax]
.label_56:
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	lea	rsi, [rsi]
	inc	rbp
	add	r14, r13
	test	r15, r15
	nop	
	jne	.label_58
	lea	rsi, [rsi]
	jmp	.label_55
.label_59:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x10], rax
.label_55:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	mov	rsp, rsp
	cmove	rbp, qword ptr [rsp + 0x18]
.label_54:
	mov	rax, rbp
	add	rsp, 0x28
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ae0
	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:

	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_61
	mov	esi, OFFSET FLAT:.str.1_0
	nop	
	jmp	.label_62
.label_61:
	nop	
	mov	esi, OFFSET FLAT:.str_1
.label_62:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	rdx, r15
	call	quotearg_n_style
	nop	
	mov	r15, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	nop	
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	jmp	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x402b80

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	push	r15
	nop	
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	r14, rdx
	mov	rsp, rsp
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], rbx
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx]
	nop	
	test	rbx, rbx
	je	.label_65
	lea	rdi, [rdi]
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_67:
	test	r15, r15
	mov	rbp, rbp
	je	.label_66
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_64
.label_66:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.3_0
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_63
	nop	dword ptr [rax]
.label_64:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_63:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_67
.label_65:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_68
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_68:
	mov	rsp, rsp
	mov	esi, 0xa
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d00

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	lea	rsi, [rsi]
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r12
	mov	rcx, r15
	lea	rdi, [rdi]
	call	argmatch
	mov	rsp, rsp
	test	rax, rax
	jns	.label_70
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_71
	mov	esi, OFFSET FLAT:.str.1_0
	mov	rsp, rsp
	jmp	.label_69
.label_71:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_1
.label_69:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 8
	mov	rbp, rbp
	mov	rdx, r14
	call	quotearg_n_style
	nop	
	mov	r14, rax
	nop	
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, r15
	mov	rbp, rbp
	call	argmatch_valid
	mov	rsp, rsp
	call	rbx
	mov	rbp, rbp
	mov	rax, -1
.label_70:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e20
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	nop	
	mov	r14, rcx
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	nop	
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	mov	rsp, rsp
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_72
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_73:
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r15
	nop	
	mov	rdx, r14
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	mov	rax, r13
	nop	
	je	.label_72
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_73
.label_72:
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402eb0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [rip + file_name],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402ec0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ed0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rip + stdout]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_75
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_74
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_74
.label_75:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_77
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_74:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_76
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rsp, rsp
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	mov	rsp, rsp
	call	_exit
.label_77:
	mov	edi, dword ptr [rip + exit_failure]
	mov	rbp, rbp
	call	_exit
.label_76:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_1
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, rbx
	call	error
	mov	rsp, rsp
	mov	edi, dword ptr [rip + exit_failure]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402fd0

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edi
	nop	
	xor	eax, eax
	nop	
	mov	rdi, rsi
	nop	
	mov	esi, edx
	nop	
	mov	edx, ecx
	call	open
	mov	ebx, eax
	cmp	ebx, ebp
	je	.label_78
	test	ebx, ebx
	nop	
	js	.label_78
	mov	edi, ebx
	mov	esi, ebp
	call	dup2
	nop	
	mov	r14d, eax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbp, rbp
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_79
.label_78:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_79:
	mov	rsp, rsp
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403050

	.globl fdutimensat
	.type fdutimensat, @function
fdutimensat:
	nop	
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	r14d, r8d
	lea	rsi, [rsi]
	mov	r12, rcx
	mov	rsp, rsp
	mov	rbp, rdx
	mov	r15d, esi
	nop	
	mov	ebx, edi
	mov	rsp, rsp
	mov	eax, 1
	lea	rdi, [rdi]
	test	ebx, ebx
	js	.label_82
	mov	edi, ebx
	lea	rsi, [rsi]
	mov	rsi, r12
	lea	rsi, [rsi]
	call	futimens
.label_82:
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_80
	test	ebx, ebx
	nop	
	js	.label_83
	cmp	eax, -1
	mov	rsp, rsp
	jne	.label_80
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	mov	eax, 0xffffffff
	mov	rbp, rbp
	cmp	dword ptr [rcx], 0x26
	nop	
	jne	.label_81
.label_83:
	mov	rsp, rsp
	mov	edi, r15d
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rdx, r12
	lea	rdi, [rdi]
	mov	ecx, r14d
	call	utimensat
.label_80:
	mov	rbp, rbp
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_81
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 9
	mov	eax, 0xffffffff
.label_81:
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403110

	.globl gettime
	.type gettime, @function
gettime:
	mov	rsp, rsp
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	.section	.text
	.align	16
	#Procedure 0x403120
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	lea	rsi, [rsi]
	sub	rsp, 0x18
	lea	rsi, [rsi]
	lea	rsi, [rsp + 8]
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	call	clock_gettime
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403150

	.globl yyparse
	.type yyparse, @function
yyparse:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x588
	lea	rsi, [rsi]
	mov	r13, rdi
	mov	rbp, rbp
	lea	r8, [rsp + 0x510]
	lea	r15, [rsp + 0xb0]
	mov	word ptr [rsp + 0x510], 0
	lea	rdi, [rdi]
	lea	r9, [rsp + 0x536]
	nop	
	lea	rax, [r13 + 0x58]
	mov	qword ptr [rsp + 0x98], rax
	lea	rdi, [rdi]
	lea	rax, [r13 + 0x50]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x580], rax
	mov	rbp, rbp
	lea	rax, [r13 + 0x20]
	mov	qword ptr [rsp + 0xa8], rax
	mov	r14d, 0xfffffffe
	movabs	rax, 0x3ffffff03ffffff
	movabs	rcx, 0x3ffffffffffffff
	and	rcx, rax
	mov	qword ptr [rsp + 0x568], rcx
	nop	
	mov	r12d, 0x80001f
	mov	eax, 0
	xor	ecx, ecx
	nop	
	mov	qword ptr [rsp + 0x88], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x558], rcx
	mov	dword ptr [rsp + 0x57c], 0
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x548], rcx
	jmp	.label_164
	nop	dword ptr [rax]
.label_246:
	mov	rbp, rbp
	movsxd	rbp, eax
	nop	
	movsx	edx, byte ptr [rbp + yypact]
	mov	rsp, rsp
	cmp	edx, -0x5d
	je	.label_198
	mov	rbp, rbp
	cmp	r14d, -2
	lea	rsi, [rsi]
	jne	.label_203
	nop	
	mov	dword ptr [rsp + 0x38], edx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa0], rbp
	mov	rdx, qword ptr [r13]
	movabs	r10, 0x8000000000000000
	mov	r11d, 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_208
	nop	word ptr cs:[rax + rax]
.label_224:
	inc	rdx
	nop	
	mov	qword ptr [r13], rdx
.label_208:
	lea	rdi, [rdi]
	mov	bl, byte ptr [rdx]
	mov	rbp, rbp
	movzx	ecx, bl
	lea	eax, [rcx - 9]
	mov	rsp, rsp
	cmp	eax, 0x17
	mov	rbp, rbp
	ja	.label_259
	lea	rsi, [rsi]
	bt	r12d, eax
	mov	rsp, rsp
	jb	.label_224
.label_259:
	nop	
	lea	eax, [rcx - 0x30]
	cmp	eax, 0xa
	jb	.label_226
	lea	rsi, [rsi]
	cmp	ecx, 0x2d
	nop	
	je	.label_226
	cmp	ecx, 0x2b
	jne	.label_230
	nop	word ptr cs:[rax + rax]
.label_226:
	cmp	ecx, 0x2d
	je	.label_234
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	ecx, 0x2b
	lea	rdi, [rdi]
	jne	.label_235
.label_234:
	cmp	ecx, 0x2d
	mov	eax, 1
	cmove	eax, r11d
	inc	rdx
	mov	rdi, rdx
	nop	dword ptr [rax + rax]
.label_245:
	mov	rdx, rdi
	mov	qword ptr [r13], rdx
	mov	bl, byte ptr [rdx]
	movzx	ecx, bl
	lea	ebp, [rcx - 9]
	lea	rsi, [rsi]
	cmp	ebp, 0x17
	nop	
	ja	.label_241
	mov	rsp, rsp
	lea	rdi, [rdx + 1]
	nop	
	bt	r12d, ebp
	lea	rsi, [rsi]
	jb	.label_245
.label_241:
	nop	
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_208
	mov	rbp, rbp
	jmp	.label_235
.label_230:
	lea	eax, [rcx - 0x41]
	cmp	eax, 0x39
	ja	.label_272
	movabs	rsi, 0x3ffffff03ffffff
	mov	rsp, rsp
	bt	rsi, rax
	lea	rdi, [rdi]
	jb	.label_252
.label_272:
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	jne	.label_124
	mov	rbp, rbp
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_274:
	mov	rax, rdx
	mov	rbp, rbp
	lea	rdx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [r13], rdx
	mov	rbp, rbp
	movzx	esi, byte ptr [rax]
	cmp	esi, 0x28
	mov	rsp, rsp
	je	.label_258
	movzx	eax, sil
	cmp	eax, 0x29
	je	.label_264
	xor	eax, eax
	lea	rsi, [rsi]
	test	sil, sil
	lea	rdi, [rdi]
	jne	.label_265
	mov	rsp, rsp
	jmp	.label_267
	nop	word ptr [rax + rax]
.label_264:
	mov	rbp, rbp
	dec	rcx
	jmp	.label_265
	nop	dword ptr [rax + rax]
.label_258:
	mov	rsp, rsp
	inc	rcx
.label_265:
	mov	rbp, rbp
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_274
	jmp	.label_208
.label_267:
	xor	r14d, r14d
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	edx, dword ptr [rsp + 0x38]
	jmp	.label_193
.label_235:
	mov	rdi, rdx
	xor	ecx, ecx
	nop	
.label_139:
	nop	
	mov	rbp, rdi
	mov	r14d, 0x3f
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_89
	movabs	rsi, 0xccccccccccccccc
	cmp	rcx, rsi
	jle	.label_95
	mov	rsp, rsp
	jmp	.label_99
	nop	dword ptr [rax]
.label_89:
	mov	rbp, rbp
	movabs	rsi, 0xf333333333333334
	mov	rbp, rbp
	cmp	rcx, rsi
	jl	.label_99
.label_95:
	add	rcx, rcx
	movzx	edi, bl
	mov	rbp, rbp
	mov	ebx, 0x30
	nop	
	sub	ebx, edi
	add	edi, -0x30
	test	eax, eax
	lea	rdi, [rdi]
	lea	rsi, [rcx + rcx*4]
	lea	rdi, [rdi]
	cmovs	edi, ebx
	lea	rdi, [rdi]
	movsxd	rcx, edi
	lea	rsi, [rsi]
	test	ecx, ecx
	js	.label_109
	mov	rbp, rbp
	lea	rdi, [r10 - 1]
	sub	rdi, rcx
	mov	r14d, 0x3f
	mov	rsp, rsp
	cmp	rdi, rsi
	mov	rbp, rbp
	jge	.label_182
	mov	rbp, rbp
	jmp	.label_99
	nop	dword ptr [rax]
.label_109:
	mov	rsp, rsp
	mov	rdi, r10
	lea	rdi, [rdi]
	sub	rdi, rcx
	lea	rdi, [rdi]
	mov	r14d, 0x3f
	cmp	rsi, rdi
	mov	rbp, rbp
	jl	.label_99
.label_182:
	lea	rdi, [rdi]
	add	rcx, rsi
	lea	rdi, [rbp + 1]
	movzx	ebx, byte ptr [rbp + 1]
	mov	esi, ebx
	mov	rbp, rbp
	add	esi, -0x30
	cmp	esi, 0xa
	jb	.label_139
	mov	rsp, rsp
	or	bl, 2
	mov	rbp, rbp
	movzx	esi, bl
	mov	rbp, rbp
	cmp	esi, 0x2e
	jne	.label_149
	movsx	esi, byte ptr [rbp + 2]
	add	esi, -0x30
	nop	
	cmp	esi, 9
	ja	.label_149
	lea	edx, [rsi + rsi*4]
	mov	rsp, rsp
	movsx	esi, byte ptr [rbp + 3]
	nop	
	add	esi, -0x30
	lea	rsi, [rsi]
	lea	rdi, [rbp + 3]
	nop	
	add	rbp, 4
	cmp	esi, 0xa
	cmovae	rbp, rdi
	mov	ebx, 0
	nop	
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rbp]
	mov	rsp, rsp
	add	esi, -0x30
	nop	
	lea	rdi, [rbp + 1]
	cmp	esi, 0xa
	lea	rdi, [rdi]
	cmovae	rdi, rbp
	cmovae	esi, ebx
	lea	rdi, [rdi]
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rdi]
	add	esi, -0x30
	mov	rsp, rsp
	lea	rbp, [rdi + 1]
	cmp	esi, 0xa
	cmovae	rbp, rdi
	cmovae	esi, ebx
	nop	
	lea	edx, [rsi + rdx*2]
	lea	rsi, [rsi]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rbp]
	add	esi, -0x30
	lea	rdi, [rbp + 1]
	mov	rsp, rsp
	cmp	esi, 0xa
	cmovae	rdi, rbp
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdi]
	lea	rsi, [rsi]
	add	esi, -0x30
	lea	rbp, [rdi + 1]
	lea	rsi, [rsi]
	cmp	esi, 0xa
	cmovae	rbp, rdi
	cmovae	esi, ebx
	mov	rsp, rsp
	lea	edx, [rsi + rdx*2]
	mov	rsp, rsp
	lea	edx, [rdx + rdx*4]
	mov	rsp, rsp
	movsx	esi, byte ptr [rbp]
	mov	rsp, rsp
	add	esi, -0x30
	lea	rdi, [rbp + 1]
	mov	rbp, rbp
	cmp	esi, 0xa
	cmovae	rdi, rbp
	nop	
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	mov	rbp, rbp
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rdi]
	mov	rbp, rbp
	add	esi, -0x30
	mov	rsp, rsp
	lea	rbp, [rdi + 1]
	mov	rbp, rbp
	cmp	esi, 0xa
	lea	rdi, [rdi]
	cmovae	rbp, rdi
	lea	rsi, [rsi]
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	mov	rsp, rsp
	lea	esi, [rdx + rdx*4]
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rbp]
	mov	rbp, rbp
	add	edi, -0x30
	lea	rdx, [rbp + 1]
	cmp	edi, 0xa
	lea	rsi, [rsi]
	cmovae	rdx, rbp
	lea	rsi, [rsi]
	cmovae	edi, ebx
	mov	rbp, rbp
	lea	esi, [rdi + rsi*2]
	test	eax, eax
	nop	
	jns	.label_205
	lea	rdi, [rdi]
	movsx	ebp, byte ptr [rdx]
	nop	
	jmp	.label_195
	nop	word ptr cs:[rax + rax]
.label_192:
	lea	rsi, [rsi]
	movsx	ebp, byte ptr [rdx + 1]
	inc	rdx
.label_195:
	mov	edi, ebp
	lea	rdi, [rdi]
	add	edi, -0x30
	lea	rsi, [rsi]
	cmp	edi, 0xa
	nop	
	jae	.label_205
	mov	rsp, rsp
	movzx	edi, bpl
	mov	rbp, rbp
	cmp	edi, 0x30
	lea	rdi, [rdi]
	je	.label_192
	inc	esi
.label_205:
	lea	rsi, [rsi]
	dec	rdx
	nop	word ptr cs:[rax + rax]
.label_223:
	movsx	edi, byte ptr [rdx + 1]
	lea	rdi, [rdi]
	inc	rdx
	add	edi, -0x30
	mov	rbp, rbp
	cmp	edi, 0xa
	lea	rdi, [rdi]
	jb	.label_223
	test	eax, eax
	lea	rdi, [rdi]
	jns	.label_228
	lea	rdi, [rdi]
	test	esi, esi
	je	.label_228
	mov	rsp, rsp
	mov	r14d, 0x3f
	cmp	rcx, r10
	lea	rdi, [rdi]
	jne	.label_233
.label_99:
	mov	rcx, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_238
.label_149:
	mov	rsp, rsp
	mov	esi, eax
	shr	esi, 0x1f
	mov	dword ptr [rsp + 0x57c], esi
	mov	qword ptr [r13], rdi
	mov	rbp, rbp
	sub	rdi, rdx
	test	eax, eax
	sete	al
	lea	rdi, [rdi]
	movzx	r14d, al
	mov	rbp, rbp
	or	r14d, 0x112
	mov	qword ptr [rsp + 0x558], rdi
.label_238:
	mov	rbp, qword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rsp + 0x38]
	nop	
	jmp	.label_142
.label_124:
	lea	rax, [rdx + 1]
	mov	rbp, rbp
	mov	qword ptr [r13], rax
	movzx	r14d, byte ptr [rdx]
	jmp	.label_251
.label_252:
	lea	rdi, [rsp + 0x50]
	mov	rax, rdi
	mov	rsi, qword ptr [rsp + 0x568]
.label_232:
	lea	rcx, [rsp + 0x63]
	cmp	rax, rcx
	jae	.label_253
	nop	
	mov	byte ptr [rax], bl
	inc	rax
	mov	rbp, rbp
	mov	rdx, qword ptr [r13]
.label_253:
	nop	
	mov	rcx, rdx
	lea	rdi, [rdi]
	lea	rdx, [rcx + 1]
	lea	rsi, [rsi]
	mov	qword ptr [r13], rdx
	movzx	ebx, byte ptr [rcx + 1]
	lea	rsi, [rsi]
	mov	ecx, ebx
	add	ecx, -0x41
	nop	
	cmp	ecx, 0x39
	ja	.label_255
	lea	rsi, [rsi]
	mov	rbp, rsi
	mov	rbp, rbp
	shr	rbp, cl
	nop	
	and	ebp, 1
	nop	
	jmp	.label_263
	nop	
.label_255:
	lea	rsi, [rsi]
	xor	ebp, ebp
.label_263:
	movzx	ecx, bl
	cmp	ecx, 0x2e
	je	.label_232
	test	bpl, bpl
	jne	.label_232
	mov	qword ptr [rsp + 0x78], r8
	mov	byte ptr [rax], 0
	nop	
	mov	al, byte ptr [rsp + 0x50]
	test	al, al
	lea	rdi, [rdi]
	lea	rcx, [rsp + 0x51]
	je	.label_270
	nop	dword ptr [rax + rax]
.label_86:
	nop	
	movzx	edx, al
	add	edx, -0x61
	lea	rdi, [rdi]
	cmp	edx, 0x1a
	jae	.label_275
	add	al, 0xe0
.label_275:
	mov	byte ptr [rcx - 1], al
	mov	al, byte ptr [rcx]
	inc	rcx
	test	al, al
	jne	.label_86
.label_270:
	mov	esi, OFFSET FLAT:.str.99
	nop	
	mov	rbp, rdi
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:meridian_table
	mov	rbp, rbp
	je	.label_85
	mov	esi, OFFSET FLAT:.str.100
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_103
	nop	
	je	.label_85
	nop	
	mov	esi, OFFSET FLAT:.str.101
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	strcmp
	nop	
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_111
	lea	rdi, [rdi]
	je	.label_85
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.102
	mov	rdi, rbp
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	mov	ebx, OFFSET FLAT:label_116
	mov	rbp, rbp
	je	.label_85
	mov	rdi, rbp
	call	strlen
	mov	rbp, rbp
	mov	r14b, 1
	lea	rdi, [rdi]
	cmp	rax, 3
	je	.label_123
	lea	rsi, [rsi]
	cmp	rax, 4
	nop	
	jne	.label_128
	mov	rsp, rsp
	movzx	ecx, byte ptr [rsp + 0x53]
	cmp	ecx, 0x2e
	nop	
	sete	r14b
	jmp	.label_123
.label_233:
	mov	rbp, rbp
	dec	rcx
	mov	edi, 0x3b9aca00
	sub	edi, esi
	lea	rsi, [rsi]
	mov	esi, edi
.label_228:
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	rdi, rcx
	shr	rdi, 8
	nop	
	mov	qword ptr [rsp + 0x548], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x57c], ecx
	movsxd	rcx, esi
	mov	qword ptr [r13], rdx
	test	eax, eax
	sete	al
	lea	rsi, [rsi]
	movzx	r14d, al
	nop	
	or	r14d, 0x114
	mov	edx, dword ptr [rsp + 0x38]
	jmp	.label_142
.label_128:
	xor	r14d, r14d
.label_123:
	mov	qword ptr [rsp + 0x70], rax
	nop	
	mov	esi, OFFSET FLAT:.str.103
	mov	ebx, OFFSET FLAT:month_and_day_table
.label_171:
	test	r14b, r14b
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rdi, [rdi]
	je	.label_160
	mov	rsp, rsp
	mov	edx, 3
	mov	rbp, rdi
	mov	rbp, rbp
	call	strncmp
	jmp	.label_166
.label_160:
	mov	rbp, rdi
	call	strcmp
.label_166:
	mov	rsp, rsp
	test	eax, eax
	je	.label_85
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_171
	lea	rdi, [rdi]
	mov	rdi, r13
	nop	
	mov	rsi, rbp
	mov	rbp, rbp
	call	lookup_zone
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_85
	mov	esi, OFFSET FLAT:.str.177
	mov	rdi, rbp
	nop	
	call	strcmp
	test	eax, eax
	nop	
	mov	ebx, OFFSET FLAT:dst_table
	je	.label_85
	mov	esi, OFFSET FLAT:.str.178
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:time_units_table
	lea	rsi, [rsi]
	je	.label_85
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.179
	mov	rbp, rbp
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_93
	nop	
	je	.label_85
	mov	esi, OFFSET FLAT:.str.180
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:label_194
	je	.label_85
	mov	esi, OFFSET FLAT:.str.181
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_174
	je	.label_85
	mov	esi, OFFSET FLAT:.str.182
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_207
	nop	
	je	.label_85
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.183
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_213
	je	.label_85
	mov	esi, OFFSET FLAT:.str.184
	mov	rdi, rbp
	mov	rsp, rsp
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_220
	je	.label_85
	mov	esi, OFFSET FLAT:.str.185
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	nop	
	mov	ebx, OFFSET FLAT:label_169
	je	.label_85
	mov	esi, OFFSET FLAT:.str.186
	mov	rdi, rbp
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:label_141
	lea	rsi, [rsi]
	je	.label_85
	mov	esi, OFFSET FLAT:.str.187
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:label_204
	je	.label_85
	mov	rax, qword ptr [rsp + 0x70]
	movzx	eax, byte ptr [rax + rbp - 1]
	cmp	eax, 0x53
	mov	rbp, rbp
	jne	.label_240
	mov	rax, qword ptr [rsp + 0x70]
	mov	byte ptr [rsp + rax + 0x4f], 0
	mov	esi, OFFSET FLAT:.str.178
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	ebx, OFFSET FLAT:time_units_table
	nop	
	je	.label_85
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.179
	mov	rdi, rbp
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_93
	je	.label_85
	mov	esi, OFFSET FLAT:.str.180
	mov	rdi, rbp
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_194
	mov	rbp, rbp
	je	.label_85
	nop	
	mov	esi, OFFSET FLAT:.str.181
	mov	rdi, rbp
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:label_174
	je	.label_85
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.182
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	nop	
	mov	ebx, OFFSET FLAT:label_207
	mov	rsp, rsp
	je	.label_85
	mov	esi, OFFSET FLAT:.str.183
	mov	rdi, rbp
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:label_213
	je	.label_85
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.184
	mov	rbp, rbp
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_220
	lea	rsi, [rsi]
	je	.label_85
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.185
	mov	rdi, rbp
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:label_169
	je	.label_85
	mov	esi, OFFSET FLAT:.str.186
	lea	rdi, [rdi]
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:label_141
	mov	rbp, rbp
	je	.label_85
	mov	esi, OFFSET FLAT:.str.187
	mov	rsp, rsp
	mov	rdi, rbp
	nop	
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_204
	mov	rsp, rsp
	je	.label_85
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	mov	byte ptr [rsp + rax + 0x4f], 0x53
.label_240:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.188
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsp, rsp
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:relative_time_table
	je	.label_85
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.189
	lea	rdi, [rdi]
	mov	rdi, rbp
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_134
	lea	rsi, [rsi]
	je	.label_85
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.190
	mov	rdi, rbp
	call	strcmp
	nop	
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_146
	je	.label_85
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.191
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_199
	je	.label_85
	mov	esi, OFFSET FLAT:.str.192
	mov	rdi, rbp
	nop	
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_87
	je	.label_85
	mov	esi, OFFSET FLAT:.str.193
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:label_227
	lea	rsi, [rsi]
	je	.label_85
	mov	esi, OFFSET FLAT:.str.194
	mov	rdi, rbp
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_168
	je	.label_85
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.195
	lea	rdi, [rdi]
	mov	rdi, rbp
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:label_176
	mov	rbp, rbp
	je	.label_85
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.196
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:label_180
	lea	rsi, [rsi]
	je	.label_85
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.197
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_242
	je	.label_85
	mov	esi, OFFSET FLAT:.str.198
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_189
	lea	rdi, [rdi]
	je	.label_85
	mov	esi, OFFSET FLAT:.str.199
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:label_196
	je	.label_85
	mov	esi, OFFSET FLAT:.str.200
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:label_200
	je	.label_85
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.201
	mov	rdi, rbp
	nop	
	call	strcmp
	test	eax, eax
	nop	
	mov	ebx, OFFSET FLAT:label_209
	je	.label_85
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.202
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:label_216
	mov	rsp, rsp
	je	.label_85
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.203
	mov	rdi, rbp
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:label_222
	mov	rsp, rsp
	je	.label_85
	nop	
	mov	esi, OFFSET FLAT:.str.204
	mov	rsp, rsp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:label_229
	mov	rbp, rbp
	je	.label_85
	mov	esi, OFFSET FLAT:.str.205
	mov	rbp, rbp
	mov	rdi, rbp
	nop	
	call	strcmp
	test	eax, eax
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:label_239
	je	.label_85
	mov	esi, OFFSET FLAT:.str.206
	nop	
	mov	rdi, rbp
	nop	
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_243
	je	.label_85
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.207
	mov	rdi, rbp
	nop	
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_247
	mov	rbp, rbp
	je	.label_85
	lea	rdi, [rdi]
	movzx	edi, word ptr [rsp + 0x50]
	cmp	qword ptr [rsp + 0x70], 1
	mov	cl, dil
	jne	.label_250
	movzx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0x41
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:military_table
	lea	rdi, [rdi]
	mov	rsi, rbp
	je	.label_85
	lea	rdi, [rdi]
	cmp	edx, 0x42
	mov	ebx, OFFSET FLAT:label_145
	je	.label_85
	lea	rdi, [rdi]
	cmp	edx, 0x43
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:label_256
	lea	rdi, [rdi]
	je	.label_85
	cmp	edx, 0x44
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:label_262
	mov	rbp, rbp
	je	.label_85
	cmp	edx, 0x45
	nop	
	mov	ebx, OFFSET FLAT:label_237
	je	.label_85
	mov	rsp, rsp
	cmp	edx, 0x46
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:label_268
	lea	rdi, [rdi]
	je	.label_85
	cmp	edx, 0x47
	mov	ebx, OFFSET FLAT:label_127
	je	.label_85
	mov	rbp, rbp
	cmp	edx, 0x48
	nop	
	mov	ebx, OFFSET FLAT:label_257
	lea	rsi, [rsi]
	je	.label_85
	mov	rbp, rbp
	cmp	edx, 0x49
	mov	ebx, OFFSET FLAT:label_84
	mov	rbp, rbp
	je	.label_85
	mov	rsp, rsp
	cmp	edx, 0x4b
	mov	ebx, OFFSET FLAT:label_91
	je	.label_85
	cmp	edx, 0x4c
	nop	
	mov	ebx, OFFSET FLAT:label_96
	je	.label_85
	nop	
	cmp	edx, 0x4d
	mov	ebx, OFFSET FLAT:label_101
	je	.label_85
	cmp	edx, 0x4e
	mov	ebx, OFFSET FLAT:label_104
	nop	
	je	.label_85
	lea	rdi, [rdi]
	cmp	edx, 0x4f
	mov	ebx, OFFSET FLAT:label_187
	mov	rbp, rbp
	je	.label_85
	cmp	edx, 0x50
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:label_112
	je	.label_85
	cmp	edx, 0x51
	mov	ebx, OFFSET FLAT:label_114
	je	.label_85
	cmp	edx, 0x52
	mov	ebx, OFFSET FLAT:label_172
	je	.label_85
	cmp	edx, 0x53
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:label_249
	nop	
	je	.label_85
	cmp	edx, 0x54
	mov	ebx, OFFSET FLAT:label_273
	lea	rdi, [rdi]
	je	.label_85
	cmp	edx, 0x55
	nop	
	mov	ebx, OFFSET FLAT:label_131
	je	.label_85
	cmp	edx, 0x56
	mov	ebx, OFFSET FLAT:label_157
	je	.label_85
	cmp	edx, 0x57
	mov	ebx, OFFSET FLAT:label_140
	je	.label_85
	cmp	edx, 0x58
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:label_144
	mov	rsp, rsp
	je	.label_85
	cmp	edx, 0x59
	mov	ebx, OFFSET FLAT:label_150
	mov	rbp, rbp
	je	.label_85
	nop	
	test	cl, cl
	lea	rdi, [rdi]
	je	.label_153
	mov	rbp, rbp
	cmp	edx, 0x5a
	mov	ebx, OFFSET FLAT:label_155
	mov	rbp, rbp
	je	.label_85
	jmp	.label_115
.label_250:
	test	cl, cl
	lea	rdi, [rdi]
	mov	rsi, rbp
	je	.label_153
.label_115:
	mov	rbp, rbp
	shr	edi, 8
	movzx	ecx, cl
	cmp	ecx, 0x2e
	lea	rsi, [rsi]
	sete	dl
	lea	rcx, [rsp + 0x51]
	cmove	rcx, rsi
	mov	rbp, rsi
	mov	byte ptr [rcx], dil
	lea	rsi, [rsi]
	test	dil, dil
	lea	rax, [rsp + 0x52]
	je	.label_159
.label_173:
	movzx	esi, byte ptr [rax - 1]
	lea	rdi, [rcx + 1]
	cmp	esi, 0x2e
	mov	sil, 1
	je	.label_269
	mov	sil, dl
.label_269:
	lea	rdi, [rdi]
	cmovne	rcx, rdi
	nop	
	mov	dl, byte ptr [rax]
	mov	byte ptr [rcx], dl
	inc	rax
	nop	
	test	dl, dl
	mov	dl, sil
	nop	
	jne	.label_173
.label_159:
	test	dl, 1
	mov	rsi, rbp
	lea	rsi, [rsi]
	je	.label_153
	nop	
	mov	rdi, r13
	call	lookup_zone
	lea	rsi, [rsi]
	mov	rbx, rax
	test	rbx, rbx
	je	.label_153
.label_85:
	mov	r14d, dword ptr [rbx + 8]
	mov	eax, dword ptr [rbx + 0xc]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x57c], eax
	nop	
	sar	eax, 8
	cdqe	
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x548], rax
.label_117:
	mov	r8, qword ptr [rsp + 0x78]
	lea	r9, [rsp + 0x536]
.label_251:
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	rbp, rbp
	mov	edx, dword ptr [rsp + 0x38]
	nop	word ptr cs:[rax + rax]
.label_203:
	xor	eax, eax
	test	r14d, r14d
	jle	.label_190
	mov	eax, 2
	lea	rsi, [rsi]
	cmp	r14d, 0x115
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	ja	.label_193
.label_142:
	lea	rsi, [rsi]
	movsxd	rax, r14d
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rax + yytranslate]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rcx
	nop	
	jmp	.label_193
.label_190:
	lea	rsi, [rsi]
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_193:
	add	edx, eax
	mov	rsp, rsp
	cmp	edx, 0x70
	mov	rsp, rsp
	ja	.label_198
	lea	rdi, [rdi]
	movsxd	rcx, edx
	nop	
	movsx	edx, byte ptr [rcx + yycheck]
	lea	rdi, [rdi]
	cmp	edx, eax
	jne	.label_198
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rcx + yytable]
	nop	
	or	rcx, 4
	cmp	rcx, 0x6f
	jne	.label_212
	neg	eax
	jmp	.label_217
	nop	
.label_198:
	movzx	eax, byte ptr [rbp + yydefact]
	test	eax, eax
	mov	ebp, 1
	mov	rsp, rsp
	je	.label_90
.label_217:
	movsxd	r10, eax
	nop	
	movzx	r11d, byte ptr [r10 + yyr2]
	mov	eax, 1
	mov	rsp, rsp
	sub	rax, r11
	mov	rsp, rsp
	imul	rax, rax, 0x38
	mov	rsi, qword ptr [r15 + rax]
	mov	rdx, qword ptr [r15 + rax + 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + rax + 0x10]
	mov	rcx, qword ptr [r15 + rax + 0x18]
	mov	qword ptr [rsp + 0xa0], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15 + rax + 0x20]
	mov	qword ptr [rsp + 0x38], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + rax + 0x28]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x70], rcx
	mov	ecx, dword ptr [r15 + rax + 0x30]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x53c], ecx
	mov	ebx, dword ptr [r15 + rax + 0x34]
	lea	eax, [r10 - 4]
	cmp	eax, 0x57
	ja	.label_92
	nop	
	jmp	qword ptr [(rax * 8) + label_244]
.label_1163:
	mov	rax, qword ptr [r15 + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r15]
	movups	xmm1, xmmword ptr [r15 + 0x10]
	movups	xmm2, xmmword ptr [r15 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rsp], xmm0
	nop	
	mov	ebp, 1
	mov	qword ptr [rsp + 0x570], rsi
	mov	esi, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rdi
	lea	rdi, [rdi]
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x538], ebx
	lea	rdi, [rdi]
	mov	rbx, r8
	nop	
	mov	qword ptr [rsp + 0x80], r10
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x560], r11
	mov	qword ptr [rsp + 0x550], rdx
	mov	rsp, rsp
	call	apply_relative_time
	mov	rdx, qword ptr [rsp + 0x550]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x570]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x560]
	mov	r10, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	lea	r9, [rsp + 0x536]
	nop	
	mov	r8, rbx
	mov	ebx, dword ptr [rsp + 0x538]
	jmp	.label_191
.label_212:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x548]
	shl	rcx, 8
	mov	rbp, rbp
	mov	edx, dword ptr [rsp + 0x57c]
	movzx	edx, dl
	lea	rdi, [rdi]
	or	rdx, rcx
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x38], rdx
	mov	rcx, qword ptr [rsp + 0x88]
	mov	qword ptr [r15 + 0x40], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x558]
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x48], rcx
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15 + 0x60], xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [r15 + 0x50], xmm0
	lea	rsi, [rsi]
	lea	rcx, [r15 + 0x38]
	mov	rbp, rbp
	mov	r14d, 0xfffffffe
	jmp	.label_179
.label_1171:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15]
	lea	rcx, [r15 - 0x30]
	mov	rbp, rbp
	test	rdi, rdi
	mov	rbp, rbp
	jns	.label_206
	mov	rsi, qword ptr [r15 - 0x30]
	jmp	.label_236
.label_1183:
	mov	rsi, qword ptr [r15 + 8]
	xor	edx, edx
	lea	rdi, [rdi]
	jmp	.label_92
.label_1165:
	mov	rsi, qword ptr [r15 - 0x30]
	jmp	.label_121
.label_1177:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 - 0x30]
	jmp	.label_122
.label_1168:
	mov	rdx, qword ptr [r15 - 0x30]
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	jmp	.label_126
.label_1172:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15]
	jmp	.label_132
.label_1174:
	mov	rax, qword ptr [r15 - 0x30]
	mov	rbp, rbp
	jmp	.label_136
.label_1180:
	mov	rax, qword ptr [r15 - 0x30]
	lea	rdi, [rdi]
	jmp	.label_138
.label_1181:
	mov	rax, qword ptr [r15 - 0x38]
	mov	qword ptr [rsp + 0x70], rax
	nop	
	mov	eax, dword ptr [r15 - 0x30]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x53c], eax
	mov	rsp, rsp
	xor	esi, esi
	mov	rsp, rsp
	xor	edx, edx
	lea	rdi, [rdi]
	xor	edi, edi
	xor	eax, eax
	mov	qword ptr [rsp + 0xa0], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	nop	
	jmp	.label_92
.label_1185:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rdi
	nop	
	movdqu	xmm0, xmmword ptr [r15 - 0x38]
	mov	rdi, qword ptr [r15 - 0x28]
	mov	rax, qword ptr [r13 + 0xa8]
	test	rax, rax
	je	.label_156
	cmp	qword ptr [r13 + 0x30], 0
	jne	.label_156
	cmp	byte ptr [r13 + 0xa1], 0
	mov	rbp, rbp
	je	.label_162
.label_156:
	mov	rbp, rbp
	cmp	rdi, 5
	jl	.label_165
	mov	qword ptr [rsp + 0x550], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x570], rsi
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x538], ebx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x560], r11
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x80], r10
	mov	rbx, r8
	inc	rax
	mov	rsp, rsp
	mov	qword ptr [r13 + 0xa8], rax
	mov	rsp, rsp
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	mov	rsp, rsp
	movabs	rbp, 0xa3d70a3d70a3d70b
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rsp, rsp
	imul	rbp
	mov	rsi, rdx
	mov	rbp, rbp
	add	rsi, rcx
	mov	rax, rsi
	shr	rax, 0x3f
	sar	rsi, 6
	nop	
	add	rsi, rax
	imul	rax, rsi, 0x64
	mov	rdx, rcx
	sub	rdx, rax
	mov	qword ptr [r13 + 0x40], rdx
	lea	rdi, [rdi]
	mov	rax, rsi
	imul	rbp
	nop	
	add	rdx, rsi
	mov	rax, rdx
	shr	rax, 0x3f
	mov	rsp, rsp
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x64
	mov	rbp, rbp
	sub	rsi, rax
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x38], rsi
	mov	rsp, rsp
	movabs	rdx, 0x346dc5d63886594b
	mov	rbp, rbp
	mov	rax, rcx
	imul	rdx
	lea	rdi, [rdi]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0xb
	mov	rsp, rsp
	add	rdx, rax
	nop	
	mov	qword ptr [r13 + 0x28], rdx
	mov	rbp, rbp
	add	rdi, -4
	mov	rsp, rsp
	mov	qword ptr [r13 + 0x30], rdi
	nop	
	jmp	.label_167
.label_1170:
	mov	rdi, qword ptr [r15]
	lea	rcx, [r15 - 0x38]
	test	rdi, rdi
	js	.label_211
.label_206:
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_113
	mov	rsi, qword ptr [rcx]
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	nop	
	test	rsi, rsi
	js	.label_215
	nop	
	dec	rax
	lea	rdi, [rdi]
	jmp	.label_221
.label_1169:
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, 1
	jmp	.label_126
.label_1162:
	mov	qword ptr [rsp + 0x570], rsi
	mov	esi, dword ptr [r15]
	mov	rax, qword ptr [r15 - 8]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r15 - 0x38]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [r15 - 0x28]
	lea	rdi, [rdi]
	movups	xmm2, xmmword ptr [r15 - 0x18]
	mov	rbp, rbp
	movups	xmmword ptr [rsp + 0x20], xmm2
	mov	rbp, rbp
	movups	xmmword ptr [rsp + 0x10], xmm1
	mov	rsp, rsp
	movdqu	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x48], rdi
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x78], r8
	mov	rbp, r9
	mov	qword ptr [rsp + 0x80], r10
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x538], ebx
	mov	rbp, rbp
	mov	rbx, r11
	mov	qword ptr [rsp + 0x550], rdx
	call	apply_relative_time
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x550]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x570]
	nop	
	mov	rdi, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	r11, rbx
	mov	ebx, dword ptr [rsp + 0x538]
	mov	r10, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	mov	r9, rbp
	nop	
	mov	r8, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	ebp, 1
.label_191:
	test	al, al
	lea	rdi, [rdi]
	jne	.label_92
	jmp	.label_90
.label_1161:
	mov	r9, rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [r15 - 0x70]
	movdqu	xmmword ptr [rcx], xmm0
	mov	rax, qword ptr [r15 - 0x30]
	mov	rcx, rax
	lea	rsi, [rsi]
	neg	rcx
	mov	rsp, rsp
	movabs	rdx, 0x8000000000000000
	lea	rdi, [rdi]
	cmp	rax, rdx
	mov	qword ptr [r13 + 0x38], rcx
	lea	rsi, [rsi]
	mov	ebp, 1
	je	.label_90
	mov	rax, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	neg	rcx
	mov	rbp, rbp
	cmp	rax, rdx
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0x40], rcx
	mov	rbp, rbp
	mov	rdx, r9
	mov	rsp, rsp
	lea	r9, [rsp + 0x536]
	jne	.label_92
	jmp	.label_90
.label_1159:
	mov	rax, qword ptr [r15 - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x40], rax
	mov	rax, qword ptr [r15]
	mov	qword ptr [r13 + 0x38], rax
	lea	rdi, [rdi]
	jmp	.label_92
.label_1186:
	mov	rsi, -1
	lea	rdi, [rdi]
	jmp	.label_92
.label_1141:
	mov	dword ptr [r13 + 0x14], 1
	nop	
	inc	qword ptr [r13 + 0xc0]
	jmp	.label_92
.label_1144:
	mov	eax, dword ptr [r15 - 0x38]
	mov	dword ptr [r13 + 0x18], eax
	lea	rdi, [rdi]
	jmp	.label_107
.label_1136:
	mov	rax, qword ptr [r15 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	nop	
	pxor	xmm0, xmm0
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x580]
	mov	rsp, rsp
	movdqu	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	mov	dword ptr [r13 + 0x1c], 2
	nop	
	jmp	.label_92
.label_1148:
	mov	rbp, rbp
	mov	eax, 0xe10
	add	eax, dword ptr [r15 - 0x38]
	mov	dword ptr [r13 + 0x18], eax
	nop	
	jmp	.label_92
.label_1146:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x550], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 - 0x30]
	lea	rdi, [rdi]
	imul	rcx, rdx, 0x64
	nop	
	cmp	qword ptr [r15 - 0x28], 3
	mov	rax, qword ptr [r15]
	mov	rbp, rbp
	cmovge	rcx, rdx
	test	rax, rax
	mov	rsp, rsp
	cmovns	rcx, rdx
	js	.label_130
	mov	qword ptr [rsp + 0x570], rsi
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, rbp
	mov	dl, byte ptr [r15 - 0x38]
	mov	rsp, rsp
	test	rcx, rcx
	js	.label_148
	movabs	rsi, 0x222222222222222
	lea	rsi, [rsi]
	cmp	rcx, rsi
	lea	rsi, [rsi]
	movabs	rdi, 0x8000000000000000
	jg	.label_154
	mov	rsp, rsp
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_158
.label_1133:
	mov	rax, qword ptr [r15 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	mov	rbp, rbp
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0x580]
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_161
.label_1156:
	mov	rbp, rbp
	mov	r9, rdx
	mov	rbp, rbp
	mov	rax, qword ptr [r15 - 0x70]
	mov	qword ptr [r13 + 0x38], rax
	mov	rax, qword ptr [r15 - 0x30]
	mov	rcx, rax
	neg	rcx
	movabs	rdx, 0x8000000000000000
	cmp	rax, rdx
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x40], rcx
	mov	ebp, 1
	je	.label_90
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	rcx, rax
	neg	rcx
	cmp	rax, rdx
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x28], rcx
	mov	rdx, r9
	lea	r9, [rsp + 0x536]
	jne	.label_178
	jmp	.label_90
.label_1151:
	nop	
	mov	rax, qword ptr [r15 - 0x38]
	mov	rsp, rsp
	jmp	.label_183
.label_1145:
	mov	rsp, rsp
	mov	dword ptr [r13 + 0x18], 0x6270
.label_107:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movdqu	xmm0, xmmword ptr [r15]
	movups	xmm1, xmmword ptr [r15 + 0x10]
	movups	xmm2, xmmword ptr [r15 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x10], xmm1
	mov	rsp, rsp
	movdqu	xmmword ptr [rsp], xmm0
	mov	ebp, 1
	mov	qword ptr [rsp + 0x570], rsi
	mov	esi, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rdi
	mov	rdi, r13
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x78], r8
	mov	dword ptr [rsp + 0x538], ebx
	lea	rsi, [rsi]
	mov	rbx, r10
	mov	qword ptr [rsp + 0x560], r11
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x550], rdx
	call	apply_relative_time
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x560]
	lea	rdi, [rdi]
	test	al, al
	je	.label_90
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	mov	rbp, rcx
	jmp	.label_214
.label_1135:
	mov	rax, qword ptr [r15 - 0x110]
	mov	rcx, qword ptr [r15 - 0xa0]
	lea	rdi, [rdi]
	mov	r9, rdx
	mov	rdx, qword ptr [r15 - 0x38]
	mov	rbp, rbp
	mov	rbp, rsi
	nop	
	movsxd	rsi, dword ptr [r15 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x50], rcx
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x58], rdx
	mov	rbp, rbp
	mov	rdx, r9
	mov	rsp, rsp
	lea	r9, [rsp + 0x536]
	mov	qword ptr [r13 + 0x60], rsi
	mov	rsi, rbp
	jmp	.label_161
.label_1142:
	mov	rbp, rbp
	mov	eax, dword ptr [r15]
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_92
.label_1125:
	lea	rsi, [rsi]
	inc	qword ptr [r13 + 0xc8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x570], rsi
	mov	esi, OFFSET FLAT:.str.2_1
	jmp	.label_98
.label_1152:
	mov	rsp, rsp
	mov	rax, qword ptr [r15 - 0x30]
.label_183:
	nop	
	mov	qword ptr [r13 + 8], rax
	nop	
	mov	eax, dword ptr [r15]
	mov	dword ptr [r13 + 0x10], eax
	mov	byte ptr [r13 + 0xe0], 1
	mov	rbp, rbp
	jmp	.label_92
.label_1154:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r15 - 0xd0]
	mov	al, byte ptr [r13 + 0xd9]
	cmp	rbp, 4
	lea	rdi, [rdi]
	jl	.label_248
	lea	rsi, [rsi]
	lea	rcx, [r15 - 0xe0]
	mov	qword ptr [rsp + 0x560], rcx
	test	al, al
	je	.label_105
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x570], rsi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.10
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x550], rdx
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], r8
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x80], r10
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x538], ebx
	mov	rbx, r11
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 - 0xd8]
	mov	rsp, rsp
	xor	eax, eax
	mov	rdi, rcx
	mov	rbp, rbp
	mov	rdx, rbp
	call	dbg_printf
	mov	rdx, qword ptr [rsp + 0x550]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x570]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x48]
	mov	r11, rbx
	mov	ebx, dword ptr [rsp + 0x538]
	mov	r10, qword ptr [rsp + 0x80]
	lea	r9, [rsp + 0x536]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x78]
.label_105:
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x560]
	mov	rax, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [rbp]
	movdqu	xmmword ptr [rcx], xmm0
.label_1153:
	mov	rax, qword ptr [r15 - 0x68]
	lea	rsi, [rsi]
	jmp	.label_106
.label_1128:
	inc	qword ptr [r13 + 0xa8]
	mov	qword ptr [rsp + 0x48], rdi
	nop	
	xor	edi, edi
	nop	
	mov	qword ptr [rsp + 0x570], rsi
	mov	esi, OFFSET FLAT:.str.5_0
	lea	rsi, [rsi]
	jmp	.label_98
.label_1134:
	mov	rax, qword ptr [r15 - 0xa0]
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 - 0x30]
	nop	
	mov	qword ptr [r13 + 0x48], rax
	mov	qword ptr [r13 + 0x50], rcx
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x98]
	nop	
	movdqu	xmmword ptr [rax], xmm0
.label_161:
	mov	rbp, rbp
	mov	eax, dword ptr [r15]
	mov	rbp, rbp
	mov	dword ptr [r13 + 0x1c], eax
	lea	rdi, [rdi]
	jmp	.label_92
.label_1147:
	mov	eax, 0xe10
	lea	rsi, [rsi]
	add	eax, dword ptr [r15]
	nop	
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_92
.label_1123:
	lea	rdi, [rdi]
	movdqu	xmm0, xmmword ptr [r15]
	mov	rax, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax], xmm0
	nop	
	mov	byte ptr [r13 + 0xa0], 1
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x570], rsi
	mov	esi, OFFSET FLAT:.str_4
	jmp	.label_98
.label_1124:
	nop	
	inc	qword ptr [r13 + 0xc8]
	lea	rdi, [rdi]
	inc	qword ptr [r13 + 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rdi
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x570], rsi
	mov	esi, OFFSET FLAT:.str.1_2
	nop	
	jmp	.label_98
.label_1129:
	lea	rdi, [rdi]
	inc	qword ptr [r13 + 0xb0]
	nop	
	mov	qword ptr [rsp + 0x48], rdi
	nop	
	xor	edi, edi
	mov	qword ptr [rsp + 0x570], rsi
	mov	esi, OFFSET FLAT:.str.6_0
	jmp	.label_98
.label_1130:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x570], rsi
	mov	esi, OFFSET FLAT:.str.7_0
	jmp	.label_170
.label_1137:
	nop	
	mov	rax, qword ptr [r15 - 0xa0]
	mov	rcx, qword ptr [r15 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	nop	
	mov	qword ptr [r13 + 0x50], rcx
	jmp	.label_177
.label_1166:
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	mov	esi, 1
	nop	
	jmp	.label_126
.label_1138:
	mov	rax, qword ptr [r15 - 0x110]
	mov	rcx, qword ptr [r15 - 0xa0]
	mov	rsp, rsp
	mov	r9, rdx
	mov	rdx, qword ptr [r15 - 0x38]
	mov	rbp, rsi
	movsxd	rsi, dword ptr [r15 - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x48], rax
	mov	qword ptr [r13 + 0x50], rcx
	mov	qword ptr [r13 + 0x58], rdx
	mov	rdx, r9
	mov	rbp, rbp
	lea	r9, [rsp + 0x536]
	mov	qword ptr [r13 + 0x60], rsi
	mov	rsi, rbp
	nop	
	mov	dword ptr [r13 + 0x1c], 2
	jmp	.label_92
.label_1126:
	inc	qword ptr [r13 + 0xb8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x570], rsi
	mov	esi, OFFSET FLAT:.str.3_1
	jmp	.label_98
.label_1187:
	nop	
	mov	rsi, qword ptr [r15 + 8]
	jmp	.label_92
.label_1127:
	inc	qword ptr [r13 + 0xd0]
	mov	qword ptr [rsp + 0x48], rdi
	mov	rsp, rsp
	xor	edi, edi
	mov	qword ptr [rsp + 0x570], rsi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.4_1
	mov	rsp, rsp
	jmp	.label_98
.label_1160:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 - 0x68]
	mov	qword ptr [r13 + 0x40], rax
	mov	rax, qword ptr [r15 - 0x38]
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x38], rax
	jmp	.label_210
.label_1167:
	mov	rdx, qword ptr [r15 - 0x38]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_126
.label_1132:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, rbp
	xor	edi, edi
	mov	qword ptr [rsp + 0x570], rsi
	nop	
	mov	esi, OFFSET FLAT:.str.9_0
.label_170:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x550], rdx
	mov	edx, 5
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x78], r8
	mov	dword ptr [rsp + 0x538], ebx
	mov	rbx, r10
	mov	rbp, r11
.label_214:
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r13
	mov	rbp, rbp
	call	debug_print_relative_time
	jmp	.label_231
.label_1131:
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x570], rsi
	mov	esi, OFFSET FLAT:.str.8_0
.label_98:
	nop	
	mov	qword ptr [rsp + 0x550], rdx
	mov	edx, 5
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x78], r8
	mov	dword ptr [rsp + 0x538], ebx
	nop	
	mov	rbx, r10
	mov	rsp, rsp
	mov	rbp, r11
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, r13
	call	debug_print_current_time
.label_231:
	mov	rdx, qword ptr [rsp + 0x550]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x570]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	r11, rbp
	mov	rsp, rsp
	mov	r10, rbx
	nop	
	mov	ebx, dword ptr [rsp + 0x538]
	lea	r9, [rsp + 0x536]
	mov	r8, qword ptr [rsp + 0x78]
	jmp	.label_92
.label_1140:
	mov	eax, dword ptr [r15]
	mov	rsp, rsp
	mov	dword ptr [r13 + 0x14], eax
	jmp	.label_92
.label_1157:
	mov	rbp, rbp
	mov	rax, qword ptr [r15 - 0x38]
.label_106:
	mov	qword ptr [r13 + 0x38], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r13 + 0x40], rax
	jmp	.label_92
.label_1139:
	mov	qword ptr [rsp + 0x550], rdx
	lea	rdi, [rdi]
	inc	qword ptr [r13 + 0xd0]
	mov	rdx, qword ptr [r15 - 0x30]
	imul	rcx, rdx, 0x64
	lea	rdi, [rdi]
	cmp	qword ptr [r15 - 0x28], 3
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15]
	nop	
	cmovge	rcx, rdx
	test	rax, rax
	lea	rsi, [rsi]
	cmovns	rcx, rdx
	lea	rsi, [rsi]
	js	.label_260
	mov	qword ptr [rsp + 0x570], rsi
	mov	rbp, rdi
	mov	dl, byte ptr [r15 - 0x38]
	lea	rsi, [rsi]
	test	rcx, rcx
	nop	
	js	.label_271
	movabs	rsi, 0x222222222222222
	nop	
	cmp	rcx, rsi
	movabs	rdi, 0x8000000000000000
	jg	.label_261
	xor	esi, esi
	jmp	.label_88
.label_1173:
	mov	rax, qword ptr [r15 - 0x38]
.label_136:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa0], rax
	xor	esi, esi
	jmp	.label_94
.label_1178:
	xor	esi, esi
	nop	
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	jmp	.label_97
.label_1179:
	mov	rax, qword ptr [r15 - 0x38]
.label_138:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	nop	
	xor	esi, esi
	jmp	.label_102
.label_1164:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 - 0x38]
.label_121:
	xor	edx, edx
.label_126:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	jmp	.label_108
.label_1143:
	mov	dword ptr [r13 + 0x18], 0x6270
	mov	rsp, rsp
	jmp	.label_92
.label_1175:
	mov	rsp, rsp
	xor	esi, esi
	mov	rsp, rsp
	mov	eax, 1
	mov	qword ptr [rsp + 0xa0], rax
.label_94:
	nop	
	xor	edx, edx
	xor	edi, edi
	jmp	.label_118
.label_1184:
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, rbp
	movdqu	xmm0, xmmword ptr [r15]
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r13 + 0xa8]
	test	rax, rax
	je	.label_129
	cmp	qword ptr [r13 + 0x30], 0
	mov	rsp, rsp
	jne	.label_129
	lea	rdi, [rdi]
	cmp	byte ptr [r13 + 0xa1], 0
	je	.label_133
.label_129:
	mov	qword ptr [rsp + 0x550], rdx
	mov	qword ptr [rsp + 0x570], rsi
	mov	rbp, rbp
	cmp	rdi, 5
	nop	
	jl	.label_137
	lea	rsi, [rsi]
	inc	rax
	nop	
	mov	qword ptr [r13 + 0xa8], rax
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	movabs	rbp, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rbp
	nop	
	mov	rsi, rdx
	add	rsi, rcx
	mov	rax, rsi
	shr	rax, 0x3f
	sar	rsi, 6
	add	rsi, rax
	imul	rax, rsi, 0x64
	mov	rsp, rsp
	mov	rdx, rcx
	nop	
	sub	rdx, rax
	mov	qword ptr [r13 + 0x40], rdx
	mov	rax, rsi
	imul	rbp
	add	rdx, rsi
	lea	rdi, [rdi]
	mov	rax, rdx
	shr	rax, 0x3f
	mov	rbp, rbp
	sar	rdx, 6
	add	rdx, rax
	nop	
	imul	rax, rdx, 0x64
	sub	rsi, rax
	mov	qword ptr [r13 + 0x38], rsi
	mov	rbp, rbp
	movabs	rdx, 0x346dc5d63886594b
	mov	rsp, rsp
	mov	rax, rcx
	lea	rsi, [rsi]
	imul	rdx
	mov	rsp, rsp
	mov	rax, rdx
	mov	rbp, rbp
	shr	rax, 0x3f
	sar	rdx, 0xb
	add	rdx, rax
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x28], rdx
	mov	rbp, rbp
	add	rdi, -4
	mov	qword ptr [r13 + 0x30], rdi
	jmp	.label_147
.label_1150:
	mov	qword ptr [r13 + 8], 0
	mov	rsp, rsp
	mov	eax, dword ptr [r15 - 0x38]
	nop	
	mov	dword ptr [r13 + 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_92
.label_1149:
	mov	rsp, rsp
	mov	qword ptr [r13 + 8], 0
	mov	eax, dword ptr [r15]
	mov	dword ptr [r13 + 0x10], eax
	lea	rdi, [rdi]
	jmp	.label_92
.label_1158:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 - 0xa8]
	jmp	.label_185
.label_1155:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 - 0x68]
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x40], rax
	nop	
	mov	rax, qword ptr [r15 - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x38], rax
	nop	
	mov	rax, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	neg	rcx
	mov	rbp, rdx
	movabs	rdx, 0x8000000000000000
	cmp	rax, rdx
	mov	rdx, rbp
	mov	qword ptr [r13 + 0x28], rcx
	nop	
	mov	ebp, 1
	je	.label_90
.label_178:
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r13 + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_92
.label_1182:
	nop	
	xor	esi, esi
	mov	rbp, rbp
	mov	eax, 1
	mov	qword ptr [rsp + 0x70], rax
.label_102:
	xor	edx, edx
	xor	edi, edi
	xor	eax, eax
	mov	qword ptr [rsp + 0xa0], rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rax
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x53c], 0
	jmp	.label_92
.label_1176:
	mov	rax, qword ptr [r15 - 0x38]
.label_122:
	mov	qword ptr [rsp + 0x38], rax
	xor	esi, esi
.label_97:
	xor	edx, edx
	xor	edi, edi
	xor	eax, eax
	mov	qword ptr [rsp + 0xa0], rax
	jmp	.label_219
.label_248:
	mov	rbp, rbp
	test	al, al
	nop	
	je	.label_119
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rdi
	mov	rsp, rsp
	xor	edi, edi
	mov	qword ptr [rsp + 0x570], rsi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.11_0
	mov	qword ptr [rsp + 0x550], rdx
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x78], r8
	mov	dword ptr [rsp + 0x538], ebx
	mov	rbx, r10
	lea	rsi, [rsi]
	mov	rbp, r11
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsi, qword ptr [r15 - 0xd8]
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rcx
	call	dbg_printf
	mov	rdx, qword ptr [rsp + 0x550]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x570]
	mov	rdi, qword ptr [rsp + 0x48]
	nop	
	mov	r11, rbp
	mov	r10, rbx
	mov	ebx, dword ptr [rsp + 0x538]
	lea	r9, [rsp + 0x536]
	mov	r8, qword ptr [rsp + 0x78]
.label_119:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 - 0xd8]
.label_185:
	mov	qword ptr [r13 + 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [r15 - 0x68]
	mov	qword ptr [r13 + 0x40], rax
.label_210:
	mov	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [r15]
	movdqu	xmmword ptr [rcx], xmm0
	jmp	.label_92
.label_165:
	mov	rbp, rbp
	inc	qword ptr [r13 + 0xc8]
	xor	eax, eax
	cmp	rdi, 3
	lea	rsi, [rsi]
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	lea	rdi, [rdi]
	jge	.label_120
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x538], ebx
	jmp	.label_188
.label_137:
	inc	qword ptr [r13 + 0xc8]
	nop	
	xor	eax, eax
	cmp	rdi, 3
	pshufd	xmm0, xmm0, 0x4e
	mov	rsp, rsp
	movq	rcx, xmm0
	mov	rsp, rsp
	jl	.label_266
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	nop	
	imul	rdx
	lea	rdi, [rdi]
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	lea	rdi, [rdi]
	add	rdx, rax
	imul	rsi, rdx, 0x64
	mov	rsp, rsp
	mov	rax, rcx
	lea	rdi, [rdi]
	sub	rax, rsi
	mov	rcx, rdx
.label_266:
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x570]
	mov	rdx, qword ptr [rsp + 0x550]
.label_201:
	mov	qword ptr [r13 + 0x48], rcx
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0x50], rax
.label_177:
	mov	rbp, rbp
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0x98]
	movdqu	xmmword ptr [rax], xmm0
	mov	rsp, rsp
	mov	dword ptr [r13 + 0x1c], 2
	jmp	.label_92
.label_211:
	mov	rsp, rsp
	mov	rsi, qword ptr [r15 - 0x38]
.label_236:
	lea	rdi, [rdi]
	test	rsi, rsi
	nop	
	js	.label_110
	lea	rsi, [rsi]
	cmp	rdi, -1
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	je	.label_113
.label_221:
	lea	rsi, [rsi]
	cqo	
	idiv	rdi
	lea	rsi, [rsi]
	mov	ebp, 1
	cmp	rax, rsi
	jge	.label_113
	lea	rsi, [rsi]
	jmp	.label_90
.label_110:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	dec	rax
.label_215:
	mov	rsp, rsp
	cqo	
	lea	rsi, [rsi]
	idiv	rdi
	lea	rsi, [rsi]
	mov	ebp, 1
	cmp	rsi, rax
	nop	
	jl	.label_90
.label_113:
	lea	rdi, [rdi]
	imul	rdi, qword ptr [rcx]
.label_132:
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
.label_108:
	xor	eax, eax
	mov	qword ptr [rsp + 0xa0], rax
.label_118:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rax
.label_219:
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
	mov	dword ptr [rsp + 0x53c], 0
.label_92:
	lea	rsi, [rsi]
	mov	rax, r11
	neg	rax
	imul	rax, rax, 0x38
	lea	rdi, [rdi]
	add	r11, r11
	lea	rdi, [rdi]
	sub	r8, r11
	lea	rcx, [r15 + rax + 0x38]
	mov	qword ptr [r15 + rax + 0x38], rsi
	nop	
	mov	qword ptr [r15 + rax + 0x40], rdx
	mov	rsp, rsp
	mov	qword ptr [r15 + rax + 0x48], rdi
	mov	rdx, qword ptr [rsp + 0xa0]
	mov	qword ptr [r15 + rax + 0x50], rdx
	nop	
	mov	rdx, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [r15 + rax + 0x58], rdx
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	mov	qword ptr [r15 + rax + 0x60], rdx
	mov	edx, dword ptr [rsp + 0x53c]
	lea	rsi, [rsi]
	mov	dword ptr [r15 + rax + 0x68], edx
	mov	rsp, rsp
	mov	dword ptr [r15 + rax + 0x6c], ebx
	movzx	eax, byte ptr [r10 + yyr1]
	nop	
	movsx	esi, byte ptr [rax + label_151]
	nop	
	movsx	edx, word ptr [r8]
	add	esi, edx
	cmp	esi, 0x70
	ja	.label_152
	movsxd	rsi, esi
	movsx	edi, byte ptr [rsi + yycheck]
	lea	rsi, [rsi]
	cmp	edi, edx
	jne	.label_152
	movzx	eax, byte ptr [rsi + yytable]
	lea	rdi, [rdi]
	jmp	.label_179
	nop	
.label_152:
	mov	rsp, rsp
	movsx	eax, byte ptr [rax + label_181]
.label_179:
	mov	rbp, rbp
	mov	word ptr [r8 + 2], ax
	mov	rbp, rbp
	add	r8, 2
	mov	ebp, 2
	cmp	r9, r8
	lea	rsi, [rsi]
	mov	r15, rcx
	ja	.label_164
	jmp	.label_90
.label_130:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x570], rsi
	mov	qword ptr [rsp + 0x48], rdi
	movabs	rdx, 0xa3d70a3d70a3d70b
	nop	
	mov	rax, rcx
	mov	rsp, rsp
	imul	rdx
	lea	rsi, [rsi]
	add	rdx, rcx
	lea	rdi, [rdi]
	mov	rax, rdx
	mov	rsp, rsp
	shr	rax, 0x3f
	sar	rdx, 6
	lea	rdi, [rdi]
	add	rdx, rax
	imul	rax, rdx, 0x3c
	imul	rdx, rdx, 0x64
	sub	rcx, rdx
	add	rcx, rax
	mov	al, 1
	movabs	rdi, 0x8000000000000000
	jmp	.label_186
.label_260:
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rbp, rbp
	mov	rax, rdx
	mov	rsp, rsp
	shr	rax, 0x3f
	lea	rsi, [rsi]
	sar	rdx, 6
	mov	rsp, rsp
	add	rdx, rax
	imul	rax, rdx, 0x3c
	mov	rsp, rsp
	imul	rdx, rdx, 0x64
	lea	rsi, [rsi]
	sub	rcx, rdx
	add	rcx, rax
	mov	al, 1
	lea	rdi, [rdi]
	jmp	.label_202
.label_148:
	nop	
	movabs	rsi, 0xfdddddddddddddde
	cmp	rcx, rsi
	lea	rdi, [rdi]
	movabs	rdi, 0x8000000000000000
	lea	rsi, [rsi]
	jge	.label_218
.label_154:
	mov	sil, 1
	mov	rsp, rsp
	jmp	.label_158
.label_271:
	movabs	rsi, 0xfdddddddddddddde
	lea	rsi, [rsi]
	cmp	rcx, rsi
	movabs	rdi, 0x8000000000000000
	jge	.label_225
.label_261:
	mov	rsp, rsp
	mov	sil, 1
	mov	rbp, rbp
	jmp	.label_88
.label_120:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x538], ebx
	lea	rdi, [rdi]
	mov	rbp, rdx
	movabs	rdx, 0xa3d70a3d70a3d70b
	nop	
	mov	rax, rcx
	nop	
	imul	rdx
	add	rdx, rcx
	lea	rdi, [rdi]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	lea	rdi, [rdi]
	mov	rdi, rsi
	imul	rsi, rdx, 0x64
	nop	
	mov	rax, rcx
	lea	rdi, [rdi]
	sub	rax, rsi
	mov	rsi, rdi
	mov	rcx, rdx
	nop	
	mov	rdx, rbp
.label_188:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x550], rdx
	mov	qword ptr [rsp + 0x570], rsi
	nop	
	mov	qword ptr [rsp + 0x560], r11
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], r10
	mov	rbx, r8
	mov	qword ptr [r13 + 0x48], rcx
	mov	qword ptr [r13 + 0x50], rax
	pxor	xmm0, xmm0
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax], xmm0
	mov	dword ptr [r13 + 0x1c], 2
.label_167:
	mov	rax, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r15]
	movups	xmm1, xmmword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	movups	xmm2, xmmword ptr [r15 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	ebp, 1
	mov	rbp, rbp
	mov	esi, 1
	mov	rsp, rsp
	mov	rdi, r13
	call	apply_relative_time
	lea	rsi, [rsi]
	test	al, al
	mov	r8, rbx
	lea	rdi, [rdi]
	lea	r9, [rsp + 0x536]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x80]
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0x560]
	mov	ebx, dword ptr [rsp + 0x538]
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x570]
	mov	rdx, qword ptr [rsp + 0x550]
	lea	rdi, [rdi]
	jne	.label_92
	nop	
	jmp	.label_90
.label_218:
	mov	rsp, rsp
	xor	esi, esi
.label_158:
	mov	rbp, rbp
	imul	rcx, rcx, 0x3c
	test	dl, dl
	lea	rsi, [rsi]
	je	.label_100
	mov	rdx, rax
	xor	rdx, rdi
	lea	rsi, [rsi]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	setl	dl
	sub	rcx, rax
	lea	rdi, [rdi]
	jmp	.label_175
.label_100:
	lea	rdx, [rdi - 1]
	lea	rdi, [rdi]
	sub	rdx, rax
	lea	rdi, [rdi]
	cmp	rdx, rcx
	lea	rsi, [rsi]
	setl	dl
	add	rcx, rax
.label_175:
	lea	rdi, [rdi]
	or	dl, sil
	sete	al
.label_186:
	mov	ebp, 1
	nop	
	test	al, al
	je	.label_90
	lea	rax, [rcx + 0x5a0]
	lea	rsi, [rsi]
	cmp	rax, 0xb40
	mov	rsp, rsp
	ja	.label_90
	movabs	rsi, 0x3c00000000
	imul	eax, ecx, 0x3c
	mov	dword ptr [r13 + 0x18], eax
	mov	rsp, rsp
	mov	rdx, qword ptr [r15 - 0x70]
	mov	rsp, rsp
	test	rdx, rdx
	js	.label_125
	mov	rsp, rsp
	dec	rdi
	sub	rdi, rdx
	imul	rcx, rsi
	sar	rcx, 0x20
	mov	rsp, rsp
	cmp	rdi, rcx
	lea	rdi, [rdi]
	jge	.label_135
	jmp	.label_143
.label_125:
	nop	
	imul	rcx, rsi
	mov	rbp, rbp
	sar	rcx, 0x20
	mov	rsi, rdi
	sub	rsi, rdx
	cmp	rcx, rsi
	lea	rsi, [rsi]
	jl	.label_143
.label_135:
	nop	
	add	rcx, rdx
	sub	rcx, -0x80000000
	shr	rcx, 0x20
	lea	rsi, [rsi]
	jne	.label_143
	lea	rdi, [rdi]
	add	edx, eax
	mov	dword ptr [r13 + 0x18], edx
.label_147:
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x570]
	mov	rdx, qword ptr [rsp + 0x550]
	jmp	.label_92
.label_225:
	nop	
	xor	esi, esi
.label_88:
	mov	rsp, rsp
	imul	rcx, rcx, 0x3c
	test	dl, dl
	je	.label_254
	mov	rdx, rax
	xor	rdx, rdi
	nop	
	cmp	rcx, rdx
	lea	rdi, [rdi]
	setl	dl
	sub	rcx, rax
	jmp	.label_163
.label_254:
	nop	
	lea	rdx, [rdi - 1]
	mov	rsp, rsp
	sub	rdx, rax
	cmp	rdx, rcx
	lea	rsi, [rsi]
	setl	dl
	nop	
	add	rcx, rax
.label_163:
	mov	rsp, rsp
	or	dl, sil
	lea	rsi, [rsi]
	sete	al
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x570]
.label_202:
	mov	ebp, 1
	nop	
	test	al, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x550]
	je	.label_90
	lea	rax, [rcx + 0x5a0]
	lea	rdi, [rdi]
	cmp	rax, 0xb40
	mov	rbp, rbp
	ja	.label_90
	imul	eax, ecx, 0x3c
	mov	dword ptr [r13 + 0x18], eax
	nop	
	jmp	.label_92
.label_162:
	mov	rsp, rsp
	cmp	rdi, 2
	jg	.label_184
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + 0xc8]
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	jne	.label_184
	mov	dword ptr [rsp + 0x538], ebx
	mov	qword ptr [r13 + 0xc8], 1
	mov	rsp, rsp
	pshufd	xmm0, xmm0, 0x4e
	nop	
	movq	rcx, xmm0
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_188
.label_133:
	cmp	rdi, 2
	mov	rsp, rsp
	jg	.label_197
	mov	rax, qword ptr [r13 + 0xc8]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_197
	mov	qword ptr [r13 + 0xc8], 1
	lea	rdi, [rdi]
	pshufd	xmm0, xmm0, 0x4e
	mov	rbp, rbp
	movq	rcx, xmm0
	nop	
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x48]
	jmp	.label_201
.label_184:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x550], rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x570], rsi
	nop	
	mov	dword ptr [rsp + 0x538], ebx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x560], r11
	mov	qword ptr [rsp + 0x80], r10
	mov	rsp, rsp
	mov	rbx, r8
	mov	rsp, rsp
	mov	byte ptr [r13 + 0xd8], 1
	movdqu	xmmword ptr [r13 + 0x20], xmm0
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x30], rdi
	jmp	.label_167
.label_197:
	mov	rbp, rbp
	mov	byte ptr [r13 + 0xd8], 1
	mov	rbp, rbp
	movdqu	xmmword ptr [r13 + 0x20], xmm0
	nop	
	mov	qword ptr [r13 + 0x30], rdi
	mov	rdi, qword ptr [rsp + 0x48]
	jmp	.label_92
.label_153:
	mov	rbp, rbp
	mov	r14d, 0x3f
	cmp	byte ptr [r13 + 0xd9], 0
	lea	rsi, [rsi]
	je	.label_117
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.98
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rbp, rbp
	lea	rsi, [rsp + 0x50]
	nop	
	call	dbg_printf
	jmp	.label_117
	nop	word ptr [rax + rax]
.label_164:
	cmp	eax, 0xc
	jne	.label_246
	xor	ebp, ebp
.label_90:
	mov	rsp, rsp
	mov	eax, ebp
	nop	
	add	rsp, 0x588
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_143:
	add	edx, eax
	mov	dword ptr [r13 + 0x18], edx
	jmp	.label_90
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b70

	.globl debug_print_current_time
	.type debug_print_current_time, @function
debug_print_current_time:
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x70
	mov	r15, rsi
	nop	
	mov	rbx, rdi
	cmp	byte ptr [r15 + 0xd9], 0
	jne	.label_293
.label_277:
	lea	rsi, [rsi]
	add	rsp, 0x70
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	ret	
.label_293:
	xor	r12d, r12d
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.77
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rcx
	mov	rbp, rbp
	mov	rsi, rbx
	call	dbg_printf
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0xa8], 0
	je	.label_285
	cmp	byte ptr [r15 + 0xda], 0
	jne	.label_294
	mov	rdi, qword ptr [rip + stderr]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	mov	r8, qword ptr [r15 + 0x38]
	mov	r9, qword ptr [r15 + 0x40]
	lea	rdi, [rdi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.78
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xda], 1
	lea	rdi, [rdi]
	mov	r12b, 1
	jmp	.label_285
.label_294:
	lea	rdi, [rdi]
	xor	r12d, r12d
.label_285:
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0xd8]
	mov	rcx, rax
	shr	rcx, 0x38
	mov	rsp, rsp
	movzx	edx, al
	lea	rsi, [rsi]
	cmp	edx, ecx
	je	.label_287
	test	r12b, r12b
	je	.label_292
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rip + stderr]
	lea	rsi, [rsi]
	mov	edi, 0x20
	lea	rdi, [rdi]
	call	fputc
.label_292:
	mov	rbp, rbp
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.79
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	mov	esi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0xd8]
	mov	byte ptr [r15 + 0xdf], al
	mov	r12b, 1
.label_287:
	cmp	qword ptr [r15 + 0xc8], 0
	lea	rdi, [rdi]
	je	.label_289
	shr	rax, 0x28
	test	al, al
	mov	rbp, rbp
	jne	.label_289
	mov	r9, qword ptr [r15 + 0x58]
	mov	rdi, qword ptr [rip + stderr]
	xor	r12b, 1
	lea	rdi, [rdi]
	movzx	eax, r12b
	lea	rdx, qword ptr [rax + .str.80]
	mov	rcx, qword ptr [r15 + 0x48]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 0x50]
	mov	rbp, rbp
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	call	__fprintf_chk
	mov	rcx, qword ptr [r15 + 0x60]
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_284
	mov	rdi, qword ptr [rip + stderr]
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.81
	nop	
	xor	eax, eax
	call	__fprintf_chk
.label_284:
	cmp	dword ptr [r15 + 0x1c], 1
	mov	rsp, rsp
	jne	.label_290
	mov	rcx, qword ptr [rip + stderr]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.41_0
	mov	esi, 2
	mov	edx, 1
	lea	rdi, [rdi]
	call	fwrite
.label_290:
	mov	byte ptr [r15 + 0xdd], 1
	mov	r12b, 1
.label_289:
	cmp	qword ptr [r15 + 0xb0], 0
	je	.label_278
	mov	rbp, rbp
	cmp	byte ptr [r15 + 0xdb], 0
	jne	.label_278
	test	r12b, r12b
	lea	rsi, [rsi]
	je	.label_283
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rip + stderr]
	mov	rbp, rbp
	mov	edi, 0x20
	call	fputc
.label_283:
	mov	rsp, rsp
	mov	r14, qword ptr [rip + stderr]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.82
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsp]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	str_days
	mov	rsp, rsp
	mov	rcx, rax
	mov	r8, qword ptr [r15 + 8]
	mov	r9d, dword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rdx, rbx
	nop	
	call	__fprintf_chk
	mov	rsp, rsp
	mov	byte ptr [r15 + 0xdb], 1
	lea	rsi, [rsi]
	mov	r12b, 1
.label_278:
	cmp	qword ptr [r15 + 0xb8], 0
	je	.label_281
	cmp	byte ptr [r15 + 0xdc], 0
	jne	.label_281
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rip + stderr]
	xor	r12b, 1
	mov	rbp, rbp
	movzx	eax, r12b
	mov	rbp, rbp
	lea	rdx, qword ptr [rax + .str.83]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r15 + 0x14]
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:.str.84
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0xc0], 0
	jne	.label_288
	mov	r8d, OFFSET FLAT:.str_0
.label_288:
	lea	rdi, [rdi]
	mov	esi, 1
	xor	eax, eax
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xdc], 1
	mov	r12b, 1
.label_281:
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0xd0], 0
	lea	rsi, [rsi]
	je	.label_282
	nop	
	cmp	byte ptr [r15 + 0xde], 0
	jne	.label_282
	mov	r14, qword ptr [rip + stderr]
	xor	r12b, 1
	movsxd	r13, dword ptr [r15 + 0x18]
	mov	eax, r13d
	nop	
	shr	eax, 0x1f
	lea	rdi, [rdi]
	imul	rbx, r13, -0x6e5d4c3b
	mov	rbp, rbp
	shr	rbx, 0x20
	mov	rsp, rsp
	add	ebx, r13d
	lea	rsi, [rsi]
	mov	ecx, ebx
	mov	rsp, rsp
	shr	ecx, 0x1f
	lea	rsi, [rsi]
	sar	ebx, 0xb
	mov	rbp, rbp
	add	ebx, ecx
	mov	r9d, ebx
	lea	rsi, [rsi]
	neg	r9d
	cmp	r13, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	lea	rsi, [rsi]
	cmovg	r9d, ebx
	lea	rdi, [rsp]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:.str.233
	xor	eax, eax
	mov	rsp, rsp
	call	__sprintf_chk
	imul	edx, ebx, 0xe10
	mov	esi, r13d
	mov	rsp, rsp
	sub	esi, edx
	mov	ecx, esi
	lea	rdi, [rdi]
	neg	ecx
	cmovl	ecx, esi
	mov	rsp, rsp
	cmp	r13d, edx
	movzx	edx, r12b
	lea	rdx, qword ptr [rdx + .str.85]
	je	.label_286
	cdqe	
	lea	rsi, [rsi]
	lea	rax, [rsp + rax]
	movsxd	r9, ecx
	mov	rbp, rbp
	imul	rsi, r9, -0x77777777
	mov	rbp, rbp
	shr	rsi, 0x20
	add	esi, r9d
	lea	rdi, [rdi]
	mov	edi, esi
	shr	edi, 0x1f
	mov	rbp, rbp
	sar	esi, 5
	add	esi, edi
	imul	r8d, esi, 0x3c
	mov	rbp, rbp
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	mov	rbp, rbp
	shr	r10, 0x3f
	lea	rsi, [rsi]
	shr	rbx, 0x26
	lea	rdi, [rdi]
	movsxd	rsi, esi
	lea	rsi, [rsi]
	imul	rcx, rsi, 0x66666667
	lea	rdi, [rdi]
	mov	rdi, rcx
	nop	
	shr	rdi, 0x3f
	sar	rcx, 0x22
	add	ecx, edi
	mov	rsp, rsp
	add	ecx, ecx
	lea	rsi, [rsi]
	lea	ecx, [rcx + rcx*4]
	sub	esi, ecx
	add	esi, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], sil
	mov	rbp, rbp
	jne	.label_279
	lea	rsi, [rsi]
	add	rax, 3
	lea	rdi, [rdi]
	jmp	.label_291
.label_279:
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	nop	
	imul	rcx, rcx, 0x66666667
	mov	rsi, rcx
	nop	
	shr	rsi, 0x3f
	mov	rsp, rsp
	sar	rcx, 0x22
	lea	edi, [rcx + rsi]
	lea	ecx, [rcx + rsi + 0x30]
	nop	
	mov	byte ptr [rax + 4], cl
	mov	rsp, rsp
	add	edi, edi
	lea	ecx, [rdi + rdi*4]
	neg	ecx
	mov	rbp, rbp
	lea	ecx, [r9 + rcx + 0x30]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
.label_291:
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0
.label_286:
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	mov	esi, 1
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	call	__fprintf_chk
	mov	rbp, rbp
	mov	byte ptr [r15 + 0xde], 1
	mov	r12b, 1
.label_282:
	cmp	byte ptr [r15 + 0xa0], 0
	je	.label_276
	mov	r14, qword ptr [r15 + 0x58]
	mov	rsp, rsp
	test	r12b, r12b
	je	.label_280
	nop	
	mov	rsi, qword ptr [rip + stderr]
	lea	rsi, [rsi]
	mov	edi, 0x20
	call	fputc
.label_280:
	mov	rsp, rsp
	mov	rbx, qword ptr [rip + stderr]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.86
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rcx, r14
	call	__fprintf_chk
.label_276:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	call	fputc
	jmp	.label_277
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406120

	.globl debug_print_relative_time
	.type debug_print_relative_time, @function
debug_print_relative_time:
	nop	
	push	r14
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	cmp	byte ptr [r14 + 0xd9], 0
	je	.label_304
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.77
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	nop	
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	dbg_printf
	mov	rcx, qword ptr [r14 + 0x68]
	lea	rsi, [rsi]
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_308
	mov	rdi, qword ptr [rip + stderr]
	xor	ebx, ebx
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_310
	mov	r8d, OFFSET FLAT:.str.88
	lea	rsi, [rsi]
	xor	eax, eax
	call	__fprintf_chk
	mov	rcx, qword ptr [r14 + 0x70]
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	test	rcx, rcx
	lea	rsi, [rsi]
	jne	.label_305
	mov	rbp, rbp
	jmp	.label_299
.label_304:
	nop	
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	ret	
.label_308:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 0x70]
	mov	rbp, rbp
	mov	ebx, 1
	test	rcx, rcx
	je	.label_298
.label_305:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rip + stderr]
	mov	rbp, rbp
	lea	rdx, qword ptr [rbx + .str.95]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str.89
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	call	__fprintf_chk
	mov	rbp, rbp
	mov	al, 1
.label_299:
	nop	
	mov	rcx, qword ptr [r14 + 0x78]
	test	rcx, rcx
	je	.label_301
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	lea	rdi, [rdi]
	xor	rax, 1
	mov	rsp, rsp
	lea	rdx, qword ptr [rax + .str.95]
	mov	esi, 1
	nop	
	mov	r8d, OFFSET FLAT:.str.90
	xor	eax, eax
	call	__fprintf_chk
	lea	rdi, [rdi]
	mov	al, 1
.label_301:
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x80]
	test	rcx, rcx
	je	.label_300
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rsi, [rsi]
	lea	rdx, qword ptr [rax + .str.95]
	lea	rdi, [rdi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str.91
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	call	__fprintf_chk
	mov	rsp, rsp
	mov	al, 1
.label_300:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 0x88]
	mov	rsp, rsp
	test	rcx, rcx
	je	.label_295
	nop	
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + .str.95]
	nop	
	mov	esi, 1
	mov	r8d, OFFSET FLAT:.str.92
	xor	eax, eax
	call	__fprintf_chk
	mov	rbp, rbp
	mov	al, 1
.label_295:
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x90]
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_296
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdi, [rdi]
	lea	rdx, qword ptr [rax + .str.95]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:.str.93
	xor	eax, eax
	mov	rbp, rbp
	call	__fprintf_chk
	mov	al, 1
.label_296:
	movsxd	rcx, dword ptr [r14 + 0x98]
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_297
	nop	
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	lea	rsi, [rsi]
	xor	rax, 1
	lea	rdx, qword ptr [rax + .str.95]
	mov	rsp, rsp
	mov	esi, 1
	mov	r8d, OFFSET FLAT:.str.94
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	call	__fprintf_chk
.label_297:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	nop	
	jmp	fputc
.label_298:
	mov	rbp, rbp
	cmp	qword ptr [r14 + 0x78], 0
	je	.label_309
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_299
.label_309:
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 0x80], 0
	mov	rsp, rsp
	je	.label_302
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_299
.label_302:
	nop	
	cmp	qword ptr [r14 + 0x88], 0
	lea	rdi, [rdi]
	je	.label_307
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_299
.label_307:
	mov	rsp, rsp
	cmp	qword ptr [r14 + 0x90], 0
	je	.label_306
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_299
.label_306:
	cmp	dword ptr [r14 + 0x98], 0
	nop	
	je	.label_303
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_299
.label_303:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.87
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rip + stderr]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	mov	rbp, rbp
	jmp	fputs
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406430

	.globl apply_relative_time
	.type apply_relative_time, @function
apply_relative_time:
	lea	r8, [rsp + 8]
	nop	
	movabs	r10, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	edx, dword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	test	esi, esi
	js	.label_320
	mov	rbp, rbp
	test	edx, edx
	nop	
	js	.label_328
	mov	esi, 0x7fffffff
	sub	esi, edx
	nop	
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	cmp	esi, eax
	nop	
	jl	.label_331
	lea	rsi, [rsi]
	jmp	.label_338
.label_320:
	test	edx, edx
	mov	rsp, rsp
	js	.label_339
	mov	rsp, rsp
	lea	rcx, [rdi + 0x98]
	nop	
	mov	esi, dword ptr [rdi + 0x98]
	mov	eax, edx
	xor	eax, 0x80000000
	mov	rsp, rsp
	cmp	esi, eax
	jl	.label_342
	jmp	.label_345
.label_328:
	mov	rbp, rbp
	lea	rcx, [rdi + 0x98]
	nop	
	mov	eax, dword ptr [rdi + 0x98]
	lea	rsi, [rsi]
	mov	esi, 0x80000000
	nop	
	sub	esi, edx
	cmp	eax, esi
	lea	rsi, [rsi]
	jge	.label_338
.label_331:
	lea	rsi, [rsi]
	add	edx, eax
	mov	dword ptr [rcx], edx
	lea	rsi, [rsi]
	mov	r9d, 1
	nop	
	jmp	.label_354
.label_338:
	lea	rsi, [rsi]
	add	edx, eax
	mov	rbp, rbp
	mov	dword ptr [rcx], edx
	xor	r9d, r9d
.label_354:
	mov	rbp, rbp
	mov	rdx, qword ptr [r8 + 0x28]
	test	rdx, rdx
	js	.label_360
	mov	rsi, r10
	sub	rsi, rdx
	mov	rbp, rbp
	lea	rcx, [rdi + 0x90]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x90]
	cmp	rsi, rax
	lea	rdi, [rdi]
	jl	.label_365
	jmp	.label_315
.label_360:
	lea	rcx, [rdi + 0x90]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x90]
	lea	rsi, [r10 + 1]
	sub	rsi, rdx
	cmp	rax, rsi
	jge	.label_315
.label_365:
	add	rdx, rax
	mov	qword ptr [rcx], rdx
	mov	rbp, rbp
	mov	edx, 1
	jmp	.label_323
.label_315:
	add	rdx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rdx
	xor	edx, edx
.label_323:
	or	edx, r9d
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r8 + 0x20]
	mov	rsp, rsp
	test	rsi, rsi
	lea	rdi, [rdi]
	js	.label_329
	lea	rdi, [rdi]
	mov	rcx, r10
	sub	rcx, rsi
	lea	r9, [rdi + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x88]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_336
	lea	rdi, [rdi]
	jmp	.label_344
.label_329:
	lea	rdi, [rdi]
	lea	r9, [rdi + 0x88]
	mov	rax, qword ptr [rdi + 0x88]
	lea	rcx, [r10 + 1]
	lea	rdi, [rdi]
	sub	rcx, rsi
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_344
.label_336:
	nop	
	add	rsi, rax
	mov	qword ptr [r9], rsi
	mov	eax, 1
	jmp	.label_350
.label_344:
	add	rsi, rax
	nop	
	mov	qword ptr [r9], rsi
	xor	eax, eax
.label_350:
	mov	rsp, rsp
	or	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [r8 + 0x18]
	test	rsi, rsi
	lea	rsi, [rsi]
	js	.label_355
	mov	rcx, r10
	lea	rdi, [rdi]
	sub	rcx, rsi
	lea	r9, [rdi + 0x80]
	mov	rax, qword ptr [rdi + 0x80]
	cmp	rcx, rax
	jl	.label_359
	nop	
	jmp	.label_368
.label_355:
	mov	rbp, rbp
	lea	r9, [rdi + 0x80]
	nop	
	mov	rax, qword ptr [rdi + 0x80]
	lea	rcx, [r10 + 1]
	sub	rcx, rsi
	nop	
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_368
.label_359:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	nop	
	mov	eax, 1
	mov	rbp, rbp
	jmp	.label_317
.label_368:
	add	rsi, rax
	lea	rdi, [rdi]
	mov	qword ptr [r9], rsi
	xor	eax, eax
.label_317:
	nop	
	or	edx, eax
	mov	rsi, qword ptr [r8 + 0x10]
	test	rsi, rsi
	js	.label_337
	mov	rcx, r10
	mov	rbp, rbp
	sub	rcx, rsi
	lea	rsi, [rsi]
	lea	r9, [rdi + 0x78]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x78]
	cmp	rcx, rax
	jl	.label_351
	lea	rdi, [rdi]
	jmp	.label_334
.label_337:
	mov	rsp, rsp
	lea	r9, [rdi + 0x78]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x78]
	lea	rdi, [rdi]
	lea	rcx, [r10 + 1]
	sub	rcx, rsi
	cmp	rax, rcx
	jge	.label_334
.label_351:
	lea	rsi, [rsi]
	add	rsi, rax
	mov	qword ptr [r9], rsi
	mov	eax, 1
	jmp	.label_343
.label_334:
	add	rsi, rax
	lea	rdi, [rdi]
	mov	qword ptr [r9], rsi
	lea	rsi, [rsi]
	xor	eax, eax
.label_343:
	lea	rdi, [rdi]
	or	edx, eax
	nop	
	mov	rsi, qword ptr [r8 + 8]
	lea	rdi, [rdi]
	test	rsi, rsi
	js	.label_348
	mov	rbp, rbp
	mov	rcx, r10
	lea	rdi, [rdi]
	sub	rcx, rsi
	mov	rbp, rbp
	lea	r9, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	nop	
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_340
	lea	rsi, [rsi]
	jmp	.label_358
.label_348:
	mov	rbp, rbp
	lea	r9, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	lea	rcx, [r10 + 1]
	mov	rsp, rsp
	sub	rcx, rsi
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_358
.label_340:
	add	rsi, rax
	nop	
	mov	qword ptr [r9], rsi
	lea	rsi, [rsi]
	mov	eax, 1
	jmp	.label_366
.label_358:
	mov	rbp, rbp
	add	rsi, rax
	lea	rsi, [rsi]
	mov	qword ptr [r9], rsi
	lea	rsi, [rsi]
	xor	eax, eax
.label_366:
	nop	
	or	edx, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [r8]
	test	rcx, rcx
	nop	
	js	.label_316
	lea	rdi, [rdi]
	sub	r10, rcx
	lea	rsi, [rdi + 0x68]
	mov	rax, qword ptr [rdi + 0x68]
	cmp	r10, rax
	lea	rdi, [rdi]
	jl	.label_318
	mov	rsp, rsp
	jmp	.label_325
.label_316:
	lea	rsi, [rdi + 0x68]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x68]
	inc	r10
	sub	r10, rcx
	nop	
	cmp	rax, r10
	jge	.label_325
.label_318:
	mov	rsp, rsp
	add	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rsi], rcx
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	jmp	.label_332
.label_325:
	nop	
	add	rcx, rax
	mov	qword ptr [rsi], rcx
	xor	eax, eax
.label_332:
	or	edx, eax
	je	.label_330
	xor	eax, eax
	mov	rsp, rsp
	ret	
.label_339:
	lea	eax, [rdx + 0x7fffffff]
	lea	rcx, [rdi + 0x98]
	nop	
	mov	esi, dword ptr [rdi + 0x98]
	mov	rsp, rsp
	cmp	eax, esi
	mov	rsp, rsp
	jge	.label_345
.label_342:
	lea	rsi, [rsi]
	sub	esi, edx
	lea	rsi, [rsi]
	mov	dword ptr [rcx], esi
	mov	r9d, 1
	jmp	.label_312
.label_345:
	mov	rbp, rbp
	sub	esi, edx
	mov	dword ptr [rcx], esi
	xor	r9d, r9d
.label_312:
	mov	rdx, qword ptr [r8 + 0x28]
	mov	rbp, rbp
	test	rdx, rdx
	js	.label_353
	lea	rcx, [rdi + 0x90]
	mov	rsp, rsp
	mov	rsi, qword ptr [rdi + 0x90]
	lea	rax, [r10 + 1]
	lea	rsi, [rsi]
	xor	rax, rdx
	cmp	rsi, rax
	mov	rbp, rbp
	jl	.label_357
	mov	rbp, rbp
	jmp	.label_364
.label_353:
	lea	rax, [rdx + r10]
	lea	rcx, [rdi + 0x90]
	mov	rsi, qword ptr [rdi + 0x90]
	mov	rsp, rsp
	cmp	rax, rsi
	jge	.label_364
.label_357:
	sub	rsi, rdx
	mov	rbp, rbp
	mov	qword ptr [rcx], rsi
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rbp, rbp
	jmp	.label_313
.label_364:
	sub	rsi, rdx
	mov	rbp, rbp
	mov	qword ptr [rcx], rsi
	xor	edx, edx
.label_313:
	lea	rdi, [rdi]
	or	edx, r9d
	mov	rsi, qword ptr [r8 + 0x20]
	test	rsi, rsi
	js	.label_321
	lea	r9, [rdi + 0x88]
	mov	rcx, qword ptr [rdi + 0x88]
	lea	rax, [r10 + 1]
	xor	rax, rsi
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_326
	jmp	.label_333
.label_321:
	lea	rax, [rsi + r10]
	mov	rsp, rsp
	lea	r9, [rdi + 0x88]
	mov	rcx, qword ptr [rdi + 0x88]
	nop	
	cmp	rax, rcx
	nop	
	jge	.label_333
.label_326:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	mov	eax, 1
	jmp	.label_341
.label_333:
	lea	rsi, [rsi]
	sub	rcx, rsi
	mov	rbp, rbp
	mov	qword ptr [r9], rcx
	xor	eax, eax
.label_341:
	lea	rdi, [rdi]
	or	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [r8 + 0x18]
	test	rsi, rsi
	lea	rdi, [rdi]
	js	.label_346
	lea	r9, [rdi + 0x80]
	mov	rcx, qword ptr [rdi + 0x80]
	lea	rax, [r10 + 1]
	lea	rsi, [rsi]
	xor	rax, rsi
	lea	rsi, [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_349
	jmp	.label_356
.label_346:
	lea	rax, [rsi + r10]
	lea	rdi, [rdi]
	lea	r9, [rdi + 0x80]
	mov	rcx, qword ptr [rdi + 0x80]
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_356
.label_349:
	lea	rsi, [rsi]
	sub	rcx, rsi
	mov	rbp, rbp
	mov	qword ptr [r9], rcx
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	jmp	.label_363
.label_356:
	lea	rsi, [rsi]
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	lea	rsi, [rsi]
	xor	eax, eax
.label_363:
	lea	rsi, [rsi]
	or	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [r8 + 0x10]
	lea	rsi, [rsi]
	test	rsi, rsi
	mov	rbp, rbp
	js	.label_314
	lea	rdi, [rdi]
	lea	r9, [rdi + 0x78]
	nop	
	mov	rcx, qword ptr [rdi + 0x78]
	lea	rax, [r10 + 1]
	xor	rax, rsi
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_319
	jmp	.label_327
.label_314:
	nop	
	lea	rax, [rsi + r10]
	lea	rdi, [rdi]
	lea	r9, [rdi + 0x78]
	mov	rcx, qword ptr [rdi + 0x78]
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_327
.label_319:
	mov	rbp, rbp
	sub	rcx, rsi
	lea	rdi, [rdi]
	mov	qword ptr [r9], rcx
	mov	rbp, rbp
	mov	eax, 1
	jmp	.label_335
.label_327:
	mov	rsp, rsp
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	mov	rsp, rsp
	xor	eax, eax
.label_335:
	mov	rsp, rsp
	or	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r8 + 8]
	lea	rdi, [rdi]
	test	rsi, rsi
	lea	rdi, [rdi]
	js	.label_324
	nop	
	lea	r9, [rdi + 0x70]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 0x70]
	lea	rax, [r10 + 1]
	xor	rax, rsi
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_347
	jmp	.label_352
.label_324:
	lea	rdi, [rdi]
	lea	rax, [rsi + r10]
	lea	r9, [rdi + 0x70]
	mov	rcx, qword ptr [rdi + 0x70]
	cmp	rax, rcx
	jge	.label_352
.label_347:
	lea	rsi, [rsi]
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_361
.label_352:
	lea	rsi, [rsi]
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	xor	eax, eax
.label_361:
	or	edx, eax
	nop	
	mov	rcx, qword ptr [r8]
	test	rcx, rcx
	js	.label_362
	mov	rsp, rsp
	lea	r8, [rdi + 0x68]
	mov	rsi, qword ptr [rdi + 0x68]
	lea	rsi, [rsi]
	inc	r10
	xor	r10, rcx
	lea	rsi, [rsi]
	cmp	rsi, r10
	jl	.label_367
	mov	rbp, rbp
	jmp	.label_311
.label_362:
	mov	rbp, rbp
	add	r10, rcx
	mov	rbp, rbp
	lea	r8, [rdi + 0x68]
	mov	rsi, qword ptr [rdi + 0x68]
	mov	rbp, rbp
	cmp	r10, rsi
	jge	.label_311
.label_367:
	mov	rbp, rbp
	sub	rsi, rcx
	mov	rsp, rsp
	mov	qword ptr [r8], rsi
	mov	eax, 1
	jmp	.label_322
.label_311:
	nop	
	sub	rsi, rcx
	mov	qword ptr [r8], rsi
	lea	rdi, [rdi]
	xor	eax, eax
.label_322:
	mov	rbp, rbp
	or	edx, eax
	mov	rsp, rsp
	je	.label_330
	xor	eax, eax
	mov	rbp, rbp
	ret	
.label_330:
	mov	rbp, rbp
	mov	byte ptr [rdi + 0xa1], 1
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a80

	.globl dbg_printf
	.type dbg_printf, @function
dbg_printf:
	nop	
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0xd0
	mov	rsp, rsp
	mov	rbx, rdi
	lea	rsi, [rsi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_369
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x70], xmm2
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x80], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x90], xmm4
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_369:
	mov	qword ptr [rsp + 0x48], r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], r8
	nop	
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	nop	
	mov	qword ptr [rsp + 0x28], rsi
	mov	rcx, qword ptr [rip + stderr]
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.96
	mov	esi, 6
	mov	rsp, rsp
	mov	edx, 1
	lea	rsi, [rsi]
	call	fwrite
	nop	
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	dword ptr [rsp + 4], 0x30
	mov	rbp, rbp
	mov	dword ptr [rsp], 8
	mov	rdi, qword ptr [rip + stderr]
	mov	rsp, rsp
	lea	rcx, [rsp]
	mov	esi, 1
	mov	rdx, rbx
	call	__vfprintf_chk
	add	rsp, 0xd0
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406b80

	.globl parse_datetime
	.type parse_datetime, @function
parse_datetime:
	mov	rbp, rbp
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	nop	
	mov	r15, rsi
	mov	rsp, rsp
	mov	r12, rdi
	mov	edi, OFFSET FLAT:.str_5
	lea	rdi, [rdi]
	call	getenv
	lea	rsi, [rsi]
	mov	r13, rax
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsp, rsp
	call	tzalloc
	mov	rbx, rax
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_370
	xor	ecx, ecx
	mov	rdi, r12
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	r8, rbx
	nop	
	mov	r9, r13
	lea	rdi, [rdi]
	call	parse_datetime2
	mov	bpl, al
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	tzfree
	jmp	.label_371
.label_370:
	mov	rsp, rsp
	xor	ebp, ebp
.label_371:
	lea	rdi, [rdi]
	mov	al, bpl
	add	rsp, 8
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406c20

	.globl parse_datetime2
	.type parse_datetime2, @function
parse_datetime2:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x408
	mov	qword ptr [rsp + 0x168], r9
	nop	
	mov	r13, r8
	lea	rdi, [rdi]
	mov	r14d, ecx
	mov	r15, rdx
	mov	r12, rsi
	nop	
	mov	qword ptr [rsp + 0x170], rdi
	lea	rdi, [rdi]
	mov	rdi, r12
	call	strlen
	mov	qword ptr [rsp + 0x1b0], rax
	lea	rdi, [rdi]
	test	r15, r15
	nop	
	jne	.label_396
	mov	rsp, rsp
	lea	r15, [rsp + 0x258]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rbp, rbp
	call	gettime
.label_396:
	mov	rbp, rbp
	mov	rax, qword ptr [r15]
	mov	qword ptr [rsp + 0x268], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rsp + 0x278], rax
	mov	rsp, rsp
	movzx	eax, byte ptr [r12]
	lea	rsi, [rsi]
	add	eax, -9
	cmp	eax, 0x17
	mov	rbp, r12
	mov	rsp, rsp
	ja	.label_407
	mov	ecx, 0x80001f
	mov	rbp, r12
	nop	dword ptr [rax + rax]
.label_423:
	lea	rsi, [rsi]
	bt	ecx, eax
	jae	.label_407
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp + 1]
	inc	rbp
	nop	
	add	eax, -9
	nop	
	cmp	eax, 0x18
	jb	.label_423
.label_407:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 4
	mov	rdi, rbp
	call	strncmp
	test	eax, eax
	nop	
	jne	.label_429
	lea	rsi, [rsi]
	lea	rbx, [rbp + 4]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	rax, rbx
	lea	rdi, [rdi]
	jmp	.label_430
	nop	dword ptr [rax]
.label_443:
	inc	rax
	inc	rdi
.label_430:
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x5c
	lea	rsi, [rsi]
	je	.label_437
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_429
	movzx	ecx, cl
	lea	rdi, [rdi]
	cmp	ecx, 0x22
	jne	.label_443
	mov	rbp, rbp
	jmp	.label_524
	nop	word ptr cs:[rax + rax]
.label_437:
	movzx	ecx, byte ptr [rax + 1]
	lea	rdi, [rdi]
	inc	rax
	mov	rsp, rsp
	cmp	ecx, 0x22
	lea	rsi, [rsi]
	je	.label_443
	movzx	ecx, cl
	cmp	ecx, 0x5c
	mov	rbp, rbp
	je	.label_443
.label_429:
	xor	eax, eax
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbx, r13
.label_406:
	lea	rdx, [rsp + 0x68]
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, r15
	call	localtime_rz
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_457
	lea	rdi, [rdi]
	movabs	r15, 0x7fffffffffffffff
	mov	eax, OFFSET FLAT:.str.20_0
	mov	rsp, rsp
	cmp	byte ptr [rbp], 0
	lea	rsi, [rsi]
	je	.label_458
	mov	rbp, rbp
	mov	rax, rbp
.label_458:
	mov	qword ptr [rsp + 0x2e8], rax
	nop	
	and	r14b, 1
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x3c1], r14b
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rsp + 0x7c]
	lea	rsi, [rsi]
	add	rax, 0x76c
	mov	qword ptr [rsp + 0x310], rax
	mov	qword ptr [rsp + 0x318], 0
	movsxd	rax, dword ptr [rsp + 0x78]
	inc	rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x320], rax
	movsxd	rax, dword ptr [rsp + 0x74]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x328], rax
	nop	
	movsxd	rax, dword ptr [rsp + 0x70]
	mov	qword ptr [rsp + 0x330], rax
	movsxd	rax, dword ptr [rsp + 0x6c]
	nop	
	mov	qword ptr [rsp + 0x338], rax
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rsp + 0x68]
	mov	qword ptr [rsp + 0x340], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x278]
	lea	rdi, [rdi]
	cdqe	
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x348], rax
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x88]
	mov	dword ptr [rsp + 0x198], eax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x304], 2
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x37a], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x370], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x360], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x350], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x3b0], xmm0
	nop	
	movups	xmmword ptr [rsp + 0x3a0], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x390], xmm0
	nop	
	mov	byte ptr [rsp + 0x3c0], 0
	mov	byte ptr [rsp + 0x3c8], 0
	mov	word ptr [rsp + 0x3c6], 0
	mov	dword ptr [rsp + 0x3c2], 0
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x3d0], rcx
	mov	dword ptr [rsp + 0x3d8], 0x10d
	mov	dword ptr [rsp + 0x3dc], eax
	mov	qword ptr [rsp + 0x3e0], 0
	lea	rax, [r15 - 0x76a700]
	mov	rbp, qword ptr [rsp + 0x268]
	nop	
	cmp	rbp, rax
	mov	rbp, rbp
	jg	.label_382
	lea	rax, [rbp + 0x76a700]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x128], rax
	nop	
	lea	rsi, [rsp + 0x128]
	lea	rdx, [rsp + 0xb0]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_520
	mov	rax, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_520
	mov	ecx, dword ptr [rsp + 0xd0]
	lea	rsi, [rsi]
	cmp	ecx, dword ptr [rsp + 0x3dc]
	nop	
	jne	.label_377
.label_520:
	lea	rax, [r15 - 0xed4e00]
	mov	rbp, rbp
	cmp	rbp, rax
	jg	.label_382
	mov	rsp, rsp
	lea	rax, [rbp + 0xed4e00]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x128], rax
	lea	rsi, [rsp + 0x128]
	nop	
	lea	rdx, [rsp + 0xb0]
	mov	rdi, rbx
	mov	rbp, rbp
	call	localtime_rz
	test	rax, rax
	je	.label_534
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_534
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0xd0]
	mov	rbp, rbp
	cmp	ecx, dword ptr [rsp + 0x3dc]
	nop	
	jne	.label_377
.label_534:
	lea	rax, [r15 - 0x163f500]
	lea	rsi, [rsi]
	cmp	rbp, rax
	lea	rsi, [rsi]
	jg	.label_382
	mov	rbp, rbp
	add	rbp, 0x163f500
	mov	qword ptr [rsp + 0x128], rbp
	lea	rsi, [rsp + 0x128]
	lea	rdx, [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	localtime_rz
	test	rax, rax
	je	.label_382
	nop	
	mov	rax, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_382
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0xd0]
	cmp	ecx, dword ptr [rsp + 0x3dc]
	je	.label_382
.label_377:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x3e0], rax
	mov	dword ptr [rsp + 0x3e8], 0x10d
	mov	dword ptr [rsp + 0x3ec], ecx
	mov	qword ptr [rsp + 0x3f0], 0
.label_382:
	mov	rdi, qword ptr [rsp + 0x3d0]
	test	rdi, rdi
	je	.label_418
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x3e0]
	lea	rsi, [rsi]
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_418
	call	strcmp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_418
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x3dc], 0xffffffff
	mov	qword ptr [rsp + 0x3e0], 0
.label_418:
	lea	rdi, [rsp + 0x2e8]
	call	yyparse
	test	eax, eax
	mov	rsp, rsp
	mov	al, byte ptr [rsp + 0x3c1]
	mov	rbp, rbp
	je	.label_433
	mov	rsp, rsp
	test	al, al
	je	.label_438
	lea	rsi, [rsi]
	add	r12, qword ptr [rsp + 0x1b0]
	lea	rsi, [rsi]
	cmp	r12, qword ptr [rsp + 0x2e8]
	jbe	.label_440
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.23_0
	jmp	.label_448
.label_457:
	nop	
	xor	ebp, ebp
	jmp	.label_374
.label_433:
	test	al, al
	mov	r12, qword ptr [rsp + 0x170]
	jne	.label_451
.label_507:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x388], 0
	je	.label_453
	lea	rax, [rsp + 0x340]
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r12], xmm0
.label_503:
	mov	rdi, qword ptr [rsp + 0x168]
	mov	rsp, rsp
	mov	bpl, 1
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0x3c1], 0
	je	.label_374
	test	rdi, rdi
	je	.label_481
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.28
	mov	r14, rdi
	call	strcmp
	mov	r15, rbx
	xor	edi, edi
	test	eax, eax
	je	.label_464
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.72
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, r14
	nop	
	call	dbg_printf
	lea	rsi, [rsi]
	jmp	.label_469
.label_438:
	xor	ebp, ebp
	nop	
	jmp	.label_374
.label_524:
	xor	eax, eax
	mov	rbp, rbp
	cmp	rdi, 0x65
	lea	rdi, [rdi]
	jl	.label_472
	lea	rsi, [rsi]
	call	malloc
	nop	
	mov	rsi, rax
	xor	ebp, ebp
	mov	rbp, rbp
	test	rsi, rsi
	mov	edi, 0
	jne	.label_444
	nop	
	jmp	.label_479
.label_440:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.22_0
.label_448:
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [rsp + 0x2e8]
	mov	rbp, rbp
	xor	ebp, ebp
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	lea	rsi, [rsi]
	jmp	.label_374
.label_453:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x390]
	mov	rcx, qword ptr [rsp + 0x3b0]
	mov	rdx, rax
	nop	
	or	rdx, rcx
	or	rdx, qword ptr [rsp + 0x398]
	nop	
	or	rdx, qword ptr [rsp + 0x3a8]
	mov	rsi, qword ptr [rsp + 0x3b8]
	mov	rbp, rbp
	add	rsi, qword ptr [rsp + 0x3a0]
	mov	rsp, rsp
	or	rsi, rdx
	lea	rdi, [rdi]
	mov	r14b, byte ptr [rsp + 0x3c1]
	mov	rbp, rbp
	cmp	rsi, 2
	mov	rbp, rbp
	jl	.label_487
	mov	rsp, rsp
	test	r14b, r14b
	je	.label_501
	cmp	rcx, 2
	jl	.label_502
	mov	edi, OFFSET FLAT:.str.34
	xor	eax, eax
	lea	rdi, [rdi]
	call	dbg_printf
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x390]
.label_502:
	lea	rsi, [rsi]
	cmp	rax, 2
	jl	.label_505
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.35
	mov	rsp, rsp
	xor	eax, eax
	call	dbg_printf
.label_505:
	cmp	qword ptr [rsp + 0x398], 2
	jl	.label_508
	mov	edi, OFFSET FLAT:.str.36_0
	lea	rdi, [rdi]
	xor	eax, eax
	call	dbg_printf
.label_508:
	cmp	qword ptr [rsp + 0x3a8], 2
	jl	.label_515
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.37
	lea	rsi, [rsi]
	xor	eax, eax
	call	dbg_printf
.label_515:
	mov	rax, qword ptr [rsp + 0x3b8]
	nop	
	add	rax, qword ptr [rsp + 0x3a0]
	mov	rsp, rsp
	xor	ebp, ebp
	lea	rdi, [rdi]
	cmp	rax, 2
	jl	.label_374
	nop	
	mov	edi, OFFSET FLAT:.str.38_0
	nop	
	xor	eax, eax
	call	dbg_printf
	mov	rsp, rsp
	jmp	.label_374
.label_472:
	lea	rsi, [rsp + 0x1c0]
.label_444:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x22
	lea	rsi, [rsi]
	jne	.label_523
	mov	qword ptr [rsp + 0x1b8], r13
	mov	rbp, rbp
	mov	r13, rbx
	mov	rax, rsi
	jmp	.label_526
.label_523:
	mov	qword ptr [rsp + 0x1b8], r13
	nop	
	mov	rax, rsi
	nop	word ptr cs:[rax + rax]
.label_532:
	movzx	ecx, cl
	cmp	ecx, 0x5c
	sete	cl
	lea	rsi, [rsi]
	movzx	ecx, cl
	lea	rsi, [rsi]
	mov	dl, byte ptr [rbx + rcx]
	mov	rsp, rsp
	mov	byte ptr [rax], dl
	mov	rbp, rbp
	inc	rax
	mov	rsp, rsp
	lea	r13, [rbx + rcx + 1]
	movzx	ecx, byte ptr [rbx + rcx + 1]
	nop	
	cmp	ecx, 0x22
	mov	rbx, r13
	lea	rdi, [rdi]
	jne	.label_532
.label_526:
	mov	byte ptr [rax], 0
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x168], rsi
	lea	rdi, [rdi]
	call	tzalloc
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	test	rbx, rbx
	je	.label_388
	nop	
	inc	r13
	lea	rdi, [rdi]
	mov	eax, 0x80001f
	nop	word ptr cs:[rax + rax]
.label_402:
	mov	rbp, r13
	movzx	ecx, byte ptr [rbp]
	add	ecx, -9
	cmp	ecx, 0x17
	lea	rsi, [rsi]
	ja	.label_399
	lea	rdi, [rdi]
	lea	r13, [rbp + 1]
	bt	eax, ecx
	jb	.label_402
.label_399:
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x1b8]
	lea	rsi, [rsi]
	jmp	.label_406
.label_487:
	lea	rsi, [rsi]
	mov	r12, rbx
	mov	rbx, qword ptr [rsp + 0x310]
	test	rbx, rbx
	js	.label_413
	cmp	qword ptr [rsp + 0x318], 2
	lea	rsi, [rsi]
	jne	.label_417
	cmp	rbx, 0x45
	mov	rsp, rsp
	mov	eax, 0x7d0
	mov	ebp, 0x76c
	cmovl	rbp, rax
	mov	rsp, rsp
	add	rbp, rbx
	test	r14b, r14b
	je	.label_421
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.234
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, rcx
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, rbp
	call	dbg_printf
.label_421:
	test	rbp, rbp
	mov	rbp, rbp
	jns	.label_435
	lea	rdi, [rdi]
	jmp	.label_492
.label_388:
	xor	ebp, ebp
	jmp	.label_471
.label_481:
	mov	rsp, rsp
	mov	r15, rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	jmp	.label_441
.label_464:
	mov	esi, OFFSET FLAT:.str.71
.label_441:
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	xor	eax, eax
	nop	
	mov	rdi, rcx
	call	dbg_printf
.label_469:
	mov	r14, qword ptr [r12]
	lea	rdi, [rdi]
	mov	ebx, dword ptr [r12 + 8]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.73
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rcx
	mov	rsi, r14
	mov	edx, ebx
	mov	rbp, rbp
	call	dbg_printf
	nop	
	lea	rsi, [rsp + 0xb0]
	mov	rbp, rbp
	mov	rdi, r12
	lea	rdi, [rdi]
	call	gmtime_r
	mov	rsp, rsp
	test	rax, rax
	je	.label_460
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.74
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	r14, [rsp + 0x280]
	mov	rsp, rsp
	lea	rcx, [rsp + 0xb0]
	mov	esi, 0x64
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.254
	xor	r8d, r8d
	xor	r9d, r9d
	mov	rdi, r14
	call	nstrftime
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, r14
	call	dbg_printf
.label_460:
	lea	rdx, [rsp + 0x128]
	mov	rbx, r15
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	mov	rsi, r12
	lea	rsi, [rsi]
	call	localtime_rz
	test	rax, rax
	mov	rsp, rsp
	je	.label_374
	mov	r12, rbx
	movsxd	r15, dword ptr [rsp + 0x150]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.75
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	r14, rax
	mov	rsp, rsp
	lea	rdi, [rsp + 0x280]
	lea	rcx, [rsp + 0x128]
	mov	esi, 0x64
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.254
	xor	r8d, r8d
	lea	rsi, [rsi]
	xor	r9d, r9d
	call	nstrftime
	mov	eax, r15d
	mov	rsp, rsp
	shr	eax, 0x1f
	lea	rsi, [rsi]
	imul	rbx, r15, -0x6e5d4c3b
	shr	rbx, 0x20
	add	ebx, r15d
	lea	rdi, [rdi]
	mov	ecx, ebx
	shr	ecx, 0x1f
	nop	
	sar	ebx, 0xb
	add	ebx, ecx
	mov	rsp, rsp
	mov	r9d, ebx
	mov	rbp, rbp
	neg	r9d
	mov	rsp, rsp
	cmp	r15, -0xe10
	mov	rbp, rbp
	lea	r8d, [rax + rax + 0x2b]
	mov	rbp, rbp
	cmovg	r9d, ebx
	mov	rbp, rbp
	lea	rdi, [rsp + 0x230]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, 0x1b
	nop	
	mov	ecx, OFFSET FLAT:.str.233
	lea	rsi, [rsi]
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebx, 0xe10
	mov	esi, r15d
	mov	rsp, rsp
	sub	esi, edx
	lea	rdi, [rdi]
	mov	ecx, esi
	nop	
	neg	ecx
	cmovl	ecx, esi
	cmp	r15d, edx
	mov	rbp, rbp
	je	.label_504
	cdqe	
	mov	rsp, rsp
	lea	rax, [rsp + rax + 0x230]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	mov	rsp, rsp
	add	edx, r9d
	mov	esi, edx
	lea	rdi, [rdi]
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	mov	rbp, rbp
	imul	r8d, edx, 0x3c
	imul	rdi, r9, 0x1b4e81b5
	mov	rbp, rbp
	mov	rbx, rdi
	shr	rbx, 0x3f
	shr	rdi, 0x26
	movsxd	rdx, edx
	nop	
	imul	rsi, rdx, 0x66666667
	mov	rcx, rsi
	shr	rcx, 0x3f
	sar	rsi, 0x22
	add	esi, ecx
	add	esi, esi
	nop	
	lea	ecx, [rsi + rsi*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rdi + rbx + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	lea	rsi, [rsi]
	je	.label_509
	mov	byte ptr [rax + 3], 0x3a
	nop	
	movsxd	rcx, r9d
	lea	rdi, [rdi]
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	lea	rdi, [rdi]
	sar	rcx, 0x22
	lea	esi, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	nop	
	add	esi, esi
	mov	rbp, rbp
	lea	ecx, [rsi + rsi*4]
	mov	rbp, rbp
	neg	ecx
	mov	rsp, rsp
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_525
.label_501:
	nop	
	xor	ebp, ebp
	jmp	.label_374
.label_413:
	mov	rbp, rbp
	mov	rbp, rbx
.label_492:
	lea	rdx, [rbp + r15]
	mov	ecx, 0x7ffff894
	nop	
	mov	eax, 0xfffff894
	sub	eax, ebp
	cmp	rdx, -0x76c
	mov	rbx, r12
	mov	rbp, rbp
	jl	.label_387
	sub	rcx, rbp
	shr	rcx, 0x20
	je	.label_385
	nop	
	jmp	.label_387
.label_451:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24_0
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	dbg_printf
	cmp	byte ptr [rsp + 0x388], 0
	lea	rdi, [rdi]
	jne	.label_400
	nop	
	cmp	qword ptr [rsp + 0x3b8], 0
	jne	.label_511
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x168]
	test	rax, rax
	jne	.label_408
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.31
	jmp	.label_414
.label_417:
	lea	rdi, [rdi]
	mov	rbp, rbx
.label_435:
	lea	rcx, [rbp + 0x7ffff894]
	lea	eax, [rbp - 0x76c]
	nop	
	shr	rcx, 0x20
	mov	rsp, rsp
	mov	rbx, r12
	je	.label_385
.label_387:
	nop	
	mov	dword ptr [rsp + 0x18c], eax
	test	r14b, r14b
	lea	rsi, [rsi]
	je	.label_393
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.235
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rsp, rsp
	call	dbg_printf
	lea	rsi, [rsi]
	jmp	.label_393
.label_385:
	mov	dword ptr [rsp + 0x18c], eax
	mov	rax, qword ptr [rsp + 0x320]
	lea	ecx, [rax - 1]
	nop	
	cmp	rax, -0x7fffffff
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x188], ecx
	lea	rdi, [rdi]
	jl	.label_393
	mov	rsp, rsp
	dec	rax
	mov	rbp, rbp
	cmp	rax, 0x7fffffff
	jg	.label_393
	mov	rsp, rsp
	mov	r12d, 0x80000000
	mov	rax, qword ptr [rsp + 0x328]
	nop	
	mov	dword ptr [rsp + 0x184], eax
	mov	rbp, rbp
	sub	rax, -0x80000000
	shr	rax, 0x20
	mov	rbp, rbp
	je	.label_452
.label_393:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x3c1], 0
	je	.label_456
	xor	ebp, ebp
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.39_0
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	dbg_printf
	jmp	.label_374
.label_456:
	nop	
	xor	ebp, ebp
	mov	rsp, rsp
	jmp	.label_374
.label_509:
	nop	
	add	rax, 3
.label_525:
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
.label_504:
	lea	rsi, [rsp + 0x280]
	lea	rdx, [rsp + 0x230]
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsp, rsp
	call	dbg_printf
	mov	rbp, rbp
	mov	rbx, r12
.label_374:
	nop	
	cmp	rbx, r13
	je	.label_471
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	tzfree
.label_471:
	mov	rdi, qword ptr [rsp + 0xa0]
.label_479:
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	mov	al, bpl
	lea	rdi, [rdi]
	add	rsp, 0x408
	mov	rbp, rbp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_400:
	lea	rdi, [rdi]
	mov	rbp, rbx
	mov	rbp, rbp
	mov	rbx, qword ptr [rip + stderr]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25_0
	jmp	.label_414
.label_452:
	mov	rax, qword ptr [rsp + 0x3b0]
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_483
	cmp	byte ptr [rsp + 0x389], 0
	lea	rdi, [rdi]
	je	.label_489
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x398]
	lea	rsi, [rsi]
	or	rcx, qword ptr [rsp + 0x390]
	jne	.label_489
.label_483:
	mov	rdx, qword ptr [rsp + 0x330]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x304]
	test	ecx, ecx
	lea	rdi, [rdi]
	je	.label_491
	cmp	ecx, 1
	jne	.label_497
	lea	rsi, [rsi]
	lea	rdi, [rdx - 1]
	mov	rbp, rbp
	lea	rbp, [rdx + 0xc]
	mov	rsp, rsp
	cmp	rdx, 0xc
	mov	rsi, -1
	cmove	rsi, rdx
	cmp	rdi, 0xb
	cmovb	rsi, rbp
	jmp	.label_454
.label_511:
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26_0
.label_414:
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
.label_379:
	nop	
	mov	rdx, rcx
	nop	
	call	__fprintf_chk
.label_449:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x3b8]
	cmp	qword ptr [rsp + 0x3a0], 0
	nop	
	mov	rbx, rbp
	je	.label_514
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_514
	cmp	dword ptr [rsp + 0x2fc], 0
	mov	rbp, rbp
	jle	.label_401
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rip + stderr]
	mov	rsp, rsp
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.32
	nop	
	xor	eax, eax
	call	__fprintf_chk
	mov	rax, qword ptr [rsp + 0x3b8]
.label_514:
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_401
	lea	rsi, [rsi]
	mov	r12, rbx
	mov	r14, qword ptr [rip + stderr]
	mov	rsp, rsp
	movsxd	rbx, dword ptr [rsp + 0x300]
	mov	rsp, rsp
	mov	eax, ebx
	shr	eax, 0x1f
	mov	rbp, rbp
	imul	rbp, rbx, -0x6e5d4c3b
	lea	rsi, [rsi]
	shr	rbp, 0x20
	mov	rsp, rsp
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	lea	rdi, [rdi]
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	lea	rsi, [rsi]
	cmovg	r9d, ebp
	lea	rdi, [rsp + 0x230]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:.str.233
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	call	__sprintf_chk
	imul	edx, ebp, 0xe10
	lea	rdi, [rdi]
	mov	esi, ebx
	mov	rbp, rbp
	sub	esi, edx
	mov	rsp, rsp
	mov	ecx, esi
	neg	ecx
	lea	rdi, [rdi]
	cmovl	ecx, esi
	mov	rbp, rbp
	cmp	ebx, edx
	lea	rdi, [rdi]
	je	.label_384
	mov	rsp, rsp
	cdqe	
	lea	rdi, [rdi]
	lea	rax, [rsp + rax + 0x230]
	nop	
	movsxd	rcx, ecx
	imul	rdx, rcx, -0x77777777
	shr	rdx, 0x20
	lea	rdi, [rdi]
	add	edx, ecx
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	imul	r8d, edx, 0x3c
	imul	rdi, rcx, 0x1b4e81b5
	mov	rbp, rdi
	mov	rbp, rbp
	shr	rbp, 0x3f
	lea	rdi, [rdi]
	shr	rdi, 0x26
	lea	rdi, [rdi]
	movsxd	rdx, edx
	imul	rbx, rdx, 0x66666667
	mov	rsi, rbx
	lea	rdi, [rdi]
	shr	rsi, 0x3f
	sar	rbx, 0x22
	add	ebx, esi
	nop	
	add	ebx, ebx
	mov	rbp, rbp
	lea	esi, [rbx + rbx*4]
	sub	edx, esi
	lea	rdi, [rdi]
	add	edx, 0x30
	mov	rbp, rbp
	sub	ecx, r8d
	mov	rbp, rbp
	mov	byte ptr [rax], 0x3a
	lea	esi, [rdi + rbp + 0x30]
	mov	byte ptr [rax + 1], sil
	mov	byte ptr [rax + 2], dl
	jne	.label_394
	mov	rbp, rbp
	add	rax, 3
	jmp	.label_427
.label_408:
	nop	
	cmp	rbx, r13
	mov	rbp, rbp
	jne	.label_428
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.28
	mov	rbp, rbp
	mov	rdi, rax
	mov	r14, rax
	lea	rdi, [rdi]
	call	strcmp
	nop	
	mov	rcx, qword ptr [rip + stderr]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x268], rcx
	mov	rsp, rsp
	mov	rbp, rbx
	mov	rbp, rbp
	xor	edi, edi
	test	eax, eax
	jne	.label_436
	nop	
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x268]
	lea	rdi, [rdi]
	jmp	.label_379
.label_491:
	lea	rdi, [rdx - 1]
	xor	ebp, ebp
	mov	rbp, rbp
	cmp	rdx, 0xc
	mov	rbp, rbp
	mov	rsi, -1
	lea	rsi, [rsi]
	cmove	rsi, rbp
	mov	rsp, rsp
	cmp	rdi, 0xb
	cmovb	rsi, rdx
	nop	
	jmp	.label_454
.label_497:
	nop	
	cmp	rdx, 0x18
	mov	rsi, -1
	cmovb	rsi, rdx
.label_454:
	mov	dword ptr [rsp + 0x180], esi
	mov	rsp, rsp
	test	esi, esi
	lea	rsi, [rsi]
	js	.label_459
	nop	
	mov	ecx, dword ptr [rsp + 0x338]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x17c], ecx
	mov	ecx, dword ptr [rsp + 0x340]
	mov	dword ptr [rsp + 0x178], ecx
	nop	
	cmp	byte ptr [rsp + 0x3c1], 0
	je	.label_425
	mov	rsp, rsp
	mov	r14, rbx
	lea	rdi, [rdi]
	xor	edi, edi
	test	rax, rax
	je	.label_468
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.44
	mov	rsp, rsp
	jmp	.label_470
.label_459:
	cmp	byte ptr [rsp + 0x3c1], 0
	je	.label_416
	cmp	ecx, 1
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.41_0
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_0
	nop	
	cmove	rdx, rax
	test	ecx, ecx
	mov	rbp, rbp
	mov	r14, rbx
	mov	ebx, OFFSET FLAT:.str.40_0
	lea	rdi, [rdi]
	cmovne	rbx, rdx
	nop	
	xor	ebp, ebp
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [rsp + 0x330]
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rdi, rcx
	mov	rdx, rbx
	nop	
	mov	rbx, r14
	call	dbg_printf
	jmp	.label_374
.label_394:
	mov	rbp, rbp
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	imul	rdx, rdx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	lea	rdi, [rdi]
	sar	rdx, 0x22
	lea	edi, [rdx + rsi]
	lea	rdi, [rdi]
	lea	edx, [rdx + rsi + 0x30]
	mov	byte ptr [rax + 4], dl
	add	edi, edi
	lea	edx, [rdi + rdi*4]
	neg	edx
	lea	ecx, [rcx + rdx + 0x30]
	mov	rbp, rbp
	mov	byte ptr [rax + 5], cl
	add	rax, 6
.label_427:
	mov	byte ptr [rax], 0
.label_384:
	lea	rcx, [rsp + 0x230]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.33
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	__fprintf_chk
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x170]
.label_401:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rip + stderr]
	mov	rsp, rsp
	mov	edi, 0xa
	call	fputc
	jmp	.label_507
.label_489:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x178], 0
	mov	dword ptr [rsp + 0x17c], 0
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x180], 0
	mov	qword ptr [rsp + 0x348], 0
	cmp	byte ptr [rsp + 0x3c1], 0
	lea	rdi, [rdi]
	je	.label_425
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.46
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	call	dbg_printf
	jmp	.label_425
.label_428:
	lea	rdi, [rdi]
	mov	rbp, rbx
	mov	r14, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27_0
	mov	edx, 5
	mov	rbx, rax
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, r14
	nop	
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rcx, rbx
	lea	rdi, [rdi]
	call	__fprintf_chk
	jmp	.label_449
.label_468:
	nop	
	mov	esi, OFFSET FLAT:.str.45
.label_470:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	mov	rbp, rbp
	mov	r9d, dword ptr [rsp + 0x180]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x178]
	mov	ecx, dword ptr [rsp + 0x17c]
	nop	
	mov	dword ptr [rsp + 8], eax
	mov	dword ptr [rsp], ecx
	lea	rbp, [rsp + 0x280]
	mov	esi, 0x64
	mov	edx, 1
	mov	rsp, rsp
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:.str.236
	xor	eax, eax
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	__snprintf_chk
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, rbp
	call	dbg_printf
	mov	rbx, r14
.label_425:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x398]
	mov	rsp, rsp
	or	rax, qword ptr [rsp + 0x390]
	or	rax, qword ptr [rsp + 0x3b0]
	mov	rsp, rsp
	je	.label_389
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x198], 0xffffffff
.label_389:
	cmp	qword ptr [rsp + 0x3a0], 0
	je	.label_496
	nop	
	mov	eax, dword ptr [rsp + 0x2fc]
	mov	dword ptr [rsp + 0x198], eax
	mov	rbp, rbp
	jmp	.label_512
.label_496:
	mov	eax, dword ptr [rsp + 0x198]
.label_512:
	mov	qword ptr [rsp + 0x1b8], r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x178]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x30], ecx
	nop	
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x34], ecx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x180]
	mov	dword ptr [rsp + 0x38], ecx
	mov	rbp, rbp
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x3c], ecx
	mov	rcx, qword ptr [rsp + 0x188]
	mov	dword ptr [rsp + 0x40], ecx
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x44], ecx
	mov	dword ptr [rsp + 0x50], eax
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x190], 0xffffffff
	lea	rsi, [rsp + 0x178]
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x268], rbx
	mov	rbp, rbp
	call	mktime_z
	mov	rbp, rbp
	mov	r14, rax
	cmp	dword ptr [rsp + 0x190], 0
	js	.label_434
	mov	rax, qword ptr [rsp + 0x178]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x180]
	nop	
	xor	rax, qword ptr [rsp + 0x30]
	xor	rcx, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	edx, ecx
	mov	rbp, rbp
	or	edx, eax
	shr	rax, 0x20
	lea	rdi, [rdi]
	or	edx, eax
	lea	rsi, [rsi]
	shr	rcx, 0x20
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x188]
	mov	rbp, rbp
	xor	rax, qword ptr [rsp + 0x40]
	mov	esi, eax
	or	esi, ecx
	mov	rbp, rbp
	or	esi, edx
	shr	rax, 0x20
	mov	rbp, rbp
	or	eax, esi
	je	.label_439
.label_434:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x3b8]
	mov	qword ptr [rsp + 0x278], rax
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_395
	mov	byte ptr [rsp + 0xb2], 0x58
	mov	rbp, rbp
	mov	word ptr [rsp + 0xb0], 0x5858
	lea	rdi, [rdi]
	movsxd	rbx, dword ptr [rsp + 0x300]
	mov	eax, ebx
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	lea	rdi, [rdi]
	shr	rbp, 0x20
	lea	rsi, [rsi]
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	lea	rsi, [rsi]
	sar	ebp, 0xb
	add	ebp, ecx
	lea	rdi, [rdi]
	mov	r9d, ebp
	lea	rsi, [rsi]
	neg	r9d
	nop	
	cmp	rbx, -0xe10
	nop	
	lea	rdi, [rsp + 0xb3]
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, 0x1b
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.233
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	call	__sprintf_chk
	imul	ecx, ebp, 0xe10
	mov	rsp, rsp
	mov	esi, ebx
	lea	rdi, [rdi]
	sub	esi, ecx
	nop	
	mov	edx, esi
	lea	rsi, [rsi]
	neg	edx
	mov	rbp, rbp
	cmovl	edx, esi
	cmp	ebx, ecx
	mov	rbp, rbp
	je	.label_477
	lea	rdi, [rdi]
	cdqe	
	lea	rcx, [rsp + rax + 0xb3]
	lea	rsi, [rsi]
	movsxd	rax, edx
	imul	rdx, rax, -0x77777777
	mov	rsp, rsp
	shr	rdx, 0x20
	nop	
	add	edx, eax
	lea	rsi, [rsi]
	mov	esi, edx
	shr	esi, 0x1f
	mov	rbp, rbp
	sar	edx, 5
	add	edx, esi
	lea	rdi, [rdi]
	imul	r8d, edx, 0x3c
	mov	rsp, rsp
	imul	rdi, rax, 0x1b4e81b5
	mov	rbp, rdi
	shr	rbp, 0x3f
	lea	rsi, [rsi]
	shr	rdi, 0x26
	movsxd	rdx, edx
	imul	rbx, rdx, 0x66666667
	mov	rsi, rbx
	lea	rdi, [rdi]
	shr	rsi, 0x3f
	nop	
	sar	rbx, 0x22
	nop	
	add	ebx, esi
	lea	rdi, [rdi]
	add	ebx, ebx
	mov	rsp, rsp
	lea	esi, [rbx + rbx*4]
	mov	rbp, rbp
	sub	edx, esi
	add	edx, 0x30
	mov	rbp, rbp
	sub	eax, r8d
	mov	rsp, rsp
	mov	byte ptr [rcx], 0x3a
	lea	esi, [rdi + rbp + 0x30]
	nop	
	mov	byte ptr [rcx + 1], sil
	mov	byte ptr [rcx + 2], dl
	lea	rcx, [rcx + 3]
	je	.label_480
	mov	byte ptr [rcx], 0x3a
	movsxd	rdx, eax
	imul	rdx, rdx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	nop	
	sar	rdx, 0x22
	lea	edi, [rdx + rsi]
	mov	rsp, rsp
	lea	edx, [rdx + rsi + 0x30]
	mov	byte ptr [rcx + 1], dl
	add	edi, edi
	nop	
	lea	edx, [rdi + rdi*4]
	mov	rsp, rsp
	neg	edx
	lea	eax, [rax + rdx + 0x30]
	mov	rbp, rbp
	mov	byte ptr [rcx + 2], al
	lea	rsi, [rsi]
	add	rcx, 3
.label_480:
	nop	
	mov	byte ptr [rcx], 0
.label_477:
	lea	rdi, [rsp + 0xb0]
	call	tzalloc
	mov	r13, rax
	test	r13, r13
	mov	rbx, qword ptr [rsp + 0x268]
	je	.label_516
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x178], eax
	shr	rax, 0x20
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x17c], eax
	mov	rax, qword ptr [rsp + 0x38]
	mov	dword ptr [rsp + 0x180], eax
	shr	rax, 0x20
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x184], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	mov	dword ptr [rsp + 0x188], eax
	shr	rax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x18c], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x50]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x198], eax
	mov	dword ptr [rsp + 0x190], 0xffffffff
	lea	rsi, [rsp + 0x178]
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	call	mktime_z
	lea	rdi, [rdi]
	mov	r14, rax
	cmp	dword ptr [rsp + 0x190], 0
	lea	rsi, [rsi]
	js	.label_521
	nop	
	mov	rax, qword ptr [rsp + 0x178]
	mov	rcx, qword ptr [rsp + 0x180]
	xor	rax, qword ptr [rsp + 0x30]
	xor	rcx, qword ptr [rsp + 0x38]
	nop	
	mov	edx, ecx
	nop	
	or	edx, eax
	mov	rbp, rbp
	shr	rax, 0x20
	mov	rbp, rbp
	or	edx, eax
	shr	rcx, 0x20
	mov	rbx, qword ptr [rsp + 0x188]
	xor	rbx, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	ebp, ebx
	mov	rbp, rbp
	or	ebp, ecx
	mov	rbp, rbp
	or	ebp, edx
	mov	rbp, rbp
	shr	rbx, 0x20
	mov	rdi, r13
	call	tzfree
	nop	
	or	ebx, ebp
	mov	rsp, rsp
	jne	.label_395
.label_439:
	cmp	qword ptr [rsp + 0x398], 0
	mov	r13, qword ptr [rsp + 0x1b8]
	je	.label_403
	mov	rax, qword ptr [rsp + 0x390]
	nop	
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_403
	mov	rcx, qword ptr [rsp + 0x2f0]
	mov	rbp, rbp
	test	rcx, rcx
	jle	.label_409
	nop	
	mov	eax, dword ptr [rsp + 0x190]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rsp + 0x2f8]
	mov	rsp, rsp
	setne	al
	mov	rsp, rsp
	jmp	.label_415
.label_516:
	cmp	byte ptr [rsp + 0x3c1], 0
	je	.label_422
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.47
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsp + 0xb0]
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_422:
	xor	ebp, ebp
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x1b8]
	jmp	.label_374
.label_416:
	xor	ebp, ebp
	jmp	.label_374
.label_436:
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x268]
	mov	rdx, rcx
	nop	
	mov	rcx, r14
	mov	rsp, rsp
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_449
.label_521:
	nop	
	mov	rdi, r13
	nop	
	call	tzfree
.label_395:
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x38]
	nop	
	mov	qword ptr [rsp + 0x168], rsi
	mov	r11, qword ptr [rsp + 0x178]
	mov	rdi, qword ptr [rsp + 0x180]
	mov	qword ptr [rsp + 0x1b0], rdi
	lea	rdi, [rdi]
	cmp	r9d, r11d
	sete	r14b
	mov	rax, r9
	mov	rbp, rbp
	shr	rax, 0x20
	mov	qword ptr [rsp + 0x170], rax
	mov	rcx, r11
	mov	rbp, rbp
	shr	rcx, 0x20
	nop	
	mov	qword ptr [rsp + 0x160], rcx
	nop	
	cmp	eax, ecx
	nop	
	sete	al
	nop	
	mov	rcx, rsi
	shr	rcx, 0x20
	lea	rsi, [rsi]
	mov	r15, rdi
	lea	rdi, [rdi]
	shr	r15, 0x20
	cmp	ecx, r15d
	sete	byte ptr [rsp + 0x22f]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rbx, qword ptr [rsp + 0x188]
	cmp	ebp, ebx
	nop	
	sete	dl
	mov	r13, rbp
	shr	r13, 0x20
	mov	rsp, rsp
	mov	r12, rbx
	shr	r12, 0x20
	cmp	r13d, r12d
	mov	rbp, rbp
	sete	r10b
	lea	rdi, [rdi]
	cmp	esi, edi
	setne	r8b
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x3c1], 0
	je	.label_450
	and	dl, r10b
	and	r14b, r8b
	and	al, r14b
	lea	rsi, [rsi]
	and	al, byte ptr [rsp + 0x22f]
	and	al, dl
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x22f], al
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.237
	lea	rdi, [rdi]
	mov	edx, 5
	mov	qword ptr [rsp + 0x120], rbp
	lea	rdi, [rdi]
	mov	r14, rcx
	mov	qword ptr [rsp + 0xa8], r9
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x270], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x400], r11
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.238
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x30]
	nop	
	lea	rsi, [rsp + 0x2e8]
	lea	rdi, [rdi]
	lea	rbp, [rsp + 0xb0]
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	debug_strfdatetime
	mov	rcx, rax
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	nop	
	mov	rsi, rcx
	call	dbg_printf
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.239
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x178]
	nop	
	lea	rsi, [rsp + 0x2e8]
	mov	rsp, rsp
	mov	rdx, rbp
	nop	
	call	debug_strfdatetime
	mov	rcx, rax
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsi, rcx
	mov	rbp, rbp
	call	dbg_printf
	lea	rsi, [rsi]
	cmp	r13d, r12d
	mov	r8d, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	mov	r9d, OFFSET FLAT:.str.241
	lea	rsi, [rsi]
	cmove	r9, r8
	nop	
	mov	r12, qword ptr [rsp + 0x120]
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x270]
	mov	rbp, rbp
	cmp	r12d, r13d
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.242
	mov	edx, OFFSET FLAT:.str.242
	lea	rdi, [rdi]
	cmove	rdx, r8
	cmp	r14d, r15d
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.242
	cmove	rsi, r8
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x168]
	mov	rbp, qword ptr [rsp + 0x1b0]
	nop	
	cmp	edi, ebp
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.242
	cmove	rdi, r8
	mov	rbp, qword ptr [rsp + 0x170]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x160]
	cmp	ebp, ebx
	mov	rbp, rbp
	mov	ebp, OFFSET FLAT:.str.242
	lea	rdi, [rdi]
	cmove	rbp, r8
	mov	rbx, qword ptr [rsp + 0xa8]
	nop	
	mov	rax, qword ptr [rsp + 0x400]
	lea	rdi, [rdi]
	cmp	ebx, eax
	mov	rbp, rbp
	cmove	rcx, r8
	mov	qword ptr [rsp + 0x20], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rbp
	nop	
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rdx
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:.str.240
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	lea	rdi, [rsp + 0xb0]
	nop	
	call	__snprintf_chk
	test	eax, eax
	mov	rbx, r12
	mov	rbp, r13
	nop	
	js	.label_392
	nop	
	cmp	eax, 0x63
	mov	rbp, rbp
	mov	ecx, 0x63
	mov	rsp, rsp
	cmovb	ecx, eax
	inc	ecx
	not	eax
	nop	
	cmp	eax, -0x64
	mov	edx, 0xffffff9c
	nop	
	cmova	edx, eax
	nop	
	mov	eax, 0xfffffffe
	mov	rsp, rsp
	sub	eax, edx
	mov	rbp, rbp
	cdqe	
	lea	rdi, [rdi]
	lea	rdx, [rsp + rax + 0xb0]
.label_530:
	mov	rbp, rbp
	mov	rax, rcx
	cmp	rax, 2
	nop	
	jl	.label_522
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	movzx	esi, byte ptr [rdx]
	dec	rdx
	cmp	esi, 0x20
	lea	rdi, [rdi]
	je	.label_530
.label_522:
	dec	rax
	mov	rbp, rbp
	cdqe	
	mov	rsp, rsp
	mov	byte ptr [rsp + rax + 0xb0], 0
.label_392:
	mov	rsp, rsp
	lea	rsi, [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.243
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	call	dbg_printf
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.244
	mov	rsp, rsp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	cmp	byte ptr [rsp + 0x22f], 0
	je	.label_485
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.245
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsp, rsp
	call	dbg_printf
.label_485:
	nop	
	cmp	r14d, r15d
	lea	rdi, [rdi]
	je	.label_446
	lea	rdi, [rdi]
	cmp	ebx, ebp
	lea	rsi, [rsi]
	je	.label_446
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.246
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	dbg_printf
.label_446:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.247
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	dbg_printf
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x278], 0
	nop	
	je	.label_373
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.249
	lea	rsi, [rsi]
	jmp	.label_463
.label_373:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.250
.label_463:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.248
	xor	eax, eax
	mov	rsi, rcx
	call	dbg_printf
.label_450:
	nop	
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x1b8]
	mov	rbx, qword ptr [rsp + 0x268]
	jmp	.label_374
.label_409:
	mov	rsp, rsp
	xor	eax, eax
.label_415:
	movzx	eax, al
	cmp	rcx, rax
	nop	
	jge	.label_473
	mov	rbp, rbp
	test	rcx, rcx
	nop	
	jle	.label_474
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x190]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rsp + 0x2f8]
	setne	al
	jmp	.label_476
.label_473:
	test	rcx, rcx
	jle	.label_478
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x190]
	cmp	eax, dword ptr [rsp + 0x2f8]
	nop	
	setne	al
	jmp	.label_465
.label_474:
	xor	eax, eax
.label_476:
	movzx	eax, al
	nop	
	mov	rdx, rcx
	lea	rsi, [rsi]
	sub	rdx, rax
	nop	
	movabs	rax, 0xedb6db6db6db6db7
	cmp	rdx, rax
	jge	.label_484
	jmp	.label_486
.label_478:
	xor	eax, eax
.label_465:
	movzx	eax, al
	mov	rdx, rcx
	sub	rdx, rax
	mov	rsp, rsp
	movabs	rax, 0x1249249249249249
	mov	rbp, rbp
	cmp	rdx, rax
	jg	.label_486
.label_484:
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_490
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x190]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rsp + 0x2f8]
	lea	rdi, [rdi]
	setne	al
	jmp	.label_493
.label_490:
	xor	eax, eax
.label_493:
	movzx	eax, al
	mov	rsp, rsp
	sub	rcx, rax
	lea	rax, [rcx*8]
	sub	rax, rcx
	mov	rsp, rsp
	js	.label_498
	mov	rsp, rsp
	mov	rsi, r15
	sub	rsi, rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x2f8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rsp + 0x190]
	lea	rdi, [rdi]
	lea	edi, [rcx + 7]
	sub	edi, edx
	lea	rdi, [rdi]
	movsxd	rdi, edi
	imul	rbp, rdi, -0x6db6db6d
	shr	rbp, 0x20
	add	ebp, edi
	lea	rsi, [rsi]
	mov	ebx, ebp
	shr	ebx, 0x1f
	nop	
	sar	ebp, 2
	add	ebp, ebx
	lea	ebx, [rbp*8]
	sub	ebx, ebp
	sub	edi, ebx
	movsxd	rdi, edi
	jmp	.label_410
.label_498:
	mov	ecx, dword ptr [rsp + 0x2f8]
	mov	edx, dword ptr [rsp + 0x190]
	lea	esi, [rcx + 7]
	mov	rsp, rsp
	sub	esi, edx
	nop	
	movsxd	rsi, esi
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	mov	rbp, rbp
	add	edi, esi
	mov	ebp, edi
	lea	rdi, [rdi]
	shr	ebp, 0x1f
	mov	rsp, rsp
	sar	edi, 2
	add	edi, ebp
	lea	ebp, [rdi*8]
	mov	rsp, rsp
	sub	ebp, edi
	mov	rsp, rsp
	sub	esi, ebp
	mov	rbp, rbp
	movsxd	rsi, esi
	lea	rdi, [r15 + 1]
	nop	
	sub	rdi, rax
.label_410:
	cmp	rsi, rdi
	jl	.label_486
	lea	rsi, [rsi]
	add	ecx, 7
	lea	rsi, [rsi]
	sub	ecx, edx
	movsxd	rcx, ecx
	lea	rsi, [rsi]
	imul	rdx, rcx, -0x6db6db6d
	shr	rdx, 0x20
	lea	rdi, [rdi]
	add	edx, ecx
	mov	esi, edx
	mov	rbp, rbp
	shr	esi, 0x1f
	lea	rsi, [rsi]
	sar	edx, 2
	add	edx, esi
	lea	esi, [rdx*8]
	sub	esi, edx
	lea	rsi, [rsi]
	sub	ecx, esi
	nop	
	movsxd	rcx, ecx
	mov	rbp, rbp
	add	rcx, rax
	movsxd	rax, dword ptr [rsp + 0x184]
	nop	
	test	rax, rax
	js	.label_467
	mov	rbp, rbp
	mov	rdx, r15
	sub	rdx, rax
	mov	rbp, rbp
	cmp	rdx, rcx
	jl	.label_372
	jmp	.label_376
.label_467:
	lea	rdx, [r15 + 1]
	lea	rsi, [rsi]
	sub	rdx, rax
	cmp	rcx, rdx
	nop	
	jl	.label_372
.label_376:
	nop	
	lea	rdx, [rcx + r12]
	add	rdx, rax
	shr	rdx, 0x20
	je	.label_380
.label_372:
	mov	rbp, rbp
	add	ecx, eax
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x184], ecx
.label_486:
	cmp	byte ptr [rsp + 0x3c1], 0
	jne	.label_386
	jmp	.label_391
.label_380:
	mov	rsp, rsp
	add	ecx, eax
	mov	dword ptr [rsp + 0x184], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x198], 0xffffffff
	lea	rsi, [rsp + 0x178]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x268]
	mov	rbp, rbp
	call	mktime_z
	lea	rdi, [rdi]
	mov	r14, rax
	mov	rsp, rsp
	mov	al, byte ptr [rsp + 0x3c1]
	mov	rbp, rbp
	cmp	r14, -1
	je	.label_405
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	je	.label_403
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.49
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x278], rax
	lea	rbp, [rsp + 0x2e8]
	lea	rsi, [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	str_days
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x178]
	lea	rdx, [rsp + 0x280]
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	debug_strfdatetime
	nop	
	mov	rcx, rax
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x278]
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rdx, rcx
	call	dbg_printf
.label_403:
	cmp	byte ptr [rsp + 0x3c1], 0
	je	.label_442
	mov	rax, qword ptr [rsp + 0x390]
	mov	rcx, qword ptr [rsp + 0x398]
	mov	rsp, rsp
	mov	rdx, rcx
	lea	rsi, [rsi]
	or	rdx, rax
	lea	rsi, [rsi]
	jne	.label_447
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	qword ptr [rsp + 0x1b8], r13
	nop	
	mov	r13, rax
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rsp + 0x18c]
	mov	rsp, rsp
	cmp	rax, -0x76d
	setg	cl
	nop	
	movzx	ecx, cl
	mov	rbp, rbp
	lea	rcx, qword ptr [rcx + .str.257]
	nop	
	imul	rdx, rax, 0x51eb851f
	lea	rsi, [rsi]
	mov	rsi, rdx
	nop	
	shr	rsi, 0x3f
	sar	rdx, 0x25
	lea	edi, [rdx + rsi]
	nop	
	lea	edx, [rdx + rsi + 0x13]
	mov	r8d, 0xffffffed
	mov	rbp, rbp
	sub	r8d, edi
	test	edx, edx
	cmovns	r8d, edx
	mov	rbp, rbp
	imul	edx, edi, 0x64
	sub	eax, edx
	mov	r9d, eax
	nop	
	neg	r9d
	cmovl	r9d, eax
	lea	rbx, [rsp + 0x128]
	nop	
	mov	esi, 1
	mov	edx, 0xd
	xor	eax, eax
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	__sprintf_chk
	mov	eax, dword ptr [rsp + 0x184]
	mov	ecx, dword ptr [rsp + 0x188]
	inc	ecx
	mov	dword ptr [rsp + 8], eax
	mov	dword ptr [rsp], ecx
	lea	rbp, [rsp + 0x280]
	mov	rbp, rbp
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:.str.256
	xor	eax, eax
	mov	rdi, rbp
	nop	
	mov	r9, rbx
	mov	rbp, rbp
	call	__snprintf_chk
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	r13, qword ptr [rsp + 0x1b8]
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	dbg_printf
	mov	rax, qword ptr [rsp + 0x390]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x398]
.label_447:
	test	rcx, rcx
	je	.label_488
	test	rax, rax
	je	.label_488
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x2e8]
	lea	rsi, [rsp + 0xb0]
	call	str_days
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	nop	
	call	dbg_printf
.label_488:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x178]
	mov	rbp, rbp
	lea	rsi, [rsp + 0x2e8]
	lea	rdx, [rsp + 0x280]
	lea	rdi, [rdi]
	call	debug_strfdatetime
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	dbg_printf
.label_442:
	mov	rcx, qword ptr [rsp + 0x358]
	mov	rax, qword ptr [rsp + 0x360]
	mov	rsp, rsp
	or	rcx, qword ptr [rsp + 0x350]
	mov	rbp, rbp
	mov	rdx, rcx
	nop	
	or	rdx, rax
	mov	rsp, rsp
	je	.label_510
	mov	rbp, rbp
	mov	rbp, r13
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x3c1], 0
	lea	rdi, [rdi]
	je	.label_517
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_519
	cmp	dword ptr [rsp + 0x184], 0xf
	nop	
	je	.label_519
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	nop	
	mov	rax, qword ptr [rsp + 0x360]
.label_519:
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_517
	cmp	dword ptr [rsp + 0x180], 0xc
	nop	
	je	.label_517
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.54
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_517:
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x350]
	nop	
	test	r13, r13
	js	.label_533
	mov	rcx, r15
	lea	rsi, [rsi]
	sub	rcx, r13
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rsp + 0x18c]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_375
	jmp	.label_383
.label_533:
	movsxd	rax, dword ptr [rsp + 0x18c]
	lea	rdi, [rdi]
	lea	rcx, [r15 + 1]
	mov	rbp, rbp
	sub	rcx, r13
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_375
.label_383:
	nop	
	movsxd	rcx, eax
	lea	rdi, [rdi]
	lea	rdx, [r13 + r12]
	add	rdx, rcx
	shr	rdx, 0x20
	lea	rsi, [rsi]
	jne	.label_375
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x358]
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rsi, [rsi]
	js	.label_398
	mov	rdx, r15
	sub	rdx, rbx
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rsp + 0x188]
	lea	rdi, [rdi]
	cmp	rdx, rcx
	jl	.label_375
	mov	rbp, rbp
	jmp	.label_412
.label_398:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0x188]
	lea	rsi, [rsi]
	lea	rdx, [r15 + 1]
	sub	rdx, rbx
	cmp	rcx, rdx
	jl	.label_375
.label_412:
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	lea	rsi, [rbx + r12]
	lea	rsi, [rsi]
	add	rsi, rdx
	shr	rsi, 0x20
	mov	rsp, rsp
	jne	.label_375
	nop	
	mov	rdi, qword ptr [rsp + 0x360]
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	rbp, rbp
	js	.label_426
	mov	rsp, rsp
	mov	rsi, r15
	mov	rsp, rsp
	sub	rsi, rdi
	movsxd	rdx, dword ptr [rsp + 0x184]
	cmp	rsi, rdx
	nop	
	jl	.label_375
	jmp	.label_432
.label_405:
	lea	rdi, [rdi]
	test	al, al
	je	.label_391
.label_386:
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.48
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	qword ptr [rsp + 0x278], rax
	lea	r15, [rsp + 0x2e8]
	lea	rsi, [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	str_days
	lea	rsi, [rsi]
	mov	r12, rax
	mov	r14, r13
	nop	
	mov	r13, qword ptr [rsp + 0x2f0]
	mov	ebx, dword ptr [rsp + 0x2f8]
	lea	rdi, [rsp + 0x178]
	lea	rdx, [rsp + 0x280]
	mov	rsi, r15
	call	debug_strfdatetime
	mov	rbp, rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x278]
	mov	rsp, rsp
	mov	rsi, r12
	mov	rsp, rsp
	mov	rdx, r13
	mov	r13, r14
	lea	rsi, [rsi]
	mov	ecx, ebx
	mov	rbp, rbp
	mov	r8, rbp
	mov	rbp, rbp
	call	dbg_printf
	jmp	.label_391
.label_426:
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rsp + 0x184]
	nop	
	lea	rsi, [r15 + 1]
	nop	
	sub	rsi, rdi
	cmp	rdx, rsi
	jl	.label_375
.label_432:
	movsxd	rsi, edx
	lea	rdi, [rdi]
	add	r12, rdi
	mov	rsp, rsp
	add	r12, rsi
	mov	rbp, rbp
	shr	r12, 0x20
	je	.label_518
.label_375:
	cmp	byte ptr [rsp + 0x3c1], 0
	mov	rbp, rbp
	mov	r13, rbp
	je	.label_391
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, OFFSET FLAT:.str.56_0
	mov	edx, 0x877
	xor	eax, eax
	mov	rdi, rcx
	mov	rsp, rsp
	call	dbg_printf
	jmp	.label_391
.label_518:
	add	r13d, eax
	nop	
	add	ebx, ecx
	add	edi, edx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x278], rdi
	mov	dword ptr [rsp + 0x18c], r13d
	mov	dword ptr [rsp + 0x188], ebx
	mov	dword ptr [rsp + 0x184], edi
	mov	eax, dword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x180], eax
	mov	eax, dword ptr [rsp + 0x34]
	mov	dword ptr [rsp + 0x17c], eax
	mov	eax, dword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x178], eax
	mov	eax, dword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x198], eax
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x178]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x268]
	mov	rbp, rbp
	call	mktime_z
	mov	r14, rax
	cmp	r14, -1
	mov	al, byte ptr [rsp + 0x3c1]
	je	.label_495
	mov	rbp, rbp
	test	al, al
	mov	rbp, rbp
	je	.label_499
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.58_0
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x350]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x358]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x360]
	xor	eax, eax
	call	dbg_printf
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.59_0
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r12, rax
	nop	
	lea	rdi, [rsp + 0x178]
	mov	rsp, rsp
	lea	rsi, [rsp + 0x2e8]
	lea	rdx, [rsp + 0x280]
	call	debug_strfdatetime
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	dbg_printf
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x50]
	cmp	eax, -1
	mov	rbp, rbp
	je	.label_455
	nop	
	cmp	dword ptr [rsp + 0x198], eax
	je	.label_455
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60_0
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_455:
	cmp	qword ptr [rsp + 0x360], 0
	jne	.label_499
	nop	
	mov	rax, qword ptr [rsp + 0x278]
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0x184], eax
	nop	
	jne	.label_527
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x358], 0
	jne	.label_499
	cmp	dword ptr [rsp + 0x188], ebx
	je	.label_499
.label_527:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x1b0], rax
	cmp	r13d, 0xfffff893
	setg	al
	movzx	eax, al
	lea	rsi, [rsi]
	lea	rcx, qword ptr [rax + .str.257]
	mov	rsp, rsp
	movsxd	rax, r13d
	imul	rax, rax, 0x51eb851f
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	shr	rdx, 0x3f
	sar	rax, 0x25
	lea	esi, [rax + rdx]
	lea	rsi, [rsi]
	lea	eax, [rax + rdx + 0x13]
	mov	r12d, 0xffffffed
	mov	rsp, rsp
	mov	r8d, 0xffffffed
	lea	rdi, [rdi]
	sub	r8d, esi
	test	eax, eax
	mov	rbp, rbp
	cmovns	r8d, eax
	imul	eax, esi, 0x64
	lea	rdi, [rdi]
	sub	r13d, eax
	mov	r9d, r13d
	lea	rsi, [rsi]
	neg	r9d
	nop	
	cmovl	r9d, r13d
	lea	r13, [rsp + 0x128]
	lea	rdi, [rdi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, 0xd
	xor	eax, eax
	nop	
	mov	rdi, r13
	call	__sprintf_chk
	lea	rdi, [rdi]
	inc	ebx
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x1b0]
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	edx, ebx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x278]
	lea	rsi, [rsi]
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsp, rsp
	movsxd	rax, dword ptr [rsp + 0x18c]
	mov	rsp, rsp
	cmp	rax, -0x76d
	setg	cl
	mov	rsp, rsp
	movzx	ecx, cl
	mov	rbp, rbp
	lea	rcx, qword ptr [rcx + .str.257]
	imul	rdx, rax, 0x51eb851f
	lea	rdi, [rdi]
	mov	rsi, rdx
	mov	rsp, rsp
	shr	rsi, 0x3f
	mov	rbp, rbp
	sar	rdx, 0x25
	lea	edi, [rdx + rsi]
	lea	rsi, [rsi]
	lea	edx, [rdx + rsi + 0x13]
	lea	rdi, [rdi]
	sub	r12d, edi
	test	edx, edx
	mov	rsp, rsp
	cmovns	r12d, edx
	imul	edx, edi, 0x64
	mov	rsp, rsp
	sub	eax, edx
	nop	
	mov	r9d, eax
	neg	r9d
	mov	rsp, rsp
	cmovl	r9d, eax
	mov	esi, 1
	mov	edx, 0xd
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	r8d, r12d
	call	__sprintf_chk
	mov	rbp, rbp
	mov	ecx, dword ptr [rsp + 0x184]
	mov	edx, dword ptr [rsp + 0x188]
	inc	edx
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rbp, rbp
	call	dbg_printf
.label_499:
	nop	
	mov	r13, rbp
.label_510:
	cmp	qword ptr [rsp + 0x3b8], 0
	je	.label_513
	nop	
	movsxd	rax, dword ptr [rsp + 0x300]
	mov	rdx, qword ptr [rsp + 0x1a0]
	lea	rdi, [rdi]
	test	rdx, rdx
	js	.label_466
	lea	rsi, [r15 + 1]
	xor	rsi, rdx
	nop	
	mov	ecx, 1
	cmp	rax, rsi
	jl	.label_462
	jmp	.label_529
.label_466:
	lea	rsi, [rdx + r15]
	mov	ecx, 1
	cmp	rsi, rax
	lea	rsi, [rsi]
	jl	.label_462
.label_529:
	xor	ecx, ecx
.label_462:
	nop	
	sub	rax, rdx
	js	.label_475
	lea	rsi, [r15 + 1]
	nop	
	xor	rsi, rax
	mov	edx, 1
	mov	rbp, rbp
	cmp	r14, rsi
	jl	.label_445
	mov	rbp, rbp
	jmp	.label_461
.label_475:
	nop	
	lea	rsi, [rax + r15]
	nop	
	mov	edx, 1
	cmp	rsi, r14
	lea	rdi, [rdi]
	jl	.label_445
.label_461:
	xor	edx, edx
.label_445:
	mov	rsp, rsp
	or	edx, ecx
	lea	rdi, [rdi]
	je	.label_482
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x3c1], 0
	je	.label_391
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, dword ptr [rsp + 0x300]
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	dbg_printf
	jmp	.label_391
.label_482:
	mov	rbp, rbp
	sub	r14, rax
.label_513:
	cmp	byte ptr [rsp + 0x3c1], 0
	je	.label_494
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rbp, rbp
	lea	rdi, [rsp + 0x178]
	lea	rsi, [rsp + 0x2e8]
	lea	rdx, [rsp + 0x280]
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rdx, r14
	nop	
	call	dbg_printf
.label_494:
	movsxd	rdi, dword ptr [rsp + 0x380]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x348]
	nop	
	add	rsi, rdi
	lea	rdi, [rdi]
	movabs	rbp, 0x112e0be826d694b3
	lea	rsi, [rsi]
	mov	rax, rsi
	mov	rbp, rbp
	imul	rbp
	mov	rbp, rbp
	mov	rax, rdx
	lea	rdi, [rdi]
	shr	rax, 0x3f
	mov	rbp, rbp
	sar	rdx, 0x1a
	nop	
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	mov	rcx, rsi
	mov	rsp, rsp
	sub	rcx, rax
	mov	rsp, rsp
	add	rcx, 0x3b9aca00
	nop	
	mov	rax, rcx
	mov	rbp, rbp
	imul	rbp
	mov	rbp, rbp
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	mov	rbp, rbp
	add	rdx, rax
	mov	rsp, rsp
	imul	rax, rdx, 0x3b9aca00
	sub	rcx, rax
	mov	rbp, rbp
	sub	rsi, rcx
	mov	rax, rsi
	imul	rbp
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x368]
	mov	rbp, rbp
	test	rax, rax
	js	.label_506
	movabs	rsi, 0x91a2b3c4d5e6f
	cmp	rax, rsi
	jg	.label_378
	jmp	.label_528
.label_506:
	mov	rsp, rsp
	movabs	rsi, 0xfff6e5d4c3b2a191
	cmp	rax, rsi
	jl	.label_378
.label_528:
	imul	rbx, rax, 0xe10
	test	rbx, rbx
	mov	rsp, rsp
	js	.label_531
	lea	rdi, [rdi]
	mov	rsi, r15
	sub	rsi, rbx
	cmp	rsi, r14
	lea	rsi, [rsi]
	jl	.label_378
	jmp	.label_500
.label_531:
	lea	rsi, [r15 + 1]
	sub	rsi, rbx
	cmp	r14, rsi
	jl	.label_378
.label_500:
	mov	rsi, qword ptr [rsp + 0x370]
	mov	rbp, rbp
	test	rsi, rsi
	mov	rbp, rbp
	js	.label_381
	movabs	rbp, 0x222222222222222
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jg	.label_378
	jmp	.label_390
.label_381:
	lea	rsi, [rsi]
	movabs	rbp, 0xfdddddddddddddde
	cmp	rsi, rbp
	lea	rsi, [rsi]
	jl	.label_378
.label_390:
	add	rbx, r14
	imul	r14, rsi, 0x3c
	test	r14, r14
	lea	rsi, [rsi]
	js	.label_397
	nop	
	mov	rbp, r15
	sub	rbp, r14
	cmp	rbp, rbx
	jl	.label_378
	nop	
	jmp	.label_404
.label_397:
	nop	
	lea	rbp, [r15 + 1]
	sub	rbp, r14
	cmp	rbx, rbp
	nop	
	jl	.label_378
.label_404:
	add	r14, rbx
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x378]
	test	rbx, rbx
	js	.label_411
	mov	rsp, rsp
	mov	rbp, r15
	lea	rdi, [rdi]
	sub	rbp, rbx
	cmp	rbp, r14
	nop	
	jl	.label_378
	jmp	.label_419
.label_411:
	lea	rbp, [r15 + 1]
	sub	rbp, rbx
	mov	rsp, rsp
	cmp	r14, rbp
	nop	
	jl	.label_378
.label_419:
	lea	rdi, [rdi]
	mov	rbp, rdx
	shr	rbp, 0x3f
	sar	rdx, 0x1a
	add	rdx, rbp
	add	r14, rbx
	movsxd	rdx, edx
	test	edx, edx
	nop	
	js	.label_424
	sub	r15, rdx
	cmp	r15, r14
	jl	.label_378
	mov	rsp, rsp
	jmp	.label_431
.label_495:
	test	al, al
	mov	r13, rbp
	mov	rsp, rsp
	je	.label_391
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.57_0
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rbp, rbp
	lea	rdi, [rsp + 0x178]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x2e8]
	lea	rdx, [rsp + 0x280]
	call	debug_strfdatetime
	mov	rcx, rax
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	dbg_printf
	jmp	.label_391
.label_424:
	inc	r15
	sub	r15, rdx
	cmp	r14, r15
	jge	.label_431
.label_378:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0x3c1], 0
	lea	rsi, [rsi]
	je	.label_391
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.66
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_391:
	mov	rsp, rsp
	xor	ebp, ebp
	mov	rbx, qword ptr [rsp + 0x268]
	jmp	.label_374
.label_431:
	mov	rsp, rsp
	add	r14, rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x170]
	lea	rdi, [rdi]
	mov	qword ptr [rdx], r14
	mov	rbp, rbp
	mov	qword ptr [rdx + 8], rcx
	lea	rsi, [rsi]
	mov	rbp, rdx
	cmp	byte ptr [rsp + 0x3c1], 0
	nop	
	je	.label_420
	or	rsi, rax
	lea	rdi, [rdi]
	or	rsi, rbx
	lea	rdi, [rdi]
	or	rsi, rdi
	mov	rbp, rbp
	je	.label_420
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rdi, rax
	nop	
	mov	rsi, qword ptr [rsp + 0x368]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x370]
	mov	rcx, qword ptr [rsp + 0x378]
	mov	r8d, dword ptr [rsp + 0x380]
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	call	dbg_printf
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.68
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rcx
	nop	
	mov	rsi, r14
	call	dbg_printf
	cmp	dword ptr [rsp + 0x198], -1
	je	.label_420
	mov	rsp, rsp
	lea	rdx, [rsp + 0x128]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x268]
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	localtime_rz
	test	rax, rax
	je	.label_420
	mov	eax, dword ptr [rsp + 0x198]
	cmp	eax, dword ptr [rsp + 0x148]
	nop	
	je	.label_420
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.69
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	dbg_printf
.label_420:
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x268]
	mov	r12, rbp
	mov	rbp, rbp
	jmp	.label_503
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409b20

	.globl str_days
	.type str_days, @function
str_days:
	mov	rsp, rsp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0xe0], 0
	je	.label_535
	mov	r9, qword ptr [rbx + 8]
	mov	rsp, rsp
	lea	rax, [r9 + 1]
	cmp	rax, 0xd
	ja	.label_537
	nop	
	imul	rax, rax, 0xb
	lea	r9, qword ptr [rax + str_days.ordinal_values]
	nop	
	mov	esi, 0x64
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:.str_3
	jmp	.label_538
.label_535:
	mov	byte ptr [r14], 0
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_539
.label_537:
	mov	esi, 0x64
	mov	edx, 1
	mov	rsp, rsp
	mov	rcx, -1
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:.str.252
.label_538:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, r14
	call	__snprintf_chk
.label_539:
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbx + 0x10]
	test	rcx, rcx
	mov	rsp, rsp
	js	.label_536
	lea	rsi, [rsi]
	cmp	eax, 0x63
	mov	rbp, rbp
	ja	.label_536
	mov	rbp, rbp
	cmp	ecx, 6
	nop	
	jg	.label_536
	mov	rbp, rbp
	movsxd	rdi, eax
	nop	
	add	rdi, r14
	mov	edx, 0x64
	sub	edx, eax
	lea	rsi, [rsi]
	movsxd	rsi, edx
	mov	rbp, rbp
	test	eax, eax
	sete	al
	lea	rsi, [rsi]
	movzx	eax, al
	lea	r8, qword ptr [rax + .str.253]
	lea	r9, qword ptr [(rcx * 4) + str_days.days_values]
	mov	rbp, rbp
	mov	edx, 1
	mov	rcx, -1
	nop	
	xor	eax, eax
	mov	rsp, rsp
	call	__snprintf_chk
.label_536:
	mov	rax, r14
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r14
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409c40

	.globl debug_strfdatetime
	.type debug_strfdatetime, @function
debug_strfdatetime:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rsp, rsp
	push	r12
	mov	rbp, rbp
	push	rbx
	nop	
	sub	rsp, 0x20
	mov	r15, rdx
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rax, rdi
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:.str.254
	mov	rsp, rsp
	xor	r8d, r8d
	xor	r9d, r9d
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rcx, rax
	call	nstrftime
	mov	rbp, rbp
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_540
	cmp	eax, 0x63
	nop	
	jg	.label_540
	mov	rbp, rbp
	cmp	qword ptr [rbx + 0xd0], 0
	je	.label_540
	lea	rsi, [rsi]
	movsxd	rbx, dword ptr [rbx + 0x18]
	cdqe	
	lea	r14, [r15 + rax]
	mov	rbp, rbp
	mov	r12d, 0x64
	mov	rsp, rsp
	sub	r12d, eax
	mov	eax, ebx
	nop	
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	shr	rbp, 0x20
	lea	rsi, [rsi]
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	mov	rsp, rsp
	add	ebp, ecx
	mov	rsp, rsp
	mov	r9d, ebp
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	nop	
	lea	rdi, [rsp]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, 0x1b
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.233
	xor	eax, eax
	nop	
	call	__sprintf_chk
	lea	rdi, [rdi]
	imul	edx, ebp, 0xe10
	mov	esi, ebx
	nop	
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	nop	
	cmovl	ecx, esi
	cmp	ebx, edx
	lea	rdi, [rdi]
	movsxd	rsi, r12d
	mov	rsp, rsp
	je	.label_541
	cdqe	
	lea	rax, [rsp + rax]
	mov	rsp, rsp
	movsxd	r9, ecx
	lea	rsi, [rsi]
	imul	rdx, r9, -0x77777777
	lea	rsi, [rsi]
	shr	rdx, 0x20
	add	edx, r9d
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	mov	rsp, rsp
	add	edx, edi
	mov	rbp, rbp
	imul	r8d, edx, 0x3c
	mov	rsp, rsp
	imul	rbp, r9, 0x1b4e81b5
	lea	rsi, [rsi]
	mov	rbx, rbp
	lea	rdi, [rdi]
	shr	rbx, 0x3f
	shr	rbp, 0x26
	mov	rbp, rbp
	movsxd	rdx, edx
	lea	rsi, [rsi]
	imul	rdi, rdx, 0x66666667
	lea	rsi, [rsi]
	mov	rcx, rdi
	shr	rcx, 0x3f
	sar	rdi, 0x22
	mov	rsp, rsp
	add	edi, ecx
	add	edi, edi
	lea	ecx, [rdi + rdi*4]
	nop	
	sub	edx, ecx
	mov	rsp, rsp
	add	edx, 0x30
	sub	r9d, r8d
	nop	
	mov	byte ptr [rax], 0x3a
	lea	rsi, [rsi]
	lea	ecx, [rbp + rbx + 0x30]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 1], cl
	lea	rdi, [rdi]
	mov	byte ptr [rax + 2], dl
	je	.label_543
	mov	rbp, rbp
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	lea	rsi, [rsi]
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	edi, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	nop	
	mov	byte ptr [rax + 4], cl
	add	edi, edi
	lea	ecx, [rdi + rdi*4]
	mov	rbp, rbp
	neg	ecx
	mov	rsp, rsp
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	lea	rsi, [rsi]
	add	rax, 6
	jmp	.label_542
.label_543:
	add	rax, 3
.label_542:
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
.label_541:
	lea	r9, [rsp]
	mov	edx, 1
	mov	rcx, -1
	nop	
	mov	r8d, OFFSET FLAT:.str.255
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	call	__snprintf_chk
.label_540:
	mov	rax, r15
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e80

	.globl lookup_zone
	.type lookup_zone, @function
lookup_zone:
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rsp, rsp
	mov	r15, rsi
	mov	r14, rdi
	nop	
	mov	esi, OFFSET FLAT:.str.127
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:universal_time_zone_table
	mov	rbp, rbp
	test	eax, eax
	je	.label_544
	mov	esi, OFFSET FLAT:.str.128
	mov	rdi, r15
	mov	rsp, rsp
	call	strcmp
	mov	ebx, OFFSET FLAT:label_546
	nop	
	test	eax, eax
	mov	rsp, rsp
	je	.label_544
	mov	esi, OFFSET FLAT:.str.129
	mov	rdi, r15
	call	strcmp
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:label_545
	nop	
	test	eax, eax
	mov	rbp, rbp
	je	.label_544
	mov	rsi, qword ptr [r14 + 0xe8]
	mov	r13d, OFFSET FLAT:time_zone_table
	mov	r12d, OFFSET FLAT:.str.130
	test	rsi, rsi
	je	.label_548
	add	r14, 0xe8
	mov	rsp, rsp
	mov	r13d, OFFSET FLAT:time_zone_table
	lea	rsi, [rsi]
	mov	r12d, OFFSET FLAT:.str.130
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_547:
	mov	rdi, r15
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	je	.label_544
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_547
	nop	word ptr cs:[rax + rax]
.label_548:
	mov	rdi, r15
	mov	rsi, r12
	mov	rbp, rbp
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_549
	mov	r12, qword ptr [r13 + 0x10]
	mov	rbp, rbp
	add	r13, 0x10
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	
	test	r12, r12
	jne	.label_548
	jmp	.label_544
.label_549:
	mov	rbx, r13
.label_544:
	lea	rdi, [rdi]
	mov	rax, rbx
	pop	rbx
	nop	
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409fc0

	.globl posixtime
	.type posixtime, @function
posixtime:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	nop	
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x68
	mov	r14d, edx
	lea	rsi, [rsi]
	mov	r13, rsi
	nop	
	mov	qword ptr [rsp + 0x38], rdi
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	xor	r12d, r12d
	mov	rbp, rbp
	test	r14b, 4
	je	.label_554
	lea	rdi, [rdi]
	mov	esi, 0x2e
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsp, rsp
	call	strchr
	xor	r12d, r12d
	test	rax, rax
	je	.label_554
	mov	rcx, rax
	lea	rdi, [rdi]
	sub	rcx, r13
	mov	rbp, rbp
	sub	rbp, rcx
	cmp	rbp, 3
	mov	r12, rax
	mov	rbp, rcx
	lea	rsi, [rsi]
	jne	.label_550
.label_554:
	lea	rsi, [rsi]
	lea	rcx, [rbp - 8]
	mov	eax, ebp
	and	eax, 1
	mov	rbp, rbp
	cmp	rcx, 4
	ja	.label_550
	mov	rbp, rbp
	test	rax, rax
	jne	.label_550
	xor	ebx, ebx
	test	rbp, rbp
	je	.label_559
	nop	word ptr cs:[rax + rax]
.label_556:
	mov	rbp, rbp
	movsx	eax, byte ptr [r13 + rbx]
	lea	rdi, [rdi]
	add	eax, -0x30
	lea	rsi, [rsi]
	cmp	eax, 0xa
	nop	
	jae	.label_550
	inc	rbx
	lea	rsi, [rsi]
	cmp	rbx, rbp
	mov	rbp, rbp
	jb	.label_556
	mov	rbp, rbp
	xor	ebx, ebx
	mov	rax, rbp
	shr	rax, 1
	je	.label_559
	mov	rcx, rbp
	lea	rdi, [rdi]
	shr	rcx, 1
	xor	esi, esi
	bt	rbp, 1
	jae	.label_562
	mov	rbp, rbp
	movsx	edx, byte ptr [r13]
	mov	rbp, rbp
	lea	edx, [rdx + rdx*4]
	mov	rsp, rsp
	movsx	esi, byte ptr [r13 + 1]
	nop	
	lea	edx, [rsi + rdx*2 - 0x210]
	mov	dword ptr [rsp + 0x50], edx
	lea	rsi, [rsi]
	mov	esi, 1
.label_562:
	cmp	rcx, 1
	je	.label_569
	mov	rbp, rbp
	sub	rcx, rsi
	lea	rdi, [rdi]
	lea	rdx, [rsp + rsi*4 + 0x54]
	lea	rdi, [rdi]
	lea	rsi, [r13 + rsi*2 + 3]
	nop	word ptr cs:[rax + rax]
.label_565:
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rsi - 3]
	mov	rbp, rbp
	lea	edi, [rdi + rdi*4]
	movsx	ebp, byte ptr [rsi - 2]
	mov	rbp, rbp
	lea	edi, [rbp + rdi*2 - 0x210]
	nop	
	mov	dword ptr [rdx - 4], edi
	mov	rsp, rsp
	movsx	edi, byte ptr [rsi - 1]
	mov	rbp, rbp
	lea	edi, [rdi + rdi*4]
	movsx	ebp, byte ptr [rsi]
	lea	edi, [rbp + rdi*2 - 0x210]
	mov	dword ptr [rdx], edi
	nop	
	add	rdx, 8
	lea	rsi, [rsi]
	add	rsi, 4
	nop	
	add	rcx, -2
	lea	rsi, [rsi]
	jne	.label_565
.label_569:
	mov	rsp, rsp
	mov	rbx, rax
.label_559:
	mov	r15d, r14d
	nop	
	and	r15d, 1
	je	.label_568
	lea	rax, [rsp + 0x50]
	mov	rsp, rsp
	jmp	.label_571
.label_568:
	mov	rsp, rsp
	cmp	rbx, 4
	je	.label_552
	cmp	rbx, 6
	je	.label_553
	cmp	rbx, 5
	mov	rsp, rsp
	jne	.label_555
	mov	r10d, dword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	cmp	r10d, 0x44
	jg	.label_558
	lea	rsi, [rsi]
	test	r14b, 8
	jne	.label_550
	mov	rsp, rsp
	add	r10d, 0x64
	mov	rsp, rsp
	jmp	.label_558
.label_552:
	lea	rsi, [rsi]
	lea	rbp, [rsp + 0x40]
	mov	rsp, rsp
	mov	rdi, rbp
	call	time
	mov	rdi, rbp
	call	localtime
	test	rax, rax
	je	.label_550
	nop	
	mov	r10d, dword ptr [rax + 0x14]
	jmp	.label_558
.label_553:
	mov	rbp, rbp
	test	r14b, 2
	je	.label_550
	nop	
	mov	rax, qword ptr [rsp + 0x50]
	imul	ecx, eax, 0x64
	lea	rsi, [rsi]
	shr	rax, 0x20
	lea	r10d, [rax + rcx - 0x76c]
.label_558:
	add	rbx, -4
	lea	rsi, [rsi]
	lea	rax, [rsp + rbx*4 + 0x50]
	mov	ebx, 4
.label_571:
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	r9d, dword ptr [rax + 4]
	mov	r8d, dword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rax + 0xc]
	test	r15d, r15d
	lea	rdi, [rdi]
	je	.label_561
	lea	rsi, [rsi]
	cmp	rbx, 4
	nop	
	je	.label_566
	cmp	rbx, 6
	lea	rdi, [rdi]
	je	.label_567
	cmp	rbx, 5
	jne	.label_555
	mov	rbp, rbp
	mov	r10d, dword ptr [rax + 0x10]
	cmp	r10d, 0x44
	mov	rbp, rbp
	jg	.label_561
	test	r14b, 8
	jne	.label_550
	add	r10d, 0x64
	jmp	.label_561
.label_566:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x48], r9d
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x4c], r8d
	mov	r15d, edi
	mov	ebp, esi
	lea	rbx, [rsp + 0x40]
	mov	rdi, rbx
	call	time
	mov	rdi, rbx
	nop	
	call	localtime
	mov	rbp, rbp
	test	rax, rax
	je	.label_550
	mov	r10d, dword ptr [rax + 0x14]
	mov	esi, ebp
	mov	edi, r15d
	nop	
	mov	r8d, dword ptr [rsp + 0x4c]
	mov	rsp, rsp
	mov	r9d, dword ptr [rsp + 0x48]
	jmp	.label_561
.label_567:
	mov	rsp, rsp
	test	r14b, 2
	je	.label_550
	nop	
	imul	ecx, dword ptr [rax + 0x10], 0x64
	mov	eax, dword ptr [rax + 0x14]
	lea	r10d, [rax + rcx - 0x76c]
.label_561:
	xor	eax, eax
	lea	rsi, [rsi]
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_570
	mov	rbp, rbp
	movsx	eax, byte ptr [r12 + 1]
	lea	ecx, [rax - 0x30]
	lea	rsi, [rsi]
	cmp	ecx, 9
	ja	.label_550
	mov	rbp, rbp
	movsx	ecx, byte ptr [r12 + 2]
	lea	rdi, [rdi]
	lea	edx, [rcx - 0x30]
	mov	rbp, rbp
	cmp	edx, 9
	ja	.label_550
	lea	rdi, [rdi]
	lea	eax, [rax + rax*4]
	lea	eax, [rcx + rax*2 - 0x210]
.label_570:
	mov	dword ptr [rsp + 0x4c], eax
	nop	
	mov	dword ptr [rsp + 0x48], r14d
	lea	rsi, [rsi]
	dec	esi
	mov	dword ptr [rsp], eax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 4], edi
	mov	dword ptr [rsp + 8], r8d
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xc], r9d
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x10], esi
	mov	dword ptr [rsp + 0x14], r10d
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x18], 0xffffffff
	nop	
	mov	dword ptr [rsp + 0x20], 0xffffffff
	lea	rsi, [rsi]
	mov	ebx, edi
	lea	rdi, [rsp]
	lea	rsi, [rsi]
	mov	ebp, esi
	mov	r12d, r8d
	mov	r15d, r9d
	nop	
	mov	r14d, r10d
	call	mktime
	mov	rcx, rax
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0x18], 0
	lea	rsi, [rsi]
	js	.label_560
	mov	rsp, rsp
	xor	r14d, dword ptr [rsp + 0x14]
	nop	
	xor	ebp, dword ptr [rsp + 0x10]
	nop	
	xor	r15d, dword ptr [rsp + 0xc]
	or	r15d, r14d
	mov	rbp, rbp
	xor	r12d, dword ptr [rsp + 8]
	mov	rsp, rsp
	or	r12d, r15d
	lea	rdi, [rdi]
	xor	ebx, dword ptr [rsp + 4]
	mov	rsp, rsp
	or	ebx, r12d
	nop	
	or	ebx, ebp
	mov	eax, dword ptr [rsp]
	mov	edx, dword ptr [rsp + 0x4c]
	lea	rdi, [rdi]
	xor	eax, edx
	or	eax, ebx
	mov	rsp, rsp
	je	.label_563
	nop	
	mov	rbp, rcx
	cmp	edx, 0x3c
	jne	.label_557
	lea	rbx, [rsp + 0x50]
	lea	rsi, [rsi]
	mov	edx, 0x10
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r13
	mov	rbp, rbp
	call	__stpcpy_chk
	mov	byte ptr [rax], 0
	mov	word ptr [rax - 2], 0x3935
	lea	rdi, [rsp + 0x40]
	mov	rsi, rbx
	mov	edx, dword ptr [rsp + 0x48]
	call	posixtime
	test	al, al
	mov	rcx, rbp
	je	.label_564
.label_563:
	nop	
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rax], rcx
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	jmp	.label_551
.label_550:
	nop	
	xor	eax, eax
.label_551:
	nop	
	add	rsp, 0x68
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
.label_560:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	jmp	.label_551
.label_557:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_551
.label_564:
	mov	rbp, rbp
	xor	eax, eax
	jmp	.label_551
.label_555:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a490

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	mov	rsp, rsp
	push	rax
	mov	edi, OFFSET FLAT:.str_6
	lea	rdi, [rdi]
	call	getenv
	mov	rcx, rax
	mov	rbp, rbp
	mov	eax, 0x31069
	mov	rsp, rsp
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_572
	mov	rbp, rbp
	mov	eax, 0x31069
	lea	rdi, [rdi]
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_572
	mov	rsp, rsp
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	strtol
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	je	.label_572
	nop	
	mov	eax, 0x31069
.label_572:
	cmp	rax, 0x7fffffff
	mov	ecx, 0x7fffffff
	cmovl	ecx, eax
	nop	
	cmp	rax, -0x80000000
	mov	rbp, rbp
	mov	eax, 0x80000000
	nop	
	cmovge	eax, ecx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a520

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_573
	mov	esi, 0x2f
	mov	rbp, rbp
	mov	rdi, rbx
	call	strrchr
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	lea	r14, [rax + 1]
	lea	rdi, [rdi]
	cmove	r14, rbx
	mov	rax, r14
	nop	
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 7
	lea	rsi, [rsi]
	jl	.label_575
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_575
	mov	esi, OFFSET FLAT:.str.2_2
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_574
	nop	
	add	r14, 3
	mov	qword ptr [rip + program_invocation_short_name],  r14
.label_574:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_575:
	mov	rsp, rsp
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_573:
	mov	rcx, qword ptr [rip + stderr]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_7
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a610
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	mov	rbp, rbp
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmove	rbx, rax
	mov	rsp, rsp
	mov	esi, 0x38
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	xmemdup
	nop	
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a660
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a680
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	nop	
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	dword ptr [rax], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a6a0
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	cmovne	rsi, rdi
	mov	al, cl
	lea	rdi, [rdi]
	shr	al, 5
	mov	rbp, rbp
	movzx	r8d, al
	mov	rsp, rsp
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	rsp, rsp
	mov	edi, r9d
	mov	rsp, rsp
	shr	edi, cl
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rsp, rsp
	and	eax, 1
	mov	rsp, rsp
	xor	edi, edx
	mov	rbp, rbp
	and	edi, 1
	mov	rsp, rsp
	shl	edi, cl
	lea	rsi, [rsi]
	xor	edi, r9d
	mov	rbp, rbp
	mov	dword ptr [rsi + r8*4 + 8], edi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a710
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	test	rdi, rdi
	nop	
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	rsp, rsp
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a730
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rdi, [rdi]
	cmovne	rax, rdi
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_576
	test	rdx, rdx
	nop	
	je	.label_576
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_576:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a770
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rcx
	nop	
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	lea	rdi, [rdi]
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	mov	r14d, dword ptr [rbx]
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 0x30]
	mov	rsp, rsp
	add	rbp, 8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	qword ptr [rsp], rbp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a820

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	sub	rsp, 0x118
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x38], ebx
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0x88], rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xb0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x160]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x100], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x158]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12b, bl
	mov	rbp, rbp
	shr	r12b, 1
	mov	rbp, rbp
	and	r12b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x44], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xd8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x68], rcx
.label_678:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_656
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [(rcx * 8) + label_661]
.label_1064:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_1
	nop	
	mov	esi, r15d
	mov	r14, r10
	nop	
	mov	bl, r8b
	call	gettext_quote
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	mov	rsp, rsp
	call	gettext_quote
	mov	r8b, bl
	mov	rsp, rsp
	mov	r10, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x100], rax
.label_1065:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_682
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_682
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_700:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_696
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_696:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_700
.label_682:
	nop	
	mov	rbp, qword ptr [rsp + 0x100]
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbx, r10
	mov	rbp, rbp
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	r9d, r15d
	mov	qword ptr [rsp + 0x20], rbp
	nop	
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r11, qword ptr [rsp + 0x88]
	jmp	.label_590
.label_1057:
	mov	rbp, rbp
	xor	r9d, r9d
	xor	ecx, ecx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	dil, al
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	jmp	.label_590
.label_1060:
	lea	rsi, [rsi]
	mov	al, 1
.label_1058:
	mov	rbp, rbp
	mov	r12b, 1
.label_1061:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_614
	lea	rsi, [rsi]
	mov	cl, al
.label_614:
	mov	rsp, rsp
	mov	al, cl
.label_1059:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_618
	test	r10, r10
	je	.label_624
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_626
.label_618:
	xor	ecx, ecx
	jmp	.label_626
.label_1062:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_639
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_644
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_649
.label_1063:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xf0], rax
	mov	sil, 1
	jmp	.label_590
.label_624:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_626:
	nop	
	mov	qword ptr [rsp + 0x58], rcx
	nop	
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	mov	ecx, 1
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
	mov	dil, al
	mov	sil, r12b
	jmp	.label_590
.label_639:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_649
.label_644:
	lea	rdi, [rdi]
	mov	eax, 1
.label_649:
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	dil, 1
	nop	
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_590:
	mov	qword ptr [rsp + 0x30], rsi
	mov	byte ptr [rsp + 0xa7], dil
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x150], 0
	setne	dl
	lea	rsi, [rsi]
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc3], cl
	sete	byte ptr [rsp + 0x97]
	lea	rsi, [rsi]
	mov	bl, r15b
	mov	rsp, rsp
	and	bl, cl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x65], bl
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r13b
	mov	r12b, r13b
	lea	rdi, [rdi]
	and	r12b, bl
	mov	byte ptr [rsp + 0x67], r12b
	mov	bl, sil
	and	bl, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xe7], bl
	sete	cl
	and	al, bl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x77], al
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xd7], dl
	mov	rsp, rsp
	or	cl, r15b
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x66], cl
	lea	rdi, [rdi]
	and	dil, sil
	lea	rsi, [rsi]
	and	dil, r13b
	mov	byte ptr [rsp + 0x57], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xe8]
	jmp	.label_699
	nop	word ptr cs:[rax + rax]
.label_658:
	nop	
	inc	rdi
.label_699:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_615
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_690
	jmp	.label_620
	nop	dword ptr [rax + rax]
.label_615:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_623
.label_690:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_634
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_636
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_636
	nop	
	mov	eax, r14d
	mov	rbp, rbp
	mov	r14, rdi
	mov	rdi, r11
	mov	rsp, rsp
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xe8], eax
	mov	rsp, rsp
	mov	r12, r11
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, r14
	mov	rbp, rbp
	mov	r11, r12
	mov	rbp, rbp
	mov	r12b, byte ptr [rsp + 0x67]
	nop	
	mov	r14d, dword ptr [rsp + 0xe8]
	lea	rsi, [rsi]
	mov	r9, r13
	lea	rsi, [rsi]
	mov	r8b, r15b
	mov	r10, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
.label_636:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_672
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_583
	nop	dword ptr [rax + rax]
.label_634:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_583
	nop	word ptr cs:[rax + rax]
.label_672:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	r12, rbp
	lea	rsi, [rsi]
	mov	r13, r9
	mov	r15b, r8b
	mov	rbp, rbp
	mov	rbx, r10
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsp, rsp
	lea	rdi, [r11 + r14]
	mov	rsp, rsp
	mov	rbp, r11
	nop	
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0xf0]
	nop	
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	sete	al
	nop	
	mov	dword ptr [rsp + 0x10c], eax
	jne	.label_697
	cmp	byte ptr [rsp + 0xe7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	lea	rsi, [rsi]
	mov	rbp, r12
	lea	rdi, [rdi]
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	je	.label_583
	jmp	.label_588
.label_697:
	mov	rsp, rsp
	mov	r10, rbx
	mov	rsp, rsp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r9, r13
	mov	rsp, rsp
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	nop	dword ptr [rax + rax]
.label_583:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_638
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_601]
.label_1076:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_606
	mov	rbp, rbp
	jmp	.label_611
.label_1080:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_612
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_616
	nop	
	cmp	rbp, 1
	je	.label_611
	xor	r13d, r13d
	jmp	.label_577
.label_1069:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_627
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_588
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_640
	mov	al, r14b
	and	al, 1
	jne	.label_643
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_648
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_648:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_659
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_659:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_666
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_666:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_642
.label_1070:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_677
.label_1071:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_629
.label_1072:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_677
.label_1073:
	mov	bl, 0x66
	jmp	.label_677
.label_1074:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_629
.label_1077:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_688
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_691
	mov	rsp, rsp
	test	r10, r10
	lea	rsi, [rsi]
	sete	al
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	setne	cl
	or	cl, al
	lea	rdi, [rdi]
	cmove	rdx, r10
	nop	
	mov	qword ptr [rsp + 0xd8], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0x58], r10
	lea	rdi, [rdi]
	jae	.label_694
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_694:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_632
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_632:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_597
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_597:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_688:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_577
.label_1078:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_609
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_606
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_606
	mov	rbp, rbp
	jmp	.label_619
.label_1079:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_621
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_628
	lea	rdi, [rdi]
	jmp	.label_635
.label_638:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_654
	nop	
	mov	r13d, r14d
	mov	rsp, rsp
	mov	r14, r11
	nop	
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	lea	rsi, [rsi]
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	lea	rsi, [rsi]
	mov	eax, 1
.label_585:
	mov	rbp, rbp
	and	r13b, 1
	mov	cl, r13b
	mov	rsp, rsp
	or	cl, byte ptr [rsp + 0x97]
	cmp	rax, 1
	nop	
	mov	r10, qword ptr [rsp + 0x110]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r9, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	ja	.label_665
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_665
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_577
.label_612:
	test	rdi, rdi
	jne	.label_681
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_681
.label_611:
	mov	dl, 1
.label_1075:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_686
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_577
.label_627:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_658
	jmp	.label_606
.label_621:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_629
.label_628:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_625
.label_629:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_669
.label_677:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_577
	lea	rsi, [rsi]
	jmp	.label_599
.label_654:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_586
	mov	rbp, rdi
	nop	
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	rbx, r11
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	r11, rbx
	nop	
	mov	rbp, rax
.label_586:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13b, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	lea	rbx, [rsp + 0x98]
.label_604:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0xa8], rdi
	lea	rax, [rax + rdi]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xc4]
	mov	rsp, rsp
	mov	rcx, rbx
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_622
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_631
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_641
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_647
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_671:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_662
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_664
.label_662:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_671
.label_647:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_613
	xor	r13d, r13d
.label_613:
	mov	rax, qword ptr [rsp + 0xe8]
	add	rax, rbp
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	je	.label_604
	mov	rsp, rsp
	jmp	.label_585
.label_681:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_577
.label_609:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_606
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_606
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_606
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_582
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_663
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_594
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_598
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_598:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_610
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_610:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_584
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_584:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_581
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_581:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_577
.label_606:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_577:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_645
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_653
	lea	rsi, [rsi]
	jmp	.label_657
.label_645:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_657
.label_653:
	mov	cl, r15b
	shr	cl, 5
	lea	rdi, [rdi]
	movzx	edx, cl
	nop	
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	nop	
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_660
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_668
	nop	word ptr cs:[rax + rax]
.label_657:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_668:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_625
	mov	rsp, rsp
	jmp	.label_599
.label_660:
	mov	bl, r15b
.label_599:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_588
	nop	
	cmp	r9d, 2
	jne	.label_683
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_683
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_676
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_676:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_695
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_695:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_592
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_592:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_683:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_579
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_579:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_679
.label_616:
	xor	r13d, r13d
	nop	
	jmp	.label_577
.label_665:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_593
	nop	dword ptr [rax + rax]
.label_587:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_593:
	test	cl, cl
	je	.label_600
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_602
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_607
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_607:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_602
	nop	dword ptr [rax]
.label_600:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_588
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_630
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_630
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_650
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_650:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_689
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_689:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_608
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_608:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_630:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_684
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_684:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_675
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_675:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_685
	lea	rsi, [rsi]
	mov	dl, r15b
	lea	rdi, [rdi]
	shr	dl, 3
	mov	rsp, rsp
	and	dl, 7
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rsi + rax], dl
.label_685:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_602:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_625
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_701
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_701
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_580
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_580:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_591
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_591:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_701:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_587
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_587
	nop	word ptr cs:[rax + rax]
.label_625:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_617
	mov	rsp, rsp
	and	al, 1
	jne	.label_617
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_589
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_589:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_633
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_633:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_617:
	mov	rsp, rsp
	mov	bl, r15b
.label_679:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_652
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_652:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_658
.label_640:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_642
.label_643:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_642:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_670
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_670:
	nop	
	lea	rax, [rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rax
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	r15b, 0x30
	cmp	r9d, 2
	lea	rsi, [rsi]
	je	.label_596
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_680
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_667
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_687
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_687:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_692
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_692:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_577
.label_596:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_577
.label_680:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_577
.label_667:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_577
.label_631:
	xor	r13d, r13d
.label_622:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_585
.label_641:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_595
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_605:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_603
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_605
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_585
.label_595:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_585
.label_603:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_585
.label_582:
	xor	r13d, r13d
	jmp	.label_577
.label_663:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_577
.label_620:
	nop	
	mov	r13, rdi
.label_623:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_637
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_651
.label_637:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	qword ptr [rsp + 0x88], r11
	cmp	r9d, 2
	lea	rsi, [rsi]
	setne	al
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rdi, [rdi]
	setne	dl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x68]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0xa7]
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_655
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_655
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_673
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_655
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_678
.label_655:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_674
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_674
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_674
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_698:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_693
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_693:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_698
.label_674:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_578
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_578
.label_686:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_588
.label_664:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_588
.label_651:
	nop	
	mov	rbp, r13
	jmp	.label_588
.label_669:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_588:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc3], 0
	lea	rdi, [rdi]
	mov	r8d, 4
	cmove	r8d, r9d
	lea	rdi, [rdi]
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x38]
	and	r9d, 0xfffffffd
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsi, r10
	nop	
	mov	rdx, r11
	lea	rdi, [rdi]
	mov	rcx, rbp
.label_646:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_578:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	rsp, 0x118
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_673:
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp], rax
	nop	
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	jmp	.label_646
.label_691:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_588
.label_635:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_588
.label_619:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_588
.label_594:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_588
.label_656:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bda0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rbp, rbp
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	r14d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r14, rdx
	lea	rsi, [rsi]
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x24], ecx
	mov	rsp, rsp
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	mov	rbp, rbp
	or	ebp, 1
	mov	rbp, rbp
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r15
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rdi, [rdi]
	mov	r9d, ebp
	nop	
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	lea	rsi, [rsi]
	mov	r13, rax
	nop	
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	nop	
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rcx, r12
	mov	r9d, ebp
	lea	rsi, [rsi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bee0
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	lea	rsi, [rsi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], ecx
	test	rbx, rbx
	lea	rsi, [rsi]
	sete	al
	movzx	ebp, al
	lea	rsi, [rsi]
	or	ebp, dword ptr [r12 + 4]
	mov	rbp, rbp
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	nop	
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r13
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r9d, ebp
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	r15, [rbx + 1]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	xmalloc
	nop	
	mov	r14, rax
	lea	rsi, [rsi]
	mov	r8d, dword ptr [r12]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x3c]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_702
	mov	qword ptr [rax], rbx
.label_702:
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 0x48
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
	#Procedure 0x40c030
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_703
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_706:
	mov	rdi, qword ptr [r15]
	nop	
	call	free
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rip + nslots]
	lea	rsi, [rsi]
	add	r15, 0x10
	cmp	rbx, rax
	mov	rsp, rsp
	jl	.label_706
.label_703:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_707
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rip + slotvec0],  0x100
	mov	rsp, rsp
	mov	qword ptr [rip + label_705], OFFSET FLAT:slot0
.label_707:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_704
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_704:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c0f0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c100

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x48
	nop	
	mov	r12, rcx
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_713
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  ebx
	jle	.label_712
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_710
.label_712:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_714
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	mov	rsp, rsp
	lea	r15d, [rbx + 1]
	mov	rbp, rbp
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
	mov	rsp, rsp
	movsxd	rax, dword ptr [rip + nslots]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rdi, rax
	lea	rsi, [rsi]
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [rip + nslots],  ebp
	mov	rbp, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_710:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	movsxd	r13, ebx
	mov	rsp, rsp
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	nop	
	mov	rcx, r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_708
	nop	
	lea	rax, [rbp + r13]
	lea	rsi, [rsi]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	lea	rdi, [rdi]
	mov	qword ptr [rax], r14
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	mov	rbp, rbp
	je	.label_711
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_711:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xmalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_708:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x1c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_713:
	lea	rdi, [rdi]
	call	abort
.label_714:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c370
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c380
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	nop	
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c3b0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c3e0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop	
	sub	rsp, 0x78
	mov	rbp, rbp
	mov	rax, rdx
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	je	.label_715
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x64], xmm2
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x54], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rbp, rbp
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsp, rsp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_715:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c470
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	mov	rbp, rbp
	sub	rsp, 0x78
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	lea	rsi, [rsi]
	je	.label_716
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x40], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	nop	
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rsp, rsp
	lea	rax, [rsp + 0x40]
	mov	rbp, rbp
	mov	rsi, rdx
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_716:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c510

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	mov	rsp, rsp
	je	.label_717
	mov	dword ptr [rsp + 0x40], edi
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x30]
	nop	
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	nop	
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x78
	lea	rsi, [rsi]
	ret	
.label_717:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c5a0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
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
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	nop	
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x78
	ret	
.label_718:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40c610
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_719]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_720]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_721]
	nop	
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	al, cl
	nop	
	shr	al, 5
	movzx	eax, al
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + rax*4 + 8]
	lea	rsi, [rsi]
	mov	edi, esi
	mov	rsp, rsp
	shr	edi, cl
	not	edi
	mov	rbp, rbp
	and	edi, 1
	lea	rsi, [rsi]
	shl	edi, cl
	xor	edi, esi
	nop	
	mov	dword ptr [rsp + rax*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, r8
	nop	
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c6b0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx, qword ptr [rip + label_719]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_720]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0, xmmword ptr [rip + label_721]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
	mov	rbp, rbp
	shr	dl, 5
	lea	rsi, [rsi]
	movzx	edx, dl
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	lea	rdi, [rdi]
	mov	edi, esi
	shr	edi, cl
	nop	
	not	edi
	mov	rsp, rsp
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	rdx, -1
	mov	rbp, rbp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c750

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rip + label_719]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_720]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_721]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c7c0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rip + label_719]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_720]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_721]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rsi, [rsi]
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c830
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	sub	rsp, 0xb8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_722
	nop	
	mov	ecx, dword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x70], ecx
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rsp]
	mov	rbp, rbp
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x80], esi
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x70]
	nop	
	mov	dword ptr [rsp + 0xb4], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	nop	
	movups	xmmword ptr [rsp + 0xa4], xmm2
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x94], xmm1
	movups	xmmword ptr [rsp + 0x84], xmm0
	or	byte ptr [rsp + 0x8f], 4
	lea	rcx, [rsp + 0x80]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0xb8
	mov	rsp, rsp
	ret	
.label_722:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40c910
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax, qword ptr [rip + label_719]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rip + label_720]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rip + label_721]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_723
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_723
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rcx, rax
	mov	rbp, rbp
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	ret	
.label_723:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40c9a0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax, qword ptr [rip + label_719]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_720]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0, xmmword ptr [rip + label_721]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_724
	test	rdx, rdx
	je	.label_724
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	nop	
	call	quotearg_n_options
	mov	rbp, rbp
	add	rsp, 0x38
	ret	
.label_724:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ca30
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_719]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_720]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rip + label_721]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_725
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_725
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rdi, [rdi]
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
.label_725:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cad0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_719]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rip + label_720]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0, xmmword ptr [rip + label_721]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_726
	test	rsi, rsi
	je	.label_726
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [rsi]
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	mov	rsp, rsp
	ret	
.label_726:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cb70
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cb80
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rdx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x40cba0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsp, rsp
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cbc0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	lea	rdi, [rdi]
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cbf0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	rbp, rbp
	cmp	rax, rbx
	jne	.label_728
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_730
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_727
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_727
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_727
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_727
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_727
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_727
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_728
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_728
.label_730:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_727
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_727
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_727
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_727
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_727
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_727
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_729
.label_727:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_728:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_729:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_728
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_728
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cd60

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	r15
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	lea	rdi, [rdi]
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_735
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_8
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_737
.label_735:
	mov	edx, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_737:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_3
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, r14
	lea	rsi, [rsi]
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_2
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, r14
	nop	
	call	fputs_unlocked
	nop	
	cmp	r12, 9
	mov	rbp, rbp
	ja	.label_739
	lea	rsi, [rsi]
	jmp	qword ptr [(r12 * 8) + label_731]
.label_1219:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_2
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	add	rsp, 0x38
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_739:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_740
.label_1220:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_1
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	jmp	__fprintf_chk
.label_1221:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_1
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rsp, 0x38
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	nop	
	pop	r15
	jmp	__fprintf_chk
.label_1222:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_734
.label_1223:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_736
.label_1224:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	rsp, rsp
	mov	r8, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_732
.label_1225:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_732:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_736:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_734:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_738
.label_1227:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_740:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	rbp, rbp
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_733
.label_1226:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_2
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	nop	
	mov	rdx, qword ptr [r15 + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
.label_733:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_738:
	mov	rbp, rbp
	call	__fprintf_chk
.label_1218:
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d150
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_741:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_741
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d180
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_745:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_742
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_743
	nop	word ptr cs:[rax + rax]
.label_742:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_743:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_744
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_745
.label_744:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d210

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_746
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0xc0], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0xd0], xmm5
	movaps	xmmword ptr [rsp + 0xe0], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xf0], xmm7
.label_746:
	mov	qword ptr [rsp + 0x78], r9
	nop	
	mov	qword ptr [rsp + 0x70], r8
	lea	rax, [rsp + 0x50]
	mov	qword ptr [rsp + 0x110], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0x120]
	mov	qword ptr [rsp + 0x108], rax
	mov	dword ptr [rsp + 0x104], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x100], 0x20
	xor	r9d, r9d
	mov	rsp, rsp
	mov	r8d, dword ptr [rsp + 0x100]
	nop	word ptr [rax + rax]
.label_748:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_747
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_749
	nop	dword ptr [rax + rax]
.label_747:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_749:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_750
	inc	r9
	cmp	r9, 0xa
	jb	.label_748
.label_750:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d350
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_1
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d3e0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	div	rbx
	cmp	rax, rdi
	jb	.label_751
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_752
	test	rax, rax
	je	.label_751
.label_752:
	nop	
	pop	rbx
	ret	
.label_751:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d430

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_753
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_754
.label_753:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_754:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d460
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdx
	nop	
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	cmp	rax, rsi
	jb	.label_756
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_755
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_755
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_755:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_757
	test	rax, rax
	je	.label_756
.label_757:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_756:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d4e0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_758
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_758
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_758:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_759
	test	rax, rax
	nop	
	je	.label_760
.label_759:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_760:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d530
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_765
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_761
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_767
.label_765:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_764
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_764:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_766
.label_767:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_763
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_763
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_763:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_762
	test	rax, rax
	mov	rbp, rbp
	je	.label_761
.label_762:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_761:
	call	xalloc_die
.label_766:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d610
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_769
	test	rax, rax
	mov	rbp, rbp
	je	.label_768
.label_769:
	pop	rbx
	ret	
.label_768:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40d630
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_773
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_774
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_772
	call	free
	xor	eax, eax
	jmp	.label_770
.label_773:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_771
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_772:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_770
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_771
.label_770:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_771:
	mov	rbp, rbp
	call	xalloc_die
.label_774:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d6c0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rdi
	nop	
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_775
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_776
.label_775:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	memset
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
.label_776:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d720
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rdi
	mov	rsp, rsp
	jb	.label_777
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_777
	pop	rcx
	ret	
.label_777:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d750

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_779
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_778
.label_779:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	rax, r15
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_778:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d7b0
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	mov	rbp, rbp
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	inc	rbx
	lea	rsi, [rsi]
	je	.label_780
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_781
.label_780:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	nop	
	pop	r15
	nop	
	ret	
.label_781:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d810

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_5
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d860

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_782
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_783
	lea	rdi, [rdi]
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	mov	rsp, rsp
	cmp	rax, rdi
	nop	
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_783
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
.label_782:
	mov	ecx, 1
.label_783:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d8d0

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	mov	rsp, rsp
	je	.label_784
	nop	
	cmp	r15, -2
	jb	.label_784
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_784
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_784:
	mov	rbp, rbp
	mov	rax, r15
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d960

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	mov	rbp, rbp
	je	.label_785
	mov	rbp, rbp
	mov	rdi, r14
	call	strlen
	nop	
	mov	r15, rax
	inc	r15
.label_785:
	lea	rdi, [rdi]
	lea	rax, [r15 + 0x11]
	nop	
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	nop	
	cmovae	rdi, rax
	lea	rdi, [rdi]
	call	malloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	je	.label_786
	mov	rsp, rsp
	mov	qword ptr [rbx], 0
	test	r14, r14
	lea	rdi, [rdi]
	setne	byte ptr [rbx + 8]
	nop	
	mov	byte ptr [rbx + 9], 0
	lea	rsi, [rsi]
	je	.label_786
	mov	r12, rbx
	mov	rbp, rbp
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	lea	rsi, [rsi]
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_786:
	mov	rax, rbx
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40da10

	.globl tzfree
	.type tzfree, @function
tzfree:
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	cmp	rdi, 2
	jb	.label_787
	nop	dword ptr [rax]
.label_788:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	jne	.label_788
.label_787:
	mov	rsp, rsp
	pop	rbx
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40da40

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbp, rsi
	nop	
	mov	rbx, rdi
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_789
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_791
	mov	rdi, rbp
	mov	rsi, r15
	nop	
	call	localtime_r
	nop	
	mov	bpl, 1
	mov	rbp, rbp
	test	rax, rax
	je	.label_790
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r15
	call	save_abbr
	lea	rdi, [rdi]
	mov	bpl, al
	xor	bpl, 1
.label_790:
	mov	rdi, r14
	lea	rdi, [rdi]
	call	revert_tz
	mov	rbp, rbp
	xor	ecx, ecx
	xor	al, 1
	mov	rbp, rbp
	cmovne	r15, rcx
	nop	
	test	bpl, bpl
	lea	rsi, [rsi]
	cmovne	r15, rcx
	lea	rdi, [rdi]
	mov	rax, r15
	jmp	.label_792
.label_789:
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, r15
	lea	rdi, [rdi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	jmp	gmtime_r
.label_791:
	xor	eax, eax
.label_792:
	nop	
	add	rsp, 8
	pop	rbx
	nop	
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40db20

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r14, rdi
	mov	edi, OFFSET FLAT:.str_5
	call	getenv
	mov	r15, rax
	test	r15, r15
	mov	bl, byte ptr [r14 + 8]
	je	.label_795
	lea	rdi, [rdi]
	test	bl, bl
	lea	rsi, [rsi]
	je	.label_797
	lea	rdi, [rdi]
	lea	rdi, [r14 + 9]
	lea	rsi, [rsi]
	mov	rsi, r15
	call	strcmp
	mov	ecx, eax
	mov	rsp, rsp
	mov	eax, 1
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_794
.label_797:
	lea	rdi, [rdi]
	mov	rdi, r15
	call	strlen
	mov	r12, rax
	inc	r12
	mov	rsp, rsp
	mov	bpl, 1
	mov	rbp, rbp
	jmp	.label_796
.label_795:
	lea	rsi, [rsi]
	xor	ebp, ebp
	mov	eax, 1
	nop	
	test	bl, bl
	nop	
	mov	r12d, 0
	mov	rbp, rbp
	je	.label_794
.label_796:
	lea	rsi, [rsi]
	lea	rax, [r12 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r12, 0x77
	mov	edi, 0x80
	lea	rsi, [rsi]
	cmovae	rdi, rax
	mov	rsp, rsp
	call	malloc
	nop	
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	mov	rbp, rbp
	je	.label_794
	lea	rdi, [rdi]
	mov	qword ptr [r13], 0
	lea	rsi, [rsi]
	mov	byte ptr [r13 + 8], bpl
	mov	rbp, rbp
	mov	byte ptr [r13 + 9], 0
	lea	rsi, [rsi]
	test	bpl, bpl
	je	.label_801
	nop	
	lea	rbp, [r13 + 9]
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, r12
	call	memcpy
	nop	
	mov	byte ptr [rbp + r12], 0
.label_801:
	lea	rdi, [rdi]
	test	bl, bl
	lea	rdi, [rdi]
	je	.label_802
	mov	rbp, rbp
	add	r14, 9
	mov	edi, OFFSET FLAT:.str_5
	mov	rsp, rsp
	mov	edx, 1
	mov	rsi, r14
	call	setenv
	mov	rsp, rsp
	jmp	.label_798
.label_802:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_5
	mov	rbp, rbp
	call	unsetenv
.label_798:
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	je	.label_800
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	r14, rax
	mov	rsp, rsp
	mov	ebp, dword ptr [r14]
	mov	rsp, rsp
	cmp	r13, 2
	jb	.label_793
	nop	word ptr cs:[rax + rax]
.label_799:
	mov	rbx, qword ptr [r13]
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_799
.label_793:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_794
.label_800:
	nop	
	call	tzset
	lea	rdi, [rdi]
	mov	rax, r13
.label_794:
	nop	
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dcf0

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rbp, rbp
	mov	r14b, 1
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_807
	cmp	r15, rbx
	ja	.label_813
	nop	
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	lea	rsi, [rsi]
	jb	.label_807
.label_813:
	mov	ebp, OFFSET FLAT:.str_0
	nop	
	cmp	byte ptr [rbx], 0
	je	.label_803
	lea	rbp, [r12 + 9]
	jmp	.label_805
.label_804:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	mov	rbp, rbp
	cmovne	r12, rax
.label_805:
	lea	r13, [r12 + 9]
.label_815:
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_803
	cmp	byte ptr [rbp], 0
	mov	rsp, rsp
	jne	.label_806
	lea	rsi, [rsi]
	cmp	rbp, r13
	jne	.label_808
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + 8], 0
	je	.label_811
.label_806:
	mov	rbp, rbp
	mov	rdi, rbp
	call	strlen
	nop	
	lea	rcx, [rax + rbp + 1]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + rbp + 1], 0
	mov	rbp, rcx
	jne	.label_815
	lea	rdi, [rdi]
	jmp	.label_804
.label_811:
	lea	rdi, [rdi]
	mov	rbp, r13
.label_808:
	mov	rdi, rbx
	mov	rbp, rbp
	call	strlen
	lea	rdx, [rax + 1]
	nop	
	mov	rcx, rbp
	lea	rsi, [rsi]
	sub	rcx, r13
	mov	rbp, rbp
	mov	rsi, rcx
	not	rsi
	lea	rsi, [rsi]
	cmp	rdx, rsi
	jbe	.label_812
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
.label_810:
	xor	r14d, r14d
	jmp	.label_807
.label_812:
	add	rcx, rdx
	mov	rbp, rbp
	cmp	rcx, 0x76
	ja	.label_809
	nop	
	mov	rdi, rbp
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	mov	qword ptr [r15 + 0x30], rbp
	jmp	.label_807
.label_809:
	add	rax, 0x12
	lea	rdi, [rdi]
	and	rax, 0xfffffffffffffff8
	lea	rsi, [rsi]
	cmp	rdx, 0x77
	mov	rsp, rsp
	mov	r13, rdx
	mov	rbp, rbp
	mov	edi, 0x80
	cmovae	rdi, rax
	mov	rsp, rsp
	call	malloc
	mov	rbp, rbp
	test	rax, rax
	je	.label_814
	nop	
	mov	qword ptr [rax], 0
	mov	word ptr [rax + 8], 1
	lea	rsi, [rsi]
	mov	rbp, rax
	add	rbp, 9
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, r13
	mov	rbx, rax
	mov	rsp, rsp
	call	memcpy
	mov	byte ptr [rbx + r13 + 9], 0
	mov	qword ptr [r12], rbx
	mov	byte ptr [rbx + 8], 0
.label_803:
	mov	qword ptr [r15 + 0x30], rbp
.label_807:
	mov	rbp, rbp
	mov	al, r14b
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_814:
	mov	qword ptr [r12], 0
	jmp	.label_810
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40def0

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	mov	rbp, rdi
	mov	r12b, 1
	cmp	rbp, 1
	je	.label_820
	nop	
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	r15d, dword ptr [r14]
	lea	rsi, [rsi]
	cmp	byte ptr [rbp + 8], 0
	je	.label_822
	lea	rsi, [rbp + 9]
	mov	edi, OFFSET FLAT:.str_5
	mov	edx, 1
	call	setenv
	jmp	.label_817
.label_822:
	mov	edi, OFFSET FLAT:.str_5
	call	unsetenv
.label_817:
	test	eax, eax
	je	.label_819
	mov	r15d, dword ptr [r14]
	xor	r12d, r12d
	jmp	.label_821
.label_819:
	call	tzset
	mov	r12b, 1
.label_821:
	cmp	rbp, 2
	mov	rsp, rsp
	jb	.label_816
	nop	dword ptr [rax]
.label_818:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp]
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_818
.label_816:
	mov	dword ptr [r14], r15d
.label_820:
	mov	al, r12b
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dfb0

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	nop	
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x40
	nop	
	mov	r15, rsi
	mov	rbx, rdi
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_825
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	set_tz
	mov	r14, rax
	mov	rbp, rbp
	test	r14, r14
	je	.label_826
	mov	rdi, r15
	lea	rsi, [rsi]
	call	mktime
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, rbp
	cmp	rax, -1
	jne	.label_827
	nop	
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp]
	call	localtime_r
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_824
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	xor	rax, qword ptr [r15]
	mov	rsp, rsp
	xor	rcx, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	edx, ecx
	or	edx, eax
	lea	rsi, [rsi]
	shr	rax, 0x20
	or	edx, eax
	nop	
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x10]
	xor	rax, qword ptr [r15 + 0x10]
	mov	esi, eax
	or	esi, ecx
	lea	rsi, [rsi]
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	edi, dword ptr [r15 + 0x20]
	nop	
	mov	edx, dword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	test	edi, edi
	lea	rsi, [rsi]
	sete	sil
	test	edx, edx
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	xor	cl, sil
	or	edx, edi
	setns	dl
	and	dl, cl
	movzx	ecx, dl
	lea	rdi, [rdi]
	or	ecx, eax
	jne	.label_824
.label_827:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r15
	call	save_abbr
	nop	
	test	al, al
	lea	rdi, [rdi]
	jne	.label_824
	mov	qword ptr [rsp + 0x38], -1
.label_824:
	mov	rdi, r14
	mov	rbp, rbp
	call	revert_tz
	test	al, al
	mov	rsp, rsp
	je	.label_826
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x38]
	jmp	.label_823
.label_826:
	lea	rdi, [rdi]
	mov	rax, -1
.label_823:
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r14
	pop	r15
	ret	
.label_825:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	jmp	timegm
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e120

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	__fpending
	nop	
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rbp, rbp
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	nop	
	jne	.label_828
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_829
	test	cl, cl
	mov	rsp, rsp
	jne	.label_829
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_829
.label_828:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_829
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_829:
	mov	eax, ebx
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e1b0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbx
	lea	rdi, [rdi]
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_831
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_830
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_832
.label_830:
	nop	
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_831
.label_832:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_831:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e200

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	mov	edi, 0xe
	mov	rbp, rbp
	call	rpl_nl_langinfo
	test	rax, rax
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str_0
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_7
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_833
	nop	
	mov	rax, rcx
.label_833:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e240

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	nop	
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], r9d
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r8
	mov	dword ptr [rsp], 0xffffffff
	nop	
	xor	r8d, r8d
	lea	rdi, [rdi]
	xor	r9d, r9d
	lea	rdi, [rdi]
	call	__strftime_internal
	add	rsp, 0x18
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e280

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x4a8
	mov	dword ptr [rsp + 0x480], r8d
	mov	rbp, rbp
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x48], rsi
	mov	eax, dword ptr [rcx + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 0x30]
	test	rdx, rdx
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_0
	cmovne	rsi, rdx
	nop	
	lea	edx, [rax - 0xc]
	test	eax, eax
	mov	ebx, 0xc
	cmovne	ebx, eax
	mov	rbp, rbp
	cmp	eax, 0xc
	cmovg	ebx, edx
	mov	al, byte ptr [rbp]
	test	al, al
	mov	rsp, rsp
	je	.label_951
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x464], ebx
	mov	qword ptr [rsp + 0x478], rsi
	mov	qword ptr [rsp + 0x18], rcx
	mov	dword ptr [rsp + 0x484], r9d
	mov	r14d, dword ptr [rsp + 0x4e0]
	movabs	r15, 0x1000000000002500
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_885
.label_951:
	xor	esi, esi
	nop	
	jmp	.label_975
.label_1001:
	mov	rbp, rbp
	mov	edi, 3
	jmp	.label_978
	nop	word ptr cs:[rax + rax]
.label_885:
	lea	rsi, [rsi]
	movzx	ecx, al
	xor	r12d, r12d
	cmp	ecx, 0x25
	jne	.label_987
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x458], rsi
	nop	
	mov	eax, dword ptr [rsp + 0x480]
	mov	rbp, rbp
	mov	bl, al
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_848
	nop	word ptr cs:[rax + rax]
.label_987:
	mov	rbp, rbp
	test	r14d, r14d
	mov	rsp, rsp
	mov	ecx, r14d
	mov	rsp, rsp
	mov	edx, 0
	nop	
	cmovs	ecx, edx
	nop	
	movsxd	rbx, ecx
	lea	rdi, [rdi]
	cmp	ebx, 1
	mov	edx, 1
	nop	
	cmovbe	rbx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x48]
	sub	rdx, rsi
	mov	rbp, rbp
	cmp	rbx, rdx
	mov	rbp, rbp
	jae	.label_862
	mov	rsp, rsp
	test	rdi, rdi
	nop	
	mov	edx, 0
	mov	rsp, rsp
	je	.label_970
	lea	rsi, [rsi]
	cmp	ecx, 2
	mov	rsp, rsp
	jb	.label_1004
	nop	
	movsxd	r14, r14d
	lea	rsi, [rsi]
	lea	rdx, [r14 - 1]
	mov	r12, rsi
	mov	esi, 0x20
	mov	r13, rdi
	nop	
	call	memset
	mov	rdi, r13
	mov	rsi, r12
	lea	rsi, [rsi]
	lea	rdi, [rdi + r14 - 1]
	mov	al, byte ptr [rbp]
.label_1004:
	mov	rsp, rsp
	mov	byte ptr [rdi], al
.label_842:
	inc	rdi
	mov	rsp, rsp
	mov	rdx, rdi
.label_970:
	add	rsi, rbx
	mov	rdi, rdx
	nop	
	jmp	.label_843
	nop	dword ptr [rax]
.label_859:
	lea	rdi, [rdi]
	mov	r12b, 1
	mov	rsp, rsp
	mov	al, bl
	nop	
	jmp	.label_848
	nop	
.label_935:
	inc	rbp
	nop	
	mov	r13d, edx
.label_870:
	mov	cl, byte ptr [rbp]
	movsx	edx, cl
	lea	rsi, [rsi]
	lea	esi, [rdx - 0x23]
	cmp	esi, 0x3c
	lea	rsi, [rsi]
	ja	.label_854
	bt	r15, rsi
	jb	.label_935
	mov	al, 1
	lea	rdi, [rdi]
	test	rsi, rsi
	nop	
	je	.label_859
	mov	rbp, rbp
	cmp	rsi, 0x3b
	mov	rbp, rbp
	jne	.label_854
.label_848:
	lea	rsi, [rsi]
	mov	bl, al
	lea	rdi, [rdi]
	inc	rbp
	jmp	.label_870
	nop	word ptr cs:[rax + rax]
.label_854:
	nop	
	mov	qword ptr [rsp + 0x40], rdi
	add	edx, -0x30
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 9
	nop	
	ja	.label_990
	nop	word ptr [rax + rax]
.label_891:
	lea	rsi, [rsi]
	mov	r14d, 0x7fffffff
	mov	rbp, rbp
	cmp	eax, 0xccccccc
	lea	rdi, [rdi]
	jg	.label_881
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	jne	.label_886
	mov	rsp, rsp
	lea	edx, [rcx - 0x30]
	lea	rdi, [rdi]
	cmp	edx, 7
	jg	.label_881
.label_886:
	lea	eax, [rax + rax*4]
	lea	r14d, [rcx + rax*2 - 0x30]
.label_881:
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rbp + 1]
	nop	
	inc	rbp
	mov	eax, ecx
	mov	rbp, rbp
	add	eax, -0x30
	mov	rbp, rbp
	cmp	eax, 0xa
	mov	rsp, rsp
	mov	eax, r14d
	lea	rdi, [rdi]
	jb	.label_891
.label_990:
	mov	rbp, rbp
	movsx	r9d, cl
	cmp	r9d, 0x4f
	lea	rsi, [rsi]
	je	.label_939
	lea	rsi, [rsi]
	cmp	r9d, 0x45
	jne	.label_852
.label_939:
	mov	qword ptr [rsp + 0x488], rbx
	nop	
	mov	cl, byte ptr [rbp + 1]
	lea	rdi, [rdi]
	inc	rbp
	jmp	.label_898
.label_852:
	nop	
	mov	qword ptr [rsp + 0x488], rbx
	xor	r9d, r9d
.label_898:
	movsx	r11d, cl
	xor	ebx, ebx
	mov	esi, 1
	lea	rdi, [rdi]
	lea	edx, [r11 - 0x25]
	mov	rsp, rsp
	cmp	edx, 0x55
	lea	rsi, [rsi]
	ja	.label_901
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.3_3
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x498], rax
	nop	
	mov	r8b, 0x72
	mov	r10d, 0xffffffff
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	xor	edi, edi
	jmp	qword ptr [(rdx * 8) + label_905]
.label_1091:
	mov	r10d, r9d
	cmp	r10d, 0x45
	lea	rsi, [rsi]
	je	.label_841
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r8d, dword ptr [rdx + 0x14]
	mov	rsp, rsp
	mov	r9d, dword ptr [rdx + 0x18]
	mov	rsp, rsp
	mov	eax, r8d
	mov	rsp, rsp
	sar	eax, 0x1f
	and	eax, 0x190
	nop	
	lea	r12d, [r8 + rax - 0x64]
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rdx + 0x1c]
	mov	rbp, rbp
	lea	eax, [rbx + 0x17e]
	sub	eax, r9d
	movsxd	rdx, eax
	mov	rbp, rbp
	imul	rax, rdx, -0x6db6db6d
	shr	rax, 0x20
	add	eax, edx
	mov	edi, eax
	mov	rbp, rbp
	shr	edi, 0x1f
	sar	eax, 2
	lea	rsi, [rsi]
	add	eax, edi
	lea	edi, [rax*8]
	mov	rsp, rsp
	sub	edi, eax
	sub	edx, edi
	lea	eax, [rbx + 3]
	sub	eax, edx
	js	.label_915
	mov	edx, 0x16d
	nop	
	test	r12b, 3
	nop	
	jne	.label_933
	mov	rbp, rbp
	movsxd	rdx, r12d
	lea	rsi, [rsi]
	imul	rdx, rdx, 0x51eb851f
	lea	rdi, [rdi]
	mov	rdi, rdx
	sar	rdi, 0x25
	lea	rdi, [rdi]
	mov	rsi, rdx
	mov	rbp, rbp
	shr	rsi, 0x3f
	add	edi, esi
	imul	edi, edi, 0x64
	sar	rdx, 0x27
	lea	rdi, [rdi]
	add	edx, esi
	imul	edx, edx, 0x190
	cmp	r12d, edx
	lea	rdi, [rdi]
	sete	dl
	movzx	esi, dl
	add	esi, 0x16d
	nop	
	cmp	r12d, edi
	mov	edx, 0x16e
	cmove	edx, esi
.label_933:
	sub	ebx, edx
	lea	edx, [rbx + 0x17e]
	lea	rsi, [rsi]
	sub	edx, r9d
	nop	
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	nop	
	shr	rsi, 0x20
	add	esi, edx
	nop	
	mov	edi, esi
	mov	rbp, rbp
	shr	edi, 0x1f
	lea	rsi, [rsi]
	sar	esi, 2
	mov	rsp, rsp
	add	esi, edi
	lea	edi, [rsi*8]
	sub	edi, esi
	mov	rbp, rbp
	sub	edx, edi
	nop	
	add	ebx, 3
	sub	ebx, edx
	cmovns	eax, ebx
	nop	
	shr	ebx, 0x1f
	xor	ebx, 1
	mov	rbp, rbp
	jmp	.label_949
	nop	word ptr [rax + rax]
.label_967:
	inc	rsi
.label_1085:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp + rsi]
	cmp	eax, 0x3a
	je	.label_967
	movzx	eax, al
	cmp	eax, 0x7a
	jne	.label_841
	lea	rsi, [rsi]
	add	rbp, rsi
	mov	rbx, rsi
.label_1122:
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	cmp	dword ptr [rax + 0x20], 0
	js	.label_972
	mov	r8d, dword ptr [rax + 0x28]
	mov	sil, 1
	lea	rdi, [rdi]
	test	r8d, r8d
	mov	rsp, rsp
	js	.label_974
	test	r8d, r8d
	nop	
	je	.label_971
	mov	rsp, rsp
	xor	esi, esi
	jmp	.label_974
.label_1105:
	test	r12b, r12b
	je	.label_986
	mov	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x488], rax
.label_986:
	xor	eax, eax
	cmp	r9d, 0x45
	je	.label_841
	lea	rdi, [rdi]
	mov	r8b, cl
	mov	rsp, rsp
	jmp	.label_849
.label_901:
	lea	rsi, [rsi]
	test	r11d, r11d
	nop	
	jne	.label_841
	mov	rsp, rsp
	dec	rbp
	lea	rdi, [rdi]
	jmp	.label_841
.label_1084:
	mov	rbp, rbp
	test	r9d, r9d
	lea	rsi, [rsi]
	jne	.label_841
	xor	eax, eax
	test	r14d, r14d
	nop	
	cmovns	eax, r14d
	movsxd	rdx, eax
	cmp	edx, 1
	mov	rsp, rsp
	mov	ebx, 1
	nop	
	cmova	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x458]
	sub	rdx, rsi
	nop	
	cmp	rbx, rdx
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	jae	.label_862
	xor	edx, edx
	test	rdi, rdi
	je	.label_970
	cmp	eax, 2
	mov	rbp, rbp
	jb	.label_985
	movsxd	r14, r14d
	dec	r14
	cmp	r13d, 0x30
	je	.label_994
	cmp	r13d, 0x2b
	mov	rsp, rsp
	jne	.label_1007
.label_994:
	mov	r12, rsi
	mov	esi, 0x30
	jmp	.label_836
.label_1086:
	lea	rdi, [rdi]
	test	r9d, r9d
	nop	
	jne	.label_841
	lea	rdi, [rdi]
	test	r12b, r12b
	je	.label_844
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x488], rax
.label_844:
	xor	eax, eax
	mov	r8b, 0x41
	nop	
	jmp	.label_849
.label_1087:
	cmp	r9d, 0x45
	je	.label_841
	nop	
	test	r12b, r12b
	je	.label_855
	mov	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x488], rax
.label_855:
	xor	eax, eax
	mov	r8b, 0x42
	nop	
	jmp	.label_849
.label_1088:
	mov	rsp, rsp
	mov	r10d, r9d
	cmp	r10d, 0x45
	jne	.label_861
	mov	rbp, rbp
	mov	r9d, r10d
	mov	rsp, rsp
	xor	eax, eax
	mov	r8b, 0x43
	jmp	.label_849
.label_1089:
	test	r9d, r9d
	nop	
	jne	.label_841
	nop	
	mov	eax, OFFSET FLAT:.str.1_8
	mov	qword ptr [rsp + 0x498], rax
	lea	rsi, [rsi]
	mov	r10d, 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_875
.label_1090:
	test	r9d, r9d
	jne	.label_841
	lea	rsi, [rsi]
	test	r13d, r13d
	jne	.label_879
	test	r14d, r14d
	mov	rbp, rbp
	jns	.label_879
	mov	eax, OFFSET FLAT:.str.2_4
	mov	qword ptr [rsp + 0x498], rax
	mov	rbp, rbp
	mov	r13d, 0x2b
	mov	r10d, 4
	mov	rbp, rbp
	jmp	.label_875
.label_1092:
	mov	rbp, rbp
	mov	r10d, r9d
	lea	rdi, [rdi]
	cmp	r10d, 0x45
	je	.label_841
	mov	rax, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rax + 8]
	mov	rbp, rbp
	jmp	.label_838
.label_1093:
	nop	
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_841
	mov	edi, 2
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x464]
	mov	edx, eax
	lea	rsi, [rsi]
	jmp	.label_876
.label_1094:
	mov	r10d, r9d
	cmp	r10d, 0x45
	lea	rsi, [rsi]
	je	.label_841
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rax + 4]
	jmp	.label_838
.label_1095:
	mov	r10d, r9d
	lea	rsi, [rsi]
	cmp	r10d, 0x45
	nop	
	je	.label_841
	lea	rsi, [rsi]
	cmp	r14d, -1
	je	.label_908
	lea	rsi, [rsi]
	cmp	r14d, 8
	jg	.label_910
	mov	esi, 9
	sub	esi, r14d
	nop	
	mov	eax, 8
	lea	rdi, [rdi]
	sub	eax, r14d
	nop	
	test	sil, 3
	mov	edx, dword ptr [rsp + 0x4f0]
	lea	rdi, [rdi]
	mov	ebx, r14d
	mov	rbp, rbp
	je	.label_912
	and	esi, 3
	neg	esi
	mov	edx, dword ptr [rsp + 0x4f0]
	lea	rdi, [rdi]
	mov	ebx, r14d
	nop	dword ptr [rax]
.label_921:
	movsxd	rdx, edx
	imul	rdx, rdx, 0x66666667
	mov	rdi, rdx
	mov	rbp, rbp
	shr	rdi, 0x3f
	lea	rdi, [rdi]
	sar	rdx, 0x22
	mov	rsp, rsp
	add	edx, edi
	inc	ebx
	inc	esi
	lea	rdi, [rdi]
	jne	.label_921
.label_912:
	cmp	eax, 3
	lea	rsi, [rsi]
	jae	.label_952
	mov	edi, r14d
	jmp	.label_876
.label_1096:
	mov	rsp, rsp
	mov	dil, 1
.label_1114:
	xor	ebx, ebx
	test	r12b, r12b
	lea	rsi, [rsi]
	je	.label_932
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x488], rax
.label_932:
	je	.label_936
	mov	rbp, rbp
	mov	dil, 1
.label_936:
	mov	r8b, 0x70
	lea	rdi, [rdi]
	mov	al, dil
	mov	rsp, rsp
	jmp	.label_937
.label_1097:
	mov	r10d, r9d
	mov	rbp, rbp
	cmp	r10d, 0x45
	je	.label_841
	mov	rax, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rax]
	jmp	.label_838
.label_1098:
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.4_3
.label_869:
	nop	
	mov	qword ptr [rsp + 0x498], rax
.label_875:
	mov	dword ptr [rsp + 0x4a0], r10d
	mov	rax, qword ptr [rsp + 0x488]
	lea	rdi, [rdi]
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], ecx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x4e8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rcx
	mov	rsp, rsp
	mov	dword ptr [rsp], r10d
	movzx	r8d, al
	xor	ebx, ebx
	xor	edi, edi
	nop	
	mov	rsi, -1
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x498]
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	r9d, r13d
	call	__strftime_internal
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	test	r14d, r14d
	lea	rdi, [rdi]
	cmovns	ebx, r14d
	mov	rbp, rbp
	movsxd	rdx, ebx
	mov	rsp, rsp
	cmp	rax, rdx
	lea	rsi, [rsi]
	mov	rbx, rax
	cmovb	rbx, rdx
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x458]
	nop	
	sub	r12, rsi
	lea	rdi, [rdi]
	cmp	rbx, r12
	jae	.label_862
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_863
	cmp	rax, rdx
	lea	rdi, [rdi]
	jae	.label_982
	movsxd	rcx, r14d
	lea	rdi, [rdi]
	sub	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x468], rax
	mov	rsp, rsp
	cmp	r13d, 0x30
	je	.label_984
	lea	rsi, [rsi]
	cmp	r13d, 0x2b
	mov	rbp, rbp
	jne	.label_988
.label_984:
	mov	esi, 0x30
	jmp	.label_992
.label_1099:
	mov	r10d, r9d
	lea	rsi, [rsi]
	cmp	r10d, 0x45
	mov	rsp, rsp
	je	.label_841
	mov	rdx, qword ptr [rsp + 0x18]
	nop	
	mov	eax, dword ptr [rdx + 0x1c]
	add	eax, 7
	sub	eax, dword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	movsxd	rdx, eax
	lea	rsi, [rsi]
	jmp	.label_888
.label_1100:
	mov	rbp, rbp
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_841
	mov	rdx, qword ptr [rsp + 0x18]
	nop	
	mov	eax, dword ptr [rdx + 0x18]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rdx + 0x1c]
	lea	esi, [rax + 6]
	movsxd	rsi, esi
	lea	rsi, [rsi]
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	lea	eax, [rdi + rax + 6]
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rsi, [rsi]
	shr	edi, 0x1f
	sar	eax, 2
	add	eax, edi
	lea	rsi, [rsi]
	lea	edi, [rax*8]
	sub	edi, eax
	sub	esi, edi
	lea	rdi, [rdi]
	add	edx, 7
	mov	rsp, rsp
	sub	edx, esi
	movsxd	rdx, edx
.label_888:
	imul	rax, rdx, -0x6db6db6d
	lea	rdi, [rdi]
	shr	rax, 0x20
	add	edx, eax
	mov	rsp, rsp
	mov	eax, edx
	shr	eax, 0x1f
	lea	rdi, [rdi]
	sar	edx, 2
	mov	rsp, rsp
	add	edx, eax
	jmp	.label_838
.label_1101:
	cmp	r9d, 0x4f
	je	.label_841
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	r8b, 0x58
	jmp	.label_849
.label_1102:
	lea	rsi, [rsi]
	mov	r10d, r9d
	cmp	r10d, 0x45
	mov	rbp, rbp
	je	.label_853
	mov	rbp, rbp
	cmp	r10d, 0x4f
	mov	rbp, rbp
	je	.label_841
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 0x14]
	cmp	edx, 0xfffff894
	setl	sil
	nop	
	add	edx, 0x76c
	nop	
	mov	edi, 4
	jmp	.label_860
.label_1103:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x478]
	nop	
	call	strlen
	mov	rdi, qword ptr [rsp + 0x40]
	mov	r9, rax
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	mov	rsp, rsp
	cdqe	
	lea	rsi, [rsi]
	cmp	r9, rax
	mov	rbx, r9
	cmovb	rbx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rsp, rsp
	sub	rcx, rsi
	mov	rsp, rsp
	cmp	rbx, rcx
	jae	.label_862
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_863
	nop	
	cmp	r9, rax
	nop	
	jae	.label_892
	lea	rsi, [rsi]
	movsxd	r14, r14d
	lea	rsi, [rsi]
	sub	r14, r9
	mov	qword ptr [rsp + 0x498], r9
	cmp	r13d, 0x30
	lea	rsi, [rsi]
	je	.label_893
	cmp	r13d, 0x2b
	lea	rdi, [rdi]
	jne	.label_897
.label_893:
	mov	esi, 0x30
	jmp	.label_899
.label_1104:
	test	r9d, r9d
	lea	rsi, [rsi]
	jne	.label_841
	nop	
	test	r12b, r12b
	je	.label_900
	mov	al, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x488], rax
.label_900:
	xor	eax, eax
	mov	r8b, 0x61
	jmp	.label_849
.label_1106:
	cmp	r9d, 0x4f
	je	.label_841
	xor	eax, eax
	nop	
	mov	r8b, 0x63
	jmp	.label_849
.label_1107:
	mov	r10d, r9d
	nop	
	cmp	r10d, 0x45
	lea	rsi, [rsi]
	je	.label_841
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	mov	edx, dword ptr [rax + 0xc]
	lea	rsi, [rsi]
	jmp	.label_838
.label_1108:
	mov	r10d, r9d
	mov	rbp, rbp
	cmp	r10d, 0x45
	je	.label_841
	mov	rax, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rax + 0xc]
	mov	rbp, rbp
	jmp	.label_917
.label_1109:
	mov	rsp, rsp
	mov	r10d, r9d
	lea	rdi, [rdi]
	cmp	r10d, 0x45
	je	.label_841
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax + 0x1c]
	cmp	edx, -1
	setl	sil
	mov	rsp, rsp
	inc	edx
	mov	edi, 3
	jmp	.label_920
.label_1110:
	nop	
	mov	r10d, r9d
	nop	
	cmp	r10d, 0x45
	je	.label_841
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	edx, dword ptr [rax + 8]
	nop	
	jmp	.label_917
.label_1111:
	mov	r10d, r9d
	cmp	r10d, 0x45
	mov	eax, dword ptr [rsp + 0x464]
	nop	
	mov	edx, eax
	lea	rdi, [rdi]
	je	.label_841
.label_917:
	test	r13d, r13d
	mov	eax, 0x5f
	lea	rdi, [rdi]
	cmove	r13d, eax
	lea	rdi, [rdi]
	jmp	.label_838
.label_1112:
	mov	rbp, rbp
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_841
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	mov	edx, dword ptr [rax + 0x10]
	cmp	edx, -1
	lea	rdi, [rdi]
	setl	sil
	inc	edx
	lea	rsi, [rsi]
	mov	edi, 2
	mov	rbp, rbp
	jmp	.label_920
.label_1113:
	xor	eax, eax
	nop	
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	lea	rdi, [rdi]
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	nop	
	mov	rsi, qword ptr [rsp + 0x458]
	nop	
	sub	rcx, rsi
	cmp	rbx, rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	jae	.label_862
	lea	rsi, [rsi]
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_863
	cmp	eax, 2
	jb	.label_962
	mov	r12, rsi
	lea	rdi, [rdi]
	movsxd	r14, r14d
	mov	rsp, rsp
	dec	r14
	cmp	r13d, 0x30
	je	.label_963
	cmp	r13d, 0x2b
	nop	
	jne	.label_966
.label_963:
	mov	esi, 0x30
	jmp	.label_968
.label_1115:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	imul	edx, dword ptr [rax + 0x10], 0xb
	lea	rsi, [rsi]
	sar	edx, 5
	inc	edx
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rdi, [rdi]
	xor	r8d, r8d
	xor	esi, esi
	mov	r10d, r9d
	jmp	.label_887
.label_1116:
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x80], rax
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rcx]
	nop	
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x70], xmm2
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	rbp, rbp
	lea	rsi, [rsp + 0x50]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x4e8]
	lea	rdi, [rdi]
	call	mktime_z
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	rsi, rcx
	shr	rsi, 0x3f
	mov	rbp, rbp
	lea	r12, [rsp + 0x37]
	nop	word ptr cs:[rax + rax]
.label_996:
	nop	
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	mov	rsp, rsp
	imul	rdx
	lea	rsi, [rsi]
	mov	rax, rdx
	mov	rbp, rbp
	shr	rax, 0x3f
	lea	rdi, [rdi]
	sar	rdx, 2
	lea	edi, [rdx + rax]
	lea	rdi, [rdi]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebx, ecx
	sub	ebx, edi
	add	rdx, rax
	mov	eax, ebx
	lea	rdi, [rdi]
	neg	eax
	mov	rsp, rsp
	test	rsi, rsi
	cmove	eax, ebx
	add	eax, 0x30
	lea	rdi, [rdi]
	mov	byte ptr [r12 - 1], al
	dec	r12
	mov	rsp, rsp
	add	rcx, 9
	cmp	rcx, 0x12
	lea	rdi, [rdi]
	mov	rcx, rdx
	ja	.label_996
	mov	r10d, 1
	nop	
	xor	r8d, r8d
	mov	rsp, rsp
	jmp	.label_839
.label_1117:
	xor	eax, eax
	mov	rsp, rsp
	test	r14d, r14d
	cmovns	eax, r14d
	mov	rbp, rbp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	mov	rbp, rbp
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rbp, rbp
	sub	rcx, rsi
	lea	rdi, [rdi]
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	jae	.label_862
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_863
	lea	rsi, [rsi]
	cmp	eax, 2
	jb	.label_867
	mov	r12, rsi
	lea	rsi, [rsi]
	movsxd	r14, r14d
	nop	
	dec	r14
	cmp	r13d, 0x30
	je	.label_871
	cmp	r13d, 0x2b
	mov	rsp, rsp
	jne	.label_874
.label_871:
	mov	esi, 0x30
	nop	
	jmp	.label_999
.label_1118:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x18]
	lea	edx, [rax + 6]
	mov	rbp, rbp
	movsxd	rdx, edx
	lea	rsi, [rsi]
	imul	rsi, rdx, -0x6db6db6d
	mov	rbp, rbp
	shr	rsi, 0x20
	mov	rbp, rbp
	lea	eax, [rsi + rax + 6]
	mov	esi, eax
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	lea	esi, [rax*8]
	sub	esi, eax
	nop	
	sub	edx, esi
	inc	edx
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	mov	r10d, r9d
	jmp	.label_876
.label_1119:
	mov	r10d, r9d
	cmp	r10d, 0x45
	mov	rbp, rbp
	je	.label_841
	mov	rax, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rax + 0x18]
	mov	edi, 1
	lea	rsi, [rsi]
	jmp	.label_876
.label_1120:
	mov	rbp, rbp
	cmp	r9d, 0x4f
	lea	rdi, [rdi]
	je	.label_841
	mov	rsp, rsp
	xor	eax, eax
	mov	r8b, 0x78
	mov	rbp, rbp
	jmp	.label_849
.label_1121:
	lea	rdi, [rdi]
	mov	r10d, r9d
	lea	rsi, [rsi]
	cmp	r10d, 0x45
	jne	.label_902
	mov	r9d, r10d
	xor	eax, eax
	lea	rdi, [rdi]
	mov	r8b, 0x79
	lea	rsi, [rsi]
	jmp	.label_849
.label_982:
	nop	
	mov	qword ptr [rsp + 0x468], rax
	lea	rdi, [rdi]
	jmp	.label_907
.label_915:
	dec	r12d
	mov	eax, 0x16d
	test	r12b, 3
	jne	.label_909
	mov	rsp, rsp
	movsxd	rax, r12d
	imul	rax, rax, 0x51eb851f
	mov	rdx, rax
	sar	rdx, 0x25
	mov	rdi, rax
	shr	rdi, 0x3f
	mov	rbp, rbp
	add	edx, edi
	mov	rbp, rbp
	imul	edx, edx, 0x64
	sar	rax, 0x27
	add	eax, edi
	imul	eax, eax, 0x190
	lea	rsi, [rsi]
	cmp	r12d, eax
	sete	al
	movzx	edi, al
	nop	
	add	edi, 0x16d
	cmp	r12d, edx
	mov	eax, 0x16e
	lea	rsi, [rsi]
	cmove	eax, edi
.label_909:
	lea	edx, [rax + rbx + 0x17e]
	sub	edx, r9d
	lea	rsi, [rsi]
	movsxd	rdx, edx
	mov	rsp, rsp
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	lea	rsi, [rsi]
	add	esi, edx
	lea	rsi, [rsi]
	mov	edi, esi
	lea	rdi, [rdi]
	shr	edi, 0x1f
	sar	esi, 2
	add	esi, edi
	nop	
	lea	edi, [rsi*8]
	nop	
	sub	edi, esi
	mov	rsp, rsp
	sub	edx, edi
	mov	rbp, rbp
	lea	eax, [rax + rbx + 3]
	sub	eax, edx
	mov	ebx, 0xffffffff
.label_949:
	mov	rbp, rbp
	cmp	r11d, 0x47
	je	.label_918
	cmp	r11d, 0x67
	jne	.label_938
	lea	rdi, [rdi]
	movsxd	rax, r8d
	nop	
	imul	rax, rax, 0x51eb851f
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	shr	rdx, 0x3f
	nop	
	sar	rax, 0x25
	add	eax, edx
	nop	
	imul	eax, eax, 0x64
	mov	edx, r8d
	lea	rdi, [rdi]
	sub	edx, eax
	add	edx, ebx
	mov	rbp, rbp
	movsxd	rdx, edx
	imul	rax, rdx, 0x51eb851f
	mov	rbp, rbp
	mov	rsi, rax
	shr	rsi, 0x3f
	sar	rax, 0x25
	lea	rdi, [rdi]
	add	eax, esi
	nop	
	imul	eax, eax, 0x64
	sub	edx, eax
	mov	edi, 2
	jns	.label_916
	mov	eax, 0xfffff894
	mov	rsp, rsp
	sub	eax, ebx
	mov	esi, edx
	lea	rsi, [rsi]
	neg	esi
	mov	rbp, rbp
	add	edx, 0x64
	mov	rsp, rsp
	cmp	r8d, eax
	nop	
	jmp	.label_958
.label_972:
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rdi, qword ptr [rsp + 0x40]
	jmp	.label_843
.label_861:
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	cmp	rax, -0x76c
	setl	sil
	setg	bl
	nop	
	imul	rdx, rax, 0x51eb851f
	lea	rsi, [rsi]
	mov	rdi, rdx
	shr	rdi, 0x3f
	sar	rdx, 0x25
	mov	rsp, rsp
	add	edx, edi
	imul	edi, edx, 0x64
	cmp	eax, edi
	nop	
	sets	al
	and	al, bl
	movzx	eax, al
	sub	edx, eax
	add	edx, 0x13
	mov	edi, 2
	mov	rsp, rsp
	jmp	.label_860
.label_902:
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	mov	rbp, rbp
	add	edx, esi
	mov	rsp, rsp
	imul	esi, edx, 0x64
	mov	edx, eax
	mov	rbp, rbp
	mov	edi, 2
	mov	rsp, rsp
	sub	edx, esi
	lea	rdi, [rdi]
	js	.label_981
.label_916:
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	jmp	.label_860
.label_918:
	mov	rsp, rsp
	mov	eax, 0xfffff894
	lea	rsi, [rsi]
	sub	eax, ebx
	cmp	r8d, eax
	setl	sil
	mov	rsp, rsp
	lea	edx, [rbx + r8 + 0x76c]
	mov	edi, 4
	mov	rsp, rsp
	jmp	.label_860
.label_938:
	lea	rdi, [rdi]
	cdqe	
	nop	
	imul	rdx, rax, -0x6db6db6d
	shr	rdx, 0x20
	add	eax, edx
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rbp, rbp
	sar	edx, 2
	lea	rsi, [rsi]
	shr	eax, 0x1f
	lea	edx, [rdx + rax + 1]
.label_838:
	mov	edi, 2
.label_876:
	mov	esi, edx
	shr	esi, 0x1f
.label_920:
	xor	ebx, ebx
	xor	r8d, r8d
.label_887:
	cmp	r10d, 0x4f
	jne	.label_1005
	test	sil, sil
	mov	rbp, rbp
	jne	.label_1005
	mov	rsp, rsp
	mov	r9d, r10d
	xor	eax, eax
	mov	rsp, rsp
	mov	r8b, cl
	lea	rdi, [rdi]
	mov	rbx, rdi
	nop	
	jmp	.label_937
.label_1005:
	lea	rsi, [rsi]
	mov	r10, rdi
	lea	rdi, [rdi]
	mov	eax, edx
	neg	eax
	test	sil, sil
	mov	rsp, rsp
	cmove	eax, edx
	lea	rdi, [rdi]
	lea	r12, [rsp + 0x37]
	nop	
.label_850:
	test	bl, 1
	mov	rsp, rsp
	je	.label_845
	lea	rsi, [rsi]
	mov	byte ptr [r12 - 1], 0x3a
	lea	rdi, [rdi]
	dec	r12
.label_845:
	sar	ebx, 1
	mov	edi, eax
	mov	rbp, rbp
	mov	edx, 0xcccccccd
	imul	rdx, rdi
	shr	rdx, 0x23
	lea	edi, [rdx + rdx]
	mov	rbp, rbp
	lea	edi, [rdi + rdi*4]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	sub	ecx, edi
	nop	
	or	ecx, 0x30
	lea	rdi, [rdi]
	mov	byte ptr [r12 - 1], cl
	dec	r12
	cmp	eax, 9
	mov	eax, edx
	ja	.label_850
	lea	rsi, [rsi]
	test	ebx, ebx
	lea	rsi, [rsi]
	mov	eax, edx
	jne	.label_850
.label_839:
	nop	
	mov	rdi, qword ptr [rsp + 0x40]
	cmp	r10d, r14d
	cmovl	r10d, r14d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x498], r10
	mov	rsp, rsp
	test	r8b, r8b
	je	.label_872
	mov	r8b, 0x2b
.label_872:
	mov	rsp, rsp
	test	sil, sil
	mov	r9b, 0x2d
	lea	rdi, [rdi]
	jne	.label_878
	mov	r9b, r8b
.label_878:
	cmp	r13d, 0x2d
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rsp, rsp
	jne	.label_883
	test	r9b, r9b
	je	.label_858
	xor	eax, eax
	mov	rbp, rbp
	test	r14d, r14d
	mov	rsp, rsp
	cmovns	eax, r14d
	nop	
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	rbp, rbp
	mov	ebx, 1
	cmova	rbx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_862
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_894
	nop	
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x498]
	nop	
	test	ecx, ecx
	jne	.label_895
	test	al, al
	nop	
	jne	.label_895
	movsxd	rax, r14d
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x468], rax
	mov	rbp, rbp
	lea	rdx, [rax - 1]
	mov	esi, 0x20
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x4a0], r9b
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rdi
	nop	
	call	memset
	lea	rsi, [rsi]
	mov	r9b, byte ptr [rsp + 0x4a0]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x458]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x468]
	lea	rdi, [rdi + rax - 1]
	jmp	.label_895
.label_883:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x498]
	lea	rdi, [rdi]
	cdqe	
	mov	rcx, r12
	lea	rdx, [rsp + 0x37]
	lea	rsi, [rsi]
	sub	rcx, rdx
	mov	dl, r9b
	neg	dl
	mov	rbp, rbp
	sbb	rbx, rbx
	mov	rbp, rbp
	add	rbx, rcx
	add	rbx, rax
	test	ebx, ebx
	mov	rbp, rbp
	jle	.label_913
	lea	rsi, [rsi]
	cmp	r13d, 0x5f
	jne	.label_924
	movsxd	rdx, ebx
	mov	rax, qword ptr [rsp + 0x48]
	nop	
	sub	rax, rsi
	cmp	rdx, rax
	lea	rdi, [rdi]
	jae	.label_862
	xor	r10d, r10d
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	mov	r8d, 0
	lea	rsi, [rsi]
	je	.label_929
	mov	rsp, rsp
	mov	esi, 0x20
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x4a0], r9b
	mov	qword ptr [rsp + 0x468], rdx
	call	memset
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x468]
	xor	r10d, r10d
	mov	r9b, byte ptr [rsp + 0x4a0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x40]
	add	rax, rdx
	lea	rdi, [rdi]
	mov	r8, rax
.label_929:
	nop	
	add	rsi, rdx
	sub	r14d, ebx
	cmovg	r10d, r14d
	test	r9b, r9b
	je	.label_946
	xor	eax, eax
	test	r10d, r10d
	cmovns	eax, r10d
	movsxd	rcx, eax
	nop	
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	nop	
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, rsi
	nop	
	cmp	rbx, rcx
	mov	rbp, rbp
	jae	.label_862
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	test	r8, r8
	nop	
	je	.label_835
	cmp	eax, 2
	mov	rsp, rsp
	setb	al
	mov	rcx, qword ptr [rsp + 0x498]
	mov	rbp, rbp
	test	ecx, ecx
	jne	.label_865
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x4a0], r9b
	test	al, al
	mov	rbp, rbp
	jne	.label_965
	nop	
	movsxd	r14, r10d
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], r10
	lea	rdx, [r14 - 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x458], rsi
	nop	
	mov	esi, 0x20
	nop	
	mov	rdi, r8
	mov	qword ptr [rsp + 0x468], r8
	nop	
	call	memset
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x468]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rsp, rsp
	lea	r8, [r8 + r14 - 1]
	jmp	.label_977
.label_913:
	test	r9b, r9b
	lea	rsi, [rsi]
	je	.label_858
	xor	eax, eax
	test	r14d, r14d
	mov	rbp, rbp
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	nop	
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_862
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_894
	lea	rdi, [rdi]
	cmp	eax, 2
	nop	
	setb	al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x498]
	mov	rsp, rsp
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_895
	test	al, al
	nop	
	jne	.label_895
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x4a0], r9b
	movsxd	rax, r14d
	dec	rax
	cmp	r13d, 0x30
	nop	
	je	.label_945
	mov	rbp, rbp
	cmp	r13d, 0x2b
	mov	rbp, rbp
	jne	.label_931
.label_945:
	lea	rsi, [rsi]
	mov	esi, 0x30
	jmp	.label_1006
.label_924:
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	sub	rcx, rsi
	nop	
	cmp	rax, rcx
	nop	
	jae	.label_862
	nop	
	test	r9b, r9b
	nop	
	je	.label_837
	mov	rsp, rsp
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	r8, eax
	nop	
	cmp	r8d, 1
	mov	edx, 1
	cmova	rdx, r8
	cmp	rdx, rcx
	jae	.label_862
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_989
	lea	rsi, [rsi]
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x498]
	lea	rdi, [rdi]
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_856
	lea	rsi, [rsi]
	test	al, al
	jne	.label_856
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x468], rdx
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x4a0], r9b
	movsxd	rax, r14d
	lea	rsi, [rsi]
	dec	rax
	lea	rdi, [rdi]
	cmp	r13d, 0x30
	nop	
	je	.label_868
	mov	rbp, rbp
	cmp	r13d, 0x2b
	lea	rsi, [rsi]
	jne	.label_877
.label_868:
	mov	esi, 0x30
	nop	
	jmp	.label_880
.label_946:
	mov	rsp, rsp
	mov	rdi, r8
	mov	rsp, rsp
	mov	r14d, r10d
	jmp	.label_858
.label_853:
	mov	r9d, r10d
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r8b, 0x59
.label_849:
	nop	
	xor	ebx, ebx
.label_937:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x498], eax
	mov	r12, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	word ptr [rsp + 0x493], 0x2520
	test	r9d, r9d
	lea	rcx, [rsp + 0x495]
	mov	rsp, rsp
	je	.label_889
	mov	byte ptr [rsp + 0x495], r9b
	lea	rdi, [rdi]
	lea	rcx, [rsp + 0x496]
.label_889:
	mov	byte ptr [rcx], r8b
	mov	rsp, rsp
	mov	byte ptr [rcx + 1], 0
	mov	rbp, rbp
	lea	rdi, [rsp + 0x50]
	lea	rdx, [rsp + 0x493]
	mov	rbp, rbp
	mov	esi, 0x400
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x18]
	nop	
	call	strftime
	test	rax, rax
	je	.label_903
	nop	
	mov	r8, rbx
	lea	r9, [rax - 1]
	nop	
	mov	qword ptr [rsp + 0x4a0], rax
	xor	eax, eax
	mov	rbp, rbp
	test	r14d, r14d
	cmovns	eax, r14d
	mov	rsp, rsp
	cdqe	
	cmp	r9, rax
	mov	rdx, r9
	lea	rdi, [rdi]
	cmovb	rdx, rax
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x458]
	lea	rdi, [rdi]
	sub	rcx, rsi
	cmp	rdx, rcx
	mov	ebx, dword ptr [rsp + 0x498]
	lea	rsi, [rsi]
	jae	.label_862
	xor	ecx, ecx
	mov	rdi, r12
	mov	rbp, rbp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_866
	mov	rbp, rbp
	cmp	r9, rax
	nop	
	setae	al
	mov	r12, rdx
	test	r8d, r8d
	jne	.label_922
	test	al, al
	nop	
	jne	.label_922
	movsxd	r14, r14d
	nop	
	sub	r14, r9
	nop	
	mov	qword ptr [rsp + 0x468], r9
	mov	rsp, rsp
	cmp	r13d, 0x30
	je	.label_923
	nop	
	cmp	r13d, 0x2b
	lea	rdi, [rdi]
	jne	.label_927
.label_923:
	mov	rbp, rbp
	mov	esi, 0x30
	mov	rsp, rsp
	jmp	.label_928
.label_903:
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rdi, r12
	lea	rdi, [rdi]
	jmp	.label_843
.label_927:
	lea	rdi, [rdi]
	mov	esi, 0x20
.label_928:
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	rbx, rdi
	mov	rbp, rbp
	call	memset
	add	rbx, r14
	mov	rdi, rbx
	mov	r9, qword ptr [rsp + 0x468]
	mov	ebx, dword ptr [rsp + 0x498]
.label_922:
	lea	rsi, [rsi]
	test	bl, 1
	lea	rsi, [rsi]
	jne	.label_941
	mov	rax, qword ptr [rsp + 0x488]
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_942
	lea	rsi, [rsp + 0x51]
	mov	rdx, r9
	mov	rbp, rbp
	mov	r14, rdi
	mov	rsp, rsp
	mov	rbx, r9
	mov	rsp, rsp
	call	memcpy
	mov	r9, rbx
	mov	rdi, r14
	nop	
	jmp	.label_840
.label_941:
	mov	rbp, rbp
	test	r9, r9
	mov	rsp, rsp
	je	.label_840
	mov	r14, rdi
	mov	rbp, rbp
	mov	rbx, r9
	call	__ctype_tolower_loc
	mov	r9, rbx
	mov	rdi, r14
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x4a0]
	mov	rbp, rbp
	lea	ecx, [rdx + 3]
	lea	rdi, [rdi]
	mov	r8, rdx
	add	r8, -2
	mov	rbp, rbp
	test	cl, 3
	mov	rsp, rsp
	mov	rcx, r9
	mov	rbp, rbp
	je	.label_959
	lea	esi, [rdx + 3]
	nop	
	and	esi, 3
	neg	rsi
	lea	rsi, [rsi]
	mov	rcx, r9
	nop	dword ptr [rax]
.label_914:
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rsp + rcx + 0x50]
	mov	rbp, rbp
	mov	rbx, qword ptr [rax]
	mov	rsp, rsp
	mov	bl, byte ptr [rbx + rdx*4]
	mov	rbp, rbp
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	lea	rdi, [rdi]
	inc	rsi
	jne	.label_914
.label_959:
	lea	rsi, [rsi]
	cmp	r8, 3
	jb	.label_840
	nop	word ptr cs:[rax + rax]
.label_983:
	mov	rbp, rbp
	movzx	edx, byte ptr [rsp + rcx + 0x50]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	mov	rbp, rbp
	movzx	edx, byte ptr [rsp + rcx + 0x4f]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rsp + rcx + 0x4e]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rsp + rcx + 0x4d]
	nop	
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 4], dl
	mov	rsp, rsp
	add	rcx, -4
	jne	.label_983
	nop	
	jmp	.label_840
.label_942:
	test	r9, r9
	je	.label_840
	nop	
	mov	r14, rdi
	mov	rbx, r9
	mov	rbp, rbp
	call	__ctype_toupper_loc
	mov	r9, rbx
	nop	
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x4a0]
	mov	rsp, rsp
	lea	ecx, [rdx + 3]
	mov	rbp, rbp
	mov	r8, rdx
	mov	rbp, rbp
	add	r8, -2
	test	cl, 3
	mov	rcx, r9
	mov	rsp, rsp
	je	.label_998
	lea	esi, [rdx + 3]
	and	esi, 3
	lea	rdi, [rdi]
	neg	rsi
	mov	rbp, rbp
	mov	rcx, r9
	nop	word ptr cs:[rax + rax]
.label_997:
	movzx	edx, byte ptr [rsp + rcx + 0x50]
	mov	rbx, qword ptr [rax]
	mov	rsp, rsp
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	lea	rdi, [rdi]
	dec	rcx
	nop	
	inc	rsi
	jne	.label_997
.label_998:
	cmp	r8, 3
	jb	.label_840
	nop	word ptr cs:[rax + rax]
.label_884:
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rsp + rcx + 0x50]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rsp + rcx + 0x4f]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [rsp + rcx + 0x4e]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	nop	
	movzx	edx, byte ptr [rsp + rcx + 0x4d]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rcx - 4], dl
	nop	
	add	rcx, -4
	jne	.label_884
.label_840:
	add	rdi, r9
	mov	rcx, rdi
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rdx, r12
	nop	
	jmp	.label_866
.label_892:
	mov	r14, qword ptr [rsp + 0x478]
	jmp	.label_873
.label_988:
	mov	esi, 0x20
.label_992:
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x470], rdx
	mov	r14, rdi
	lea	rdi, [rdi]
	call	memset
	lea	rsi, [rsi]
	add	r14, qword ptr [rsp + 0x470]
	mov	rdi, r14
.label_907:
	mov	edx, dword ptr [rsp + 0x4a0]
	mov	rax, qword ptr [rsp + 0x488]
	lea	rsi, [rsi]
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], ecx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x4e8]
	nop	
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], edx
	movzx	r8d, al
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x498]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r14, rdi
	mov	rbp, rbp
	mov	r9d, r13d
	call	__strftime_internal
	nop	
	mov	rax, qword ptr [rsp + 0x468]
	lea	rdi, [rdi]
	add	rax, r14
	mov	rcx, rax
	mov	rsp, rsp
	jmp	.label_896
.label_971:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x478]
	nop	
	movzx	edx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	edx, 0x2d
	sete	sil
.label_974:
	mov	rbp, rbp
	cmp	rbx, 3
	mov	r10d, r9d
	ja	.label_841
	mov	rbp, rbp
	movsxd	rdx, r8d
	imul	rdi, rdx, -0x77777777
	mov	rsp, rsp
	shr	rdi, 0x20
	mov	rsp, rsp
	add	edi, r8d
	mov	r9, rbx
	mov	rbp, rbp
	mov	ebx, edi
	lea	rsi, [rsi]
	shr	ebx, 0x1f
	sar	edi, 5
	mov	rsp, rsp
	add	edi, ebx
	lea	rsi, [rsi]
	imul	rdx, rdx, -0x6e5d4c3b
	shr	rdx, 0x20
	add	edx, r8d
	mov	ebx, edx
	shr	ebx, 0x1f
	lea	rsi, [rsi]
	sar	edx, 0xb
	add	edx, ebx
	lea	rdi, [rdi]
	movsxd	rbx, edi
	imul	rdi, rbx, -0x77777777
	lea	rdi, [rdi]
	shr	rdi, 0x20
	add	edi, ebx
	mov	eax, edi
	lea	rsi, [rsi]
	shr	eax, 0x1f
	sar	edi, 5
	add	edi, eax
	lea	rdi, [rdi]
	imul	eax, edi, 0x3c
	lea	rsi, [rsi]
	imul	edi, ebx, 0x3c
	lea	rdi, [rdi]
	sub	ebx, eax
	mov	rbp, rbp
	sub	r8d, edi
	jmp	qword ptr [(r9 * 8) + label_904]
.label_1022:
	imul	edx, edx, 0x64
	mov	rbp, rbp
	add	edx, ebx
	mov	rbp, rbp
	mov	edi, 5
.label_978:
	mov	rbp, rbp
	mov	r8b, 1
	nop	
	xor	ebx, ebx
	jmp	.label_887
.label_841:
	lea	rbx, [rbp + 1]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_934:
	inc	r12
	nop	
	movzx	eax, byte ptr [rbx - 1]
	mov	rbp, rbp
	dec	rbx
	mov	rbp, rbp
	cmp	eax, 0x25
	jne	.label_934
	nop	
	test	r14d, r14d
	mov	eax, r14d
	mov	ecx, 0
	lea	rdi, [rdi]
	cmovs	eax, ecx
	cmp	r12d, eax
	mov	ecx, eax
	mov	rbp, rbp
	cmova	ecx, r12d
	lea	rdi, [rdi]
	movsxd	r8, ecx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rbp, rbp
	sub	rcx, rsi
	cmp	r8, rcx
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	jae	.label_862
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	ecx, 0
	lea	rdi, [rdi]
	je	.label_950
	movsxd	rdx, r12d
	cmp	r12d, eax
	mov	rsp, rsp
	jae	.label_953
	movsxd	r14, r14d
	sub	r14, rdx
	lea	rsi, [rsi]
	cmp	r13d, 0x30
	nop	
	je	.label_956
	lea	rsi, [rsi]
	cmp	r13d, 0x2b
	jne	.label_960
.label_956:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x4a0], rdx
	mov	qword ptr [rsp + 0x498], r8
	mov	rsp, rsp
	mov	esi, 0x30
	nop	
	jmp	.label_961
.label_960:
	mov	qword ptr [rsp + 0x4a0], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x498], r8
	lea	rsi, [rsi]
	mov	esi, 0x20
.label_961:
	mov	rdx, r14
	mov	r13, rdi
	lea	rdi, [rdi]
	call	memset
	mov	rbp, rbp
	mov	rdi, r13
	add	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x458]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x498]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x4a0]
.label_953:
	mov	qword ptr [rsp + 0x498], r8
	nop	
	mov	qword ptr [rsp + 0x458], rsi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x488]
	mov	rsp, rsp
	test	al, 1
	jne	.label_980
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rbp, rbp
	mov	r14, rdi
	mov	rbx, rdx
	call	memcpy
	mov	r10, rbx
	mov	r9, r14
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x498]
	mov	rsp, rsp
	jmp	.label_991
.label_980:
	mov	r13, rdi
	mov	r14, rdx
	lea	rsi, [rsi]
	call	__ctype_toupper_loc
	nop	
	mov	r10, r14
	mov	r9, r13
	mov	rsp, rsp
	movsxd	rcx, r12d
	mov	rbp, rbp
	lea	r8, [rcx - 1]
	mov	rbp, rbp
	test	cl, 3
	lea	rsi, [rsi]
	mov	rcx, r10
	nop	
	je	.label_995
	lea	rdi, [rdi]
	and	r12d, 3
	neg	r12
	lea	rsi, [rsi]
	mov	rcx, r10
	nop	dword ptr [rax]
.label_1000:
	movzx	esi, byte ptr [rbx + rcx - 1]
	nop	
	mov	rdi, qword ptr [rax]
	mov	dl, byte ptr [rdi + rsi*4]
	mov	rsp, rsp
	mov	byte ptr [r9 + rcx - 1], dl
	dec	rcx
	inc	r12
	jne	.label_1000
.label_995:
	mov	rbp, rbp
	cmp	r8, 3
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0x498]
	lea	rdi, [rdi]
	jb	.label_991
	nop	word ptr cs:[rax + rax]
.label_834:
	nop	
	movzx	edx, byte ptr [rbx + rcx - 1]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	nop	
	mov	byte ptr [r9 + rcx - 1], dl
	movzx	edx, byte ptr [rbx + rcx - 2]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 2], dl
	movzx	edx, byte ptr [rbx + rcx - 3]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 3], dl
	movzx	edx, byte ptr [rbx + rcx - 4]
	mov	rsi, qword ptr [rax]
	nop	
	mov	dl, byte ptr [rsi + rdx*4]
	mov	rsp, rsp
	mov	byte ptr [r9 + rcx - 4], dl
	add	rcx, -4
	jne	.label_834
.label_991:
	lea	rsi, [rsi]
	add	r9, r10
	mov	rcx, r9
	mov	rsi, qword ptr [rsp + 0x458]
.label_950:
	lea	rdi, [rdi]
	add	rsi, r8
	mov	rsp, rsp
	jmp	.label_864
.label_879:
	xor	eax, eax
	mov	r10d, r14d
	mov	rsp, rsp
	add	r10d, -6
	nop	
	cmovs	r10d, eax
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.2_4
	jmp	.label_869
.label_908:
	mov	edi, 9
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	edx, eax
	mov	rsp, rsp
	mov	r14d, 9
	nop	
	jmp	.label_876
.label_981:
	mov	esi, edx
	mov	rsp, rsp
	neg	esi
	mov	rbp, rbp
	add	edx, 0x64
	cmp	eax, 0xfffff894
.label_958:
	lea	rdi, [rdi]
	cmovl	edx, esi
	lea	rdi, [rdi]
	xor	esi, esi
.label_860:
	mov	eax, dword ptr [rsp + 0x484]
	mov	dword ptr [rsp + 0x484], eax
	test	r13d, r13d
	cmove	r13d, eax
	xor	ebx, ebx
	cmp	r13d, 0x2b
	mov	r8d, 0
	lea	rsi, [rsi]
	jne	.label_887
	mov	rax, rdi
	cmp	eax, 2
	lea	rdi, [rdi]
	mov	r8d, 0x63
	nop	
	mov	edi, 0x270f
	cmove	edi, r8d
	mov	rsp, rsp
	cmp	edi, edx
	lea	rdi, [rdi]
	setb	r9b
	mov	rsp, rsp
	cmp	eax, r14d
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	setl	r8b
	lea	rsi, [rsi]
	or	r8b, r9b
	nop	
	jmp	.label_887
.label_1025:
	lea	rdi, [rdi]
	test	r8d, r8d
	lea	rdi, [rdi]
	je	.label_993
.label_1024:
	lea	rsi, [rsi]
	imul	edx, edx, 0x2710
	nop	
	imul	eax, ebx, 0x64
	add	edx, r8d
	add	edx, eax
	mov	edi, 9
	nop	
	mov	r8b, 1
	mov	ebx, 0x14
	jmp	.label_887
.label_910:
	mov	eax, dword ptr [rsp + 0x4f0]
	lea	rsi, [rsi]
	mov	edx, eax
	mov	edi, r14d
	jmp	.label_876
.label_865:
	mov	qword ptr [rsp + 0x40], r10
	jmp	.label_911
.label_965:
	mov	qword ptr [rsp + 0x40], r10
.label_977:
	mov	r9b, byte ptr [rsp + 0x4a0]
.label_911:
	nop	
	mov	byte ptr [r8], r9b
	inc	r8
	mov	rsp, rsp
	mov	rdi, r8
	nop	
	mov	r10, qword ptr [rsp + 0x40]
.label_835:
	add	rsi, rbx
	mov	r14d, r10d
	jmp	.label_858
.label_897:
	mov	esi, 0x20
.label_899:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	lea	rsi, [rsi]
	add	r13, r14
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x478]
	mov	rdi, r13
	mov	r9, qword ptr [rsp + 0x498]
.label_873:
	test	r12b, r12b
	je	.label_926
	nop	
	test	r9, r9
	lea	rdi, [rdi]
	je	.label_847
	mov	r12, rbx
	mov	r13, rdi
	mov	rbx, r9
	call	__ctype_tolower_loc
	nop	
	mov	r9, rbx
	lea	rsi, [rsi]
	lea	r8, [r9 - 1]
	lea	rdi, [rdi]
	test	r9b, 3
	je	.label_846
	mov	rbp, rbp
	mov	esi, r9d
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	lea	rdi, [rdi]
	mov	rdi, r13
	nop	word ptr cs:[rax + rax]
.label_940:
	movzx	edx, byte ptr [r14 + rcx - 1]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	mov	rbp, rbp
	dec	rcx
	inc	rsi
	lea	rdi, [rdi]
	jne	.label_940
	lea	rsi, [rsi]
	jmp	.label_944
.label_926:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x488]
	lea	rdi, [rdi]
	test	al, al
	mov	rbp, rbp
	je	.label_947
	lea	rsi, [rsi]
	test	r9, r9
	je	.label_847
	mov	r12, rbx
	lea	rsi, [rsi]
	mov	r13, rdi
	lea	rdi, [rdi]
	mov	rbx, r9
	call	__ctype_toupper_loc
	mov	rsp, rsp
	mov	r9, rbx
	lea	r8, [r9 - 1]
	test	r9b, 3
	mov	rsp, rsp
	je	.label_957
	mov	rsp, rsp
	mov	esi, r9d
	mov	rsp, rsp
	and	esi, 3
	nop	
	neg	rsi
	mov	rcx, r9
	mov	rdi, r13
.label_964:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	nop	
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	lea	rsi, [rsi]
	inc	rsi
	mov	rbp, rbp
	jne	.label_964
	jmp	.label_969
.label_966:
	mov	esi, 0x20
.label_968:
	mov	rdx, r14
	mov	r13, rdi
	mov	rbp, rbp
	call	memset
	lea	rdi, [rdi]
	add	r13, r14
	mov	rsi, r12
	mov	rdi, r13
.label_962:
	lea	rsi, [rsi]
	mov	byte ptr [rdi], 0xa
	nop	
	jmp	.label_973
.label_874:
	mov	rbp, rbp
	mov	esi, 0x20
.label_999:
	mov	rdx, r14
	lea	rdi, [rdi]
	mov	r13, rdi
	lea	rsi, [rsi]
	call	memset
	mov	rsp, rsp
	add	r13, r14
	lea	rsi, [rsi]
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdi, r13
.label_867:
	mov	byte ptr [rdi], 9
.label_973:
	inc	rdi
	mov	rcx, rdi
	add	rsi, rbx
	jmp	.label_864
.label_931:
	lea	rsi, [rsi]
	mov	esi, 0x20
.label_1006:
	mov	rsp, rsp
	mov	rdx, rax
	mov	qword ptr [rsp + 0x468], rdx
	call	memset
	mov	rax, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	add	rax, qword ptr [rsp + 0x468]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rdi, rax
	mov	r9b, byte ptr [rsp + 0x4a0]
.label_895:
	mov	byte ptr [rdi], r9b
	nop	
	inc	rdi
	lea	rdi, [rdi]
	mov	rcx, rdi
.label_894:
	add	rsi, rbx
	mov	rsp, rsp
	mov	rdi, rcx
	jmp	.label_858
.label_846:
	mov	rcx, r9
	mov	rdi, r13
.label_944:
	cmp	r8, 3
	mov	rsp, rsp
	mov	rbx, r12
	nop	
	jb	.label_847
	nop	word ptr [rax + rax]
.label_1003:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	mov	rbp, rbp
	movzx	edx, byte ptr [r14 + rcx - 2]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	mov	dl, byte ptr [rsi + rdx*4]
	mov	rbp, rbp
	mov	byte ptr [rdi + rcx - 2], dl
	mov	rbp, rbp
	movzx	edx, byte ptr [r14 + rcx - 3]
	nop	
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	rbp, rbp
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [r14 + rcx - 4]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rcx - 4], dl
	lea	rdi, [rdi]
	add	rcx, -4
	jne	.label_1003
	jmp	.label_847
.label_947:
	lea	rdi, [rdi]
	mov	rsi, r14
	nop	
	mov	rdx, r9
	mov	r13, rdi
	mov	r12, rbx
	mov	rbx, r9
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	mov	r9, rbx
	mov	rbx, r12
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rdi, [rdi]
	jmp	.label_847
.label_952:
	mov	eax, 9
	lea	rdi, [rdi]
	sub	eax, ebx
	nop	word ptr cs:[rax + rax]
.label_979:
	mov	rsp, rsp
	movsxd	rdx, edx
	mov	rbp, rbp
	imul	rdx, rdx, 0x68db8bad
	mov	rsi, rdx
	nop	
	shr	rsi, 0x3f
	mov	rsp, rsp
	sar	rdx, 0x2c
	lea	rdi, [rdi]
	add	edx, esi
	mov	rsp, rsp
	add	eax, -4
	lea	rdi, [rdi]
	jne	.label_979
	mov	rsp, rsp
	mov	edi, r14d
	nop	
	jmp	.label_876
.label_877:
	lea	rdi, [rdi]
	mov	esi, 0x20
.label_880:
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	qword ptr [rsp + 0x470], rdx
	mov	r14, rdi
	mov	rbp, rbp
	call	memset
	add	r14, qword ptr [rsp + 0x470]
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rbp, rbp
	mov	rdi, r14
	mov	r9b, byte ptr [rsp + 0x4a0]
	mov	rdx, qword ptr [rsp + 0x468]
.label_856:
	mov	byte ptr [rdi], r9b
	lea	rsi, [rsi]
	inc	rdi
	nop	
	mov	rcx, rdi
.label_989:
	lea	rdi, [rdi]
	add	rsi, rdx
	nop	
	mov	rdi, rcx
.label_837:
	xor	r14d, r14d
	test	rdi, rdi
	mov	rbp, rbp
	movsxd	rcx, ebx
	mov	ebx, 0
	lea	rsi, [rsi]
	je	.label_955
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x458], rsi
	mov	esi, 0x30
	mov	qword ptr [rsp + 0x40], rcx
	mov	rdx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rbx, rdi
	nop	
	call	memset
	mov	rcx, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x458]
	add	rbx, rcx
.label_955:
	lea	rsi, [rsi]
	add	rsi, rcx
	lea	rdi, [rdi]
	mov	rdi, rbx
.label_858:
	lea	rdi, [rdi]
	lea	rbx, [rsp + 0x37]
	lea	rsi, [rsi]
	sub	rbx, r12
	lea	rsi, [rsi]
	xor	eax, eax
	test	r14d, r14d
	lea	rsi, [rsi]
	cmovns	eax, r14d
	nop	
	cdqe	
	lea	rdi, [rdi]
	cmp	rbx, rax
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	rbp, rbp
	cmovb	rdx, rax
	mov	rcx, qword ptr [rsp + 0x48]
	nop	
	sub	rcx, rsi
	cmp	rdx, rcx
	jae	.label_862
	xor	ecx, ecx
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_866
	lea	rsi, [rsi]
	cmp	rbx, rax
	setae	al
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x498]
	lea	rdi, [rdi]
	test	ecx, ecx
	jne	.label_919
	mov	rbp, rbp
	test	al, al
	jne	.label_925
	movsxd	r14, r14d
	lea	rsi, [rsi]
	sub	r14, rbx
	cmp	r13d, 0x30
	je	.label_906
	lea	rsi, [rsi]
	cmp	r13d, 0x2b
	lea	rdi, [rdi]
	jne	.label_1002
.label_906:
	mov	qword ptr [rsp + 0x458], rsi
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rbp, rbp
	jmp	.label_930
.label_866:
	add	rsi, rdx
	lea	rsi, [rsi]
	jmp	.label_864
.label_919:
	mov	qword ptr [rsp + 0x458], rsi
	jmp	.label_857
.label_925:
	mov	qword ptr [rsp + 0x458], rsi
	jmp	.label_857
.label_1002:
	mov	qword ptr [rsp + 0x458], rsi
	mov	esi, 0x20
.label_930:
	mov	qword ptr [rsp + 0x40], rdx
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	nop	
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rdi, r13
	add	rdi, r14
.label_857:
	mov	r13, rdx
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x488]
	test	al, al
	je	.label_943
	nop	
	lea	rax, [rsp + 0x37]
	cmp	rax, r12
	lea	rdi, [rdi]
	je	.label_948
	mov	r14, rdi
	lea	rdi, [rdi]
	call	__ctype_toupper_loc
	mov	rdi, r14
	mov	rbp, rbp
	lea	rcx, [rsp + 0x37]
	sub	ecx, r12d
	lea	rdi, [rdi]
	lea	r8, [rsp + 0x36]
	sub	r8, r12
	test	cl, 3
	mov	rbp, rbp
	mov	rcx, rbx
	mov	r9, rbx
	mov	rbp, rbp
	je	.label_954
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x37]
	lea	rdi, [rdi]
	sub	esi, r12d
	nop	
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	nop	word ptr cs:[rax + rax]
.label_882:
	movzx	ebx, byte ptr [r12 + rcx - 1]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rdx + rbx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	mov	rsp, rsp
	dec	rcx
	mov	rbp, rbp
	inc	rsi
	lea	rsi, [rsi]
	jne	.label_882
.label_954:
	mov	rsp, rsp
	cmp	r8, 3
	mov	rbp, rbp
	mov	rbx, r9
	jb	.label_948
	nop	word ptr [rax + rax]
.label_976:
	lea	rsi, [rsi]
	movzx	edx, byte ptr [r12 + rcx - 1]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rsi + rdx*4]
	nop	
	mov	byte ptr [rdi + rcx - 1], dl
	mov	rsp, rsp
	movzx	edx, byte ptr [r12 + rcx - 2]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	mov	dl, byte ptr [rsi + rdx*4]
	lea	rsi, [rsi]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [r12 + rcx - 3]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [r12 + rcx - 4]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	mov	dl, byte ptr [rsi + rdx*4]
	mov	rbp, rbp
	mov	byte ptr [rdi + rcx - 4], dl
	lea	rsi, [rsi]
	add	rcx, -4
	lea	rdi, [rdi]
	jne	.label_976
	lea	rsi, [rsi]
	jmp	.label_948
.label_943:
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	r14, rdi
	call	memcpy
	mov	rdi, r14
.label_948:
	add	rdi, rbx
	lea	rdi, [rdi]
	mov	rcx, rdi
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rdx, r13
	add	rsi, rdx
	mov	rsp, rsp
	jmp	.label_864
.label_993:
	nop	
	test	ebx, ebx
	je	.label_1001
.label_1023:
	mov	rbp, rbp
	imul	edx, edx, 0x64
	lea	rsi, [rsi]
	add	edx, ebx
	nop	
	mov	edi, 6
	lea	rdi, [rdi]
	mov	r8b, 1
	mov	ebx, 4
	jmp	.label_887
.label_1007:
	mov	r12, rsi
	mov	esi, 0x20
.label_836:
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	rbp, rbp
	mov	r13, rdi
	call	memset
	mov	rdi, r13
	mov	rsi, r12
	add	rdi, r14
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp]
.label_985:
	mov	byte ptr [rdi], cl
	mov	rbp, rbp
	jmp	.label_842
.label_957:
	mov	rcx, r9
	mov	rdi, r13
.label_969:
	mov	rbp, rbp
	cmp	r8, 3
	mov	rbx, r12
	nop	
	jb	.label_847
.label_851:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rsi, qword ptr [rax]
	nop	
	mov	dl, byte ptr [rsi + rdx*4]
	nop	
	mov	byte ptr [rdi + rcx - 1], dl
	movzx	edx, byte ptr [r14 + rcx - 2]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [r14 + rcx - 3]
	nop	
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rcx - 3], dl
	mov	rbp, rbp
	movzx	edx, byte ptr [r14 + rcx - 4]
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	mov	dl, byte ptr [rsi + rdx*4]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_851
.label_847:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x478], r14
	mov	rsp, rsp
	add	rdi, r9
	mov	rbp, rbp
	mov	rcx, rdi
.label_896:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x458]
.label_863:
	mov	rbp, rbp
	add	rsi, rbx
	nop	dword ptr [rax + rax]
.label_864:
	nop	
	mov	rdi, rcx
.label_843:
	mov	al, byte ptr [rbp + 1]
	nop	
	inc	rbp
	lea	rsi, [rsi]
	mov	r14d, 0xffffffff
	test	al, al
	jne	.label_885
.label_975:
	cmp	qword ptr [rsp + 0x48], 0
	lea	rdi, [rdi]
	je	.label_890
	test	rdi, rdi
	je	.label_890
	lea	rdi, [rdi]
	mov	byte ptr [rdi], 0
	mov	rbp, rbp
	jmp	.label_890
.label_862:
	nop	
	xor	esi, esi
.label_890:
	mov	rax, rsi
	add	rsp, 0x4a8
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410920

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_1008
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_1010
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_1008
.label_1010:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1008
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_1009
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_1009:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_1008:
	lea	rsi, [rsi]
	mov	rdi, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	nop	
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4109d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1011
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_1011
	test	byte ptr [rbx + 1], 1
	je	.label_1011
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_1011:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410a10

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jne	.label_1012
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1012
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1013
.label_1012:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rbp
	mov	edx, r14d
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	rbp
	nop	
	jmp	fseeko
.label_1013:
	mov	rdi, rbx
	call	fileno
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_1014
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1014:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x410ac0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	lea	rsi, [rsi]
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]