	.section	.text
	hlt	
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401940

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401af0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.25
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.13
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
	mov	ebx, OFFSET FLAT:.str.13
	cmovne	rbx, rax
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
	je	.label_8
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.13
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.13
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.39
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
	#Procedure 0x401c10

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
.label_19:
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
	jle	.label_12
	lea	ecx, [rax - 0x61]
	cmp	ecx, 0x1f
	ja	.label_13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_16]]
.label_413:
	mov	byte ptr [byte ptr [rip + need_boottime]],  1
	mov	byte ptr [byte ptr [rip + need_deadprocs]],  1
	mov	byte ptr [byte ptr [rip + need_login]],  1
	mov	byte ptr [byte ptr [rip + need_initspawn]],  1
	mov	byte ptr [byte ptr [rip + need_runlevel]],  1
	mov	byte ptr [byte ptr [rip + need_clockchange]],  1
	mov	byte ptr [byte ptr [rip + need_users]],  1
	mov	byte ptr [byte ptr [rip + include_mesg]],  1
	jmp	.label_18
.label_13:
	cmp	eax, 0x48
	je	.label_24
	cmp	eax, 0x54
	jne	.label_23
.label_424:
	mov	byte ptr [byte ptr [rip + include_mesg]],  1
	jmp	.label_11
.label_414:
	mov	byte ptr [byte ptr [rip + need_boottime]],  1
	xor	ebp, ebp
	jmp	.label_11
.label_415:
	mov	byte ptr [byte ptr [rip + need_deadprocs]],  1
.label_18:
	mov	byte ptr [byte ptr [rip + include_idle]],  1
	mov	byte ptr [byte ptr [rip + include_exit]],  1
	xor	ebp, ebp
	jmp	.label_11
.label_416:
	mov	byte ptr [byte ptr [rip + need_login]],  1
	jmp	.label_19
.label_417:
	mov	byte ptr [byte ptr [rip + my_line_only]],  1
	jmp	.label_11
.label_418:
	mov	byte ptr [byte ptr [rip + need_initspawn]],  1
	xor	ebp, ebp
	jmp	.label_11
.label_419:
	mov	byte ptr [byte ptr [rip + short_list]],  1
	jmp	.label_11
.label_420:
	mov	byte ptr [byte ptr [rip + need_runlevel]],  1
	jmp	.label_19
.label_421:
	mov	byte ptr [byte ptr [rip + short_output]],  1
	jmp	.label_11
.label_422:
	mov	byte ptr [byte ptr [rip + need_clockchange]],  1
	xor	ebp, ebp
	jmp	.label_11
.label_423:
	mov	byte ptr [byte ptr [rip + need_users]],  1
	jmp	.label_19
.label_425:
	mov	byte ptr [byte ptr [rip + do_lookup]],  1
	jmp	.label_11
.label_24:
	mov	byte ptr [byte ptr [rip + include_heading]],  1
	jmp	.label_11
.label_12:
	cmp	eax, -1
	jne	.label_17
	test	bpl, bpl
	je	.label_20
	mov	byte ptr [byte ptr [rip + need_users]],  1
	mov	byte ptr [byte ptr [rip + short_output]],  1
.label_20:
	movzx	eax,  byte ptr [byte ptr [rip + include_exit]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_21
	mov	byte ptr [byte ptr [rip + short_output]],  0
.label_21:
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
	jb	.label_15
	cmp	ebx, 1
	je	.label_26
	cmp	ebx, 2
	jne	.label_14
	mov	byte ptr [byte ptr [rip + my_line_only]],  1
.label_15:
	mov	edi, OFFSET FLAT:.str.11
	mov	esi, 1
	jmp	.label_25
.label_26:
	mov	rdi, qword ptr [r14 + rax*8]
	xor	esi, esi
.label_25:
	call	who
	xor	eax, eax
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_17:
	cmp	eax, 0xffffff7d
	je	.label_22
	cmp	eax, 0xffffff7e
	jne	.label_23
	xor	edi, edi
	call	usage
.label_22:
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
.label_23:
	mov	edi, 1
	call	usage
.label_14:
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
	.align	32
	#Procedure 0x401ef0

	.globl who
	.type who, @function
who:
	push	rbp
	push	rbx
	sub	rsp, 0x18
	mov	eax, esi
	mov	rbx, rdi
	lea	rsi, [rsp + 0x10]
	lea	rdx, [rsp + 8]
	mov	ecx, eax
	call	read_utmp
	test	eax, eax
	jne	.label_28
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 8]
	movzx	eax,  byte ptr [byte ptr [rip + short_list]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_27
	call	list_entries_who
	jmp	.label_29
.label_27:
	call	scan_entries
.label_29:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	add	rsp, 0x18
	pop	rbx
	pop	rbp
	ret	
.label_28:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f80

	.globl list_entries_who
	.type list_entries_who, @function
list_entries_who:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbx, rsi
	mov	r15, rdi
	mov	r12d, OFFSET FLAT:.str_0
	xor	r14d, r14d
	jmp	.label_30
	nop	word ptr [rax + rax]
.label_31:
	add	rbx, 0x180
.label_30:
	test	r15, r15
	je	.label_32
	dec	r15
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_31
	movzx	eax, word ptr [rbx]
	cmp	eax, 7
	jne	.label_31
	mov	rdi, rbx
	call	extract_trimmed_name
	mov	r13, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.58
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r13
	call	__printf_chk
	mov	rdi, r13
	call	free
	inc	r14
	mov	r12d, OFFSET FLAT:.str.59
	jmp	.label_31
.label_32:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rdx, r14
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	__printf_chk
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402030

	.globl scan_entries
	.type scan_entries, @function
scan_entries:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	movzx	eax,  byte ptr [byte ptr [rip + include_heading]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_39
	call	print_heading
.label_39:
	movzx	eax,  byte ptr [byte ptr [rip + my_line_only]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_42
	xor	edi, edi
	call	ttyname
	mov	r12, rax
	test	r12, r12
	je	.label_35
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	lea	r15, [r12 + 5]
	test	eax, eax
	cmovne	r15, r12
.label_42:
	test	r14, r14
	je	.label_35
	movabs	r12, 0x8000000000000000
	nop	word ptr cs:[rax + rax]
.label_38:
	movzx	eax,  byte ptr [byte ptr [rip + my_line_only]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_37
	lea	rsi, [rbx + 8]
	mov	edx, 0x20
	mov	rdi, r15
	call	strncmp
	test	eax, eax
	jne	.label_33
.label_37:
	movzx	eax,  byte ptr [byte ptr [rip + need_users]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_43
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_43
	movzx	eax, word ptr [rbx]
	cmp	eax, 7
	jne	.label_43
	mov	rdi, rbx
	mov	rsi, r12
	call	print_user
	jmp	.label_33
	nop	word ptr cs:[rax + rax]
.label_43:
	movzx	eax,  byte ptr [byte ptr [rip + need_runlevel]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_34
	movzx	eax, word ptr [rbx]
	cmp	eax, 1
	jne	.label_34
	mov	rdi, rbx
	call	print_runlevel
	jmp	.label_33
	nop	word ptr cs:[rax + rax]
.label_34:
	movzx	eax,  byte ptr [byte ptr [rip + need_boottime]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_40
	movzx	eax, word ptr [rbx]
	cmp	eax, 2
	jne	.label_40
	mov	rdi, rbx
	call	print_boottime
	jmp	.label_33
	nop	word ptr cs:[rax + rax]
.label_40:
	movzx	eax,  byte ptr [byte ptr [rip + need_clockchange]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_44
	movzx	eax, word ptr [rbx]
	cmp	eax, 3
	jne	.label_44
	mov	rdi, rbx
	call	print_clockchange
	jmp	.label_33
	nop	word ptr cs:[rax + rax]
.label_44:
	movzx	eax,  byte ptr [byte ptr [rip + need_initspawn]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_36
	movzx	eax, word ptr [rbx]
	cmp	eax, 5
	jne	.label_36
	mov	rdi, rbx
	call	print_initspawn
	jmp	.label_33
.label_36:
	movzx	eax,  byte ptr [byte ptr [rip + need_login]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_41
	movzx	eax, word ptr [rbx]
	cmp	eax, 6
	jne	.label_41
	mov	rdi, rbx
	call	print_login
	jmp	.label_33
.label_41:
	movzx	eax,  byte ptr [byte ptr [rip + need_deadprocs]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_33
	movzx	eax, word ptr [rbx]
	cmp	eax, 8
	jne	.label_33
	mov	rdi, rbx
	call	print_deadprocs
	nop	word ptr cs:[rax + rax]
.label_33:
	dec	r14
	movzx	eax, word ptr [rbx]
	cmp	eax, 2
	jne	.label_45
	movsxd	r12, dword ptr [rbx + 0x154]
.label_45:
	add	rbx, 0x180
	test	r14, r14
	jne	.label_38
.label_35:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402240

	.globl print_heading
	.type print_heading, @function
print_heading:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rsp], r13
	mov	edi, 0xffffffff
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	rsi, r14
	mov	r8, r15
	mov	r9, r12
	call	print_line
	add	rsp, 0x28
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
	#Procedure 0x402320

	.globl print_user
	.type print_user, @function
print_user:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x208
	mov	rbx, rsi
	mov	r12, rdi
	movsxd	r8, dword ptr [r12 + 4]
	lea	rbp, [rsp + 0x134]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:.str.74
	xor	eax, eax
	mov	rdi, rbp
	call	__sprintf_chk
	lea	r14, [r12 + 8]
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0x2f
	jne	.label_56
	lea	rdi, [rsp + 0x140]
	jmp	.label_58
.label_56:
	lea	rdi, [rsp + 0x145]
	mov	word ptr [rsp + 0x144], 0x2f
	mov	dword ptr [rsp + 0x140], 0x7665642f
.label_58:
	mov	edx, 0x20
	mov	rsi, r14
	call	stzncpy
	lea	rdi, [rsp + 0x140]
	lea	rsi, [rsp + 0x178]
	call	stat
	mov	r15b, 0x3f
	test	eax, eax
	jne	.label_51
	lea	rdi, [rsp + 0x178]
	call	is_tty_writable
	test	al, al
	mov	r15b, 0x2b
	jne	.label_54
	mov	r15b, 0x2d
.label_54:
	mov	rdi, qword ptr [rsp + 0x1c0]
	test	rdi, rdi
	je	.label_51
	mov	rsi, rbx
	call	idle_string
	mov	rbx, rax
	lea	rdi, [rsp + 0x171]
	mov	esi, 1
	mov	edx, 7
	mov	ecx, OFFSET FLAT:.str.75
	mov	r8d, 6
	xor	eax, eax
	mov	r9, rbx
	call	__sprintf_chk
	jmp	.label_47
.label_51:
	lea	rdi, [rsp + 0x171]
	mov	esi, 1
	mov	edx, 7
	mov	ecx, OFFSET FLAT:.str.76
	xor	eax, eax
	call	__sprintf_chk
.label_47:
	cmp	byte ptr [r12 + 0x4c], 0
	je	.label_50
	lea	rsi, [r12 + 0x4c]
	lea	rbx, [rsp + 0x30]
	mov	edx, 0x100
	mov	rdi, rbx
	call	stzncpy
	mov	esi, 0x3a
	mov	rdi, rbx
	call	strchr
	xor	ebp, ebp
	test	rax, rax
	je	.label_57
	mov	rbp, rax
	inc	rbp
	mov	byte ptr [rax], 0
.label_57:
	mov	byte ptr [rsp + 0x27], r15b
	mov	qword ptr [rsp + 0x28], r14
	xor	r13d, r13d
	cmp	byte ptr [rsp + 0x30], 0
	je	.label_46
	xor	r13d, r13d
	movzx	eax,  byte ptr [byte ptr [rip + do_lookup]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_46
	lea	rdi, [rsp + 0x30]
	call	canon_host
	mov	r13, rax
.label_46:
	test	r13, r13
	cmovne	rbx, r13
	mov	r15,  qword ptr [word ptr [rip + print_user.hostlen]]
	mov	rdi, rbx
	call	strlen
	mov	r14, rax
	test	rbp, rbp
	je	.label_53
	mov	rdi, rbp
	call	strlen
	lea	rax, [r14 + rax + 4]
	cmp	r15, rax
	jae	.label_55
	mov	qword ptr [word ptr [rip + print_user.hostlen]],  rax
	mov	rdi,  qword ptr [word ptr [rip + print_user.hoststr]]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + print_user.hostlen]]
	call	xmalloc
	mov	qword ptr [word ptr [rip + print_user.hoststr]],  rax
.label_55:
	mov	rdi,  qword ptr [word ptr [rip + print_user.hoststr]]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.77
	xor	eax, eax
	mov	r8, rbx
	mov	r9, rbp
	call	__sprintf_chk
	jmp	.label_48
.label_50:
	cmp	qword ptr [word ptr [rip + print_user.hostlen]],  0
	jne	.label_49
	mov	qword ptr [word ptr [rip + print_user.hostlen]],  1
	mov	rdi,  qword ptr [word ptr [rip + print_user.hoststr]]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + print_user.hostlen]]
	call	xmalloc
	mov	qword ptr [word ptr [rip + print_user.hoststr]],  rax
.label_49:
	mov	rax,  qword ptr [word ptr [rip + print_user.hoststr]]
	mov	byte ptr [rax], 0
	jmp	.label_52
.label_53:
	add	r14, 3
	cmp	r15, r14
	jae	.label_59
	mov	qword ptr [word ptr [rip + print_user.hostlen]],  r14
	mov	rdi,  qword ptr [word ptr [rip + print_user.hoststr]]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + print_user.hostlen]]
	call	xmalloc
	mov	qword ptr [word ptr [rip + print_user.hoststr]],  rax
.label_59:
	mov	rdi,  qword ptr [word ptr [rip + print_user.hoststr]]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.78
	xor	eax, eax
	mov	r8, rbx
	call	__sprintf_chk
.label_48:
	mov	r14, qword ptr [rsp + 0x28]
	lea	rbp, [rsp + 0x134]
	mov	r15b, byte ptr [rsp + 0x27]
	test	r13, r13
	je	.label_52
	mov	rdi, rbx
	call	free
.label_52:
	lea	rbx, [r12 + 0x2c]
	mov	rdi, r12
	call	time_string
	mov	rcx,  qword ptr [word ptr [rip + print_user.hoststr]]
	test	rcx, rcx
	mov	edx, OFFSET FLAT:.str_0
	cmovne	rdx, rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rbp
	lea	rcx, [rsp + 0x171]
	mov	qword ptr [rsp], rcx
	mov	qword ptr [word ptr [rsp + 24]], OFFSET FLAT:.str_0
	movsx	edx, r15b
	mov	edi, 0x20
	mov	ecx, 0x20
	mov	rsi, rbx
	mov	r8, r14
	mov	r9, rax
	call	print_line
	add	rsp, 0x208
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
	#Procedure 0x402650

	.globl print_runlevel
	.type print_runlevel, @function
print_runlevel:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x28
	mov	r14, rdi
	mov	ebx, dword ptr [r14 + 4]
	mov	ebp, ebx
	sar	ebp, 0x1f
	shr	ebp, 0x18
	add	ebp, ebx
	cmp	qword ptr [word ptr [rip + print_runlevel.runlevline]],  0
	jne	.label_60
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.84
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 3]
	call	xmalloc
	mov	qword ptr [word ptr [rip + print_runlevel.runlevline]],  rax
.label_60:
	sar	ebp, 8
	mov	r15,  qword ptr [word ptr [rip + print_runlevel.runlevline]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.84
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
	movzx	r9d, bl
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.85
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	cmp	qword ptr [word ptr [rip + print_runlevel.comment]],  0
	jne	.label_61
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.86
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 2]
	call	xmalloc
	mov	qword ptr [word ptr [rip + print_runlevel.comment]],  rax
.label_61:
	mov	r15,  qword ptr [word ptr [rip + print_runlevel.comment]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.86
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movzx	ebp, bpl
	cmp	ebp, 0x4e
	mov	r9d, 0x53
	cmovne	r9d, ebp
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.87
	xor	eax, eax
	mov	rdi, r15
	mov	r8, rbx
	call	__sprintf_chk
	mov	r15,  qword ptr [word ptr [rip + print_runlevel.runlevline]]
	mov	rdi, r14
	call	time_string
	mov	rbx, rax
	mov	edi, ebp
	call	c_isprint
	mov	ecx, OFFSET FLAT:.str_0
	test	al, al
	mov	rax,  qword ptr [word ptr [rip + print_runlevel.comment]]
	cmove	rax, rcx
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [word ptr [rsp + 24]], OFFSET FLAT:.str_0
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str_0
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str_0
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:.str_0
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	r8, r15
	mov	r9, rbx
	call	print_line
	add	rsp, 0x28
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4027d0

	.globl print_boottime
	.type print_boottime, @function
print_boottime:
	push	r14
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.88
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	time_string
	mov	qword ptr [word ptr [rsp + 24]], OFFSET FLAT:.str_0
	mov	qword ptr [word ptr [rsp + 16]], OFFSET FLAT:.str_0
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str_0
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str_0
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:.str_0
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	r8, r14
	mov	r9, rax
	call	print_line
	add	rsp, 0x28
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x402840

	.globl print_clockchange
	.type print_clockchange, @function
print_clockchange:
	push	r14
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.89
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	time_string
	mov	qword ptr [word ptr [rsp + 24]], OFFSET FLAT:.str_0
	mov	qword ptr [word ptr [rsp + 16]], OFFSET FLAT:.str_0
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str_0
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str_0
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:.str_0
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	r8, r14
	mov	r9, rax
	call	print_line
	add	rsp, 0x28
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4028b0

	.globl print_initspawn
	.type print_initspawn, @function
print_initspawn:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbx, rdi
	call	make_id_equals_comment
	mov	r14, rax
	movsxd	r8, dword ptr [rbx + 4]
	lea	r15, [rsp + 0x2c]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:.str.74
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	lea	r12, [rbx + 8]
	mov	rdi, rbx
	call	time_string
	mov	qword ptr [rsp + 0x10], r14
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [word ptr [rsp + 24]], OFFSET FLAT:.str_0
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str_0
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:.str_0
	mov	edx, 0x20
	mov	ecx, 0x20
	mov	r8, r12
	mov	r9, rax
	call	print_line
	mov	rdi, r14
	call	free
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402950

	.globl print_login
	.type print_login, @function
print_login:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x30
	mov	rbx, rdi
	call	make_id_equals_comment
	mov	r14, rax
	movsxd	r8, dword ptr [rbx + 4]
	lea	r15, [rsp + 0x24]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:.str.74
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.91
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	lea	r13, [rbx + 8]
	mov	rdi, rbx
	call	time_string
	mov	qword ptr [rsp + 0x10], r14
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [word ptr [rsp + 24]], OFFSET FLAT:.str_0
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str_0
	mov	edi, 0xffffffff
	mov	edx, 0x20
	mov	ecx, 0x20
	mov	rsi, r12
	mov	r8, r13
	mov	r9, rax
	call	print_line
	mov	rdi, r14
	call	free
	add	rsp, 0x30
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a00

	.globl print_deadprocs
	.type print_deadprocs, @function
print_deadprocs:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbx, rdi
	call	make_id_equals_comment
	mov	r14, rax
	movsxd	r8, dword ptr [rbx + 4]
	lea	r15, [rsp + 0x2c]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:.str.74
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	cmp	qword ptr [word ptr [rip + print_deadprocs.exitstr]],  0
	jne	.label_62
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.92
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	mov	r12, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.93
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [r12 + rax + 0xe]
	call	xmalloc
	mov	qword ptr [word ptr [rip + print_deadprocs.exitstr]],  rax
.label_62:
	mov	r12,  qword ptr [word ptr [rip + print_deadprocs.exitstr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.92
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	movsx	ebp, word ptr [rbx + 0x14c]
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
	mov	rdi, r12
	mov	r8, r13
	mov	r9d, ebp
	call	__sprintf_chk
	lea	rbp, [rbx + 8]
	mov	rdi, rbx
	call	time_string
	mov	rcx,  qword ptr [word ptr [rip + print_deadprocs.exitstr]]
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], r14
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str_0
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:.str_0
	mov	edx, 0x20
	mov	ecx, 0x20
	mov	r8, rbp
	mov	r9, rax
	call	print_line
	mov	rdi, r14
	call	free
	add	rsp, 0x38
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
	#Procedure 0x402b50

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
	mov	byte ptr [byte ptr [rip + label_63]],  dl
	movzx	eax,  byte ptr [byte ptr [rip + include_idle]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_64
	mov	al,  byte ptr [byte ptr [rip + short_output]]
	and	al, 1
	jne	.label_64
	mov	r14, qword ptr [rsp + 0xb0]
	mov	rdi, r14
	call	strlen
	cmp	rax, 6
	ja	.label_64
	lea	rdi, [rsp + 0x68]
	mov	esi, 1
	mov	edx, 8
	mov	ecx, OFFSET FLAT:.str.69
	xor	eax, eax
	mov	r8, r14
	call	__sprintf_chk
	jmp	.label_68
.label_64:
	mov	byte ptr [rsp + 0x68], 0
.label_68:
	mov	al,  byte ptr [byte ptr [rip + short_output]]
	and	al, 1
	jne	.label_67
	mov	r14, qword ptr [rsp + 0xb8]
	mov	rdi, r14
	call	strlen
	cmp	rax, 0xb
	ja	.label_67
	lea	rdi, [rsp + 0x5b]
	mov	esi, 1
	mov	edx, 0xd
	mov	ecx, OFFSET FLAT:.str.70
	xor	eax, eax
	mov	r8, r14
	call	__sprintf_chk
	jmp	.label_69
.label_67:
	mov	byte ptr [rsp + 0x5b], 0
.label_69:
	mov	r14, qword ptr [rsp + 0xc8]
	mov	edi, 1
	movzx	eax,  byte ptr [byte ptr [rip + include_exit]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_72
	mov	rdi, r14
	call	strlen
	cmp	rax, 0xc
	lea	rax, [rax + 2]
	mov	edi, 0xe
	cmovae	rdi, rax
.label_72:
	mov	r15, qword ptr [rsp + 0xc0]
	call	xmalloc
	mov	rbx, rax
	movzx	eax,  byte ptr [byte ptr [rip + include_exit]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_71
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.71
	xor	eax, eax
	mov	rdi, rbx
	mov	r8, r14
	call	__sprintf_chk
	jmp	.label_66
.label_71:
	mov	byte ptr [rbx], 0
.label_66:
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
	je	.label_70
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	call	strlen
	lea	rax, [rax + rbp + 1]
	nop	dword ptr [rax + rax]
.label_65:
	movzx	ecx, byte ptr [rax - 2]
	dec	rax
	cmp	ecx, 0x20
	je	.label_65
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
.label_70:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x402d60

	.globl stzncpy
	.type stzncpy, @function
stzncpy:
	test	rdx, rdx
	jle	.label_73
	add	rdx, rsi
	nop	dword ptr [rax + rax]
.label_74:
	mov	al, byte ptr [rsi]
	test	al, al
	je	.label_73
	inc	rsi
	mov	byte ptr [rdi], al
	inc	rdi
	cmp	rsi, rdx
	jb	.label_74
.label_73:
	mov	byte ptr [rdi], 0
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d90

	.globl is_tty_writable
	.type is_tty_writable, @function
is_tty_writable:
	mov	al, byte ptr [rdi + 0x18]
	and	al, 0x10
	shr	al, 4
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402da0

	.globl idle_string
	.type idle_string, @function
idle_string:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	movabs	rax, 0x8000000000000000
	cmp	qword ptr [word ptr [rip + idle_string.now]],  rax
	jne	.label_75
	mov	edi, OFFSET FLAT:idle_string.now
	call	time
.label_75:
	cmp	r14, rbx
	jge	.label_76
	mov	rax,  qword ptr [word ptr [rip + idle_string.now]]
	cmp	rax, rbx
	jl	.label_76
	lea	rcx, [rax - 0x15180]
	cmp	rcx, rbx
	jge	.label_76
	sub	eax, ebx
	mov	ebx, OFFSET FLAT:.str.79
	cmp	eax, 0x3c
	jl	.label_78
	cmp	eax, 0x15180
	jge	.label_77
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
	mov	ebx, OFFSET FLAT:idle_string.idle_hhmm
	mov	edi, OFFSET FLAT:idle_string.idle_hhmm
	mov	esi, 1
	mov	edx, 6
	mov	ecx, OFFSET FLAT:.str.82
	xor	eax, eax
	call	__sprintf_chk
.label_78:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_76:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	dcgettext
.label_77:
	mov	edi, OFFSET FLAT:.str.80
	mov	esi, OFFSET FLAT:.str.81
	mov	edx, 0xcd
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.idle_string
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402eb0

	.globl time_string
	.type time_string, @function
time_string:
	push	rbx
	sub	rsp, 0x10
	movsxd	rax, dword ptr [rdi + 0x154]
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rsp + 8]
	call	localtime
	test	rax, rax
	je	.label_79
	mov	rdx,  qword ptr [word ptr [rip + time_format]]
	mov	ebx, OFFSET FLAT:time_string.buf
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	jmp	.label_80
.label_79:
	mov	rdi, qword ptr [rsp + 8]
	call	timetostr
	mov	rbx, rax
.label_80:
	mov	rax, rbx
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f10

	.globl timetostr
	.type timetostr, @function
timetostr:
	mov	esi, OFFSET FLAT:time_string.buf
	jmp	imaxtostr
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f20

	.globl make_id_equals_comment
	.type make_id_equals_comment, @function
make_id_equals_comment:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.90
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 5]
	call	xmalloc
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.90
	mov	edx, 5
	call	dcgettext
	mov	rdi, rbx
	mov	rsi, rax
	call	strcpy
	lea	rsi, [r14 + 0x28]
	mov	edx, 4
	mov	rcx, -1
	mov	rdi, rbx
	call	__strncat_chk
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402f90
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_81
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_81
.label_82:
	ret	
.label_81:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_82
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fc0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_83
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_83:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402fe0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ff0
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
	#Procedure 0x403000
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_84
.label_85:
	ret	
.label_84:
	cmp	edi, 0x7f
	je	.label_85
	xor	eax, eax
	jmp	.label_85
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403020
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
	#Procedure 0x403030
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
	#Procedure 0x403040
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
	#Procedure 0x403050

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
	#Procedure 0x403060
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_86
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_86
.label_87:
	ret	
.label_86:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_87
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403090
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_88
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_88:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4030b0

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
	#Procedure 0x4030c0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_89
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_89:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4030e0
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
	#Procedure 0x4030f0
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
	#Procedure 0x403100

	.globl canon_host
	.type canon_host, @function
canon_host:
	mov	esi, OFFSET FLAT:last_cherror
	jmp	canon_host_r
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403110

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
	je	.label_92
	xor	ebx, ebx
	test	r14, r14
	je	.label_90
	mov	dword ptr [r14], eax
	xor	ebx, ebx
	jmp	.label_90
.label_92:
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax + 0x20]
	test	rax, rax
	cmovne	rbx, rax
	mov	rdi, rbx
	call	__strdup
	mov	rbx, rax
	test	r14, r14
	je	.label_91
	test	rbx, rbx
	jne	.label_91
	mov	dword ptr [r14], 0xfffffff6
.label_91:
	mov	rdi, qword ptr [rsp]
	call	freeaddrinfo
.label_90:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403190
	.globl ch_strerror
	.type ch_strerror, @function
ch_strerror:

	mov	edi,  dword ptr [dword ptr [rip + last_cherror]]
	jmp	gai_strerror
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031c0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_95
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_93
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_93
.label_95:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_96
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_93:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_94
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_96:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_94:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403280

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_98
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_99
	cmp	byte ptr [rax + 1], 0
	je	.label_97
.label_99:
	mov	esi, OFFSET FLAT:.str.1_1
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_98
.label_97:
	xor	ebx, ebx
.label_98:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4032c0

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_100
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_101:
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
	ja	.label_101
	jmp	.label_102
.label_100:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_103:
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
	mov	byte ptr [rsi], al
	add	rdx, r10
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_103
	mov	byte ptr [rsi], 0x2d
.label_102:
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403380

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_104
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_105
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_105
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_106
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_106:
	mov	rbx, r14
.label_105:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_104:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_3
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403430
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
	#Procedure 0x403470
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
	#Procedure 0x403480
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
	#Procedure 0x403490

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
	#Procedure 0x4034d0
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
	#Procedure 0x4034f0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_107
	test	rdx, rdx
	je	.label_107
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_107:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403520
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
	#Procedure 0x4035a0

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
.label_112:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_129
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_137]]
.label_363:
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
.label_364:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_116
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_116
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_187:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_174
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_174:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_187
.label_116:
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
	jmp	.label_111
.label_356:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_111
.label_359:
	mov	al, 1
.label_357:
	mov	r15b, 1
.label_360:
	test	r15b, 1
	mov	cl, 1
	je	.label_210
	mov	cl, al
.label_210:
	mov	al, cl
.label_358:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_212
	test	r10, r10
	je	.label_214
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_163
.label_212:
	xor	ecx, ecx
	jmp	.label_163
.label_361:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_220
	test	r10, r10
	je	.label_227
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_145
.label_362:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_111
.label_214:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_163:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_111
.label_220:
	xor	eax, eax
	jmp	.label_145
.label_227:
	mov	eax, 1
.label_145:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_111:
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
	jmp	.label_155
	nop	dword ptr [rax + rax]
.label_114:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_155:
	cmp	rbp, -1
	je	.label_196
	cmp	rsi, rbp
	jne	.label_198
	jmp	.label_200
	nop	dword ptr [rax]
.label_196:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_200
.label_198:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_202
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_203
	cmp	rbp, -1
	jne	.label_203
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
.label_203:
	cmp	rbx, rbp
	jbe	.label_225
.label_202:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_148:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_109
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_134]]
.label_378:
	test	rsi, rsi
	jne	.label_119
	jmp	.label_122
	nop	word ptr cs:[rax + rax]
.label_225:
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
	jne	.label_143
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_148
	jmp	.label_156
.label_143:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_148
.label_382:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_167
	test	rsi, rsi
	jne	.label_170
	cmp	rbp, 1
	je	.label_122
	xor	r15d, r15d
	jmp	.label_117
.label_371:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_172
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_156
	cmp	edi, 2
	jne	.label_181
	mov	al, r11b
	and	al, 1
	jne	.label_186
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_189
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_189:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_224
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_224:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_197
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_197:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_125
.label_372:
	mov	bl, 0x62
	jmp	.label_205
.label_373:
	mov	cl, 0x74
	jmp	.label_208
.label_374:
	mov	bl, 0x76
	jmp	.label_205
.label_375:
	mov	bl, 0x66
	jmp	.label_205
.label_376:
	mov	cl, 0x72
	jmp	.label_208
.label_379:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_213
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_108
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
	jae	.label_222
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_222:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_123
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_123:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_130
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_130:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_141
.label_380:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_147
	cmp	r14d, 2
	jne	.label_149
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_108
.label_149:
	mov	rdi, r14
	jmp	.label_119
.label_381:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_154
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_108
	mov	rdi, r14
	jmp	.label_159
.label_109:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_162
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
.label_188:
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
	ja	.label_177
	test	dl, dl
	je	.label_177
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_117
.label_167:
	test	rsi, rsi
	jne	.label_194
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_194
.label_122:
	mov	dl, 1
.label_377:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_156
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_117
.label_172:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_119
	mov	r14, rdi
	inc	rsi
	jmp	.label_155
.label_213:
	mov	rdi, r14
.label_141:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_117
.label_154:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_208
.label_159:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_138
.label_208:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_156
.label_205:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_117
	jmp	.label_118
.label_162:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_226
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_226:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_179:
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
	je	.label_136
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_142
	cmp	rbp, -2
	je	.label_151
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_153
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_195:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_164
	bt	rsi, rdx
	jb	.label_166
.label_164:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_195
.label_153:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_218
	xor	r15d, r15d
.label_218:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_179
	jmp	.label_188
.label_194:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_117
.label_147:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_119
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_119
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_119
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_199
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_173
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_156
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_207
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_207:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_183
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_183:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_221
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_221:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_160
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_160:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_117
.label_119:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_117:
	test	r12b, r12b
	je	.label_126
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_128
	jmp	.label_133
	nop	word ptr cs:[rax + rax]
.label_126:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_133
.label_128:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_139
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_138
	jmp	.label_118
	nop	word ptr cs:[rax + rax]
.label_133:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_118
	jmp	.label_138
.label_139:
	mov	bl, r13b
	mov	rsi, r14
.label_118:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_156
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_165
	mov	al, r11b
	and	al, 1
	jne	.label_165
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_169
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_169:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_152
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_152:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_182
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_182:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_165:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_191
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_191:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_127
.label_170:
	xor	r15d, r15d
	jmp	.label_117
.label_177:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_201
	nop	word ptr cs:[rax + rax]
.label_175:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_201:
	test	dl, dl
	je	.label_223
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_209
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_144
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_144:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_209
	nop	word ptr [rax + rax]
.label_223:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_108
	cmp	r14d, 2
	jne	.label_113
	mov	al, r11b
	and	al, 1
	jne	.label_113
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_115
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_115:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_124
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_124:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_229
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_229:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_113:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_135
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_135:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_228
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_228:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_161
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_161:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_209:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_138
	test	r11b, 1
	je	.label_178
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_180
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_185
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_185:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_211
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_211:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_180
	nop	word ptr cs:[rax + rax]
.label_178:
	mov	r14, rdi
.label_180:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_175
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_175
.label_138:
	test	r11b, 1
	je	.label_158
	and	al, 1
	jne	.label_158
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_131
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_131:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_216
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_216:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_127
	nop	dword ptr [rax + rax]
.label_158:
	mov	bl, r13b
	mov	r14, rdi
.label_127:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_114
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_114
.label_181:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_125
.label_186:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_125:
	cmp	rcx, r10
	jae	.label_215
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_215:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_132
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_157
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_171
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_192
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_192:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_120
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_120:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_117
.label_132:
	xor	r15d, r15d
	jmp	.label_117
.label_157:
	xor	r15d, r15d
	jmp	.label_117
.label_171:
	xor	r15d, r15d
	jmp	.label_117
.label_136:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_110
.label_142:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_176
.label_151:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_184
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_217:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_190
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_217
	xor	r15d, r15d
	jmp	.label_110
.label_184:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_176:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_110:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_188
.label_190:
	xor	r15d, r15d
	jmp	.label_110
.label_199:
	xor	r15d, r15d
	jmp	.label_117
.label_173:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_117
	nop	dword ptr [rax + rax]
.label_200:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_204
	or	dl, al
	je	.label_108
.label_204:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_206
	or	dl, al
	jne	.label_206
	test	r8b, 1
	jne	.label_150
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_206
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_112
.label_206:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_121
	test	cl, cl
	jne	.label_121
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_121
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_140:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_219
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_219:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_140
.label_121:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_146
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_146
.label_156:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_168:
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
.label_193:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_146:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_166:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_168
.label_108:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_168
.label_150:
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
	jmp	.label_193
.label_129:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047b0
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
	#Procedure 0x4047c0

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
	je	.label_230
	mov	qword ptr [rax], rbx
.label_230:
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
	#Procedure 0x4048c0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_231
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_234:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_234
.label_231:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_235
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_232]], OFFSET FLAT:slot0
.label_235:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_233
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_233:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404960

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x404970

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
	js	.label_236
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_241
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_237
.label_241:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_240
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
	jne	.label_239
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_239:
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
.label_237:
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
	ja	.label_242
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_238
	mov	rdi, rbx
	call	free
.label_238:
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
.label_242:
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
.label_236:
	call	abort
.label_240:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b40

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b50
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
	#Procedure 0x404b60
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
	#Procedure 0x404b70

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
	#Procedure 0x404bb0

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
	je	.label_243
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
.label_243:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c10

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
	#Procedure 0x404c50
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
	#Procedure 0x404c70
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
	#Procedure 0x404c90

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
	mov	rcx,  qword ptr [word ptr [rip + label_244]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_245]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_246]]
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
	#Procedure 0x404d00

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
	#Procedure 0x404d10

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d20
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d30

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
	#Procedure 0x404d80

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404d90

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
	mov	rax,  qword ptr [word ptr [rip + label_244]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_245]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_246]]
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
	#Procedure 0x404e00
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
	#Procedure 0x404e20
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
	#Procedure 0x404e40

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e50
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
	#Procedure 0x404e60

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404e70

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
	#Procedure 0x404e80

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
	jne	.label_248
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
	je	.label_247
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_248
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_248
.label_247:
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
	je	.label_249
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_248
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_248
.label_249:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_248:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404f60

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
	je	.label_251
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_252
	jmp	.label_250
.label_251:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_250
.label_252:
	mov	eax, 1
	test	bpl, bpl
	je	.label_250
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
.label_250:
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
	#Procedure 0x404ff0

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
	je	.label_255
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_253
	jmp	.label_254
.label_255:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_254
.label_253:
	mov	eax, 1
	test	bpl, bpl
	je	.label_254
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
.label_254:
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
	#Procedure 0x405080

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
	je	.label_257
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_258
	jmp	.label_256
.label_257:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_256
.label_258:
	mov	eax, 1
	test	bpl, bpl
	je	.label_256
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
.label_256:
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
	#Procedure 0x405100

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
	je	.label_261
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_260
	jmp	.label_259
.label_261:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_259
.label_260:
	mov	eax, 1
	test	bpl, bpl
	je	.label_259
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
.label_259:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405170

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
	je	.label_264
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_262
	jmp	.label_263
.label_264:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_263
.label_262:
	mov	eax, 1
	test	bpl, bpl
	je	.label_263
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_263:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051e0

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
	je	.label_265
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_267
	jmp	.label_266
.label_265:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_266
.label_267:
	mov	eax, 1
	test	bpl, bpl
	je	.label_266
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_266:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405230

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
	je	.label_270
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_269
	jmp	.label_268
.label_270:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_268
.label_269:
	mov	eax, 1
	test	bpl, bpl
	je	.label_268
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_268:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405280

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_273
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_272
	jmp	.label_271
.label_273:
	mov	eax, 1
	test	cl, cl
	je	.label_271
.label_272:
	xor	eax, eax
.label_271:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4052b0

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
	je	.label_280
	mov	edx, OFFSET FLAT:.str_4
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_279
.label_280:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_279:
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
	ja	.label_275
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_276]]
.label_347:
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
.label_275:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_274
.label_348:
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
.label_349:
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
.label_350:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_281
.label_351:
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
	jmp	.label_283
.label_352:
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
	jmp	.label_278
.label_353:
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
.label_278:
	mov	qword ptr [rsp + 0x10], rdi
.label_283:
	mov	qword ptr [rsp + 8], rsi
.label_281:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_282
.label_355:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_274:
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
	jmp	.label_277
.label_354:
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
.label_277:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_282:
	call	__fprintf_chk
.label_346:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055a0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_284:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_284
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055d0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_286:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_285
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_287
	nop	dword ptr [rax]
.label_285:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_287:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_288
	inc	r9
	cmp	r9, 0xa
	jb	.label_286
.label_288:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405630

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_289
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_289:
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
	#Procedure 0x4056c0
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
	.align	32
	#Procedure 0x405740
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_290
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_290:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405770

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_291
	test	rax, rax
	je	.label_292
.label_291:
	pop	rbx
	ret	
.label_292:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405790
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_293
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_293:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057c0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_294
	test	rbx, rbx
	jne	.label_294
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_294:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_296
	test	rax, rax
	je	.label_295
.label_296:
	pop	rbx
	ret	
.label_295:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4057f0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_297
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_300
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_298
.label_297:
	test	rcx, rcx
	jne	.label_301
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_301:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_299
.label_298:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_300:
	call	xalloc_die
.label_299:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405870

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405880
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405890
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
	#Procedure 0x4058c0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_302
	call	rpl_calloc
	test	rax, rax
	je	.label_302
	pop	rcx
	ret	
.label_302:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058f0

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
	#Procedure 0x405920
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
	#Procedure 0x405940

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
	.align	32
	#Procedure 0x405970

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_303
	test	rsi, rsi
	mov	ecx, 1
	je	.label_304
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_304
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_303:
	mov	ecx, 1
.label_304:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059c0

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
	je	.label_305
	cmp	r15, -2
	jb	.label_305
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_305
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_305:
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
	#Procedure 0x405a20

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
	jle	.label_306
	add	rax, rbx
	nop	dword ptr [rax]
.label_307:
	movzx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x20
	jne	.label_306
	mov	byte ptr [rax - 1], 0
	dec	rax
	cmp	rbx, rax
	jb	.label_307
.label_306:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a80

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	ebp, ecx
	mov	r14, rdx
	mov	r15, rsi
	mov	qword ptr [rsp], 0
	call	utmpxname
	call	setutxent
	xor	r13d, r13d
	xor	r12d, r12d
	jmp	.label_309
.label_308:
	lea	rdi, [r12 + r12*2]
	inc	r12
	shl	rdi, 7
	add	rdi, r13
	mov	edx, 0x180
	mov	rsi, rbx
	call	memcpy
	nop	dword ptr [rax + rax]
.label_309:
	call	getutxent
	mov	rbx, rax
	test	rbx, rbx
	je	.label_310
	mov	rdi, rbx
	mov	esi, ebp
	call	desirable_utmp_entry
	test	al, al
	je	.label_309
	cmp	r12, qword ptr [rsp]
	jne	.label_308
	mov	edx, 0x180
	mov	rdi, r13
	lea	rsi, [rsp]
	call	x2nrealloc
	mov	r13, rax
	jmp	.label_308
.label_310:
	call	endutxent
	mov	qword ptr [r15], r12
	mov	qword ptr [r14], r13
	xor	eax, eax
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
	#Procedure 0x405b30

	.globl desirable_utmp_entry
	.type desirable_utmp_entry, @function
desirable_utmp_entry:
	cmp	byte ptr [rdi + 0x2c], 0
	je	.label_312
	movzx	eax, word ptr [rdi]
	cmp	eax, 7
	sete	al
	jmp	.label_314
.label_312:
	xor	eax, eax
.label_314:
	push	rax
	test	sil, 2
	je	.label_311
	test	al, al
	jne	.label_311
	xor	eax, eax
	pop	rcx
	ret	
.label_311:
	test	sil, 1
	je	.label_313
	xor	al, 1
	jne	.label_313
	mov	edi, dword ptr [rdi + 4]
	test	edi, edi
	jle	.label_313
	xor	esi, esi
	call	kill
	test	eax, eax
	jns	.label_313
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_313
	xor	eax, eax
	pop	rcx
	ret	
.label_313:
	mov	al, 1
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b80

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
	je	.label_315
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_316
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_316
.label_315:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_316
	test	cl, cl
	jne	.label_316
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_316:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bf0

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
	je	.label_317
	mov	rax, rcx
.label_317:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c20

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_318
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_320
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_318
.label_320:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_318
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_319
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_319:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_318:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ca0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_321
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_321
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_321:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cd0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_322
	ret	
.label_322:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405cf0

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
	jne	.label_323
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_323
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_324
.label_323:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_324:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_325
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_325:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405d60

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
