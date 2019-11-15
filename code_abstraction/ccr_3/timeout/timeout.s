	.section	.text
	.align	16
	#Procedure 0x401bb0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_28
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
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
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
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
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_15
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_22
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_22
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_22:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_15
	mov	ecx, OFFSET FLAT:label_13
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_13
	mov	ecx, OFFSET FLAT:label_14
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_28:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
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
	nop	
	.section	.text
	.align	16
	#Procedure 0x401df0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x148
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_32
	call	setlocale
	mov	edi, OFFSET FLAT:label_35
	mov	esi, OFFSET FLAT:label_36
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_35
	call	textdomain
	mov	dword ptr [rip + exit_failure],  0x7d
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	r14, [rsp + 0xb0]
	jmp	.label_45
.label_422:
	mov	byte ptr [rip + preserve_status],  1
	nop	word ptr [rax + rax]
.label_45:
	mov	edx, OFFSET FLAT:label_49
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x6a
	jle	.label_54
	add	eax, -0x6b
	cmp	eax, 0x16
	ja	.label_40
	jmp	qword ptr [(rax * 8) + label_57]
.label_418:
	mov	rdi, qword ptr [rip + optarg]
	call	parse_duration
	movsd	qword ptr [rip + kill_after],  xmm0
	jmp	.label_45
.label_419:
	mov	rdi, qword ptr [rip + optarg]
	mov	rsi, r14
	call	operand2sig
	mov	dword ptr [rip + term_signal],  eax
	cmp	eax, -1
	jne	.label_45
	jmp	.label_55
.label_420:
	mov	byte ptr [rip + verbose],  1
	jmp	.label_45
.label_421:
	mov	byte ptr [rip + foreground],  1
	jmp	.label_45
.label_54:
	cmp	eax, -1
	jne	.label_65
	movsxd	rax, dword ptr [rip + optind]
	sub	ebp, eax
	cmp	ebp, 1
	jle	.label_67
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	mov	rdi, qword ptr [rbx + rax*8]
	call	parse_duration
	movsd	qword ptr [rsp + 0x10], xmm0
	movsxd	r15, dword ptr [rip + optind]
	mov	rax, qword ptr [rbx + r15*8]
	mov	qword ptr [rip + command],  rax
	mov	al, byte ptr [rip + foreground]
	test	al, al
	jne	.label_31
	xor	edi, edi
	xor	esi, esi
	call	setpgid
.label_31:
	mov	r14d, dword ptr [rip + term_signal]
	lea	rdi, [rsp + 0x20]
	call	sigemptyset
	mov	qword ptr [rsp + 24], OFFSET FLAT:cleanup
	mov	dword ptr [rsp + 0xa0], 0x10000000
	lea	rbp, [rsp + 0x18]
	mov	edi, 0xe
	xor	edx, edx
	mov	rsi, rbp
	call	sigaction
	mov	edi, 2
	xor	edx, edx
	mov	rsi, rbp
	call	sigaction
	mov	edi, 3
	xor	edx, edx
	mov	rsi, rbp
	call	sigaction
	mov	edi, 1
	xor	edx, edx
	mov	rsi, rbp
	call	sigaction
	mov	edi, 0xf
	xor	edx, edx
	mov	rsi, rbp
	call	sigaction
	xor	edx, edx
	mov	edi, r14d
	mov	rsi, rbp
	call	sigaction
	mov	edi, 0x15
	mov	esi, 1
	call	signal
	mov	edi, 0x16
	mov	esi, 1
	call	signal
	lea	rdi, [rsp + 0x20]
	call	sigemptyset
	mov	qword ptr [rsp + 24], OFFSET FLAT:chld
	mov	dword ptr [rsp + 0xa0], 0x10000000
	lea	rsi, [rsp + 0x18]
	mov	edi, 0x11
	xor	edx, edx
	call	sigaction
	lea	rbp, [rsp + 0xc8]
	mov	rdi, rbp
	call	sigemptyset
	mov	esi, 0x11
	mov	rdi, rbp
	call	sigaddset
	mov	edi, 1
	xor	edx, edx
	mov	rsi, rbp
	call	sigprocmask
	test	eax, eax
	je	.label_39
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_39:
	call	fork
	mov	dword ptr [rip + monitored_pid],  eax
	test	eax, eax
	je	.label_48
	cmp	eax, -1
	jne	.label_51
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	mov	ebx, 0x7d
	jmp	.label_33
.label_48:
	lea	rbx, [rbx + r15*8]
	mov	edi, 0x15
	xor	esi, esi
	call	signal
	mov	edi, 0x16
	xor	esi, esi
	call	signal
	mov	rdi, qword ptr [rbx]
	mov	rsi, rbx
	call	execvp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	cmp	ebp, 2
	sete	bl
	or	ebx, 0x7e
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, qword ptr [rip + command]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	call	error
	jmp	.label_33
.label_51:
	lea	rbx, [rsp + 0x18]
	mov	rdi, rbx
	call	sigemptyset
	mov	esi, 0xe
	mov	rdi, rbx
	call	sigaddset
	mov	edi, 1
	xor	edx, edx
	mov	rsi, rbx
	call	sigprocmask
	test	eax, eax
	je	.label_42
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_42:
	mov	edi, 1
	movsd	xmm0, qword ptr [rsp + 0x10]
	call	settimeout
	mov	ebp, dword ptr [rip + term_signal]
	lea	rbx, [rsp + 0x18]
	mov	rdi, rbx
	call	sigemptyset
	mov	esi, 0xe
	mov	rdi, rbx
	call	sigaddset
	mov	esi, 2
	mov	rdi, rbx
	call	sigaddset
	mov	esi, 3
	mov	rdi, rbx
	call	sigaddset
	mov	esi, 1
	mov	rdi, rbx
	call	sigaddset
	mov	esi, 0xf
	mov	rdi, rbx
	call	sigaddset
	mov	rdi, rbx
	mov	esi, ebp
	call	sigaddset
	mov	esi, 0x11
	mov	rdi, rbx
	call	sigaddset
	lea	rdx, [rsp + 0xc8]
	xor	edi, edi
	mov	rsi, rbx
	call	sigprocmask
	test	eax, eax
	je	.label_68
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_68:
	mov	edi, dword ptr [rip + monitored_pid]
	lea	rsi, [rsp + 0xc]
	mov	edx, 1
	call	waitpid
	test	eax, eax
	jne	.label_41
	lea	rbx, [rsp + 0xc8]
	lea	rbp, [rsp + 0xc]
	nop	word ptr cs:[rax + rax]
.label_52:
	mov	rdi, rbx
	call	sigsuspend
	mov	edi, dword ptr [rip + monitored_pid]
	mov	edx, 1
	mov	rsi, rbp
	call	waitpid
	test	eax, eax
	je	.label_52
.label_41:
	test	eax, eax
	js	.label_37
	mov	eax, dword ptr [rsp + 0xc]
	mov	ebx, eax
	and	ebx, 0x7f
	je	.label_62
	mov	ecx, ebx
	shl	ecx, 0x18
	add	ecx, 0x1000000
	sar	ecx, 0x19
	test	ecx, ecx
	jle	.label_63
	test	al, al
	jns	.label_58
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_58:
	mov	al, byte ptr [rip + timed_out]
	test	al, al
	jne	.label_61
	mov	edi, 4
	xor	esi, esi
	xor	eax, eax
	call	prctl
	test	eax, eax
	je	.label_66
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	jmp	.label_61
.label_37:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	mov	dword ptr [rsp + 0xc], 0x7d
	mov	ebx, 0x7d
	jmp	.label_50
.label_62:
	movzx	ebx, ah
	jmp	.label_46
.label_63:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	ecx, dword ptr [rsp + 0xc]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	call	error
	mov	dword ptr [rsp + 0xc], 1
	mov	ebx, 1
	jmp	.label_50
.label_66:
	xor	esi, esi
	mov	edi, ebx
	call	signal
	lea	rbp, [rsp + 0x18]
	mov	rdi, rbp
	call	sigemptyset
	mov	rdi, rbp
	mov	esi, ebx
	call	sigaddset
	mov	edi, 1
	xor	edx, edx
	mov	rsi, rbp
	call	sigprocmask
	test	eax, eax
	je	.label_60
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_60:
	mov	edi, ebx
	call	raise
.label_61:
	or	ebx, 0x80
.label_46:
	mov	dword ptr [rsp + 0xc], ebx
.label_50:
	cmp	byte ptr [rip + timed_out],  1
	jne	.label_33
	mov	al, byte ptr [rip + preserve_status]
	test	al, al
	jne	.label_33
	mov	dword ptr [rsp + 0xc], 0x7c
	mov	ebx, 0x7c
.label_33:
	mov	eax, ebx
	add	rsp, 0x148
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_65:
	cmp	eax, 0xffffff7d
	je	.label_38
	cmp	eax, 0xffffff7e
	jne	.label_40
	xor	edi, edi
	call	usage
.label_38:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_13
	mov	edx, OFFSET FLAT:label_24
	mov	r8d, OFFSET FLAT:label_43
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_40:
	mov	edi, 0x7d
	call	usage
.label_55:
	mov	edi, 0x7d
	call	usage
.label_67:
	mov	edi, 0x7d
	call	usage
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402490

	.globl parse_duration
	.type parse_duration, @function
parse_duration:
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdi
	lea	rsi, [rsp + 0x10]
	lea	rdx, [rsp + 8]
	mov	ecx, OFFSET FLAT:cl_strtod
	call	xstrtod
	test	al, al
	jne	.label_72
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	jne	.label_74
.label_72:
	movsd	xmm1, qword ptr [rsp + 8]
	xorpd	xmm0, xmm0
	ucomisd	xmm1, xmm0
	jb	.label_74
	mov	rcx, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rcx]
	test	eax, eax
	je	.label_71
	cmp	byte ptr [rcx + 1], 0
	jne	.label_74
.label_71:
	movsd	xmm0, qword ptr [rip + label_78]
	lea	ecx, [rax - 0x64]
	cmp	ecx, 0xf
	ja	.label_79
	jmp	qword ptr [(rcx * 8) + label_73]
.label_475:
	movsd	xmm0, qword ptr [rip + label_75]
	jmp	.label_76
.label_79:
	test	eax, eax
	je	.label_76
.label_74:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 0x7d
	call	usage
.label_476:
	movsd	xmm0, qword ptr [rip + label_77]
	jmp	.label_76
.label_477:
	movsd	xmm0, qword ptr [rip + label_70]
.label_76:
	mulsd	xmm0, xmm1
	add	rsp, 0x18
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402560

	.globl settimeout
	.type settimeout, @function
settimeout:
	push	rbx
	sub	rsp, 0x30
	mov	ebx, edi
	movsd	qword ptr [rsp + 8], xmm0
	call	dtotimespec
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 0x28], rdx
	lea	rdx, [rsp]
	xor	edi, edi
	xor	esi, esi
	call	timer_create
	test	eax, eax
	je	.label_86
	test	bl, bl
	je	.label_80
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x26
	je	.label_80
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	jmp	.label_80
.label_86:
	mov	rdi, qword ptr [rsp]
	lea	rdx, [rsp + 0x10]
	xor	esi, esi
	xor	ecx, ecx
	call	timer_settime
	test	eax, eax
	je	.label_87
	test	bl, bl
	je	.label_85
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_82
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_85:
	mov	rdi, qword ptr [rsp]
	call	timer_delete
.label_80:
	mov	edi, 0xffffffff
	movsd	xmm1, qword ptr [rsp + 8]
	ucomisd	xmm1, qword ptr [rip + label_83]
	jae	.label_84
	cvttsd2si	rax, xmm1
	mov	ecx, eax
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rcx
	xor	edi, edi
	ucomisd	xmm1, xmm0
	seta	dil
	add	edi, eax
.label_84:
	call	alarm
.label_87:
	add	rsp, 0x30
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402660

	.globl cleanup
	.type cleanup, @function
cleanup:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x30
	mov	ebx, edi
	cmp	ebx, 0xe
	jne	.label_94
	mov	byte ptr [rip + timed_out],  1
	mov	ebx, dword ptr [rip + term_signal]
.label_94:
	cmp	dword ptr [rip + monitored_pid],  0
	je	.label_98
	movsd	xmm1, qword ptr [rip + kill_after]
	xorpd	xmm0, xmm0
	ucomisd	xmm1, xmm0
	jne	.label_88
	jnp	.label_93
.label_88:
	movsd	qword ptr [rsp + 8], xmm1
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	dword ptr [rip + term_signal],  9
	xor	edi, edi
	movsd	xmm0, qword ptr [rsp + 8]
	call	settimeout
	mov	qword ptr [rip + kill_after],  0
	mov	dword ptr [rbp], r14d
.label_93:
	cmp	byte ptr [rip + verbose],  1
	jne	.label_92
	lea	rsi, [rsp + 0x10]
	mov	edi, ebx
	call	sig2str
	test	eax, eax
	je	.label_95
	lea	rdi, [rsp + 0x10]
	mov	esi, 0x13
	mov	edx, 1
	mov	ecx, 0x13
	mov	r8d, OFFSET FLAT:label_96
	xor	eax, eax
	mov	r9d, ebx
	call	__snprintf_chk
.label_95:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, qword ptr [rip + command]
	call	quote
	mov	rbp, rax
	lea	rcx, [rsp + 0x10]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	r8, rbp
	call	error
.label_92:
	mov	ebp, dword ptr [rip + monitored_pid]
	test	ebp, ebp
	jne	.label_89
	mov	esi, 1
	mov	edi, ebx
	call	signal
.label_89:
	mov	edi, ebp
	mov	esi, ebx
	call	kill
	mov	al, byte ptr [rip + foreground]
	test	al, al
	jne	.label_90
	mov	esi, 1
	mov	edi, ebx
	call	signal
	xor	edi, edi
	mov	esi, ebx
	call	kill
	cmp	ebx, 9
	je	.label_90
	cmp	ebx, 0x12
	je	.label_90
	mov	ebx, dword ptr [rip + monitored_pid]
	test	ebx, ebx
	jne	.label_97
	mov	edi, 0x12
	mov	esi, 1
	call	signal
.label_97:
	mov	esi, 0x12
	mov	edi, ebx
	call	kill
	mov	edi, 0x12
	mov	esi, 1
	call	signal
	xor	edi, edi
	mov	esi, 0x12
	call	kill
.label_90:
	add	rsp, 0x30
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_98:
	sub	ebx, -0x80
	mov	edi, ebx
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027f0

	.globl chld
	.type chld, @function
chld:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402800

	.globl operand2sig
	.type operand2sig, @function
operand2sig:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	r15, rdi
	movsx	eax, byte ptr [r15]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_99
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	mov	rcx, qword ptr [rsp + 8]
	mov	edi, 0xffffffff
	cmp	rcx, r15
	je	.label_103
	cmp	byte ptr [rcx], 0
	jne	.label_103
	cmp	dword ptr [rbx], 0
	jne	.label_103
	cmp	eax, -1
	je	.label_103
	movsxd	rcx, eax
	cmp	rcx, rax
	jne	.label_103
	cmp	eax, 0xfe
	mov	ecx, 0xff
	mov	edi, 0x7f
	cmovg	edi, ecx
	and	edi, eax
.label_103:
	mov	dword ptr [rsp + 4], edi
	jmp	.label_111
.label_99:
	mov	rdi, r15
	call	xstrdup
	mov	r12, rax
	mov	bpl, byte ptr [r12]
	test	bpl, bpl
	je	.label_101
	lea	rbx, [r12 + 1]
	nop	word ptr [rax + rax]
.label_102:
	movsx	esi, bpl
	mov	edi, OFFSET FLAT:label_106
	mov	edx, 0x1b
	call	memchr
	test	rax, rax
	je	.label_110
	add	bpl, 0xe0
	mov	byte ptr [rbx - 1], bpl
.label_110:
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	test	bpl, bpl
	jne	.label_102
.label_101:
	lea	rsi, [rsp + 4]
	mov	rdi, r12
	call	str2sig
	test	eax, eax
	je	.label_100
	cmp	byte ptr [r12], 0x53
	jne	.label_104
	cmp	byte ptr [r12 + 1], 0x49
	jne	.label_104
	cmp	byte ptr [r12 + 2], 0x47
	jne	.label_104
	mov	rdi, r12
	add	rdi, 3
	lea	rsi, [rsp + 4]
	call	str2sig
	test	eax, eax
	je	.label_100
.label_104:
	mov	dword ptr [rsp + 4], 0xffffffff
.label_100:
	mov	rdi, r12
	call	free
	mov	edi, dword ptr [rsp + 4]
.label_111:
	test	edi, edi
	js	.label_108
	mov	rsi, r14
	call	sig2str
	test	eax, eax
	je	.label_107
.label_108:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_109
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	eax, 0xffffffff
	jmp	.label_105
.label_107:
	mov	eax, dword ptr [rsp + 4]
.label_105:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402980

	.globl cl_strtod
	.type cl_strtod, @function
cl_strtod:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsp + 8]
	call	strtod
	mov	r12, qword ptr [rsp + 8]
	cmp	byte ptr [r12], 0
	je	.label_113
	movsd	qword ptr [rsp + 0x10], xmm0
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 0x18]
	mov	rdi, rbx
	call	c_strtod
	mov	rax, qword ptr [rsp + 0x18]
	cmp	r12, rax
	jae	.label_114
	mov	qword ptr [rsp + 8], rax
	mov	r12, rax
	jmp	.label_113
.label_114:
	mov	dword ptr [r15], ebp
	movsd	xmm0, qword ptr [rsp + 0x10]
.label_113:
	test	r14, r14
	je	.label_112
	mov	qword ptr [r14], r12
.label_112:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a00
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a10
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a20

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_121
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_117
	cmp	dword ptr [rbp], 0x20
	jne	.label_117
.label_121:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_119
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_117:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_118
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_116
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_119:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_118:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_120
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ae0

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	movabs	rcx, 0x7fffffffffffffff
	xor	edx, edx
	ucomisd	xmm0, qword ptr [rip + label_122]
	jbe	.label_123
	mov	edx, 0x3b9ac9ff
	movsd	xmm1, qword ptr [rip + label_124]
	ucomisd	xmm1, xmm0
	jbe	.label_125
	cvttsd2si	rsi, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rsi
	subsd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_126]
	cvttsd2si	rax, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rax
	xor	ecx, ecx
	ucomisd	xmm0, xmm1
	seta	cl
	add	rcx, rax
	movabs	rdx, 0x112e0be826d694b3
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rdx, 0x3f
	sar	rax, 0x1a
	add	rax, rdx
	imul	rdi, rax, 0x3b9aca00
	mov	rdx, rcx
	sub	rdx, rdi
	add	rdx, 0x3b9aca00
	sub	rcx, rdi
	cmovns	rdx, rcx
	add	rax, rsi
	sar	rcx, 0x3f
	add	rcx, rax
.label_125:
	mov	rax, rcx
	ret	
.label_123:
	inc	rcx
	mov	rax, rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402b90

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_130
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_128
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_127
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_128
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_129
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_129:
	mov	rbx, r14
.label_128:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_130:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_131
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c40
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
	#Procedure 0x402c80
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
	#Procedure 0x402c90
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
	#Procedure 0x402ca0
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
	#Procedure 0x402ce0
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
	#Procedure 0x402d00
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_133
	test	rdx, rdx
	je	.label_133
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_133:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d30
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
	#Procedure 0x402db0

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
	jmp	.label_184
	nop	
.label_182:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_155
	or	al, dl
	jne	.label_155
	test	dil, 1
	jne	.label_180
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_155
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_184
	jmp	.label_155
.label_485:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_193
	test	rbp, rbp
	je	.label_195
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_195:
	mov	r14d, 1
	jmp	.label_199
.label_486:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_201
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_139
.label_193:
	xor	r14d, r14d
.label_199:
	mov	eax, OFFSET FLAT:label_201
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_210
	nop	
.label_184:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_217
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_242]
.label_487:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_228
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_160
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_488:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_241
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_241
	xor	r14d, r14d
	nop	
.label_196:
	cmp	r14, rbp
	jae	.label_175
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_175:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_196
.label_241:
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
	jmp	.label_139
.label_480:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_139
.label_483:
	mov	al, 1
.label_481:
	mov	r12b, 1
.label_484:
	test	r12b, 1
	mov	cl, 1
	je	.label_143
	mov	ecx, eax
.label_143:
	mov	al, cl
.label_482:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_147
	test	rbp, rbp
	je	.label_154
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_154:
	mov	r14d, 1
	jmp	.label_246
.label_147:
	xor	r14d, r14d
.label_246:
	mov	ecx, OFFSET FLAT:label_160
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_210:
	mov	sil, r12b
.label_139:
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
	jmp	.label_167
	nop	word ptr cs:[rax + rax]
.label_203:
	inc	r12
.label_167:
	cmp	r11, -1
	je	.label_205
	cmp	r12, r11
	jne	.label_207
	jmp	.label_209
	nop	word ptr cs:[rax + rax]
.label_205:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_181
.label_207:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_218
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_221
	cmp	r11, -1
	jne	.label_221
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_221:
	cmp	rbx, r11
	jbe	.label_232
.label_218:
	xor	esi, esi
.label_254:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_233
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_236]
.label_531:
	test	r12, r12
	jne	.label_194
	jmp	.label_188
	nop	word ptr cs:[rax + rax]
.label_232:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_251
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_254
	jmp	.label_134
.label_251:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_254
.label_535:
	xor	eax, eax
	cmp	r11, -1
	je	.label_137
	test	r12, r12
	jne	.label_142
	cmp	r11, 1
	je	.label_188
	xor	r13d, r13d
	jmp	.label_173
.label_524:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_149
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_134
	cmp	r8d, 2
	jne	.label_156
	mov	eax, r9d
	and	al, 1
	jne	.label_156
	cmp	r14, rbp
	jae	.label_161
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_161:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_163
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_163:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_171
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_171:
	add	r14, 3
	mov	r9b, 1
.label_156:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_179
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_179:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_178
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_178
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_178
	cmp	r14, rbp
	jae	.label_200
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_200:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_223
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_223:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_173
.label_525:
	mov	bl, 0x62
	jmp	.label_169
.label_526:
	mov	cl, 0x74
	jmp	.label_157
.label_527:
	mov	bl, 0x76
	jmp	.label_169
.label_528:
	mov	bl, 0x66
	jmp	.label_169
.label_529:
	mov	cl, 0x72
	jmp	.label_157
.label_532:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_215
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_162
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
	jae	.label_224
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_224:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_234
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_234:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_240
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_240:
	add	r14, 3
	xor	r9d, r9d
.label_215:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_173
.label_533:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_247
	cmp	r8d, 2
	jne	.label_194
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_194
	jmp	.label_162
.label_534:
	cmp	r8d, 2
	jne	.label_256
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_162
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_244
.label_233:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_260
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_145
.label_137:
	test	r12, r12
	jne	.label_159
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_159
.label_188:
	mov	dl, 1
.label_530:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_162
	xor	eax, eax
	mov	r13b, dl
.label_173:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_168
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_172
	jmp	.label_176
	nop	word ptr cs:[rax + rax]
.label_168:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_176
.label_172:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_197
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_186
	nop	dword ptr [rax]
.label_176:
	test	sil, sil
.label_186:
	mov	ebx, r15d
	je	.label_189
	jmp	.label_192
.label_197:
	mov	ebx, r15d
	jmp	.label_192
.label_149:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_203
	xor	r15d, r15d
	jmp	.label_194
.label_256:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_157
	xor	eax, eax
	mov	r15b, 0x5c
.label_244:
	xor	r13d, r13d
	jmp	.label_189
.label_157:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_162
.label_169:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_173
	nop	
.label_192:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_134
	cmp	r8d, 2
	jne	.label_216
	mov	eax, r9d
	and	al, 1
	jne	.label_216
	cmp	r14, rbp
	jae	.label_220
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_220:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_245
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_245:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_227
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_227:
	add	r14, 3
	mov	r9b, 1
.label_216:
	cmp	r14, rbp
	jae	.label_185
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_185:
	inc	r14
	jmp	.label_206
.label_260:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_237
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_237:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_259
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_243:
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
	je	.label_135
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_140
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_158
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_152
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_239:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_144
	bt	rsi, rdx
	jb	.label_162
.label_144:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_239
.label_152:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_238
	xor	r13d, r13d
.label_238:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_243
	jmp	.label_141
.label_178:
	xor	r13d, r13d
	jmp	.label_173
.label_159:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_173
.label_247:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_194
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_194
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_194
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_204
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_151
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_212
	cmp	r14, rbp
	jae	.label_213
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_213:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_219
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_219:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_187
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_187:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_146
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_146:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_151:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_173
.label_194:
	xor	eax, eax
.label_142:
	xor	r13d, r13d
	jmp	.label_173
.label_259:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_136:
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
	je	.label_252
	cmp	rbp, -1
	je	.label_255
	cmp	rbp, -2
	je	.label_135
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_258
	xor	r13d, r13d
.label_258:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_136
	jmp	.label_141
.label_135:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_150
	lea	rax, [r10 + r12]
.label_170:
	cmp	byte ptr [rax + rsi], 0
	je	.label_150
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_170
.label_150:
	mov	qword ptr [rsp + 0x40], rsi
.label_140:
	xor	r13d, r13d
	jmp	.label_158
.label_255:
	xor	r13d, r13d
.label_252:
	mov	r10, qword ptr [rsp + 0x28]
.label_158:
	mov	r12, qword ptr [rsp + 0x40]
.label_141:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_145:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_166
	test	al, al
	je	.label_166
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_173
.label_166:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_183
	nop	word ptr [rax + rax]
.label_138:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_183:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_191
	test	sil, 1
	je	.label_202
	cmp	r14, rbp
	jae	.label_198
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_198:
	inc	r14
	xor	esi, esi
	jmp	.label_202
	nop	word ptr cs:[rax + rax]
.label_191:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_134
	cmp	r8d, 2
	jne	.label_208
	mov	eax, r9d
	and	al, 1
	jne	.label_208
	cmp	r14, rbp
	jae	.label_211
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_211:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_214
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_214:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_174
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_174:
	add	r14, 3
	mov	r9b, 1
.label_208:
	cmp	r14, rbp
	jae	.label_225
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_225:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_230
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_230:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_235
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_235:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_202:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_189
	test	r9b, 1
	je	.label_248
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_222
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_250
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_250:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_257
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_257:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_248
	nop	word ptr cs:[rax + rax]
.label_222:
	mov	rbx, rcx
.label_248:
	cmp	r14, rbp
	jae	.label_138
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_138
	nop	
.label_189:
	test	r9b, 1
	je	.label_148
	and	al, 1
	jne	.label_148
	cmp	r14, rbp
	jae	.label_153
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_153:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_165
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_165:
	add	r14, 2
	xor	r9d, r9d
.label_148:
	mov	ebx, r15d
.label_206:
	cmp	r14, rbp
	jae	.label_164
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_164:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_203
.label_204:
	xor	r13d, r13d
	jmp	.label_173
	nop	word ptr cs:[rax + rax]
.label_209:
	mov	rcx, r12
.label_181:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_182
	or	al, dl
	jne	.label_182
	mov	r11, rcx
	jmp	.label_134
.label_162:
	mov	eax, 2
.label_253:
	mov	qword ptr [rsp + 0x38], rax
.label_134:
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
.label_177:
	mov	r14, rax
.label_249:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_155:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_226
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_190
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_190
	inc	rdx
	nop	dword ptr [rax + rax]
.label_231:
	cmp	r14, rbp
	jae	.label_229
	mov	byte ptr [rcx + r14], al
.label_229:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_231
	jmp	.label_190
.label_180:
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
	jmp	.label_177
.label_226:
	mov	rcx, qword ptr [rsp + 0x10]
.label_190:
	cmp	r14, rbp
	jae	.label_249
	mov	byte ptr [rcx + r14], 0
	jmp	.label_249
.label_212:
	mov	eax, 5
	jmp	.label_253
.label_217:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403be0
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
	#Procedure 0x403cb0
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
	je	.label_261
	mov	qword ptr [rax], rbx
.label_261:
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
	#Procedure 0x403da0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_262
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_264:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_264
.label_262:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_265
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_266], OFFSET FLAT:slot0
.label_265:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_263
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_263:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e40
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x403e50

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
	js	.label_270
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_273
	cmp	r12d, 0x7fffffff
	je	.label_268
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
	jne	.label_271
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_271:
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
.label_273:
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
	jbe	.label_269
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_272
.label_269:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_267
	mov	rdi, r14
	call	free
.label_267:
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
.label_272:
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
.label_270:
	call	abort
.label_268:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404010
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404020
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
	#Procedure 0x404040
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
	#Procedure 0x404060
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
	je	.label_274
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
.label_274:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4040d0
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
	je	.label_275
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
.label_275:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404140
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
	je	.label_276
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
.label_276:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041b0
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
	je	.label_277
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
.label_277:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404220
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_278]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_279]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_280]
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
	#Procedure 0x404290
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_278]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_279]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_280]
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
	#Procedure 0x404300

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_278]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_279]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_280]
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
	#Procedure 0x404360
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_278]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_279]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_280]
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
	#Procedure 0x4043c0
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
	je	.label_281
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
.label_281:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404460
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_278]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_279]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_280]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_282
	test	rdx, rdx
	je	.label_282
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_282:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4044d0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_278]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_279]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_280]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_283
	test	rdx, rdx
	je	.label_283
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_283:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404540
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_278]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_279]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_280]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_284
	test	rsi, rsi
	je	.label_284
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_284:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4045b0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_278]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_279]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_280]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_285
	test	rsi, rsi
	je	.label_285
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
.label_285:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404620
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404630
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
	#Procedure 0x404650
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404670

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
	#Procedure 0x404690

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
	jne	.label_290
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_294
	cmp	ecx, 0x55
	jne	.label_286
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_286
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_286
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_286
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_286
	cmp	byte ptr [rax + 5], 0
	jne	.label_286
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_292
	mov	eax, OFFSET FLAT:label_293
	jmp	.label_289
.label_294:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_286
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_286
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_286
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_286
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_286
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_286
	cmp	byte ptr [rax + 7], 0
	je	.label_291
.label_286:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_201
	mov	eax, OFFSET FLAT:label_160
.label_289:
	cmove	rax, rcx
.label_290:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_291:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_287
	mov	eax, OFFSET FLAT:label_288
	jmp	.label_289
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404760

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
	je	.label_307
	mov	edx, OFFSET FLAT:label_298
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_304
.label_307:
	mov	edx, OFFSET FLAT:label_305
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_304:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_309
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
	mov	esi, OFFSET FLAT:label_306
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_310
	jmp	qword ptr [(r12 * 8) + label_311]
.label_491:
	add	rsp, 8
	jmp	.label_297
.label_310:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_301
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
	jmp	.label_297
.label_492:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_296
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
.label_493:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_302
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
.label_494:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_299
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
.label_495:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_313
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
	jmp	.label_297
.label_496:
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
	jmp	.label_297
.label_497:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
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
	jmp	.label_297
.label_498:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_300
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
	jmp	.label_297
.label_500:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_303
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
	jmp	.label_297
.label_499:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_308
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
.label_297:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ac0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_314:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_314
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404af0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_325
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_327
.label_325:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_327:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_315
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
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_315
	cmp	r10d, 0x29
	jae	.label_322
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_323
.label_322:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_323:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_315
	cmp	r10d, 0x29
	jae	.label_320
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_321
.label_320:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_321:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_315
	cmp	r10d, 0x29
	jae	.label_318
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_319
.label_318:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_319:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_315
	cmp	r10d, 0x29
	jae	.label_316
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_317
.label_316:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_317:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_315
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_315
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_315
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_315
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_315:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ce0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_328
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_328:
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
	#Procedure 0x404d70
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_329
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_330
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_332
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_15
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_331
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404df0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_333
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_334
	test	rax, rax
	je	.label_333
.label_334:
	pop	rbx
	ret	
.label_333:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e30

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_335
	test	rax, rax
	je	.label_336
.label_335:
	pop	rbx
	ret	
.label_336:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e50
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_337
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_338
	test	rbx, rbx
	jne	.label_338
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_338:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_339
	test	rax, rax
	je	.label_337
.label_339:
	pop	rbx
	ret	
.label_337:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ea0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_340
	test	rbx, rbx
	jne	.label_340
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_340:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_342
	test	rax, rax
	je	.label_341
.label_342:
	pop	rbx
	ret	
.label_341:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404ed0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_346
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_348
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_343
.label_346:
	test	rcx, rcx
	jne	.label_349
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_349:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_344
.label_343:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_345
	test	rbx, rbx
	jne	.label_345
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_345:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_347
	test	rax, rax
	je	.label_348
.label_347:
	pop	rbx
	ret	
.label_348:
	call	xalloc_die
.label_344:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f70
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_350
	test	rax, rax
	je	.label_351
.label_350:
	pop	rbx
	ret	
.label_351:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f90
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_354
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_356
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_353
	call	free
	xor	eax, eax
	jmp	.label_355
.label_354:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_352
	mov	qword ptr [rsi], rbx
.label_353:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_355
	test	rax, rax
	je	.label_352
.label_355:
	pop	rbx
	ret	
.label_352:
	call	xalloc_die
.label_356:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405000
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
	je	.label_358
	test	r14, r14
	je	.label_357
.label_358:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_357:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405040
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_359
	call	rpl_calloc
	test	rax, rax
	je	.label_359
	pop	rcx
	ret	
.label_359:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405070

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
	je	.label_360
	test	r15, r15
	je	.label_361
.label_360:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_361:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4050b0

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
	je	.label_363
	test	r15, r15
	je	.label_362
.label_363:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_362:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405100

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_116
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405130

	.globl xstrtod
	.type xstrtod, @function
xstrtod:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r13, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	r13
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx, rbx
	je	.label_365
	test	r15, r15
	jne	.label_367
	cmp	byte ptr [rcx], 0
	je	.label_367
	xor	eax, eax
	jmp	.label_368
.label_367:
	mov	al, 1
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.label_369
	jnp	.label_366
.label_369:
	cmp	dword ptr [r12], 0x22
	setne	al
	jmp	.label_366
.label_365:
	xor	eax, eax
.label_366:
	test	r15, r15
	je	.label_368
	mov	qword ptr [r15], rcx
.label_368:
	movsd	qword ptr [r14], xmm0
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051b0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_370
	test	rsi, rsi
	mov	ecx, 1
	je	.label_371
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_371
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_370:
	mov	ecx, 1
.label_371:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405200

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
	je	.label_372
	cmp	r15, -2
	jb	.label_372
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_372
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_372:
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
	#Procedure 0x405260

	.globl str2sig
	.type str2sig, @function
str2sig:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	r12, rdi
	movsx	eax, byte ptr [r12]
	add	eax, -0x30
	cmp	eax, 0xa
	jae	.label_380
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	cmp	rax, 0x40
	jg	.label_375
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_379
	jmp	.label_375
.label_380:
	xor	ebx, ebx
	mov	ebp, OFFSET FLAT:label_382
	nop	word ptr cs:[rax + rax]
.label_384:
	mov	rdi, rbp
	mov	rsi, r12
	call	strcmp
	test	eax, eax
	je	.label_376
	inc	rbx
	add	rbp, 0xc
	cmp	rbx, 0x22
	jbe	.label_384
	call	__libc_current_sigrtmin
	mov	ebp, eax
	call	__libc_current_sigrtmax
	mov	r15d, eax
	test	ebp, ebp
	jle	.label_381
	mov	esi, OFFSET FLAT:label_378
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	je	.label_373
.label_381:
	test	r15d, r15d
	jle	.label_375
	mov	esi, OFFSET FLAT:label_377
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	jne	.label_375
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	mov	rcx, qword ptr [rsp + 8]
	cmp	byte ptr [rcx], 0
	jne	.label_375
	sub	ebp, r15d
	movsxd	rcx, ebp
	cmp	rcx, rax
	jg	.label_375
	test	rax, rax
	jg	.label_375
	mov	ecx, r15d
	jmp	.label_383
.label_376:
	mov	eax, dword ptr [rbp - 4]
	jmp	.label_379
.label_373:
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	test	rax, rax
	js	.label_375
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	jne	.label_375
	sub	r15d, ebp
	movsxd	rcx, r15d
	cmp	rax, rcx
	jle	.label_374
.label_375:
	mov	eax, 0xffffffff
.label_379:
	mov	dword ptr [r14], eax
	sar	eax, 0x1f
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_374:
	mov	ecx, ebp
.label_383:
	add	rax, rcx
	jmp	.label_379
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053c0

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rsi
	mov	ebp, edi
	mov	ecx, OFFSET FLAT:numname_table
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_387:
	mov	edx, eax
	cmp	dword ptr [rcx], ebp
	je	.label_392
	lea	esi, [rdx + 1]
	cmp	dword ptr [rcx + 0xc], ebp
	je	.label_390
	lea	esi, [rdx + 2]
	cmp	dword ptr [rcx + 0x18], ebp
	je	.label_390
	add	edx, 3
	cmp	dword ptr [rcx + 0x24], ebp
	mov	rsi, rdx
	je	.label_390
	cmp	dword ptr [rcx + 0x30], ebp
	je	.label_385
	add	rax, 5
	add	rcx, 0x3c
	cmp	eax, 0x23
	jb	.label_387
	call	__libc_current_sigrtmin
	mov	r14d, eax
	call	__libc_current_sigrtmax
	cmp	r14d, ebp
	mov	ebx, 0xffffffff
	jg	.label_388
	cmp	eax, ebp
	jl	.label_388
	mov	ecx, eax
	sub	ecx, r14d
	mov	edx, ecx
	shr	edx, 0x1f
	add	edx, ecx
	sar	edx, 1
	add	edx, r14d
	cmp	edx, ebp
	jge	.label_389
	mov	word ptr [r15 + 4], 0x58
	mov	dword ptr [r15], 0x414d5452
	mov	r14d, eax
	jmp	.label_386
.label_392:
	mov	rsi, rdx
	jmp	.label_390
.label_385:
	add	rax, 4
	mov	rsi, rax
.label_390:
	lea	rax, [rsi + rsi*2]
	lea	rsi, qword ptr [(rax * 4) + label_382]
	mov	rdi, r15
	call	strcpy
	xor	ebx, ebx
.label_388:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_389:
	mov	word ptr [r15 + 4], 0x4e
	mov	dword ptr [r15], 0x494d5452
.label_386:
	xor	ebx, ebx
	sub	ebp, r14d
	je	.label_388
	add	r15, 5
	xor	ebx, ebx
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_391
	xor	eax, eax
	mov	rdi, r15
	mov	r8d, ebp
	call	__sprintf_chk
	jmp	.label_388
	.section	.text
	.align	16
	#Procedure 0x4054c0

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	cmp	qword ptr [rip + c_locale_cache],  0
	jne	.label_393
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_394
	xor	edx, edx
	call	newlocale
	mov	qword ptr [rip + c_locale_cache],  rax
.label_393:
	mov	rdx, qword ptr [rip + c_locale_cache]
	test	rdx, rdx
	je	.label_396
	mov	rdi, r14
	mov	rsi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	strtod_l
.label_396:
	test	rbx, rbx
	je	.label_395
	mov	qword ptr [rbx], r14
.label_395:
	xorps	xmm0, xmm0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405520

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
	jne	.label_398
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_397
	test	cl, cl
	jne	.label_397
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_397
.label_398:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_397
	call	__errno_location
	mov	dword ptr [rax], 0
.label_397:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405580

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_400
	cmp	byte ptr [rax], 0x43
	jne	.label_402
	cmp	byte ptr [rax + 1], 0
	je	.label_399
.label_402:
	mov	esi, OFFSET FLAT:label_401
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_400
.label_399:
	xor	ebx, ebx
.label_400:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055c0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_32
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_403
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055f0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_404
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_406
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_404
.label_406:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_404
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_405
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_405:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_404:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405670

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_407
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_407
	test	byte ptr [rbx + 1], 1
	je	.label_407
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_407:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056b0

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
	jne	.label_408
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_408
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_409
.label_408:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_409:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_410
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_410:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x405720

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
