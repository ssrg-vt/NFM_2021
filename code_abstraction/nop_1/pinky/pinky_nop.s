	.section	.text
	.align	32
	#Procedure 0x401980

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	ebp, edi
	nop	
	test	ebp, ebp
	mov	rsp, rsp
	jne	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.2
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.7
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	lea	rsi, [rsi]
	call	emit_ancillary_info
	nop	
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rbp, rbp
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401af0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	mov	rbp, rbp
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.18_0
	nop	word ptr [rax + rax]
.label_8:
	mov	edi, OFFSET FLAT:.str.8
	call	strcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_10
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	mov	rbp, rbp
	test	rsi, rsi
	nop	
	jne	.label_8
.label_10:
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:.str.8
	mov	rbp, rbp
	cmovne	rbx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	mov	rsp, rsp
	xor	esi, esi
	call	setlocale
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	je	.label_9
	nop	
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 3
	mov	rdi, rax
	mov	rbp, rbp
	call	strncmp
	nop	
	test	eax, eax
	je	.label_9
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_9:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.8
	mov	rbp, rbp
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.18
	nop	
	mov	ecx, OFFSET FLAT:.str.8
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.32
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	mov	rbp, rbp
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	jmp	__printf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c70

	.globl main
	.type main, @function
main:
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	r14, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	rbp, rbp
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	call	setlocale
	mov	edi, OFFSET FLAT:.str.10
	nop	
	mov	esi, OFFSET FLAT:.str.11
	call	bindtextdomain
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.10
	lea	rdi, [rdi]
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	nop	
	call	atexit
	jmp	.label_13
.label_324:
	mov	byte ptr [byte ptr [rip + include_home_and_shell]],  1
	nop	word ptr cs:[rax + rax]
.label_13:
	mov	edx, OFFSET FLAT:.str.12
	mov	ecx, OFFSET FLAT:longopts
	mov	rsp, rsp
	xor	r8d, r8d
	mov	rsp, rsp
	mov	edi, ebx
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rsp, rsp
	call	getopt_long
	mov	rbp, rbp
	cmp	eax, 0x61
	jle	.label_12
	nop	
	add	eax, -0x62
	cmp	eax, 0x15
	ja	.label_15
	jmp	qword ptr [word ptr [+ (rax * 8) + label_16]]
.label_325:
	mov	byte ptr [byte ptr [rip + include_heading]],  1
	mov	rsp, rsp
	jmp	.label_13
.label_326:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + include_project]],  1
	jmp	.label_13
.label_327:
	mov	byte ptr [byte ptr [rip + include_fullname]],  1
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + include_where]],  1
	lea	rsi, [rsi]
	jmp	.label_13
.label_328:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + do_short_format]],  1
	jmp	.label_13
.label_329:
	mov	byte ptr [byte ptr [rip + include_plan]],  1
	mov	rbp, rbp
	jmp	.label_13
.label_330:
	mov	byte ptr [byte ptr [rip + include_fullname]],  1
	mov	byte ptr [byte ptr [rip + include_where]],  1
	mov	byte ptr [byte ptr [rip + include_idle]],  1
	jmp	.label_13
.label_331:
	mov	byte ptr [byte ptr [rip + do_short_format]],  0
	nop	
	jmp	.label_13
.label_332:
	mov	byte ptr [byte ptr [rip + include_fullname]],  1
	jmp	.label_13
.label_12:
	cmp	eax, -1
	lea	rsi, [rsi]
	jne	.label_17
	mov	ecx,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + do_short_format]]
	and	al, 1
	movzx	edx, al
	cmp	edx, 1
	jne	.label_19
	mov	rsp, rsp
	cmp	ecx, ebx
	je	.label_11
.label_19:
	movsxd	rcx, ecx
	sub	ebx, ecx
	lea	rdi, [rdi]
	lea	rsi, [r14 + rcx*8]
	lea	rsi, [rsi]
	mov	edi, ebx
	test	al, al
	mov	rsp, rsp
	je	.label_14
	nop	
	call	long_pinky
	lea	rdi, [rdi]
	jmp	.label_20
.label_14:
	nop	
	call	short_pinky
.label_20:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	add	rsp, 0x18
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r14
	ret	
.label_17:
	cmp	eax, 0xffffff7d
	je	.label_18
	cmp	eax, 0xffffff7e
	jne	.label_15
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	call	usage
.label_18:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.16
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, OFFSET FLAT:.str.17
	nop	
	mov	r8d, OFFSET FLAT:.str.14
	mov	rbp, rbp
	mov	r9d, OFFSET FLAT:.str.15
	xor	eax, eax
	call	version_etc
	mov	rbp, rbp
	xor	edi, edi
	call	exit
.label_15:
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_11:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.17_0
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, rcx
	nop	
	call	error
	mov	edi, 1
	call	usage
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401ec0

	.globl short_pinky
	.type short_pinky, @function
short_pinky:
	mov	rsp, rsp
	push	rbp
	push	rbx
	sub	rsp, 0x18
	nop	
	mov	rbx, rsi
	mov	rsp, rsp
	mov	ebp, edi
	mov	qword ptr [rsp + 8], 0
	lea	rsi, [rsp + 0x10]
	lea	rsi, [rsi]
	lea	rdx, [rsp + 8]
	mov	edi, OFFSET FLAT:.str.7
	xor	ecx, ecx
	lea	rsi, [rsi]
	call	read_utmp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_21
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 8]
	nop	
	mov	edx, ebp
	lea	rdi, [rdi]
	mov	rcx, rbx
	call	scan_entries
	lea	rsi, [rsi]
	add	rsp, 0x18
	nop	
	pop	rbx
	pop	rbp
	mov	rbp, rbp
	ret	
.label_21:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	edx, OFFSET FLAT:.str.7
	mov	rbp, rbp
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebx
	lea	rsi, [rsi]
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401f70

	.globl long_pinky
	.type long_pinky, @function
long_pinky:
	lea	rsi, [rsi]
	push	rbp
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbx, rsi
	mov	ebp, edi
	lea	rdi, [rdi]
	test	ebp, ebp
	nop	
	jle	.label_22
	nop	word ptr cs:[rax + rax]
.label_23:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	call	print_long_entry
	add	rbx, 8
	dec	ebp
	mov	rsp, rsp
	jne	.label_23
.label_22:
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401fb0

	.globl scan_entries
	.type scan_entries, @function
scan_entries:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	r15, rcx
	mov	dword ptr [rsp + 4], edx
	nop	
	mov	rbp, rsi
	nop	
	mov	r12, rdi
	mov	edi, 2
	mov	rbp, rbp
	call	hard_locale
	nop	
	mov	ecx, OFFSET FLAT:.str.36
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.37
	lea	rdi, [rdi]
	test	al, al
	nop	
	cmovne	rdx, rcx
	mov	rbp, rbp
	movzx	eax, al
	lea	eax, [rax*4 + 0xc]
	mov	qword ptr [word ptr [rip + time_format]],  rdx
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + time_format_width]],  eax
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + include_heading]]
	and	al, 1
	jne	.label_26
	call	print_heading
.label_26:
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_27
	movsxd	r13, dword ptr [rsp + 4]
	nop	dword ptr [rax + rax]
.label_25:
	dec	r12
	mov	rbp, rbp
	cmp	byte ptr [rbp + 0x2c], 0
	je	.label_24
	movzx	eax, word ptr [rbp]
	mov	rbp, rbp
	cmp	eax, 7
	lea	rdi, [rdi]
	jne	.label_24
	lea	rbx, [rbp + 0x2c]
	cmp	dword ptr [rsp + 4], 0
	nop	
	je	.label_28
	mov	rbp, rbp
	mov	r14d, 0
	nop	
	jle	.label_24
	nop	word ptr cs:[rax + rax]
.label_29:
	nop	
	mov	rsi, qword ptr [r15 + r14*8]
	mov	edx, 0x20
	mov	rdi, rbx
	call	strncmp
	test	eax, eax
	je	.label_28
	inc	r14
	mov	rsp, rsp
	cmp	r14, r13
	jl	.label_29
	jmp	.label_24
.label_28:
	mov	rdi, rbp
	call	print_entry
	nop	dword ptr [rax + rax]
.label_24:
	add	rbp, 0x180
	test	r12, r12
	lea	rsi, [rsi]
	jne	.label_25
.label_27:
	mov	rsp, rsp
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020e0

	.globl print_heading
	.type print_heading, @function
print_heading:
	push	rbx
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.39
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.38
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	call	__printf_chk
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + include_fullname]]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	jne	.label_31
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.41
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.40
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	call	__printf_chk
.label_31:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.42
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rcx
	mov	rbp, rbp
	call	__printf_chk
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + include_idle]]
	nop	
	and	al, 1
	mov	rbp, rbp
	jne	.label_32
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.44
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_32:
	mov	ebx,  dword ptr [dword ptr [rip + time_format_width]]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	mov	esi, OFFSET FLAT:.str.46
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, ebx
	call	__printf_chk
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + include_where]]
	lea	rdi, [rdi]
	and	al, 1
	jne	.label_30
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.48
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_30:
	mov	edi, 0xa
	mov	rbp, rbp
	pop	rbx
	nop	
	jmp	putchar_unlocked
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402270

	.globl print_entry
	.type print_entry, @function
print_entry:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x1c8
	lea	rdi, [rdi]
	mov	r13, rdi
	lea	rdi, [rdi]
	lea	r14, [r13 + 8]
	movzx	eax, byte ptr [r13 + 8]
	nop	
	cmp	eax, 0x2f
	lea	rdi, [rdi]
	jne	.label_44
	mov	rbp, rbp
	lea	rdi, [rsp + 0x110]
	mov	rsp, rsp
	jmp	.label_35
.label_44:
	mov	rbp, rbp
	lea	rdi, [rsp + 0x115]
	mov	word ptr [rsp + 0x114], 0x2f
	mov	dword ptr [rsp + 0x110], 0x7665642f
.label_35:
	mov	edx, 0x20
	mov	rsi, r14
	nop	
	call	stzncpy
	lea	rdi, [rsp + 0x110]
	lea	rsi, [rsp + 0x138]
	nop	
	call	stat
	mov	rbp, rbp
	mov	r12d, 0x3f
	xor	r15d, r15d
	test	eax, eax
	mov	rbp, rbp
	jne	.label_41
	test	byte ptr [rsp + 0x150], 0x10
	mov	rsp, rsp
	mov	eax, 0x20
	mov	r12d, 0x2a
	cmovne	r12d, eax
	nop	
	mov	r15, qword ptr [rsp + 0x180]
.label_41:
	lea	rbp, [r13 + 0x2c]
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 0x20
	xor	eax, eax
	mov	rcx, rbp
	mov	rbp, rbp
	call	__printf_chk
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + include_fullname]]
	and	al, 1
	jne	.label_42
	lea	rbx, [rsp]
	mov	edx, 0x20
	mov	rdi, rbx
	mov	rsi, rbp
	call	stzncpy
	mov	rdi, rbx
	call	getpwnam
	mov	rbp, rax
	test	rbp, rbp
	je	.label_46
	mov	rdi, qword ptr [rbp + 0x18]
	mov	esi, 0x2c
	call	strchr
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_34
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0
.label_34:
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x18]
	call	create_fullname
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.54
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, rbx
	call	__printf_chk
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	mov	rsp, rsp
	jmp	.label_42
.label_46:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.52
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_42:
	mov	rsp, rsp
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.55
	mov	ecx, 0x20
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, r12d
	mov	r8, r14
	call	__printf_chk
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + include_idle]]
	mov	rsp, rsp
	and	al, 1
	jne	.label_38
	test	r15, r15
	je	.label_37
	lea	rsi, [rsi]
	mov	rdi, r15
	call	idle_string
	jmp	.label_43
.label_37:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.56
	mov	edx, 5
	call	dcgettext
.label_43:
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.44
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rcx
	mov	rsp, rsp
	call	__printf_chk
.label_38:
	lea	rdi, [rdi]
	mov	rdi, r13
	lea	rsi, [rsi]
	call	time_string
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.48
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	nop	
	mov	al,  byte ptr [byte ptr [rip + include_where]]
	and	al, 1
	mov	rbp, rbp
	jne	.label_33
	cmp	byte ptr [r13 + 0x4c], 0
	je	.label_33
	add	r13, 0x4c
	mov	rbp, rbp
	lea	r14, [rsp]
	nop	
	mov	edx, 0x100
	mov	rdi, r14
	mov	rsi, r13
	call	stzncpy
	mov	rbp, rbp
	mov	esi, 0x3a
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	call	strchr
	xor	ebx, ebx
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_39
	mov	rbp, rbp
	mov	rbx, rax
	inc	rbx
	mov	rsp, rsp
	mov	byte ptr [rax], 0
.label_39:
	xor	ebp, ebp
	mov	rbp, rbp
	cmp	byte ptr [rsp], 0
	lea	rsi, [rsi]
	je	.label_36
	lea	rdi, [rsp]
	call	canon_host
	lea	rdi, [rdi]
	mov	rbp, rax
.label_36:
	test	rbp, rbp
	cmovne	r14, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_40
	mov	esi, OFFSET FLAT:.str.57
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, r14
	lea	rdi, [rdi]
	mov	rcx, rbx
	lea	rdi, [rdi]
	call	__printf_chk
	lea	rdi, [rdi]
	jmp	.label_45
.label_40:
	mov	esi, OFFSET FLAT:.str.48
	xor	eax, eax
	mov	rdx, r14
	call	__printf_chk
.label_45:
	nop	
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_33
	nop	
	mov	rdi, r14
	call	free
.label_33:
	mov	rsp, rsp
	mov	edi, 0xa
	lea	rsi, [rsi]
	call	putchar_unlocked
	nop	
	add	rsp, 0x1c8
	nop	
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025d0

	.globl stzncpy
	.type stzncpy, @function
stzncpy:
	test	rdx, rdx
	mov	rbp, rbp
	jle	.label_47
	mov	rsp, rsp
	add	rdx, rsi
	nop	
.label_48:
	mov	rsp, rsp
	mov	al, byte ptr [rsi]
	mov	rbp, rbp
	test	al, al
	je	.label_47
	inc	rsi
	lea	rsi, [rsi]
	mov	byte ptr [rdi], al
	lea	rdi, [rdi]
	inc	rdi
	nop	
	cmp	rsi, rdx
	lea	rsi, [rsi]
	jb	.label_48
.label_47:
	mov	byte ptr [rdi], 0
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402610

	.globl create_fullname
	.type create_fullname, @function
create_fullname:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	push	rax
	mov	r14, rsi
	mov	r13, rdi
	call	strlen
	nop	
	mov	r15, rax
	inc	r15
	mov	rdi, r13
	mov	rsp, rsp
	call	count_ampersands
	lea	rdi, [rdi]
	mov	r12, rax
	test	r12, r12
	je	.label_57
	lea	rdi, [rdi]
	mov	rdi, r14
	call	strlen
	lea	rsi, [rsi]
	mov	rcx, rax
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	edx, edx
	lea	rsi, [rsi]
	div	r12
	cmp	rax, rcx
	jb	.label_54
	mov	rbp, rbp
	imul	rcx, r12
	mov	rax, rcx
	sub	rax, r12
	add	r15, rax
	cmp	r15, rcx
	jb	.label_54
.label_57:
	mov	rdi, r15
	mov	rsp, rsp
	call	xmalloc
	lea	rsi, [rsi]
	mov	r15, rax
	lea	rdi, [rdi]
	lea	r12, [r14 + 1]
	mov	rbx, r15
	jmp	.label_52
	nop	
.label_53:
	inc	r13
.label_52:
	mov	rsp, rsp
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x26
	nop	
	je	.label_55
	test	al, al
	je	.label_50
	mov	rsp, rsp
	mov	byte ptr [rbx], al
	inc	rbx
	inc	r13
	mov	rsp, rsp
	jmp	.label_52
	nop	dword ptr [rax]
.label_55:
	nop	
	movsx	edi, byte ptr [r14]
	call	to_uchar
	mov	rsp, rsp
	movzx	ebp, al
	nop	
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	test	byte ptr [rax + rbp*2 + 1], 2
	lea	rsi, [rsi]
	jne	.label_56
	mov	rax, r14
	mov	rbp, rbp
	jmp	.label_51
	nop	
.label_56:
	nop	
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	nop	
	mov	al, byte ptr [rax + rbp*4]
	mov	byte ptr [rbx], al
	mov	rbp, rbp
	inc	rbx
	nop	
	mov	rax, r12
.label_51:
	mov	cl, byte ptr [rax]
	test	cl, cl
	nop	
	je	.label_53
	inc	rax
	nop	word ptr cs:[rax + rax]
.label_49:
	mov	byte ptr [rbx], cl
	inc	rbx
	mov	cl, byte ptr [rax]
	inc	rax
	lea	rsi, [rsi]
	test	cl, cl
	mov	rbp, rbp
	jne	.label_49
	jmp	.label_53
.label_50:
	nop	
	mov	byte ptr [rbx], 0
	nop	
	mov	rax, r15
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_54:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402790

	.globl idle_string
	.type idle_string, @function
idle_string:
	push	rbx
	mov	rbx, rdi
	mov	rbp, rbp
	cmp	qword ptr [word ptr [rip + idle_string.now]],  0
	jne	.label_58
	mov	edi, OFFSET FLAT:idle_string.now
	lea	rdi, [rdi]
	call	time
.label_58:
	mov	rcx,  qword ptr [word ptr [rip + idle_string.now]]
	mov	rbp, rbp
	sub	rcx, rbx
	mov	ebx, OFFSET FLAT:.str.58
	cmp	rcx, 0x3c
	nop	
	jl	.label_60
	lea	rdi, [rdi]
	cmp	rcx, 0x1517f
	jg	.label_59
	movabs	rdx, 0x48d159e26af37c05
	lea	rdi, [rdi]
	mov	rax, rcx
	mov	rbp, rbp
	imul	rdx
	lea	rdi, [rdi]
	mov	rax, rdx
	lea	rsi, [rsi]
	shr	rax, 0x3f
	mov	rsp, rsp
	sar	rdx, 0xa
	lea	r8d, [rdx + rax]
	mov	rsp, rsp
	add	rdx, rax
	nop	
	imul	rax, rdx, 0xe10
	mov	rsp, rsp
	sub	rcx, rax
	movabs	rdx, 0x8888888888888889
	mov	rax, rcx
	mov	rbp, rbp
	imul	rdx
	mov	rsp, rsp
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	shr	rdx, 5
	lea	r9d, [rdx + rax]
	mov	ebx, OFFSET FLAT:idle_string.buf
	mov	edi, OFFSET FLAT:idle_string.buf
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rsp, rsp
	mov	edx, 0x16
	mov	ecx, OFFSET FLAT:.str.59
	nop	
	xor	eax, eax
	mov	rbp, rbp
	call	__sprintf_chk
	mov	rbp, rbp
	jmp	.label_60
.label_59:
	movabs	rdx, 0x1845c8a0ce512957
	nop	
	mov	rax, rcx
	imul	rdx
	mov	rsp, rsp
	mov	rax, rdx
	lea	rsi, [rsi]
	shr	rax, 0x3f
	sar	rdx, 0xd
	lea	r8, [rdx + rax]
	mov	ebx, OFFSET FLAT:idle_string.buf
	mov	edi, OFFSET FLAT:idle_string.buf
	mov	esi, 1
	mov	edx, 0x16
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.60
	xor	eax, eax
	call	__sprintf_chk
.label_60:
	mov	rbp, rbp
	mov	rax, rbx
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028d0

	.globl time_string
	.type time_string, @function
time_string:
	nop	
	push	rbx
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rdi + 0x154]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rsp + 8]
	call	localtime
	test	rax, rax
	je	.label_61
	mov	rdx,  qword ptr [word ptr [rip + time_format]]
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:time_string.buf
	mov	edi, OFFSET FLAT:time_string.buf
	lea	rsi, [rsi]
	mov	esi, 0x21
	mov	rcx, rax
	lea	rdi, [rdi]
	call	strftime
	mov	rbp, rbp
	jmp	.label_62
.label_61:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 8]
	call	timetostr
	mov	rbx, rax
.label_62:
	mov	rsp, rsp
	mov	rax, rbx
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402950

	.globl count_ampersands
	.type count_ampersands, @function
count_ampersands:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_63:
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rdi]
	cmp	ecx, 0x26
	lea	rsi, [rsi]
	sete	dl
	mov	rbp, rbp
	movzx	edx, dl
	add	rax, rdx
	mov	rsp, rsp
	inc	rdi
	mov	rsp, rsp
	test	cl, cl
	jne	.label_63
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402990

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	movzx	eax, dil
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029a0

	.globl timetostr
	.type timetostr, @function
timetostr:
	mov	esi, OFFSET FLAT:time_string.buf
	mov	rbp, rbp
	jmp	imaxtostr
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4029b0

	.globl print_long_entry
	.type print_long_entry, @function
print_long_entry:
	lea	rsi, [rsi]
	push	r15
	nop	
	push	r14
	mov	rsp, rsp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x408
	mov	rbx, rdi
	lea	rdi, [rdi]
	call	getpwnam
	nop	
	mov	r15, rax
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.61
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.62
	nop	
	xor	eax, eax
	mov	rdx, rbx
	nop	
	call	__printf_chk
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.63
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	nop	
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_70
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	mov	esi, 0x2c
	call	strchr
	test	rax, rax
	mov	rbp, rbp
	je	.label_68
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0
.label_68:
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	call	create_fullname
	mov	rbx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.48
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	rdx, rbx
	call	__printf_chk
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	mov	edi, 0xa
	call	putchar_unlocked
	mov	al,  byte ptr [byte ptr [rip + include_home_and_shell]]
	and	al, 1
	jne	.label_69
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	nop	
	mov	rsi, rcx
	call	__printf_chk
	mov	rdx, qword ptr [r15 + 0x20]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.66
	lea	rdi, [rdi]
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	call	__printf_chk
	mov	rdx, qword ptr [r15 + 0x28]
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.48
	xor	eax, eax
	call	__printf_chk
	mov	edi, 0xa
	lea	rsi, [rsi]
	call	putchar_unlocked
.label_69:
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + include_project]]
	nop	
	and	al, 1
	jne	.label_74
	mov	rdi, qword ptr [r15 + 0x20]
	mov	rsp, rsp
	call	strlen
	nop	
	lea	rdi, [rax + 0xa]
	call	xmalloc
	mov	r14, rax
	mov	rsp, rsp
	mov	rsi, qword ptr [r15 + 0x20]
	lea	rsi, [rsi]
	mov	rdi, r14
	nop	
	call	stpcpy
	mov	rsp, rsp
	movabs	rcx, 0x63656a6f72702e2f
	lea	rsi, [rsi]
	mov	qword ptr [rax], rcx
	nop	
	mov	word ptr [rax + 8], 0x74
	mov	esi, OFFSET FLAT:.str.69
	mov	rdi, r14
	lea	rsi, [rsi]
	call	fopen
	nop	
	mov	r12, rax
	test	r12, r12
	je	.label_71
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rsp, rsp
	call	__printf_chk
	lea	rdi, [rsp]
	mov	esi, 1
	nop	
	mov	edx, 0x400
	mov	rcx, r12
	nop	
	call	fread_unlocked
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_72
	nop	
	lea	rbx, [rsp]
	nop	word ptr [rax + rax]
.label_64:
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rdx, rax
	call	fwrite_unlocked
	mov	esi, 1
	lea	rdi, [rdi]
	mov	edx, 0x400
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rcx, r12
	lea	rdi, [rdi]
	call	fread_unlocked
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	jne	.label_64
.label_72:
	mov	rdi, r12
	nop	
	call	rpl_fclose
.label_71:
	mov	rdi, r14
	mov	rsp, rsp
	call	free
.label_74:
	mov	al,  byte ptr [byte ptr [rip + include_plan]]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_66
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 0x20]
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	lea	rdi, [rax + 7]
	mov	rbp, rbp
	call	xmalloc
	lea	rdi, [rdi]
	mov	r14, rax
	mov	rbp, rbp
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, r14
	call	stpcpy
	mov	byte ptr [rax + 6], 0
	lea	rdi, [rdi]
	mov	word ptr [rax + 4], 0x6e61
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x6c702e2f
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.69
	nop	
	mov	rdi, r14
	nop	
	call	fopen
	lea	rdi, [rdi]
	mov	r15, rax
	test	r15, r15
	je	.label_65
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.72
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, rcx
	nop	
	call	__printf_chk
	mov	rbp, rbp
	lea	rdi, [rsp]
	mov	esi, 1
	mov	edx, 0x400
	mov	rsp, rsp
	mov	rcx, r15
	call	fread_unlocked
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	je	.label_73
	nop	
	lea	rbx, [rsp]
	nop	word ptr cs:[rax + rax]
.label_67:
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	esi, 1
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rdx, rax
	call	fwrite_unlocked
	lea	rsi, [rsi]
	mov	esi, 1
	mov	edx, 0x400
	mov	rdi, rbx
	mov	rcx, r15
	call	fread_unlocked
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_67
.label_73:
	mov	rbp, rbp
	mov	rdi, r15
	call	rpl_fclose
.label_65:
	mov	rsp, rsp
	mov	rdi, r14
	call	free
.label_66:
	nop	
	mov	edi, 0xa
	call	putchar_unlocked
	add	rsp, 0x408
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r14
	nop	
	pop	r15
	nop	
	ret	
.label_70:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.48
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, rcx
	add	rsp, 0x408
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__printf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e40

	.globl canon_host
	.type canon_host, @function
canon_host:
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:last_cherror
	mov	rsp, rsp
	jmp	canon_host_r
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e50

	.globl canon_host_r
	.type canon_host_r, @function
canon_host_r:
	lea	rsi, [rsi]
	push	r14
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rbp, rbp
	mov	r14, rsi
	mov	rbx, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp], 0
	mov	dword ptr [dword ptr [rip + canon_host_r.hints]],  2
	nop	
	lea	rcx, [rsp]
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:canon_host_r.hints
	mov	rsp, rsp
	call	getaddrinfo
	test	eax, eax
	je	.label_75
	xor	ebx, ebx
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_76
	lea	rsi, [rsi]
	mov	dword ptr [r14], eax
	lea	rdi, [rdi]
	xor	ebx, ebx
	jmp	.label_76
.label_75:
	nop	
	mov	rax, qword ptr [rsp]
	nop	
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	cmovne	rbx, rax
	mov	rsp, rsp
	mov	rdi, rbx
	call	__strdup
	mov	rbx, rax
	mov	rsp, rsp
	test	r14, r14
	je	.label_77
	test	rbx, rbx
	jne	.label_77
	mov	dword ptr [r14], 0xfffffff6
.label_77:
	mov	rdi, qword ptr [rsp]
	mov	rsp, rsp
	call	freeaddrinfo
.label_76:
	mov	rbp, rbp
	mov	rax, rbx
	add	rsp, 8
	nop	
	pop	rbx
	mov	rbp, rbp
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f10
	.globl ch_strerror
	.type ch_strerror, @function
ch_strerror:

	mov	edi,  dword ptr [dword ptr [rip + last_cherror]]
	jmp	gai_strerror
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f20
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402f30
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f40

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_80
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_78
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_78
.label_80:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_79
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_78:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	lea	rdi, [rdi]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_81
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebp
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_79:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_81:
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, r14
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403040

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
	je	.label_83
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_82
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_84
.label_82:
	nop	
	mov	esi, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_83
.label_84:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_83:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403090

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	lea	rsi, [rsi]
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	lea	rsi, [rsi]
	js	.label_87
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
.label_86:
	lea	rdi, [rdi]
	mov	rax, rcx
	imul	r8
	mov	rbp, rbp
	mov	rax, rdx
	mov	rsp, rsp
	shr	rax, 0x3f
	sar	rdx, 2
	nop	
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	rdi, [rdi]
	lea	r9d, [rdi + rdi*4]
	nop	
	mov	edi, ecx
	sub	edi, r9d
	lea	rsi, [rsi]
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rbp, rbp
	mov	rcx, rdx
	ja	.label_86
	mov	rbp, rbp
	jmp	.label_88
.label_87:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
.label_85:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	nop	
	sar	rdx, 2
	lea	edi, [rdx + r10]
	lea	rdi, [rdi]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	lea	rdi, [rdi]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	nop	
	sub	eax, edi
	nop	
	mov	byte ptr [rsi], al
	add	rdx, r10
	mov	rbp, rbp
	add	rcx, 9
	dec	rsi
	mov	rsp, rsp
	cmp	rcx, 0x12
	mov	rcx, rdx
	mov	rsp, rsp
	ja	.label_85
	mov	rbp, rbp
	mov	byte ptr [rsi], 0x2d
.label_88:
	mov	rsp, rsp
	mov	rax, rsi
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403170

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
	je	.label_89
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
	jl	.label_91
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_91
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_90
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_90:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_91:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_89:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403260
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
	.align	32
	#Procedure 0x4032b0
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
	.align	32
	#Procedure 0x4032d0
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
	.align	32
	#Procedure 0x4032f0

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
	.align	32
	#Procedure 0x403360
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
	.align	32
	#Procedure 0x403380

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
	je	.label_92
	test	rdx, rdx
	nop	
	je	.label_92
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_92:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4033c0
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
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x30]
	lea	rsi, [rsi]
	lea	rdx, [rbp + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	nop	
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403460

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
	sub	rsp, 0x108
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x6c], ebx
	mov	r13d, r8d
	mov	qword ptr [rsp + 0xc0], rcx
	mov	r12, rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x150]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0x90], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rax
	mov	r15b, bl
	mov	rbp, rbp
	shr	r15b, 1
	mov	rbp, rbp
	and	r15b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x80], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], rax
	mov	eax, 0
	mov	rbp, rbp
	xor	r11d, r11d
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_190:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_191
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_119]]
.label_381:
	lea	rsi, [rsi]
	mov	r12d, r11d
	nop	
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r13d
	nop	
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, rbp
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r13d
	mov	rsp, rsp
	call	gettext_quote
	mov	rsp, rsp
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	nop	
	mov	r10, r14
	nop	
	mov	qword ptr [rsp + 0x88], rax
.label_382:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	rbp, rbp
	test	r15b, 1
	mov	rbp, rbp
	mov	eax, 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xf0], rax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_98
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_98
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_125:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_113
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_113:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	al, byte ptr [rdx + rcx + 1]
	lea	rdi, [rdi]
	inc	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rbp, rbp
	test	al, al
	jne	.label_125
.label_98:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rdi, rbx
	mov	r12, r10
	nop	
	call	strlen
	mov	r10, r12
	mov	qword ptr [rsp + 0xd0], rax
	lea	rdi, [rdi]
	mov	r14d, r13d
	mov	qword ptr [rsp + 0xa8], rbx
	mov	sil, 1
	mov	rbp, rbp
	mov	dil, r15b
	mov	r8b, byte ptr [rsp + 0x69]
	mov	rsp, rsp
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	nop	
	jmp	.label_139
.label_374:
	lea	rsi, [rsi]
	xor	r14d, r14d
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	jmp	.label_139
.label_377:
	mov	rsp, rsp
	mov	al, 1
.label_375:
	mov	r15b, 1
.label_378:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_159
	mov	cl, al
.label_159:
	lea	rdi, [rdi]
	mov	al, cl
.label_376:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_163
	test	r10, r10
	je	.label_169
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_171
.label_163:
	xor	ecx, ecx
	jmp	.label_171
.label_379:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_178
	test	r10, r10
	je	.label_181
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_101
.label_380:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	nop	
	mov	qword ptr [rsp + 0xa8], rax
	nop	
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	rbp, rbp
	mov	dil, 1
	jmp	.label_139
.label_169:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_171:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	mov	rbp, rbp
	jmp	.label_139
.label_178:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_101
.label_181:
	mov	rbp, rbp
	mov	eax, 1
.label_101:
	nop	
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	rsp, rsp
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	lea	rsi, [rsi]
	mov	sil, 1
	mov	dil, r15b
	nop	word ptr cs:[rax + rax]
.label_139:
	mov	qword ptr [rsp + 0x98], rdi
	mov	byte ptr [rsp + 0xa6], sil
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x140], 0
	lea	rsi, [rsi]
	setne	bl
	cmp	r14d, 2
	lea	rsi, [rsi]
	setne	r15b
	mov	rsp, rsp
	sete	dl
	mov	rbp, rbp
	mov	cl, sil
	and	cl, 1
	mov	byte ptr [rsp + 0xa5], cl
	sete	byte ptr [rsp + 0x6b]
	lea	rdi, [rdi]
	mov	r12b, r15b
	and	r12b, cl
	mov	byte ptr [rsp + 0xbf], r12b
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rsp, rsp
	setne	r13b
	mov	al, r13b
	and	al, r12b
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xdf], al
	mov	al, dil
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xcf], al
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	and	dl, al
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x7f], dl
	and	bl, al
	mov	byte ptr [rsp + 0xb7], bl
	or	cl, r15b
	mov	byte ptr [rsp + 0xa7], cl
	nop	
	and	sil, dil
	mov	rsp, rsp
	and	sil, r13b
	mov	byte ptr [rsp + 0x6a], sil
	nop	
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_122
	nop	word ptr [rax + rax]
.label_155:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_122:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_174
	cmp	rsi, rbp
	jne	.label_102
	jmp	.label_176
	nop	word ptr cs:[rax + rax]
.label_174:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_176
.label_102:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_182
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_189
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_189
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, rbp
	mov	rdi, r9
	mov	rbp, rbp
	mov	rbp, r10
	nop	
	mov	r15b, r8b
	lea	rsi, [rsi]
	mov	r13, r14
	lea	rsi, [rsi]
	mov	r12, r9
	mov	r14, rsi
	lea	rdi, [rdi]
	call	strlen
	mov	rsp, rsp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	mov	r9, r12
	mov	r12b, byte ptr [rsp + 0xbf]
	nop	
	mov	r14, r13
	lea	rdi, [rdi]
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r10, rbp
	mov	rbp, rax
.label_189:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_97
.label_182:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_135:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_109
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_114]]
.label_394:
	test	rsi, rsi
	jne	.label_121
	jmp	.label_124
	nop	word ptr [rax + rax]
.label_97:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12d, r11d
	lea	rsi, [rsi]
	mov	r13, r14
	lea	rdi, [rdi]
	mov	r15b, r8b
	mov	rbx, r10
	lea	rdi, [r9 + rsi]
	mov	r14, rsi
	mov	rbp, r9
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xd0]
	mov	rbp, rbp
	call	memcmp
	mov	rsp, rsp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_144
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	nop	
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_135
	mov	rsp, rsp
	jmp	.label_128
.label_144:
	mov	rbp, rbp
	mov	r10, rbx
	mov	rbp, rbp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	r9, rbp
	nop	
	mov	r11d, r12d
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0xc0]
	nop	
	mov	r12b, byte ptr [rsp + 0xbf]
	nop	
	mov	rsi, r14
	jmp	.label_135
.label_398:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_206
	test	rsi, rsi
	nop	
	jne	.label_187
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_124
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_103
.label_387:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_177
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_128
	cmp	edi, 2
	nop	
	jne	.label_185
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_188
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_198
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_198:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_204
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_204:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_209
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_209:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_96
.label_388:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_108
.label_389:
	mov	cl, 0x74
	jmp	.label_112
.label_390:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_108
.label_391:
	mov	bl, 0x66
	jmp	.label_108
.label_392:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_112
.label_395:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_117
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_129
	nop	
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	nop	
	setne	cl
	nop	
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x80], rdx
	mov	eax, 0
	mov	rsp, rsp
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_151
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_151:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_148
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_148:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_156
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_156:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_164
.label_396:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_170
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_175
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_129
.label_175:
	mov	rdi, r14
	jmp	.label_121
.label_397:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_180
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_129
	mov	rdi, r14
	jmp	.label_192
.label_109:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_194
	mov	rbp, rbp
	mov	r14, r9
	mov	rbx, rsi
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rsi, rbx
	nop	
	mov	r9, r14
	mov	rax, qword ptr [rax]
	movzx	r15d, word ptr [rax + r13*2]
	mov	rsp, rsp
	shr	r15d, 0xe
	lea	rdi, [rdi]
	and	r15b, 1
	lea	rsi, [rsi]
	mov	ebx, 1
.label_146:
	lea	rdi, [rdi]
	and	r15b, 1
	mov	dl, r15b
	or	dl, byte ptr [rsp + 0x6b]
	mov	byte ptr [rsp + 0xc0], dl
	cmp	rbx, 1
	mov	rcx, rbx
	mov	r10, qword ptr [rsp + 0x40]
	mov	r8b, byte ptr [rsp + 0x69]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	ja	.label_93
	test	dl, dl
	mov	rsp, rsp
	je	.label_93
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_103
.label_206:
	test	rsi, rsi
	jne	.label_118
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_118
.label_124:
	mov	rbp, rbp
	mov	dl, 1
.label_393:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_128
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_103
.label_177:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_121
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_122
.label_117:
	mov	rdi, r14
.label_164:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_103
.label_180:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_112
.label_192:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_126
.label_112:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_128
.label_108:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_103
	lea	rsi, [rsi]
	jmp	.label_115
.label_194:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_143
	mov	rsp, rsp
	mov	rdi, r9
	mov	rbx, r9
	lea	rdi, [rdi]
	mov	rbp, rsi
	mov	rsp, rsp
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_143:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	nop	
	mov	r15b, 1
	xor	ebx, ebx
	lea	rsi, [rsi]
	lea	r14, [rsp + 0x100]
.label_136:
	lea	rax, [rbx + rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x30], rsi
	nop	
	lea	rsi, [r9 + rax]
	mov	qword ptr [rsp + 0x48], r9
	mov	rbp, rbp
	mov	rdx, rbp
	mov	rbp, rbp
	sub	rdx, rax
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0xfc]
	nop	
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	test	rbp, rbp
	je	.label_197
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rdi, [rdi]
	je	.label_201
	cmp	rbp, -2
	nop	
	je	.label_212
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_213
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_116:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_195
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_104
.label_195:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_116
.label_213:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_134
	xor	r15d, r15d
.label_134:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	add	rbx, rbp
	mov	r14, rdi
	nop	
	call	mbsinit
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	je	.label_136
	jmp	.label_146
.label_118:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_103
.label_170:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_121
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_121
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_121
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_157
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_161
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_128
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_202
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_202:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_179
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_179:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_141
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_141:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_123
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_123:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_103
.label_121:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_103:
	test	r12b, r12b
	je	.label_214
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_100
	jmp	.label_106
	nop	word ptr cs:[rax + rax]
.label_214:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_106
.label_100:
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	esi, 1
	mov	rsp, rsp
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_183
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_126
	jmp	.label_115
	nop	word ptr cs:[rax + rax]
.label_106:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_115
	jmp	.label_126
.label_183:
	mov	bl, r13b
	mov	rsi, r14
.label_115:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_128
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_145
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_145
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_152
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_152:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_150
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_150:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_160
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_160:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_145:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_172
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_172:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_147
.label_187:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_103
.label_93:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_186
	nop	word ptr cs:[rax + rax]
.label_142:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_186:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_200
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_95
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_207
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_207:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_95
	nop	dword ptr [rax]
.label_200:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_129
	cmp	r14d, 2
	jne	.label_105
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_105
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_120
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_120:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_132
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_132:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_140
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_140:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_105:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_133
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_133:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_210
	mov	dl, r13b
	mov	rsp, rsp
	shr	dl, 6
	or	dl, 0x30
	mov	rsp, rsp
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	lea	rsi, [rsi]
	mov	rsi, rdi
.label_210:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_166
	mov	dl, r13b
	shr	dl, 3
	nop	
	and	dl, 7
	or	dl, 0x30
	nop	
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_166:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_95:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_126
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_193
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_196
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_199
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_199:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_208
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_208:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_196
	nop	word ptr cs:[rax + rax]
.label_193:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_196:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_142
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_142
	nop	word ptr cs:[rax + rax]
.label_126:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_131
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_131
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_153
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_153:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_138
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_138:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_147
	nop	word ptr cs:[rax + rax]
.label_131:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_147:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_155
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_155
.label_185:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_96
.label_188:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_96:
	cmp	rcx, r10
	jae	.label_167
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_167:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_173
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_107
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_184
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_203
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_203:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_205
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_205:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_103
.label_173:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_103
.label_107:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_103
.label_184:
	xor	r15d, r15d
	jmp	.label_103
.label_197:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_111
.label_201:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_94
.label_212:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_127
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_137:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_162
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_137
	xor	r15d, r15d
	nop	
	jmp	.label_111
.label_127:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_94:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_111:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_146
.label_162:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_111
.label_157:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_103
.label_161:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_103
	nop	word ptr cs:[rax + rax]
.label_176:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_158
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_129
.label_158:
	nop	
	mov	qword ptr [rsp + 0xc0], rbp
	mov	rsp, rsp
	mov	r12, r9
	nop	
	test	cl, cl
	setne	al
	lea	rdi, [rdi]
	cmp	r14d, 2
	nop	
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	test	sil, 1
	lea	rdi, [rdi]
	je	.label_165
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_165
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_149
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_165
	lea	rdi, [rdi]
	test	r10, r10
	nop	
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r15b, dl
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_190
.label_165:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_130
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_130
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_130
	inc	rdx
	nop	dword ptr [rax + rax]
.label_99:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_211
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_211:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_99
.label_130:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_110
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_110
.label_128:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_154:
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rsi, [rsi]
	mov	r8d, 4
	cmove	r8d, r14d
	lea	rsi, [rsi]
	cmp	r14d, 2
	mov	rbp, rbp
	cmovne	r8d, r14d
	nop	
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	rsi, r10
	mov	rcx, rbp
.label_168:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_110:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	nop	
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
.label_104:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_154
.label_129:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_154
.label_149:
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	mov	rdx, r12
	nop	
	mov	rcx, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_168
.label_191:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bb0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	mov	rax, rdx
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rcx, rax
	mov	rbp, rbp
	jmp	quotearg_alloc_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bd0

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
	mov	qword ptr [rsp + 0x28], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x44], ecx
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
	call	xcharalloc
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
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x44]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	dword ptr [rdx], ecx
	je	.label_215
	mov	qword ptr [rax], rbx
.label_215:
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
	.align	32
	#Procedure 0x404d20
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_216
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_220:
	mov	rdi, qword ptr [r15]
	nop	
	call	free
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	lea	rsi, [rsi]
	add	r15, 0x10
	cmp	rbx, rax
	mov	rsp, rsp
	jl	.label_220
.label_216:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_219
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_217]], OFFSET FLAT:slot0
.label_219:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_218
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_218:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404de0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x404df0

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
	mov	qword ptr [rsp + 0x40], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_226
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_221
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_225
.label_221:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_223
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
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
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_227
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_227:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
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
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_225:
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
	mov	qword ptr [rsp + 0x20], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rdx
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
	mov	rdx, qword ptr [rsp + 0x40]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_224
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
	je	.label_222
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_222:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xcharalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_224:
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x2c]
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
.label_226:
	lea	rdi, [rdi]
	call	abort
.label_223:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x405060

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405070
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rsi, rax
	jmp	quotearg_n
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405090
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rcx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4050b0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop
	push	rbp
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	rbx, rdx
	mov	ebp, edi
	nop	
	lea	r14, [rsp + 8]
	lea	rdi, [rdi]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405110

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	mov	rbp, rbp
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_228
	mov	dword ptr [rdi], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	lea	rsi, [rsi]
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi + 4], xmm0
	lea	rdi, [rdi]
	mov	rax, rdi
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
.label_228:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405180

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x38
	nop	
	mov	r14, rcx
	lea	rdi, [rdi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	ebp, edi
	lea	rsi, [rsi]
	lea	r15, [rsp]
	nop	
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4051e0
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	mov	rax, rsi
	mov	rbp, rbp
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405200
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405220

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x40
	mov	eax, edx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_229]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_230]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_231]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	lea	r15, [rsp]
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, r15
	mov	esi, eax
	mov	rbp, rbp
	call	set_char_quoting
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rsp, rsp
	mov	rcx, r15
	call	quotearg_n_options
	nop	
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4052c0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	lea	rdi, [rdi]
	mov	rsi, -1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4052e0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	mov	esi, 0x3a
	mov	rbp, rbp
	jmp	quotearg_char
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052f0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405300

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	mov	rbp, rbp
	call	quoting_options_from_style
	nop	
	mov	esi, 0x3a
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rcx, rbx
	mov	rsp, rsp
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x40
	nop	
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405370

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	mov	r8, -1
	nop	
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405380

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	r14, r8
	mov	rbp, rbp
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_229]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_230]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_231]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r14
	mov	rcx, r15
	mov	rsp, rsp
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405410
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	mov	rax, rdx
	mov	rsp, rsp
	mov	rcx, rsi
	mov	rdx, rdi
	nop	
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	jmp	quotearg_n_custom
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405440
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	mov	rax, rcx
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, rsi
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	r8, rax
	mov	rsp, rsp
	jmp	quotearg_n_custom_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405470

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405480
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rcx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rdx, rax
	lea	rsi, [rsi]
	jmp	quote_n_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054a0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4054b0
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x4054c0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	nop	
	sub	rsp, 0x10
	mov	r14d, esi
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	mov	rbp, rbp
	call	dcgettext
	cmp	rax, rbx
	mov	rsp, rsp
	jne	.label_232
	mov	rsp, rsp
	call	locale_charset
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	nop	
	mov	esi, 0x55
	mov	rbp, rbp
	mov	edx, 0x54
	mov	rsp, rsp
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	call	strcaseeq0
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_233
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_232
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_232
.label_233:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], 0x30
	mov	dword ptr [rsp], 0x33
	lea	rdi, [rdi]
	mov	esi, 0x47
	nop	
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	rbp, rbp
	mov	r8d, 0x38
	mov	rsp, rsp
	mov	r9d, 0x30
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	mov	rbp, rbp
	je	.label_234
	nop	
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_232
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_232
.label_234:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_232:
	add	rsp, 0x10
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055f0

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	nop	
	mov	r13d, edx
	lea	rsi, [rsi]
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	lea	rsi, [rsi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_237
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_235
	jmp	.label_236
.label_237:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_236
.label_235:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_236
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	nop	
	movsx	ecx, r15b
	nop	
	movsx	r8d, r14b
	mov	rbp, rbp
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_236:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056b0

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], r9d
	lea	rdi, [rdi]
	mov	r15d, r8d
	mov	rbp, rbp
	mov	r12d, ecx
	mov	r13d, edx
	mov	rsp, rsp
	mov	ebp, esi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_240
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_239
	lea	rsi, [rsi]
	jmp	.label_238
.label_240:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_238
.label_239:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_238
	nop	
	movsx	esi, r13b
	mov	rbp, rbp
	movsx	edx, r12b
	lea	rdi, [rdi]
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	lea	rdi, [rdi]
	movsx	r9d, r14b
	mov	rbp, rbp
	mov	rdi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	strcaseeq2
.label_238:
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4057a0

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r14d, r9d
	lea	rdi, [rdi]
	mov	r15d, r8d
	mov	rbp, rbp
	mov	r12d, ecx
	mov	r13d, edx
	lea	rsi, [rsi]
	mov	ebp, esi
	mov	rbx, rdi
	nop	
	mov	edi, ebp
	call	c_isupper
	mov	rbp, rbp
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_243
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_242
	jmp	.label_241
.label_243:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_241
.label_242:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_241
	lea	rdi, [rdi]
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	strcaseeq3
.label_241:
	mov	rsp, rsp
	add	rsp, 8
	mov	rbp, rbp
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
	#Procedure 0x405870

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	rbp, rbp
	mov	r12d, edx
	lea	rdi, [rdi]
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	nop	
	call	c_isupper
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rbx + 3]
	nop	
	test	al, al
	je	.label_246
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_245
	jmp	.label_244
.label_246:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_244
.label_245:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_244
	movsx	esi, r12b
	mov	rsp, rsp
	movsx	edx, r15b
	mov	rsp, rsp
	movsx	ecx, r14b
	nop	
	mov	rdi, rbx
	pop	rbx
	nop	
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq4
.label_244:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405910

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14d, ecx
	lea	rdi, [rdi]
	mov	r15d, edx
	nop	
	mov	ebp, esi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	edi, ebp
	nop	
	call	c_isupper
	nop	
	movsx	ecx, byte ptr [rbx + 4]
	mov	rbp, rbp
	test	al, al
	mov	rbp, rbp
	je	.label_249
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_248
	nop	
	jmp	.label_247
.label_249:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_247
.label_248:
	mov	eax, 1
	test	bpl, bpl
	je	.label_247
	lea	rdi, [rdi]
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	jmp	strcaseeq5
.label_247:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059b0

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	r14d, edx
	mov	rsp, rsp
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_252
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_251
	lea	rsi, [rsi]
	jmp	.label_250
.label_252:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_250
.label_251:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_250
	movsx	esi, r14b
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	jmp	strcaseeq6
.label_250:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a40

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	nop
	push	rbp
	mov	rbp, rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	nop	
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	mov	rsp, rsp
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	mov	rsp, rsp
	je	.label_255
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_254
	jmp	.label_253
.label_255:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_253
.label_254:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_253
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_253:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405ab0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	xor	edi, edi
	lea	rsi, [rsi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	je	.label_256
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_258
	mov	rbp, rbp
	jmp	.label_257
.label_256:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_257
.label_258:
	xor	eax, eax
.label_257:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b00

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
	je	.label_259
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_4
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_261
.label_259:
	mov	edx, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_261:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
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
	mov	esi, OFFSET FLAT:.str.3_0
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
	ja	.label_263
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_264]]
.label_350:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_0
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
.label_263:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_267
.label_351:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_0
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
.label_352:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_0
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
.label_353:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_0
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
	jmp	.label_268
.label_354:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
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
	jmp	.label_266
.label_355:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
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
	jmp	.label_265
.label_356:
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
.label_265:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_266:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_268:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_262
.label_358:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_267:
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
	jmp	.label_260
.label_357:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
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
.label_260:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_262:
	mov	rbp, rbp
	call	__fprintf_chk
.label_349:
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
	.align	32
	#Procedure 0x405ef0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_269:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_269
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f20

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_272:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_270
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_273
	nop	word ptr cs:[rax + rax]
.label_270:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_273:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_271
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_272
.label_271:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405fb0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_274
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x40], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0x70], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_274:
	mov	qword ptr [rsp + 0x28], r9
	nop	
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x20
	lea	r8, [rsp + 0xb0]
	mov	rsp, rsp
	call	version_etc_va
	lea	rdi, [rdi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406060
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
	mov	esi, OFFSET FLAT:.str.16_0
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
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x4060f0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	mov	rbp, rbp
	cmp	rax, rdi
	mov	rbp, rbp
	jb	.label_275
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_275:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406130

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_276
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_277
.label_276:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_277:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406160
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	nop	
	div	rcx
	cmp	rax, rsi
	mov	rbp, rbp
	jb	.label_278
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_278:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061a0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_279
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_279
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_279:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_280
	test	rax, rax
	nop	
	je	.label_281
.label_280:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_281:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061f0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_282
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_283
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_284
.label_282:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_285
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_285:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_286
.label_284:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	r8, rcx
	nop	
	mov	rsi, r8
	mov	rbp, rbp
	pop	rax
	lea	rdi, [rdi]
	jmp	xrealloc
.label_283:
	call	xalloc_die
.label_286:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406290

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062a0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4062b0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	r14, rdi
	nop	
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062f0
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
	jb	.label_287
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_287
	pop	rcx
	ret	
.label_287:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406320

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406370
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	mov	rbp, rbp
	pop	rbx
	jmp	xmemdup
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406390

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4063e0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_288
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_289
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
	je	.label_289
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
.label_288:
	mov	ecx, 1
.label_289:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406450

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_290
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_292
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
	je	.label_290
.label_292:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_290
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_291
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_291:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_290:
	lea	rsi, [rsi]
	mov	rdi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	rbp
	nop	
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406510

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_293
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_293
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_293:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	32
	#Procedure 0x406540

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_294
	mov	rbp, rbp
	ret	
.label_294:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	32
	#Procedure 0x406560

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
	jne	.label_295
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_295
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_297
.label_295:
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
.label_297:
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
	je	.label_296
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_296:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406610

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
	je	.label_298
	nop	
	cmp	r15, -2
	jb	.label_298
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_298
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_298:
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
	.align	32
	#Procedure 0x4066a0
	.globl extract_trimmed_name
	.type extract_trimmed_name, @function
extract_trimmed_name:

	lea	rsi, [rsi]
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r14, rdi
	mov	edi, 0x21
	lea	rdi, [rdi]
	call	xmalloc
	nop	
	mov	rbx, rax
	mov	rsp, rsp
	lea	rsi, [r14 + 0x2c]
	mov	edx, 0x20
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strncpy
	lea	rsi, [rsi]
	mov	byte ptr [rbx + 0x20], 0
	mov	rdi, rbx
	call	strlen
	lea	rsi, [rsi]
	test	rax, rax
	jle	.label_299
	lea	rdi, [rdi]
	add	rax, rbx
	nop	word ptr cs:[rax + rax]
.label_300:
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax - 1]
	nop	
	cmp	ecx, 0x20
	jne	.label_299
	mov	rbp, rbp
	mov	byte ptr [rax - 1], 0
	dec	rax
	cmp	rbx, rax
	mov	rbp, rbp
	jb	.label_300
.label_299:
	mov	rax, rbx
	mov	rbp, rbp
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406740

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	nop	
	push	r12
	push	rbx
	push	rax
	mov	ebp, ecx
	mov	r14, rdx
	mov	r15, rsi
	mov	rsp, rsp
	mov	qword ptr [rsp], 0
	call	utmpxname
	lea	rsi, [rsi]
	call	setutxent
	mov	rbp, rbp
	xor	r13d, r13d
	xor	r12d, r12d
	mov	rsp, rsp
	jmp	.label_302
.label_301:
	lea	rdi, [r12 + r12*2]
	inc	r12
	lea	rdi, [rdi]
	shl	rdi, 7
	mov	rsp, rsp
	add	rdi, r13
	mov	rbp, rbp
	mov	edx, 0x180
	mov	rsi, rbx
	call	memcpy
	nop	word ptr cs:[rax + rax]
.label_302:
	call	getutxent
	mov	rbp, rbp
	mov	rbx, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_303
	mov	rdi, rbx
	mov	rsp, rsp
	mov	esi, ebp
	lea	rsi, [rsi]
	call	desirable_utmp_entry
	mov	rbp, rbp
	test	al, al
	lea	rdi, [rdi]
	je	.label_302
	cmp	r12, qword ptr [rsp]
	lea	rsi, [rsi]
	jne	.label_301
	mov	edx, 0x180
	mov	rdi, r13
	mov	rbp, rbp
	lea	rsi, [rsp]
	lea	rsi, [rsi]
	call	x2nrealloc
	mov	r13, rax
	nop	
	jmp	.label_301
.label_303:
	mov	rbp, rbp
	call	endutxent
	mov	qword ptr [r15], r12
	mov	qword ptr [r14], r13
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406840

	.globl desirable_utmp_entry
	.type desirable_utmp_entry, @function
desirable_utmp_entry:
	cmp	byte ptr [rdi + 0x2c], 0
	je	.label_304
	movzx	eax, word ptr [rdi]
	cmp	eax, 7
	nop	
	sete	al
	jmp	.label_307
.label_304:
	xor	eax, eax
.label_307:
	mov	rbp, rbp
	push	rax
	mov	rsp, rsp
	test	sil, 2
	je	.label_305
	test	al, al
	lea	rdi, [rdi]
	jne	.label_305
	nop	
	xor	eax, eax
	pop	rcx
	ret	
.label_305:
	test	sil, 1
	lea	rsi, [rsi]
	je	.label_306
	xor	al, 1
	lea	rsi, [rsi]
	jne	.label_306
	mov	edi, dword ptr [rdi + 4]
	mov	rbp, rbp
	test	edi, edi
	jle	.label_306
	mov	rsp, rsp
	xor	esi, esi
	lea	rdi, [rdi]
	call	kill
	lea	rdi, [rdi]
	test	eax, eax
	jns	.label_306
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 3
	mov	rsp, rsp
	jne	.label_306
	mov	rsp, rsp
	xor	eax, eax
	pop	rcx
	nop	
	ret	
.label_306:
	mov	al, 1
	pop	rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068c0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_308
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_308
.label_309:
	ret	
.label_308:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_309
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068f0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_310
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_310:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406910
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406920
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
	#Procedure 0x406930
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_311
.label_312:
	ret	
.label_311:
	cmp	edi, 0x7f
	je	.label_312
	xor	eax, eax
	jmp	.label_312
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406950
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
	#Procedure 0x406960
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
	#Procedure 0x406970
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
	#Procedure 0x406980
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
	#Procedure 0x406990
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_313
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_313
.label_314:
	ret	
.label_313:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_314
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069c0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_315
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_315:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4069e0

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
	#Procedure 0x4069f0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_316
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_316:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406a10
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
	#Procedure 0x406a20
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
	#Procedure 0x406a30

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
	mov	rdi, rbx
	mov	rbp, rbp
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	nop	
	call	rpl_fclose
	mov	rbp, rbp
	test	ebp, ebp
	nop	
	je	.label_317
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_318
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_318
.label_317:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_318
	test	cl, cl
	jne	.label_318
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_318:
	mov	rsp, rsp
	mov	eax, ebx
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x406ad0

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
	mov	eax, OFFSET FLAT:.str.1_5
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_319
	nop	
	mov	rax, rcx
.label_319:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b10

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
	nop	dword ptr [rax]
