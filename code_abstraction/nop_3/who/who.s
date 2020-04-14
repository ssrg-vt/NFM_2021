	.section	.text
	.align	16
	#Procedure 0x4018f0

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
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
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
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.11
	mov	ecx, OFFSET FLAT:.str.12
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
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
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_7:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.13
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.13
	mov	ecx, OFFSET FLAT:.str.39
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_8:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b60

	.globl main
	.type main, @function
main:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.15
	mov	esi, OFFSET FLAT:.str.16
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.15
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	bpl, 1
	jmp	.label_11
.label_12:
	mov	byte ptr [byte ptr [rip + include_idle]],  1
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_11:
	mov	edx, OFFSET FLAT:.str.17_0
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x47
	jle	.label_17
	lea	ecx, [rax - 0x61]
	cmp	ecx, 0x1f
	ja	.label_18
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_20]]
.label_395:
	mov	byte ptr [byte ptr [rip + need_boottime]],  1
	mov	byte ptr [byte ptr [rip + need_deadprocs]],  1
	mov	byte ptr [byte ptr [rip + need_login]],  1
	mov	byte ptr [byte ptr [rip + need_initspawn]],  1
	mov	byte ptr [byte ptr [rip + need_runlevel]],  1
	mov	byte ptr [byte ptr [rip + need_clockchange]],  1
	mov	byte ptr [byte ptr [rip + need_users]],  1
	mov	byte ptr [byte ptr [rip + include_mesg]],  1
	jmp	.label_22
.label_18:
	cmp	eax, 0x48
	je	.label_13
	cmp	eax, 0x54
	jne	.label_14
.label_406:
	mov	byte ptr [byte ptr [rip + include_mesg]],  1
	jmp	.label_11
.label_396:
	mov	byte ptr [byte ptr [rip + need_boottime]],  1
	xor	ebp, ebp
	jmp	.label_11
.label_397:
	mov	byte ptr [byte ptr [rip + need_deadprocs]],  1
.label_22:
	mov	byte ptr [byte ptr [rip + include_idle]],  1
	mov	byte ptr [byte ptr [rip + include_exit]],  1
	xor	ebp, ebp
	jmp	.label_11
.label_398:
	mov	byte ptr [byte ptr [rip + need_login]],  1
	jmp	.label_12
.label_399:
	mov	byte ptr [byte ptr [rip + my_line_only]],  1
	jmp	.label_11
.label_400:
	mov	byte ptr [byte ptr [rip + need_initspawn]],  1
	xor	ebp, ebp
	jmp	.label_11
.label_401:
	mov	byte ptr [byte ptr [rip + short_list]],  1
	jmp	.label_11
.label_402:
	mov	byte ptr [byte ptr [rip + need_runlevel]],  1
	jmp	.label_12
.label_403:
	mov	byte ptr [byte ptr [rip + short_output]],  1
	jmp	.label_11
.label_404:
	mov	byte ptr [byte ptr [rip + need_clockchange]],  1
	xor	ebp, ebp
	jmp	.label_11
.label_405:
	mov	byte ptr [byte ptr [rip + need_users]],  1
	jmp	.label_12
.label_407:
	mov	byte ptr [byte ptr [rip + do_lookup]],  1
	jmp	.label_11
.label_13:
	mov	byte ptr [byte ptr [rip + include_heading]],  1
	jmp	.label_11
.label_17:
	cmp	eax, -1
	jne	.label_21
	test	bpl, bpl
	je	.label_15
	mov	byte ptr [byte ptr [rip + need_users]],  1
	mov	byte ptr [byte ptr [rip + short_output]],  1
.label_15:
	movzx	eax,  byte ptr [byte ptr [rip + include_exit]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_9
	mov	byte ptr [byte ptr [rip + short_output]],  0
.label_9:
	mov	edi, 2
	call	hard_locale
	mov	ecx, OFFSET FLAT:.str.22
	mov	edx, OFFSET FLAT:.str.23
	test	al, al
	cmovne	rdx, rcx
	movzx	eax, al
	lea	eax, [rax*4 + 0xc]
	mov	qword ptr [word ptr [rip + time_format]],  rdx
	mov	dword ptr [dword ptr [rip + time_format_width]],  eax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	sub	ebx, eax
	lea	ecx, [rbx + 1]
	cmp	ecx, 2
	jb	.label_24
	cmp	ebx, 1
	je	.label_16
	cmp	ebx, 2
	jne	.label_19
	mov	byte ptr [byte ptr [rip + my_line_only]],  1
.label_24:
	mov	edi, OFFSET FLAT:.str.11
	mov	esi, 1
	jmp	.label_23
.label_16:
	mov	rdi, qword ptr [r14 + rax*8]
	xor	esi, esi
.label_23:
	call	who
	xor	eax, eax
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_21:
	cmp	eax, 0xffffff7d
	je	.label_10
	cmp	eax, 0xffffff7e
	jne	.label_14
	xor	edi, edi
	call	usage
.label_10:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.21
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.19
	mov	r9d, OFFSET FLAT:.str.20
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_14:
	mov	edi, 1
	call	usage
.label_19:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r14 + rax*8 + 0x10]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e40

	.globl who
	.type who, @function
who:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x238
	mov	eax, esi
	mov	rbx, rdi
	lea	rsi, [rsp + 0x58]
	lea	rdx, [rsp + 0x50]
	mov	ecx, eax
	call	read_utmp
	test	eax, eax
	jne	.label_40
	mov	r12, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0x50]
	movzx	eax,  byte ptr [byte ptr [rip + short_list]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_41
	mov	r15d, OFFSET FLAT:.str_0
	xor	r14d, r14d
	jmp	.label_62
	nop	word ptr cs:[rax + rax]
.label_45:
	add	rbx, 0x180
.label_62:
	test	r12, r12
	je	.label_44
	dec	r12
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_45
	movzx	eax, word ptr [rbx]
	cmp	eax, 7
	jne	.label_45
	mov	rdi, rbx
	call	extract_trimmed_name
	mov	rbp, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.58
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, rbp
	call	__printf_chk
	mov	rdi, rbp
	call	free
	inc	r14
	mov	r15d, OFFSET FLAT:.str.59
	jmp	.label_45
.label_41:
	movzx	eax,  byte ptr [byte ptr [rip + include_heading]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_55
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x48], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x40], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x10], r14
	mov	qword ptr [rsp + 8], rbp
	mov	qword ptr [rsp], r13
	mov	edi, 0xffffffff
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	rsi, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x40]
	mov	r9, r15
	call	print_line
.label_55:
	movzx	eax,  byte ptr [byte ptr [rip + my_line_only]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_77
	xor	edi, edi
	call	ttyname
	mov	rbp, rax
	test	rbp, rbp
	je	.label_28
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	mov	rdi, rbp
	call	strncmp
	lea	r13, [rbp + 5]
	test	eax, eax
	cmovne	r13, rbp
.label_77:
	mov	qword ptr [rsp + 0x40], r13
	test	r12, r12
	je	.label_28
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rsp + 0x48], rax
	nop	word ptr cs:[rax + rax]
.label_42:
	movzx	eax,  byte ptr [byte ptr [rip + my_line_only]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_32
	lea	rsi, [rbx + 8]
	mov	edx, 0x20
	mov	rdi, r13
	call	strncmp
	test	eax, eax
	jne	.label_27
.label_32:
	movzx	eax,  byte ptr [byte ptr [rip + need_users]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_37
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_37
	movzx	eax, word ptr [rbx]
	cmp	eax, 7
	jne	.label_37
	movsxd	r8, dword ptr [rbx + 4]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:.str.74
	xor	eax, eax
	lea	rdi, [rsp + 0x164]
	call	__sprintf_chk
	movzx	ecx, byte ptr [rbx + 8]
	cmp	ecx, 0x2f
	lea	rax, [rsp + 0x170]
	je	.label_43
	mov	word ptr [rsp + 0x174], 0x2f
	mov	dword ptr [rsp + 0x170], 0x7665642f
	test	cl, cl
	lea	rax, [rsp + 0x175]
	mov	rdx, rax
	je	.label_46
.label_43:
	lea	rdx, [rbx + 0x28]
	mov	edi, 9
	nop	word ptr cs:[rax + rax]
.label_56:
	mov	rsi, rdi
	lea	rdi, [rbx + rsi]
	mov	byte ptr [rax + rsi - 9], cl
	cmp	rdi, rdx
	jae	.label_54
	mov	cl, byte ptr [rdi]
	lea	rdi, [rsi + 1]
	test	cl, cl
	jne	.label_56
.label_54:
	lea	rdx, [rax + rsi - 8]
.label_46:
	mov	byte ptr [rdx], 0
	mov	edi, 1
	lea	rsi, [rsp + 0x170]
	lea	rdx, [rsp + 0x1a8]
	call	__xstat
	mov	r14b, 0x3f
	test	eax, eax
	jne	.label_61
	mov	r14b, byte ptr [rsp + 0x1c0]
	shr	r14b, 3
	not	r14b
	and	r14b, 2
	add	r14b, 0x2b
	mov	rbp, qword ptr [rsp + 0x1f0]
	test	rbp, rbp
	je	.label_61
	movabs	rax, 0x8000000000000000
	cmp	qword ptr [word ptr [rip + idle_string.now]],  rax
	jne	.label_65
	mov	edi, OFFSET FLAT:idle_string.now
	call	time
.label_65:
	cmp	rbp, qword ptr [rsp + 0x48]
	jle	.label_52
	mov	rax,  qword ptr [word ptr [rip + idle_string.now]]
	cmp	rax, rbp
	jl	.label_52
	lea	rcx, [rax - 0x15180]
	cmp	rcx, rbp
	jge	.label_52
	sub	eax, ebp
	cmp	eax, 0x3c
	mov	r9d, OFFSET FLAT:.str.79
	jl	.label_49
	cmp	eax, 0x15180
	jge	.label_36
	movsxd	rcx, eax
	imul	r8, rcx, -0x6e5d4c3b
	shr	r8, 0x20
	add	r8d, eax
	mov	ecx, r8d
	shr	ecx, 0x1f
	sar	r8d, 0xb
	add	r8d, ecx
	imul	ecx, r8d, 0xe10
	sub	eax, ecx
	movsxd	r9, eax
	imul	rax, r9, -0x77777777
	shr	rax, 0x20
	add	r9d, eax
	mov	eax, r9d
	shr	eax, 0x1f
	sar	r9d, 5
	add	r9d, eax
	mov	edi, OFFSET FLAT:idle_string.idle_hhmm
	mov	esi, 1
	mov	edx, 6
	mov	ecx, OFFSET FLAT:.str.82
	xor	eax, eax
	call	__sprintf_chk
	mov	r9d, OFFSET FLAT:idle_string.idle_hhmm
	jmp	.label_49
	nop	
.label_37:
	movzx	eax,  byte ptr [byte ptr [rip + need_runlevel]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_47
	movzx	eax, word ptr [rbx]
	cmp	eax, 1
	jne	.label_47
	mov	r15d, dword ptr [rbx + 4]
	mov	ebp, r15d
	sar	ebp, 0x1f
	shr	ebp, 0x18
	add	ebp, r15d
	mov	r14,  qword ptr [word ptr [rip + print_runlevel.runlevline]]
	test	r14, r14
	jne	.label_35
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.84
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 3]
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [word ptr [rip + print_runlevel.runlevline]],  r14
.label_35:
	sar	ebp, 8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.84
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
	movzx	r9d, r15b
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.85
	xor	eax, eax
	mov	rdi, r14
	call	__sprintf_chk
	mov	r14,  qword ptr [word ptr [rip + print_runlevel.comment]]
	test	r14, r14
	jne	.label_48
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.86
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 2]
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [word ptr [rip + print_runlevel.comment]],  r14
.label_48:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.86
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
	movzx	ebp, bpl
	cmp	ebp, 0x4e
	mov	r9d, ebp
	mov	eax, 0x53
	cmove	r9d, eax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.87
	xor	eax, eax
	mov	rdi, r14
	call	__sprintf_chk
	mov	r14,  qword ptr [word ptr [rip + print_runlevel.runlevline]]
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x60], rax
	lea	rdi, [rsp + 0x60]
	call	localtime
	test	rax, rax
	je	.label_66
	mov	rdx,  qword ptr [word ptr [rip + time_format]]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_69
	nop	word ptr cs:[rax + rax]
.label_47:
	movzx	eax,  byte ptr [byte ptr [rip + need_boottime]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_71
	movzx	eax, word ptr [rbx]
	cmp	eax, 2
	jne	.label_71
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.88
	jmp	.label_73
.label_71:
	movzx	eax,  byte ptr [byte ptr [rip + need_clockchange]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_74
	movzx	eax, word ptr [rbx]
	cmp	eax, 3
	jne	.label_74
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.89
.label_73:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x60], rax
	lea	rdi, [rsp + 0x60]
	call	localtime
	test	rax, rax
	je	.label_25
	mov	rdx,  qword ptr [word ptr [rip + time_format]]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_31
	nop	
.label_74:
	movzx	eax,  byte ptr [byte ptr [rip + need_initspawn]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_33
	movzx	eax, word ptr [rbx]
	cmp	eax, 5
	jne	.label_33
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.90
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 5]
	call	xmalloc
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.90
	mov	edx, 5
	call	dcgettext
	mov	rdi, rbp
	mov	rsi, rax
	call	strcpy
	lea	rsi, [rbx + 0x28]
	mov	edx, 4
	mov	rcx, -1
	mov	rdi, rbp
	call	__strncat_chk
	movsxd	r8, dword ptr [rbx + 4]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:.str.74
	xor	eax, eax
	lea	rdi, [rsp + 0x164]
	call	__sprintf_chk
	lea	r15, [rbx + 8]
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x60], rax
	lea	rdi, [rsp + 0x60]
	call	localtime
	test	rax, rax
	je	.label_51
	mov	rdx,  qword ptr [word ptr [rip + time_format]]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_80
.label_33:
	movzx	eax,  byte ptr [byte ptr [rip + need_login]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_57
	movzx	eax, word ptr [rbx]
	cmp	eax, 6
	jne	.label_57
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.90
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 5]
	call	xmalloc
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.90
	mov	edx, 5
	call	dcgettext
	mov	rdi, rbp
	mov	rsi, rax
	call	strcpy
	lea	rsi, [rbx + 0x28]
	mov	edx, 4
	mov	rcx, -1
	mov	rdi, rbp
	call	__strncat_chk
	movsxd	r8, dword ptr [rbx + 4]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:.str.74
	xor	eax, eax
	lea	rdi, [rsp + 0x164]
	call	__sprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.91
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	lea	r14, [rbx + 8]
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x60], rax
	lea	rdi, [rsp + 0x60]
	call	localtime
	test	rax, rax
	je	.label_58
	mov	rdx,  qword ptr [word ptr [rip + time_format]]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_84
.label_57:
	movzx	eax,  byte ptr [byte ptr [rip + need_deadprocs]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_27
	movzx	eax, word ptr [rbx]
	cmp	eax, 8
	jne	.label_27
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.90
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 5]
	call	xmalloc
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.90
	mov	edx, 5
	call	dcgettext
	mov	rdi, r15
	mov	rsi, rax
	call	strcpy
	lea	rsi, [rbx + 0x28]
	mov	edx, 4
	mov	rcx, -1
	mov	rdi, r15
	call	__strncat_chk
	movsxd	r8, dword ptr [rbx + 4]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:.str.74
	xor	eax, eax
	lea	rdi, [rsp + 0x164]
	call	__sprintf_chk
	mov	rbp,  qword ptr [word ptr [rip + print_deadprocs.exitstr]]
	test	rbp, rbp
	jne	.label_75
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.92
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.93
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rbp + rax + 0xe]
	call	xmalloc
	mov	rbp, rax
	mov	qword ptr [word ptr [rip + print_deadprocs.exitstr]],  rbp
.label_75:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.92
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movsx	r13d, word ptr [rbx + 0x14c]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.93
	mov	edx, 5
	call	dcgettext
	movsx	ecx, word ptr [rbx + 0x14e]
	mov	dword ptr [rsp + 8], ecx
	mov	qword ptr [rsp], rax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.94
	xor	eax, eax
	mov	rdi, rbp
	mov	r8, r14
	mov	r9d, r13d
	call	__sprintf_chk
	lea	rbp, [rbx + 8]
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x60], rax
	lea	rdi, [rsp + 0x60]
	call	localtime
	test	rax, rax
	je	.label_68
	mov	rdx,  qword ptr [word ptr [rip + time_format]]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_70
.label_61:
	mov	esi, 1
	mov	edx, 7
	mov	ecx, OFFSET FLAT:.str.76
	xor	eax, eax
	lea	rdi, [rsp + 0x1a1]
	call	__sprintf_chk
	jmp	.label_34
.label_25:
	mov	rdi, qword ptr [rsp + 0x60]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_31:
	mov	qword ptr [word ptr [rsp + 24]], OFFSET FLAT:.str_0
	mov	qword ptr [word ptr [rsp + 16]], OFFSET FLAT:.str_0
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str_0
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str_0
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:.str_0
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	jmp	.label_78
.label_66:
	mov	rdi, qword ptr [rsp + 0x60]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_69:
	add	ebp, -0x20
	cmp	ebp, 0x5f
	mov	rax,  qword ptr [word ptr [rip + print_runlevel.comment]]
	mov	ecx, OFFSET FLAT:.str_0
	cmovae	rax, rcx
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [word ptr [rsp + 24]], OFFSET FLAT:.str_0
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str_0
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str_0
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:.str_0
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	r8, r14
	call	print_line
	jmp	.label_27
.label_51:
	mov	rdi, qword ptr [rsp + 0x60]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_80:
	mov	qword ptr [rsp + 0x10], rbp
	lea	rax, [rsp + 0x164]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [word ptr [rsp + 24]], OFFSET FLAT:.str_0
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str_0
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:.str_0
	mov	edx, 0x20
	mov	ecx, 0x20
	mov	r8, r15
	jmp	.label_59
.label_52:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	r9, rax
.label_49:
	mov	esi, 1
	mov	edx, 7
	mov	ecx, OFFSET FLAT:.str.75
	mov	r8d, 6
	xor	eax, eax
	lea	rdi, [rsp + 0x1a1]
	call	__sprintf_chk
.label_34:
	mov	al, byte ptr [rbx + 0x4c]
	test	al, al
	je	.label_81
	lea	rcx, [rbx + 0x14c]
	mov	esi, 0x4d
	nop	word ptr cs:[rax + rax]
.label_53:
	mov	rdx, rsi
	lea	rsi, [rbx + rdx]
	mov	byte ptr [rsp + rdx + 0x13], al
	cmp	rsi, rcx
	jae	.label_60
	mov	al, byte ptr [rsi]
	lea	rsi, [rdx + 1]
	test	al, al
	jne	.label_53
.label_60:
	mov	byte ptr [rsp + 0x3f], r14b
	mov	byte ptr [rsp + rdx + 0x14], 0
	mov	esi, 0x3a
	lea	rdi, [rsp + 0x60]
	call	strchr
	test	rax, rax
	mov	r14d, 0
	je	.label_64
	mov	r14, rax
	inc	r14
	mov	byte ptr [rax], 0
.label_64:
	cmp	byte ptr [rsp + 0x60], 0
	mov	eax, 0
	je	.label_67
	movzx	eax,  byte ptr [byte ptr [rip + do_lookup]]
	and	eax, 1
	cmp	eax, 1
	mov	eax, 0
	jne	.label_67
	lea	rdi, [rsp + 0x60]
	call	canon_host
.label_67:
	mov	qword ptr [rsp + 0x30], rax
	test	rax, rax
	mov	rbp, rax
	lea	rax, [rsp + 0x60]
	cmove	rbp, rax
	mov	r15,  qword ptr [word ptr [rip + print_user.hostlen]]
	mov	rdi, rbp
	call	strlen
	mov	r13, rax
	test	r14, r14
	je	.label_72
	mov	rdi, r14
	call	strlen
	lea	rax, [r13 + rax + 4]
	cmp	r15, rax
	jae	.label_76
	mov	qword ptr [word ptr [rip + print_user.hostlen]],  rax
	mov	rdi,  qword ptr [word ptr [rip + print_user.hoststr]]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + print_user.hostlen]]
	call	xmalloc
	mov	rdi, rax
	mov	qword ptr [word ptr [rip + print_user.hoststr]],  rdi
	jmp	.label_82
.label_81:
	cmp	qword ptr [word ptr [rip + print_user.hostlen]],  0
	je	.label_85
	mov	rax,  qword ptr [word ptr [rip + print_user.hoststr]]
	jmp	.label_29
.label_72:
	add	r13, 3
	cmp	r15, r13
	jae	.label_30
	mov	qword ptr [word ptr [rip + print_user.hostlen]],  r13
	mov	rdi,  qword ptr [word ptr [rip + print_user.hoststr]]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + print_user.hostlen]]
	call	xmalloc
	mov	rdi, rax
	mov	qword ptr [word ptr [rip + print_user.hoststr]],  rdi
	jmp	.label_63
.label_76:
	mov	rdi,  qword ptr [word ptr [rip + print_user.hoststr]]
.label_82:
	mov	r13, qword ptr [rsp + 0x40]
	mov	r15, qword ptr [rsp + 0x30]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.77
	xor	eax, eax
	mov	r8, rbp
	mov	r9, r14
	call	__sprintf_chk
	mov	r14b, byte ptr [rsp + 0x3f]
	jmp	.label_39
.label_58:
	mov	rdi, qword ptr [rsp + 0x60]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_84:
	mov	qword ptr [rsp + 0x10], rbp
	lea	rax, [rsp + 0x164]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [word ptr [rsp + 24]], OFFSET FLAT:.str_0
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str_0
	mov	edi, 0xffffffff
	mov	edx, 0x20
	mov	ecx, 0x20
	mov	rsi, r15
	mov	r8, r14
.label_59:
	call	print_line
	mov	rdi, rbp
	jmp	.label_50
.label_85:
	mov	qword ptr [word ptr [rip + print_user.hostlen]],  1
	mov	rdi,  qword ptr [word ptr [rip + print_user.hoststr]]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + print_user.hostlen]]
	call	xmalloc
	mov	qword ptr [word ptr [rip + print_user.hoststr]],  rax
.label_29:
	mov	byte ptr [rax], 0
	jmp	.label_26
.label_68:
	mov	rdi, qword ptr [rsp + 0x60]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_70:
	mov	r13, qword ptr [rsp + 0x40]
	mov	rax,  qword ptr [word ptr [rip + print_deadprocs.exitstr]]
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x10], r15
	lea	rax, [rsp + 0x164]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str_0
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:.str_0
	mov	edx, 0x20
	mov	ecx, 0x20
	mov	r8, rbp
	call	print_line
	mov	rdi, r15
.label_50:
	call	free
	jmp	.label_27
.label_30:
	mov	rdi,  qword ptr [word ptr [rip + print_user.hoststr]]
.label_63:
	mov	r14b, byte ptr [rsp + 0x3f]
	mov	r15, qword ptr [rsp + 0x30]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.78
	xor	eax, eax
	mov	r8, rbp
	call	__sprintf_chk
	mov	r13, qword ptr [rsp + 0x40]
.label_39:
	test	r15, r15
	je	.label_26
	mov	rdi, rbp
	call	free
.label_26:
	lea	r15, [rbx + 0x2c]
	lea	rbp, [rbx + 8]
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x60], rax
	lea	rdi, [rsp + 0x60]
	call	localtime
	test	rax, rax
	je	.label_79
	mov	rdx,  qword ptr [word ptr [rip + time_format]]
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	mov	r9d, OFFSET FLAT:time_string.buf
	jmp	.label_83
.label_79:
	mov	rdi, qword ptr [rsp + 0x60]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	r9, rax
.label_83:
	mov	rax,  qword ptr [word ptr [rip + print_user.hoststr]]
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rax, rcx
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x164]
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rsp + 0x1a1]
	mov	qword ptr [rsp], rax
	mov	qword ptr [word ptr [rsp + 24]], OFFSET FLAT:.str_0
	movsx	edx, r14b
	mov	edi, 0x20
	mov	ecx, 0x20
	mov	rsi, r15
.label_78:
	mov	r8, rbp
	call	print_line
.label_27:
	dec	r12
	movzx	eax, word ptr [rbx]
	cmp	eax, 2
	jne	.label_38
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x48], rax
.label_38:
	add	rbx, 0x180
	test	r12, r12
	jne	.label_42
	jmp	.label_28
.label_44:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rdx, r14
	call	__printf_chk
.label_28:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	add	rsp, 0x238
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_40:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_36:
	mov	edi, OFFSET FLAT:.str.80
	mov	esi, OFFSET FLAT:.str.81
	mov	edx, 0xcd
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.idle_string
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d20

	.globl print_line
	.type print_line, @function
print_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x50], r8
	mov	r13d, ecx
	mov	rbp, rsi
	mov	r12d, edi
	mov	byte ptr [byte ptr [rip + label_89]],  dl
	movzx	eax,  byte ptr [byte ptr [rip + include_idle]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_86
	mov	al,  byte ptr [byte ptr [rip + short_output]]
	and	al, 1
	jne	.label_86
	mov	r14, qword ptr [rsp + 0xb0]
	mov	rdi, r14
	call	strlen
	cmp	rax, 6
	ja	.label_86
	lea	rdi, [rsp + 0x68]
	mov	esi, 1
	mov	edx, 8
	mov	ecx, OFFSET FLAT:.str.69
	xor	eax, eax
	mov	r8, r14
	call	__sprintf_chk
	jmp	.label_95
.label_86:
	mov	byte ptr [rsp + 0x68], 0
.label_95:
	mov	al,  byte ptr [byte ptr [rip + short_output]]
	and	al, 1
	jne	.label_92
	mov	r14, qword ptr [rsp + 0xb8]
	mov	rdi, r14
	call	strlen
	cmp	rax, 0xb
	ja	.label_92
	lea	rdi, [rsp + 0x5b]
	mov	esi, 1
	mov	edx, 0xd
	mov	ecx, OFFSET FLAT:.str.70
	xor	eax, eax
	mov	r8, r14
	call	__sprintf_chk
	jmp	.label_88
.label_92:
	mov	byte ptr [rsp + 0x5b], 0
.label_88:
	mov	r14, qword ptr [rsp + 0xc8]
	mov	edi, 1
	movzx	eax,  byte ptr [byte ptr [rip + include_exit]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_94
	mov	rdi, r14
	call	strlen
	cmp	rax, 0xc
	lea	rax, [rax + 2]
	mov	edi, 0xe
	cmovae	rdi, rax
.label_94:
	mov	r15, qword ptr [rsp + 0xc0]
	call	xmalloc
	mov	rbx, rax
	movzx	eax,  byte ptr [byte ptr [rip + include_exit]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_91
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.71
	xor	eax, eax
	mov	rdi, rbx
	mov	r8, r14
	call	__sprintf_chk
	jmp	.label_87
.label_91:
	mov	byte ptr [rbx], 0
.label_87:
	mov	ecx, r12d
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdi, qword ptr [rsp + 0x48]
	test	rbp, rbp
	mov	r8d, OFFSET FLAT:.str.73
	cmovne	r8, rbp
	mov	al,  byte ptr [byte ptr [rip + include_mesg]]
	and	al, 1
	mov	eax, OFFSET FLAT:print_line.mesg
	mov	r9d, OFFSET FLAT:.str_0
	cmovne	r9, rax
	mov	eax,  dword ptr [dword ptr [rip + time_format_width]]
	mov	qword ptr [rsp + 0x38], rbx
	mov	qword ptr [rsp + 0x30], r15
	lea	rdx, [rsp + 0x5b]
	mov	qword ptr [rsp + 0x28], rdx
	lea	rdx, [rsp + 0x68]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rdi
	mov	dword ptr [rsp + 0x10], eax
	mov	qword ptr [rsp + 8], rsi
	mov	dword ptr [rsp], r13d
	lea	rdi, [rsp + 0x70]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.72
	xor	eax, eax
	call	__asprintf_chk
	cmp	eax, -1
	je	.label_93
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	call	strlen
	lea	rax, [rax + rbp + 1]
	nop	dword ptr [rax + rax]
.label_90:
	movzx	ecx, byte ptr [rax - 2]
	dec	rax
	cmp	ecx, 0x20
	je	.label_90
	mov	byte ptr [rax], 0
	mov	rdi, qword ptr [rsp + 0x70]
	call	puts
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	rdi, rbx
	call	free
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_93:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x402f30

	.globl canon_host
	.type canon_host, @function
canon_host:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rdi
	mov	qword ptr [rsp + 8], 0
	mov	dword ptr [dword ptr [rip + canon_host_r.hints]],  2
	lea	rcx, [rsp + 8]
	xor	esi, esi
	mov	edx, OFFSET FLAT:canon_host_r.hints
	call	getaddrinfo
	test	eax, eax
	je	.label_98
	mov	dword ptr [dword ptr [rip + last_cherror]],  eax
	xor	ebx, ebx
	jmp	.label_96
.label_98:
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0x20]
	test	rax, rax
	cmovne	rbx, rax
	mov	rdi, rbx
	call	__strdup
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_97
	mov	dword ptr [dword ptr [rip + last_cherror]],  0xfffffff6
.label_97:
	mov	rdi, qword ptr [rsp + 8]
	call	freeaddrinfo
.label_96:
	mov	rax, rbx
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fb0
	.globl canon_host_r
	.type canon_host_r, @function
canon_host_r:

	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], 0
	mov	dword ptr [dword ptr [rip + canon_host_r.hints]],  2
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, OFFSET FLAT:canon_host_r.hints
	call	getaddrinfo
	test	eax, eax
	je	.label_101
	xor	ebx, ebx
	test	r14, r14
	je	.label_99
	mov	dword ptr [r14], eax
	xor	ebx, ebx
	jmp	.label_99
.label_101:
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax + 0x20]
	test	rax, rax
	cmovne	rbx, rax
	mov	rdi, rbx
	call	__strdup
	mov	rbx, rax
	test	r14, r14
	je	.label_100
	test	rbx, rbx
	jne	.label_100
	mov	dword ptr [r14], 0xfffffff6
.label_100:
	mov	rdi, qword ptr [rsp]
	call	freeaddrinfo
.label_99:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403030
	.globl ch_strerror
	.type ch_strerror, @function
ch_strerror:

	mov	edi,  dword ptr [dword ptr [rip + last_cherror]]
	jmp	gai_strerror
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403040
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403050
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403060

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_105
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_102
	cmp	dword ptr [rbp], 0x20
	jne	.label_102
.label_105:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_104
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_102:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_103
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_104:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_103:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403120

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_107
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_108
	cmp	byte ptr [rax + 1], 0
	je	.label_106
.label_108:
	mov	esi, OFFSET FLAT:.str.1_1
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_107
.label_106:
	xor	ebx, ebx
.label_107:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x403160

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_109
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_110:
	mov	rax, rcx
	imul	r8
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_110
	jmp	.label_112
.label_109:
	add	rsi, 0x15
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_111:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	sub	eax, edi
	mov	byte ptr [rsi - 2], al
	add	rdx, r10
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_111
	mov	byte ptr [rsi - 2], 0x2d
	add	rsi, -2
.label_112:
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403220

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_113
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_114
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_114
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_115
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_115:
	mov	rbx, r14
.label_114:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_113:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_3
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032d0
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
	#Procedure 0x403310
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
	#Procedure 0x403320
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
	#Procedure 0x403330
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
	#Procedure 0x403370
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
	#Procedure 0x403390
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_116
	test	rdx, rdx
	je	.label_116
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_116:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033c0
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
	#Procedure 0x403440

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
.label_121:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_184
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_187]]
.label_377:
	mov	edi, OFFSET FLAT:.str.11_0
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
.label_378:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_209
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_209
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_229:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_221
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_221:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_229
.label_209:
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
	jmp	.label_135
.label_370:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_135
.label_373:
	mov	al, 1
.label_371:
	mov	r12b, 1
.label_374:
	test	r12b, 1
	mov	cl, 1
	je	.label_141
	mov	cl, al
.label_141:
	mov	al, cl
.label_372:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_145
	test	r10, r10
	je	.label_149
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_150
.label_145:
	xor	ecx, ecx
	jmp	.label_150
.label_375:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_159
	test	r10, r10
	je	.label_164
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_167
.label_376:
	mov	dil, 1
	mov	r9d, 5
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_135
.label_149:
	mov	ecx, 1
.label_150:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_135
.label_159:
	xor	eax, eax
	jmp	.label_167
.label_164:
	mov	eax, 1
.label_167:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_135:
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
	jmp	.label_198
.label_118:
	inc	rdi
.label_198:
	cmp	rbp, -1
	je	.label_234
	cmp	rdi, rbp
	jne	.label_238
	jmp	.label_239
	nop	word ptr cs:[rax + rax]
.label_234:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_117
.label_238:
	test	r12b, r12b
	je	.label_124
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_126
	cmp	rbp, -1
	jne	.label_126
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
.label_126:
	cmp	rbx, rbp
	jbe	.label_155
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_158
	nop	word ptr [rax + rax]
.label_124:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_158
.label_155:
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
	jne	.label_182
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_158
	jmp	.label_130
.label_182:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_158:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_216
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_204]]
.label_388:
	test	rdi, rdi
	jne	.label_120
	jmp	.label_211
.label_392:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_212
	test	rdi, rdi
	jne	.label_215
	cmp	rbp, 1
	je	.label_211
	xor	r13d, r13d
	jmp	.label_136
.label_381:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_218
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_130
	cmp	r9d, 2
	jne	.label_223
	mov	al, r14b
	and	al, 1
	jne	.label_224
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_227
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_227:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_236
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_236:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_151
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_151:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_129
.label_382:
	mov	bl, 0x62
	jmp	.label_138
.label_383:
	mov	cl, 0x74
	jmp	.label_123
.label_384:
	mov	bl, 0x76
	jmp	.label_138
.label_385:
	mov	bl, 0x66
	jmp	.label_138
.label_386:
	mov	cl, 0x72
	jmp	.label_123
.label_389:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_147
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_152
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
	jae	.label_181
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_181:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_178
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_178:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_199
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_199:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_147:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_136
.label_390:
	cmp	r9d, 5
	je	.label_188
	cmp	r9d, 2
	jne	.label_120
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_120
	jmp	.label_193
.label_391:
	cmp	r9d, 2
	jne	.label_195
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_200
	jmp	.label_205
.label_216:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_207
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
.label_185:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_219
	test	cl, cl
	je	.label_219
	xor	eax, eax
	jmp	.label_136
.label_212:
	test	rdi, rdi
	jne	.label_232
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_232
.label_211:
	mov	dl, 1
.label_387:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_237
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_136
.label_218:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_118
	jmp	.label_120
.label_195:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_123
.label_200:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_128
.label_123:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_132
.label_138:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_136
	jmp	.label_142
.label_207:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_144
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_144:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_210:
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
	je	.label_177
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_180
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_183
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_228
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_194:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_190
	bt	rsi, rdx
	jb	.label_192
.label_190:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_194
.label_228:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_169
	xor	r13d, r13d
.label_169:
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
	je	.label_210
	jmp	.label_185
.label_232:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_136
.label_188:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_120
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_120
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_120
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_225
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_230
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_206
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_240
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_240:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_122
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_122:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_134
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_134:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_222
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_222:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_136
.label_120:
	xor	eax, eax
	xor	r13d, r13d
.label_136:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_161
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_163
	jmp	.label_168
	nop	word ptr [rax + rax]
.label_161:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_168
.label_163:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_172
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_179
	nop	word ptr cs:[rax + rax]
.label_168:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_179:
	mov	bl, r15b
	je	.label_128
	jmp	.label_142
.label_172:
	mov	bl, r15b
.label_142:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_130
	cmp	r9d, 2
	jne	.label_186
	mov	al, r14b
	and	al, 1
	jne	.label_186
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_166
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_166:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_191
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_191:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_203
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_203:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_186:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_214
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_214:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_196
.label_215:
	xor	r13d, r13d
	jmp	.label_136
.label_219:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_220
	nop	word ptr [rax + rax]
.label_217:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_220:
	test	cl, cl
	je	.label_231
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_140
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_235
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_235:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_140
	nop	word ptr [rax + rax]
.label_231:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_130
	cmp	r9d, 2
	jne	.label_137
	mov	al, r14b
	and	al, 1
	jne	.label_137
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_139
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_139:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_157
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_157:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_156
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_156:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_137:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_171
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_171:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_175
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_175:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_143
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_143:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_140:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_128
	test	r14b, 1
	je	.label_173
	mov	bl, al
	and	bl, 1
	jne	.label_173
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_146
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_146:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_208
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_208:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_173:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_217
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_217
	nop	dword ptr [rax]
.label_128:
	test	r14b, 1
	je	.label_226
	and	al, 1
	jne	.label_226
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_176
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_176:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_201
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_201:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_226:
	mov	bl, r15b
.label_196:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_125
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_125:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_118
.label_223:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_129
.label_224:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_129:
	cmp	rcx, r10
	jae	.label_148
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_148:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_154
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_162
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_165
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_170
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_170:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_174
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_174:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_136
.label_154:
	xor	r13d, r13d
	jmp	.label_136
.label_162:
	xor	r13d, r13d
	jmp	.label_136
.label_165:
	xor	r13d, r13d
	jmp	.label_136
.label_180:
	xor	r13d, r13d
.label_177:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_185
.label_183:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_189
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_127:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_197
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_127
	xor	r13d, r13d
	jmp	.label_185
.label_189:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_185
.label_197:
	xor	r13d, r13d
	jmp	.label_185
.label_225:
	xor	r13d, r13d
	jmp	.label_136
.label_230:
	xor	r13d, r13d
	jmp	.label_136
	nop	dword ptr [rax]
.label_239:
	mov	r13, rdi
.label_117:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_213
	or	al, dl
	je	.label_131
.label_213:
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
	je	.label_119
	or	al, dl
	jne	.label_119
	test	r8b, 1
	jne	.label_241
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_119
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_121
.label_119:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_133
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_133
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_133
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_153:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_233
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_233:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_153
.label_133:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_160
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_160
.label_237:
	mov	r9d, 2
	jmp	.label_130
.label_192:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_130
.label_131:
	mov	rbp, r13
	jmp	.label_130
.label_132:
	mov	r9d, 2
.label_130:
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
.label_202:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_160:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_241:
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
	jmp	.label_202
.label_152:
	mov	r9d, 2
	jmp	.label_130
.label_205:
	mov	r9d, 2
	jmp	.label_130
.label_193:
	mov	r9d, 2
	jmp	.label_130
.label_206:
	mov	r9d, 5
	jmp	.label_130
.label_184:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4045d0
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
	#Procedure 0x4046a0
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
	je	.label_242
	mov	qword ptr [rax], rbx
.label_242:
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
	#Procedure 0x4047a0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_243
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_245:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_245
.label_243:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_246
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_247]], OFFSET FLAT:slot0
.label_246:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_244
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_244:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404840
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404850

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
	js	.label_248
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_253
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_249
.label_253:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_252
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
	jne	.label_251
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_251:
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
.label_249:
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
	ja	.label_254
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_250
	mov	rdi, rbx
	call	free
.label_250:
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
.label_254:
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
.label_248:
	call	abort
.label_252:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a20
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a30
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
	#Procedure 0x404a50
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
	#Procedure 0x404a70
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
	je	.label_255
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
.label_255:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404ae0
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
	je	.label_256
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
.label_256:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b50
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
	je	.label_257
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
.label_257:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bc0
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
	je	.label_258
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
.label_258:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c30
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_259]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_260]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_261]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x404ca0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_259]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_260]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_261]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x404d10

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_259]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_260]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_261]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x404d70
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_259]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_260]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_261]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x404dd0

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
	je	.label_262
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
.label_262:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404e80
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_259]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_260]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_261]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_263
	test	rdx, rdx
	je	.label_263
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_263:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404ef0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_259]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_260]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_261]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_264
	test	rdx, rdx
	je	.label_264
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_264:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f60
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_259]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_260]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_261]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_265
	test	rsi, rsi
	je	.label_265
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_265:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404fd0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_259]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_260]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_261]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_266
	test	rsi, rsi
	je	.label_266
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
.label_266:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405040
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405050
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
	#Procedure 0x405070
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405090

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
	#Procedure 0x4050b0

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
	jne	.label_268
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_269
	cmp	ecx, 0x55
	jne	.label_267
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_267
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_267
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_267
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_267
	cmp	byte ptr [rax + 5], 0
	jne	.label_267
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_268
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_268
.label_269:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_267
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_267
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_267
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_267
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_267
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_267
	cmp	byte ptr [rax + 7], 0
	je	.label_270
.label_267:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_268:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_270:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_268
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_268
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051a0

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
	je	.label_277
	mov	edx, OFFSET FLAT:.str_4
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_276
.label_277:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_276:
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
	ja	.label_280
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_271]]
.label_415:
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
.label_280:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_279
.label_416:
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
.label_417:
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
.label_418:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_272
.label_419:
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
	jmp	.label_278
.label_420:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_275
.label_421:
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
.label_275:
	mov	qword ptr [rsp + 0x10], rdi
.label_278:
	mov	qword ptr [rsp + 8], rsi
.label_272:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_273
.label_423:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_279:
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
	jmp	.label_274
.label_422:
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
.label_274:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_273:
	call	__fprintf_chk
.label_414:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405490
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_281:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_281
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054c0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_284:
	cmp	r10d, 0x28
	ja	.label_282
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_283
	nop	word ptr cs:[rax + rax]
.label_282:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_283:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_285
	inc	r9
	cmp	r9, 0xa
	jb	.label_284
.label_285:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405520

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_286
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_286:
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
.label_289:
	cmp	r8d, 0x28
	ja	.label_287
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_288
	nop	
.label_287:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_288:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_290
	inc	r9
	cmp	r9, 0xa
	jb	.label_289
.label_290:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405620
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_0
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
	.align	16
	#Procedure 0x4056a0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_291
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_292
	test	rax, rax
	je	.label_291
.label_292:
	pop	rbx
	ret	
.label_291:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056e0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_293
	test	rax, rax
	je	.label_294
.label_293:
	pop	rbx
	ret	
.label_294:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405700
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_295
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_296
	test	rbx, rbx
	jne	.label_296
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_296:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_297
	test	rax, rax
	je	.label_295
.label_297:
	pop	rbx
	ret	
.label_295:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405750

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_298
	test	rbx, rbx
	jne	.label_298
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_298:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_300
	test	rax, rax
	je	.label_299
.label_300:
	pop	rbx
	ret	
.label_299:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405780
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_301
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_303
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_302
.label_301:
	test	rcx, rcx
	jne	.label_306
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_306:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_304
.label_302:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_305
	test	rbx, rbx
	jne	.label_305
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_305:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_307
	test	rax, rax
	je	.label_303
.label_307:
	pop	rbx
	ret	
.label_303:
	call	xalloc_die
.label_304:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405820
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_308
	test	rax, rax
	je	.label_309
.label_308:
	pop	rbx
	ret	
.label_309:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405840
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_310
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_313
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_314
	call	free
	xor	eax, eax
	jmp	.label_311
.label_310:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_312
	mov	qword ptr [rsi], rbx
.label_314:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_311
	test	rax, rax
	je	.label_312
.label_311:
	pop	rbx
	ret	
.label_312:
	call	xalloc_die
.label_313:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058b0
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
	je	.label_316
	test	r14, r14
	je	.label_315
.label_316:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_315:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058f0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_317
	call	rpl_calloc
	test	rax, rax
	je	.label_317
	pop	rcx
	ret	
.label_317:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405920

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
	je	.label_318
	test	r15, r15
	je	.label_319
.label_318:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_319:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405960
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
	je	.label_321
	test	r15, r15
	je	.label_320
.label_321:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_320:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4059b0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4059e0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_322
	test	rsi, rsi
	mov	ecx, 1
	je	.label_323
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_323
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_322:
	mov	ecx, 1
.label_323:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a30

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
	je	.label_324
	cmp	r15, -2
	jb	.label_324
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_324
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_324:
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
	#Procedure 0x405a90

	.globl extract_trimmed_name
	.type extract_trimmed_name, @function
extract_trimmed_name:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, 0x21
	call	xmalloc
	mov	rbx, rax
	lea	rsi, [r14 + 0x2c]
	mov	edx, 0x20
	mov	rdi, rbx
	call	strncpy
	mov	byte ptr [rbx + 0x20], 0
	mov	rdi, rbx
	call	strlen
	test	rax, rax
	jle	.label_325
	add	rax, rbx
	nop	dword ptr [rax]
.label_326:
	movzx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x20
	jne	.label_325
	mov	byte ptr [rax - 1], 0
	dec	rax
	cmp	rbx, rax
	jb	.label_326
.label_325:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x405af0

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14d, ecx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rsi
	call	utmpxname
	call	setutxent
	call	getutxent
	mov	rbx, rax
	xor	ebp, ebp
	test	rbx, rbx
	mov	r12d, 0
	je	.label_333
	mov	r13d, r14d
	and	r13d, 2
	and	r14d, 1
	xor	ebp, ebp
	xor	r12d, r12d
	xor	r15d, r15d
	jmp	.label_337
.label_329:
	cmp	rbp, r15
	jne	.label_336
	test	r12, r12
	je	.label_328
	movabs	rax, 0x38e38e38e38e38
	cmp	rbp, rax
	jae	.label_330
	mov	rax, rbp
	shr	rax, 1
	lea	r15, [rbp + rax + 1]
	jmp	.label_331
.label_328:
	test	rbp, rbp
	mov	r15, rbp
	mov	eax, 1
	cmove	r15, rax
	movabs	rax, 0x55555555555556
	cmp	r15, rax
	jae	.label_334
.label_331:
	mov	rax, r15
	shl	rax, 7
	lea	rsi, [rax + rax*2]
	mov	rdi, r12
	call	xrealloc
	mov	r12, rax
.label_336:
	lea	rdi, [rbp + rbp*2]
	inc	rbp
	shl	rdi, 7
	add	rdi, r12
	mov	edx, 0x180
	mov	rsi, rbx
	call	memcpy
	jmp	.label_335
	nop	word ptr cs:[rax + rax]
.label_337:
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_327
	movzx	eax, word ptr [rbx]
	cmp	eax, 7
	sete	al
	jmp	.label_332
	nop	word ptr cs:[rax + rax]
.label_327:
	xor	eax, eax
.label_332:
	test	r13d, r13d
	je	.label_338
	test	al, al
	je	.label_335
.label_338:
	test	r14d, r14d
	je	.label_329
	xor	al, 1
	jne	.label_329
	mov	edi, dword ptr [rbx + 4]
	test	edi, edi
	jle	.label_329
	xor	esi, esi
	call	kill
	test	eax, eax
	jns	.label_329
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_329
.label_335:
	call	getutxent
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_337
.label_333:
	call	endutxent
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], r12
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_330:
	call	xalloc_die
.label_334:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c80

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
	jne	.label_340
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_339
	test	cl, cl
	jne	.label_339
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_339
.label_340:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_339
	call	__errno_location
	mov	dword ptr [rax], 0
.label_339:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ce0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_5
	cmp	byte ptr [rcx], 0
	je	.label_341
	mov	rax, rcx
.label_341:
	add	rsp, 8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405d10

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_342
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_344
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_342
.label_344:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_342
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_343
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_343:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_342:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x405d90

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_345
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_345
	test	byte ptr [rbx + 1], 1
	je	.label_345
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_345:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405dd0

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
	jne	.label_346
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_346
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_347
.label_346:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_347:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_348
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_348:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x405e40

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