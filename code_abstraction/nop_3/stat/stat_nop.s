	.section	.text
	.align	16
	#Procedure 0x401fb0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_8
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.1
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rbp, rbp
	call	__printf_chk
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.2
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.5
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.13
	nop	
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:fmt_terse_regular
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	__printf_chk
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.14
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:fmt_terse_fs
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.15
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.16
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	__printf_chk
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	nop	
	mov	edi, 5
	nop	
	xor	esi, esi
	call	setlocale
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_9
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.38
	mov	rsp, rsp
	mov	edx, 3
	nop	
	mov	rdi, rax
	call	strncmp
	nop	
	test	eax, eax
	mov	rsp, rsp
	je	.label_9
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
.label_9:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.16
	xor	eax, eax
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.16
	mov	ecx, OFFSET FLAT:.str.42
	mov	rbp, rbp
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	lea	rsi, [rsi]
	call	exit
.label_8:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4023e0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0xb8
	mov	r14, rsi
	mov	r15d, edi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	rsp, rsp
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.18_0
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.19
	nop	
	call	bindtextdomain
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.18_0
	call	textdomain
	call	localeconv
	mov	rax, qword ptr [rax]
	mov	edi, OFFSET FLAT:.str_1
	cmp	byte ptr [rax], 0
	nop	
	je	.label_19
	lea	rdi, [rdi]
	mov	rdi, rax
.label_19:
	mov	qword ptr [word ptr [rip + decimal_point]],  rdi
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [word ptr [rip + decimal_point_len]],  rax
	mov	edi, OFFSET FLAT:close_stdout
	mov	rsp, rsp
	call	atexit
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	mov	rsp, rsp
	xor	ebx, ebx
	lea	rsi, [rsi]
	xor	r12d, r12d
	lea	rdi, [rdi]
	jmp	.label_24
.label_13:
	nop	
	mov	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rax
.label_24:
	mov	cl, bl
.label_30:
	mov	rsp, rsp
	mov	bl, cl
	jmp	.label_20
	nop	word ptr cs:[rax + rax]
.label_16:
	mov	r12,  qword ptr [word ptr [rip + optarg]]
	mov	byte ptr [byte ptr [rip + interpret_backslash_escapes]],  bpl
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + trailing_delim]],  rax
.label_20:
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:.str.21
	mov	ecx, OFFSET FLAT:long_options
	lea	rdi, [rdi]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	edi, r15d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x65
	jg	.label_37
	cmp	eax, 0x4b
	jle	.label_38
	cmp	eax, 0x4c
	nop	
	je	.label_39
	cmp	eax, 0x63
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.22
	je	.label_16
	jmp	.label_11
	nop	word ptr [rax + rax]
.label_37:
	mov	cl, 1
	cmp	eax, 0x66
	je	.label_13
	cmp	eax, 0x74
	lea	rdi, [rdi]
	je	.label_30
	cmp	eax, 0x80
	jne	.label_11
	mov	rsp, rsp
	mov	bpl, 1
	mov	eax, OFFSET FLAT:.str_0
	mov	rsp, rsp
	jmp	.label_16
.label_39:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + follow_links]],  1
	mov	rsp, rsp
	jmp	.label_20
.label_38:
	cmp	eax, -1
	mov	rsp, rsp
	jne	.label_22
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + optind]],  r15d
	je	.label_33
	mov	rbp, rbp
	test	r12, r12
	je	.label_31
	mov	esi, OFFSET FLAT:.str.26
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsp, rsp
	call	strstr
	test	rax, rax
	je	.label_21
	mov	edi, OFFSET FLAT:.str.50
	call	getenv
	nop	
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_28
	mov	esi, OFFSET FLAT:quoting_style_args
	mov	edx, OFFSET FLAT:quoting_style_vals
	nop	
	mov	ecx, 4
	mov	rdi, rbx
	call	argmatch
	mov	rbp, rbp
	test	eax, eax
	js	.label_32
	cdqe	
	mov	rbp, rbp
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + quoting_style_vals]]
	nop	
	xor	edi, edi
	call	set_quoting_style
	mov	rsp, rsp
	jmp	.label_21
.label_31:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	test	al, al
	setne	al
	test	bl, bl
	lea	rsi, [rsi]
	setne	cl
	mov	rsp, rsp
	movzx	ebx, al
	mov	rsp, rsp
	movzx	ebp, cl
	xor	edx, edx
	nop	
	mov	edi, ebx
	mov	esi, ebp
	call	default_format
	mov	qword ptr [rsp + 0xb0], rax
	lea	rsi, [rsi]
	mov	edx, 1
	mov	edi, ebx
	mov	esi, ebp
	nop	
	call	default_format
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_17
.label_28:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 4
	call	set_quoting_style
	nop	
	jmp	.label_21
.label_32:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 4
	mov	rbp, rbp
	call	set_quoting_style
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_21:
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0xb0], r12
.label_17:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rdi]
	mov	r12b, 1
	cmp	eax, r15d
	lea	rsi, [rsi]
	jge	.label_29
	mov	rbp, rbp
	lea	r13, [r14 + rax*8]
	lea	rsi, [rsi]
	sub	r15d, eax
	mov	rsp, rsp
	mov	r12b, 1
	lea	rdi, [rdi]
	lea	r14, [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_27:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	mov	rbx, qword ptr [r13]
	je	.label_36
	mov	dword ptr [rsp + 8], r15d
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_40
	nop	
	cmp	byte ptr [rbx + 1], 0
	nop	
	je	.label_10
.label_40:
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	call	statfs
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_14
	call	__errno_location
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0xc], eax
	xor	ebp, ebp
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	mov	r15, r14
	mov	r14, rax
	lea	rdi, [rdi]
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, rbx
	nop	
	call	quotearg_style
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, r14
	nop	
	mov	r14, r15
	mov	rsp, rsp
	call	error
	jmp	.label_12
	nop	word ptr [rax + rax]
.label_36:
	movzx	eax, byte ptr [rbx]
	mov	rbp, rbp
	cmp	eax, 0x2d
	mov	rsp, rsp
	jne	.label_26
	nop	
	mov	al, byte ptr [rbx + 1]
	mov	cl, al
	nop	
	neg	cl
	lea	rdi, [rdi]
	sbb	ebp, ebp
	lea	rsi, [rsi]
	test	al, al
	jne	.label_34
	mov	dword ptr [rsp + 8], r15d
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	
	call	__fxstat
	test	eax, eax
	mov	rsp, rsp
	je	.label_25
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	ebp, ebp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.192
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	jmp	.label_12
.label_14:
	mov	esi, 0xffffffff
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:print_statfs
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	nop	
	jmp	.label_15
.label_26:
	mov	ebp, 0xffffffff
.label_34:
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + follow_links]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_18
	nop	
	mov	dword ptr [rsp + 8], r15d
	mov	edi, 1
	nop	
	mov	rsi, rbx
	mov	rdx, r14
	call	__xstat
	nop	
	jmp	.label_23
.label_18:
	mov	dword ptr [rsp + 8], r15d
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	call	__lxstat
.label_23:
	test	eax, eax
	mov	rbp, rbp
	je	.label_25
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.5_0
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	mov	edi, 4
	nop	
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, r14d
	lea	r14, [rsp + 0x20]
	mov	rdx, r15
	lea	rdi, [rdi]
	call	error
	lea	rdi, [rdi]
	jmp	.label_12
.label_25:
	mov	eax, dword ptr [rsp + 0x38]
	mov	ecx, 0x4000
	nop	
	or	eax, ecx
	lea	rsi, [rsi]
	and	eax, 0xf000
	cmp	eax, 0x6000
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0xb0]
	jne	.label_41
	nop	
	mov	rdi, qword ptr [rsp + 0x10]
.label_41:
	mov	ecx, OFFSET FLAT:print_stat
	mov	rbp, rbp
	mov	esi, ebp
.label_15:
	mov	rdx, rbx
	mov	r8, r14
	mov	rsp, rsp
	call	print_it
	nop	
	mov	bpl, al
	nop	
	xor	bpl, 1
	jmp	.label_12
.label_10:
	lea	rdi, [rdi]
	xor	ebp, ebp
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	r15, rax
	mov	edi, 4
	nop	
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rbp, rbp
	call	error
	nop	word ptr cs:[rax + rax]
.label_12:
	mov	rbp, rbp
	mov	r15d, dword ptr [rsp + 8]
	and	r12b, bpl
	add	r13, 8
	dec	r15d
	mov	rsp, rsp
	jne	.label_27
.label_29:
	nop	
	movzx	eax, r12b
	xor	eax, 1
	nop	
	add	rsp, 0xb8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_22:
	cmp	eax, 0xffffff7d
	je	.label_35
	cmp	eax, 0xffffff7e
	jne	.label_11
	xor	edi, edi
	call	usage
.label_35:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.16
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.24
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_11:
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_33:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rcx
	call	error
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a80

	.globl default_format
	.type default_format, @function
default_format:
	push	r15
	push	r14
	nop	
	push	rbx
	mov	ebx, edx
	nop	
	test	dil, dil
	nop	
	je	.label_42
	test	sil, sil
	nop	
	je	.label_44
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:fmt_terse_fs
	jmp	.label_45
.label_42:
	test	sil, sil
	je	.label_47
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:fmt_terse_regular
	jmp	.label_45
.label_44:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdi, rax
.label_45:
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	r15
	jmp	xstrdup
.label_47:
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.53
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdi, rax
	call	xstrdup
	mov	r14, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	test	bl, bl
	je	.label_46
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.55
	jmp	.label_43
.label_46:
	mov	esi, OFFSET FLAT:.str.56
.label_43:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.54
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	xasprintf
	lea	rdi, [rdi]
	mov	r15, rax
	mov	rbp, rbp
	mov	rdi, r14
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.54
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, rcx
	call	xasprintf
	mov	r14, rax
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.54
	nop	
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rcx
	mov	rsp, rsp
	call	xasprintf
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	mov	rax, rbx
	pop	rbx
	pop	r14
	mov	rsp, rsp
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bf0

	.globl print_it
	.type print_it, @function
print_it:
	nop	
	push	rbp
	nop	
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x18], rdx
	nop	
	mov	dword ptr [rsp + 0x24], esi
	mov	r13, rdi
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rsi]
	lea	rdi, [rax + 3]
	call	xmalloc
	mov	qword ptr [rsp + 0x28], rax
	mov	al, byte ptr [r13]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc], 0
	mov	rbp, rbp
	jmp	.label_60
	nop	word ptr [rax + rax]
.label_57:
	mov	rsp, rsp
	mov	al, byte ptr [r13 + 1]
	lea	rdi, [rdi]
	inc	r13
.label_60:
	mov	rbp, rbp
	test	al, al
	je	.label_63
	movsx	ecx, al
	cmp	ecx, 0x5c
	je	.label_64
	cmp	ecx, 0x25
	lea	rsi, [rsi]
	jne	.label_66
	lea	r15, [r13 + 1]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:printf_flags
	mov	rdi, r15
	call	strspn
	lea	rdi, [rdi]
	lea	rbx, [r13 + rax]
	lea	rdi, [r13 + rax + 1]
	mov	esi, OFFSET FLAT:digits
	lea	rsi, [rsi]
	call	strspn
	lea	r12, [rax + rbx + 1]
	movzx	ecx, byte ptr [rax + rbx + 1]
	cmp	ecx, 0x2e
	jne	.label_54
	mov	rbp, rbp
	lea	rdi, [r12 + 1]
	mov	esi, OFFSET FLAT:digits
	call	strspn
	mov	cl, byte ptr [rax + r12 + 1]
	lea	r12, [rax + r12 + 1]
.label_54:
	mov	r14, r12
	nop	
	sub	r14, r15
	mov	rbp, rbp
	movsx	ebp, cl
	lea	rdi, [rdi]
	lea	rbx, [r14 + 1]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, r13
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	memcpy
	cmp	ebp, 0x25
	mov	r13, r12
	mov	rsp, rsp
	je	.label_50
	test	ebp, ebp
	lea	rdi, [rdi]
	jne	.label_52
	lea	rdi, [rdi]
	lea	r13, [r12 - 1]
.label_50:
	mov	rbp, rbp
	cmp	r12, r15
	nop	
	jne	.label_58
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x28]
	nop	
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	jae	.label_59
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x25
	jmp	.label_57
	nop	word ptr cs:[rax + rax]
.label_64:
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + interpret_backslash_escapes]]
	and	al, 1
	lea	rdi, [rdi]
	je	.label_65
	mov	bl, byte ptr [r13 + 1]
	lea	rsi, [rsi]
	movsx	r15d, bl
	mov	rbp, rbp
	mov	al, r15b
	mov	rsp, rsp
	and	al, 0xf8
	mov	rsp, rsp
	movzx	eax, al
	nop	
	cmp	eax, 0x30
	jne	.label_69
	add	r15d, -0x30
	lea	rsi, [rsi]
	movsx	eax, byte ptr [r13 + 2]
	mov	ecx, eax
	and	ecx, 0xf8
	cmp	ecx, 0x30
	nop	
	jne	.label_74
	nop	
	lea	r15d, [rax + r15*8 - 0x30]
	mov	rbp, rbp
	movsx	eax, byte ptr [r13 + 3]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	and	ecx, 0xf8
	cmp	ecx, 0x30
	lea	rdi, [rdi]
	jne	.label_79
	lea	r15d, [rax + r15*8 - 0x30]
	add	r13, 4
	jmp	.label_73
	nop	
.label_66:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	jae	.label_48
	mov	rbp, rbp
	lea	rdx, [rcx + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
	jmp	.label_57
.label_52:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	rsi, rbx
	nop	
	mov	edx, ebp
	mov	ecx, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x10]
	call	qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	ecx, dword ptr [rsp + 0xc]
	and	cl, 1
	or	cl, al
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc], ecx
	lea	rsi, [rsi]
	mov	r13, r12
	jmp	.label_57
.label_69:
	nop	
	test	bl, bl
	mov	rsp, rsp
	je	.label_67
	mov	rbp, rbp
	movzx	eax, bl
	cmp	eax, 0x78
	jne	.label_68
	movzx	ebp, byte ptr [r13 + 2]
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rcx, qword ptr [rax]
	test	byte ptr [rcx + rbp*2 + 1], 0x10
	mov	rbp, rbp
	jne	.label_72
.label_68:
	mov	rsp, rsp
	lea	eax, [r15 - 0x5c]
	lea	rdi, [rdi]
	cmp	eax, 0xa
	jbe	.label_75
	lea	eax, [r15 - 0x6e]
	lea	rdi, [rdi]
	cmp	eax, 8
	ja	.label_77
	jmp	qword ptr [word ptr [+ (rax * 8) + label_80]]
.label_1605:
	lea	rsi, [rsi]
	mov	bl, 0xa
	jmp	.label_49
.label_74:
	nop	
	add	r13, 2
	jmp	.label_73
.label_67:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	call	error
.label_65:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_56
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x5c
	lea	rdi, [rdi]
	jmp	.label_57
.label_79:
	lea	rdi, [rdi]
	add	r13, 3
.label_73:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	jae	.label_62
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], r15b
	lea	rsi, [rsi]
	dec	r13
	jmp	.label_57
.label_75:
	jmp	qword ptr [word ptr [+ (rax * 8) + label_70]]
.label_1460:
	lea	rsi, [rsi]
	mov	bl, 7
	jmp	.label_49
.label_48:
	mov	rsp, rsp
	movzx	esi, al
	nop	
	call	__overflow
	lea	rsi, [rsi]
	jmp	.label_57
.label_72:
	movsx	eax, bpl
	mov	dl, al
	mov	rsp, rsp
	add	dl, 0x9f
	lea	rsi, [rsi]
	movzx	edx, dl
	nop	
	cmp	edx, 5
	ja	.label_76
	add	eax, -0x57
	mov	rsp, rsp
	jmp	.label_53
.label_59:
	mov	esi, 0x25
	lea	rdi, [rdi]
	call	__overflow
	jmp	.label_57
.label_56:
	mov	esi, 0x5c
	call	__overflow
	lea	rsi, [rsi]
	jmp	.label_57
.label_76:
	mov	rsp, rsp
	add	bpl, 0xbf
	mov	rbp, rbp
	movzx	edx, bpl
	cmp	edx, 5
	lea	rdi, [rdi]
	ja	.label_83
	add	eax, -0x37
	lea	rsi, [rsi]
	jmp	.label_53
.label_77:
	mov	rsp, rsp
	cmp	r15d, 0x22
	lea	rsi, [rsi]
	je	.label_49
.label_1459:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	ecx, r15d
	mov	rsp, rsp
	call	error
	mov	rsp, rsp
	jmp	.label_49
.label_62:
	movzx	esi, r15b
	call	__overflow
	dec	r13
	jmp	.label_57
.label_1461:
	mov	bl, 8
	jmp	.label_49
.label_1462:
	mov	bl, 0x1b
	jmp	.label_49
.label_1463:
	mov	rbp, rbp
	mov	bl, 0xc
	jmp	.label_49
.label_1606:
	lea	rdi, [rdi]
	mov	bl, 0xd
	jmp	.label_49
.label_1607:
	mov	bl, 9
	nop	
	jmp	.label_49
.label_1608:
	mov	bl, 0xb
.label_49:
	inc	r13
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_71
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], bl
	jmp	.label_57
.label_83:
	mov	rbp, rbp
	add	eax, -0x30
.label_53:
	mov	rsp, rsp
	movzx	edx, byte ptr [r13 + 3]
	lea	rdi, [rdi]
	test	byte ptr [rcx + rdx*2 + 1], 0x10
	jne	.label_78
	add	r13, 2
	jmp	.label_81
.label_78:
	lea	rsi, [rsi]
	movsx	ecx, dl
	mov	rbp, rbp
	shl	eax, 4
	mov	rsp, rsp
	mov	bl, cl
	mov	rbp, rbp
	add	bl, 0x9f
	movzx	esi, bl
	lea	rsi, [rsi]
	cmp	esi, 5
	ja	.label_82
	add	ecx, -0x57
	mov	rsp, rsp
	jmp	.label_55
.label_82:
	lea	rdi, [rdi]
	add	dl, 0xbf
	lea	rdi, [rdi]
	movzx	edx, dl
	cmp	edx, 5
	ja	.label_51
	add	ecx, -0x37
	jmp	.label_55
.label_71:
	mov	rsp, rsp
	movzx	esi, bl
	nop	
	call	__overflow
	mov	rsp, rsp
	jmp	.label_57
.label_51:
	add	ecx, -0x30
.label_55:
	add	r13, 3
	add	eax, ecx
.label_81:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_61
	mov	rbp, rbp
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
	jmp	.label_57
.label_61:
	nop	
	movzx	esi, al
	call	__overflow
	lea	rsi, [rsi]
	jmp	.label_57
.label_63:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + trailing_delim]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0xc]
	and	al, 1
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_58:
	mov	al, byte ptr [r12]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	byte ptr [rbp + r14 + 1], al
	mov	rbp, rbp
	mov	byte ptr [rbp + r14 + 2], 0
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rdi, rbp
	call	quote
	mov	rcx, rax
	nop	
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	error
	.section	.text
	.align	16
	#Procedure 0x403210

	.globl print_statfs
	.type print_statfs, @function
print_statfs:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	r15, r8
	lea	rdi, [rdi]
	mov	r10, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	nop	
	movabs	r14, 0x1208000000001
	movabs	rcx, 0x200000000001
	mov	rsp, rsp
	lea	eax, [rdx - 0x61]
	cmp	eax, 0x13
	mov	rsp, rsp
	ja	.label_120
	movabs	r13, 0x1288100000001
	movabs	r12, 0x1200800000001
	jmp	qword ptr [word ptr [+ (rax * 8) + label_241]]
.label_1468:
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0x20]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	lea	r15, [rbx + 1]
	lea	rdi, [rdi]
	lea	rbp, [rbx + r10]
	mov	r12, rbx
	mov	rsp, rsp
	cmp	r10, 2
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r10
	lea	rsi, [rsi]
	mov	r14, r15
	nop	
	jl	.label_259
	nop	
.label_288:
	mov	bl, byte ptr [r14]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	rsp, rsp
	mov	edx, 8
	lea	rdi, [rdi]
	call	memchr
	nop	
	test	rax, rax
	je	.label_259
	nop	
	mov	eax, 1
	mov	rsp, rsp
	mov	cl, bl
	mov	rsp, rsp
	shl	rax, cl
	movzx	ecx, bl
	cmp	ecx, 0x3f
	ja	.label_282
	lea	rsi, [rsi]
	and	rax, r13
	nop	
	je	.label_282
	mov	byte ptr [r15], bl
	lea	rsi, [rsi]
	inc	r15
.label_282:
	inc	r14
	cmp	r14, rbp
	jb	.label_288
.label_259:
	nop	
	cmp	r14, rbp
	jae	.label_98
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rax, rdi
	lea	rsi, [rsi]
	sub	rax, r14
	mov	rsi, r12
	mov	rbp, rbp
	add	rax, rsi
	lea	rsi, [rsi]
	cmp	rax, 0x1f
	lea	rsi, [rsi]
	jbe	.label_294
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_294
	lea	rdi, [rdi]
	lea	rdx, [rsi + rdi - 1]
	cmp	r15, rdx
	mov	rdx, qword ptr [rsp]
	nop	
	ja	.label_304
	dec	rdi
	sub	rdi, r14
	add	rdi, rsi
	add	rdi, r15
	cmp	r14, rdi
	nop	
	ja	.label_304
	mov	rdi, r15
	jmp	.label_123
.label_120:
	cmp	edx, 0x53
	mov	rbp, rbp
	je	.label_319
	mov	rsp, rsp
	cmp	edx, 0x54
	lea	rdi, [rdi]
	jne	.label_322
	mov	r8, qword ptr [r9]
	lea	rsi, [rsi]
	cmp	r8, 0x2fc12fc0
	lea	rdi, [rdi]
	jg	.label_326
	mov	rbp, rbp
	cmp	r8, 0xef50
	mov	rbp, rbp
	jg	.label_333
	cmp	r8, 0x482a
	jle	.label_338
	lea	rdi, [rdi]
	cmp	r8, 0x7274
	mov	rsp, rsp
	jg	.label_343
	lea	rdi, [rdi]
	cmp	r8, 0x517a
	jg	.label_350
	cmp	r8, 0x4d43
	mov	rbp, rbp
	jg	.label_354
	cmp	r8, 0x482b
	lea	rdi, [rdi]
	je	.label_202
	cmp	r8, 0x4858
	mov	rsp, rsp
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.117
	nop	
	jmp	.label_86
.label_322:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_106
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], 0x3f
	lea	rdi, [rdi]
	jmp	.label_109
.label_1469:
	mov	rax, qword ptr [r9 + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	lea	r15, [rbx + 1]
	lea	rdi, [rdi]
	lea	rbp, [rbx + r10]
	mov	rsp, rsp
	mov	r12, rbx
	lea	rsi, [rsi]
	cmp	r10, 2
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r10
	mov	r14, r15
	lea	rdi, [rdi]
	jl	.label_91
	nop	dword ptr [rax]
.label_178:
	lea	rdi, [rdi]
	mov	bl, byte ptr [r14]
	lea	rdi, [rdi]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	nop	
	call	memchr
	test	rax, rax
	je	.label_91
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, bl
	mov	rsp, rsp
	shl	rax, cl
	movzx	ecx, bl
	lea	rsi, [rsi]
	cmp	ecx, 0x3f
	ja	.label_141
	lea	rsi, [rsi]
	and	rax, r13
	lea	rsi, [rsi]
	je	.label_141
	mov	rbp, rbp
	mov	byte ptr [r15], bl
	inc	r15
.label_141:
	mov	rsp, rsp
	inc	r14
	mov	rbp, rbp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jb	.label_178
.label_91:
	lea	rsi, [rsi]
	cmp	r14, rbp
	nop	
	jae	.label_98
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rax, rdi
	sub	rax, r14
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rsp, rsp
	add	rax, rsi
	mov	rbp, rbp
	cmp	rax, 0x1f
	nop	
	jbe	.label_159
	mov	rsp, rsp
	mov	r8, rax
	nop	
	and	r8, 0xffffffffffffffe0
	je	.label_159
	lea	rdx, [rsi + rdi - 1]
	lea	rdi, [rdi]
	cmp	r15, rdx
	mov	rdx, qword ptr [rsp]
	mov	rbp, rbp
	ja	.label_173
	lea	rsi, [rsi]
	dec	rdi
	sub	rdi, r14
	lea	rsi, [rsi]
	add	rdi, rsi
	mov	rsp, rsp
	add	rdi, r15
	lea	rdi, [rdi]
	cmp	r14, rdi
	nop	
	ja	.label_173
	mov	rdi, r15
	mov	rbp, rbp
	jmp	.label_137
.label_1470:
	mov	rax, qword ptr [r9 + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	nop	
	lea	r15, [rbx + 1]
	lea	rbp, [rbx + r10]
	mov	rsp, rsp
	mov	r12, rbx
	nop	
	cmp	r10, 2
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r10
	nop	
	mov	r13, r15
	jl	.label_190
	nop	dword ptr [rax]
.label_225:
	mov	bl, byte ptr [r13]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_190
	mov	eax, 1
	lea	rdi, [rdi]
	mov	cl, bl
	lea	rdi, [rdi]
	shl	rax, cl
	mov	rbp, rbp
	movzx	ecx, bl
	mov	rbp, rbp
	cmp	ecx, 0x3f
	ja	.label_213
	and	rax, r14
	mov	rsp, rsp
	je	.label_213
	mov	byte ptr [r15], bl
	lea	rsi, [rsi]
	inc	r15
.label_213:
	inc	r13
	lea	rsi, [rsi]
	cmp	r13, rbp
	mov	rbp, rbp
	jb	.label_225
.label_190:
	nop	
	cmp	r13, rbp
	lea	rsi, [rsi]
	jae	.label_228
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rax, rdi
	sub	rax, r13
	mov	rsi, r12
	lea	rdi, [rdi]
	add	rax, rsi
	nop	
	cmp	rax, 0x1f
	nop	
	jbe	.label_230
	lea	rsi, [rsi]
	mov	r8, rax
	lea	rdi, [rdi]
	and	r8, 0xffffffffffffffe0
	lea	rsi, [rsi]
	je	.label_230
	nop	
	lea	rdx, [rsi + rdi - 1]
	cmp	r15, rdx
	mov	rdx, qword ptr [rsp]
	mov	rbp, rbp
	ja	.label_212
	mov	rbp, rbp
	dec	rdi
	mov	rsp, rsp
	sub	rdi, r13
	lea	rdi, [rdi]
	add	rdi, rsi
	add	rdi, r15
	lea	rsi, [rsi]
	cmp	r13, rdi
	ja	.label_212
	mov	rdi, r15
	lea	rsi, [rsi]
	jmp	.label_152
.label_1471:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + 0x30]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	lea	r15, [rbx + 1]
	lea	rdi, [rdi]
	lea	rbp, [rbx + r10]
	mov	r12, rbx
	mov	rsp, rsp
	cmp	r10, 2
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r10
	lea	rsi, [rsi]
	mov	r14, r15
	jl	.label_168
.label_293:
	nop	
	mov	bl, byte ptr [r14]
	nop	
	movsx	esi, bl
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:printf_flags
	nop	
	mov	edx, 8
	call	memchr
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_168
	mov	eax, 1
	mov	cl, bl
	nop	
	shl	rax, cl
	nop	
	movzx	ecx, bl
	lea	rsi, [rsi]
	cmp	ecx, 0x3f
	ja	.label_221
	and	rax, r13
	je	.label_221
	mov	rbp, rbp
	mov	byte ptr [r15], bl
	inc	r15
.label_221:
	mov	rbp, rbp
	inc	r14
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jb	.label_293
.label_168:
	cmp	r14, rbp
	jae	.label_98
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rax, rdi
	sub	rax, r14
	mov	rsi, r12
	add	rax, rsi
	cmp	rax, 0x1f
	lea	rdi, [rdi]
	jbe	.label_299
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_299
	lea	rdx, [rsi + rdi - 1]
	cmp	r15, rdx
	mov	rdx, qword ptr [rsp]
	ja	.label_312
	mov	rbp, rbp
	dec	rdi
	mov	rsp, rsp
	sub	rdi, r14
	add	rdi, rsi
	add	rdi, r15
	cmp	r14, rdi
	ja	.label_312
	mov	rdi, r15
	jmp	.label_157
.label_1472:
	nop	
	mov	rax, qword ptr [r9 + 0x18]
	mov	qword ptr [rsp], rax
	nop	
	lea	r15, [rbx + 1]
	mov	rsp, rsp
	lea	rbp, [rbx + r10]
	mov	r12, rbx
	cmp	r10, 2
	nop	
	mov	qword ptr [rsp + 0x10], r10
	mov	r14, r15
	jl	.label_88
	nop	dword ptr [rax]
.label_89:
	lea	rdi, [rdi]
	mov	bl, byte ptr [r14]
	mov	rsp, rsp
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	lea	rdi, [rdi]
	mov	edx, 8
	nop	
	call	memchr
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_88
	mov	eax, 1
	mov	cl, bl
	lea	rdi, [rdi]
	shl	rax, cl
	nop	
	movzx	ecx, bl
	lea	rdi, [rdi]
	cmp	ecx, 0x3f
	ja	.label_347
	lea	rsi, [rsi]
	and	rax, r13
	mov	rsp, rsp
	je	.label_347
	mov	byte ptr [r15], bl
	lea	rsi, [rsi]
	inc	r15
.label_347:
	inc	r14
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jb	.label_89
.label_88:
	mov	rbp, rbp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_98
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	rax, rdi
	mov	rsp, rsp
	sub	rax, r14
	mov	rsi, r12
	add	rax, rsi
	lea	rdi, [rdi]
	cmp	rax, 0x1f
	jbe	.label_104
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_104
	lea	rsi, [rsi]
	lea	rdx, [rsi + rdi - 1]
	lea	rdi, [rdi]
	cmp	r15, rdx
	mov	rdx, qword ptr [rsp]
	ja	.label_116
	dec	rdi
	sub	rdi, r14
	lea	rsi, [rsi]
	add	rdi, rsi
	add	rdi, r15
	mov	rbp, rbp
	cmp	r14, rdi
	mov	rbp, rbp
	ja	.label_116
	mov	rdi, r15
	jmp	.label_131
.label_98:
	nop	
	mov	rsi, r12
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp]
	jmp	.label_133
.label_1473:
	mov	rsp, rsp
	mov	r15d, dword ptr [r9 + 0x38]
	mov	eax, dword ptr [r9 + 0x3c]
	mov	qword ptr [rsp + 8], rax
	shl	r15, 0x20
	lea	rsi, [rsi]
	lea	r14, [rbx + 1]
	lea	r13, [rbx + r10]
	mov	qword ptr [rsp], rbx
	mov	rbp, rbp
	cmp	r10, 2
	nop	
	mov	qword ptr [rsp + 0x10], r10
	mov	rbp, r14
	nop	
	jl	.label_136
	nop	word ptr cs:[rax + rax]
.label_170:
	mov	bl, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	rbp, rbp
	mov	edx, 8
	lea	rsi, [rsi]
	call	memchr
	test	rax, rax
	je	.label_136
	mov	eax, 1
	mov	cl, bl
	mov	rsp, rsp
	shl	rax, cl
	lea	rsi, [rsi]
	movzx	ecx, bl
	lea	rsi, [rsi]
	cmp	ecx, 0x3f
	ja	.label_167
	and	rax, r12
	je	.label_167
	lea	rdi, [rdi]
	mov	byte ptr [r14], bl
	inc	r14
.label_167:
	inc	rbp
	cmp	rbp, r13
	lea	rdi, [rdi]
	jb	.label_170
.label_136:
	add	r15, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	cmp	rbp, r13
	jae	.label_302
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	rax, rdi
	lea	rsi, [rsi]
	sub	rax, rbp
	mov	rsi, qword ptr [rsp]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_180
	mov	rcx, rax
	nop	
	and	rcx, 0xffffffffffffffe0
	mov	rbp, rbp
	je	.label_180
	mov	rbp, rbp
	lea	rdx, [rsi + rdi - 1]
	cmp	r14, rdx
	mov	rbp, rbp
	ja	.label_188
	dec	rdi
	lea	rdi, [rdi]
	sub	rdi, rbp
	add	rdi, rsi
	add	rdi, r14
	cmp	rbp, rdi
	ja	.label_188
.label_180:
	mov	rdx, r14
	nop	
.label_200:
	mov	rsp, rsp
	mov	cl, byte ptr [rbp]
	inc	rbp
	mov	rbp, rbp
	mov	byte ptr [rdx], cl
	inc	rdx
	cmp	r13, rbp
	lea	rdi, [rdi]
	jne	.label_200
.label_248:
	add	r14, rax
	jmp	.label_208
.label_1474:
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	r15, [rbx + 1]
	lea	rbp, [rbx + r10]
	mov	r12, rbx
	cmp	r10, 2
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r10
	mov	r13, r15
	lea	rsi, [rsi]
	jl	.label_210
	nop	
.label_239:
	nop	
	mov	bl, byte ptr [r13]
	mov	rbp, rbp
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	nop	
	call	memchr
	test	rax, rax
	je	.label_210
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	lea	rdi, [rdi]
	movzx	ecx, bl
	mov	rsp, rsp
	cmp	ecx, 0x3f
	ja	.label_237
	and	rax, r14
	je	.label_237
	mov	byte ptr [r15], bl
	mov	rbp, rbp
	inc	r15
.label_237:
	nop	
	inc	r13
	cmp	r13, rbp
	lea	rdi, [rdi]
	jb	.label_239
.label_210:
	cmp	r13, rbp
	jae	.label_228
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rax, rdi
	sub	rax, r13
	mov	rsp, rsp
	mov	rsi, r12
	add	rax, rsi
	lea	rdi, [rdi]
	cmp	rax, 0x1f
	jbe	.label_247
	mov	rsp, rsp
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_247
	nop	
	lea	rdx, [rsi + rdi - 1]
	cmp	r15, rdx
	mov	rdx, qword ptr [rsp]
	mov	rbp, rbp
	ja	.label_260
	lea	rsi, [rsi]
	dec	rdi
	mov	rsp, rsp
	sub	rdi, r13
	add	rdi, rsi
	add	rdi, r15
	lea	rdi, [rdi]
	cmp	r13, rdi
	ja	.label_260
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	jmp	.label_105
.label_1475:
	lea	r14, [rbx + 1]
	lea	r13, [rbx + r10]
	mov	qword ptr [rsp], rbx
	nop	
	cmp	r10, 2
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r10
	jl	.label_275
	mov	r12, rcx
	nop	
	mov	rbp, r14
	nop	word ptr cs:[rax + rax]
.label_303:
	mov	bl, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	lea	rdi, [rdi]
	mov	edx, 8
	call	memchr
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_292
	lea	rsi, [rsi]
	mov	eax, 1
	mov	cl, bl
	lea	rdi, [rdi]
	shl	rax, cl
	movzx	ecx, bl
	cmp	ecx, 0x3f
	lea	rsi, [rsi]
	ja	.label_297
	and	rax, r12
	lea	rsi, [rsi]
	je	.label_297
	nop	
	mov	byte ptr [r14], bl
	inc	r14
.label_297:
	inc	rbp
	cmp	rbp, r13
	jb	.label_303
	mov	rbp, rbp
	jmp	.label_292
.label_1476:
	mov	rax, qword ptr [r9 + 8]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	lea	r15, [rbx + 1]
	mov	rsp, rsp
	lea	rbp, [rbx + r10]
	mov	r12, rbx
	cmp	r10, 2
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r10
	mov	r13, r15
	jl	.label_209
	nop	dword ptr [rax + rax]
.label_345:
	lea	rdi, [rdi]
	mov	bl, byte ptr [r13]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	rsp, rsp
	mov	edx, 8
	mov	rbp, rbp
	call	memchr
	test	rax, rax
	nop	
	je	.label_209
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, bl
	shl	rax, cl
	nop	
	movzx	ecx, bl
	mov	rbp, rbp
	cmp	ecx, 0x3f
	nop	
	ja	.label_217
	mov	rbp, rbp
	and	rax, r14
	nop	
	je	.label_217
	nop	
	mov	byte ptr [r15], bl
	inc	r15
.label_217:
	lea	rdi, [rdi]
	inc	r13
	mov	rbp, rbp
	cmp	r13, rbp
	jb	.label_345
.label_209:
	cmp	r13, rbp
	mov	rsp, rsp
	jae	.label_228
	nop	
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rax, rdi
	sub	rax, r13
	mov	rbp, rbp
	mov	rsi, r12
	mov	rbp, rbp
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_92
	mov	rsp, rsp
	mov	r8, rax
	mov	rsp, rsp
	and	r8, 0xffffffffffffffe0
	je	.label_92
	mov	rsp, rsp
	lea	rdx, [rsi + rdi - 1]
	lea	rdi, [rdi]
	cmp	r15, rdx
	mov	rdx, qword ptr [rsp]
	lea	rsi, [rsi]
	ja	.label_103
	lea	rsi, [rsi]
	dec	rdi
	mov	rsp, rsp
	sub	rdi, r13
	mov	rbp, rbp
	add	rdi, rsi
	lea	rsi, [rsi]
	add	rdi, r15
	cmp	r13, rdi
	ja	.label_103
	mov	rdi, r15
	lea	rdi, [rdi]
	jmp	.label_118
.label_228:
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp]
	mov	rbp, rbp
	jmp	.label_121
.label_1477:
	nop	
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	lea	r14, [rbx + 1]
	lea	rdi, [rdi]
	lea	r13, [rbx + r10]
	mov	r15, rbx
	mov	rsp, rsp
	cmp	r10, 2
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r10
	nop	
	mov	rbp, r14
	nop	
	jl	.label_126
	nop	word ptr cs:[rax + rax]
.label_160:
	lea	rsi, [rsi]
	mov	bl, byte ptr [rbp]
	lea	rdi, [rdi]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_126
	lea	rdi, [rdi]
	mov	eax, 1
	mov	cl, bl
	lea	rdi, [rdi]
	shl	rax, cl
	movzx	ecx, bl
	cmp	ecx, 0x3f
	ja	.label_153
	and	rax, r12
	lea	rsi, [rsi]
	je	.label_153
	mov	byte ptr [r14], bl
	mov	rbp, rbp
	inc	r14
.label_153:
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, r13
	jb	.label_160
.label_126:
	mov	rbp, rbp
	cmp	rbp, r13
	lea	rsi, [rsi]
	jae	.label_163
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	rax, rdi
	sub	rax, rbp
	add	rax, r15
	cmp	rax, 0x1f
	jbe	.label_172
	nop	
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_172
	lea	rdx, [r15 + rdi - 1]
	mov	rbp, rbp
	cmp	r14, rdx
	mov	rdx, qword ptr [rsp]
	lea	rsi, [rsi]
	ja	.label_179
	mov	rbp, rbp
	dec	rdi
	sub	rdi, rbp
	add	rdi, r15
	add	rdi, r14
	mov	rbp, rbp
	cmp	rbp, rdi
	mov	rbp, rbp
	ja	.label_179
	mov	rdi, r14
	jmp	.label_125
.label_319:
	mov	rax, qword ptr [r9 + 0x48]
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	jne	.label_192
	mov	rax, qword ptr [r9 + 8]
.label_192:
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	lea	r15, [rbx + 1]
	mov	rsp, rsp
	lea	rbp, [rbx + r10]
	lea	rdi, [rdi]
	mov	r12, rbx
	lea	rsi, [rsi]
	cmp	r10, 2
	mov	qword ptr [rsp + 0x10], r10
	mov	rbp, rbp
	mov	r13, r15
	mov	rbp, rbp
	jl	.label_196
	nop	word ptr cs:[rax + rax]
.label_234:
	mov	bl, byte ptr [r13]
	mov	rbp, rbp
	movsx	esi, bl
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_196
	mov	eax, 1
	mov	cl, bl
	mov	rbp, rbp
	shl	rax, cl
	lea	rsi, [rsi]
	movzx	ecx, bl
	cmp	ecx, 0x3f
	ja	.label_224
	mov	rsp, rsp
	and	rax, r14
	je	.label_224
	mov	rbp, rbp
	mov	byte ptr [r15], bl
	lea	rsi, [rsi]
	inc	r15
.label_224:
	inc	r13
	lea	rdi, [rdi]
	cmp	r13, rbp
	jb	.label_234
.label_196:
	cmp	r13, rbp
	jae	.label_238
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rax, rdi
	sub	rax, r13
	mov	rsp, rsp
	mov	rsi, r12
	add	rax, rsi
	cmp	rax, 0x1f
	mov	rsp, rsp
	jbe	.label_240
	mov	rcx, rax
	lea	rsi, [rsi]
	and	rcx, 0xffffffffffffffe0
	je	.label_240
	lea	rdi, [rdi]
	lea	rdx, [rsi + rdi - 1]
	cmp	r15, rdx
	nop	
	ja	.label_251
	dec	rdi
	lea	rsi, [rsi]
	sub	rdi, r13
	add	rdi, rsi
	lea	rsi, [rsi]
	add	rdi, r15
	mov	rsp, rsp
	cmp	r13, rdi
	ja	.label_251
.label_240:
	nop	
	mov	rdx, r15
	nop	word ptr cs:[rax + rax]
.label_124:
	lea	rsi, [rsi]
	mov	cl, byte ptr [r13]
	inc	r13
	mov	rbp, rbp
	mov	byte ptr [rdx], cl
	lea	rdi, [rdi]
	inc	rdx
	lea	rdi, [rdi]
	cmp	rbp, r13
	jne	.label_124
.label_311:
	add	r15, rax
	lea	rdi, [rdi]
	jmp	.label_276
.label_302:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp]
.label_208:
	mov	rsp, rsp
	mov	byte ptr [r14 + 2], 0
	mov	rbp, rbp
	mov	word ptr [r14], 0x786c
	jmp	.label_281
.label_275:
	nop	
	mov	rbp, r14
.label_292:
	cmp	rbp, r13
	jae	.label_285
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rax, rdi
	sub	rax, rbp
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp]
	add	rax, rsi
	lea	rdi, [rdi]
	cmp	rax, 0x1f
	nop	
	jbe	.label_287
	mov	rcx, rax
	and	rcx, 0xffffffffffffffe0
	je	.label_287
	lea	rsi, [rsi]
	lea	rdx, [rsi + rdi - 1]
	cmp	r14, rdx
	lea	rsi, [rsi]
	ja	.label_298
	dec	rdi
	sub	rdi, rbp
	nop	
	add	rdi, rsi
	add	rdi, r14
	cmp	rbp, rdi
	ja	.label_298
.label_287:
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	word ptr [rax + rax]
.label_249:
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp]
	lea	rdi, [rdi]
	inc	rbp
	mov	byte ptr [rdx], cl
	mov	rsp, rsp
	inc	rdx
	cmp	r13, rbp
	lea	rsi, [rsi]
	jne	.label_249
.label_206:
	lea	rdi, [rdi]
	add	r14, rax
	nop	
	jmp	.label_315
.label_163:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp]
	nop	
	jmp	.label_317
.label_285:
	mov	rsi, qword ptr [rsp]
.label_315:
	mov	word ptr [r14], 0x73
.label_281:
	mov	edi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, r15
	lea	rdi, [rdi]
	call	__printf_chk
	lea	rsi, [rsi]
	jmp	.label_109
.label_326:
	cmp	r8, 0x65735542
	jle	.label_331
	mov	rbp, rbp
	mov	eax, 0x858458f5
	cmp	r8, rax
	jle	.label_184
	lea	rsi, [rsi]
	mov	eax, 0xc97e8167
	lea	rsi, [rsi]
	cmp	r8, rax
	lea	rdi, [rdi]
	jg	.label_340
	mov	rbp, rbp
	mov	eax, 0xaad7aae9
	lea	rsi, [rsi]
	cmp	r8, rax
	jg	.label_348
	mov	eax, 0x958458f5
	cmp	r8, rax
	jg	.label_355
	mov	rbp, rbp
	mov	eax, 0x858458f6
	mov	rsp, rsp
	cmp	r8, rax
	lea	rsi, [rsi]
	je	.label_85
	mov	eax, 0x9123683e
	lea	rsi, [rsi]
	cmp	r8, rax
	mov	rsp, rsp
	jne	.label_97
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.84
	jmp	.label_86
.label_238:
	mov	rsi, r12
.label_276:
	mov	byte ptr [r15 + 2], 0
	mov	word ptr [r15], 0x756c
	mov	edi, 1
	xor	eax, eax
	mov	rdx, qword ptr [rsp]
	call	__printf_chk
	jmp	.label_109
.label_294:
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp]
	nop	word ptr cs:[rax + rax]
.label_123:
	mov	rsp, rsp
	mov	cl, byte ptr [r14]
	lea	rsi, [rsi]
	inc	r14
	lea	rdi, [rdi]
	mov	byte ptr [rdi], cl
	inc	rdi
	lea	rdi, [rdi]
	cmp	rbp, r14
	lea	rdi, [rdi]
	jne	.label_123
	jmp	.label_107
.label_159:
	mov	rdi, r15
	mov	rdx, qword ptr [rsp]
	nop	dword ptr [rax + rax]
.label_137:
	mov	cl, byte ptr [r14]
	inc	r14
	mov	byte ptr [rdi], cl
	mov	rbp, rbp
	inc	rdi
	lea	rdi, [rdi]
	cmp	rbp, r14
	mov	rbp, rbp
	jne	.label_137
	mov	rbp, rbp
	jmp	.label_107
.label_230:
	mov	rdi, r15
	mov	rdx, qword ptr [rsp]
	nop	word ptr cs:[rax + rax]
.label_152:
	mov	cl, byte ptr [r13]
	lea	rdi, [rdi]
	inc	r13
	nop	
	mov	byte ptr [rdi], cl
	lea	rdi, [rdi]
	inc	rdi
	mov	rsp, rsp
	cmp	rbp, r13
	mov	rbp, rbp
	jne	.label_152
	lea	rdi, [rdi]
	jmp	.label_111
.label_299:
	mov	rdi, r15
	mov	rdx, qword ptr [rsp]
	nop	dword ptr [rax]
.label_157:
	mov	cl, byte ptr [r14]
	inc	r14
	lea	rdi, [rdi]
	mov	byte ptr [rdi], cl
	mov	rsp, rsp
	inc	rdi
	nop	
	cmp	rbp, r14
	jne	.label_157
	jmp	.label_107
.label_104:
	mov	rdi, r15
	mov	rdx, qword ptr [rsp]
.label_131:
	mov	cl, byte ptr [r14]
	inc	r14
	mov	byte ptr [rdi], cl
	inc	rdi
	cmp	rbp, r14
	lea	rsi, [rsi]
	jne	.label_131
.label_107:
	mov	rsp, rsp
	add	r15, rax
.label_133:
	mov	rbp, rbp
	mov	byte ptr [r15 + 2], 0
	mov	word ptr [r15], 0x646c
	jmp	.label_174
.label_247:
	mov	rdi, r15
	mov	rdx, qword ptr [rsp]
	nop	word ptr cs:[rax + rax]
.label_105:
	mov	rbp, rbp
	mov	cl, byte ptr [r13]
	inc	r13
	mov	byte ptr [rdi], cl
	lea	rdi, [rdi]
	inc	rdi
	cmp	rbp, r13
	nop	
	jne	.label_105
	nop	
	jmp	.label_111
.label_92:
	nop	
	mov	rdi, r15
	mov	rdx, qword ptr [rsp]
	nop	word ptr cs:[rax + rax]
.label_118:
	lea	rsi, [rsi]
	mov	cl, byte ptr [r13]
	inc	r13
	nop	
	mov	byte ptr [rdi], cl
	inc	rdi
	cmp	rbp, r13
	jne	.label_118
.label_111:
	add	r15, rax
.label_121:
	mov	rbp, rbp
	mov	byte ptr [r15 + 2], 0
	mov	word ptr [r15], 0x756c
	jmp	.label_174
.label_172:
	mov	rdi, r14
	mov	rdx, qword ptr [rsp]
	nop	word ptr cs:[rax + rax]
.label_125:
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp]
	mov	rsp, rsp
	inc	rbp
	mov	rsp, rsp
	mov	byte ptr [rdi], cl
	inc	rdi
	lea	rsi, [rsi]
	cmp	r13, rbp
	jne	.label_125
.label_181:
	add	r14, rax
.label_317:
	mov	rbp, rbp
	mov	byte ptr [r14 + 2], 0
	nop	
	mov	word ptr [r14], 0x786c
	mov	rsp, rsp
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r15
	mov	rsp, rsp
	call	__printf_chk
	jmp	.label_109
.label_333:
	cmp	r8, 0x13111a7
	jg	.label_231
	lea	rdi, [rdi]
	cmp	r8, 0x1021993
	jg	.label_236
	cmp	r8, 0x27e0ea
	lea	rsi, [rsi]
	jg	.label_177
	nop	
	cmp	r8, 0xf15e
	mov	rsp, rsp
	jg	.label_243
	cmp	r8, 0xef51
	je	.label_227
	cmp	r8, 0xef53
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.105
	jmp	.label_86
.label_331:
	lea	rdi, [rdi]
	cmp	r8, 0x541900ff
	jg	.label_258
	cmp	r8, 0x47504652
	jle	.label_263
	cmp	r8, 0x5346414e
	jg	.label_323
	cmp	r8, 0x52654972
	jg	.label_269
	mov	rsp, rsp
	cmp	r8, 0x47504653
	lea	rsi, [rsi]
	je	.label_272
	cmp	r8, 0x50495045
	lea	rdi, [rdi]
	jne	.label_97
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.149
	jmp	.label_86
.label_338:
	nop	
	cmp	r8, 0x1cd0
	mov	rsp, rsp
	jle	.label_284
	cmp	r8, 0x3fff
	lea	rdi, [rdi]
	jg	.label_205
	cmp	r8, 0x2477
	jg	.label_290
	cmp	r8, 0x1cd1
	je	.label_295
	cmp	r8, 0x2468
	lea	rsi, [rsi]
	jne	.label_97
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.134
	jmp	.label_86
.label_184:
	cmp	r8, 0x73636672
	jle	.label_309
	cmp	r8, 0x7461636e
	jg	.label_330
	lea	rsi, [rsi]
	cmp	r8, 0x73727278
	nop	
	jg	.label_308
	nop	
	cmp	r8, 0x73636673
	mov	rsp, rsp
	je	.label_346
	lea	rdi, [rdi]
	cmp	r8, 0x73717368
	mov	rbp, rbp
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.168
	jmp	.label_86
.label_258:
	cmp	r8, 0x6165676b
	jle	.label_176
	mov	rbp, rbp
	cmp	r8, 0x62656571
	lea	rsi, [rsi]
	jg	.label_328
	cmp	r8, 0x62646575
	jg	.label_334
	lea	rsi, [rsi]
	cmp	r8, 0x6165676c
	je	.label_261
	cmp	r8, 0x61756673
	lea	rdi, [rdi]
	jne	.label_97
	nop	
	mov	eax, OFFSET FLAT:.str.76
	mov	rbp, rbp
	jmp	.label_86
.label_231:
	mov	rsp, rsp
	cmp	r8, 0x15013345
	mov	rsp, rsp
	jg	.label_353
	cmp	r8, 0xbad1de9
	jle	.label_84
	lea	rdi, [rdi]
	cmp	r8, 0x11307853
	jg	.label_254
	lea	rdi, [rdi]
	cmp	r8, 0xbad1dea
	mov	rbp, rbp
	je	.label_140
	mov	rbp, rbp
	cmp	r8, 0xbd00bd0
	jne	.label_97
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.130
	lea	rdi, [rdi]
	jmp	.label_86
.label_304:
	lea	rbx, [rax - 0x20]
	lea	rdi, [rdi]
	mov	ecx, ebx
	lea	rsi, [rsi]
	shr	ecx, 5
	mov	rsp, rsp
	inc	ecx
	xor	edi, edi
	nop	
	test	cl, 3
	lea	rdi, [rdi]
	je	.label_115
	lea	rdi, [rdi]
	lea	ecx, [rax - 0x20]
	shr	ecx, 5
	mov	rsp, rsp
	inc	ecx
	and	ecx, 3
	neg	rcx
	lea	rsi, [rsi]
	xor	edi, edi
.label_132:
	movups	xmm0, xmmword ptr [r14 + rdi]
	movups	xmm1, xmmword ptr [r14 + rdi + 0x10]
	mov	rbp, rbp
	movups	xmmword ptr [r15 + rdi], xmm0
	movups	xmmword ptr [r15 + rdi + 0x10], xmm1
	lea	rsi, [rsi]
	add	rdi, 0x20
	inc	rcx
	jne	.label_132
.label_115:
	mov	rsp, rsp
	cmp	rbx, 0x60
	lea	rdi, [rdi]
	jb	.label_139
	mov	rcx, r8
	sub	rcx, rdi
	lea	rbx, [r14 + rdi + 0x70]
	lea	rdi, [r15 + rdi + 0x70]
.label_143:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbx - 0x60]
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x70], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	nop	
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rbx]
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x10], xmm0
	nop	
	movups	xmmword ptr [rdi], xmm1
	add	rbx, 0x80
	add	rdi, 0x80
	mov	rsp, rsp
	add	rcx, -0x80
	mov	rsp, rsp
	jne	.label_143
.label_139:
	cmp	rax, r8
	mov	rsp, rsp
	je	.label_107
	mov	rbp, rbp
	lea	rdi, [r15 + r8]
	mov	rsp, rsp
	add	r14, r8
	jmp	.label_123
.label_173:
	lea	rbx, [rax - 0x20]
	mov	rsp, rsp
	mov	ecx, ebx
	mov	rsp, rsp
	shr	ecx, 5
	lea	rsi, [rsi]
	inc	ecx
	xor	edi, edi
	test	cl, 3
	je	.label_183
	nop	
	lea	ecx, [rax - 0x20]
	shr	ecx, 5
	inc	ecx
	mov	rbp, rbp
	and	ecx, 3
	lea	rsi, [rsi]
	neg	rcx
	xor	edi, edi
.label_193:
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [r14 + rdi]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [r14 + rdi + 0x10]
	movups	xmmword ptr [r15 + rdi], xmm0
	movups	xmmword ptr [r15 + rdi + 0x10], xmm1
	nop	
	add	rdi, 0x20
	inc	rcx
	mov	rsp, rsp
	jne	.label_193
.label_183:
	cmp	rbx, 0x60
	mov	rsp, rsp
	jb	.label_226
	mov	rsp, rsp
	mov	rcx, r8
	sub	rcx, rdi
	nop	
	lea	rbx, [r14 + rdi + 0x70]
	lea	rsi, [rsi]
	lea	rdi, [r15 + rdi + 0x70]
.label_90:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x50]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbx - 0x40]
	nop	
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rbx]
	movups	xmmword ptr [rdi - 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi], xmm1
	lea	rsi, [rsi]
	add	rbx, 0x80
	mov	rbp, rbp
	add	rdi, 0x80
	add	rcx, -0x80
	jne	.label_90
.label_226:
	lea	rsi, [rsi]
	cmp	rax, r8
	mov	rsp, rsp
	je	.label_107
	nop	
	lea	rdi, [r15 + r8]
	nop	
	add	r14, r8
	jmp	.label_137
.label_212:
	mov	rbp, rbp
	lea	rbx, [rax - 0x20]
	mov	ecx, ebx
	shr	ecx, 5
	mov	rbp, rbp
	inc	ecx
	xor	edi, edi
	test	cl, 3
	je	.label_246
	lea	rsi, [rsi]
	lea	ecx, [rax - 0x20]
	shr	ecx, 5
	mov	rbp, rbp
	inc	ecx
	and	ecx, 3
	neg	rcx
	xor	edi, edi
.label_257:
	movups	xmm0, xmmword ptr [r13 + rdi]
	movups	xmm1, xmmword ptr [r13 + rdi + 0x10]
	mov	rsp, rsp
	movups	xmmword ptr [r15 + rdi], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [r15 + rdi + 0x10], xmm1
	mov	rbp, rbp
	add	rdi, 0x20
	mov	rbp, rbp
	inc	rcx
	mov	rbp, rbp
	jne	.label_257
.label_246:
	lea	rsi, [rsi]
	cmp	rbx, 0x60
	jb	.label_270
	mov	rcx, r8
	lea	rsi, [rsi]
	sub	rcx, rdi
	mov	rbp, rbp
	lea	rbx, [r13 + rdi + 0x70]
	mov	rsp, rsp
	lea	rdi, [r15 + rdi + 0x70]
.label_280:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x40], xmm1
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbx - 0x10]
	movups	xmm1, xmmword ptr [rbx]
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi], xmm1
	add	rbx, 0x80
	add	rdi, 0x80
	mov	rsp, rsp
	add	rcx, -0x80
	jne	.label_280
.label_270:
	cmp	rax, r8
	je	.label_111
	lea	rdi, [r15 + r8]
	mov	rbp, rbp
	add	r13, r8
	jmp	.label_152
.label_312:
	mov	rsp, rsp
	lea	rbx, [rax - 0x20]
	mov	ecx, ebx
	shr	ecx, 5
	inc	ecx
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	test	cl, 3
	je	.label_307
	lea	rsi, [rsi]
	lea	ecx, [rax - 0x20]
	lea	rsi, [rsi]
	shr	ecx, 5
	nop	
	inc	ecx
	lea	rdi, [rdi]
	and	ecx, 3
	neg	rcx
	xor	edi, edi
.label_336:
	movups	xmm0, xmmword ptr [r14 + rdi]
	movups	xmm1, xmmword ptr [r14 + rdi + 0x10]
	movups	xmmword ptr [r15 + rdi], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [r15 + rdi + 0x10], xmm1
	lea	rdi, [rdi]
	add	rdi, 0x20
	mov	rsp, rsp
	inc	rcx
	jne	.label_336
.label_307:
	nop	
	cmp	rbx, 0x60
	jb	.label_332
	mov	rcx, r8
	mov	rsp, rsp
	sub	rcx, rdi
	lea	rdi, [rdi]
	lea	rbx, [r14 + rdi + 0x70]
	lea	rdi, [r15 + rdi + 0x70]
.label_273:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	nop	
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x50]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbx - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x40], xmm1
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rbx - 0x30]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbx - 0x10]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbx]
	nop	
	movups	xmmword ptr [rdi - 0x10], xmm0
	movups	xmmword ptr [rdi], xmm1
	lea	rdi, [rdi]
	add	rbx, 0x80
	add	rdi, 0x80
	add	rcx, -0x80
	jne	.label_273
.label_332:
	cmp	rax, r8
	nop	
	je	.label_107
	mov	rsp, rsp
	lea	rdi, [r15 + r8]
	add	r14, r8
	mov	rbp, rbp
	jmp	.label_157
.label_116:
	mov	rbp, rbp
	lea	rbx, [rax - 0x20]
	mov	ecx, ebx
	shr	ecx, 5
	lea	rdi, [rdi]
	inc	ecx
	mov	rbp, rbp
	xor	edi, edi
	test	cl, 3
	lea	rdi, [rdi]
	je	.label_113
	lea	ecx, [rax - 0x20]
	shr	ecx, 5
	lea	rsi, [rsi]
	inc	ecx
	lea	rsi, [rsi]
	and	ecx, 3
	neg	rcx
	mov	rsp, rsp
	xor	edi, edi
.label_130:
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [r14 + rdi]
	movups	xmm1, xmmword ptr [r14 + rdi + 0x10]
	movups	xmmword ptr [r15 + rdi], xmm0
	movups	xmmword ptr [r15 + rdi + 0x10], xmm1
	add	rdi, 0x20
	lea	rsi, [rsi]
	inc	rcx
	mov	rsp, rsp
	jne	.label_130
.label_113:
	nop	
	cmp	rbx, 0x60
	jb	.label_96
	mov	rcx, r8
	nop	
	sub	rcx, rdi
	mov	rsp, rsp
	lea	rbx, [r14 + rdi + 0x70]
	mov	rbp, rbp
	lea	rdi, [r15 + rdi + 0x70]
.label_151:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x60], xmm1
	nop	
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x50], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	nop	
	movups	xmm1, xmmword ptr [rbx - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbx]
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x10], xmm0
	movups	xmmword ptr [rdi], xmm1
	lea	rdi, [rdi]
	add	rbx, 0x80
	add	rdi, 0x80
	add	rcx, -0x80
	nop	
	jne	.label_151
.label_96:
	lea	rsi, [rsi]
	cmp	rax, r8
	lea	rdi, [rdi]
	je	.label_107
	lea	rsi, [rsi]
	lea	rdi, [r15 + r8]
	lea	rdi, [rdi]
	add	r14, r8
	nop	
	jmp	.label_131
.label_188:
	lea	rdi, [rdi]
	lea	rbx, [rax - 0x20]
	lea	rsi, [rsi]
	mov	edx, ebx
	shr	edx, 5
	inc	edx
	xor	edi, edi
	test	dl, 3
	je	.label_186
	lea	rdi, [rdi]
	lea	edx, [rax - 0x20]
	mov	rsp, rsp
	shr	edx, 5
	inc	edx
	mov	rbp, rbp
	and	edx, 3
	lea	rsi, [rsi]
	neg	rdx
	mov	rsp, rsp
	xor	edi, edi
.label_191:
	movups	xmm0, xmmword ptr [rbp + rdi]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	mov	rbp, rbp
	movups	xmmword ptr [r14 + rdi], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [r14 + rdi + 0x10], xmm1
	add	rdi, 0x20
	mov	rbp, rbp
	inc	rdx
	mov	rsp, rsp
	jne	.label_191
.label_186:
	nop	
	cmp	rbx, 0x60
	mov	rbp, rbp
	jb	.label_211
	mov	rdx, rcx
	sub	rdx, rdi
	lea	rbx, [rbp + rdi + 0x70]
	mov	rbp, rbp
	lea	rdi, [r14 + rdi + 0x70]
.label_286:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x60], xmm1
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rbx - 0x50]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x50], xmm0
	nop	
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbx - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	nop	
	movups	xmm0, xmmword ptr [rbx - 0x10]
	nop	
	movups	xmm1, xmmword ptr [rbx]
	movups	xmmword ptr [rdi - 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi], xmm1
	add	rbx, 0x80
	add	rdi, 0x80
	mov	rbp, rbp
	add	rdx, -0x80
	jne	.label_286
.label_211:
	lea	rsi, [rsi]
	cmp	rax, rcx
	je	.label_248
	mov	rbp, rbp
	lea	rdx, [r14 + rcx]
	add	rbp, rcx
	jmp	.label_200
.label_260:
	lea	rbx, [rax - 0x20]
	lea	rdi, [rdi]
	mov	ecx, ebx
	nop	
	shr	ecx, 5
	inc	ecx
	lea	rdi, [rdi]
	xor	edi, edi
	test	cl, 3
	mov	rbp, rbp
	je	.label_253
	lea	ecx, [rax - 0x20]
	shr	ecx, 5
	inc	ecx
	and	ecx, 3
	neg	rcx
	xor	edi, edi
.label_94:
	nop	
	movups	xmm0, xmmword ptr [r13 + rdi]
	movups	xmm1, xmmword ptr [r13 + rdi + 0x10]
	movups	xmmword ptr [r15 + rdi], xmm0
	movups	xmmword ptr [r15 + rdi + 0x10], xmm1
	add	rdi, 0x20
	lea	rdi, [rdi]
	inc	rcx
	mov	rsp, rsp
	jne	.label_94
.label_253:
	mov	rbp, rbp
	cmp	rbx, 0x60
	jb	.label_277
	mov	rcx, r8
	sub	rcx, rdi
	nop	
	lea	rbx, [r13 + rdi + 0x70]
	lea	rdi, [r15 + rdi + 0x70]
.label_165:
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbx - 0x70]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x30], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	nop	
	movups	xmm1, xmmword ptr [rbx]
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x10], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rdi], xmm1
	mov	rbp, rbp
	add	rbx, 0x80
	add	rdi, 0x80
	add	rcx, -0x80
	jne	.label_165
.label_277:
	mov	rbp, rbp
	cmp	rax, r8
	je	.label_111
	mov	rsp, rsp
	lea	rdi, [r15 + r8]
	add	r13, r8
	mov	rsp, rsp
	jmp	.label_105
.label_103:
	mov	rbp, rbp
	lea	rbx, [rax - 0x20]
	lea	rdi, [rdi]
	mov	ecx, ebx
	shr	ecx, 5
	mov	rbp, rbp
	inc	ecx
	xor	edi, edi
	test	cl, 3
	je	.label_314
	mov	rbp, rbp
	lea	ecx, [rax - 0x20]
	nop	
	shr	ecx, 5
	mov	rbp, rbp
	inc	ecx
	mov	rbp, rbp
	and	ecx, 3
	neg	rcx
	lea	rsi, [rsi]
	xor	edi, edi
.label_327:
	nop	
	movups	xmm0, xmmword ptr [r13 + rdi]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [r13 + rdi + 0x10]
	mov	rsp, rsp
	movups	xmmword ptr [r15 + rdi], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r15 + rdi + 0x10], xmm1
	add	rdi, 0x20
	inc	rcx
	jne	.label_327
.label_314:
	cmp	rbx, 0x60
	jb	.label_339
	lea	rsi, [rsi]
	mov	rcx, r8
	sub	rcx, rdi
	lea	rbx, [r13 + rdi + 0x70]
	lea	rdi, [r15 + rdi + 0x70]
.label_349:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x70], xmm0
	nop	
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rbx]
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x10], xmm0
	movups	xmmword ptr [rdi], xmm1
	mov	rsp, rsp
	add	rbx, 0x80
	nop	
	add	rdi, 0x80
	lea	rsi, [rsi]
	add	rcx, -0x80
	lea	rdi, [rdi]
	jne	.label_349
.label_339:
	lea	rdi, [rdi]
	cmp	rax, r8
	je	.label_111
	nop	
	lea	rdi, [r15 + r8]
	add	r13, r8
	jmp	.label_118
.label_179:
	lea	rbx, [rax - 0x20]
	mov	rsp, rsp
	mov	ecx, ebx
	lea	rdi, [rdi]
	shr	ecx, 5
	inc	ecx
	xor	edi, edi
	test	cl, 3
	lea	rsi, [rsi]
	je	.label_244
	lea	rdi, [rdi]
	lea	ecx, [rax - 0x20]
	shr	ecx, 5
	mov	rbp, rbp
	inc	ecx
	lea	rsi, [rsi]
	and	ecx, 3
	nop	
	neg	rcx
	xor	edi, edi
.label_142:
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbp + rdi]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	movups	xmmword ptr [r14 + rdi], xmm0
	movups	xmmword ptr [r14 + rdi + 0x10], xmm1
	add	rdi, 0x20
	lea	rsi, [rsi]
	inc	rcx
	nop	
	jne	.label_142
.label_244:
	lea	rsi, [rsi]
	cmp	rbx, 0x60
	jb	.label_146
	lea	rsi, [rsi]
	mov	rcx, r8
	mov	rbp, rbp
	sub	rcx, rdi
	lea	rbx, [rbp + rdi + 0x70]
	lea	rdi, [r14 + rdi + 0x70]
.label_155:
	nop	
	movups	xmm0, xmmword ptr [rbx - 0x70]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x50]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rbx - 0x30]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rbx - 0x20]
	nop	
	movups	xmmword ptr [rdi - 0x30], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rbx]
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x10], xmm0
	movups	xmmword ptr [rdi], xmm1
	add	rbx, 0x80
	add	rdi, 0x80
	add	rcx, -0x80
	mov	rsp, rsp
	jne	.label_155
.label_146:
	nop	
	cmp	rax, r8
	je	.label_181
	mov	rsp, rsp
	lea	rdi, [r14 + r8]
	nop	
	add	rbp, r8
	lea	rsi, [rsi]
	jmp	.label_125
.label_298:
	lea	rsi, [rsi]
	lea	rbx, [rax - 0x20]
	lea	rsi, [rsi]
	mov	edx, ebx
	nop	
	shr	edx, 5
	nop	
	inc	edx
	xor	edi, edi
	nop	
	test	dl, 3
	je	.label_112
	lea	edx, [rax - 0x20]
	mov	rsp, rsp
	shr	edx, 5
	lea	rdi, [rdi]
	inc	edx
	and	edx, 3
	lea	rdi, [rdi]
	neg	rdx
	xor	edi, edi
.label_197:
	movups	xmm0, xmmword ptr [rbp + rdi]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	movups	xmmword ptr [r14 + rdi], xmm0
	movups	xmmword ptr [r14 + rdi + 0x10], xmm1
	add	rdi, 0x20
	inc	rdx
	jne	.label_197
.label_112:
	nop	
	cmp	rbx, 0x60
	jb	.label_207
	nop	
	mov	rdx, rcx
	mov	rsp, rsp
	sub	rdx, rdi
	mov	rsp, rsp
	lea	rbx, [rbp + rdi + 0x70]
	lea	rdi, [r14 + rdi + 0x70]
.label_216:
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbx - 0x70]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x50]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbx - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	nop	
	movups	xmmword ptr [rdi - 0x40], xmm1
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbx - 0x30]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rbx - 0x10]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbx]
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x10], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rdi], xmm1
	add	rbx, 0x80
	add	rdi, 0x80
	add	rdx, -0x80
	jne	.label_216
.label_207:
	nop	
	cmp	rax, rcx
	je	.label_206
	lea	rdx, [r14 + rcx]
	add	rbp, rcx
	jmp	.label_249
.label_106:
	nop	
	mov	esi, 0x3f
	mov	rbp, rbp
	call	__overflow
	mov	rsp, rsp
	jmp	.label_109
.label_251:
	mov	rbp, rbp
	lea	rbx, [rax - 0x20]
	lea	rdi, [rdi]
	mov	edx, ebx
	shr	edx, 5
	lea	rsi, [rsi]
	inc	edx
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	test	dl, 3
	mov	rbp, rbp
	je	.label_255
	lea	rsi, [rsi]
	lea	edx, [rax - 0x20]
	lea	rdi, [rdi]
	shr	edx, 5
	inc	edx
	and	edx, 3
	nop	
	neg	rdx
	xor	edi, edi
.label_102:
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [r13 + rdi]
	movups	xmm1, xmmword ptr [r13 + rdi + 0x10]
	mov	rsp, rsp
	movups	xmmword ptr [r15 + rdi], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [r15 + rdi + 0x10], xmm1
	nop	
	add	rdi, 0x20
	lea	rdi, [rdi]
	inc	rdx
	lea	rsi, [rsi]
	jne	.label_102
.label_255:
	cmp	rbx, 0x60
	nop	
	jb	.label_283
	mov	rdx, rcx
	mov	rsp, rsp
	sub	rdx, rdi
	lea	rbx, [r13 + rdi + 0x70]
	mov	rsp, rsp
	lea	rdi, [r15 + rdi + 0x70]
.label_87:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x50]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	movups	xmm1, xmmword ptr [rbx]
	movups	xmmword ptr [rdi - 0x10], xmm0
	movups	xmmword ptr [rdi], xmm1
	lea	rsi, [rsi]
	add	rbx, 0x80
	nop	
	add	rdi, 0x80
	add	rdx, -0x80
	nop	
	jne	.label_87
.label_283:
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_311
	lea	rdx, [r15 + rcx]
	add	r13, rcx
	jmp	.label_124
.label_343:
	lea	rdi, [rdi]
	cmp	r8, 0x9fa0
	jg	.label_232
	cmp	r8, 0x965f
	nop	
	jg	.label_321
	mov	rsp, rsp
	cmp	r8, 0x7275
	je	.label_325
	cmp	r8, 0x72b6
	mov	rbp, rbp
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.126
	nop	
	jmp	.label_86
.label_340:
	mov	rbp, rbp
	mov	eax, 0xf97cff8b
	cmp	r8, rax
	jg	.label_337
	mov	eax, 0xde5e81e3
	mov	rbp, rbp
	cmp	r8, rax
	mov	rsp, rsp
	jg	.label_344
	mov	eax, 0xc97e8168
	cmp	r8, rax
	mov	rbp, rbp
	je	.label_306
	mov	eax, 0xcafe4a11
	cmp	r8, rax
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.82
	jmp	.label_86
.label_236:
	cmp	r8, 0x12fd16c
	jg	.label_93
	lea	rdi, [rdi]
	cmp	r8, 0x1021994
	mov	rsp, rsp
	je	.label_100
	cmp	r8, 0x1021997
	nop	
	je	.label_161
	cmp	r8, 0x1161970
	lea	rdi, [rdi]
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.113
	jmp	.label_86
.label_263:
	mov	rsp, rsp
	cmp	r8, 0x42494e4c
	lea	rsi, [rsi]
	jle	.label_117
	lea	rsi, [rsi]
	cmp	r8, 0x453dcd27
	mov	rbp, rbp
	jg	.label_122
	mov	rsp, rsp
	cmp	r8, 0x42494e4d
	mov	rsp, rsp
	je	.label_127
	mov	rsp, rsp
	cmp	r8, 0x43415d53
	mov	rbp, rbp
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.163
	lea	rdi, [rdi]
	jmp	.label_86
.label_284:
	mov	rbp, rbp
	cmp	r8, 0x1372
	jle	.label_138
	cmp	r8, 0x137e
	jg	.label_145
	cmp	r8, 0x1373
	mov	rsp, rsp
	je	.label_149
	lea	rdi, [rdi]
	cmp	r8, 0x137d
	jne	.label_97
	nop	
	mov	eax, OFFSET FLAT:.str.104
	jmp	.label_86
.label_309:
	nop	
	cmp	r8, 0x68191121
	lea	rsi, [rsi]
	jle	.label_158
	cmp	r8, 0x6e667363
	jg	.label_162
	cmp	r8, 0x68191122
	lea	rsi, [rsi]
	je	.label_166
	cmp	r8, 0x6b414653
	lea	rdi, [rdi]
	jne	.label_97
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.128
	jmp	.label_86
.label_176:
	cmp	r8, 0x58465341
	jle	.label_318
	cmp	r8, 0x5dca2df4
	jg	.label_341
	cmp	r8, 0x58465342
	mov	rbp, rbp
	je	.label_185
	mov	eax, OFFSET FLAT:.str.70
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	cmp	r8, 0x5a3c69f0
	lea	rsi, [rsi]
	je	.label_128
	jmp	.label_97
.label_353:
	cmp	r8, 0x1badfacd
	jle	.label_195
	cmp	r8, 0x28cd3d44
	jg	.label_199
	cmp	r8, 0x1badface
	mov	rsp, rsp
	je	.label_203
	nop	
	cmp	r8, 0x24051905
	lea	rsi, [rsi]
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.174
	jmp	.label_86
.label_350:
	lea	rdi, [rdi]
	cmp	r8, 0x5df4
	jg	.label_215
	cmp	r8, 0x517b
	lea	rdi, [rdi]
	je	.label_219
	mov	rbp, rbp
	cmp	r8, 0x564c
	jne	.label_97
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.139
	jmp	.label_86
.label_348:
	lea	rsi, [rsi]
	mov	eax, 0xbacbacbb
	cmp	r8, rax
	lea	rsi, [rsi]
	jg	.label_229
	mov	eax, 0xaad7aaea
	lea	rdi, [rdi]
	cmp	r8, rax
	lea	rsi, [rsi]
	je	.label_235
	mov	rsp, rsp
	mov	eax, 0xabba1974
	cmp	r8, rax
	lea	rdi, [rdi]
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.183
	jmp	.label_86
.label_177:
	cmp	r8, 0xc0ffed
	nop	
	jg	.label_250
	cmp	r8, 0x27e0eb
	mov	rbp, rbp
	je	.label_252
	lea	rsi, [rsi]
	cmp	r8, OFFSET FLAT:label_274
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.101
	mov	rsp, rsp
	jmp	.label_86
.label_323:
	cmp	r8, 0x5346544d
	jg	.label_264
	cmp	r8, 0x5346414f
	nop	
	je	.label_266
	mov	rbp, rbp
	cmp	r8, 0x53464846
	nop	
	jne	.label_97
	nop	
	mov	eax, OFFSET FLAT:.str.182
	jmp	.label_86
.label_205:
	lea	rsi, [rsi]
	cmp	r8, 0x4005
	jg	.label_279
	cmp	r8, 0x4000
	lea	rsi, [rsi]
	je	.label_154
	cmp	r8, 0x4004
	je	.label_154
	lea	rdi, [rdi]
	jmp	.label_97
.label_330:
	mov	rbp, rbp
	cmp	r8, 0x794c762f
	lea	rdi, [rdi]
	jg	.label_289
	lea	rdi, [rdi]
	cmp	r8, 0x7461636f
	nop	
	je	.label_296
	cmp	r8, 0x74726163
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.173
	lea	rsi, [rsi]
	jmp	.label_86
.label_328:
	mov	rbp, rbp
	cmp	r8, 0x6462671f
	jg	.label_313
	nop	
	cmp	r8, 0x62656572
	je	.label_305
	cmp	r8, 0x63677270
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.88
	jmp	.label_86
.label_232:
	cmp	r8, 0xadf4
	jg	.label_316
	cmp	r8, 0x9fa1
	je	.label_320
	nop	
	cmp	r8, 0x9fa2
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.177
	jmp	.label_86
.label_337:
	mov	eax, 0xfe534d41
	lea	rsi, [rsi]
	cmp	r8, rax
	lea	rdi, [rdi]
	jg	.label_329
	mov	rsp, rsp
	mov	eax, 0xf97cff8c
	cmp	r8, rax
	je	.label_220
	mov	eax, 0xf995e849
	mov	rsp, rsp
	cmp	r8, rax
	jne	.label_97
	nop	
	mov	eax, OFFSET FLAT:.str.119
	mov	rsp, rsp
	jmp	.label_86
.label_93:
	nop	
	lea	rax, [r8 - 0x12ff7b4]
	cmp	rax, 3
	ja	.label_352
	mov	rsp, rsp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_356]]
.label_1555:
	nop	
	mov	eax, OFFSET FLAT:.str.184
	jmp	.label_86
.label_84:
	cmp	r8, 0x13111a8
	je	.label_114
	mov	rbp, rbp
	cmp	r8, 0x7655821
	nop	
	je	.label_101
	lea	rdi, [rdi]
	cmp	r8, 0x9041934
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.75
	jmp	.label_86
.label_117:
	nop	
	cmp	r8, 0x2fc12fc1
	je	.label_110
	cmp	r8, 0x3153464a
	lea	rdi, [rdi]
	je	.label_222
	lea	rdi, [rdi]
	cmp	r8, 0x42465331
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.79
	mov	rsp, rsp
	jmp	.label_86
.label_138:
	lea	rdi, [rdi]
	cmp	r8, 0x2f
	je	.label_129
	mov	rbp, rbp
	cmp	r8, 0x187
	lea	rsi, [rsi]
	je	.label_301
	nop	
	cmp	r8, 0x7c0
	jne	.label_97
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.125
	jmp	.label_86
.label_158:
	lea	rsi, [rsi]
	cmp	r8, 0x65735543
	mov	rsp, rsp
	je	.label_144
	mov	rbp, rbp
	cmp	r8, 0x65735546
	mov	rsp, rsp
	je	.label_150
	cmp	r8, 0x67596969
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	jmp	.label_86
.label_318:
	mov	rbp, rbp
	cmp	r8, 0x54190100
	lea	rdi, [rdi]
	je	.label_99
	cmp	r8, 0x565a4653
	je	.label_164
	cmp	r8, 0x58295829
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.188
	jmp	.label_86
.label_195:
	cmp	r8, 0x15013346
	mov	rbp, rbp
	je	.label_171
	cmp	r8, 0x19800202
	je	.label_324
	nop	
	cmp	r8, 0x19830326
	jne	.label_97
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.109
	mov	rsp, rsp
	jmp	.label_86
.label_354:
	lea	rsi, [rsi]
	cmp	r8, 0x4d44
	mov	rsp, rsp
	je	.label_187
	cmp	r8, 0x4d5a
	nop	
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.136
	mov	rsp, rsp
	jmp	.label_86
.label_355:
	mov	eax, 0x958458f6
	cmp	r8, rax
	lea	rdi, [rdi]
	je	.label_201
	mov	rsp, rsp
	mov	eax, 0xa501fcf5
	cmp	r8, rax
	mov	rsp, rsp
	jne	.label_97
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.180
	jmp	.label_86
.label_243:
	cmp	r8, 0xf15f
	lea	rdi, [rdi]
	je	.label_214
	mov	rsp, rsp
	cmp	r8, 0x11954
	jne	.label_97
.label_99:
	mov	eax, OFFSET FLAT:.str.176
	jmp	.label_86
.label_269:
	cmp	r8, 0x52654973
	je	.label_342
	cmp	r8, 0x5346314d
	lea	rsi, [rsi]
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.131
	jmp	.label_86
.label_290:
	cmp	r8, 0x2478
	je	.label_233
	mov	rsp, rsp
	cmp	r8, 0x3434
	nop	
	jne	.label_97
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.142
	jmp	.label_86
.label_308:
	mov	rbp, rbp
	cmp	r8, 0x73727279
	je	.label_245
	cmp	r8, 0x73757245
	nop	
	jne	.label_97
	nop	
	mov	eax, OFFSET FLAT:.str.90
	jmp	.label_86
.label_334:
	mov	rbp, rbp
	cmp	r8, 0x62646576
	je	.label_271
	mov	rbp, rbp
	cmp	r8, 0x62656570
	mov	rbp, rbp
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.92
	jmp	.label_86
.label_254:
	lea	rdi, [rdi]
	cmp	r8, 0x11307854
	lea	rdi, [rdi]
	je	.label_267
	lea	rdi, [rdi]
	cmp	r8, 0x13661366
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.78
	lea	rdi, [rdi]
	jmp	.label_86
.label_321:
	mov	rbp, rbp
	cmp	r8, 0x9660
	lea	rdi, [rdi]
	je	.label_154
	cmp	r8, 0x9fa0
	jne	.label_97
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.6_0
	jmp	.label_86
.label_154:
	mov	eax, OFFSET FLAT:.str.124
	lea	rsi, [rsi]
	jmp	.label_86
.label_344:
	mov	rbp, rbp
	mov	eax, 0xde5e81e4
	cmp	r8, rax
	je	.label_291
	mov	eax, 0xf2f52010
	cmp	r8, rax
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.107
	jmp	.label_86
.label_122:
	cmp	r8, 0x453dcd28
	je	.label_278
	lea	rsi, [rsi]
	cmp	r8, 0x45584653
	jne	.label_97
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.102
	mov	rbp, rbp
	jmp	.label_86
.label_145:
	cmp	r8, 0x137f
	je	.label_310
	mov	rbp, rbp
	cmp	r8, 0x138f
	nop	
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.133
	lea	rdi, [rdi]
	jmp	.label_86
.label_162:
	lea	rdi, [rdi]
	cmp	r8, 0x6e667364
	mov	rbp, rbp
	je	.label_169
	mov	rbp, rbp
	cmp	r8, 0x6e736673
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.143
	nop	
	jmp	.label_86
.label_341:
	cmp	r8, 0x5dca2df5
	je	.label_335
	lea	rdi, [rdi]
	cmp	r8, 0x61636673
	mov	rsp, rsp
	jne	.label_97
	nop	
	mov	eax, OFFSET FLAT:.str.71
	lea	rsi, [rsi]
	jmp	.label_86
.label_199:
	cmp	r8, 0x28cd3d45
	je	.label_351
	mov	rbp, rbp
	cmp	r8, 0x2bad1dea
	lea	rsi, [rsi]
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.123
	nop	
	jmp	.label_86
.label_215:
	cmp	r8, 0x5df5
	mov	rbp, rbp
	je	.label_95
	lea	rsi, [rsi]
	cmp	r8, 0x6969
	mov	rbp, rbp
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.140
	mov	rsp, rsp
	jmp	.label_86
.label_229:
	mov	eax, 0xbacbacbc
	cmp	r8, rax
	je	.label_108
	lea	rsi, [rsi]
	mov	eax, 0xbeefdead
	mov	rbp, rbp
	cmp	r8, rax
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.166
	mov	rbp, rbp
	jmp	.label_86
.label_250:
	lea	rsi, [rsi]
	cmp	r8, 0xc0ffee
	je	.label_262
	cmp	r8, 0xc36400
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.86
	lea	rsi, [rsi]
	jmp	.label_86
.label_264:
	cmp	r8, 0x5346544e
	je	.label_134
	lea	rsi, [rsi]
	cmp	r8, 0x534f434b
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.167
	lea	rsi, [rsi]
	jmp	.label_86
.label_279:
	cmp	r8, 0x4006
	je	.label_147
	mov	rbp, rbp
	cmp	r8, 0x4244
	jne	.label_97
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.115
	mov	rbp, rbp
	jmp	.label_86
.label_289:
	cmp	r8, 0x794c7630
	nop	
	je	.label_156
	mov	rbp, rbp
	cmp	r8, 0x7c7c6673
	mov	rsp, rsp
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.150
	lea	rsi, [rsi]
	jmp	.label_86
.label_313:
	mov	rbp, rbp
	cmp	r8, 0x64626720
	nop	
	je	.label_268
	mov	rbp, rbp
	cmp	r8, 0x64646178
	jne	.label_97
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.95
	jmp	.label_86
.label_316:
	cmp	r8, 0xadf5
	je	.label_182
	cmp	r8, 0xadff
	mov	rbp, rbp
	jne	.label_97
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.73
	lea	rsi, [rsi]
	jmp	.label_86
.label_329:
	mov	eax, 0xfe534d42
	mov	rbp, rbp
	cmp	r8, rax
	lea	rsi, [rsi]
	je	.label_148
	mov	rbp, rbp
	mov	eax, 0xff534d42
	cmp	r8, rax
	lea	rdi, [rdi]
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.19_0
	mov	rsp, rsp
	jmp	.label_86
.label_100:
	mov	eax, OFFSET FLAT:.str.172
	lea	rsi, [rsi]
	jmp	.label_86
.label_161:
	mov	eax, OFFSET FLAT:.str.178
	jmp	.label_86
.label_202:
	mov	eax, OFFSET FLAT:.str.116
	lea	rsi, [rsi]
	jmp	.label_86
.label_85:
	mov	eax, OFFSET FLAT:.str.155
	jmp	.label_86
.label_227:
	mov	eax, OFFSET FLAT:.str.106
	nop	
	jmp	.label_86
.label_272:
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.114
	jmp	.label_86
.label_295:
	mov	eax, OFFSET FLAT:.str.9_0
	nop	
	jmp	.label_86
.label_346:
	mov	eax, OFFSET FLAT:.str.161
	nop	
	jmp	.label_86
.label_261:
	mov	eax, OFFSET FLAT:.str.152
	jmp	.label_86
.label_140:
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.112
	jmp	.label_86
.label_325:
	mov	eax, OFFSET FLAT:.str.158
	mov	rsp, rsp
	jmp	.label_86
.label_306:
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.129
	mov	rbp, rbp
	jmp	.label_86
.label_127:
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.83
	jmp	.label_86
.label_149:
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.14_0
	jmp	.label_86
.label_166:
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.154
	mov	rbp, rbp
	jmp	.label_86
.label_185:
	mov	eax, OFFSET FLAT:.str.185
	jmp	.label_86
.label_203:
	mov	eax, OFFSET FLAT:.str.81
	mov	rsp, rsp
	jmp	.label_86
.label_219:
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.164
	jmp	.label_86
.label_235:
	mov	eax, OFFSET FLAT:.str.148
	mov	rsp, rsp
	jmp	.label_86
.label_252:
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.87
	jmp	.label_86
.label_266:
	mov	eax, OFFSET FLAT:.str.74
	mov	rbp, rbp
	jmp	.label_86
.label_296:
	mov	eax, OFFSET FLAT:.str.146
	nop	
	jmp	.label_86
.label_305:
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.13_0
	lea	rdi, [rdi]
	jmp	.label_86
.label_320:
	nop	
	mov	eax, OFFSET FLAT:.str.145
	mov	rsp, rsp
	jmp	.label_86
.label_220:
	mov	eax, OFFSET FLAT:.str.162
	jmp	.label_86
.label_114:
	mov	eax, OFFSET FLAT:.str.122
	mov	rsp, rsp
	jmp	.label_86
.label_101:
	mov	eax, OFFSET FLAT:.str.156
	jmp	.label_86
.label_110:
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.187
	lea	rdi, [rdi]
	jmp	.label_86
.label_222:
	mov	eax, OFFSET FLAT:.str.127
	nop	
	jmp	.label_86
.label_129:
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.153
	lea	rdi, [rdi]
	jmp	.label_86
.label_301:
	mov	eax, OFFSET FLAT:.str.5_1
	mov	rsp, rsp
	jmp	.label_86
.label_144:
	mov	eax, OFFSET FLAT:.str.10_0
	jmp	.label_86
.label_150:
	mov	eax, OFFSET FLAT:.str.110
	jmp	.label_86
.label_164:
	mov	eax, OFFSET FLAT:.str.181
	jmp	.label_86
.label_171:
	mov	eax, OFFSET FLAT:.str.175
	jmp	.label_86
.label_324:
	mov	eax, OFFSET FLAT:.str.11_0
	nop	
	jmp	.label_86
.label_187:
	mov	eax, OFFSET FLAT:.str.138
	lea	rdi, [rdi]
	jmp	.label_86
.label_201:
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.120
	jmp	.label_86
.label_214:
	nop	
	mov	eax, OFFSET FLAT:.str.99
	jmp	.label_86
.label_342:
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.157
	jmp	.label_86
.label_233:
	mov	eax, OFFSET FLAT:.str.135
	lea	rsi, [rsi]
	jmp	.label_86
.label_245:
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.85
	mov	rbp, rbp
	jmp	.label_86
.label_271:
	mov	eax, OFFSET FLAT:.str.80
	mov	rbp, rbp
	jmp	.label_86
.label_267:
	mov	eax, OFFSET FLAT:.str.121
	lea	rdi, [rdi]
	jmp	.label_86
.label_291:
	mov	eax, OFFSET FLAT:.str.100
	lea	rsi, [rsi]
	jmp	.label_86
.label_278:
	mov	eax, OFFSET FLAT:.str.94
	jmp	.label_86
.label_310:
	mov	eax, OFFSET FLAT:.str.132
	mov	rsp, rsp
	jmp	.label_86
.label_169:
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.141
	nop	
	jmp	.label_86
.label_335:
	nop	
	mov	eax, OFFSET FLAT:.str.160
	lea	rdi, [rdi]
	jmp	.label_86
.label_351:
	mov	eax, OFFSET FLAT:.str.93
	jmp	.label_86
.label_95:
	mov	eax, OFFSET FLAT:.str.103
	lea	rdi, [rdi]
	jmp	.label_86
.label_108:
	mov	eax, OFFSET FLAT:.str.179
	lea	rsi, [rsi]
	jmp	.label_86
.label_262:
	mov	eax, OFFSET FLAT:.str.118
	jmp	.label_86
.label_134:
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.144
	jmp	.label_86
.label_147:
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.108
	lea	rdi, [rdi]
	jmp	.label_86
.label_156:
	mov	eax, OFFSET FLAT:.str.147
	lea	rdi, [rdi]
	jmp	.label_86
.label_268:
	nop	
	mov	eax, OFFSET FLAT:.str.8_0
	jmp	.label_86
.label_182:
	mov	eax, OFFSET FLAT:.str.72
	nop	
	jmp	.label_86
.label_148:
	nop	
	mov	eax, OFFSET FLAT:.str.165
	jmp	.label_86
.label_352:
	lea	rsi, [rsi]
	cmp	r8, 0x12fd16d
	mov	rbp, rbp
	jne	.label_97
	mov	eax, OFFSET FLAT:.str.186
	jmp	.label_86
.label_97:
	mov	eax, OFFSET FLAT:human_fstype.buf
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	mov	edi, OFFSET FLAT:human_fstype.buf
	nop	
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, 0x1d
	mov	ecx, OFFSET FLAT:.str.189
	xor	eax, eax
	mov	rbp, rbp
	mov	rbp, r10
	lea	rdi, [rdi]
	call	__sprintf_chk
	lea	rsi, [rsi]
	mov	r10, rbp
	jmp	.label_128
.label_1556:
	mov	eax, OFFSET FLAT:.str.171
	jmp	.label_86
.label_1557:
	mov	eax, OFFSET FLAT:.str.170
	lea	rsi, [rsi]
	jmp	.label_86
.label_1558:
	mov	eax, OFFSET FLAT:.str.91
.label_86:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
.label_128:
	nop	
	lea	r14, [rbx + 1]
	mov	rsp, rsp
	lea	r13, [rbx + r10]
	mov	r12, rbx
	nop	
	cmp	r10, 2
	lea	rsi, [rsi]
	mov	r15, r10
	lea	rsi, [rsi]
	mov	rbp, r14
	nop	
	jl	.label_175
	nop	word ptr cs:[rax + rax]
.label_135:
	mov	bl, byte ptr [rbp]
	movsx	esi, bl
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	lea	rsi, [rsi]
	call	memchr
	test	rax, rax
	nop	
	je	.label_175
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, bl
	shl	rax, cl
	movzx	ecx, bl
	cmp	ecx, 0x3f
	ja	.label_119
	nop	
	movabs	rcx, 0x200000000001
	and	rax, rcx
	nop	
	je	.label_119
	nop	
	mov	byte ptr [r14], bl
	nop	
	inc	r14
.label_119:
	inc	rbp
	cmp	rbp, r13
	lea	rdi, [rdi]
	jb	.label_135
.label_175:
	lea	rsi, [rsi]
	cmp	rbp, r13
	lea	rsi, [rsi]
	jae	.label_189
	mov	rax, r15
	lea	rsi, [rsi]
	sub	rax, rbp
	mov	rsi, r12
	add	rax, rsi
	cmp	rax, 0x1f
	mov	rsp, rsp
	jbe	.label_194
	nop	
	mov	r8, rax
	mov	rsp, rsp
	and	r8, 0xffffffffffffffe0
	je	.label_194
	lea	rdx, [rsi + r15 - 1]
	lea	rdi, [rdi]
	cmp	r14, rdx
	ja	.label_204
	dec	r15
	sub	r15, rbp
	lea	rdi, [rdi]
	add	r15, rsi
	mov	rsp, rsp
	add	r15, r14
	mov	rbp, rbp
	cmp	rbp, r15
	ja	.label_204
.label_194:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x10]
.label_218:
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdi], cl
	inc	rdi
	lea	rsi, [rsi]
	cmp	r13, rbp
	jne	.label_218
.label_300:
	add	r14, rax
	jmp	.label_223
.label_189:
	lea	rsi, [rsi]
	mov	rsi, r12
	nop	
	mov	rdx, qword ptr [rsp + 0x10]
.label_223:
	mov	word ptr [r14], 0x73
.label_174:
	mov	edi, 1
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	call	__printf_chk
.label_109:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	add	rsp, 0x18
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_204:
	nop	
	lea	rbx, [rax - 0x20]
	mov	edx, ebx
	nop	
	shr	edx, 5
	inc	edx
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	test	dl, 3
	je	.label_242
	nop	
	lea	edx, [rax - 0x20]
	lea	rsi, [rsi]
	shr	edx, 5
	inc	edx
	and	edx, 3
	mov	rsp, rsp
	neg	rdx
	mov	rsp, rsp
	xor	edi, edi
.label_256:
	nop	
	movups	xmm0, xmmword ptr [rbp + rdi]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	movups	xmmword ptr [r14 + rdi], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r14 + rdi + 0x10], xmm1
	add	rdi, 0x20
	nop	
	inc	rdx
	jne	.label_256
.label_242:
	cmp	rbx, 0x60
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	jb	.label_265
	mov	rcx, r8
	sub	rcx, rdi
	lea	rdi, [rdi]
	lea	rbx, [rbp + rdi + 0x70]
	lea	rdi, [r14 + rdi + 0x70]
.label_198:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x60], xmm1
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbx - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rbx - 0x10]
	movups	xmm1, xmmword ptr [rbx]
	movups	xmmword ptr [rdi - 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi], xmm1
	add	rbx, 0x80
	mov	rbp, rbp
	add	rdi, 0x80
	add	rcx, -0x80
	jne	.label_198
.label_265:
	cmp	rax, r8
	je	.label_300
	lea	rdi, [r14 + r8]
	nop	
	add	rbp, r8
	lea	rsi, [rsi]
	jmp	.label_218
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f50

	.globl print_stat
	.type print_stat, @function
print_stat:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, r9
	mov	r12, r8
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rbp, rbp
	add	edx, -0x41
	cmp	edx, 0x39
	ja	.label_655
	movabs	r15, 0x1208000000001
	movabs	r14, 0x1200800000001
	mov	rbp, rbp
	movabs	rax, 0x200000000001
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_679]]
.label_1564:
	nop	
	mov	r12, rax
	mov	esi, OFFSET FLAT:human_access.modebuf
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rbp
	call	filemodestring
	nop	
	mov	byte ptr [byte ptr [rip + label_565]],  0
	lea	r14, [rbp + 1]
	mov	rbp, rbp
	lea	r15, [rbp + rbx]
	nop	
	cmp	rbx, 2
	mov	r13, rbx
	mov	rbp, rbp
	mov	rbp, r14
	nop	
	jl	.label_361
	nop	
.label_375:
	mov	rsp, rsp
	mov	bl, byte ptr [rbp]
	mov	rsp, rsp
	movsx	esi, bl
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:printf_flags
	mov	rbp, rbp
	mov	edx, 8
	lea	rdi, [rdi]
	call	memchr
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_361
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, bl
	lea	rsi, [rsi]
	shl	rax, cl
	mov	rbp, rbp
	movzx	ecx, bl
	lea	rdi, [rdi]
	cmp	ecx, 0x3f
	lea	rsi, [rsi]
	ja	.label_394
	and	rax, r12
	je	.label_394
	mov	byte ptr [r14], bl
	inc	r14
.label_394:
	inc	rbp
	cmp	rbp, r15
	jb	.label_375
.label_361:
	cmp	rbp, r15
	mov	rsp, rsp
	jae	.label_377
	mov	rax, r13
	nop	
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	mov	rbp, rbp
	jbe	.label_380
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	and	rcx, 0xffffffffffffffe0
	je	.label_380
	lea	rdx, [rsi + r13 - 1]
	nop	
	cmp	r14, rdx
	ja	.label_388
	nop	
	dec	r13
	mov	rsp, rsp
	sub	r13, rbp
	add	r13, rsi
	add	r13, r14
	lea	rsi, [rsi]
	cmp	rbp, r13
	lea	rsi, [rsi]
	ja	.label_388
.label_380:
	mov	rdx, r14
	nop	word ptr [rax + rax]
.label_396:
	mov	rsp, rsp
	mov	cl, byte ptr [rbp]
	inc	rbp
	nop	
	mov	byte ptr [rdx], cl
	lea	rsi, [rsi]
	inc	rdx
	mov	rbp, rbp
	cmp	r15, rbp
	jne	.label_396
.label_568:
	add	r14, rax
	jmp	.label_402
.label_1565:
	lea	r14, [rbp + 1]
	mov	rbp, rbp
	lea	r12, [rbp + rbx]
	mov	r13, rbp
	cmp	rbx, 2
	mov	qword ptr [rsp + 0x18], rbx
	lea	rdi, [rdi]
	mov	rbp, r14
	mov	rbp, rbp
	jl	.label_406
	nop	word ptr cs:[rax + rax]
.label_425:
	mov	rbp, rbp
	mov	bl, byte ptr [rbp]
	mov	rsp, rsp
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	mov	rbp, rbp
	call	memchr
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_406
	mov	eax, 1
	nop	
	mov	cl, bl
	shl	rax, cl
	mov	rsp, rsp
	movzx	ecx, bl
	nop	
	cmp	ecx, 0x3f
	mov	rsp, rsp
	ja	.label_420
	mov	rsp, rsp
	and	rax, r15
	je	.label_420
	mov	byte ptr [r14], bl
	lea	rdi, [rdi]
	inc	r14
.label_420:
	nop	
	inc	rbp
	cmp	rbp, r12
	jb	.label_425
.label_406:
	lea	rdi, [rdi]
	cmp	rbp, r12
	jae	.label_429
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rax, rdi
	sub	rax, rbp
	mov	rbp, rbp
	mov	rsi, r13
	add	rax, rsi
	mov	rsp, rsp
	cmp	rax, 0x1f
	mov	rsp, rsp
	jbe	.label_432
	lea	rdi, [rdi]
	mov	rcx, rax
	and	rcx, 0xffffffffffffffe0
	je	.label_432
	mov	rbp, rbp
	lea	rdx, [rsi + rdi - 1]
	cmp	r14, rdx
	lea	rdi, [rdi]
	ja	.label_438
	dec	rdi
	sub	rdi, rbp
	nop	
	add	rdi, rsi
	add	rdi, r14
	cmp	rbp, rdi
	ja	.label_438
.label_432:
	mov	rdx, r14
	nop	word ptr cs:[rax + rax]
.label_448:
	mov	cl, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdx], cl
	inc	rdx
	mov	rsp, rsp
	cmp	r12, rbp
	lea	rdi, [rdi]
	jne	.label_448
.label_612:
	lea	rsi, [rsi]
	add	r14, rax
	jmp	.label_455
.label_1566:
	mov	r14, rbp
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.208
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbp, rbx
	mov	rbx, rax
	nop	
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 0x5f
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
	mov	rsp, rsp
	mov	word ptr [r14 + rbp], 0x73
	nop	
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.198
	xor	eax, eax
	mov	rsi, r14
	call	__printf_chk
	mov	rsp, rsp
	mov	bl, 1
	mov	rsp, rsp
	jmp	.label_415
.label_1567:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13]
	mov	qword ptr [rsp + 0x20], rax
	nop	
	lea	r12, [rbp + 1]
	lea	r13, [rbp + rbx]
	mov	rbp, rbp
	mov	r15, rbp
	lea	rdi, [rdi]
	cmp	rbx, 2
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbp, r12
	nop	
	jl	.label_482
	nop	dword ptr [rax + rax]
.label_503:
	mov	rbp, rbp
	mov	bl, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	lea	rdi, [rdi]
	mov	edx, 8
	mov	rbp, rbp
	call	memchr
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_482
	mov	eax, 1
	mov	cl, bl
	mov	rbp, rbp
	shl	rax, cl
	movzx	ecx, bl
	mov	rsp, rsp
	cmp	ecx, 0x3f
	ja	.label_496
	and	rax, r14
	lea	rdi, [rdi]
	je	.label_496
	mov	rsp, rsp
	mov	byte ptr [r12], bl
	lea	rsi, [rsi]
	inc	r12
.label_496:
	inc	rbp
	cmp	rbp, r13
	jb	.label_503
.label_482:
	lea	rsi, [rsi]
	cmp	rbp, r13
	nop	
	jae	.label_506
	mov	rdi, qword ptr [rsp + 0x18]
	nop	
	mov	rax, rdi
	sub	rax, rbp
	mov	rsi, r15
	mov	rbp, rbp
	add	rax, rsi
	nop	
	cmp	rax, 0x1f
	mov	rsp, rsp
	jbe	.label_497
	mov	rbp, rbp
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	lea	rdi, [rdi]
	je	.label_497
	nop	
	lea	rdx, [rsi + rdi - 1]
	nop	
	cmp	r12, rdx
	nop	
	mov	rdx, qword ptr [rsp + 0x20]
	ja	.label_491
	dec	rdi
	sub	rdi, rbp
	add	rdi, rsi
	nop	
	add	rdi, r12
	mov	rbp, rbp
	cmp	rbp, rdi
	mov	rsp, rsp
	ja	.label_491
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rbp, rbp
	jmp	.label_524
.label_655:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	nop	
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_614
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x3f
	jmp	.label_532
.label_1568:
	mov	r14, rax
	mov	rdi, r13
	lea	rdi, [rdi]
	call	file_type
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, rbp
	lea	r15, [rbp + 1]
	lea	rdi, [rdi]
	lea	r12, [rbp + rbx]
	lea	rdi, [rdi]
	mov	r13, rbp
	mov	rbp, rbp
	cmp	rbx, 2
	nop	
	mov	qword ptr [rsp + 0x18], rbx
	lea	rdi, [rdi]
	mov	rbp, r15
	jl	.label_552
	nop	word ptr [rax + rax]
.label_557:
	lea	rsi, [rsi]
	mov	bl, byte ptr [rbp]
	movsx	esi, bl
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:printf_flags
	mov	rsp, rsp
	mov	edx, 8
	nop	
	call	memchr
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_552
	mov	rbp, rbp
	mov	eax, 1
	mov	cl, bl
	mov	rbp, rbp
	shl	rax, cl
	movzx	ecx, bl
	cmp	ecx, 0x3f
	ja	.label_554
	and	rax, r14
	je	.label_554
	lea	rsi, [rsi]
	mov	byte ptr [r15], bl
	mov	rsp, rsp
	inc	r15
.label_554:
	inc	rbp
	nop	
	cmp	rbp, r12
	mov	rbp, rbp
	jb	.label_557
.label_552:
	cmp	rbp, r12
	jae	.label_561
	mov	r14, qword ptr [rsp + 0x18]
	mov	rax, r14
	nop	
	sub	rax, rbp
	lea	rdi, [rdi]
	mov	rsi, r13
	add	rax, rsi
	mov	rbp, rbp
	cmp	rax, 0x1f
	mov	rsp, rsp
	jbe	.label_562
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	mov	rsp, rsp
	je	.label_562
	lea	rdx, [rsi + r14 - 1]
	cmp	r15, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x20]
	ja	.label_543
	dec	r14
	lea	rsi, [rsi]
	sub	r14, rbp
	lea	rsi, [rsi]
	add	r14, rsi
	nop	
	add	r14, r15
	cmp	rbp, r14
	ja	.label_543
	mov	rdi, r15
	jmp	.label_579
.label_1569:
	mov	r12, rax
	nop	
	mov	edi, dword ptr [r13 + 0x20]
	call	getgrgid
	mov	ecx, OFFSET FLAT:.str.196
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_582
	mov	rcx, qword ptr [rax]
.label_582:
	mov	qword ptr [rsp + 0x20], rcx
	lea	rdi, [rdi]
	lea	r14, [rbp + 1]
	lea	r15, [rbp + rbx]
	nop	
	mov	r13, rbp
	mov	rbp, rbp
	cmp	rbx, 2
	mov	qword ptr [rsp + 0x18], rbx
	lea	rsi, [rsi]
	mov	rbp, r14
	jl	.label_587
	nop	dword ptr [rax]
.label_605:
	mov	bl, byte ptr [rbp]
	mov	rsp, rsp
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	nop	
	mov	edx, 8
	mov	rsp, rsp
	call	memchr
	nop	
	test	rax, rax
	je	.label_587
	mov	eax, 1
	mov	cl, bl
	mov	rsp, rsp
	shl	rax, cl
	movzx	ecx, bl
	cmp	ecx, 0x3f
	mov	rbp, rbp
	ja	.label_599
	lea	rsi, [rsi]
	and	rax, r12
	mov	rsp, rsp
	je	.label_599
	mov	byte ptr [r14], bl
	inc	r14
.label_599:
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, r15
	jb	.label_605
.label_587:
	lea	rsi, [rsi]
	cmp	rbp, r15
	jae	.label_398
	mov	r12, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rax, r12
	sub	rax, rbp
	nop	
	mov	rsi, r13
	lea	rdi, [rdi]
	add	rax, rsi
	cmp	rax, 0x1f
	ja	.label_608
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	jmp	.label_467
.label_1570:
	xor	edi, edi
	nop	
	mov	qword ptr [rsp + 0x10], rbp
	call	get_quoting_style
	mov	edi, eax
	mov	rsi, r12
	call	quotearg_style
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	lea	rax, [rbp + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	lea	rdi, [rdi]
	lea	r14, [rbp + rbx]
	lea	rdi, [rdi]
	cmp	rbx, 2
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rbx
	mov	r15, rax
	mov	rbp, rax
	nop	
	jl	.label_620
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	r15, rax
	nop	
	mov	rbp, rax
	nop	dword ptr [rax + rax]
.label_646:
	nop	
	mov	bl, byte ptr [rbp]
	lea	rdi, [rdi]
	movsx	esi, bl
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:printf_flags
	lea	rdi, [rdi]
	mov	edx, 8
	mov	rbp, rbp
	call	memchr
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_620
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	mov	cl, bl
	nop	
	shl	rax, cl
	movzx	ecx, bl
	lea	rsi, [rsi]
	cmp	ecx, 0x3f
	mov	rbp, rbp
	ja	.label_631
	movabs	rcx, 0x200000000001
	nop	
	and	rax, rcx
	lea	rsi, [rsi]
	je	.label_631
	mov	byte ptr [r15], bl
	mov	rsp, rsp
	inc	r15
.label_631:
	nop	
	inc	rbp
	cmp	rbp, r14
	lea	rdi, [rdi]
	jb	.label_646
.label_620:
	cmp	rbp, r14
	mov	rbp, rbp
	jae	.label_649
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	rax, rdi
	lea	rdi, [rdi]
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	add	rax, rsi
	mov	rbp, rbp
	cmp	rax, 0x1f
	nop	
	ja	.label_652
	lea	rdi, [rdi]
	mov	rbx, r15
	mov	rdx, qword ptr [rsp + 8]
	jmp	.label_412
.label_1571:
	nop	
	mov	r12, qword ptr [r13 + 0x28]
	nop	
	movzx	eax, r12b
	nop	
	mov	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	shr	r12, 0xc
	lea	rdi, [rdi]
	and	r12d, 0xffffff00
	mov	rbp, rbp
	lea	r15, [rbp + 1]
	lea	rdi, [rdi]
	lea	r13, [rbp + rbx]
	mov	qword ptr [rsp + 0x10], rbp
	cmp	rbx, 2
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	rbp, r15
	jl	.label_660
	nop	
.label_677:
	lea	rsi, [rsi]
	mov	bl, byte ptr [rbp]
	lea	rdi, [rdi]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	lea	rsi, [rsi]
	call	memchr
	test	rax, rax
	je	.label_660
	nop	
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	movzx	ecx, bl
	lea	rsi, [rsi]
	cmp	ecx, 0x3f
	lea	rsi, [rsi]
	ja	.label_673
	and	rax, r14
	je	.label_673
	mov	byte ptr [r15], bl
	mov	rbp, rbp
	inc	r15
.label_673:
	nop	
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, r13
	jb	.label_677
.label_660:
	add	r12, qword ptr [rsp + 0x20]
	cmp	rbp, r13
	jae	.label_680
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	rax, rdi
	lea	rsi, [rsi]
	sub	rax, rbp
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_683
	mov	rcx, rax
	nop	
	and	rcx, 0xffffffffffffffe0
	je	.label_683
	lea	rsi, [rsi]
	lea	rdx, [rsi + rdi - 1]
	cmp	r15, rdx
	ja	.label_645
	dec	rdi
	mov	rsp, rsp
	sub	rdi, rbp
	lea	rsi, [rsi]
	add	rdi, rsi
	nop	
	add	rdi, r15
	cmp	rbp, rdi
	mov	rsp, rsp
	ja	.label_645
.label_683:
	lea	rdi, [rdi]
	mov	rdx, r15
	nop	word ptr cs:[rax + rax]
.label_357:
	mov	rsp, rsp
	mov	cl, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdx], cl
	inc	rdx
	cmp	r13, rbp
	jne	.label_357
.label_403:
	nop	
	add	r15, rax
	jmp	.label_360
.label_1572:
	mov	r12, rax
	lea	rsi, [rsi]
	mov	edi, dword ptr [r13 + 0x1c]
	call	getpwuid
	nop	
	mov	ecx, OFFSET FLAT:.str.196
	test	rax, rax
	je	.label_369
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax]
.label_369:
	nop	
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	lea	r14, [rbp + 1]
	mov	rsp, rsp
	lea	r15, [rbp + rbx]
	mov	rsp, rsp
	mov	r13, rbp
	cmp	rbx, 2
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	rbp, r14
	lea	rsi, [rsi]
	jl	.label_372
	nop	dword ptr [rax]
.label_395:
	mov	bl, byte ptr [rbp]
	movsx	esi, bl
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:printf_flags
	mov	rsp, rsp
	mov	edx, 8
	call	memchr
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_372
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, bl
	shl	rax, cl
	mov	rbp, rbp
	movzx	ecx, bl
	lea	rdi, [rdi]
	cmp	ecx, 0x3f
	ja	.label_390
	and	rax, r12
	je	.label_390
	lea	rsi, [rsi]
	mov	byte ptr [r14], bl
	mov	rbp, rbp
	inc	r14
.label_390:
	inc	rbp
	cmp	rbp, r15
	jb	.label_395
.label_372:
	cmp	rbp, r15
	mov	rbp, rbp
	jae	.label_398
	mov	r12, qword ptr [rsp + 0x18]
	mov	rax, r12
	lea	rdi, [rdi]
	sub	rax, rbp
	mov	rsi, r13
	add	rax, rsi
	lea	rdi, [rdi]
	cmp	rax, 0x1f
	mov	rsp, rsp
	ja	.label_400
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x20]
	jmp	.label_408
.label_1573:
	mov	rsi, rbx
	mov	rsp, rsp
	xor	ebx, ebx
	nop	
	xor	edx, edx
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rbp, rbp
	call	out_epoch_sec
	mov	rbp, rbp
	jmp	.label_415
.label_1574:
	mov	rdx, qword ptr [r13 + 0x48]
	mov	rcx, qword ptr [r13 + 0x50]
	mov	rsp, rsp
	jmp	.label_418
.label_1575:
	mov	rsp, rsp
	mov	rdx, qword ptr [r13 + 0x58]
	mov	rcx, qword ptr [r13 + 0x60]
	jmp	.label_418
.label_1576:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r13 + 0x68]
	mov	rcx, qword ptr [r13 + 0x70]
.label_418:
	mov	rdi, rbp
	nop	
	mov	rsi, rbx
	mov	rbp, rbp
	call	out_epoch_sec
.label_532:
	nop	
	xor	ebx, ebx
	nop	
	jmp	.label_415
.label_1577:
	mov	eax, dword ptr [r13 + 0x18]
	lea	rsi, [rsi]
	and	eax, 0xfff
	mov	qword ptr [rsp + 0x20], rax
	lea	r15, [rbp + 1]
	lea	r13, [rbp + rbx]
	lea	rdi, [rdi]
	mov	r12, rbp
	cmp	rbx, 2
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	rbp, r15
	jl	.label_427
	nop	word ptr [rax + rax]
.label_450:
	mov	bl, byte ptr [rbp]
	mov	rsp, rsp
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_427
	mov	eax, 1
	mov	cl, bl
	nop	
	shl	rax, cl
	movzx	ecx, bl
	cmp	ecx, 0x3f
	mov	rsp, rsp
	ja	.label_447
	and	rax, r14
	mov	rsp, rsp
	je	.label_447
	mov	byte ptr [r15], bl
	inc	r15
.label_447:
	nop	
	inc	rbp
	cmp	rbp, r13
	mov	rbp, rbp
	jb	.label_450
.label_427:
	lea	rsi, [rsi]
	cmp	rbp, r13
	jae	.label_453
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rax, rdi
	lea	rsi, [rsi]
	sub	rax, rbp
	nop	
	mov	rsi, r12
	mov	rbp, rbp
	add	rax, rsi
	lea	rsi, [rsi]
	cmp	rax, 0x1f
	mov	rsp, rsp
	jbe	.label_456
	lea	rdi, [rdi]
	mov	r8, rax
	mov	rbp, rbp
	and	r8, 0xffffffffffffffe0
	nop	
	je	.label_456
	lea	rdx, [rsi + rdi - 1]
	lea	rsi, [rsi]
	cmp	r15, rdx
	mov	rdx, qword ptr [rsp + 0x20]
	ja	.label_471
	dec	rdi
	lea	rsi, [rsi]
	sub	rdi, rbp
	add	rdi, rsi
	add	rdi, r15
	cmp	rbp, rdi
	ja	.label_471
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	jmp	.label_452
.label_1578:
	mov	rax, qword ptr [r13 + 0x40]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rax
	nop	
	lea	r12, [rbp + 1]
	nop	
	lea	r13, [rbp + rbx]
	mov	r14, rbp
	cmp	rbx, 2
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	rbp, r12
	mov	rsp, rsp
	jl	.label_477
	nop	word ptr cs:[rax + rax]
.label_500:
	mov	bl, byte ptr [rbp]
	lea	rdi, [rdi]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	lea	rdi, [rdi]
	mov	edx, 8
	mov	rsp, rsp
	call	memchr
	nop	
	test	rax, rax
	nop	
	je	.label_477
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rsi, [rsi]
	mov	cl, bl
	shl	rax, cl
	movzx	ecx, bl
	lea	rdi, [rdi]
	cmp	ecx, 0x3f
	ja	.label_494
	and	rax, r15
	je	.label_494
	mov	byte ptr [r12], bl
	inc	r12
.label_494:
	inc	rbp
	cmp	rbp, r13
	mov	rsp, rsp
	jb	.label_500
.label_477:
	mov	rsp, rsp
	cmp	rbp, r13
	nop	
	jae	.label_378
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	rax, rdi
	sub	rax, rbp
	mov	rsi, r14
	mov	rbp, rbp
	add	rax, rsi
	cmp	rax, 0x1f
	lea	rsi, [rsi]
	jbe	.label_504
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_504
	lea	rdx, [rsi + rdi - 1]
	cmp	r12, rdx
	nop	
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	ja	.label_515
	mov	rbp, rbp
	dec	rdi
	sub	rdi, rbp
	mov	rsp, rsp
	add	rdi, rsi
	lea	rdi, [rdi]
	add	rdi, r12
	mov	rbp, rbp
	cmp	rbp, rdi
	lea	rsi, [rsi]
	ja	.label_515
	mov	rdi, r12
	mov	rbp, rbp
	jmp	.label_499
.label_1579:
	mov	rax, qword ptr [r13]
	mov	qword ptr [rsp + 0x20], rax
	lea	r12, [rbp + 1]
	nop	
	lea	r13, [rbp + rbx]
	lea	rsi, [rsi]
	mov	r14, rbp
	mov	rsp, rsp
	cmp	rbx, 2
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbp, r12
	lea	rsi, [rsi]
	jl	.label_523
	nop	dword ptr [rax + rax]
.label_545:
	lea	rsi, [rsi]
	mov	bl, byte ptr [rbp]
	movsx	esi, bl
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_523
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	mov	cl, bl
	nop	
	shl	rax, cl
	movzx	ecx, bl
	cmp	ecx, 0x3f
	lea	rdi, [rdi]
	ja	.label_693
	mov	rbp, rbp
	and	rax, r15
	lea	rdi, [rdi]
	je	.label_693
	mov	rbp, rbp
	mov	byte ptr [r12], bl
	nop	
	inc	r12
.label_693:
	mov	rbp, rbp
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, r13
	lea	rsi, [rsi]
	jb	.label_545
.label_523:
	cmp	rbp, r13
	jae	.label_378
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rax, rdi
	sub	rax, rbp
	mov	rsi, r14
	lea	rdi, [rdi]
	add	rax, rsi
	cmp	rax, 0x1f
	mov	rbp, rbp
	jbe	.label_551
	mov	r8, rax
	mov	rbp, rbp
	and	r8, 0xffffffffffffffe0
	je	.label_551
	mov	rsp, rsp
	lea	rdx, [rsi + rdi - 1]
	cmp	r12, rdx
	nop	
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	ja	.label_558
	mov	rsp, rsp
	dec	rdi
	mov	rbp, rbp
	sub	rdi, rbp
	mov	rbp, rbp
	add	rdi, rsi
	nop	
	add	rdi, r12
	mov	rsp, rsp
	cmp	rbp, rdi
	nop	
	ja	.label_558
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rdi, [rdi]
	jmp	.label_493
.label_1580:
	mov	eax, dword ptr [r13 + 0x18]
	mov	qword ptr [rsp + 0x20], rax
	lea	r12, [rbp + 1]
	lea	r13, [rbp + rbx]
	mov	rbp, rbp
	mov	r15, rbp
	cmp	rbx, 2
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbp, r12
	jl	.label_571
	nop	word ptr cs:[rax + rax]
.label_593:
	mov	bl, byte ptr [rbp]
	nop	
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	nop	
	call	memchr
	mov	rsp, rsp
	test	rax, rax
	je	.label_571
	mov	eax, 1
	mov	cl, bl
	lea	rsi, [rsi]
	shl	rax, cl
	movzx	ecx, bl
	cmp	ecx, 0x3f
	ja	.label_585
	mov	rbp, rbp
	and	rax, r14
	lea	rdi, [rdi]
	je	.label_585
	mov	rbp, rbp
	mov	byte ptr [r12], bl
	lea	rsi, [rsi]
	inc	r12
.label_585:
	inc	rbp
	cmp	rbp, r13
	nop	
	jb	.label_593
.label_571:
	lea	rsi, [rsi]
	cmp	rbp, r13
	jae	.label_506
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rax, rdi
	mov	rsp, rsp
	sub	rax, rbp
	mov	rsi, r15
	mov	rsp, rsp
	add	rax, rsi
	lea	rsi, [rsi]
	cmp	rax, 0x1f
	jbe	.label_386
	lea	rsi, [rsi]
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_386
	lea	rdx, [rsi + rdi - 1]
	lea	rsi, [rsi]
	cmp	r12, rdx
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	ja	.label_604
	dec	rdi
	mov	rbp, rbp
	sub	rdi, rbp
	add	rdi, rsi
	add	rdi, r12
	cmp	rbp, rdi
	mov	rbp, rbp
	ja	.label_604
	mov	rdi, r12
	jmp	.label_589
.label_1581:
	mov	eax, dword ptr [r13 + 0x20]
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	lea	r12, [rbp + 1]
	lea	r13, [rbp + rbx]
	mov	r14, rbp
	cmp	rbx, 2
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbp, r12
	jl	.label_613
	nop	word ptr [rax + rax]
.label_635:
	lea	rdi, [rdi]
	mov	bl, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	rbp, rbp
	mov	edx, 8
	call	memchr
	test	rax, rax
	mov	rsp, rsp
	je	.label_613
	nop	
	mov	eax, 1
	mov	rsp, rsp
	mov	cl, bl
	mov	rbp, rbp
	shl	rax, cl
	movzx	ecx, bl
	mov	rbp, rbp
	cmp	ecx, 0x3f
	ja	.label_627
	mov	rsp, rsp
	and	rax, r15
	lea	rsi, [rsi]
	je	.label_627
	lea	rdi, [rdi]
	mov	byte ptr [r12], bl
	inc	r12
.label_627:
	nop	
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, r13
	jb	.label_635
.label_613:
	nop	
	cmp	rbp, r13
	jae	.label_378
	mov	rdi, qword ptr [rsp + 0x18]
	nop	
	mov	rax, rdi
	sub	rax, rbp
	nop	
	mov	rsi, r14
	add	rax, rsi
	nop	
	cmp	rax, 0x1f
	jbe	.label_636
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	lea	rdi, [rdi]
	je	.label_636
	lea	rdx, [rsi + rdi - 1]
	lea	rdi, [rdi]
	cmp	r12, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x20]
	ja	.label_642
	lea	rsi, [rsi]
	dec	rdi
	nop	
	sub	rdi, rbp
	lea	rsi, [rsi]
	add	rdi, rsi
	add	rdi, r12
	nop	
	cmp	rbp, rdi
	nop	
	ja	.label_642
	mov	rdi, r12
	jmp	.label_628
.label_1582:
	mov	rax, qword ptr [r13 + 0x10]
	nop	
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, rbp
	lea	r12, [rbp + 1]
	lea	r13, [rbp + rbx]
	mov	rbp, rbp
	mov	r14, rbp
	lea	rdi, [rdi]
	cmp	rbx, 2
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbp, r12
	jl	.label_653
	nop	word ptr cs:[rax + rax]
.label_671:
	mov	bl, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	lea	rsi, [rsi]
	mov	edx, 8
	mov	rbp, rbp
	call	memchr
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_653
	nop	
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, bl
	shl	rax, cl
	movzx	ecx, bl
	mov	rbp, rbp
	cmp	ecx, 0x3f
	ja	.label_665
	and	rax, r15
	je	.label_665
	lea	rdi, [rdi]
	mov	byte ptr [r12], bl
	inc	r12
.label_665:
	inc	rbp
	nop	
	cmp	rbp, r13
	mov	rsp, rsp
	jb	.label_671
.label_653:
	lea	rsi, [rsi]
	cmp	rbp, r13
	jae	.label_378
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rax, rdi
	lea	rsi, [rsi]
	sub	rax, rbp
	mov	rsi, r14
	lea	rdi, [rdi]
	add	rax, rsi
	mov	rsp, rsp
	cmp	rax, 0x1f
	jbe	.label_535
	mov	rbp, rbp
	mov	r8, rax
	lea	rsi, [rsi]
	and	r8, 0xffffffffffffffe0
	lea	rsi, [rsi]
	je	.label_535
	mov	rsp, rsp
	lea	rdx, [rsi + rdi - 1]
	cmp	r12, rdx
	nop	
	mov	rdx, qword ptr [rsp + 0x20]
	ja	.label_623
	mov	rsp, rsp
	dec	rdi
	mov	rsp, rsp
	sub	rdi, rbp
	add	rdi, rsi
	add	rdi, r12
	lea	rdi, [rdi]
	cmp	rbp, rdi
	nop	
	ja	.label_623
	mov	rdi, r12
	jmp	.label_662
.label_1583:
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 8]
	nop	
	mov	qword ptr [rsp + 0x20], rax
	lea	r12, [rbp + 1]
	lea	rsi, [rsi]
	lea	r13, [rbp + rbx]
	mov	r14, rbp
	cmp	rbx, 2
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbp, r12
	mov	rsp, rsp
	jl	.label_363
	nop	
.label_376:
	mov	bl, byte ptr [rbp]
	lea	rsi, [rsi]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	mov	rbp, rbp
	call	memchr
	test	rax, rax
	je	.label_363
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	cl, bl
	shl	rax, cl
	mov	rsp, rsp
	movzx	ecx, bl
	cmp	ecx, 0x3f
	nop	
	ja	.label_365
	and	rax, r15
	je	.label_365
	mov	rbp, rbp
	mov	byte ptr [r12], bl
	lea	rsi, [rsi]
	inc	r12
.label_365:
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, r13
	jb	.label_376
.label_363:
	lea	rdi, [rdi]
	cmp	rbp, r13
	jae	.label_378
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rax, rdi
	sub	rax, rbp
	mov	rbp, rbp
	mov	rsi, r14
	mov	rsp, rsp
	add	rax, rsi
	mov	rbp, rbp
	cmp	rax, 0x1f
	jbe	.label_382
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	mov	rbp, rbp
	je	.label_382
	nop	
	lea	rdx, [rsi + rdi - 1]
	nop	
	cmp	r12, rdx
	nop	
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	ja	.label_383
	mov	rsp, rsp
	dec	rdi
	sub	rdi, rbp
	add	rdi, rsi
	lea	rsi, [rsi]
	add	rdi, r12
	mov	rbp, rbp
	cmp	rbp, rdi
	mov	rbp, rbp
	ja	.label_383
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsp, rsp
	jmp	.label_364
.label_1584:
	mov	r14, rbx
	mov	r15, rbp
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + follow_links]]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_405
	lea	rdi, [rdi]
	mov	eax, 0xf000
	and	eax, dword ptr [r13 + 0x18]
	mov	rbp, rbp
	cmp	eax, 0xa000
	mov	rsp, rsp
	je	.label_409
.label_405:
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rdi, [rdi]
	call	canonicalize_file_name
	mov	rbx, rax
	nop	
	test	rbx, rbx
	je	.label_416
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	find_bind_mount
	mov	rsp, rsp
	mov	rbp, rax
	mov	rdi, rbx
	call	free
	xor	ecx, ecx
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_409
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_423
.label_1585:
	nop	
	lea	r14, [rbp + 1]
	lea	r15, [rbp + rbx]
	mov	qword ptr [rsp + 0x10], rbp
	mov	rsp, rsp
	cmp	rbx, 2
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbx
	lea	rsi, [rsi]
	jl	.label_424
	lea	rsi, [rsi]
	mov	r13, rax
	mov	rbp, r14
	nop	word ptr cs:[rax + rax]
.label_534:
	mov	rsp, rsp
	mov	bl, byte ptr [rbp]
	movsx	esi, bl
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:printf_flags
	mov	rbp, rbp
	mov	edx, 8
	lea	rsi, [rsi]
	call	memchr
	mov	rbp, rbp
	test	rax, rax
	je	.label_458
	mov	rbp, rbp
	mov	eax, 1
	mov	cl, bl
	mov	rbp, rbp
	shl	rax, cl
	mov	rsp, rsp
	movzx	ecx, bl
	cmp	ecx, 0x3f
	ja	.label_445
	and	rax, r13
	je	.label_445
	mov	byte ptr [r14], bl
	lea	rdi, [rdi]
	inc	r14
.label_445:
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, r15
	jb	.label_534
	nop	
	jmp	.label_458
.label_1586:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0x38]
	movabs	rcx, 0x2000000000000001
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	ecx, 0x200
	mov	rbp, rbp
	mov	r14d, 0x200
	cmovb	r14, rax
	test	rax, rax
	lea	rdi, [rdi]
	cmovle	r14, rcx
	lea	r12, [rbp + 1]
	lea	r13, [rbp + rbx]
	mov	qword ptr [rsp + 0x10], rbp
	mov	rsp, rsp
	cmp	rbx, 2
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbp, r12
	nop	
	jl	.label_459
	nop	word ptr [rax + rax]
.label_486:
	mov	rsp, rsp
	mov	bl, byte ptr [rbp]
	movsx	esi, bl
	nop	
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	nop	
	je	.label_459
	lea	rdi, [rdi]
	mov	eax, 1
	nop	
	mov	cl, bl
	nop	
	shl	rax, cl
	movzx	ecx, bl
	lea	rsi, [rsi]
	cmp	ecx, 0x3f
	ja	.label_483
	and	rax, r15
	je	.label_483
	mov	byte ptr [r12], bl
	nop	
	inc	r12
.label_483:
	inc	rbp
	nop	
	cmp	rbp, r13
	jb	.label_486
.label_459:
	lea	rsi, [rsi]
	cmp	rbp, r13
	lea	rsi, [rsi]
	jae	.label_489
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rax, rdi
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	add	rax, rsi
	cmp	rax, 0x1f
	lea	rdi, [rdi]
	jbe	.label_492
	mov	rcx, rax
	and	rcx, 0xffffffffffffffe0
	mov	rsp, rsp
	je	.label_492
	lea	rdx, [rsi + rdi - 1]
	nop	
	cmp	r12, rdx
	nop	
	ja	.label_451
	nop	
	dec	rdi
	nop	
	sub	rdi, rbp
	add	rdi, rsi
	mov	rsp, rsp
	add	rdi, r12
	nop	
	cmp	rbp, rdi
	ja	.label_451
.label_492:
	mov	rdx, r12
	nop	word ptr [rax + rax]
.label_417:
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp]
	inc	rbp
	lea	rdi, [rdi]
	mov	byte ptr [rdx], cl
	mov	rbp, rbp
	inc	rdx
	mov	rbp, rbp
	cmp	r13, rbp
	mov	rbp, rbp
	jne	.label_417
.label_413:
	add	r12, rax
	lea	rsi, [rsi]
	jmp	.label_510
.label_1587:
	mov	rax, qword ptr [r13 + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rax
	nop	
	lea	r15, [rbp + 1]
	lea	r12, [rbp + rbx]
	mov	r14, rbp
	cmp	rbx, 2
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	jl	.label_516
	nop	
	movabs	r13, 0x1288100000001
	lea	rdi, [rdi]
	mov	rbp, r15
	nop	word ptr [rax + rax]
.label_537:
	mov	bl, byte ptr [rbp]
	movsx	esi, bl
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_530
	mov	rbp, rbp
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	nop	
	movzx	ecx, bl
	mov	rbp, rbp
	cmp	ecx, 0x3f
	ja	.label_531
	and	rax, r13
	lea	rdi, [rdi]
	je	.label_531
	mov	byte ptr [r15], bl
	inc	r15
.label_531:
	inc	rbp
	cmp	rbp, r12
	lea	rdi, [rdi]
	jb	.label_537
	jmp	.label_530
.label_1588:
	lea	rdi, [rdi]
	mov	r12, qword ptr [r13 + 0x28]
	mov	rbp, rbp
	mov	rax, r12
	lea	rsi, [rsi]
	shr	rax, 8
	mov	rsp, rsp
	and	eax, 0xfff
	mov	qword ptr [rsp + 0x20], rax
	lea	rdi, [rdi]
	shr	r12, 0x20
	and	r12d, 0xfffff000
	lea	r15, [rbp + 1]
	lea	r13, [rbp + rbx]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rbp
	nop	
	cmp	rbx, 2
	nop	
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbp, r15
	jl	.label_541
	nop	dword ptr [rax + rax]
.label_566:
	lea	rsi, [rsi]
	mov	bl, byte ptr [rbp]
	lea	rsi, [rsi]
	movsx	esi, bl
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_541
	mov	eax, 1
	lea	rdi, [rdi]
	mov	cl, bl
	nop	
	shl	rax, cl
	mov	rbp, rbp
	movzx	ecx, bl
	cmp	ecx, 0x3f
	mov	rsp, rsp
	ja	.label_559
	lea	rsi, [rsi]
	and	rax, r14
	mov	rbp, rbp
	je	.label_559
	mov	byte ptr [r15], bl
	mov	rsp, rsp
	inc	r15
.label_559:
	nop	
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, r13
	lea	rdi, [rdi]
	jb	.label_566
.label_541:
	mov	rdx, qword ptr [rsp + 0x20]
	or	rdx, r12
	mov	rsp, rsp
	cmp	rbp, r13
	jae	.label_570
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	rax, rdi
	sub	rax, rbp
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	lea	rsi, [rsi]
	jbe	.label_572
	mov	r8, rax
	mov	rbp, rbp
	and	r8, 0xffffffffffffffe0
	nop	
	je	.label_572
	nop	
	lea	rcx, [rsi + rdi - 1]
	mov	rbp, rbp
	cmp	r15, rcx
	lea	rsi, [rsi]
	ja	.label_581
	dec	rdi
	mov	rbp, rbp
	sub	rdi, rbp
	nop	
	add	rdi, rsi
	add	rdi, r15
	lea	rsi, [rsi]
	cmp	rbp, rdi
	nop	
	ja	.label_581
.label_572:
	mov	rdi, r15
	nop	dword ptr [rax]
.label_462:
	mov	cl, byte ptr [rbp]
	inc	rbp
	lea	rsi, [rsi]
	mov	byte ptr [rdi], cl
	inc	rdi
	mov	rsp, rsp
	cmp	r13, rbp
	lea	rsi, [rsi]
	jne	.label_462
.label_461:
	lea	rdi, [rdi]
	add	r15, rax
	jmp	.label_595
.label_1589:
	mov	eax, dword ptr [r13 + 0x1c]
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	lea	r12, [rbp + 1]
	mov	rbp, rbp
	lea	r13, [rbp + rbx]
	lea	rdi, [rdi]
	mov	r14, rbp
	cmp	rbx, 2
	nop	
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbp, rbp
	mov	rbp, r12
	lea	rdi, [rdi]
	jl	.label_598
	nop	word ptr [rax + rax]
.label_433:
	mov	bl, byte ptr [rbp]
	movsx	esi, bl
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:printf_flags
	mov	rbp, rbp
	mov	edx, 8
	call	memchr
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_598
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	movzx	ecx, bl
	cmp	ecx, 0x3f
	nop	
	ja	.label_610
	and	rax, r15
	mov	rbp, rbp
	je	.label_610
	mov	rbp, rbp
	mov	byte ptr [r12], bl
	inc	r12
.label_610:
	lea	rdi, [rdi]
	inc	rbp
	cmp	rbp, r13
	jb	.label_433
.label_598:
	lea	rsi, [rsi]
	cmp	rbp, r13
	jae	.label_378
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rax, rdi
	lea	rsi, [rsi]
	sub	rax, rbp
	mov	rbp, rbp
	mov	rsi, r14
	nop	
	add	rax, rsi
	lea	rsi, [rsi]
	cmp	rax, 0x1f
	lea	rsi, [rsi]
	jbe	.label_619
	mov	rsp, rsp
	mov	r8, rax
	lea	rdi, [rdi]
	and	r8, 0xffffffffffffffe0
	je	.label_619
	lea	rdx, [rsi + rdi - 1]
	cmp	r12, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	ja	.label_630
	lea	rsi, [rsi]
	dec	rdi
	lea	rdi, [rdi]
	sub	rdi, rbp
	mov	rbp, rbp
	add	rdi, rsi
	add	rdi, r12
	nop	
	cmp	rbp, rdi
	ja	.label_630
	mov	rdi, r12
	nop	
	jmp	.label_381
.label_378:
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x20]
	jmp	.label_640
.label_1590:
	lea	rdi, [rdi]
	lea	r14, [rbp + 1]
	mov	rsp, rsp
	lea	r15, [rbp + rbx]
	nop	
	mov	r12, rbp
	cmp	rbx, 2
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rbx
	jl	.label_641
	mov	r13, rax
	lea	rsi, [rsi]
	mov	rbp, r14
	nop	dword ptr [rax + rax]
.label_659:
	mov	bl, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	mov	rsp, rsp
	call	memchr
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_654
	mov	eax, 1
	nop	
	mov	cl, bl
	shl	rax, cl
	movzx	ecx, bl
	cmp	ecx, 0x3f
	ja	.label_656
	and	rax, r13
	je	.label_656
	lea	rsi, [rsi]
	mov	byte ptr [r14], bl
	inc	r14
.label_656:
	lea	rdi, [rdi]
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, r15
	mov	rbp, rbp
	jb	.label_659
	mov	rsp, rsp
	jmp	.label_654
.label_1591:
	mov	r12, rax
	mov	rdi, qword ptr [r13 + 0x48]
	mov	rsi, qword ptr [r13 + 0x50]
	mov	qword ptr [rsp + 0x10], rbp
	lea	rdi, [rdi]
	call	human_time
	lea	r14, [rbp + 1]
	lea	rdi, [rdi]
	lea	r15, [rbp + rbx]
	cmp	rbx, 2
	mov	r13, rbx
	lea	rsi, [rsi]
	mov	rbp, r14
	mov	rbp, rbp
	jl	.label_666
	nop	word ptr cs:[rax + rax]
.label_681:
	mov	rsp, rsp
	mov	bl, byte ptr [rbp]
	nop	
	movsx	esi, bl
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_666
	mov	eax, 1
	nop	
	mov	cl, bl
	shl	rax, cl
	mov	rbp, rbp
	movzx	ecx, bl
	cmp	ecx, 0x3f
	ja	.label_676
	nop	
	and	rax, r12
	je	.label_676
	mov	rbp, rbp
	mov	byte ptr [r14], bl
	inc	r14
.label_676:
	inc	rbp
	nop	
	cmp	rbp, r15
	mov	rsp, rsp
	jb	.label_681
.label_666:
	cmp	rbp, r15
	jae	.label_684
	nop	
	mov	rax, r13
	sub	rax, rbp
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	mov	rsp, rsp
	cmp	rax, 0x1f
	lea	rdi, [rdi]
	jbe	.label_616
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	and	rcx, 0xffffffffffffffe0
	mov	rbp, rbp
	je	.label_616
	lea	rsi, [rsi]
	lea	rdx, [rsi + r13 - 1]
	mov	rsp, rsp
	cmp	r14, rdx
	ja	.label_689
	mov	rbp, rbp
	dec	r13
	mov	rsp, rsp
	sub	r13, rbp
	mov	rsp, rsp
	add	r13, rsi
	add	r13, r14
	nop	
	cmp	rbp, r13
	lea	rsi, [rsi]
	ja	.label_689
.label_616:
	mov	rdx, r14
	nop	dword ptr [rax + rax]
.label_359:
	mov	cl, byte ptr [rbp]
	lea	rsi, [rsi]
	inc	rbp
	mov	byte ptr [rdx], cl
	inc	rdx
	lea	rdi, [rdi]
	cmp	r15, rbp
	jne	.label_359
	lea	rsi, [rsi]
	jmp	.label_367
.label_1592:
	mov	rbp, rbp
	mov	r12, rax
	mov	rdi, qword ptr [r13 + 0x58]
	mov	rsi, qword ptr [r13 + 0x60]
	mov	qword ptr [rsp + 0x10], rbp
	call	human_time
	lea	r14, [rbp + 1]
	lea	rsi, [rsi]
	lea	r15, [rbp + rbx]
	mov	rbp, rbp
	cmp	rbx, 2
	nop	
	mov	r13, rbx
	nop	
	mov	rbp, r14
	jl	.label_374
	nop	word ptr cs:[rax + rax]
.label_397:
	mov	bl, byte ptr [rbp]
	lea	rdi, [rdi]
	movsx	esi, bl
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:printf_flags
	mov	rbp, rbp
	mov	edx, 8
	call	memchr
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_374
	mov	eax, 1
	mov	rsp, rsp
	mov	cl, bl
	shl	rax, cl
	lea	rsi, [rsi]
	movzx	ecx, bl
	cmp	ecx, 0x3f
	mov	rsp, rsp
	ja	.label_527
	nop	
	and	rax, r12
	je	.label_527
	mov	rbp, rbp
	mov	byte ptr [r14], bl
	inc	r14
.label_527:
	inc	rbp
	cmp	rbp, r15
	nop	
	jb	.label_397
.label_374:
	lea	rdi, [rdi]
	cmp	rbp, r15
	jae	.label_399
	mov	rax, r13
	nop	
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	nop	
	cmp	rax, 0x1f
	lea	rdi, [rdi]
	jbe	.label_401
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	and	rcx, 0xffffffffffffffe0
	nop	
	je	.label_401
	lea	rdx, [rsi + r13 - 1]
	lea	rdi, [rdi]
	cmp	r14, rdx
	lea	rsi, [rsi]
	ja	.label_411
	dec	r13
	sub	r13, rbp
	add	r13, rsi
	mov	rsp, rsp
	add	r13, r14
	lea	rdi, [rdi]
	cmp	rbp, r13
	mov	rsp, rsp
	ja	.label_411
.label_401:
	mov	rdx, r14
	nop	word ptr cs:[rax + rax]
.label_421:
	mov	rbp, rbp
	mov	cl, byte ptr [rbp]
	nop	
	inc	rbp
	mov	byte ptr [rdx], cl
	inc	rdx
	lea	rsi, [rsi]
	cmp	r15, rbp
	jne	.label_421
	jmp	.label_367
.label_1593:
	mov	rbp, rbp
	mov	r12, rax
	mov	rbp, rbp
	mov	rdi, qword ptr [r13 + 0x68]
	mov	rsi, qword ptr [r13 + 0x70]
	mov	qword ptr [rsp + 0x10], rbp
	call	human_time
	lea	r14, [rbp + 1]
	lea	r15, [rbp + rbx]
	mov	rbp, rbp
	cmp	rbx, 2
	lea	rdi, [rdi]
	mov	r13, rbx
	mov	rbp, rbp
	mov	rbp, r14
	nop	
	jl	.label_431
	nop	word ptr cs:[rax + rax]
.label_651:
	lea	rdi, [rdi]
	mov	bl, byte ptr [rbp]
	movsx	esi, bl
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	lea	rsi, [rsi]
	call	memchr
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_431
	mov	eax, 1
	nop	
	mov	cl, bl
	lea	rsi, [rsi]
	shl	rax, cl
	movzx	ecx, bl
	mov	rbp, rbp
	cmp	ecx, 0x3f
	lea	rdi, [rdi]
	ja	.label_443
	lea	rdi, [rdi]
	and	rax, r12
	je	.label_443
	lea	rsi, [rsi]
	mov	byte ptr [r14], bl
	mov	rbp, rbp
	inc	r14
.label_443:
	inc	rbp
	cmp	rbp, r15
	nop	
	jb	.label_651
.label_431:
	lea	rdi, [rdi]
	cmp	rbp, r15
	mov	rbp, rbp
	jae	.label_542
	lea	rsi, [rsi]
	mov	rax, r13
	sub	rax, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_460
	mov	rcx, rax
	nop	
	and	rcx, 0xffffffffffffffe0
	lea	rdi, [rdi]
	je	.label_460
	lea	rdx, [rsi + r13 - 1]
	cmp	r14, rdx
	ja	.label_465
	dec	r13
	sub	r13, rbp
	add	r13, rsi
	lea	rsi, [rsi]
	add	r13, r14
	cmp	rbp, r13
	lea	rsi, [rsi]
	ja	.label_465
.label_460:
	mov	rsp, rsp
	mov	rdx, r14
	nop	word ptr cs:[rax + rax]
.label_475:
	mov	rsp, rsp
	mov	cl, byte ptr [rbp]
	inc	rbp
	mov	rbp, rbp
	mov	byte ptr [rdx], cl
	inc	rdx
	cmp	r15, rbp
	jne	.label_475
.label_367:
	lea	rsi, [rsi]
	add	r14, rax
	jmp	.label_479
.label_398:
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	word ptr [r14], 0x73
	lea	rsi, [rsi]
	jmp	.label_391
.label_506:
	lea	rdi, [rdi]
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	jmp	.label_487
.label_377:
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x10]
.label_402:
	lea	rdi, [rdi]
	mov	word ptr [r14], 0x73
	xor	ebx, ebx
	mov	edi, 1
	mov	edx, OFFSET FLAT:human_access.modebuf
	jmp	.label_422
.label_429:
	nop	
	mov	rsi, r13
.label_455:
	mov	byte ptr [r14 + 2], 0
	mov	word ptr [r14], 0x756c
	xor	ebx, ebx
	mov	edi, 1
	mov	edx, 0x200
	lea	rsi, [rsi]
	jmp	.label_422
.label_561:
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	jmp	.label_501
.label_649:
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_502
.label_680:
	mov	rsi, qword ptr [rsp + 0x10]
.label_360:
	mov	byte ptr [r15 + 2], 0
	mov	rbp, rbp
	mov	word ptr [r15], 0x786c
	nop	
	jmp	.label_507
.label_453:
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	jmp	.label_509
.label_424:
	mov	rbp, rbp
	mov	rbp, r14
.label_458:
	mov	rbp, rbp
	cmp	rbp, r15
	lea	rdi, [rdi]
	jae	.label_517
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rax, rdi
	sub	rax, rbp
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_446
	nop	
	mov	rcx, rax
	and	rcx, 0xffffffffffffffe0
	mov	rsp, rsp
	je	.label_446
	mov	rbp, rbp
	lea	rdx, [rsi + rdi - 1]
	cmp	r14, rdx
	nop	
	ja	.label_525
	mov	rsp, rsp
	dec	rdi
	lea	rdi, [rdi]
	sub	rdi, rbp
	add	rdi, rsi
	add	rdi, r14
	mov	rbp, rbp
	cmp	rbp, rdi
	ja	.label_525
.label_446:
	mov	rdx, r14
	nop	word ptr cs:[rax + rax]
.label_536:
	mov	cl, byte ptr [rbp]
	mov	rsp, rsp
	inc	rbp
	mov	byte ptr [rdx], cl
	nop	
	inc	rdx
	cmp	r15, rbp
	nop	
	jne	.label_536
.label_664:
	mov	rbp, rbp
	add	r14, rax
	mov	rbp, rbp
	jmp	.label_539
.label_489:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x10]
.label_510:
	mov	byte ptr [r12 + 2], 0
	mov	word ptr [r12], 0x756c
	xor	ebx, ebx
	mov	edi, 1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, r14
	call	__printf_chk
	jmp	.label_415
.label_516:
	nop	
	mov	rbp, r15
.label_530:
	lea	rdi, [rdi]
	cmp	rbp, r12
	nop	
	jae	.label_548
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rax, rdi
	lea	rsi, [rsi]
	sub	rax, rbp
	mov	rsi, r14
	add	rax, rsi
	cmp	rax, 0x1f
	mov	rsp, rsp
	jbe	.label_553
	nop	
	mov	r8, rax
	mov	rsp, rsp
	and	r8, 0xffffffffffffffe0
	je	.label_553
	lea	rsi, [rsi]
	lea	rdx, [rsi + rdi - 1]
	cmp	r15, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	ja	.label_560
	mov	rbp, rbp
	dec	rdi
	sub	rdi, rbp
	add	rdi, rsi
	mov	rbp, rbp
	add	rdi, r15
	lea	rdi, [rdi]
	cmp	rbp, rdi
	ja	.label_560
	nop	
	mov	rdi, r15
	jmp	.label_366
.label_570:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x10]
.label_595:
	mov	rsp, rsp
	mov	byte ptr [r15 + 2], 0
	lea	rsi, [rsi]
	mov	word ptr [r15], 0x786c
	lea	rsi, [rsi]
	jmp	.label_391
.label_641:
	mov	rbp, r14
.label_654:
	mov	rsp, rsp
	cmp	rbp, r15
	jae	.label_577
	mov	r13, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	rax, r13
	nop	
	sub	rax, rbp
	mov	rsi, r12
	nop	
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_578
	mov	rcx, rax
	lea	rsi, [rsi]
	and	rcx, 0xffffffffffffffe0
	je	.label_578
	lea	rdx, [rsi + r13 - 1]
	cmp	r14, rdx
	ja	.label_586
	lea	rdi, [rdi]
	dec	r13
	sub	r13, rbp
	mov	rbp, rbp
	add	r13, rsi
	add	r13, r14
	cmp	rbp, r13
	mov	rsp, rsp
	ja	.label_586
.label_578:
	mov	rsp, rsp
	mov	rdx, r14
	nop	word ptr cs:[rax + rax]
.label_596:
	mov	cl, byte ptr [rbp]
	inc	rbp
	mov	rbp, rbp
	mov	byte ptr [rdx], cl
	mov	rsp, rsp
	inc	rdx
	lea	rsi, [rsi]
	cmp	r15, rbp
	jne	.label_596
.label_414:
	mov	rsp, rsp
	add	r14, rax
	jmp	.label_601
.label_684:
	mov	rsi, qword ptr [rsp + 0x10]
	jmp	.label_479
.label_399:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x10]
	jmp	.label_479
.label_542:
	mov	rsi, qword ptr [rsp + 0x10]
.label_479:
	mov	word ptr [r14], 0x73
	xor	ebx, ebx
	mov	edi, 1
	mov	edx, OFFSET FLAT:human_time.str
	nop	
	jmp	.label_422
.label_517:
	mov	rsi, qword ptr [rsp + 0x10]
.label_539:
	lea	rdi, [rdi]
	mov	word ptr [r14], 0x73
.label_507:
	mov	rbp, rbp
	xor	ebx, ebx
	mov	edi, 1
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, r12
	nop	
	call	__printf_chk
	jmp	.label_415
.label_548:
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x20]
	jmp	.label_615
.label_577:
	mov	rsi, r12
.label_601:
	mov	word ptr [r14], 0x73
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.59
	jmp	.label_422
.label_409:
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, r13
	call	find_mount_point
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	al, 1
	mov	rbp, rbp
	xor	ebp, ebp
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	ecx, 0
	je	.label_423
	mov	rdi, rbx
	call	find_bind_mount
	nop	
	mov	rbp, rax
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, rbx
	lea	rdi, [rdi]
	jmp	.label_423
.label_497:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
.label_524:
	mov	cl, byte ptr [rbp]
	lea	rdi, [rdi]
	inc	rbp
	mov	byte ptr [rdi], cl
	inc	rdi
	mov	rbp, rbp
	cmp	r13, rbp
	jne	.label_524
	jmp	.label_588
.label_562:
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_579:
	mov	cl, byte ptr [rbp]
	inc	rbp
	mov	rbp, rbp
	mov	byte ptr [rdi], cl
	mov	rbp, rbp
	inc	rdi
	cmp	r12, rbp
	lea	rdi, [rdi]
	jne	.label_579
.label_688:
	add	r15, rax
.label_501:
	lea	rdi, [rdi]
	mov	word ptr [r15], 0x73
	jmp	.label_391
.label_456:
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x20]
	nop	dword ptr [rax + rax]
.label_452:
	mov	cl, byte ptr [rbp]
	inc	rbp
	lea	rsi, [rsi]
	mov	byte ptr [rdi], cl
	nop	
	inc	rdi
	lea	rsi, [rsi]
	cmp	r13, rbp
	mov	rsp, rsp
	jne	.label_452
.label_449:
	mov	rbp, rbp
	add	r15, rax
.label_509:
	mov	byte ptr [r15 + 2], 0
	mov	rbp, rbp
	mov	word ptr [r15], 0x6f6c
	jmp	.label_391
.label_504:
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
.label_499:
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdi], cl
	lea	rsi, [rsi]
	inc	rdi
	mov	rbp, rbp
	cmp	r13, rbp
	jne	.label_499
	mov	rbp, rbp
	jmp	.label_358
.label_551:
	mov	rdi, r12
	mov	rdx, qword ptr [rsp + 0x20]
	nop	dword ptr [rax]
.label_493:
	nop	
	mov	cl, byte ptr [rbp]
	lea	rdi, [rdi]
	inc	rbp
	mov	rsp, rsp
	mov	byte ptr [rdi], cl
	inc	rdi
	cmp	r13, rbp
	jne	.label_493
	nop	
	jmp	.label_358
.label_386:
	mov	rdi, r12
	mov	rdx, qword ptr [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_589:
	mov	rsp, rsp
	mov	cl, byte ptr [rbp]
	inc	rbp
	nop	
	mov	byte ptr [rdi], cl
	inc	rdi
	nop	
	cmp	r13, rbp
	jne	.label_589
.label_588:
	add	r12, rax
.label_487:
	nop	
	mov	byte ptr [r12 + 2], 0
	mov	word ptr [r12], 0x786c
	jmp	.label_391
.label_636:
	mov	rdi, r12
	mov	rdx, qword ptr [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_628:
	mov	cl, byte ptr [rbp]
	inc	rbp
	lea	rdi, [rdi]
	mov	byte ptr [rdi], cl
	lea	rsi, [rsi]
	inc	rdi
	cmp	r13, rbp
	jne	.label_628
	mov	rsp, rsp
	jmp	.label_358
.label_535:
	mov	rdi, r12
	mov	rdx, qword ptr [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_662:
	mov	cl, byte ptr [rbp]
	inc	rbp
	nop	
	mov	byte ptr [rdi], cl
	lea	rdi, [rdi]
	inc	rdi
	mov	rbp, rbp
	cmp	r13, rbp
	nop	
	jne	.label_662
	nop	
	jmp	.label_358
.label_382:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rdx, qword ptr [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_364:
	mov	cl, byte ptr [rbp]
	inc	rbp
	lea	rdi, [rdi]
	mov	byte ptr [rdi], cl
	inc	rdi
	cmp	r13, rbp
	jne	.label_364
	jmp	.label_358
.label_619:
	mov	rdi, r12
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x20]
.label_381:
	mov	cl, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdi], cl
	mov	rsp, rsp
	inc	rdi
	cmp	r13, rbp
	jne	.label_381
.label_358:
	lea	rsi, [rsi]
	add	r12, rax
.label_640:
	lea	rsi, [rsi]
	mov	byte ptr [r12 + 2], 0
	mov	word ptr [r12], 0x756c
.label_391:
	xor	ebx, ebx
	mov	edi, 1
.label_422:
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
.label_415:
	mov	rbp, rbp
	mov	al, bl
	mov	rsp, rsp
	add	rsp, 0x28
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_553:
	mov	rdi, r15
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_366:
	mov	cl, byte ptr [rbp]
	nop	
	inc	rbp
	lea	rsi, [rsi]
	mov	byte ptr [rdi], cl
	lea	rdi, [rdi]
	inc	rdi
	cmp	r12, rbp
	jne	.label_366
.label_362:
	add	r15, rax
.label_615:
	mov	byte ptr [r15 + 2], 0
	mov	word ptr [r15], 0x646c
	mov	rbp, rbp
	jmp	.label_391
.label_416:
	lea	rdi, [rdi]
	call	__errno_location
	mov	r13d, dword ptr [rax]
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.199
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	nop	
	call	quotearg_style
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, r13d
	nop	
	mov	rdx, rbx
	call	error
	mov	al, 1
	xor	ecx, ecx
.label_423:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rax
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:.str.198
	mov	rsp, rsp
	cmovne	r12, rcx
	test	rbp, rbp
	nop	
	cmovne	r12, rbp
	lea	rsi, [rsi]
	mov	rax, r15
	lea	r15, [rax + 1]
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rcx
	lea	r13, [rax + rcx]
	mov	r14, rax
	lea	rdi, [rdi]
	mov	rbp, r15
	lea	rdi, [rdi]
	cmp	rcx, 2
	lea	rsi, [rsi]
	jl	.label_410
	nop	word ptr cs:[rax + rax]
.label_441:
	mov	bl, byte ptr [rbp]
	mov	rsp, rsp
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	rsp, rsp
	mov	edx, 8
	call	memchr
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_410
	nop	
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	movzx	ecx, bl
	cmp	ecx, 0x3f
	mov	rbp, rbp
	ja	.label_434
	lea	rsi, [rsi]
	movabs	rcx, 0x200000000001
	and	rax, rcx
	nop	
	je	.label_434
	mov	byte ptr [r15], bl
	mov	rsp, rsp
	inc	r15
.label_434:
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, r13
	lea	rdi, [rdi]
	jb	.label_441
.label_410:
	cmp	rbp, r13
	lea	rdi, [rdi]
	jae	.label_442
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rax, rdi
	nop	
	sub	rax, rbp
	mov	rbp, rbp
	mov	rsi, r14
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_444
	mov	rcx, rax
	lea	rdi, [rdi]
	and	rcx, 0xffffffffffffffe0
	mov	rsp, rsp
	je	.label_444
	lea	rsi, [rsi]
	lea	rdx, [rsi + rdi - 1]
	mov	rbp, rbp
	cmp	r15, rdx
	lea	rsi, [rsi]
	ja	.label_454
	dec	rdi
	lea	rsi, [rsi]
	sub	rdi, rbp
	add	rdi, rsi
	nop	
	add	rdi, r15
	cmp	rbp, rdi
	ja	.label_454
.label_444:
	lea	rsi, [rsi]
	mov	rdx, r15
	nop	dword ptr [rax + rax]
.label_387:
	nop	
	mov	cl, byte ptr [rbp]
	inc	rbp
	nop	
	mov	byte ptr [rdx], cl
	inc	rdx
	cmp	r13, rbp
	jne	.label_387
.label_463:
	nop	
	add	r15, rax
	jmp	.label_470
.label_442:
	mov	rsi, r14
.label_470:
	mov	rsp, rsp
	mov	word ptr [r15], 0x73
	nop	
	mov	edi, 1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, r12
	call	__printf_chk
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	call	free
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	test	al, al
	setne	bl
	nop	
	jmp	.label_415
.label_608:
	mov	r8, rax
	lea	rsi, [rsi]
	and	r8, 0xffffffffffffffe0
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	je	.label_480
	lea	rcx, [rsi + r12 - 1]
	cmp	r14, rcx
	mov	rsp, rsp
	ja	.label_485
	mov	rsp, rsp
	dec	r12
	nop	
	sub	r12, rbp
	lea	rsi, [rsi]
	add	r12, rsi
	add	r12, r14
	lea	rdi, [rdi]
	cmp	rbp, r12
	mov	rbp, rbp
	ja	.label_485
	mov	rdi, r14
	lea	rsi, [rsi]
	jmp	.label_467
.label_652:
	nop	
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	mov	rdx, qword ptr [rsp + 8]
	je	.label_495
	lea	rsi, [rsi]
	lea	rcx, [rsi + rdi - 1]
	nop	
	cmp	r15, rcx
	mov	rbp, rbp
	ja	.label_498
	lea	rcx, [rdi - 1]
	sub	rcx, rbp
	add	rcx, rsi
	lea	rsi, [rsi]
	add	rcx, r15
	cmp	rbp, rcx
	mov	rsp, rsp
	ja	.label_498
	mov	rbx, r15
	lea	rsi, [rsi]
	jmp	.label_412
.label_400:
	mov	r8, rax
	mov	rsp, rsp
	and	r8, 0xffffffffffffffe0
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	je	.label_533
	lea	rdi, [rdi]
	lea	rcx, [rsi + r12 - 1]
	cmp	r14, rcx
	mov	rsp, rsp
	ja	.label_513
	lea	rdi, [rdi]
	dec	r12
	mov	rsp, rsp
	sub	r12, rbp
	add	r12, rsi
	mov	rbp, rbp
	add	r12, r14
	nop	
	cmp	rbp, r12
	ja	.label_513
	mov	rsp, rsp
	mov	rdi, r14
	lea	rdi, [rdi]
	jmp	.label_408
.label_480:
	lea	rsi, [rsi]
	mov	rdi, r14
	jmp	.label_467
.label_495:
	mov	rbx, r15
	lea	rsi, [rsi]
	jmp	.label_412
.label_533:
	mov	rdi, r14
	lea	rdi, [rdi]
	jmp	.label_408
.label_388:
	mov	rsp, rsp
	lea	rbx, [rax - 0x20]
	mov	edx, ebx
	nop	
	shr	edx, 5
	lea	rdi, [rdi]
	inc	edx
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	test	dl, 3
	mov	rsp, rsp
	je	.label_529
	lea	edx, [rax - 0x20]
	lea	rdi, [rdi]
	shr	edx, 5
	mov	rsp, rsp
	inc	edx
	mov	rsp, rsp
	and	edx, 3
	neg	rdx
	xor	edi, edi
.label_538:
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rbp + rdi]
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	movups	xmmword ptr [r14 + rdi], xmm0
	movups	xmmword ptr [r14 + rdi + 0x10], xmm1
	lea	rsi, [rsi]
	add	rdi, 0x20
	lea	rdi, [rdi]
	inc	rdx
	lea	rsi, [rsi]
	jne	.label_538
.label_529:
	cmp	rbx, 0x60
	mov	rbp, rbp
	jb	.label_544
	mov	rdx, rcx
	sub	rdx, rdi
	lea	rbx, [rbp + rdi + 0x70]
	lea	rdi, [r14 + rdi + 0x70]
.label_549:
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbx - 0x70]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rbx - 0x60]
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x70], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x60], xmm1
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	nop	
	movups	xmmword ptr [rdi - 0x30], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x20], xmm1
	nop	
	movups	xmm0, xmmword ptr [rbx - 0x10]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbx]
	movups	xmmword ptr [rdi - 0x10], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rdi], xmm1
	mov	rsp, rsp
	add	rbx, 0x80
	mov	rbp, rbp
	add	rdi, 0x80
	add	rdx, -0x80
	lea	rdi, [rdi]
	jne	.label_549
.label_544:
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	je	.label_568
	mov	rbp, rbp
	lea	rdx, [r14 + rcx]
	mov	rbp, rbp
	add	rbp, rcx
	jmp	.label_396
.label_438:
	lea	rbx, [rax - 0x20]
	lea	rsi, [rsi]
	mov	edx, ebx
	shr	edx, 5
	nop	
	inc	edx
	mov	rsp, rsp
	xor	edi, edi
	test	dl, 3
	je	.label_576
	mov	rsp, rsp
	lea	edx, [rax - 0x20]
	shr	edx, 5
	lea	rdi, [rdi]
	inc	edx
	and	edx, 3
	neg	rdx
	nop	
	xor	edi, edi
.label_583:
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rbp + rdi]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	lea	rdi, [rdi]
	movups	xmmword ptr [r14 + rdi], xmm0
	movups	xmmword ptr [r14 + rdi + 0x10], xmm1
	add	rdi, 0x20
	inc	rdx
	lea	rsi, [rsi]
	jne	.label_583
.label_576:
	lea	rdi, [rdi]
	cmp	rbx, 0x60
	lea	rsi, [rsi]
	jb	.label_591
	mov	rdx, rcx
	mov	rsp, rsp
	sub	rdx, rdi
	nop	
	lea	rbx, [rbp + rdi + 0x70]
	lea	rdi, [r14 + rdi + 0x70]
.label_597:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	nop	
	movups	xmmword ptr [rdi - 0x70], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x50]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x40], xmm1
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x30], xmm0
	nop	
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbx]
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi], xmm1
	mov	rbp, rbp
	add	rbx, 0x80
	add	rdi, 0x80
	add	rdx, -0x80
	nop	
	jne	.label_597
.label_591:
	mov	rsp, rsp
	cmp	rax, rcx
	je	.label_612
	mov	rbp, rbp
	lea	rdx, [r14 + rcx]
	add	rbp, rcx
	jmp	.label_448
.label_491:
	lea	rbx, [rax - 0x20]
	mov	ecx, ebx
	nop	
	shr	ecx, 5
	lea	rdi, [rdi]
	inc	ecx
	xor	edi, edi
	nop	
	test	cl, 3
	lea	rsi, [rsi]
	je	.label_618
	mov	rbp, rbp
	lea	ecx, [rax - 0x20]
	nop	
	shr	ecx, 5
	inc	ecx
	nop	
	and	ecx, 3
	neg	rcx
	mov	rbp, rbp
	xor	edi, edi
.label_626:
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rbp + rdi]
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	movups	xmmword ptr [r12 + rdi], xmm0
	movups	xmmword ptr [r12 + rdi + 0x10], xmm1
	add	rdi, 0x20
	inc	rcx
	jne	.label_626
.label_618:
	lea	rsi, [rsi]
	cmp	rbx, 0x60
	jb	.label_632
	lea	rdi, [rdi]
	mov	rcx, r8
	sub	rcx, rdi
	lea	rbx, [rbp + rdi + 0x70]
	lea	rdi, [r12 + rdi + 0x70]
.label_687:
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbx - 0x70]
	nop	
	movups	xmm1, xmmword ptr [rbx - 0x60]
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x70], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x60], xmm1
	nop	
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x30], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	nop	
	movups	xmm1, xmmword ptr [rbx]
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi], xmm1
	add	rbx, 0x80
	mov	rsp, rsp
	add	rdi, 0x80
	lea	rsi, [rsi]
	add	rcx, -0x80
	lea	rdi, [rdi]
	jne	.label_687
.label_632:
	mov	rsp, rsp
	cmp	rax, r8
	je	.label_588
	mov	rbp, rbp
	lea	rdi, [r12 + r8]
	mov	rbp, rbp
	add	rbp, r8
	jmp	.label_524
.label_543:
	mov	rsp, rsp
	lea	rbx, [rax - 0x20]
	lea	rdi, [rdi]
	mov	ecx, ebx
	mov	rsp, rsp
	shr	ecx, 5
	inc	ecx
	xor	edi, edi
	nop	
	test	cl, 3
	je	.label_658
	lea	rdi, [rdi]
	lea	ecx, [rax - 0x20]
	shr	ecx, 5
	inc	ecx
	and	ecx, 3
	neg	rcx
	mov	rsp, rsp
	xor	edi, edi
.label_661:
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rbp + rdi]
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	movups	xmmword ptr [r15 + rdi], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [r15 + rdi + 0x10], xmm1
	add	rdi, 0x20
	lea	rdi, [rdi]
	inc	rcx
	jne	.label_661
.label_658:
	cmp	rbx, 0x60
	mov	rsp, rsp
	jb	.label_669
	lea	rdi, [rdi]
	mov	rcx, r8
	mov	rbp, rbp
	sub	rcx, rdi
	lea	rbx, [rbp + rdi + 0x70]
	nop	
	lea	rdi, [r15 + rdi + 0x70]
.label_540:
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbx - 0x70]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x70], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x60], xmm1
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	nop	
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x30], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x20], xmm1
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbx - 0x10]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rbx]
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x10], xmm0
	movups	xmmword ptr [rdi], xmm1
	lea	rsi, [rsi]
	add	rbx, 0x80
	add	rdi, 0x80
	add	rcx, -0x80
	jne	.label_540
.label_669:
	nop	
	cmp	rax, r8
	lea	rsi, [rsi]
	je	.label_688
	lea	rdi, [r15 + r8]
	lea	rsi, [rsi]
	add	rbp, r8
	nop	
	jmp	.label_579
.label_645:
	mov	rbp, rbp
	lea	rbx, [rax - 0x20]
	mov	rsp, rsp
	mov	edx, ebx
	shr	edx, 5
	mov	rbp, rbp
	inc	edx
	mov	rbp, rbp
	xor	edi, edi
	test	dl, 3
	je	.label_691
	nop	
	lea	edx, [rax - 0x20]
	shr	edx, 5
	inc	edx
	nop	
	and	edx, 3
	lea	rdi, [rdi]
	neg	rdx
	lea	rsi, [rsi]
	xor	edi, edi
.label_392:
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rbp + rdi]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	lea	rdi, [rdi]
	movups	xmmword ptr [r15 + rdi], xmm0
	movups	xmmword ptr [r15 + rdi + 0x10], xmm1
	add	rdi, 0x20
	inc	rdx
	mov	rbp, rbp
	jne	.label_392
.label_691:
	cmp	rbx, 0x60
	lea	rdi, [rdi]
	jb	.label_437
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rsp, rsp
	sub	rdx, rdi
	lea	rsi, [rsi]
	lea	rbx, [rbp + rdi + 0x70]
	mov	rbp, rbp
	lea	rdi, [r15 + rdi + 0x70]
.label_385:
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbx - 0x70]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x60], xmm1
	nop	
	movups	xmm0, xmmword ptr [rbx - 0x50]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbx - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x20], xmm1
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbx - 0x10]
	movups	xmm1, xmmword ptr [rbx]
	movups	xmmword ptr [rdi - 0x10], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rdi], xmm1
	mov	rbp, rbp
	add	rbx, 0x80
	add	rdi, 0x80
	add	rdx, -0x80
	mov	rsp, rsp
	jne	.label_385
.label_437:
	cmp	rax, rcx
	mov	rbp, rbp
	je	.label_403
	lea	rdx, [r15 + rcx]
	lea	rdi, [rdi]
	add	rbp, rcx
	jmp	.label_357
.label_471:
	lea	rbx, [rax - 0x20]
	lea	rsi, [rsi]
	mov	ecx, ebx
	shr	ecx, 5
	mov	rbp, rbp
	inc	ecx
	xor	edi, edi
	test	cl, 3
	mov	rbp, rbp
	je	.label_617
	mov	rbp, rbp
	lea	ecx, [rax - 0x20]
	mov	rbp, rbp
	shr	ecx, 5
	inc	ecx
	and	ecx, 3
	neg	rcx
	lea	rsi, [rsi]
	xor	edi, edi
.label_674:
	movups	xmm0, xmmword ptr [rbp + rdi]
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	lea	rdi, [rdi]
	movups	xmmword ptr [r15 + rdi], xmm0
	movups	xmmword ptr [r15 + rdi + 0x10], xmm1
	mov	rsp, rsp
	add	rdi, 0x20
	nop	
	inc	rcx
	jne	.label_674
.label_617:
	cmp	rbx, 0x60
	lea	rdi, [rdi]
	jb	.label_690
	mov	rcx, r8
	sub	rcx, rdi
	lea	rdi, [rdi]
	lea	rbx, [rbp + rdi + 0x70]
	lea	rdi, [r15 + rdi + 0x70]
.label_430:
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rbx - 0x70]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x50], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x40], xmm1
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbx - 0x10]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rbx]
	movups	xmmword ptr [rdi - 0x10], xmm0
	movups	xmmword ptr [rdi], xmm1
	mov	rbp, rbp
	add	rbx, 0x80
	lea	rdi, [rdi]
	add	rdi, 0x80
	mov	rbp, rbp
	add	rcx, -0x80
	nop	
	jne	.label_430
.label_690:
	cmp	rax, r8
	je	.label_449
	mov	rbp, rbp
	lea	rdi, [r15 + r8]
	lea	rdi, [rdi]
	add	rbp, r8
	mov	rbp, rbp
	jmp	.label_452
.label_515:
	lea	rdi, [rdi]
	lea	rbx, [rax - 0x20]
	mov	ecx, ebx
	mov	rsp, rsp
	shr	ecx, 5
	mov	rbp, rbp
	inc	ecx
	nop	
	xor	edi, edi
	mov	rsp, rsp
	test	cl, 3
	lea	rdi, [rdi]
	je	.label_457
	lea	ecx, [rax - 0x20]
	shr	ecx, 5
	inc	ecx
	nop	
	and	ecx, 3
	lea	rsi, [rsi]
	neg	rcx
	lea	rsi, [rsi]
	xor	edi, edi
.label_466:
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rbp + rdi]
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	lea	rdi, [rdi]
	movups	xmmword ptr [r12 + rdi], xmm0
	movups	xmmword ptr [r12 + rdi + 0x10], xmm1
	lea	rsi, [rsi]
	add	rdi, 0x20
	mov	rsp, rsp
	inc	rcx
	jne	.label_466
.label_457:
	cmp	rbx, 0x60
	jb	.label_473
	mov	rcx, r8
	sub	rcx, rdi
	lea	rbx, [rbp + rdi + 0x70]
	lea	rsi, [rsi]
	lea	rdi, [r12 + rdi + 0x70]
.label_478:
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbx - 0x70]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	nop	
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x50], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x40], xmm1
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rbx - 0x10]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rbx]
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x10], xmm0
	movups	xmmword ptr [rdi], xmm1
	lea	rsi, [rsi]
	add	rbx, 0x80
	add	rdi, 0x80
	add	rcx, -0x80
	jne	.label_478
.label_473:
	cmp	rax, r8
	nop	
	je	.label_358
	lea	rdi, [r12 + r8]
	add	rbp, r8
	lea	rdi, [rdi]
	jmp	.label_499
.label_558:
	lea	rsi, [rsi]
	lea	rbx, [rax - 0x20]
	mov	rbp, rbp
	mov	ecx, ebx
	mov	rbp, rbp
	shr	ecx, 5
	nop	
	inc	ecx
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	test	cl, 3
	je	.label_663
	nop	
	lea	ecx, [rax - 0x20]
	shr	ecx, 5
	lea	rsi, [rsi]
	inc	ecx
	and	ecx, 3
	mov	rbp, rbp
	neg	rcx
	lea	rsi, [rsi]
	xor	edi, edi
.label_511:
	movups	xmm0, xmmword ptr [rbp + rdi]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	nop	
	movups	xmmword ptr [r12 + rdi], xmm0
	nop	
	movups	xmmword ptr [r12 + rdi + 0x10], xmm1
	lea	rdi, [rdi]
	add	rdi, 0x20
	mov	rbp, rbp
	inc	rcx
	jne	.label_511
.label_663:
	nop	
	cmp	rbx, 0x60
	mov	rbp, rbp
	jb	.label_519
	mov	rcx, r8
	sub	rcx, rdi
	lea	rdi, [rdi]
	lea	rbx, [rbp + rdi + 0x70]
	nop	
	lea	rdi, [r12 + rdi + 0x70]
.label_522:
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbx - 0x70]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x50]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbx - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x40], xmm1
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbx - 0x30]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbx - 0x10]
	movups	xmm1, xmmword ptr [rbx]
	nop	
	movups	xmmword ptr [rdi - 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi], xmm1
	nop	
	add	rbx, 0x80
	lea	rsi, [rsi]
	add	rdi, 0x80
	nop	
	add	rcx, -0x80
	jne	.label_522
.label_519:
	lea	rsi, [rsi]
	cmp	rax, r8
	je	.label_358
	mov	rbp, rbp
	lea	rdi, [r12 + r8]
	nop	
	add	rbp, r8
	jmp	.label_493
.label_604:
	lea	rbx, [rax - 0x20]
	mov	rbp, rbp
	mov	ecx, ebx
	shr	ecx, 5
	inc	ecx
	xor	edi, edi
	mov	rbp, rbp
	test	cl, 3
	je	.label_547
	lea	rsi, [rsi]
	lea	ecx, [rax - 0x20]
	shr	ecx, 5
	mov	rbp, rbp
	inc	ecx
	nop	
	and	ecx, 3
	mov	rsp, rsp
	neg	rcx
	xor	edi, edi
.label_555:
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rbp + rdi]
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	mov	rbp, rbp
	movups	xmmword ptr [r12 + rdi], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [r12 + rdi + 0x10], xmm1
	lea	rsi, [rsi]
	add	rdi, 0x20
	lea	rdi, [rdi]
	inc	rcx
	lea	rdi, [rdi]
	jne	.label_555
.label_547:
	cmp	rbx, 0x60
	jb	.label_563
	mov	rcx, r8
	mov	rbp, rbp
	sub	rcx, rdi
	mov	rsp, rsp
	lea	rbx, [rbp + rdi + 0x70]
	lea	rsi, [rsi]
	lea	rdi, [r12 + rdi + 0x70]
.label_567:
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbx - 0x70]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x50]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rbx - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rbx - 0x20]
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x30], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x20], xmm1
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbx - 0x10]
	movups	xmm1, xmmword ptr [rbx]
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x10], xmm0
	movups	xmmword ptr [rdi], xmm1
	add	rbx, 0x80
	add	rdi, 0x80
	add	rcx, -0x80
	lea	rsi, [rsi]
	jne	.label_567
.label_563:
	cmp	rax, r8
	je	.label_588
	lea	rdi, [r12 + r8]
	mov	rbp, rbp
	add	rbp, r8
	mov	rsp, rsp
	jmp	.label_589
.label_642:
	mov	rsp, rsp
	lea	rbx, [rax - 0x20]
	lea	rdi, [rdi]
	mov	ecx, ebx
	shr	ecx, 5
	mov	rbp, rbp
	inc	ecx
	lea	rdi, [rdi]
	xor	edi, edi
	test	cl, 3
	mov	rbp, rbp
	je	.label_592
	lea	ecx, [rax - 0x20]
	shr	ecx, 5
	inc	ecx
	and	ecx, 3
	neg	rcx
	nop	
	xor	edi, edi
.label_600:
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rbp + rdi]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	movups	xmmword ptr [r12 + rdi], xmm0
	movups	xmmword ptr [r12 + rdi + 0x10], xmm1
	add	rdi, 0x20
	inc	rcx
	jne	.label_600
.label_592:
	cmp	rbx, 0x60
	mov	rsp, rsp
	jb	.label_606
	mov	rcx, r8
	nop	
	sub	rcx, rdi
	lea	rbx, [rbp + rdi + 0x70]
	lea	rsi, [rsi]
	lea	rdi, [r12 + rdi + 0x70]
.label_609:
	nop	
	movups	xmm0, xmmword ptr [rbx - 0x70]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbx - 0x60]
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x70], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x60], xmm1
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	movups	xmm1, xmmword ptr [rbx]
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x10], xmm0
	movups	xmmword ptr [rdi], xmm1
	lea	rdi, [rdi]
	add	rbx, 0x80
	lea	rsi, [rsi]
	add	rdi, 0x80
	add	rcx, -0x80
	mov	rbp, rbp
	jne	.label_609
.label_606:
	cmp	rax, r8
	mov	rbp, rbp
	je	.label_358
	nop	
	lea	rdi, [r12 + r8]
	mov	rbp, rbp
	add	rbp, r8
	jmp	.label_628
.label_623:
	lea	rbx, [rax - 0x20]
	nop	
	mov	ecx, ebx
	mov	rbp, rbp
	shr	ecx, 5
	lea	rsi, [rsi]
	inc	ecx
	xor	edi, edi
	test	cl, 3
	je	.label_575
	lea	rdi, [rdi]
	lea	ecx, [rax - 0x20]
	shr	ecx, 5
	inc	ecx
	and	ecx, 3
	lea	rsi, [rsi]
	neg	rcx
	xor	edi, edi
.label_637:
	nop	
	movups	xmm0, xmmword ptr [rbp + rdi]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	lea	rsi, [rsi]
	movups	xmmword ptr [r12 + rdi], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [r12 + rdi + 0x10], xmm1
	nop	
	add	rdi, 0x20
	mov	rbp, rbp
	inc	rcx
	jne	.label_637
.label_575:
	mov	rbp, rbp
	cmp	rbx, 0x60
	nop	
	jb	.label_643
	mov	rcx, r8
	sub	rcx, rdi
	mov	rsp, rsp
	lea	rbx, [rbp + rdi + 0x70]
	lea	rdi, [r12 + rdi + 0x70]
.label_647:
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbx - 0x70]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	nop	
	movups	xmm0, xmmword ptr [rbx - 0x50]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	movups	xmm1, xmmword ptr [rbx]
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x10], xmm0
	movups	xmmword ptr [rdi], xmm1
	add	rbx, 0x80
	mov	rbp, rbp
	add	rdi, 0x80
	add	rcx, -0x80
	mov	rbp, rbp
	jne	.label_647
.label_643:
	cmp	rax, r8
	je	.label_358
	nop	
	lea	rdi, [r12 + r8]
	add	rbp, r8
	nop	
	jmp	.label_662
.label_383:
	mov	rbp, rbp
	lea	rbx, [rax - 0x20]
	mov	ecx, ebx
	lea	rdi, [rdi]
	shr	ecx, 5
	inc	ecx
	xor	edi, edi
	lea	rdi, [rdi]
	test	cl, 3
	lea	rdi, [rdi]
	je	.label_667
	lea	ecx, [rax - 0x20]
	lea	rdi, [rdi]
	shr	ecx, 5
	mov	rsp, rsp
	inc	ecx
	lea	rdi, [rdi]
	and	ecx, 3
	neg	rcx
	xor	edi, edi
.label_694:
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbp + rdi]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	mov	rbp, rbp
	movups	xmmword ptr [r12 + rdi], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [r12 + rdi + 0x10], xmm1
	mov	rsp, rsp
	add	rdi, 0x20
	lea	rdi, [rdi]
	inc	rcx
	lea	rsi, [rsi]
	jne	.label_694
.label_667:
	cmp	rbx, 0x60
	jb	.label_678
	mov	rsp, rsp
	mov	rcx, r8
	lea	rsi, [rsi]
	sub	rcx, rdi
	lea	rbx, [rbp + rdi + 0x70]
	lea	rsi, [rsi]
	lea	rdi, [r12 + rdi + 0x70]
.label_685:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x50], xmm0
	nop	
	movups	xmmword ptr [rdi - 0x40], xmm1
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbx - 0x30]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbx - 0x20]
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x30], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	movups	xmm1, xmmword ptr [rbx]
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x10], xmm0
	movups	xmmword ptr [rdi], xmm1
	add	rbx, 0x80
	lea	rsi, [rsi]
	add	rdi, 0x80
	add	rcx, -0x80
	jne	.label_685
.label_678:
	lea	rsi, [rsi]
	cmp	rax, r8
	lea	rsi, [rsi]
	je	.label_358
	lea	rdi, [r12 + r8]
	add	rbp, r8
	jmp	.label_364
.label_451:
	lea	rbx, [rax - 0x20]
	mov	rbp, rbp
	mov	edx, ebx
	mov	rbp, rbp
	shr	edx, 5
	inc	edx
	mov	rbp, rbp
	xor	edi, edi
	test	dl, 3
	je	.label_368
	lea	edx, [rax - 0x20]
	shr	edx, 5
	mov	rbp, rbp
	inc	edx
	and	edx, 3
	mov	rbp, rbp
	neg	rdx
	lea	rsi, [rsi]
	xor	edi, edi
.label_379:
	movups	xmm0, xmmword ptr [rbp + rdi]
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	lea	rdi, [rdi]
	movups	xmmword ptr [r12 + rdi], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [r12 + rdi + 0x10], xmm1
	add	rdi, 0x20
	lea	rsi, [rsi]
	inc	rdx
	mov	rsp, rsp
	jne	.label_379
.label_368:
	lea	rsi, [rsi]
	cmp	rbx, 0x60
	jb	.label_389
	mov	rdx, rcx
	sub	rdx, rdi
	lea	rbx, [rbp + rdi + 0x70]
	lea	rdi, [r12 + rdi + 0x70]
.label_393:
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rbx - 0x70]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x60], xmm1
	nop	
	movups	xmm0, xmmword ptr [rbx - 0x50]
	nop	
	movups	xmm1, xmmword ptr [rbx - 0x40]
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x50], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rbx]
	movups	xmmword ptr [rdi - 0x10], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rdi], xmm1
	add	rbx, 0x80
	add	rdi, 0x80
	lea	rsi, [rsi]
	add	rdx, -0x80
	lea	rsi, [rsi]
	jne	.label_393
.label_389:
	lea	rsi, [rsi]
	cmp	rax, rcx
	je	.label_413
	lea	rdx, [r12 + rcx]
	lea	rsi, [rsi]
	add	rbp, rcx
	jmp	.label_417
.label_581:
	lea	rdi, [rdi]
	lea	rbx, [rax - 0x20]
	mov	ecx, ebx
	shr	ecx, 5
	mov	rsp, rsp
	inc	ecx
	mov	rbp, rbp
	xor	edi, edi
	test	cl, 3
	nop	
	je	.label_419
	nop	
	lea	ecx, [rax - 0x20]
	mov	rsp, rsp
	shr	ecx, 5
	inc	ecx
	mov	rbp, rbp
	and	ecx, 3
	neg	rcx
	nop	
	xor	edi, edi
.label_428:
	movups	xmm0, xmmword ptr [rbp + rdi]
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	nop	
	movups	xmmword ptr [r15 + rdi], xmm0
	movups	xmmword ptr [r15 + rdi + 0x10], xmm1
	add	rdi, 0x20
	inc	rcx
	lea	rdi, [rdi]
	jne	.label_428
.label_419:
	cmp	rbx, 0x60
	jb	.label_435
	mov	rcx, r8
	sub	rcx, rdi
	mov	rsp, rsp
	lea	rbx, [rbp + rdi + 0x70]
	nop	
	lea	rdi, [r15 + rdi + 0x70]
.label_439:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x60], xmm1
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbx - 0x50]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rbx - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rbx - 0x20]
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x30], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x20], xmm1
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbx - 0x10]
	nop	
	movups	xmm1, xmmword ptr [rbx]
	movups	xmmword ptr [rdi - 0x10], xmm0
	movups	xmmword ptr [rdi], xmm1
	add	rbx, 0x80
	add	rdi, 0x80
	lea	rsi, [rsi]
	add	rcx, -0x80
	jne	.label_439
.label_435:
	cmp	rax, r8
	je	.label_461
	lea	rdi, [r15 + r8]
	mov	rsp, rsp
	add	rbp, r8
	nop	
	jmp	.label_462
.label_630:
	lea	rbx, [rax - 0x20]
	mov	ecx, ebx
	mov	rbp, rbp
	shr	ecx, 5
	mov	rsp, rsp
	inc	ecx
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	test	cl, 3
	je	.label_464
	lea	ecx, [rax - 0x20]
	shr	ecx, 5
	inc	ecx
	mov	rbp, rbp
	and	ecx, 3
	nop	
	neg	rcx
	mov	rbp, rbp
	xor	edi, edi
.label_474:
	movups	xmm0, xmmword ptr [rbp + rdi]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	movups	xmmword ptr [r12 + rdi], xmm0
	movups	xmmword ptr [r12 + rdi + 0x10], xmm1
	add	rdi, 0x20
	inc	rcx
	mov	rsp, rsp
	jne	.label_474
.label_464:
	lea	rsi, [rsi]
	cmp	rbx, 0x60
	jb	.label_481
	lea	rdi, [rdi]
	mov	rcx, r8
	mov	rbp, rbp
	sub	rcx, rdi
	lea	rbx, [rbp + rdi + 0x70]
	lea	rdi, [r12 + rdi + 0x70]
.label_488:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x50], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x40], xmm1
	nop	
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbx]
	movups	xmmword ptr [rdi - 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi], xmm1
	add	rbx, 0x80
	add	rdi, 0x80
	add	rcx, -0x80
	lea	rdi, [rdi]
	jne	.label_488
.label_481:
	cmp	rax, r8
	je	.label_358
	lea	rsi, [rsi]
	lea	rdi, [r12 + r8]
	add	rbp, r8
	jmp	.label_381
.label_689:
	lea	rsi, [rsi]
	lea	rbx, [rax - 0x20]
	nop	
	mov	edx, ebx
	shr	edx, 5
	mov	rbp, rbp
	inc	edx
	xor	edi, edi
	test	dl, 3
	nop	
	je	.label_508
	lea	rdi, [rdi]
	lea	edx, [rax - 0x20]
	shr	edx, 5
	inc	edx
	and	edx, 3
	lea	rsi, [rsi]
	neg	rdx
	xor	edi, edi
.label_518:
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rbp + rdi]
	nop	
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	movups	xmmword ptr [r14 + rdi], xmm0
	nop	
	movups	xmmword ptr [r14 + rdi + 0x10], xmm1
	lea	rsi, [rsi]
	add	rdi, 0x20
	lea	rdi, [rdi]
	inc	rdx
	jne	.label_518
.label_508:
	lea	rsi, [rsi]
	cmp	rbx, 0x60
	jb	.label_521
	mov	rdx, rcx
	nop	
	sub	rdx, rdi
	lea	rsi, [rsi]
	lea	rbx, [rbp + rdi + 0x70]
	nop	
	lea	rdi, [r14 + rdi + 0x70]
.label_621:
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rbx - 0x70]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	nop	
	movups	xmmword ptr [rdi - 0x50], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	nop	
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	movups	xmm1, xmmword ptr [rbx]
	movups	xmmword ptr [rdi - 0x10], xmm0
	nop	
	movups	xmmword ptr [rdi], xmm1
	mov	rsp, rsp
	add	rbx, 0x80
	mov	rbp, rbp
	add	rdi, 0x80
	add	rdx, -0x80
	mov	rbp, rbp
	jne	.label_621
.label_521:
	cmp	rax, rcx
	je	.label_367
	lea	rdx, [r14 + rcx]
	lea	rsi, [rsi]
	add	rbp, rcx
	jmp	.label_359
.label_411:
	lea	rbx, [rax - 0x20]
	nop	
	mov	edx, ebx
	nop	
	shr	edx, 5
	inc	edx
	mov	rsp, rsp
	xor	edi, edi
	test	dl, 3
	je	.label_404
	lea	edx, [rax - 0x20]
	shr	edx, 5
	inc	edx
	nop	
	and	edx, 3
	neg	rdx
	lea	rsi, [rsi]
	xor	edi, edi
.label_556:
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rbp + rdi]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	lea	rsi, [rsi]
	movups	xmmword ptr [r14 + rdi], xmm0
	nop	
	movups	xmmword ptr [r14 + rdi + 0x10], xmm1
	mov	rsp, rsp
	add	rdi, 0x20
	inc	rdx
	mov	rbp, rbp
	jne	.label_556
.label_404:
	lea	rdi, [rdi]
	cmp	rbx, 0x60
	lea	rsi, [rsi]
	jb	.label_564
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	sub	rdx, rdi
	lea	rbx, [rbp + rdi + 0x70]
	lea	rdi, [r14 + rdi + 0x70]
.label_569:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbx - 0x60]
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x50]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rbx - 0x30]
	nop	
	movups	xmm1, xmmword ptr [rbx - 0x20]
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	nop	
	movups	xmm1, xmmword ptr [rbx]
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x10], xmm0
	movups	xmmword ptr [rdi], xmm1
	nop	
	add	rbx, 0x80
	nop	
	add	rdi, 0x80
	add	rdx, -0x80
	mov	rbp, rbp
	jne	.label_569
.label_564:
	cmp	rax, rcx
	je	.label_367
	lea	rdi, [rdi]
	lea	rdx, [r14 + rcx]
	lea	rsi, [rsi]
	add	rbp, rcx
	lea	rdi, [rdi]
	jmp	.label_421
.label_465:
	lea	rbx, [rax - 0x20]
	mov	edx, ebx
	nop	
	shr	edx, 5
	inc	edx
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	test	dl, 3
	mov	rsp, rsp
	je	.label_668
	lea	edx, [rax - 0x20]
	shr	edx, 5
	nop	
	inc	edx
	and	edx, 3
	neg	rdx
	lea	rsi, [rsi]
	xor	edi, edi
.label_602:
	movups	xmm0, xmmword ptr [rbp + rdi]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	mov	rsp, rsp
	movups	xmmword ptr [r14 + rdi], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [r14 + rdi + 0x10], xmm1
	mov	rsp, rsp
	add	rdi, 0x20
	lea	rdi, [rdi]
	inc	rdx
	lea	rsi, [rsi]
	jne	.label_602
.label_668:
	cmp	rbx, 0x60
	jb	.label_607
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	sub	rdx, rdi
	lea	rbx, [rbp + rdi + 0x70]
	lea	rdi, [r14 + rdi + 0x70]
.label_611:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x60], xmm1
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	nop	
	movups	xmm0, xmmword ptr [rbx - 0x10]
	movups	xmm1, xmmword ptr [rbx]
	movups	xmmword ptr [rdi - 0x10], xmm0
	nop	
	movups	xmmword ptr [rdi], xmm1
	add	rbx, 0x80
	nop	
	add	rdi, 0x80
	lea	rdi, [rdi]
	add	rdx, -0x80
	jne	.label_611
.label_607:
	cmp	rax, rcx
	lea	rdi, [rdi]
	je	.label_367
	lea	rdx, [r14 + rcx]
	add	rbp, rcx
	mov	rbp, rbp
	jmp	.label_475
.label_525:
	lea	rbx, [rax - 0x20]
	lea	rdi, [rdi]
	mov	edx, ebx
	mov	rsp, rsp
	shr	edx, 5
	mov	rbp, rbp
	inc	edx
	xor	edi, edi
	mov	rbp, rbp
	test	dl, 3
	je	.label_633
	mov	rbp, rbp
	lea	edx, [rax - 0x20]
	shr	edx, 5
	inc	edx
	and	edx, 3
	neg	rdx
	xor	edi, edi
.label_639:
	movups	xmm0, xmmword ptr [rbp + rdi]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	lea	rsi, [rsi]
	movups	xmmword ptr [r14 + rdi], xmm0
	nop	
	movups	xmmword ptr [r14 + rdi + 0x10], xmm1
	add	rdi, 0x20
	inc	rdx
	jne	.label_639
.label_633:
	lea	rdi, [rdi]
	cmp	rbx, 0x60
	mov	rsp, rsp
	jb	.label_644
	nop	
	mov	rdx, rcx
	sub	rdx, rdi
	nop	
	lea	rbx, [rbp + rdi + 0x70]
	lea	rdi, [rdi]
	lea	rdi, [r14 + rdi + 0x70]
.label_650:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x60], xmm1
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbx - 0x50]
	nop	
	movups	xmm1, xmmword ptr [rbx - 0x40]
	nop	
	movups	xmmword ptr [rdi - 0x50], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	nop	
	movups	xmm1, xmmword ptr [rbx - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbx - 0x10]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rbx]
	movups	xmmword ptr [rdi - 0x10], xmm0
	nop	
	movups	xmmword ptr [rdi], xmm1
	mov	rsp, rsp
	add	rbx, 0x80
	nop	
	add	rdi, 0x80
	lea	rsi, [rsi]
	add	rdx, -0x80
	nop	
	jne	.label_650
.label_644:
	cmp	rax, rcx
	je	.label_664
	mov	rbp, rbp
	lea	rdx, [r14 + rcx]
	nop	
	add	rbp, rcx
	mov	rbp, rbp
	jmp	.label_536
.label_560:
	mov	rsp, rsp
	lea	rbx, [rax - 0x20]
	mov	ecx, ebx
	mov	rsp, rsp
	shr	ecx, 5
	lea	rdi, [rdi]
	inc	ecx
	xor	edi, edi
	mov	rbp, rbp
	test	cl, 3
	mov	rsp, rsp
	je	.label_670
	nop	
	lea	ecx, [rax - 0x20]
	shr	ecx, 5
	inc	ecx
	lea	rdi, [rdi]
	and	ecx, 3
	neg	rcx
	nop	
	xor	edi, edi
.label_675:
	movups	xmm0, xmmword ptr [rbp + rdi]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	movups	xmmword ptr [r15 + rdi], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [r15 + rdi + 0x10], xmm1
	mov	rsp, rsp
	add	rdi, 0x20
	lea	rdi, [rdi]
	inc	rcx
	lea	rdi, [rdi]
	jne	.label_675
.label_670:
	mov	rsp, rsp
	cmp	rbx, 0x60
	jb	.label_682
	mov	rcx, r8
	nop	
	sub	rcx, rdi
	lea	rbx, [rbp + rdi + 0x70]
	mov	rsp, rsp
	lea	rdi, [r15 + rdi + 0x70]
.label_686:
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbx - 0x70]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	nop	
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	nop	
	movups	xmmword ptr [rdi - 0x40], xmm1
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	movups	xmm1, xmmword ptr [rbx]
	movups	xmmword ptr [rdi - 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi], xmm1
	mov	rsp, rsp
	add	rbx, 0x80
	add	rdi, 0x80
	mov	rsp, rsp
	add	rcx, -0x80
	jne	.label_686
.label_682:
	cmp	rax, r8
	je	.label_362
	nop	
	lea	rdi, [r15 + r8]
	lea	rdi, [rdi]
	add	rbp, r8
	jmp	.label_366
.label_586:
	lea	rbx, [rax - 0x20]
	mov	rsp, rsp
	mov	edx, ebx
	lea	rsi, [rsi]
	shr	edx, 5
	inc	edx
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	test	dl, 3
	je	.label_371
	lea	edx, [rax - 0x20]
	shr	edx, 5
	mov	rbp, rbp
	inc	edx
	and	edx, 3
	neg	rdx
	xor	edi, edi
.label_472:
	movups	xmm0, xmmword ptr [rbp + rdi]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	movups	xmmword ptr [r14 + rdi], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [r14 + rdi + 0x10], xmm1
	add	rdi, 0x20
	lea	rsi, [rsi]
	inc	rdx
	nop	
	jne	.label_472
.label_371:
	mov	rsp, rsp
	cmp	rbx, 0x60
	lea	rdi, [rdi]
	jb	.label_512
	mov	rdx, rcx
	mov	rsp, rsp
	sub	rdx, rdi
	lea	rbx, [rbp + rdi + 0x70]
	lea	rdi, [r14 + rdi + 0x70]
.label_546:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	nop	
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x50]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbx]
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x10], xmm0
	movups	xmmword ptr [rdi], xmm1
	add	rbx, 0x80
	mov	rbp, rbp
	add	rdi, 0x80
	mov	rsp, rsp
	add	rdx, -0x80
	lea	rsi, [rsi]
	jne	.label_546
.label_512:
	cmp	rax, rcx
	je	.label_414
	lea	rdx, [r14 + rcx]
	nop	
	add	rbp, rcx
	mov	rsp, rsp
	jmp	.label_596
.label_454:
	lea	rbx, [rax - 0x20]
	mov	rsp, rsp
	mov	edx, ebx
	nop	
	shr	edx, 5
	inc	edx
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	test	dl, 3
	je	.label_672
	lea	edx, [rax - 0x20]
	shr	edx, 5
	mov	rsp, rsp
	inc	edx
	mov	rbp, rbp
	and	edx, 3
	neg	rdx
	xor	edi, edi
.label_426:
	nop	
	movups	xmm0, xmmword ptr [rbp + rdi]
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	mov	rsp, rsp
	movups	xmmword ptr [r15 + rdi], xmm0
	movups	xmmword ptr [r15 + rdi + 0x10], xmm1
	mov	rbp, rbp
	add	rdi, 0x20
	inc	rdx
	nop	
	jne	.label_426
.label_672:
	cmp	rbx, 0x60
	mov	rsp, rsp
	jb	.label_436
	nop	
	mov	rdx, rcx
	lea	rdi, [rdi]
	sub	rdx, rdi
	lea	rbx, [rbp + rdi + 0x70]
	lea	rdi, [r15 + rdi + 0x70]
.label_440:
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbx - 0x70]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	nop	
	movups	xmm0, xmmword ptr [rbx - 0x50]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	nop	
	movups	xmm0, xmmword ptr [rbx - 0x30]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rbx - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbx - 0x10]
	nop	
	movups	xmm1, xmmword ptr [rbx]
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi], xmm1
	add	rbx, 0x80
	lea	rsi, [rsi]
	add	rdi, 0x80
	lea	rsi, [rsi]
	add	rdx, -0x80
	mov	rbp, rbp
	jne	.label_440
.label_436:
	lea	rsi, [rsi]
	cmp	rax, rcx
	je	.label_463
	nop	
	lea	rdx, [r15 + rcx]
	add	rbp, rcx
	jmp	.label_387
.label_485:
	lea	rbx, [rax - 0x20]
	lea	rdi, [rdi]
	mov	ecx, ebx
	mov	rsp, rsp
	shr	ecx, 5
	inc	ecx
	xor	edi, edi
	test	cl, 3
	je	.label_468
	lea	ecx, [rax - 0x20]
	lea	rsi, [rsi]
	shr	ecx, 5
	lea	rsi, [rsi]
	inc	ecx
	and	ecx, 3
	lea	rsi, [rsi]
	neg	rcx
	lea	rdi, [rdi]
	xor	edi, edi
.label_476:
	movups	xmm0, xmmword ptr [rbp + rdi]
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	lea	rdi, [rdi]
	movups	xmmword ptr [r14 + rdi], xmm0
	movups	xmmword ptr [r14 + rdi + 0x10], xmm1
	mov	rbp, rbp
	add	rdi, 0x20
	lea	rdi, [rdi]
	inc	rcx
	mov	rbp, rbp
	jne	.label_476
.label_468:
	cmp	rbx, 0x60
	lea	rdi, [rdi]
	jb	.label_484
	nop	
	mov	rcx, r8
	sub	rcx, rdi
	lea	rbx, [rbp + rdi + 0x70]
	nop	
	lea	rdi, [r14 + rdi + 0x70]
.label_490:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x70], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	movups	xmm1, xmmword ptr [rbx]
	nop	
	movups	xmmword ptr [rdi - 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi], xmm1
	nop	
	add	rbx, 0x80
	lea	rdi, [rdi]
	add	rdi, 0x80
	add	rcx, -0x80
	jne	.label_490
.label_484:
	mov	rsp, rsp
	cmp	rax, r8
	je	.label_505
	lea	rdi, [r14 + r8]
	lea	rdi, [rdi]
	add	rbp, r8
	nop	
.label_467:
	mov	cl, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdi], cl
	nop	
	inc	rdi
	cmp	r15, rbp
	jne	.label_467
	jmp	.label_505
.label_498:
	lea	rbx, [rax - 0x20]
	nop	
	mov	ecx, ebx
	lea	rdi, [rdi]
	shr	ecx, 5
	inc	ecx
	xor	edi, edi
	test	cl, 3
	je	.label_514
	lea	rsi, [rsi]
	lea	ecx, [rax - 0x20]
	mov	rbp, rbp
	shr	ecx, 5
	inc	ecx
	nop	
	and	ecx, 3
	nop	
	neg	rcx
	xor	edi, edi
.label_520:
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rbp + rdi]
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	mov	rsp, rsp
	movups	xmmword ptr [r15 + rdi], xmm0
	movups	xmmword ptr [r15 + rdi + 0x10], xmm1
	add	rdi, 0x20
	mov	rbp, rbp
	inc	rcx
	mov	rsp, rsp
	jne	.label_520
.label_514:
	lea	rdi, [rdi]
	cmp	rbx, 0x60
	nop	
	jb	.label_528
	lea	rdi, [rdi]
	mov	rcx, r8
	lea	rdi, [rdi]
	sub	rcx, rdi
	lea	rbx, [rbp + rdi + 0x70]
	mov	rsp, rsp
	lea	rdi, [r15 + rdi + 0x70]
.label_625:
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbx - 0x70]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x70], xmm0
	nop	
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x50]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x20], xmm1
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbx - 0x10]
	movups	xmm1, xmmword ptr [rbx]
	movups	xmmword ptr [rdi - 0x10], xmm0
	movups	xmmword ptr [rdi], xmm1
	mov	rsp, rsp
	add	rbx, 0x80
	add	rdi, 0x80
	lea	rsi, [rsi]
	add	rcx, -0x80
	lea	rdi, [rdi]
	jne	.label_625
.label_528:
	cmp	rax, r8
	je	.label_526
	lea	rbx, [r15 + r8]
	add	rbp, r8
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x18]
.label_412:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rdi
	nop	word ptr cs:[rax + rax]
.label_469:
	mov	cl, byte ptr [rbp]
	lea	rsi, [rsi]
	inc	rbp
	nop	
	mov	byte ptr [rbx], cl
	inc	rbx
	cmp	r14, rbp
	lea	rdi, [rdi]
	jne	.label_469
.label_526:
	add	r15, rax
.label_502:
	mov	rsp, rsp
	mov	word ptr [r15], 0x73
	xor	ebx, ebx
	mov	edi, 1
	xor	eax, eax
	mov	r15, rsi
	mov	rsp, rsp
	call	__printf_chk
	mov	eax, 0xf000
	and	eax, dword ptr [r13 + 0x18]
	lea	rsi, [rsi]
	cmp	eax, 0xa000
	jne	.label_415
	nop	
	mov	rsi, qword ptr [r13 + 0x30]
	lea	rsi, [rsi]
	mov	rdi, r12
	call	areadlink_with_size
	lea	rdi, [rdi]
	mov	r13, rax
	test	r13, r13
	je	.label_574
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.195
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	xor	edi, edi
	call	get_quoting_style
	mov	edi, eax
	mov	rsi, r13
	mov	rsp, rsp
	call	quotearg_style
	mov	r12, rax
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x18], 2
	jl	.label_584
	mov	rbp, qword ptr [rsp + 0x20]
.label_603:
	lea	rdi, [rdi]
	mov	bl, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	nop	
	test	rax, rax
	je	.label_407
	lea	rdi, [rdi]
	mov	eax, 1
	mov	rsp, rsp
	mov	cl, bl
	shl	rax, cl
	movzx	ecx, bl
	cmp	ecx, 0x3f
	ja	.label_594
	movabs	rcx, 0x200000000001
	and	rax, rcx
	je	.label_594
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x20]
	mov	byte ptr [rax], bl
	inc	rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rax
.label_594:
	mov	rbp, rbp
	inc	rbp
	mov	rsp, rsp
	cmp	rbp, r14
	jb	.label_603
	mov	rsp, rsp
	jmp	.label_407
.label_574:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.194
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, r12
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	eax, eax
	nop	
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	error
	nop	
	mov	bl, 1
	jmp	.label_415
.label_584:
	mov	rbp, qword ptr [rsp + 0x20]
.label_407:
	lea	rsi, [rsi]
	cmp	rbp, r14
	mov	rsp, rsp
	jae	.label_622
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, rdi
	sub	r8, rbp
	mov	rsi, r15
	mov	rsp, rsp
	add	r8, rsi
	cmp	r8, 0x1f
	mov	rbp, rbp
	ja	.label_624
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	jmp	.label_629
.label_622:
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	jmp	.label_573
.label_513:
	lea	rbx, [rax - 0x20]
	mov	ecx, ebx
	shr	ecx, 5
	nop	
	inc	ecx
	xor	edi, edi
	test	cl, 3
	je	.label_634
	lea	ecx, [rax - 0x20]
	nop	
	shr	ecx, 5
	inc	ecx
	and	ecx, 3
	neg	rcx
	xor	edi, edi
.label_638:
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbp + rdi]
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	movups	xmmword ptr [r14 + rdi], xmm0
	movups	xmmword ptr [r14 + rdi + 0x10], xmm1
	lea	rdi, [rdi]
	add	rdi, 0x20
	inc	rcx
	nop	
	jne	.label_638
.label_634:
	cmp	rbx, 0x60
	mov	rbp, rbp
	jb	.label_657
	mov	rsp, rsp
	mov	rcx, r8
	sub	rcx, rdi
	lea	rsi, [rsi]
	lea	rbx, [rbp + rdi + 0x70]
	mov	rsp, rsp
	lea	rdi, [r14 + rdi + 0x70]
.label_648:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	nop	
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x50], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x30], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x20], xmm1
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rbx - 0x10]
	movups	xmm1, xmmword ptr [rbx]
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi], xmm1
	add	rbx, 0x80
	nop	
	add	rdi, 0x80
	mov	rbp, rbp
	add	rcx, -0x80
	jne	.label_648
.label_657:
	cmp	rax, r8
	lea	rdi, [rdi]
	je	.label_505
	lea	rdi, [rdi]
	lea	rdi, [r14 + r8]
	add	rbp, r8
	nop	
.label_408:
	mov	cl, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdi], cl
	lea	rdi, [rdi]
	inc	rdi
	lea	rsi, [rsi]
	cmp	r15, rbp
	jne	.label_408
.label_505:
	mov	rsp, rsp
	add	r14, rax
	nop	
	mov	word ptr [r14], 0x73
	jmp	.label_391
.label_624:
	mov	rbp, rbp
	mov	rcx, r8
	lea	rdi, [rdi]
	and	rcx, 0xffffffffffffffe0
	mov	rax, qword ptr [rsp + 0x20]
	je	.label_629
	lea	rdx, [rsi + rdi - 1]
	mov	rsp, rsp
	cmp	rax, rdx
	lea	rdi, [rdi]
	ja	.label_550
	mov	rsp, rsp
	dec	rdi
	sub	rdi, rbp
	lea	rdi, [rdi]
	add	rdi, rsi
	mov	rbp, rbp
	add	rdi, rax
	cmp	rbp, rdi
	lea	rsi, [rsi]
	ja	.label_550
.label_629:
	mov	rdx, rax
.label_590:
	mov	cl, byte ptr [rbp]
	inc	rbp
	nop	
	mov	byte ptr [rdx], cl
	inc	rdx
	cmp	r14, rbp
	jne	.label_590
.label_580:
	add	rax, r8
.label_573:
	mov	rsp, rsp
	mov	word ptr [rax], 0x73
	xor	ebx, ebx
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	rdx, r12
	call	__printf_chk
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsp, rsp
	call	free
	jmp	.label_415
.label_614:
	mov	esi, 0x3f
	lea	rsi, [rsi]
	call	__overflow
	mov	rsp, rsp
	jmp	.label_532
.label_550:
	lea	rbx, [r8 - 0x20]
	mov	edx, ebx
	lea	rdi, [rdi]
	shr	edx, 5
	lea	rsi, [rsi]
	inc	edx
	xor	edi, edi
	lea	rsi, [rsi]
	test	dl, 3
	je	.label_692
	mov	rbp, rbp
	lea	edx, [r8 - 0x20]
	shr	edx, 5
	inc	edx
	and	edx, 3
	nop	
	neg	rdx
	lea	rsi, [rsi]
	xor	edi, edi
.label_370:
	movups	xmm0, xmmword ptr [rbp + rdi]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rbp + rdi + 0x10]
	lea	rsi, [rsi]
	movups	xmmword ptr [rax + rdi], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rax + rdi + 0x10], xmm1
	mov	rbp, rbp
	add	rdi, 0x20
	inc	rdx
	jne	.label_370
.label_692:
	cmp	rbx, 0x60
	lea	rdi, [rdi]
	jb	.label_373
	lea	rsi, [rsi]
	mov	rdx, rcx
	nop	
	sub	rdx, rdi
	lea	rdi, [rdi]
	lea	rbx, [rbp + rdi + 0x70]
	lea	rdi, [rdi]
	lea	rdi, [rax + rdi + 0x70]
.label_384:
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rbx - 0x70]
	nop	
	movups	xmm1, xmmword ptr [rbx - 0x60]
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x70], xmm0
	nop	
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x20], xmm1
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbx - 0x10]
	movups	xmm1, xmmword ptr [rbx]
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x10], xmm0
	movups	xmmword ptr [rdi], xmm1
	nop	
	add	rbx, 0x80
	mov	rbp, rbp
	add	rdi, 0x80
	add	rdx, -0x80
	jne	.label_384
.label_373:
	cmp	r8, rcx
	je	.label_580
	lea	rdx, [rax + rcx]
	add	rbp, rcx
	lea	rdi, [rdi]
	jmp	.label_590
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a0f0

	.globl human_time
	.type human_time, @function
human_time:
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x70
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	qword ptr [rsp + 0x40], rdi
	mov	qword ptr [rsp + 0x48], rbx
	nop	
	mov	rdi,  qword ptr [word ptr [rip + human_time.tz]]
	mov	rsp, rsp
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_695
	mov	edi, OFFSET FLAT:.str_2
	nop	
	call	getenv
	mov	rdi, rax
	nop	
	call	tzalloc
	mov	rdi, rax
	mov	qword ptr [word ptr [rip + human_time.tz]],  rdi
.label_695:
	lea	rsi, [rsp + 0x40]
	mov	rsp, rsp
	lea	rdx, [rsp + 8]
	call	localtime_rz
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_697
	mov	r8,  qword ptr [word ptr [rip + human_time.tz]]
	lea	rcx, [rsp + 8]
	mov	edi, OFFSET FLAT:human_time.str
	lea	rdi, [rdi]
	mov	esi, 0x3d
	mov	edx, OFFSET FLAT:.str.203
	mov	r9d, ebx
	call	nstrftime
	jmp	.label_696
.label_697:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rsi, [rsp + 0x50]
	nop	
	call	imaxtostr
	lea	rdi, [rdi]
	mov	r8, rax
	mov	edi, OFFSET FLAT:human_time.str
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, 0x3d
	mov	ecx, OFFSET FLAT:.str.204
	xor	eax, eax
	mov	r9d, ebx
	call	__sprintf_chk
.label_696:
	add	rsp, 0x70
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a1d0

	.globl out_epoch_sec
	.type out_epoch_sec, @function
out_epoch_sec:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x48
	nop	
	mov	r13, rcx
	mov	rbp, rdx
	mov	r14, rsi
	mov	rbp, rbp
	mov	r15, rdi
	mov	esi, 0x2e
	mov	rdx, r14
	mov	rbp, rbp
	call	memchr
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_700
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rbp
	lea	rsi, [rsi]
	mov	r12, rbx
	sub	r12, r15
	mov	byte ptr [r15 + r14], 0
	movsx	eax, byte ptr [rbx + 1]
	lea	rdi, [rdi]
	add	eax, -0x30
	lea	rdi, [rdi]
	mov	ebp, 9
	cmp	eax, 9
	ja	.label_708
	mov	rdi, rbx
	mov	rbp, rbp
	inc	rdi
	xor	esi, esi
	nop	
	mov	edx, 0xa
	mov	rbp, rbp
	call	strtol
	cmp	rax, 0x7fffffff
	mov	ebp, 0x7fffffff
	cmovle	ebp, eax
	nop	
	test	ebp, ebp
	lea	rsi, [rsi]
	je	.label_724
.label_708:
	mov	rsp, rsp
	movsx	eax, byte ptr [rbx - 1]
	mov	rbp, rbp
	add	eax, -0x30
	nop	
	xor	ecx, ecx
	cmp	eax, 9
	nop	
	ja	.label_753
	mov	byte ptr [rbx], 0
	nop	word ptr cs:[rax + rax]
.label_754:
	nop	
	movsx	eax, byte ptr [rbx - 2]
	dec	rbx
	add	eax, -0x30
	nop	
	cmp	eax, 0xa
	jb	.label_754
	mov	rsp, rsp
	xor	r14d, r14d
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	rbp, rbp
	mov	rdi, rbx
	call	strtol
	cmp	rax, 0x7fffffff
	mov	rsp, rsp
	mov	edx, 0x7fffffff
	mov	rbp, rbp
	cmovle	rdx, rax
	lea	rsi, [rsi]
	mov	ecx, 0x7fffffff
	cmovle	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 2
	mov	rsp, rsp
	jl	.label_753
	mov	qword ptr [rsp + 0x40], rcx
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x30
	lea	rdi, [rdi]
	sete	cl
	movzx	ecx, cl
	add	rcx, rbx
	lea	rdi, [rdi]
	mov	r12, rcx
	lea	rsi, [rsi]
	sub	r12, r15
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + decimal_point_len]]
	mov	rsp, rsp
	movsxd	rdx, edx
	mov	edi, edx
	sub	edi, esi
	cmp	rdx, rsi
	lea	rdi, [rdi]
	cmova	r14d, edi
	cmp	r14d, 2
	jl	.label_720
	sub	r14d, ebp
	lea	rsi, [rsi]
	cmp	r14d, 2
	nop	
	jl	.label_720
	mov	rsp, rsp
	xor	r12d, r12d
	cmp	rcx, r15
	nop	
	mov	rdi, r15
	jbe	.label_723
	lea	rdi, [rdi]
	movzx	eax, al
	cmp	eax, 0x30
	lea	rsi, [rsi]
	sete	al
	lea	rsi, [rsi]
	movzx	eax, al
	add	rbx, rax
	xor	eax, eax
	nop	
	mov	rcx, r15
	mov	rdi, r15
	nop	word ptr [rax + rax]
.label_743:
	nop	
	movzx	edx, byte ptr [rcx]
	cmp	edx, 0x2d
	jne	.label_732
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_737
.label_732:
	lea	rdi, [rdi]
	mov	byte ptr [rdi], dl
	nop	
	inc	rdi
.label_737:
	inc	rcx
	nop	
	cmp	rbx, rcx
	mov	rsp, rsp
	jne	.label_743
	lea	rdi, [rdi]
	mov	r12, rdi
	lea	rsi, [rsi]
	sub	r12, r15
	xor	ecx, ecx
	test	al, 1
	jne	.label_747
.label_723:
	nop	
	mov	esi, 1
	lea	rsi, [rsi]
	mov	rdx, -1
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.205
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	r8d, r14d
	mov	rbp, rbp
	call	__sprintf_chk
	mov	rsp, rsp
	movsxd	rcx, eax
.label_747:
	add	r12, rcx
.label_720:
	nop	
	mov	rcx, qword ptr [rsp + 0x40]
.label_753:
	mov	qword ptr [rsp + 0x40], rcx
	cmp	ebp, 8
	nop	
	jg	.label_698
	mov	r14, r12
	jmp	.label_705
.label_700:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], rax
	xor	ebp, ebp
	jmp	.label_705
.label_698:
	mov	dword ptr [rsp + 0x1c], ebp
	mov	edi, 1
	mov	dword ptr [rsp + 0x3c], 9
	lea	rsi, [rsi]
	jmp	.label_710
.label_724:
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	mov	r14, r12
	xor	ebp, ebp
.label_705:
	lea	rdi, [rdi]
	mov	eax, 9
	lea	rdi, [rdi]
	mov	ecx, 9
	sub	ecx, ebp
	mov	rbp, rbp
	mov	edi, 1
	cmp	ecx, 7
	ja	.label_722
	mov	esi, ebp
	lea	rdi, [rdi]
	jmp	.label_728
.label_722:
	mov	edx, ecx
	and	edx, 0xfffffff8
	lea	rdi, [rdi]
	mov	r8d, ecx
	mov	rsp, rsp
	and	r8d, 0xfffffff8
	mov	esi, ebp
	je	.label_728
	mov	esi, 1
	lea	rsi, [rsi]
	sub	esi, ebp
	mov	edi, esi
	shr	edi, 3
	mov	rsp, rsp
	inc	edi
	mov	rsp, rsp
	test	dil, 7
	nop	
	je	.label_733
	and	edi, 7
	lea	rsi, [rsi]
	neg	edi
	mov	rbp, rbp
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_712]]
	nop	
	xor	ebx, ebx
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_746]]
	movdqa	xmm1, xmm0
	nop	word ptr cs:[rax + rax]
.label_716:
	pshufd	xmm3, xmm0, 0xf5
	nop	
	pmuludq	xmm0, xmm2
	lea	rsi, [rsi]
	pshufd	xmm0, xmm0, 0xe8
	lea	rdi, [rdi]
	pmuludq	xmm3, xmm2
	lea	rdi, [rdi]
	pshufd	xmm3, xmm3, 0xe8
	lea	rdi, [rdi]
	punpckldq	xmm0, xmm3
	pshufd	xmm3, xmm1, 0xf5
	mov	rbp, rbp
	pmuludq	xmm1, xmm2
	pshufd	xmm1, xmm1, 0xe8
	pmuludq	xmm3, xmm2
	pshufd	xmm3, xmm3, 0xe8
	punpckldq	xmm1, xmm3
	add	ebx, 8
	inc	edi
	mov	rbp, rbp
	jne	.label_716
	jmp	.label_713
.label_733:
	mov	rsp, rsp
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_712]]
	xor	ebx, ebx
	movdqa	xmm1, xmm0
.label_713:
	cmp	esi, 0x38
	jb	.label_717
	mov	esi, 9
	sub	esi, ebp
	lea	rsi, [rsi]
	and	esi, 0xfffffff8
	nop	
	sub	esi, ebx
	lea	rdi, [rdi]
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_721]]
	nop	word ptr cs:[rax + rax]
.label_729:
	lea	rdi, [rdi]
	pshufd	xmm3, xmm0, 0xf5
	mov	rsp, rsp
	pmuludq	xmm0, xmm2
	pshufd	xmm0, xmm0, 0xe8
	nop	
	pmuludq	xmm3, xmm2
	pshufd	xmm3, xmm3, 0xe8
	lea	rsi, [rsi]
	punpckldq	xmm0, xmm3
	pshufd	xmm3, xmm1, 0xf5
	lea	rsi, [rsi]
	pmuludq	xmm1, xmm2
	pshufd	xmm1, xmm1, 0xe8
	mov	rsp, rsp
	pmuludq	xmm3, xmm2
	mov	rbp, rbp
	pshufd	xmm3, xmm3, 0xe8
	punpckldq	xmm1, xmm3
	mov	rsp, rsp
	add	esi, -0x40
	lea	rdi, [rdi]
	jne	.label_729
.label_717:
	lea	rdi, [rdi]
	pshufd	xmm2, xmm1, 0xf5
	nop	
	pmuludq	xmm1, xmm0
	pshufd	xmm1, xmm1, 0xe8
	pshufd	xmm0, xmm0, 0xf5
	nop	
	pmuludq	xmm0, xmm2
	lea	rdi, [rdi]
	pshufd	xmm0, xmm0, 0xe8
	punpckldq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	lea	rdi, [rdi]
	pshufd	xmm2, xmm1, 0xf5
	pmuludq	xmm1, xmm0
	nop	
	pshufd	xmm1, xmm1, 0xe8
	mov	rsp, rsp
	pshufd	xmm0, xmm0, 0xf5
	lea	rsi, [rsi]
	pmuludq	xmm0, xmm2
	nop	
	pshufd	xmm0, xmm0, 0xe8
	mov	rbp, rbp
	punpckldq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0xe5
	pshufd	xmm2, xmm1, 0xf5
	pmuludq	xmm1, xmm0
	lea	rsi, [rsi]
	pshufd	xmm1, xmm1, 0xe8
	pshufd	xmm0, xmm0, 0xf5
	pmuludq	xmm0, xmm2
	mov	rbp, rbp
	pshufd	xmm0, xmm0, 0xe8
	mov	rbp, rbp
	punpckldq	xmm1, xmm0
	mov	rbp, rbp
	movd	edi, xmm1
	lea	rsi, [rsi]
	cmp	ecx, r8d
	mov	rsp, rsp
	je	.label_750
	lea	rsi, [rsi]
	add	edx, ebp
	mov	esi, edx
.label_728:
	lea	rsi, [rsi]
	sub	eax, esi
	nop	dword ptr [rax + rax]
.label_739:
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	dec	eax
	jne	.label_739
.label_750:
	nop	
	mov	dword ptr [rsp + 0x3c], ebp
	mov	dword ptr [rsp + 0x1c], ebp
	mov	r12, r14
.label_710:
	mov	rbp, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	movabs	r14, 0x1288100000001
	nop	
	movsxd	rsi, edi
	nop	
	mov	rax, r13
	cqo	
	idiv	rsi
	mov	rbp, rbp
	mov	rdi, rax
	test	rbp, rbp
	lea	rsi, [rsi]
	jns	.label_731
	lea	rsi, [rsi]
	test	r13, r13
	nop	
	je	.label_731
	mov	eax, 0x3b9aca00
	mov	rbp, rbp
	xor	edx, edx
	idiv	esi
	lea	rdi, [rdi]
	mov	ecx, eax
	sub	ecx, edi
	mov	rax, r13
	mov	rbp, rbp
	cqo	
	nop	
	idiv	rsi
	mov	rbp, rbp
	test	rdx, rdx
	setne	al
	mov	rbp, rbp
	movzx	eax, al
	lea	rdi, [rdi]
	mov	edi, ecx
	lea	rdi, [rdi]
	sub	edi, eax
	setne	al
	movzx	eax, al
	mov	rsp, rsp
	add	rbp, rax
	nop	
	je	.label_748
.label_731:
	lea	rsi, [rsi]
	lea	r13, [r15 + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r15
	lea	r15, [r15 + r12]
	cmp	r12, 2
	nop	
	jl	.label_701
	mov	qword ptr [rsp + 0x30], rdi
	mov	qword ptr [rsp + 0x20], rbp
	mov	rbp, r13
	nop	dword ptr [rax]
.label_730:
	mov	bl, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	mov	rsp, rsp
	call	memchr
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_719
	nop	
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	movzx	ecx, bl
	mov	rbp, rbp
	cmp	ecx, 0x3f
	lea	rsi, [rsi]
	ja	.label_727
	and	rax, r14
	nop	
	je	.label_727
	mov	byte ptr [r13], bl
	inc	r13
.label_727:
	mov	rbp, rbp
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, r15
	jb	.label_730
	lea	rsi, [rsi]
	jmp	.label_719
.label_701:
	mov	qword ptr [rsp + 0x30], rdi
	mov	qword ptr [rsp + 0x20], rbp
	nop	
	mov	rbp, r13
.label_719:
	cmp	rbp, r15
	lea	rdi, [rdi]
	jae	.label_736
	mov	rax, r12
	sub	rax, rbp
	mov	rsp, rsp
	add	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	cmp	rax, 0x1f
	mov	rsp, rsp
	jbe	.label_738
	mov	rcx, rax
	lea	rdi, [rdi]
	and	rcx, 0xffffffffffffffe0
	lea	rdi, [rdi]
	je	.label_738
	nop	
	mov	rsi, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rdx, [rsi + r12 - 1]
	cmp	r13, rdx
	nop	
	mov	ebx, dword ptr [rsp + 0x1c]
	lea	rdi, [rdi]
	ja	.label_751
	dec	r12
	sub	r12, rbp
	lea	rdi, [rdi]
	add	r12, rsi
	add	r12, r13
	cmp	rbp, r12
	mov	rsp, rsp
	ja	.label_751
	nop	
	mov	rdx, r13
	mov	rbp, rbp
	mov	r14d, dword ptr [rsp + 0x3c]
	jmp	.label_699
.label_736:
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rsp + 0x1c]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	mov	r14d, dword ptr [rsp + 0x3c]
	lea	rsi, [rsi]
	jmp	.label_707
.label_738:
	mov	rdx, r13
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp + 0x1c]
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rsp + 0x3c]
	nop	word ptr cs:[rax + rax]
.label_699:
	mov	rbp, rbp
	mov	cl, byte ptr [rbp]
	mov	rsp, rsp
	inc	rbp
	mov	rsp, rsp
	mov	byte ptr [rdx], cl
	inc	rdx
	nop	
	cmp	r15, rbp
	mov	rsp, rsp
	jne	.label_699
.label_725:
	nop	
	add	r13, rax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
.label_707:
	mov	rsp, rsp
	mov	byte ptr [r13 + 2], 0
	mov	word ptr [r13], 0x646c
	mov	rbp, rbp
	mov	edi, 1
	nop	
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	mov	rsp, rsp
	jmp	.label_740
.label_748:
	mov	qword ptr [rsp + 0x30], rdi
	mov	rax, r15
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	lea	r15, [rax + 1]
	mov	rbp, rbp
	lea	rbp, [rax + r12]
	nop	
	mov	r13, r15
	lea	rsi, [rsi]
	cmp	r12, 2
	jl	.label_744
	nop	word ptr cs:[rax + rax]
.label_711:
	mov	bl, byte ptr [r13]
	lea	rsi, [rsi]
	movsx	esi, bl
	nop	
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	mov	rsp, rsp
	call	memchr
	lea	rsi, [rsi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_744
	mov	eax, 1
	lea	rdi, [rdi]
	mov	cl, bl
	nop	
	shl	rax, cl
	movzx	ecx, bl
	cmp	ecx, 0x3f
	ja	.label_703
	and	rax, r14
	nop	
	je	.label_703
	mov	byte ptr [r15], bl
	inc	r15
.label_703:
	inc	r13
	nop	
	cmp	r13, rbp
	jb	.label_711
.label_744:
	cmp	r13, rbp
	jae	.label_714
	mov	rax, r12
	mov	rbp, rbp
	sub	rax, r13
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0x28]
	cmp	rax, 0x1f
	nop	
	mov	ebx, dword ptr [rsp + 0x1c]
	mov	rbp, rbp
	jbe	.label_715
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	and	rcx, 0xffffffffffffffe0
	je	.label_715
	nop	
	mov	rsi, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	lea	rdx, [rsi + r12 - 1]
	mov	rsp, rsp
	cmp	r15, rdx
	ja	.label_726
	dec	r12
	mov	rbp, rbp
	sub	r12, r13
	add	r12, rsi
	lea	rdi, [rdi]
	add	r12, r15
	cmp	r13, r12
	mov	rsp, rsp
	ja	.label_726
.label_715:
	mov	rdx, r15
	mov	r14d, dword ptr [rsp + 0x3c]
	nop	dword ptr [rax + rax]
.label_745:
	mov	cl, byte ptr [r13]
	lea	rsi, [rsi]
	inc	r13
	mov	rbp, rbp
	mov	byte ptr [rdx], cl
	lea	rsi, [rsi]
	inc	rdx
	cmp	rbp, r13
	jne	.label_745
.label_735:
	lea	rdi, [rdi]
	add	r15, rax
	mov	rsp, rsp
	jmp	.label_752
.label_714:
	mov	ebx, dword ptr [rsp + 0x1c]
	mov	r14d, dword ptr [rsp + 0x3c]
.label_752:
	mov	dword ptr [r15], 0x66302e
	mov	rsp, rsp
	movsd	xmm0,  qword ptr [word ptr [rip + label_755]]
	mov	edi, 1
	mov	al, 1
	mov	rsi, qword ptr [rsp + 0x28]
	call	__printf_chk
.label_740:
	mov	rdx, qword ptr [rsp + 0x40]
	test	ebx, ebx
	je	.label_702
	mov	rbp, rbp
	sub	ebx, r14d
	xor	r9d, r9d
	test	eax, eax
	cmovs	eax, r9d
	lea	rsi, [rsi]
	sub	edx, eax
	jle	.label_704
	mov	rax,  qword ptr [word ptr [rip + decimal_point_len]]
	movsxd	rcx, edx
	nop	
	cmp	rcx, rax
	jbe	.label_704
	lea	rsi, [rsi]
	sub	edx, r14d
	lea	rsi, [rsi]
	sub	edx, eax
	mov	r9d, edx
.label_704:
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [rip + decimal_point]]
	nop	
	mov	dword ptr [rsp], ebx
	mov	rbp, rbp
	mov	dword ptr [rsp + 8], 0
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.206
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0x30]
	mov	ecx, r14d
	mov	rbp, rbp
	call	__printf_chk
.label_702:
	lea	rdi, [rdi]
	add	rsp, 0x48
	mov	rbp, rbp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
.label_751:
	lea	rsi, [rsi]
	lea	rdx, [rax - 0x20]
	mov	esi, edx
	mov	rbp, rbp
	shr	esi, 5
	inc	esi
	xor	edi, edi
	test	sil, 3
	mov	rsp, rsp
	je	.label_734
	lea	rsi, [rsi]
	lea	esi, [rax - 0x20]
	shr	esi, 5
	lea	rsi, [rsi]
	inc	esi
	mov	rsp, rsp
	and	esi, 3
	lea	rdi, [rdi]
	neg	rsi
	nop	
	xor	edi, edi
	nop	
.label_749:
	movdqu	xmm0, xmmword ptr [rbp + rdi]
	movdqu	xmm1, xmmword ptr [rbp + rdi + 0x10]
	mov	rbp, rbp
	movdqu	xmmword ptr [r13 + rdi], xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r13 + rdi + 0x10], xmm1
	lea	rdi, [rdi]
	add	rdi, 0x20
	inc	rsi
	jne	.label_749
.label_734:
	cmp	rdx, 0x60
	mov	r14d, dword ptr [rsp + 0x3c]
	jb	.label_756
	mov	rdx, rcx
	sub	rdx, rdi
	nop	
	lea	rsi, [rbp + rdi + 0x70]
	lea	rdi, [r13 + rdi + 0x70]
	nop	dword ptr [rax]
.label_709:
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rsi - 0x70]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rsi - 0x60]
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x70], xmm0
	nop	
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rsi - 0x50]
	nop	
	movups	xmm1, xmmword ptr [rsi - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x40], xmm1
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rsi - 0x30]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rsi - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	movdqu	xmm0, xmmword ptr [rsi - 0x10]
	mov	rsp, rsp
	movdqu	xmm1, xmmword ptr [rsi]
	movdqu	xmmword ptr [rdi - 0x10], xmm0
	movdqu	xmmword ptr [rdi], xmm1
	nop	
	add	rsi, 0x80
	add	rdi, 0x80
	nop	
	add	rdx, -0x80
	nop	
	jne	.label_709
.label_756:
	cmp	rax, rcx
	je	.label_725
	lea	rdx, [r13 + rcx]
	add	rbp, rcx
	jmp	.label_699
.label_726:
	lea	rdx, [rax - 0x20]
	mov	rsp, rsp
	mov	esi, edx
	mov	rbp, rbp
	shr	esi, 5
	nop	
	inc	esi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	test	sil, 3
	je	.label_742
	lea	esi, [rax - 0x20]
	mov	rsp, rsp
	shr	esi, 5
	nop	
	inc	esi
	and	esi, 3
	lea	rsi, [rsi]
	neg	rsi
	nop	
	xor	edi, edi
	nop	
.label_741:
	lea	rdi, [rdi]
	movdqu	xmm0, xmmword ptr [r13 + rdi]
	movdqu	xmm1, xmmword ptr [r13 + rdi + 0x10]
	lea	rdi, [rdi]
	movdqu	xmmword ptr [r15 + rdi], xmm0
	movdqu	xmmword ptr [r15 + rdi + 0x10], xmm1
	add	rdi, 0x20
	inc	rsi
	mov	rsp, rsp
	jne	.label_741
.label_742:
	cmp	rdx, 0x60
	mov	r14d, dword ptr [rsp + 0x3c]
	jb	.label_706
	mov	rdx, rcx
	sub	rdx, rdi
	lea	rsi, [r13 + rdi + 0x70]
	lea	rdi, [r15 + rdi + 0x70]
	nop	dword ptr [rax + rax]
.label_718:
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rsi - 0x70]
	movups	xmm1, xmmword ptr [rsi - 0x60]
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x70], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rsi - 0x50]
	movups	xmm1, xmmword ptr [rsi - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rsi - 0x30]
	movups	xmm1, xmmword ptr [rsi - 0x20]
	nop	
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	movdqu	xmm0, xmmword ptr [rsi - 0x10]
	movdqu	xmm1, xmmword ptr [rsi]
	movdqu	xmmword ptr [rdi - 0x10], xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rdi], xmm1
	add	rsi, 0x80
	add	rdi, 0x80
	add	rdx, -0x80
	lea	rdi, [rdi]
	jne	.label_718
.label_706:
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rbp, rbp
	je	.label_735
	lea	rdx, [r15 + rcx]
	mov	rsp, rsp
	add	r13, rcx
	jmp	.label_745
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40acc0

	.globl find_bind_mount
	.type find_bind_mount, @function
find_bind_mount:
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x120
	mov	rbp, rbp
	mov	r14, rdi
	nop	
	mov	al,  byte ptr [byte ptr [rip + find_bind_mount.tried_mount_list]]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_757
	nop	
	xor	edi, edi
	call	read_file_system_list
	mov	qword ptr [word ptr [rip + find_bind_mount.mount_list]],  rax
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_762
	mov	rbp, rbp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.201
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	nop	
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	mov	rsp, rsp
	call	error
.label_762:
	mov	byte ptr [byte ptr [rip + find_bind_mount.tried_mount_list]],  1
.label_757:
	lea	rdx, [rsp]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rbp, rbp
	call	__xstat
	xor	r12d, r12d
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_760
	mov	rbx,  qword ptr [word ptr [rip + find_bind_mount.mount_list]]
	mov	rbp, rbp
	xor	r12d, r12d
	test	rbx, rbx
	je	.label_760
	lea	rsi, [rsi]
	xor	r12d, r12d
	lea	r15, [rsp + 0x90]
	nop	word ptr cs:[rax + rax]
.label_758:
	test	byte ptr [rbx + 0x28], 1
	mov	rsp, rsp
	je	.label_759
	mov	r13, qword ptr [rbx]
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r13]
	lea	rdi, [rdi]
	cmp	eax, 0x2f
	jne	.label_759
	mov	rdi, qword ptr [rbx + 8]
	nop	
	mov	rsi, r14
	call	strcmp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_759
	mov	edi, 1
	nop	
	mov	rsi, r13
	mov	rdx, r15
	mov	rbp, rbp
	call	__xstat
	mov	rsp, rsp
	test	eax, eax
	jne	.label_759
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, qword ptr [rsp + 0x98]
	mov	rbp, rbp
	jne	.label_759
	mov	rax, qword ptr [rsp]
	cmp	rax, qword ptr [rsp + 0x90]
	je	.label_761
	nop	dword ptr [rax + rax]
.label_759:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx + 0x30]
	test	rbx, rbx
	jne	.label_758
.label_760:
	mov	rax, r12
	add	rsp, 0x120
	nop	
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	ret	
.label_761:
	mov	r12, qword ptr [rbx]
	nop	
	jmp	.label_760
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ae30

	.globl find_mount_point
	.type find_mount_point, @function
find_mount_point:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x130
	mov	rbx, rsi
	nop	
	mov	r14, rdi
	lea	rdi, [rbp - 0x30]
	mov	rbp, rbp
	call	save_cwd
	mov	rbp, rbp
	test	eax, eax
	je	.label_774
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_4
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	nop	
	call	error
	jmp	.label_765
.label_774:
	mov	eax, 0xf000
	nop	
	and	eax, dword ptr [rbx + 0x18]
	nop	
	cmp	eax, 0x4000
	jne	.label_767
	lea	rdi, [rbp - 0x150]
	nop	
	mov	edx, 0x90
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	memcpy
	mov	rdi, r14
	lea	rsi, [rsi]
	call	chdir
	lea	rdi, [rdi]
	test	eax, eax
	jns	.label_773
	nop	
	jmp	.label_772
.label_767:
	mov	rbp, rbp
	mov	rdi, r14
	lea	rdi, [rdi]
	call	dir_name
	mov	rbp, rbp
	mov	rbx, rax
	mov	rdi, rbx
	call	strlen
	mov	r14, rsp
	lea	rdx, [rax + 1]
	lea	rsi, [rsi]
	add	rax, 0x10
	mov	rsp, rsp
	and	rax, 0xfffffffffffffff0
	mov	rsp, rsp
	sub	r14, rax
	lea	rdi, [rdi]
	mov	rsp, r14
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, rbx
	call	memcpy
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	call	chdir
	nop	
	test	eax, eax
	mov	rsp, rsp
	js	.label_772
	mov	rbp, rbp
	lea	rdx, [rbp - 0x150]
	nop	
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_1
	mov	rbp, rbp
	call	__xstat
	test	eax, eax
	js	.label_764
.label_773:
	lea	rdx, [rbp - 0xc0]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.4_0
	call	__xstat
	test	eax, eax
	js	.label_766
	nop	
	lea	r14, [rbp - 0x150]
	lea	rdi, [rdi]
	lea	rbx, [rbp - 0xc0]
	nop	dword ptr [rax]
.label_768:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x150]
	jne	.label_770
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	je	.label_770
	mov	edi, OFFSET FLAT:.str.4_0
	mov	rsp, rsp
	call	chdir
	test	eax, eax
	js	.label_763
	mov	edx, 0x90
	nop	
	mov	rdi, r14
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	memcpy
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.4_0
	mov	rdx, rbx
	mov	rsp, rsp
	call	__xstat
	test	eax, eax
	mov	rsp, rsp
	jns	.label_768
.label_766:
	mov	rsp, rsp
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	jmp	.label_771
.label_772:
	call	__errno_location
	mov	r12d, dword ptr [rax]
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r12d
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	error
	jmp	.label_765
.label_770:
	lea	rsi, [rsi]
	call	xgetcwd
	mov	r15, rax
	jmp	.label_769
.label_764:
	call	__errno_location
	mov	r12d, dword ptr [rax]
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbx
	call	error
	jmp	.label_769
.label_763:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.1_0
.label_771:
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str.4_0
	call	quotearg_style
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, r14d
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	error
	xor	r15d, r15d
.label_769:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	nop	
	lea	rdi, [rbp - 0x30]
	nop	
	call	restore_cwd
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_775
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x30]
	call	free_cwd
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
.label_765:
	mov	rsp, rsp
	mov	rax, r15
	mov	rsp, rsp
	lea	rsp, [rbp - 0x20]
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
.label_775:
	mov	rsp, rsp
	mov	ebx, dword ptr [rbx]
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.6_1
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	nop	
	xor	eax, eax
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	error
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b200

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	nop	
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	nop	
	mov	qword ptr [rsp + 8], rdi
	lea	rsi, [rsi]
	cmp	rsi, 0x401
	lea	rax, [rsi + 1]
	mov	r12d, 0x401
	mov	rbp, rbp
	cmovb	r12, rax
	mov	rdi, r12
	lea	rdi, [rdi]
	call	malloc
	mov	rbx, rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_776
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	movabs	r15, 0x7fffffffffffffff
	nop	word ptr cs:[rax + rax]
.label_777:
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rdx, r12
	lea	rsi, [rsi]
	call	readlink
	mov	r13, rax
	nop	
	test	r13, r13
	mov	rbp, rbp
	jns	.label_779
	call	__errno_location
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	mov	rsp, rsp
	jne	.label_781
.label_779:
	mov	rsp, rsp
	cmp	r13, r12
	nop	
	jb	.label_784
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rax, r12
	mov	rsp, rsp
	shr	rax, 0x3e
	mov	rbp, rbp
	jne	.label_778
	add	r12, r12
	nop	
	jmp	.label_780
	nop	dword ptr [rax + rax]
.label_778:
	cmp	r12, r15
	mov	rsp, rsp
	mov	r12, r15
	jae	.label_782
.label_780:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	call	malloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_777
	mov	rsp, rsp
	jmp	.label_776
.label_784:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp + 0x10], rbx
	jmp	.label_776
.label_782:
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	jmp	.label_783
.label_781:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	free
	mov	dword ptr [rbp], r14d
.label_783:
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_776:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b380

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x40b390

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
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbx
	lea	rsi, [rsi]
	mov	r15, rdi
	call	strlen
	mov	r12, rax
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	je	.label_788
	lea	rdi, [rdi]
	test	r14, r14
	nop	
	je	.label_793
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r14
	mov	rbp, rbp
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_791:
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_792
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	lea	rsi, [rsi]
	cmp	rax, r12
	lea	rsi, [rsi]
	je	.label_789
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_790
	mov	rdi, rax
	mov	rsp, rsp
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, r13
	mov	rbp, rbp
	call	memcmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_792
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_792
.label_790:
	mov	qword ptr [rsp + 0x18], rbx
	nop	dword ptr [rax + rax]
.label_792:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	lea	rsi, [rsi]
	add	r14, r13
	test	rbp, rbp
	jne	.label_791
	nop	
	jmp	.label_787
.label_788:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], -1
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	nop	
	jmp	.label_787
.label_793:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_785:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_786
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	nop	
	cmp	rax, r12
	je	.label_789
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	rax, -1
	nop	
	cmove	rax, rbx
	mov	qword ptr [rsp + 0x18], rax
	je	.label_786
	lea	rdi, [rdi]
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	dword ptr [rax + rax]
.label_786:
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	nop	
	jne	.label_785
.label_787:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 0x18]
.label_789:
	lea	rdi, [rdi]
	mov	rax, rbx
	lea	rdi, [rdi]
	add	rsp, 0x28
	nop	
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b590
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
	je	.label_794
	mov	esi, OFFSET FLAT:.str.1_1
	nop	
	jmp	.label_795
.label_794:
	nop	
	mov	esi, OFFSET FLAT:.str_5
.label_795:
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
	#Procedure 0x40b630

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
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx]
	nop	
	test	rbx, rbx
	je	.label_801
	lea	rdi, [rdi]
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_797:
	test	r15, r15
	mov	rbp, rbp
	je	.label_796
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_800
.label_796:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.3_1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_799
	nop	dword ptr [rax]
.label_800:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.4_1
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_799:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_797
.label_801:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_798
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
.label_798:
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
	#Procedure 0x40b7b0
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
	jns	.label_804
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_802
	mov	esi, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	jmp	.label_803
.label_802:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_5
.label_803:
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
.label_804:
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
	#Procedure 0x40b8d0
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
	je	.label_805
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_806:
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
	je	.label_805
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_806
.label_805:
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
	#Procedure 0x40b960
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b970
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b980

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_810
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_807
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_807
.label_810:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_809
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_807:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_6
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_808
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
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_809:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_808:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_2
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, rbx
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ba80

	.globl dir_name
	.type dir_name, @function
dir_name:
	lea	rsi, [rsi]
	push	rax
	mov	rbp, rbp
	call	mdir_name
	mov	rbp, rbp
	test	rax, rax
	je	.label_811
	pop	rcx
	ret	
.label_811:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40baa0
	.globl dir_len
	.type dir_len, @function
dir_len:

	push	r14
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	nop	
	cmp	eax, 0x2f
	sete	al
	movzx	r14d, al
	call	last_component
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	sub	rcx, rbx
	nop	dword ptr [rax]
.label_813:
	lea	rdi, [rdi]
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	r14, rax
	mov	rsp, rsp
	jae	.label_812
	lea	rcx, [rax - 1]
	nop	
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	lea	rdi, [rdi]
	je	.label_813
.label_812:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bb10

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	r14, rdi
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2f
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	movzx	r15d, al
	nop	
	call	last_component
	nop	
	sub	rax, r14
	nop	dword ptr [rax]
.label_817:
	mov	rbx, rax
	mov	rsp, rsp
	cmp	r15, rbx
	mov	rsp, rsp
	jae	.label_814
	lea	rax, [rbx - 1]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [r14 + rbx - 1]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	je	.label_817
.label_814:
	test	rbx, rbx
	sete	al
	movzx	eax, al
	mov	rbp, rbp
	lea	rdi, [rbx + rax + 1]
	mov	rsp, rsp
	call	malloc
	nop	
	mov	r15, rax
	nop	
	xor	eax, eax
	mov	rsp, rsp
	test	r15, r15
	je	.label_816
	nop	
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	memcpy
	nop	
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_815
	lea	rdi, [rdi]
	mov	byte ptr [r15], 0x2e
	nop	
	mov	ebx, 1
.label_815:
	mov	rbp, rbp
	mov	byte ptr [r15 + rbx], 0
	mov	rax, r15
.label_816:
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40bbd0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_818:
	nop	
	movzx	edx, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	cmp	edx, 0x2f
	mov	rbp, rbp
	je	.label_818
	xor	r8d, r8d
	mov	rax, rdi
	jmp	.label_819
	nop	dword ptr [rax + rax]
.label_820:
	mov	dl, byte ptr [rax + 1]
	mov	rbp, rbp
	inc	rax
	lea	rsi, [rsi]
	mov	r8b, cl
.label_819:
	mov	cl, 1
	movzx	esi, dl
	mov	rsp, rsp
	cmp	esi, 0x2f
	je	.label_820
	mov	rsp, rsp
	test	dl, dl
	mov	rbp, rbp
	je	.label_822
	mov	cl, r8b
	mov	rsp, rsp
	and	cl, 1
	je	.label_821
	xor	r8d, r8d
.label_821:
	lea	rsi, [rsi]
	test	cl, cl
	cmovne	rdi, rax
	mov	cl, r8b
	nop	
	jmp	.label_820
.label_822:
	mov	rsp, rsp
	mov	rax, rdi
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bc50
	.globl base_len
	.type base_len, @function
base_len:

	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rcx, rax
.label_824:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_823
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_824
.label_823:
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bc90

	.globl file_type
	.type file_type, @function
file_type:
	mov	eax, 0xf000
	and	eax, dword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	cmp	eax, 0x5fff
	jle	.label_831
	mov	rsp, rsp
	cmp	eax, 0x9fff
	jg	.label_825
	cmp	eax, 0x6000
	je	.label_829
	lea	rdi, [rdi]
	cmp	eax, 0x8000
	jne	.label_830
	mov	rbp, rbp
	cmp	qword ptr [rdi + 0x30], 0
	lea	rsi, [rsi]
	je	.label_826
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 5
	nop	
	jmp	dcgettext
.label_831:
	lea	rsi, [rsi]
	cmp	eax, 0x1000
	mov	rsp, rsp
	je	.label_828
	cmp	eax, 0x2000
	mov	rsp, rsp
	je	.label_832
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_830
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	jmp	dcgettext
.label_825:
	mov	rsp, rsp
	cmp	eax, 0xa000
	je	.label_827
	lea	rsi, [rsi]
	cmp	eax, 0xc000
	jne	.label_830
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	jmp	dcgettext
.label_829:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	jmp	dcgettext
.label_828:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	jmp	dcgettext
.label_832:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_1
	lea	rsi, [rsi]
	mov	edx, 5
	jmp	dcgettext
.label_827:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_2
	nop	
	mov	edx, 5
	jmp	dcgettext
.label_830:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	jmp	dcgettext
.label_826:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_7
	mov	edx, 5
	mov	rbp, rbp
	jmp	dcgettext
	nop	
	.section	.text
	.align	16
	#Procedure 0x40bdd0

	.globl strmode
	.type strmode, @function
strmode:
	mov	eax, edi
	mov	rbp, rbp
	mov	ecx, eax
	and	ecx, 0xf000
	cmp	ecx, 0x5fff
	mov	rbp, rbp
	jle	.label_838
	lea	rdi, [rdi]
	cmp	ecx, 0x9fff
	mov	rbp, rbp
	jg	.label_845
	cmp	ecx, 0x6000
	je	.label_834
	lea	rdi, [rdi]
	mov	dl, 0x2d
	mov	rsp, rsp
	cmp	ecx, 0x8000
	lea	rsi, [rsi]
	je	.label_837
	mov	rbp, rbp
	jmp	.label_833
.label_838:
	cmp	ecx, 0x1000
	je	.label_840
	nop	
	cmp	ecx, 0x2000
	je	.label_841
	cmp	ecx, 0x4000
	jne	.label_833
	mov	dl, 0x64
	mov	rbp, rbp
	jmp	.label_837
.label_845:
	lea	rsi, [rsi]
	cmp	ecx, 0xa000
	mov	rbp, rbp
	je	.label_849
	lea	rdi, [rdi]
	cmp	ecx, 0xc000
	jne	.label_833
	nop	
	mov	dl, 0x73
	jmp	.label_837
.label_834:
	lea	rsi, [rsi]
	mov	dl, 0x62
	jmp	.label_837
.label_840:
	mov	rbp, rbp
	mov	dl, 0x70
	mov	rbp, rbp
	jmp	.label_837
.label_849:
	mov	dl, 0x6c
	jmp	.label_837
.label_833:
	mov	dl, 0x3f
	mov	rsp, rsp
	jmp	.label_837
.label_841:
	mov	rbp, rbp
	mov	dl, 0x63
.label_837:
	nop	
	push	rbx
	mov	byte ptr [rsi], dl
	lea	rsi, [rsi]
	mov	bl, ah
	lea	rsi, [rsi]
	test	bl, 1
	mov	r9b, 0x72
	mov	rbp, rbp
	mov	cl, 0x72
	jne	.label_848
	mov	cl, 0x2d
.label_848:
	mov	byte ptr [rsi + 1], cl
	nop	
	mov	cl, al
	sar	cl, 7
	and	cl, 0x4a
	lea	rsi, [rsi]
	add	cl, 0x2d
	mov	byte ptr [rsi + 2], cl
	mov	ecx, eax
	and	ecx, 0x40
	mov	edx, ecx
	mov	rbp, rbp
	shr	edx, 1
	lea	rsi, [rsi]
	or	edx, 0x53
	lea	rsi, [rsi]
	test	ecx, ecx
	mov	rbp, rbp
	mov	r8b, 0x78
	lea	rdi, [rdi]
	mov	cl, 0x78
	jne	.label_843
	mov	cl, 0x2d
.label_843:
	test	bl, 8
	jne	.label_836
	mov	rsp, rsp
	mov	dl, cl
.label_836:
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 3], dl
	test	al, 0x20
	mov	cl, 0x72
	nop	
	jne	.label_839
	mov	cl, 0x2d
.label_839:
	mov	byte ptr [rsi + 4], cl
	test	al, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_844
	mov	rsp, rsp
	mov	cl, 0x2d
.label_844:
	mov	byte ptr [rsi + 5], cl
	mov	ecx, eax
	nop	
	and	ecx, 8
	lea	rsi, [rsi]
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	lea	rsi, [rsi]
	jne	.label_847
	nop	
	mov	cl, 0x2d
.label_847:
	mov	rsp, rsp
	test	bl, 4
	jne	.label_851
	lea	rdi, [rdi]
	mov	dil, cl
.label_851:
	lea	rsi, [rsi]
	mov	byte ptr [rsi + 6], dil
	test	al, 4
	jne	.label_842
	mov	r9b, 0x2d
.label_842:
	nop	
	mov	byte ptr [rsi + 7], r9b
	test	al, 2
	jne	.label_846
	mov	dl, 0x2d
.label_846:
	nop	
	mov	byte ptr [rsi + 8], dl
	and	eax, 1
	nop	
	jne	.label_850
	mov	rbp, rbp
	mov	r8b, 0x2d
.label_850:
	mov	rbp, rbp
	test	bl, 2
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	je	.label_835
	shl	eax, 5
	or	eax, 0x54
	mov	r8b, al
.label_835:
	mov	rbp, rbp
	mov	byte ptr [rsi + 9], r8b
	mov	byte ptr [rsi + 0xa], 0x20
	mov	byte ptr [rsi + 0xb], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bf70

	.globl filemodestring
	.type filemodestring, @function
filemodestring:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rdi + 0x18]
	nop	
	jmp	strmode
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bf80

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	lea	rsi, [rsi]
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	lea	rsi, [rsi]
	js	.label_852
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
.label_854:
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
	ja	.label_854
	mov	rbp, rbp
	jmp	.label_855
.label_852:
	add	rsi, 0x15
	movabs	r8, 0x6666666666666667
.label_853:
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
	mov	byte ptr [rsi - 2], al
	add	rdx, r10
	mov	rbp, rbp
	add	rcx, 9
	dec	rsi
	mov	rsp, rsp
	cmp	rcx, 0x12
	mov	rcx, rdx
	mov	rsp, rsp
	ja	.label_853
	mov	rbp, rbp
	mov	byte ptr [rsi - 2], 0x2d
	mov	rsp, rsp
	add	rsi, -2
.label_855:
	nop	
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c070

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
	#Procedure 0x40c0b0

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
	mov	dword ptr [rsp + 0x54], r8d
	mov	rbp, rbp
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x88], rsi
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
	je	.label_893
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x84], ebx
	mov	qword ptr [rsp + 0x48], rsi
	mov	qword ptr [rsp + 0x90], rcx
	mov	dword ptr [rsp + 0x24], r9d
	mov	r14d, dword ptr [rsp + 0x4e0]
	movabs	r15, 0x1000000000002500
	xor	esi, esi
	mov	rsp, rsp
	mov	r9, rdi
	jmp	.label_912
.label_893:
	nop	
	xor	esi, esi
	mov	rbp, rbp
	mov	r9, rdi
	jmp	.label_929
.label_1027:
	lea	rsi, [rsi]
	mov	r12d, 3
	jmp	.label_935
	nop	dword ptr [rax]
.label_912:
	movzx	ecx, al
	xor	ebx, ebx
	lea	rdi, [rdi]
	cmp	ecx, 0x25
	nop	
	jne	.label_920
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rsi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x54]
	nop	
	mov	dil, al
	mov	rbp, rbp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_903
	nop	
.label_920:
	mov	rsp, rsp
	test	r14d, r14d
	nop	
	mov	ecx, r14d
	nop	
	mov	edx, 0
	lea	rdi, [rdi]
	cmovs	ecx, edx
	movsxd	rbx, ecx
	nop	
	cmp	ebx, 1
	lea	rdi, [rdi]
	mov	edx, 1
	cmovbe	rbx, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	sub	rdx, rsi
	mov	rsp, rsp
	cmp	rbx, rdx
	nop	
	jae	.label_864
	mov	rsp, rsp
	test	r9, r9
	lea	rsi, [rsi]
	mov	edx, 0
	mov	rsp, rsp
	je	.label_957
	nop	
	cmp	ecx, 2
	lea	rsi, [rsi]
	jb	.label_958
	movsxd	r14, r14d
	lea	rdx, [r14 - 1]
	mov	r12, rsi
	nop	
	mov	esi, 0x20
	mov	rdi, r9
	mov	r13, r9
	lea	rsi, [rsi]
	call	memset
	mov	r9, r13
	mov	rsp, rsp
	mov	rsi, r12
	lea	r9, [r9 + r14 - 1]
	mov	rsp, rsp
	mov	al, byte ptr [rbp]
.label_958:
	mov	byte ptr [r9], al
.label_971:
	inc	r9
	nop	
	mov	rdx, r9
.label_957:
	lea	rdi, [rdi]
	add	rsi, rbx
	mov	rsp, rsp
	mov	r9, rdx
	nop	
	jmp	.label_927
	nop	word ptr cs:[rax + rax]
.label_985:
	mov	bl, 1
	nop	
	mov	al, dil
	jmp	.label_903
	nop	dword ptr [rax + rax]
.label_983:
	inc	rbp
	lea	rsi, [rsi]
	mov	r13d, edx
.label_990:
	mov	cl, byte ptr [rbp]
	lea	rsi, [rsi]
	movsx	edx, cl
	lea	esi, [rdx - 0x23]
	cmp	esi, 0x3c
	ja	.label_980
	lea	rdi, [rdi]
	bt	r15, rsi
	nop	
	jb	.label_983
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_985
	lea	rdi, [rdi]
	cmp	rsi, 0x3b
	jne	.label_980
.label_903:
	nop	
	mov	dil, al
	inc	rbp
	mov	rbp, rbp
	jmp	.label_990
	nop	dword ptr [rax]
.label_980:
	lea	rdi, [rdi]
	add	edx, -0x30
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_992
	nop	word ptr cs:[rax + rax]
.label_978:
	lea	rdi, [rdi]
	mov	r14d, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_959
	movsx	ecx, cl
	mov	rsp, rsp
	cmp	eax, 0xccccccc
	lea	rdi, [rdi]
	jne	.label_998
	lea	edx, [rcx - 0x30]
	cmp	edx, 7
	jg	.label_959
.label_998:
	lea	rsi, [rsi]
	lea	eax, [rax + rax*4]
	nop	
	lea	r14d, [rcx + rax*2 - 0x30]
.label_959:
	movsx	ecx, byte ptr [rbp + 1]
	mov	rbp, rbp
	inc	rbp
	mov	rbp, rbp
	mov	eax, ecx
	mov	rsp, rsp
	add	eax, -0x30
	lea	rdi, [rdi]
	cmp	eax, 0xa
	mov	rbp, rbp
	mov	eax, r14d
	jb	.label_978
.label_992:
	lea	rsi, [rsi]
	movsx	eax, cl
	lea	rsi, [rsi]
	cmp	eax, 0x4f
	je	.label_1002
	cmp	eax, 0x45
	nop	
	jne	.label_1005
.label_1002:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rdi
	mov	cl, byte ptr [rbp + 1]
	nop	
	inc	rbp
	jmp	.label_1006
.label_1005:
	mov	qword ptr [rsp + 0x58], rdi
	xor	eax, eax
.label_1006:
	movsx	r11d, cl
	lea	rdi, [rdi]
	xor	r12d, r12d
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	lea	edx, [r11 - 0x25]
	lea	rsi, [rsi]
	cmp	edx, 0x55
	mov	rsp, rsp
	ja	.label_1011
	nop	
	mov	dword ptr [rsp + 0x30], eax
	mov	eax, OFFSET FLAT:.str.3_3
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r8b, 0x72
	mov	r10d, 0xffffffff
	xor	eax, eax
	xor	esi, esi
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_925]]
.label_1516:
	mov	r10d, dword ptr [rsp + 0x30]
	cmp	r10d, 0x45
	mov	rsp, rsp
	je	.label_857
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r9
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x90]
	mov	r9d, dword ptr [rdx + 0x14]
	nop	
	mov	r8d, dword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	mov	eax, r9d
	mov	rbp, rbp
	sar	eax, 0x1f
	and	eax, 0x190
	lea	r12d, [r9 + rax - 0x64]
	mov	rbp, rbp
	mov	ebx, dword ptr [rdx + 0x1c]
	lea	edx, [rbx + 0x17e]
	sub	edx, r8d
	movsxd	rdx, edx
	mov	rbp, rbp
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	lea	rsi, [rsi]
	add	esi, edx
	mov	edi, esi
	mov	rsp, rsp
	shr	edi, 0x1f
	sar	esi, 2
	add	esi, edi
	lea	edi, [rsi*8]
	sub	edi, esi
	sub	edx, edi
	nop	
	lea	edi, [rbx + 3]
	nop	
	sub	edi, edx
	mov	rbp, rbp
	js	.label_1028
	lea	rsi, [rsi]
	mov	edx, 0x16d
	lea	rdi, [rdi]
	test	r12b, 3
	jne	.label_869
	lea	rdi, [rdi]
	movsxd	rdx, r12d
	mov	rbp, rbp
	imul	rdx, rdx, 0x51eb851f
	mov	rsi, rdx
	sar	rsi, 0x25
	mov	rax, rdx
	lea	rdi, [rdi]
	shr	rax, 0x3f
	add	esi, eax
	imul	esi, esi, 0x64
	lea	rdi, [rdi]
	sar	rdx, 0x27
	add	edx, eax
	imul	eax, edx, 0x190
	nop	
	cmp	r12d, eax
	sete	al
	movzx	eax, al
	add	eax, 0x16d
	cmp	r12d, esi
	lea	rsi, [rsi]
	mov	edx, 0x16e
	nop	
	cmove	edx, eax
.label_869:
	sub	ebx, edx
	nop	
	lea	eax, [rbx + 0x17e]
	sub	eax, r8d
	nop	
	cdqe	
	mov	rbp, rbp
	imul	rdx, rax, -0x6db6db6d
	lea	rsi, [rsi]
	shr	rdx, 0x20
	mov	rsp, rsp
	add	edx, eax
	mov	esi, edx
	shr	esi, 0x1f
	mov	rbp, rbp
	sar	edx, 2
	nop	
	add	edx, esi
	lea	esi, [rdx*8]
	sub	esi, edx
	nop	
	sub	eax, esi
	add	ebx, 3
	mov	rbp, rbp
	sub	ebx, eax
	cmovns	edi, ebx
	lea	rsi, [rsi]
	shr	ebx, 0x1f
	xor	ebx, 1
	jmp	.label_856
	nop	word ptr cs:[rax + rax]
.label_911:
	inc	rdi
.label_1510:
	movzx	eax, byte ptr [rbp + rdi]
	cmp	eax, 0x3a
	lea	rsi, [rsi]
	je	.label_911
	movzx	eax, al
	nop	
	cmp	eax, 0x7a
	jne	.label_857
	add	rbp, rdi
	mov	r12, rdi
.label_1547:
	mov	rax, qword ptr [rsp + 0x90]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x20], 0
	mov	rsp, rsp
	js	.label_921
	mov	eax, dword ptr [rax + 0x28]
	nop	
	mov	r8b, 1
	mov	rsp, rsp
	test	eax, eax
	js	.label_928
	test	eax, eax
	je	.label_936
	xor	r8d, r8d
	lea	rdi, [rdi]
	jmp	.label_928
.label_1530:
	test	bl, bl
	je	.label_938
	mov	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rax
.label_938:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, dword ptr [rsp + 0x30]
	nop	
	cmp	edx, 0x45
	mov	rsp, rsp
	je	.label_857
	lea	rdi, [rdi]
	mov	r8b, cl
	mov	rbp, rbp
	jmp	.label_862
.label_1011:
	lea	rsi, [rsi]
	test	r11d, r11d
	jne	.label_857
	dec	rbp
	nop	
	jmp	.label_857
.label_1509:
	cmp	dword ptr [rsp + 0x30], 0
	jne	.label_857
	mov	rsp, rsp
	xor	eax, eax
	nop	
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rdx, eax
	cmp	edx, 1
	nop	
	mov	ebx, 1
	cmova	rbx, rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsi, qword ptr [rsp + 0x38]
	sub	rdx, rsi
	cmp	rbx, rdx
	jae	.label_864
	mov	rbp, rbp
	xor	edx, edx
	test	r9, r9
	je	.label_957
	cmp	eax, 2
	jb	.label_962
	movsxd	r14, r14d
	mov	rsp, rsp
	dec	r14
	cmp	r13d, 0x30
	je	.label_964
	cmp	r13d, 0x2b
	lea	rdi, [rdi]
	jne	.label_967
.label_964:
	nop	
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	esi, 0x30
	jmp	.label_970
.label_1511:
	mov	eax, dword ptr [rsp + 0x30]
	mov	rsp, rsp
	test	eax, eax
	jne	.label_857
	test	bl, bl
	nop	
	je	.label_974
	mov	al, 1
	mov	qword ptr [rsp + 0x58], rax
.label_974:
	nop	
	xor	eax, eax
	mov	r8b, 0x41
	jmp	.label_862
.label_1512:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x45
	je	.label_857
	nop	
	test	bl, bl
	mov	rsp, rsp
	je	.label_979
	mov	al, 1
	mov	qword ptr [rsp + 0x58], rax
.label_979:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	r8b, 0x42
	jmp	.label_862
.label_1513:
	mov	r10d, dword ptr [rsp + 0x30]
	cmp	r10d, 0x45
	nop	
	jne	.label_986
	nop	
	xor	eax, eax
	mov	r8b, 0x43
	lea	rsi, [rsi]
	jmp	.label_862
.label_1514:
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0x30], 0
	jne	.label_857
	mov	eax, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r10d, 0xffffffff
	jmp	.label_886
.label_1515:
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0x30], 0
	jne	.label_857
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_951
	test	r14d, r14d
	mov	rbp, rbp
	jns	.label_951
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.2_2
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13d, 0x2b
	mov	r10d, 4
	jmp	.label_886
.label_1517:
	mov	rbp, rbp
	mov	r10d, dword ptr [rsp + 0x30]
	nop	
	cmp	r10d, 0x45
	je	.label_857
	mov	rax, qword ptr [rsp + 0x90]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	jmp	.label_885
.label_1518:
	mov	r12d, 2
	lea	rsi, [rsi]
	mov	r10d, dword ptr [rsp + 0x30]
	cmp	r10d, 0x45
	je	.label_857
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x84]
	lea	rsi, [rsi]
	mov	edx, eax
	jmp	.label_868
.label_1519:
	mov	r10d, dword ptr [rsp + 0x30]
	cmp	r10d, 0x45
	lea	rsi, [rsi]
	je	.label_857
	nop	
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax + 4]
	jmp	.label_885
.label_1520:
	lea	rsi, [rsi]
	mov	r10d, dword ptr [rsp + 0x30]
	cmp	r10d, 0x45
	je	.label_857
	mov	r12d, 9
	nop	
	cmp	r14d, -1
	lea	rdi, [rdi]
	je	.label_1024
	nop	
	cmp	r14d, 8
	jg	.label_1026
	lea	rdi, [rdi]
	mov	edi, 9
	mov	rbp, rbp
	sub	edi, r14d
	mov	eax, 8
	sub	eax, r14d
	test	dil, 3
	lea	rdi, [rdi]
	mov	edx, dword ptr [rsp + 0x4f0]
	mov	ebx, r14d
	je	.label_1029
	and	edi, 3
	mov	rbp, rbp
	neg	edi
	lea	rdi, [rdi]
	mov	edx, dword ptr [rsp + 0x4f0]
	mov	rsp, rsp
	mov	ebx, r14d
	nop	dword ptr [rax]
.label_859:
	movsxd	rdx, edx
	imul	rdx, rdx, 0x66666667
	lea	rdi, [rdi]
	mov	rsi, rdx
	shr	rsi, 0x3f
	lea	rsi, [rsi]
	sar	rdx, 0x22
	add	edx, esi
	inc	ebx
	mov	rsp, rsp
	inc	edi
	jne	.label_859
.label_1029:
	cmp	eax, 3
	lea	rsi, [rsi]
	jae	.label_866
	mov	r12d, r14d
	lea	rsi, [rsi]
	jmp	.label_868
.label_1521:
	mov	sil, 1
.label_1539:
	mov	rbp, rbp
	xor	r12d, r12d
	test	bl, bl
	lea	rdi, [rdi]
	je	.label_870
	mov	rsp, rsp
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
.label_870:
	mov	rbp, rbp
	je	.label_878
	mov	sil, 1
.label_878:
	mov	r8b, 0x70
	mov	al, sil
	jmp	.label_880
.label_1522:
	lea	rdi, [rdi]
	mov	r10d, dword ptr [rsp + 0x30]
	nop	
	cmp	r10d, 0x45
	je	.label_857
	mov	rax, qword ptr [rsp + 0x90]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
	jmp	.label_885
.label_1523:
	mov	eax, OFFSET FLAT:.str.4_2
.label_993:
	mov	qword ptr [rsp + 0x28], rax
.label_886:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x30], r10d
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], ecx
	nop	
	mov	rcx, qword ptr [rsp + 0x4e8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], r10d
	lea	rsi, [rsi]
	movzx	r8d, al
	xor	ebx, ebx
	xor	edi, edi
	mov	rbp, rbp
	mov	rsi, -1
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rsp, rsp
	mov	r12, r9
	lea	rsi, [rsi]
	mov	r9d, r13d
	call	__strftime_internal
	lea	rsi, [rsi]
	mov	rdi, r12
	test	r14d, r14d
	nop	
	cmovns	ebx, r14d
	lea	rdi, [rdi]
	movsxd	rdx, ebx
	cmp	rax, rdx
	mov	rbx, rax
	cmovb	rbx, rdx
	mov	r12, qword ptr [rsp + 0x88]
	mov	rsi, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	sub	r12, rsi
	cmp	rbx, r12
	lea	rdi, [rdi]
	jae	.label_864
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_914
	lea	rsi, [rsi]
	cmp	rax, rdx
	mov	rbp, rbp
	jae	.label_937
	movsxd	rcx, r14d
	sub	rcx, rax
	mov	qword ptr [rsp + 0x98], rax
	lea	rsi, [rsi]
	cmp	r13d, 0x30
	mov	rsp, rsp
	je	.label_941
	cmp	r13d, 0x2b
	nop	
	jne	.label_940
.label_941:
	mov	esi, 0x30
	jmp	.label_946
.label_1524:
	lea	rsi, [rsi]
	mov	r10d, dword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	cmp	r10d, 0x45
	mov	rbp, rbp
	je	.label_857
	mov	rdx, qword ptr [rsp + 0x90]
	mov	eax, dword ptr [rdx + 0x1c]
	add	eax, 7
	nop	
	sub	eax, dword ptr [rdx + 0x18]
	lea	rdi, [rdi]
	movsxd	rdx, eax
	jmp	.label_952
.label_1525:
	mov	r10d, dword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	cmp	r10d, 0x45
	je	.label_857
	mov	rdx, qword ptr [rsp + 0x90]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rdx + 0x1c]
	lea	esi, [rax + 6]
	movsxd	rsi, esi
	lea	rsi, [rsi]
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	lea	eax, [rdi + rax + 6]
	lea	rdi, [rdi]
	mov	edi, eax
	mov	rsp, rsp
	shr	edi, 0x1f
	sar	eax, 2
	add	eax, edi
	lea	rdi, [rdi]
	lea	edi, [rax*8]
	sub	edi, eax
	mov	rsp, rsp
	sub	esi, edi
	add	edx, 7
	lea	rdi, [rdi]
	sub	edx, esi
	mov	rsp, rsp
	movsxd	rdx, edx
.label_952:
	imul	rax, rdx, -0x6db6db6d
	shr	rax, 0x20
	add	edx, eax
	lea	rsi, [rsi]
	mov	eax, edx
	nop	
	shr	eax, 0x1f
	sar	edx, 2
	lea	rsi, [rsi]
	add	edx, eax
	jmp	.label_885
.label_1526:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x30]
	mov	rbp, rbp
	cmp	eax, 0x4f
	mov	rbp, rbp
	je	.label_857
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r8b, 0x58
	jmp	.label_862
.label_1527:
	mov	r10d, dword ptr [rsp + 0x30]
	nop	
	cmp	r10d, 0x45
	nop	
	je	.label_984
	cmp	r10d, 0x4f
	lea	rsi, [rsi]
	je	.label_857
	nop	
	mov	rax, qword ptr [rsp + 0x90]
	mov	edx, dword ptr [rax + 0x14]
	cmp	edx, 0xfffff894
	setl	r8b
	add	edx, 0x76c
	mov	r12d, 4
	mov	rsp, rsp
	jmp	.label_976
.label_1528:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x48]
	mov	r12, r9
	call	strlen
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	r9, rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	test	r14d, r14d
	cmovns	eax, r14d
	mov	rbp, rbp
	cdqe	
	mov	rbp, rbp
	cmp	r9, rax
	mov	r12, r9
	nop	
	cmovb	r12, rax
	nop	
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	sub	rcx, rsi
	cmp	r12, rcx
	jae	.label_864
	lea	rsi, [rsi]
	xor	ecx, ecx
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1001
	cmp	r9, rax
	jae	.label_1021
	movsxd	r14, r14d
	lea	rsi, [rsi]
	sub	r14, r9
	nop	
	mov	qword ptr [rsp + 0x30], r9
	cmp	r13d, 0x30
	je	.label_1007
	mov	rbp, rbp
	cmp	r13d, 0x2b
	jne	.label_872
.label_1007:
	mov	esi, 0x30
	jmp	.label_1013
.label_1529:
	mov	eax, dword ptr [rsp + 0x30]
	test	eax, eax
	jne	.label_857
	nop	
	test	bl, bl
	je	.label_916
	mov	al, 1
	nop	
	mov	qword ptr [rsp + 0x58], rax
.label_916:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	r8b, 0x61
	nop	
	jmp	.label_862
.label_1531:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x4f
	mov	rbp, rbp
	je	.label_857
	xor	eax, eax
	mov	r8b, 0x63
	jmp	.label_862
.label_1532:
	mov	rbp, rbp
	mov	r10d, dword ptr [rsp + 0x30]
	mov	rsp, rsp
	cmp	r10d, 0x45
	lea	rdi, [rdi]
	je	.label_857
	mov	rax, qword ptr [rsp + 0x90]
	mov	edx, dword ptr [rax + 0xc]
	lea	rsi, [rsi]
	jmp	.label_885
.label_1533:
	mov	r10d, dword ptr [rsp + 0x30]
	cmp	r10d, 0x45
	mov	rsp, rsp
	je	.label_857
	mov	rax, qword ptr [rsp + 0x90]
	mov	edx, dword ptr [rax + 0xc]
	nop	
	jmp	.label_874
.label_1534:
	nop	
	mov	r10d, dword ptr [rsp + 0x30]
	cmp	r10d, 0x45
	mov	rsp, rsp
	je	.label_857
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x90]
	nop	
	mov	edx, dword ptr [rax + 0x1c]
	cmp	edx, -1
	setl	r8b
	inc	edx
	nop	
	mov	r12d, 3
	lea	rdi, [rdi]
	jmp	.label_861
.label_1535:
	mov	r10d, dword ptr [rsp + 0x30]
	cmp	r10d, 0x45
	lea	rdi, [rdi]
	je	.label_857
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	rbp, rbp
	mov	edx, dword ptr [rax + 8]
	jmp	.label_874
.label_1536:
	mov	r10d, dword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	cmp	r10d, 0x45
	nop	
	mov	eax, dword ptr [rsp + 0x84]
	mov	edx, eax
	lea	rdi, [rdi]
	je	.label_857
.label_874:
	test	r13d, r13d
	lea	rsi, [rsi]
	mov	eax, 0x5f
	mov	rbp, rbp
	cmove	r13d, eax
.label_885:
	mov	r12d, 2
	nop	
	jmp	.label_868
.label_1537:
	mov	r10d, dword ptr [rsp + 0x30]
	cmp	r10d, 0x45
	je	.label_857
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	edx, dword ptr [rax + 0x10]
	cmp	edx, -1
	nop	
	setl	r8b
	nop	
	inc	edx
	mov	r12d, 2
	lea	rdi, [rdi]
	jmp	.label_861
.label_1538:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x38]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_864
	nop	
	xor	ecx, ecx
	test	r9, r9
	je	.label_914
	mov	rbp, rbp
	cmp	eax, 2
	nop	
	jb	.label_997
	lea	rsi, [rsi]
	mov	r12, rsi
	movsxd	r14, r14d
	lea	rsi, [rsi]
	dec	r14
	mov	rbp, rbp
	cmp	r13d, 0x30
	lea	rdi, [rdi]
	je	.label_922
	cmp	r13d, 0x2b
	jne	.label_930
.label_922:
	mov	esi, 0x30
	jmp	.label_934
.label_1540:
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	imul	edx, dword ptr [rax + 0x10], 0xb
	mov	rsp, rsp
	sar	edx, 5
	nop	
	inc	edx
	mov	r12d, 1
	lea	rsi, [rsi]
	xor	ebx, ebx
	mov	rbp, rbp
	xor	edi, edi
	xor	r8d, r8d
	mov	rbp, rbp
	mov	r10d, dword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	jmp	.label_881
.label_1541:
	lea	rdi, [rdi]
	mov	rbx, r9
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0xd0], rax
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rcx]
	nop	
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xc0], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0xb0], xmm1
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0xa0]
	mov	rdi, qword ptr [rsp + 0x4e8]
	lea	rdi, [rdi]
	call	mktime_z
	mov	rcx, rax
	mov	r8, rcx
	shr	r8, 0x3f
	lea	r12, [rsp + 0x77]
	je	.label_961
	nop	word ptr [rax + rax]
.label_966:
	lea	rdi, [rdi]
	movabs	rdx, 0x6666666666666667
	mov	rsp, rsp
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	lea	rdi, [rdi]
	shr	rax, 0x3f
	sar	rdx, 2
	mov	rsp, rsp
	lea	esi, [rdx + rax]
	add	esi, esi
	lea	rdi, [rdi]
	lea	esi, [rsi + rsi*4]
	mov	edi, ecx
	sub	edi, esi
	nop	
	add	rdx, rax
	mov	rsp, rsp
	mov	al, 0x30
	sub	al, dil
	mov	rsp, rsp
	mov	byte ptr [r12 - 1], al
	dec	r12
	mov	rbp, rbp
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	mov	rbp, rbp
	ja	.label_966
	jmp	.label_1020
	nop	word ptr cs:[rax + rax]
.label_961:
	mov	rbp, rbp
	movabs	rdx, 0x6666666666666667
	mov	rbp, rbp
	mov	rax, rcx
	lea	rdi, [rdi]
	imul	rdx
	mov	rax, rdx
	mov	rbp, rbp
	shr	rax, 0x3f
	sar	rdx, 2
	lea	esi, [rdx + rax]
	add	esi, esi
	lea	rsi, [rsi]
	lea	esi, [rsi + rsi*4]
	mov	edi, ecx
	sub	edi, esi
	lea	rsi, [rsi]
	add	rdx, rax
	nop	
	add	dil, 0x30
	mov	byte ptr [r12 - 1], dil
	dec	r12
	add	rcx, 9
	mov	rsp, rsp
	cmp	rcx, 0x12
	mov	rcx, rdx
	nop	
	ja	.label_961
.label_1020:
	mov	rsp, rsp
	mov	r10d, 1
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	r9, rbx
	lea	rsi, [rsi]
	jmp	.label_996
.label_1542:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x88]
	nop	
	mov	rsi, qword ptr [rsp + 0x38]
	sub	rcx, rsi
	lea	rsi, [rsi]
	cmp	rbx, rcx
	mov	rbp, rbp
	jae	.label_864
	xor	ecx, ecx
	test	r9, r9
	je	.label_914
	mov	rbp, rbp
	cmp	eax, 2
	jb	.label_1008
	mov	r12, rsi
	movsxd	r14, r14d
	lea	rsi, [rsi]
	dec	r14
	mov	rbp, rbp
	cmp	r13d, 0x30
	lea	rdi, [rdi]
	je	.label_1009
	mov	rsp, rsp
	cmp	r13d, 0x2b
	jne	.label_1014
.label_1009:
	mov	rbp, rbp
	mov	esi, 0x30
	lea	rdi, [rdi]
	jmp	.label_1016
.label_1543:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	eax, dword ptr [rax + 0x18]
	lea	edx, [rax + 6]
	movsxd	rdx, edx
	lea	rdi, [rdi]
	imul	rsi, rdx, -0x6db6db6d
	lea	rsi, [rsi]
	shr	rsi, 0x20
	nop	
	lea	eax, [rsi + rax + 6]
	lea	rdi, [rdi]
	mov	esi, eax
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	lea	esi, [rax*8]
	mov	rsp, rsp
	sub	esi, eax
	sub	edx, esi
	inc	edx
	mov	r12d, 1
	mov	r10d, dword ptr [rsp + 0x30]
	jmp	.label_868
.label_1544:
	mov	rbp, rbp
	mov	r10d, dword ptr [rsp + 0x30]
	mov	rbp, rbp
	cmp	r10d, 0x45
	je	.label_857
	mov	rax, qword ptr [rsp + 0x90]
	mov	edx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	r12d, 1
	jmp	.label_868
.label_1545:
	mov	eax, dword ptr [rsp + 0x30]
	nop	
	cmp	eax, 0x4f
	je	.label_857
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r8b, 0x78
	jmp	.label_862
.label_1546:
	mov	r10d, dword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	cmp	r10d, 0x45
	mov	rsp, rsp
	jne	.label_865
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r8b, 0x79
	lea	rsi, [rsi]
	jmp	.label_862
.label_937:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rax
	mov	rcx, qword ptr [rsp + 0x90]
	jmp	.label_873
.label_1028:
	nop	
	dec	r12d
	nop	
	mov	edi, 0x16d
	mov	rsp, rsp
	test	r12b, 3
	mov	rbp, rbp
	jne	.label_987
	movsxd	rdx, r12d
	imul	rdx, rdx, 0x51eb851f
	mov	rbp, rbp
	mov	rsi, rdx
	sar	rsi, 0x25
	mov	rdi, rdx
	shr	rdi, 0x3f
	lea	rdi, [rdi]
	add	esi, edi
	nop	
	imul	esi, esi, 0x64
	lea	rdi, [rdi]
	sar	rdx, 0x27
	lea	rsi, [rsi]
	add	edx, edi
	nop	
	imul	edx, edx, 0x190
	cmp	r12d, edx
	nop	
	sete	dl
	movzx	edx, dl
	lea	rdi, [rdi]
	add	edx, 0x16d
	cmp	r12d, esi
	mov	rbp, rbp
	mov	edi, 0x16e
	cmove	edi, edx
.label_987:
	mov	rbp, rbp
	lea	eax, [rdi + rbx + 0x17e]
	sub	eax, r8d
	cdqe	
	lea	rdi, [rdi]
	imul	rdx, rax, -0x6db6db6d
	nop	
	shr	rdx, 0x20
	add	edx, eax
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 2
	mov	rsp, rsp
	add	edx, esi
	lea	esi, [rdx*8]
	lea	rsi, [rsi]
	sub	esi, edx
	mov	rbp, rbp
	sub	eax, esi
	mov	rsp, rsp
	lea	edi, [rdi + rbx + 3]
	nop	
	sub	edi, eax
	mov	ebx, 0xffffffff
.label_856:
	cmp	r11d, 0x47
	je	.label_919
	cmp	r11d, 0x67
	jne	.label_1003
	movsxd	rax, r9d
	imul	rax, rax, 0x51eb851f
	mov	rdx, rax
	nop	
	shr	rdx, 0x3f
	lea	rsi, [rsi]
	sar	rax, 0x25
	add	eax, edx
	imul	eax, eax, 0x64
	mov	rsp, rsp
	mov	edx, r9d
	sub	edx, eax
	add	edx, ebx
	nop	
	movsxd	rdx, edx
	imul	rax, rdx, 0x51eb851f
	mov	rsi, rax
	shr	rsi, 0x3f
	sar	rax, 0x25
	add	eax, esi
	mov	rsp, rsp
	imul	eax, eax, 0x64
	sub	edx, eax
	mov	r12d, 2
	jns	.label_924
	mov	eax, 0xfffff894
	sub	eax, ebx
	mov	esi, edx
	mov	rbp, rbp
	neg	esi
	mov	rsp, rsp
	add	edx, 0x64
	cmp	r9d, eax
	mov	rbp, rbp
	cmovl	edx, esi
.label_924:
	mov	rsp, rsp
	xor	r8d, r8d
	lea	rdi, [rdi]
	jmp	.label_948
.label_921:
	nop	
	mov	rsi, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	jmp	.label_927
.label_986:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rax + 0x14]
	cmp	rax, -0x76c
	setl	r8b
	mov	rsp, rsp
	setg	bl
	imul	rdx, rax, 0x51eb851f
	mov	rsp, rsp
	mov	rsi, rdx
	lea	rdi, [rdi]
	shr	rsi, 0x3f
	nop	
	sar	rdx, 0x25
	add	edx, esi
	imul	esi, edx, 0x64
	lea	rsi, [rsi]
	cmp	eax, esi
	mov	rbp, rbp
	sets	al
	lea	rsi, [rsi]
	and	al, bl
	movzx	eax, al
	sub	edx, eax
	add	edx, 0x13
	mov	r12d, 2
	jmp	.label_976
.label_865:
	mov	rax, qword ptr [rsp + 0x90]
	movsxd	rax, dword ptr [rax + 0x14]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	mov	rbp, rbp
	shr	rsi, 0x3f
	mov	rsp, rsp
	sar	rdx, 0x25
	add	edx, esi
	mov	rsp, rsp
	imul	esi, edx, 0x64
	lea	rdi, [rdi]
	mov	edx, eax
	nop	
	sub	edx, esi
	lea	rsi, [rsi]
	mov	r12d, 2
	lea	rdi, [rdi]
	js	.label_968
	xor	r8d, r8d
	jmp	.label_976
.label_919:
	mov	rsp, rsp
	mov	eax, 0xfffff894
	lea	rdi, [rdi]
	sub	eax, ebx
	cmp	r9d, eax
	mov	rsp, rsp
	setl	r8b
	lea	rsi, [rsi]
	lea	edx, [rbx + r9 + 0x76c]
	lea	rdi, [rdi]
	mov	r12d, 4
.label_948:
	mov	eax, dword ptr [rsp + 0x24]
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	jmp	.label_989
.label_1003:
	movsxd	rax, edi
	imul	rdx, rax, -0x6db6db6d
	shr	rdx, 0x20
	mov	rbp, rbp
	add	eax, edx
	mov	rsp, rsp
	mov	edx, eax
	mov	rsp, rsp
	sar	edx, 2
	nop	
	shr	eax, 0x1f
	lea	rdi, [rdi]
	lea	edx, [rdx + rax + 1]
	mov	r12d, 2
	mov	r9, qword ptr [rsp + 0x28]
	jmp	.label_868
.label_984:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r8b, 0x59
.label_862:
	lea	rsi, [rsi]
	xor	r12d, r12d
	jmp	.label_880
.label_1021:
	nop	
	mov	r14, qword ptr [rsp + 0x48]
	jmp	.label_999
.label_940:
	mov	esi, 0x20
.label_946:
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x4a0], rdx
	mov	r14, rdi
	call	memset
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x90]
	add	r14, qword ptr [rsp + 0x4a0]
	lea	rdi, [rdi]
	mov	rdi, r14
.label_873:
	mov	esi, dword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x90], rcx
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	test	al, al
	setne	al
	mov	edx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], edx
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x4e8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rdx
	nop	
	mov	dword ptr [rsp], esi
	movzx	r8d, al
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	r9d, r13d
	call	__strftime_internal
	mov	rax, qword ptr [rsp + 0x98]
	add	rax, r14
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x38]
.label_914:
	nop	
	add	rsi, rbx
	jmp	.label_923
.label_936:
	mov	rdx, qword ptr [rsp + 0x48]
	nop	
	movzx	edx, byte ptr [rdx]
	cmp	edx, 0x2d
	sete	r8b
.label_928:
	nop	
	cmp	r12, 3
	mov	r10d, dword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	ja	.label_857
	mov	rbp, rbp
	movsxd	rdx, eax
	imul	rsi, rdx, -0x77777777
	lea	rdi, [rdi]
	shr	rsi, 0x20
	lea	rdi, [rdi]
	add	esi, eax
	nop	
	mov	edi, esi
	lea	rsi, [rsi]
	shr	edi, 0x1f
	mov	rbp, rbp
	sar	esi, 5
	add	esi, edi
	lea	rdi, [rdi]
	imul	rdx, rdx, -0x6e5d4c3b
	shr	rdx, 0x20
	add	edx, eax
	mov	rsp, rsp
	mov	edi, edx
	lea	rdi, [rdi]
	shr	edi, 0x1f
	sar	edx, 0xb
	add	edx, edi
	lea	rsi, [rsi]
	movsxd	rdi, esi
	imul	rsi, rdi, -0x77777777
	shr	rsi, 0x20
	mov	rbp, rbp
	add	esi, edi
	mov	rbp, rbp
	mov	ebx, esi
	shr	ebx, 0x1f
	sar	esi, 5
	mov	rbp, rbp
	add	esi, ebx
	lea	rsi, [rsi]
	imul	esi, esi, 0x3c
	imul	ebx, edi, 0x3c
	sub	edi, esi
	sub	eax, ebx
	nop	
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_1030]]
.label_1439:
	imul	edx, edx, 0x64
	lea	rdi, [rdi]
	add	edx, edi
	mov	r12d, 5
.label_935:
	mov	rsp, rsp
	mov	dil, 1
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	jmp	.label_881
.label_857:
	mov	rsp, rsp
	lea	rbx, [rbp + 1]
	mov	rbp, rbp
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_887:
	inc	r12
	movzx	eax, byte ptr [rbx - 1]
	mov	rsp, rsp
	dec	rbx
	cmp	eax, 0x25
	jne	.label_887
	mov	rsp, rsp
	test	r14d, r14d
	mov	rbp, rbp
	mov	eax, r14d
	mov	ecx, 0
	lea	rdi, [rdi]
	cmovs	eax, ecx
	nop	
	cmp	r12d, eax
	mov	ecx, eax
	cmova	ecx, r12d
	movsxd	rdi, ecx
	mov	rcx, qword ptr [rsp + 0x88]
	mov	rsi, qword ptr [rsp + 0x38]
	sub	rcx, rsi
	cmp	rdi, rcx
	jae	.label_864
	nop	
	test	r9, r9
	mov	ecx, 0
	je	.label_902
	nop	
	movsxd	rdx, r12d
	cmp	r12d, eax
	nop	
	jae	.label_905
	mov	rbp, rbp
	movsxd	r14, r14d
	lea	rsi, [rsi]
	sub	r14, rdx
	mov	rbp, rbp
	cmp	r13d, 0x30
	nop	
	je	.label_909
	cmp	r13d, 0x2b
	mov	rsp, rsp
	jne	.label_915
.label_909:
	mov	qword ptr [rsp + 0x28], rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rdi
	mov	esi, 0x30
	lea	rdi, [rdi]
	jmp	.label_917
.label_915:
	mov	qword ptr [rsp + 0x28], rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rdi
	nop	
	mov	esi, 0x20
.label_917:
	mov	rsp, rsp
	mov	rdi, r9
	mov	rdx, r14
	mov	rbp, rbp
	mov	r13, r9
	nop	
	call	memset
	nop	
	mov	r9, r13
	mov	rsi, qword ptr [rsp + 0x38]
	nop	
	add	r9, r14
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x28]
.label_905:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rdi
	mov	qword ptr [rsp + 0x38], rsi
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_942
	mov	rdi, r9
	mov	rbp, rbp
	mov	rsi, rbx
	mov	r14, r9
	mov	rbx, rdx
	nop	
	call	memcpy
	mov	r10, rbx
	mov	rsp, rsp
	mov	r9, r14
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x30]
	jmp	.label_949
.label_942:
	mov	r13, r9
	mov	r14, rdx
	call	__ctype_toupper_loc
	mov	r10, r14
	lea	rdi, [rdi]
	mov	r9, r13
	nop	
	movsxd	rcx, r12d
	lea	rdi, [rdi]
	lea	r8, [rcx - 1]
	mov	rsp, rsp
	test	cl, 3
	mov	rbp, rbp
	mov	rcx, r10
	je	.label_955
	nop	
	and	r12d, 3
	lea	rdi, [rdi]
	neg	r12
	mov	rcx, r10
	nop	word ptr cs:[rax + rax]
.label_963:
	movzx	esi, byte ptr [rbx + rcx - 1]
	mov	rdi, qword ptr [rax]
	nop	
	mov	dl, byte ptr [rdi + rsi*4]
	mov	rbp, rbp
	mov	byte ptr [r9 + rcx - 1], dl
	mov	rbp, rbp
	dec	rcx
	lea	rsi, [rsi]
	inc	r12
	jne	.label_963
.label_955:
	cmp	r8, 3
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x30]
	nop	
	jb	.label_949
	nop	word ptr cs:[rax + rax]
.label_973:
	nop	
	movzx	edx, byte ptr [rbx + rcx - 1]
	nop	
	mov	rsi, qword ptr [rax]
	nop	
	mov	dl, byte ptr [rsi + rdx*4]
	mov	rsp, rsp
	mov	byte ptr [r9 + rcx - 1], dl
	movzx	edx, byte ptr [rbx + rcx - 2]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	nop	
	mov	byte ptr [r9 + rcx - 2], dl
	movzx	edx, byte ptr [rbx + rcx - 3]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 3], dl
	mov	rbp, rbp
	movzx	edx, byte ptr [rbx + rcx - 4]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rsi + rdx*4]
	lea	rsi, [rsi]
	mov	byte ptr [r9 + rcx - 4], dl
	add	rcx, -4
	jne	.label_973
.label_949:
	lea	rdi, [rdi]
	add	r9, r10
	mov	rbp, rbp
	mov	rcx, r9
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x38]
.label_902:
	add	rsi, rdi
	mov	rsp, rsp
	jmp	.label_923
.label_951:
	mov	rsp, rsp
	xor	eax, eax
	mov	r10d, r14d
	lea	rsi, [rsi]
	add	r10d, -6
	lea	rdi, [rdi]
	cmovs	r10d, eax
	nop	
	mov	eax, OFFSET FLAT:.str.2_2
	mov	rbp, rbp
	jmp	.label_993
.label_1024:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	edx, eax
	nop	
	mov	r14d, 9
	mov	rsp, rsp
	jmp	.label_868
.label_968:
	mov	rsp, rsp
	mov	esi, edx
	neg	esi
	add	edx, 0x64
	mov	rbp, rbp
	cmp	eax, 0xfffff894
	lea	rsi, [rsi]
	cmovl	edx, esi
	nop	
	xor	r8d, r8d
.label_976:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x24]
.label_989:
	mov	dword ptr [rsp + 0x24], eax
	lea	rdi, [rdi]
	test	r13d, r13d
	cmove	r13d, eax
	xor	ebx, ebx
	mov	rsp, rsp
	cmp	r13d, 0x2b
	mov	edi, 0
	lea	rdi, [rdi]
	jne	.label_881
	cmp	r12d, 2
	mov	rsp, rsp
	mov	eax, 0x63
	mov	rbp, rbp
	mov	esi, 0x270f
	cmove	esi, eax
	mov	rbp, rbp
	cmp	esi, edx
	lea	rsi, [rsi]
	setb	al
	nop	
	cmp	r12d, r14d
	setl	dil
	or	dil, al
	nop	
	jmp	.label_881
.label_1442:
	test	eax, eax
	nop	
	je	.label_910
.label_1441:
	imul	edx, edx, 0x2710
	mov	rbp, rbp
	imul	esi, edi, 0x64
	add	edx, eax
	mov	rsp, rsp
	add	edx, esi
	mov	r12d, 9
	mov	dil, 1
	lea	rdi, [rdi]
	mov	ebx, 0x14
	jmp	.label_881
.label_1026:
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x4f0]
	lea	rdi, [rdi]
	mov	edx, eax
	mov	r12d, r14d
	jmp	.label_868
.label_872:
	lea	rsi, [rsi]
	mov	esi, 0x20
.label_1013:
	mov	rdx, r14
	mov	r13, rdi
	mov	rbp, rbp
	call	memset
	lea	rsi, [rsi]
	add	r13, r14
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x48]
	nop	
	mov	rdi, r13
	mov	r9, qword ptr [rsp + 0x30]
.label_999:
	test	bl, bl
	je	.label_1031
	test	r9, r9
	nop	
	je	.label_883
	mov	r13, rdi
	nop	
	mov	rbx, r9
	nop	
	call	__ctype_tolower_loc
	mov	rsp, rsp
	mov	r9, rbx
	lea	r8, [r9 - 1]
	nop	
	test	r9b, 3
	lea	rdi, [rdi]
	je	.label_860
	mov	rbp, rbp
	mov	esi, r9d
	mov	rsp, rsp
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	lea	rdi, [rdi]
	mov	rdi, r13
	nop	word ptr cs:[rax + rax]
.label_956:
	lea	rdi, [rdi]
	movzx	edx, byte ptr [r14 + rcx - 1]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	rbp, rbp
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	inc	rsi
	jne	.label_956
	jmp	.label_879
.label_1031:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	test	al, al
	je	.label_882
	lea	rsi, [rsi]
	test	r9, r9
	nop	
	je	.label_883
	mov	r13, rdi
	mov	rbx, r9
	mov	rbp, rbp
	call	__ctype_toupper_loc
	mov	rsp, rsp
	mov	r9, rbx
	mov	rsp, rsp
	lea	r8, [r9 - 1]
	test	r9b, 3
	je	.label_890
	nop	
	mov	esi, r9d
	mov	rbp, rbp
	and	esi, 3
	mov	rsp, rsp
	neg	rsi
	mov	rcx, r9
	mov	rbp, rbp
	mov	rdi, r13
.label_898:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	rbp, rbp
	mov	byte ptr [rdi + rcx - 1], bl
	mov	rbp, rbp
	dec	rcx
	lea	rdi, [rdi]
	inc	rsi
	jne	.label_898
	mov	rbp, rbp
	jmp	.label_1017
.label_930:
	mov	rsp, rsp
	mov	esi, 0x20
.label_934:
	mov	rbp, rbp
	mov	rdi, r9
	mov	rdx, r14
	nop	
	mov	r13, r9
	call	memset
	lea	rsi, [rsi]
	add	r13, r14
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rbp, rbp
	mov	r9, r13
.label_997:
	mov	rsp, rsp
	mov	byte ptr [r9], 0xa
	mov	rbp, rbp
	jmp	.label_918
.label_1014:
	mov	esi, 0x20
.label_1016:
	lea	rdi, [rdi]
	mov	rdi, r9
	mov	rdx, r14
	lea	rsi, [rsi]
	mov	r13, r9
	call	memset
	mov	rbp, rbp
	add	r13, r14
	mov	rsi, r12
	mov	rbp, rbp
	mov	r9, r13
.label_1008:
	mov	byte ptr [r9], 9
.label_918:
	mov	rbp, rbp
	inc	r9
	mov	rsp, rsp
	mov	rcx, r9
	add	rsi, rbx
	jmp	.label_923
.label_860:
	lea	rsi, [rsi]
	mov	rcx, r9
	mov	rdi, r13
.label_879:
	cmp	r8, 3
	jb	.label_883
	nop	dword ptr [rax + rax]
.label_944:
	lea	rdi, [rdi]
	movzx	edx, byte ptr [r14 + rcx - 1]
	nop	
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	mov	rsp, rsp
	movzx	edx, byte ptr [r14 + rcx - 2]
	mov	rsi, qword ptr [rax]
	nop	
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [r14 + rcx - 3]
	nop	
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	rbp, rbp
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [r14 + rcx - 4]
	nop	
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	rsp, rsp
	mov	byte ptr [rdi + rcx - 4], dl
	mov	rbp, rbp
	add	rcx, -4
	mov	rbp, rbp
	jne	.label_944
	jmp	.label_883
.label_882:
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, r9
	mov	r13, rdi
	mov	rbx, r9
	lea	rdi, [rdi]
	call	memcpy
	mov	rbp, rbp
	mov	r9, rbx
	mov	rdi, r13
	jmp	.label_883
.label_866:
	mov	rsp, rsp
	mov	eax, 9
	sub	eax, ebx
.label_896:
	lea	rdi, [rdi]
	movsxd	rdx, edx
	nop	
	imul	rdx, rdx, 0x68db8bad
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x2c
	lea	rdi, [rdi]
	add	edx, esi
	add	eax, -4
	jne	.label_896
	mov	r12d, r14d
.label_868:
	lea	rsi, [rsi]
	mov	r8d, edx
	lea	rsi, [rsi]
	shr	r8d, 0x1f
.label_861:
	xor	ebx, ebx
	xor	edi, edi
.label_881:
	cmp	r10d, 0x4f
	jne	.label_975
	test	r8b, r8b
	jne	.label_975
	nop	
	mov	dword ptr [rsp + 0x30], r10d
	xor	eax, eax
	mov	r8b, cl
.label_880:
	lea	rdi, [rdi]
	mov	rbx, r12
	nop	
	mov	dword ptr [rsp + 0x28], eax
	mov	r12, r9
	mov	word ptr [rsp + 0x43], 0x2520
	mov	eax, dword ptr [rsp + 0x30]
	test	eax, eax
	lea	rcx, [rsp + 0x45]
	nop	
	je	.label_977
	mov	byte ptr [rsp + 0x45], al
	lea	rcx, [rsp + 0x46]
.label_977:
	mov	byte ptr [rcx], r8b
	mov	byte ptr [rcx + 1], 0
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0xa0]
	lea	rdx, [rsp + 0x43]
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x90]
	call	strftime
	test	rax, rax
	je	.label_994
	lea	rsi, [rsi]
	mov	r8, rbx
	lea	r9, [rax - 1]
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	lea	rsi, [rsi]
	test	r14d, r14d
	nop	
	cmovns	eax, r14d
	cdqe	
	cmp	r9, rax
	mov	rdx, r9
	lea	rdi, [rdi]
	cmovb	rdx, rax
	mov	rcx, qword ptr [rsp + 0x88]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	sub	rcx, rsi
	cmp	rdx, rcx
	nop	
	mov	ebx, dword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	jae	.label_864
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdi, r12
	mov	rsp, rsp
	test	rdi, rdi
	nop	
	je	.label_899
	lea	rsi, [rsi]
	cmp	r9, rax
	setae	al
	mov	rbp, rbp
	mov	r12, rdx
	test	r8d, r8d
	jne	.label_1004
	mov	rbp, rbp
	test	al, al
	jne	.label_1004
	mov	rsp, rsp
	movsxd	r14, r14d
	mov	rsp, rsp
	sub	r14, r9
	mov	qword ptr [rsp + 0x98], r9
	mov	rbp, rbp
	cmp	r13d, 0x30
	lea	rsi, [rsi]
	je	.label_1010
	cmp	r13d, 0x2b
	mov	rsp, rsp
	jne	.label_1015
.label_1010:
	lea	rsi, [rsi]
	mov	esi, 0x30
	jmp	.label_1019
.label_975:
	mov	r10, r12
	mov	eax, edx
	neg	eax
	lea	rsi, [rsi]
	test	r8b, r8b
	cmove	eax, edx
	lea	rdi, [rdi]
	lea	r12, [rsp + 0x77]
	nop	word ptr cs:[rax + rax]
.label_884:
	test	bl, 1
	lea	rdi, [rdi]
	je	.label_1012
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_1012:
	lea	rsi, [rsi]
	sar	ebx, 1
	mov	edx, eax
	mov	ecx, 0xcccccccd
	lea	rdi, [rdi]
	imul	rcx, rdx
	lea	rsi, [rsi]
	shr	rcx, 0x23
	lea	rdi, [rdi]
	lea	edx, [rcx + rcx]
	mov	rbp, rbp
	lea	edx, [rdx + rdx*4]
	mov	esi, eax
	sub	esi, edx
	mov	rbp, rbp
	or	esi, 0x30
	mov	rbp, rbp
	mov	byte ptr [r12 - 1], sil
	mov	rbp, rbp
	dec	r12
	nop	
	cmp	eax, 9
	mov	eax, ecx
	ja	.label_884
	test	ebx, ebx
	mov	eax, ecx
	nop	
	jne	.label_884
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x38]
.label_996:
	mov	rbp, rbp
	cmp	r10d, r14d
	cmovl	r10d, r14d
	nop	
	mov	qword ptr [rsp + 0x30], r10
	test	dil, dil
	je	.label_863
	lea	rdi, [rdi]
	mov	dil, 0x2b
.label_863:
	test	r8b, r8b
	mov	r8b, 0x2d
	mov	rbp, rbp
	jne	.label_867
	lea	rdi, [rdi]
	mov	r8b, dil
.label_867:
	cmp	r13d, 0x2d
	jne	.label_871
	mov	rbp, rbp
	test	r8b, r8b
	je	.label_875
	xor	eax, eax
	lea	rdi, [rdi]
	test	r14d, r14d
	lea	rdi, [rdi]
	cmovns	eax, r14d
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x88]
	sub	rcx, rsi
	cmp	rbx, rcx
	lea	rsi, [rsi]
	jae	.label_864
	nop	
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	r9, r9
	je	.label_889
	mov	rbp, rbp
	cmp	eax, 2
	setb	al
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x30]
	nop	
	test	ecx, ecx
	jne	.label_894
	lea	rsi, [rsi]
	test	al, al
	lea	rsi, [rsi]
	jne	.label_894
	movsxd	rax, r14d
	mov	qword ptr [rsp + 0x4a0], rax
	lea	rdi, [rdi]
	lea	rdx, [rax - 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rsi
	mov	esi, 0x20
	lea	rdi, [rdi]
	mov	rdi, r9
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r9
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x98], r8b
	call	memset
	nop	
	mov	r8b, byte ptr [rsp + 0x98]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rsp + 0x4a0]
	lea	rsi, [rsi]
	lea	r9, [r9 + rax - 1]
	mov	rbp, rbp
	jmp	.label_894
.label_994:
	mov	rsi, qword ptr [rsp + 0x38]
	mov	r9, r12
	jmp	.label_927
.label_871:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	cdqe	
	mov	rsp, rsp
	mov	rcx, r12
	lea	rdx, [rsp + 0x77]
	sub	rcx, rdx
	lea	rsi, [rsi]
	mov	dl, r8b
	nop	
	neg	dl
	sbb	rbx, rbx
	mov	rsp, rsp
	add	rbx, rcx
	mov	rbp, rbp
	add	rbx, rax
	mov	rbp, rbp
	test	ebx, ebx
	lea	rsi, [rsi]
	jle	.label_932
	nop	
	cmp	r13d, 0x5f
	lea	rdi, [rdi]
	jne	.label_945
	movsxd	rdx, ebx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	sub	rax, rsi
	nop	
	cmp	rdx, rax
	jae	.label_864
	mov	rsp, rsp
	xor	edi, edi
	test	r9, r9
	mov	r10d, 0
	je	.label_950
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rsi
	mov	rsp, rsp
	mov	esi, 0x20
	lea	rdi, [rdi]
	mov	rdi, r9
	nop	
	mov	qword ptr [rsp + 0x28], r9
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x98], r8b
	mov	qword ptr [rsp + 0x4a0], rdx
	nop	
	call	memset
	mov	rdx, qword ptr [rsp + 0x4a0]
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0x98]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	add	rax, rdx
	mov	r10, rax
.label_950:
	add	rsi, rdx
	sub	r14d, ebx
	cmovg	edi, r14d
	nop	
	test	r8b, r8b
	mov	rsp, rsp
	je	.label_969
	xor	eax, eax
	test	edi, edi
	lea	rsi, [rsi]
	cmovns	eax, edi
	movsxd	rcx, eax
	cmp	ecx, 1
	lea	rdi, [rdi]
	mov	ebx, 1
	mov	rsp, rsp
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x88]
	sub	rcx, rsi
	mov	rsp, rsp
	cmp	rbx, rcx
	nop	
	jae	.label_864
	mov	rbp, rbp
	xor	r9d, r9d
	test	r10, r10
	je	.label_981
	lea	rsi, [rsi]
	cmp	eax, 2
	setb	al
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x30]
	nop	
	test	ecx, ecx
	jne	.label_982
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x98], r8b
	mov	rbp, rbp
	test	al, al
	jne	.label_947
	lea	rdi, [rdi]
	movsxd	rax, edi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x4a0], rax
	mov	qword ptr [rsp + 0x28], rdi
	lea	rdx, [rax - 1]
	mov	qword ptr [rsp + 0x38], rsi
	mov	esi, 0x20
	mov	r14, r10
	mov	rdi, r14
	call	memset
	lea	rsi, [rsi]
	mov	r10, r14
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rsp + 0x4a0]
	lea	rdi, [rdi]
	lea	r10, [r10 + rax - 1]
	nop	
	jmp	.label_939
.label_932:
	test	r8b, r8b
	mov	rsp, rsp
	je	.label_875
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	test	r14d, r14d
	lea	rsi, [rsi]
	cmovns	eax, r14d
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	ecx, 1
	nop	
	mov	ebx, 1
	lea	rdi, [rdi]
	cmova	rbx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	sub	rcx, rsi
	nop	
	cmp	rbx, rcx
	jae	.label_864
	xor	ecx, ecx
	test	r9, r9
	nop	
	je	.label_889
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	test	ecx, ecx
	jne	.label_894
	test	al, al
	jne	.label_894
	mov	byte ptr [rsp + 0x98], r8b
	mov	qword ptr [rsp + 0x38], rsi
	movsxd	rax, r14d
	nop	
	dec	rax
	cmp	r13d, 0x30
	mov	rsp, rsp
	je	.label_1018
	nop	
	cmp	r13d, 0x2b
	jne	.label_1022
.label_1018:
	mov	esi, 0x30
	jmp	.label_1025
.label_945:
	mov	rcx, qword ptr [rsp + 0x88]
	sub	rcx, rsi
	cmp	rax, rcx
	jae	.label_864
	lea	rsi, [rsi]
	test	r8b, r8b
	mov	rbp, rbp
	je	.label_897
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rdx, eax
	nop	
	cmp	edx, 1
	lea	rdi, [rdi]
	mov	edi, 1
	cmova	rdi, rdx
	cmp	rdi, rcx
	jae	.label_864
	xor	ecx, ecx
	nop	
	test	r9, r9
	lea	rsi, [rsi]
	je	.label_1032
	lea	rdi, [rdi]
	cmp	eax, 2
	setb	al
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x30]
	test	ecx, ecx
	jne	.label_858
	test	al, al
	lea	rdi, [rdi]
	jne	.label_858
	mov	qword ptr [rsp + 0x28], rdi
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x98], r8b
	mov	qword ptr [rsp + 0x38], rsi
	movsxd	rax, r14d
	mov	rbp, rbp
	dec	rax
	cmp	r13d, 0x30
	lea	rdi, [rdi]
	je	.label_900
	lea	rsi, [rsi]
	cmp	r13d, 0x2b
	mov	rsp, rsp
	jne	.label_965
.label_900:
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rbp, rbp
	jmp	.label_877
.label_1015:
	lea	rsi, [rsi]
	mov	esi, 0x20
.label_1019:
	mov	rdx, r14
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	memset
	lea	rdi, [rdi]
	add	rbx, r14
	mov	rdi, rbx
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x98]
	mov	ebx, dword ptr [rsp + 0x28]
.label_1004:
	test	bl, 1
	mov	rsp, rsp
	jne	.label_891
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_892
	lea	rsi, [rsp + 0xa1]
	mov	rdx, r9
	mov	r14, rdi
	mov	rbx, r9
	call	memcpy
	nop	
	mov	r9, rbx
	mov	rdi, r14
	lea	rsi, [rsi]
	jmp	.label_888
.label_891:
	mov	rbp, rbp
	test	r9, r9
	je	.label_888
	mov	r14, rdi
	mov	rbx, r9
	call	__ctype_tolower_loc
	mov	rbp, rbp
	mov	r9, rbx
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x30]
	lea	ecx, [rdx + 3]
	lea	rsi, [rsi]
	mov	r8, rdx
	nop	
	add	r8, -2
	mov	rbp, rbp
	test	cl, 3
	mov	rcx, r9
	lea	rdi, [rdi]
	je	.label_906
	lea	rsi, [rsi]
	lea	esi, [rdx + 3]
	mov	rsp, rsp
	and	esi, 3
	lea	rsi, [rsi]
	neg	rsi
	lea	rsi, [rsi]
	mov	rcx, r9
	nop	word ptr cs:[rax + rax]
.label_931:
	movzx	edx, byte ptr [rsp + rcx + 0xa0]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	lea	rsi, [rsi]
	inc	rsi
	mov	rsp, rsp
	jne	.label_931
.label_906:
	cmp	r8, 3
	jb	.label_888
	nop	word ptr [rax + rax]
.label_907:
	movzx	edx, byte ptr [rsp + rcx + 0xa0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	movzx	edx, byte ptr [rsp + rcx + 0x9f]
	mov	rsi, qword ptr [rax]
	nop	
	mov	dl, byte ptr [rsi + rdx*4]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [rsp + rcx + 0x9e]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [rsp + rcx + 0x9d]
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	mov	dl, byte ptr [rsi + rdx*4]
	nop	
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_907
	jmp	.label_888
.label_892:
	test	r9, r9
	mov	rbp, rbp
	je	.label_888
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rbp, rbp
	mov	rbx, r9
	mov	rbp, rbp
	call	__ctype_toupper_loc
	mov	rbp, rbp
	mov	r9, rbx
	nop	
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	lea	ecx, [rdx + 3]
	mov	r8, rdx
	lea	rsi, [rsi]
	add	r8, -2
	test	cl, 3
	lea	rdi, [rdi]
	mov	rcx, r9
	lea	rdi, [rdi]
	je	.label_960
	lea	esi, [rdx + 3]
	and	esi, 3
	lea	rdi, [rdi]
	neg	rsi
	nop	
	mov	rcx, r9
	nop	word ptr cs:[rax + rax]
.label_933:
	movzx	edx, byte ptr [rsp + rcx + 0xa0]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rcx - 1], bl
	lea	rsi, [rsi]
	dec	rcx
	inc	rsi
	lea	rsi, [rsi]
	jne	.label_933
.label_960:
	lea	rdi, [rdi]
	cmp	r8, 3
	jb	.label_888
	nop	dword ptr [rax]
.label_991:
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rsp + rcx + 0xa0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	nop	
	movzx	edx, byte ptr [rsp + rcx + 0x9f]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	rsp, rsp
	mov	byte ptr [rdi + rcx - 2], dl
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rsp + rcx + 0x9e]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	nop	
	mov	dl, byte ptr [rsi + rdx*4]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rcx - 3], dl
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rsp + rcx + 0x9d]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	rbp, rbp
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_991
.label_888:
	mov	rbp, rbp
	add	rdi, r9
	mov	rcx, rdi
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, r12
	lea	rsi, [rsi]
	jmp	.label_899
.label_969:
	nop	
	mov	r9, r10
	lea	rdi, [rdi]
	mov	r14d, edi
	nop	
	jmp	.label_875
.label_982:
	mov	qword ptr [rsp + 0x28], rdi
	jmp	.label_988
.label_947:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
.label_939:
	mov	r8b, byte ptr [rsp + 0x98]
.label_988:
	lea	rsi, [rsi]
	mov	byte ptr [r10], r8b
	mov	rbp, rbp
	inc	r10
	mov	r9, r10
	mov	rdi, qword ptr [rsp + 0x28]
.label_981:
	add	rsi, rbx
	lea	rdi, [rdi]
	mov	r14d, edi
	nop	
	jmp	.label_875
.label_1022:
	mov	esi, 0x20
.label_1025:
	lea	rsi, [rsi]
	mov	rdi, r9
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x4a0], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r9
	lea	rdi, [rdi]
	call	memset
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0x4a0]
	mov	rsi, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	r9, rax
	nop	
	mov	r8b, byte ptr [rsp + 0x98]
.label_894:
	lea	rdi, [rdi]
	mov	byte ptr [r9], r8b
	lea	rdi, [rdi]
	inc	r9
	mov	rbp, rbp
	mov	rcx, r9
.label_889:
	add	rsi, rbx
	nop	
	mov	r9, rcx
	jmp	.label_875
.label_910:
	test	edi, edi
	je	.label_1027
.label_1440:
	lea	rdi, [rdi]
	imul	edx, edx, 0x64
	mov	rbp, rbp
	add	edx, edi
	lea	rsi, [rsi]
	mov	r12d, 6
	mov	dil, 1
	mov	rsp, rsp
	mov	ebx, 4
	lea	rdi, [rdi]
	jmp	.label_881
.label_965:
	mov	esi, 0x20
.label_877:
	mov	rbp, rbp
	mov	rdi, r9
	mov	rdx, rax
	mov	qword ptr [rsp + 0x4a0], rdx
	lea	rsi, [rsi]
	mov	r14, r9
	call	memset
	add	r14, qword ptr [rsp + 0x4a0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	r9, r14
	mov	r8b, byte ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x28]
.label_858:
	mov	rbp, rbp
	mov	byte ptr [r9], r8b
	inc	r9
	lea	rsi, [rsi]
	mov	rcx, r9
.label_1032:
	add	rsi, rdi
	mov	r9, rcx
.label_897:
	xor	r14d, r14d
	test	r9, r9
	movsxd	rcx, ebx
	mov	ebx, 0
	je	.label_954
	mov	qword ptr [rsp + 0x38], rsi
	mov	esi, 0x30
	mov	rdi, r9
	nop	
	mov	qword ptr [rsp + 0x28], rcx
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rbx, r9
	call	memset
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x38]
	add	rbx, rcx
.label_954:
	nop	
	add	rsi, rcx
	mov	r9, rbx
.label_875:
	lea	rdi, [rdi]
	lea	rbx, [rsp + 0x77]
	sub	rbx, r12
	lea	rdi, [rdi]
	xor	eax, eax
	test	r14d, r14d
	mov	rbp, rbp
	cmovns	eax, r14d
	cdqe	
	lea	rdi, [rdi]
	cmp	rbx, rax
	mov	rdx, rbx
	cmovb	rdx, rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x88]
	sub	rcx, rsi
	mov	rbp, rbp
	cmp	rdx, rcx
	lea	rdi, [rdi]
	jae	.label_864
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	test	r9, r9
	je	.label_899
	cmp	rbx, rax
	setae	al
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	test	ecx, ecx
	jne	.label_901
	mov	rsp, rsp
	test	al, al
	mov	rbp, rbp
	jne	.label_904
	lea	rsi, [rsi]
	movsxd	r14, r14d
	mov	rsp, rsp
	sub	r14, rbx
	mov	rbp, rbp
	cmp	r13d, 0x30
	je	.label_908
	lea	rsi, [rsi]
	cmp	r13d, 0x2b
	lea	rdi, [rdi]
	jne	.label_913
.label_908:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rsi
	nop	
	mov	esi, 0x30
	mov	rsp, rsp
	jmp	.label_995
.label_899:
	mov	rbp, rbp
	add	rsi, rdx
	mov	rsp, rsp
	jmp	.label_923
.label_901:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rsi
	jmp	.label_926
.label_904:
	mov	qword ptr [rsp + 0x38], rsi
	mov	rbp, rbp
	jmp	.label_926
.label_913:
	mov	qword ptr [rsp + 0x38], rsi
	mov	esi, 0x20
.label_995:
	mov	rbp, rbp
	mov	rdi, r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbp, rbp
	mov	rdx, r14
	lea	rsi, [rsi]
	mov	r13, r9
	lea	rdi, [rdi]
	call	memset
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	r9, r13
	add	r9, r14
.label_926:
	lea	rsi, [rsi]
	mov	r13, rdx
	mov	rax, qword ptr [rsp + 0x58]
	test	al, al
	je	.label_943
	lea	rdi, [rdi]
	lea	rax, [rsp + 0x77]
	cmp	rax, r12
	je	.label_895
	mov	r14, r9
	mov	rsp, rsp
	call	__ctype_toupper_loc
	nop	
	mov	r9, r14
	lea	rcx, [rsp + 0x77]
	mov	rbp, rbp
	sub	ecx, r12d
	lea	rsi, [rsi]
	lea	r8, [rsp + 0x76]
	nop	
	sub	r8, r12
	lea	rdi, [rdi]
	test	cl, 3
	mov	rcx, rbx
	je	.label_953
	lea	rsi, [rsp + 0x77]
	sub	esi, r12d
	lea	rsi, [rsi]
	and	esi, 3
	mov	rbp, rbp
	neg	rsi
	mov	rcx, rbx
	nop	word ptr cs:[rax + rax]
.label_876:
	movzx	edi, byte ptr [r12 + rcx - 1]
	mov	rdx, qword ptr [rax]
	mov	dl, byte ptr [rdx + rdi*4]
	lea	rsi, [rsi]
	mov	byte ptr [r9 + rcx - 1], dl
	dec	rcx
	mov	rbp, rbp
	inc	rsi
	jne	.label_876
.label_953:
	cmp	r8, 3
	mov	rbp, rbp
	jb	.label_895
	nop	dword ptr [rax]
.label_972:
	movzx	edx, byte ptr [r12 + rcx - 1]
	nop	
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 1], dl
	nop	
	movzx	edx, byte ptr [r12 + rcx - 2]
	nop	
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 2], dl
	mov	rbp, rbp
	movzx	edx, byte ptr [r12 + rcx - 3]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	nop	
	mov	byte ptr [r9 + rcx - 3], dl
	movzx	edx, byte ptr [r12 + rcx - 4]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 4], dl
	mov	rsp, rsp
	add	rcx, -4
	lea	rdi, [rdi]
	jne	.label_972
	jmp	.label_895
.label_943:
	mov	rdi, r9
	mov	rbp, rbp
	mov	rsi, r12
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rbp, rbp
	mov	r14, r9
	lea	rdi, [rdi]
	call	memcpy
	mov	rbp, rbp
	mov	r9, r14
.label_895:
	nop	
	add	r9, rbx
	mov	rcx, r9
	nop	
	mov	rsi, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	rdx, r13
	add	rsi, rdx
	jmp	.label_923
.label_967:
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	esi, 0x20
.label_970:
	mov	rdi, r9
	mov	rdx, r14
	lea	rdi, [rdi]
	mov	r13, r9
	mov	rbp, rbp
	call	memset
	nop	
	mov	r9, r13
	mov	rsi, r12
	add	r9, r14
	mov	cl, byte ptr [rbp]
.label_962:
	mov	byte ptr [r9], cl
	lea	rsi, [rsi]
	jmp	.label_971
.label_890:
	mov	rcx, r9
	mov	rdi, r13
.label_1017:
	lea	rdi, [rdi]
	cmp	r8, 3
	lea	rdi, [rdi]
	jb	.label_883
.label_1000:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	mov	rbp, rbp
	movzx	edx, byte ptr [r14 + rcx - 2]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [r14 + rcx - 3]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	mov	dl, byte ptr [rsi + rdx*4]
	nop	
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [r14 + rcx - 4]
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 4], dl
	nop	
	add	rcx, -4
	jne	.label_1000
.label_883:
	mov	qword ptr [rsp + 0x48], r14
	add	rdi, r9
	mov	rcx, rdi
	mov	rsi, qword ptr [rsp + 0x38]
.label_1001:
	add	rsi, r12
	nop	dword ptr [rax]
.label_923:
	mov	rbp, rbp
	mov	r9, rcx
.label_927:
	mov	al, byte ptr [rbp + 1]
	inc	rbp
	mov	r14d, 0xffffffff
	test	al, al
	jne	.label_912
.label_929:
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x88], 0
	je	.label_1023
	lea	rdi, [rdi]
	test	r9, r9
	je	.label_1023
	mov	byte ptr [r9], 0
	jmp	.label_1023
.label_864:
	mov	rbp, rbp
	xor	esi, esi
.label_1023:
	mov	rax, rsi
	add	rsp, 0x4a8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e7f0

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
	je	.label_1033
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
	jl	.label_1035
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_1035
	mov	esi, OFFSET FLAT:.str.2_3
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1034
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_1034:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_1035:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_1033:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_8
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
	#Procedure 0x40e8e0
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
	#Procedure 0x40e930

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
	#Procedure 0x40e950

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
	#Procedure 0x40e970
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
	#Procedure 0x40e9e0
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
	#Procedure 0x40ea00
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
	je	.label_1036
	test	rdx, rdx
	nop	
	je	.label_1036
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_1036:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ea40
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
	#Procedure 0x40eaf0

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
	sub	rsp, 0xf8
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x24], ebx
	mov	r12d, r8d
	mov	r15, rcx
	mov	qword ptr [rsp + 0xe0], rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	qword ptr [rsp + 0xb8], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x140]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x138]
	mov	qword ptr [rsp + 0x18], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa8], rax
	mov	dl, bl
	mov	rbp, rbp
	shr	dl, 1
	mov	rbp, rbp
	and	dl, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x94], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x5c], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	eax, 0
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xc8], rcx
.label_1139:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_1157
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1134]]
.label_1486:
	mov	r15d, edi
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_2
	nop	
	mov	esi, r12d
	mov	r14, r10
	nop	
	mov	r13b, r8b
	mov	bl, dl
	mov	rbp, rbp
	call	gettext_quote
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, OFFSET FLAT:.str.12_1
	mov	rsp, rsp
	mov	esi, r12d
	call	gettext_quote
	mov	rsp, rsp
	mov	dl, bl
	mov	rsp, rsp
	mov	edi, r15d
	mov	r8b, r13b
	mov	r10, r14
	nop	
	mov	qword ptr [rsp + 0x98], rax
.label_1487:
	nop	
	mov	qword ptr [rsp + 0xd8], r10
	mov	byte ptr [rsp + 0xf7], r8b
	mov	dword ptr [rsp + 0x38], edi
	test	dl, 1
	mov	rbp, rbp
	mov	r15b, dl
	mov	rbp, rbp
	mov	r14d, 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jne	.label_1066
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_1066
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_1092:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_1085
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_1085:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_1092
.label_1066:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x98]
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	r9d, r12d
	mov	qword ptr [rsp + 0x68], rbx
	mov	r13b, 1
	mov	rbp, rbp
	mov	sil, r15b
	mov	r10, qword ptr [rsp + 0xd8]
	nop	
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	edi, dword ptr [rsp + 0x38]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	jmp	.label_1037
.label_1479:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_1037
.label_1482:
	lea	rsi, [rsi]
	mov	al, 1
.label_1480:
	lea	rsi, [rsi]
	mov	dl, 1
.label_1483:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_1122
	mov	rbp, rbp
	mov	cl, al
.label_1122:
	mov	al, cl
.label_1481:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_1127
	test	rbp, rbp
	je	.label_1131
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_1132
.label_1127:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_1132
.label_1484:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_1143
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_1147
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_1050
.label_1485:
	mov	r13b, 1
	mov	rsp, rsp
	mov	r9d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:.str.10_2
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xa0], rax
	mov	sil, 1
	lea	rsi, [rsi]
	jmp	.label_1037
.label_1131:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_1132:
	mov	ecx, OFFSET FLAT:.str.12_1
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_1037
.label_1143:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_1050
.label_1147:
	nop	
	mov	r14d, 1
.label_1050:
	mov	eax, OFFSET FLAT:.str.10_2
	mov	qword ptr [rsp + 0x68], rax
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	lea	rdi, [rdi]
	mov	r13b, 1
	mov	sil, dl
	nop	word ptr cs:[rax + rax]
.label_1037:
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x46], r13b
	cmp	qword ptr [rsp + 0x130], 0
	mov	rbp, rbp
	setne	r12b
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	r15b
	sete	al
	mov	cl, r13b
	mov	rsp, rsp
	and	cl, 1
	mov	byte ptr [rsp + 0x37], cl
	lea	rsi, [rsi]
	sete	byte ptr [rsp + 0xf6]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0x83], bl
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0xa0], 0
	lea	rsi, [rsi]
	setne	cl
	mov	dl, cl
	lea	rsi, [rsi]
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x56], dl
	mov	rbp, rbp
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc6], bl
	sete	dl
	lea	rdi, [rdi]
	and	al, bl
	mov	byte ptr [rsp + 0x47], al
	and	r12b, bl
	mov	byte ptr [rsp + 0x57], r12b
	mov	rsp, rsp
	or	dl, r15b
	mov	byte ptr [rsp + 0xc7], dl
	and	r13b, sil
	mov	rbp, rbp
	and	r13b, cl
	mov	byte ptr [rsp + 0xb7], r13b
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_1070
	nop	dword ptr [rax]
.label_1062:
	mov	rsp, rsp
	inc	r15
.label_1070:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_1115
	cmp	r15, r10
	jne	.label_1117
	jmp	.label_1123
	nop	dword ptr [rax]
.label_1115:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_1120
.label_1117:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_1041
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_1128
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_1128
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	rdi, r11
	mov	r12b, r8b
	mov	r13, r9
	mov	r15, r14
	lea	rsi, [rsi]
	mov	r14, r11
	nop	
	call	strlen
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, r15
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x38]
	mov	r9, r13
	mov	r8b, r12b
	mov	r10, rax
.label_1128:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_1155
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_1073
	nop	dword ptr [rax]
.label_1041:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_1073
	nop	word ptr cs:[rax + rax]
.label_1155:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], r14
	mov	r15d, edi
	lea	rdi, [rdi]
	mov	r13, r9
	mov	rsp, rsp
	mov	r12b, r8b
	lea	rsi, [rsi]
	mov	rbx, r10
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [r11 + rax]
	nop	
	mov	r14, r11
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xa0]
	call	memcmp
	lea	rsi, [rsi]
	test	eax, eax
	sete	al
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x84], eax
	mov	rsp, rsp
	jne	.label_1065
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xc6], 0
	mov	rsp, rsp
	mov	r10, rbx
	nop	
	mov	r8b, r12b
	lea	rsi, [rsi]
	mov	r9, r13
	nop	
	mov	edi, r15d
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	r15, qword ptr [rsp + 0x88]
	je	.label_1073
	jmp	.label_1052
.label_1065:
	mov	r10, rbx
	mov	r8b, r12b
	mov	r9, r13
	mov	edi, r15d
	lea	rsi, [rsi]
	mov	r11, r14
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 0x88]
	nop	dword ptr [rax + rax]
.label_1073:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_1097
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_1103]]
.label_1640:
	test	r15, r15
	jne	.label_1069
	jmp	.label_1096
.label_1644:
	xor	eax, eax
	cmp	r10, -1
	je	.label_1110
	test	r15, r15
	jne	.label_1045
	nop	
	cmp	r10, 1
	je	.label_1096
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_1056
.label_1633:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_1118
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_1052
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_1125
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_1125
	cmp	r14, rbp
	jae	.label_1130
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_1130:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_1111
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_1111:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_1146
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_1146:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_1125:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_1154
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_1154:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_1159
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_1164
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_1038
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_1049
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_1049:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_1057
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_1057:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_1056
.label_1634:
	mov	bl, 0x62
	nop	
	jmp	.label_1072
.label_1635:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_1071
.label_1636:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_1072
.label_1637:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_1072
.label_1638:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_1071
.label_1641:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_1141
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_1088
	nop	
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, rcx
	mov	rsp, rsp
	test	rdx, rdx
	setne	cl
	lea	rsi, [rsi]
	or	cl, al
	mov	rbp, rbp
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x48], rdx
	mov	rsp, rsp
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_1094
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_1094:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_1109
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_1109:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_1099
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_1099:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_1141:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_1056
.label_1642:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_1126
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_1069
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_1069
	nop	
	jmp	.label_1138
.label_1643:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_1140
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_1145
	jmp	.label_1148
.label_1097:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_1151
	mov	rbp, rbp
	mov	rbx, r10
	mov	rbp, r11
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	r11, rbp
	nop	
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r12*2]
	shr	r13d, 0xe
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rsi, [rsi]
	jmp	.label_1162
.label_1110:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_1047
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_1047
.label_1096:
	mov	dl, 1
.label_1639:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_1053
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_1056
.label_1118:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_1062
	jmp	.label_1069
.label_1140:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_1071
.label_1145:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_1074
.label_1071:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_1079
.label_1072:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_1056
	jmp	.label_1084
.label_1151:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_1086
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_1086:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_1101
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_1046:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [r11 + rax]
	mov	rsp, rsp
	mov	rdx, r10
	lea	rsi, [rsi]
	sub	rdx, rax
	lea	rdi, [rsp + 0x58]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	rbx, rax
	cmp	rbx, -2
	lea	rdi, [rdi]
	je	.label_1119
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_1080
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_1165
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_1136
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_1158:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_1153
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_1083
.label_1153:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_1158
.label_1136:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1161
	mov	rbp, rbp
	xor	r13d, r13d
.label_1161:
	lea	rbp, [rsp + 0x70]
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	add	rax, rbx
	mov	rdi, rbp
	nop	
	mov	rbx, rax
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	je	.label_1046
	jmp	.label_1055
	nop	
.label_1101:
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, r10
	lea	rdi, [rdi]
	sub	rdx, rax
	mov	rsp, rsp
	lea	rdi, [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	rbp, rbp
	mov	rbx, rbp
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_1077
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_1080
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_1119
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1089
	xor	r13d, r13d
.label_1089:
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	add	rax, rbp
	mov	rsp, rsp
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_1101
	lea	rsi, [rsi]
	jmp	.label_1055
.label_1047:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_1056
.label_1126:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_1069
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_1069
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_1069
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_1121
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_1124
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_1091
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_1137
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_1137:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_1144
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_1144:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1060
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_1060:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_1042
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_1042:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_1056
.label_1069:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_1056:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_1149
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_1048
	nop	
	jmp	.label_1106
	nop	dword ptr [rax + rax]
.label_1149:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_1106
.label_1048:
	lea	rdi, [rdi]
	mov	cl, r12b
	lea	rdi, [rdi]
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	lea	rsi, [rsi]
	mov	cl, r12b
	shl	esi, cl
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
	jne	.label_1058
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_1067
	nop	word ptr cs:[rax + rax]
.label_1106:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_1067:
	mov	bl, r12b
	je	.label_1074
	jmp	.label_1084
.label_1058:
	mov	bl, r12b
.label_1084:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_1052
	cmp	r9d, 2
	jne	.label_1039
	mov	al, dil
	and	al, 1
	jne	.label_1039
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_1090
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_1090:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_1135
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_1135:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1104
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_1104:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_1039:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_1108
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_1108:
	mov	rbp, rbp
	inc	r14
	jmp	.label_1114
.label_1045:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_1056
.label_1159:
	xor	r13d, r13d
	jmp	.label_1056
.label_1164:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_1056
.label_1038:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_1056
.label_1080:
	xor	r13d, r13d
.label_1077:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_1055
.label_1119:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_1133
	lea	rax, [r11 + r15]
.label_1152:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_1061
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_1152
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_1055
.label_1133:
	xor	r13d, r13d
	jmp	.label_1055
.label_1061:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_1055
.label_1165:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_1055:
	mov	rbp, rbp
	mov	rbx, r10
.label_1162:
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	cl, r13b
	lea	rdi, [rdi]
	or	cl, byte ptr [rsp + 0xf6]
	cmp	rdx, 1
	mov	rbp, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0xd0]
	mov	edi, dword ptr [rsp + 0x38]
	ja	.label_1054
	test	cl, cl
	je	.label_1054
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_1056
.label_1054:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_1059
	nop	dword ptr [rax]
.label_1051:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_1059:
	mov	rsp, rsp
	test	cl, cl
	je	.label_1075
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_1078
	cmp	r14, rbp
	jae	.label_1081
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_1081:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_1078:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_1087
	nop	dword ptr [rax + rax]
.label_1075:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_1095
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_1068
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_1068
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_1105
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_1105:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_1076
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_1076:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_1113
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_1113:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_1068:
	cmp	r14, rbp
	jae	.label_1142
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_1142:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_1044
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_1044:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_1082
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_1082:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_1087:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_1074
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_1102
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_1102
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_1093
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_1093:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_1043
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_1043:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_1102:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_1051
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_1051
	nop	word ptr cs:[rax + rax]
.label_1074:
	test	dil, 1
	je	.label_1064
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_1064
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_1116
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_1116:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1100
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_1100:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_1064:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_1114:
	cmp	r14, rbp
	jae	.label_1156
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_1156:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_1062
.label_1121:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_1056
.label_1124:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_1056
	nop	word ptr [rax + rax]
.label_1123:
	nop	
	mov	rcx, r15
.label_1120:
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	al
	mov	rbp, rbp
	test	r14, r14
	mov	rsp, rsp
	setne	dl
	cmp	byte ptr [rsp + 0xc6], 0
	lea	rsi, [rsi]
	je	.label_1107
	mov	rsp, rsp
	or	al, dl
	je	.label_1112
.label_1107:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], r11
	cmp	r9d, 2
	nop	
	setne	al
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x46]
	nop	
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	je	.label_1063
	mov	rsp, rsp
	or	al, dl
	jne	.label_1063
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_1129
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_1063
	mov	rbp, rbp
	test	rbp, rbp
	mov	rbp, rbp
	mov	r12d, r9d
	mov	al, bl
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	dl, sil
	mov	r13, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	je	.label_1139
.label_1063:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_1150
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_1150
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_1150
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_1163:
	cmp	r14, rbp
	jae	.label_1160
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_1160:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_1163
.label_1150:
	cmp	r14, rbp
	jae	.label_1040
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_1040
.label_1053:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_1052
.label_1083:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_1052
.label_1095:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_1052
.label_1112:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_1052
.label_1079:
	nop	
	mov	r9d, 2
.label_1052:
	cmp	byte ptr [rsp + 0x37], 0
	mov	r8d, 4
	mov	rbp, rbp
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], 0
	nop	
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, r11
	nop	
	mov	rcx, r10
.label_1098:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_1040:
	lea	rdi, [rdi]
	mov	rax, r14
	lea	rdi, [rdi]
	add	rsp, 0xf8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_1129:
	mov	rax, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x130]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x24]
	jmp	.label_1098
.label_1088:
	mov	r9d, 2
	jmp	.label_1052
.label_1148:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_1052
.label_1138:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_1052
.label_1091:
	mov	r9d, 5
	nop	
	jmp	.label_1052
.label_1157:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ff90
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
.label_1630:
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
	#Procedure 0x4100d0
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
	je	.label_1166
	mov	qword ptr [rax], rbx
.label_1166:
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
	#Procedure 0x410220
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_1167
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1171:
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
	jl	.label_1171
.label_1167:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_1170
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_1168]], OFFSET FLAT:slot0
.label_1170:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1169
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_1169:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4102e0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4102f0

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
	js	.label_1178
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_1173
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_1175
.label_1173:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_1174
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
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_1177
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_1177:
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
.label_1175:
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
	ja	.label_1176
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
	je	.label_1172
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_1172:
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
.label_1176:
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
.label_1178:
	lea	rdi, [rdi]
	call	abort
.label_1174:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x410560
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410570
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
	#Procedure 0x4105a0
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
	#Procedure 0x4105d0

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
	je	.label_1179
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
.label_1179:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410660
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
	je	.label_1180
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
.label_1180:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410700

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
	je	.label_1181
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
.label_1181:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410790
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
	je	.label_1182
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
.label_1182:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x410800
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_1183]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1184]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1185]]
	nop	
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x4108a0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_1183]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1184]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1185]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x410940

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_1183]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1184]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1185]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x4109b0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_1183]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1184]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1185]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
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
	#Procedure 0x410a20
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
	je	.label_1186
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
.label_1186:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x410b00
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_1183]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1184]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1185]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_1187
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_1187
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
.label_1187:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x410b90
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_1183]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1184]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1185]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1188
	test	rdx, rdx
	je	.label_1188
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
.label_1188:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410c20
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_1183]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1184]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1185]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_1189
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_1189
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
.label_1189:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410cc0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_1183]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1184]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1185]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1190
	test	rsi, rsi
	je	.label_1190
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
.label_1190:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410d60
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410d70
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
	#Procedure 0x410d90

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
	#Procedure 0x410db0

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
	#Procedure 0x410de0

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
	jne	.label_1192
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_1194
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_1193
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_1193
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_1193
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_1193
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_1193
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_1193
	nop	
	mov	eax, OFFSET FLAT:.str.14_1
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_1192
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_1192
.label_1194:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_1193
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_1193
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_1193
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_1193
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_1193
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_1193
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_1191
.label_1193:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_2
	mov	eax, OFFSET FLAT:.str.12_1
	cmove	rax, rcx
.label_1192:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1191:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_1192
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_1192
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410f50

	.globl save_cwd
	.type save_cwd, @function
save_cwd:
	push	rbp
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	mov	rbx, rdi
	mov	qword ptr [rbx + 8], 0
	mov	rsp, rsp
	xor	ebp, ebp
	nop	
	mov	edi, OFFSET FLAT:.str_1
	mov	esi, 0x80000
	xor	eax, eax
	call	open_safer
	mov	dword ptr [rbx], eax
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	jns	.label_1195
	nop	
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	qword ptr [rbx + 8], rax
	cmp	rax, 1
	sbb	ebp, ebp
.label_1195:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410fb0

	.globl restore_cwd
	.type restore_cwd, @function
restore_cwd:
	mov	eax, dword ptr [rdi]
	test	eax, eax
	lea	rsi, [rsi]
	js	.label_1196
	mov	rbp, rbp
	mov	edi, eax
	jmp	fchdir
.label_1196:
	mov	rdi, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	jmp	chdir_long
	nop	
	.section	.text
	.align	16
	#Procedure 0x410fd0

	.globl free_cwd
	.type free_cwd, @function
free_cwd:
	nop	
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbx]
	test	edi, edi
	nop	
	js	.label_1197
	call	close
.label_1197:
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	mov	rbp, rbp
	jmp	free
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x411000

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
	je	.label_1198
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_9
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_1200
.label_1198:
	mov	edx, OFFSET FLAT:.str.1_6
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_1200:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_4
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
	mov	esi, OFFSET FLAT:.str.3_4
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
	ja	.label_1202
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_1203]]
.label_1491:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_3
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
.label_1202:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_1
	jmp	.label_1206
.label_1492:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_2
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
.label_1493:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_2
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
.label_1494:
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
	jmp	.label_1207
.label_1495:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_2
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
	jmp	.label_1205
.label_1496:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_2
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
	jmp	.label_1204
.label_1497:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_3
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
.label_1204:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_1205:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_1207:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_1201
.label_1499:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_1206:
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
	jmp	.label_1199
.label_1498:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_3
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
.label_1199:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_1201:
	mov	rbp, rbp
	call	__fprintf_chk
.label_1490:
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
	#Procedure 0x4113f0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_1208:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_1208
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411420
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_1212:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_1209
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_1210
	nop	word ptr cs:[rax + rax]
.label_1209:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1210:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_1211
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_1212
.label_1211:
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
	#Procedure 0x4114b0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_1213
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
.label_1213:
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
.label_1215:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_1214
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_1216
	nop	dword ptr [rax + rax]
.label_1214:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_1216:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1217
	inc	r9
	cmp	r9, 0xa
	jb	.label_1215
.label_1217:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4115f0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_2
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
	mov	esi, OFFSET FLAT:.str.19_1
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
	.align	16
	#Procedure 0x411680
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
	jb	.label_1218
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_1219
	test	rax, rax
	je	.label_1218
.label_1219:
	nop	
	pop	rbx
	ret	
.label_1218:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4116d0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_1220
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1221
.label_1220:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_1221:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411700
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
	jb	.label_1223
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_1222
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_1222
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_1222:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1224
	test	rax, rax
	je	.label_1223
.label_1224:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_1223:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411780

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_1225
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_1225
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_1225:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_1226
	test	rax, rax
	nop	
	je	.label_1227
.label_1226:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_1227:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4117d0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1232
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_1228
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1234
.label_1232:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_1231
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_1231:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_1233
.label_1234:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_1230
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_1230
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_1230:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_1229
	test	rax, rax
	mov	rbp, rbp
	je	.label_1228
.label_1229:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_1228:
	call	xalloc_die
.label_1233:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4118b0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1236
	test	rax, rax
	mov	rbp, rbp
	je	.label_1235
.label_1236:
	pop	rbx
	ret	
.label_1235:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4118d0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_1240
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_1241
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_1239
	call	free
	xor	eax, eax
	jmp	.label_1237
.label_1240:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_1238
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_1239:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1237
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_1238
.label_1237:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_1238:
	mov	rbp, rbp
	call	xalloc_die
.label_1241:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411960
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
	je	.label_1242
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_1243
.label_1242:
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
.label_1243:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4119c0
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
	jb	.label_1244
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_1244
	pop	rcx
	ret	
.label_1244:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4119f0

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
	je	.label_1246
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_1245
.label_1246:
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
.label_1245:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411a50

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
	je	.label_1247
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_1248
.label_1247:
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
.label_1248:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x411ab0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_7
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
	#Procedure 0x411b00

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	call	getcwd
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_1249
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	mov	rsp, rsp
	je	.label_1250
.label_1249:
	mov	rbp, rbp
	mov	rax, rbx
	nop	
	pop	rbx
	mov	rbp, rbp
	ret	
.label_1250:
	mov	rbp, rbp
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x411b50

	.globl xasprintf
	.type xasprintf, @function
xasprintf:
	sub	rsp, 0xd8
	test	al, al
	mov	rsp, rsp
	je	.label_1251
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x50], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1251:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x48], r9
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rsi
	lea	rsi, [rsi]
	lea	rax, [rsp + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 8
	mov	rbp, rbp
	lea	rsi, [rsp]
	call	xvasprintf
	lea	rsi, [rsi]
	add	rsp, 0xd8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411c10

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_1252
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1253
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
	je	.label_1253
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
.label_1252:
	mov	ecx, 1
.label_1253:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411c80

	.globl chdir_long
	.type chdir_long, @function
chdir_long:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rdi
	nop	
	call	chdir
	mov	ebx, eax
	test	ebx, ebx
	je	.label_1262
	call	__errno_location
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rbp, rbp
	cmp	dword ptr [r14], 0x24
	jne	.label_1265
	mov	rdi, rbp
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r15, rax
	test	r15, r15
	je	.label_1270
	mov	rsp, rsp
	cmp	r15, 0xfff
	mov	rsp, rsp
	jbe	.label_1274
	add	r15, rbp
	nop	
	mov	rax, -1
	nop	
.label_1279:
	mov	rsp, rsp
	mov	rbx, rax
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp + rbx + 1]
	lea	rax, [rbx + 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x2f
	lea	rdi, [rdi]
	je	.label_1279
	nop	
	mov	r12d, 0xffffff9c
	test	rax, rax
	nop	
	je	.label_1259
	cmp	rax, 2
	jne	.label_1263
	nop	
	lea	rdi, [rbp + 3]
	lea	rsi, [rsi]
	mov	rdx, r15
	lea	rdi, [rdi]
	sub	rdx, rdi
	mov	rbp, rbp
	mov	esi, 0x2f
	lea	rdi, [rdi]
	call	memchr
	nop	
	mov	rbx, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1267
	mov	byte ptr [rbx], 0
	lea	rsi, [rsi]
	mov	edi, 0xffffff9c
	mov	rsp, rsp
	mov	edx, 0x10900
	xor	eax, eax
	mov	rsi, rbp
	call	openat
	mov	rbp, rbp
	mov	r12d, eax
	mov	rbp, rbp
	test	r12d, r12d
	lea	rdi, [rdi]
	mov	byte ptr [rbx], 0x2f
	nop	
	js	.label_1275
	nop	
.label_1261:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
	mov	rsp, rsp
	cmp	eax, 0x2f
	je	.label_1261
	lea	rsi, [rsi]
	jmp	.label_1264
.label_1262:
	xor	ebx, ebx
	jmp	.label_1265
.label_1259:
	mov	rbx, rbp
	jmp	.label_1264
.label_1263:
	mov	rsp, rsp
	mov	edi, 0xffffff9c
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.3_5
	nop	
	mov	edx, 0x10900
	xor	eax, eax
	mov	rsp, rsp
	call	openat
	lea	rsi, [rsi]
	mov	r12d, eax
	test	r12d, r12d
	js	.label_1275
	lea	rbx, [rbp + rbx + 1]
.label_1264:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbx]
	mov	rsp, rsp
	cmp	eax, 0x2f
	lea	rsi, [rsi]
	je	.label_1278
	cmp	rbx, r15
	ja	.label_1280
	mov	rax, r15
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 0xfff
	jle	.label_1256
	nop	word ptr [rax + rax]
.label_1255:
	mov	rsp, rsp
	mov	esi, 0x2f
	mov	edx, 0x1000
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	memrchr
	mov	rsp, rsp
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_1267
	lea	rsi, [rsi]
	mov	byte ptr [rbp], 0
	mov	rax, rbp
	sub	rax, rbx
	cmp	rax, 0x1000
	mov	rsp, rsp
	jge	.label_1273
	mov	edx, 0x10900
	xor	eax, eax
	mov	edi, r12d
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	openat
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	js	.label_1257
	mov	rsp, rsp
	test	r12d, r12d
	js	.label_1277
	mov	edi, r12d
	lea	rdi, [rdi]
	call	close
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_1260
.label_1277:
	mov	r12d, ebx
	mov	rsp, rsp
	mov	byte ptr [rbp], 0x2f
	mov	rbx, rbp
	nop	word ptr [rax + rax]
.label_1269:
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
	cmp	eax, 0x2f
	nop	
	je	.label_1269
	mov	rax, r15
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 0x1000
	jge	.label_1255
.label_1256:
	lea	rsi, [rsi]
	cmp	rbx, r15
	jae	.label_1271
	mov	edx, 0x10900
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, r12d
	nop	
	mov	rsi, rbx
	call	openat
	lea	rdi, [rdi]
	mov	ebx, eax
	lea	rdi, [rdi]
	test	ebx, ebx
	js	.label_1254
	lea	rdi, [rdi]
	test	r12d, r12d
	lea	rsi, [rsi]
	js	.label_1258
	mov	edi, r12d
	nop	
	call	close
	test	eax, eax
	je	.label_1258
	jmp	.label_1260
.label_1267:
	mov	rsp, rsp
	mov	dword ptr [r14], 0x24
	jmp	.label_1266
.label_1271:
	mov	ebx, r12d
.label_1258:
	mov	edi, ebx
	call	fchdir
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_1268
	lea	rdi, [rdi]
	mov	r12d, ebx
	jmp	.label_1254
.label_1275:
	mov	ebx, dword ptr [r14]
	nop	
	jmp	.label_1272
.label_1268:
	test	ebx, ebx
	js	.label_1276
	mov	edi, ebx
	call	close
	test	eax, eax
	lea	rdi, [rdi]
	mov	ebx, 0
	mov	rbp, rbp
	je	.label_1265
	lea	rdi, [rdi]
	jmp	.label_1260
.label_1257:
	mov	byte ptr [rbp], 0x2f
.label_1254:
	nop	
	mov	ebx, dword ptr [r14]
	lea	rdi, [rdi]
	test	r12d, r12d
	nop	
	js	.label_1272
	mov	edi, r12d
	nop	
	call	close
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1260
.label_1272:
	mov	dword ptr [r14], ebx
.label_1266:
	mov	ebx, 0xffffffff
.label_1265:
	mov	eax, ebx
	nop	
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1276:
	xor	ebx, ebx
	lea	rsi, [rsi]
	jmp	.label_1265
.label_1273:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.6_3
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_1260:
	mov	edi, OFFSET FLAT:.str.7_2
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0x40
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cdb_free
	lea	rdi, [rdi]
	call	__assert_fail
.label_1270:
	mov	edi, OFFSET FLAT:.str_10
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_1274:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.2_5
	nop	
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0x7f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_1278:
	nop	
	mov	edi, OFFSET FLAT:.str.4_4
	mov	esi, OFFSET FLAT:.str.1_8
	lea	rsi, [rsi]
	mov	edx, 0xa2
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	nop	
	call	__assert_fail
.label_1280:
	mov	edi, OFFSET FLAT:.str.5_3
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_8
	mov	rbp, rbp
	mov	edx, 0xa3
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412070

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
	je	.label_1281
	nop	
	cmp	r15, -2
	jb	.label_1281
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_1281
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_1281:
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
	#Procedure 0x412100

	.globl read_file_system_list
	.type read_file_system_list, @function
read_file_system_list:
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x78
	mov	edi, OFFSET FLAT:.str_11
	mov	esi, OFFSET FLAT:.str.1_9
	call	fopen
	lea	rsi, [rsi]
	mov	rbp, rax
	nop	
	mov	qword ptr [rsp + 0x38], rbp
	mov	rsp, rsp
	test	rbp, rbp
	nop	
	je	.label_1290
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], 0
	nop	
	mov	qword ptr [rsp + 0x20], 0
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x40]
	lea	rsi, [rsp + 0x20]
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	rcx, rbp
	call	__getdelim
	lea	r12, [rsp + 0x50]
	cmp	rax, -1
	je	.label_1302
	mov	rsp, rsp
	lea	rbx, [rsp + 0x6b]
	lea	r14, [rsp + 0x30]
	lea	r15, [rsp + 0x48]
	nop	
.label_1303:
	mov	rdi, qword ptr [rsp + 0x40]
	nop	
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp], r15
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.2_6
	xor	eax, eax
	mov	rbp, rbp
	lea	rdx, [rsp + 0x60]
	lea	rcx, [rsp + 0x2c]
	lea	rdi, [rdi]
	lea	r8, [rsp + 0x34]
	lea	rsi, [rsi]
	lea	r9, [rsp + 0x4c]
	nop	
	call	sscanf
	or	eax, 4
	lea	rdi, [rdi]
	cmp	eax, 7
	nop	
	jne	.label_1297
	mov	rsp, rsp
	movsxd	rdi, dword ptr [rsp + 0x30]
	mov	rbp, rbp
	add	rdi, qword ptr [rsp + 0x40]
	mov	esi, OFFSET FLAT:.str.3_6
	lea	rsi, [rsi]
	call	strstr
	nop	
	mov	r13, rax
	test	r13, r13
	je	.label_1297
	mov	rsp, rsp
	mov	qword ptr [rsp], rbx
	mov	esi, OFFSET FLAT:.str.4_5
	xor	eax, eax
	mov	rdi, r13
	mov	rsp, rsp
	lea	rdx, [rsp + 0x6c]
	lea	rcx, [rsp + 0x28]
	lea	r8, [rsp + 0x64]
	lea	r9, [rsp + 0x5c]
	call	sscanf
	or	eax, 4
	cmp	eax, 5
	jne	.label_1297
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rsp + 0x4c]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x40]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	byte ptr [rcx + rax], 0
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rsp + 0x28]
	mov	byte ptr [r13 + rax], 0
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rsp + 0x5c]
	lea	rdi, [rdi]
	mov	byte ptr [r13 + rax], 0
	movsxd	rbp, dword ptr [rsp + 0x64]
	nop	
	add	rbp, r13
	mov	rsp, rsp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strlen
	nop	
	inc	rax
	je	.label_1307
	mov	rbp, rbp
	mov	rcx, rbp
	lea	rsi, [rsi]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1300:
	mov	rbp, rbp
	mov	r9b, byte ptr [rbp + rdx]
	lea	rsi, [rdx + 4]
	cmp	rsi, rax
	lea	rsi, [rsi]
	jae	.label_1282
	movzx	esi, r9b
	cmp	esi, 0x5c
	jne	.label_1282
	mov	sil, byte ptr [rdx + rbp + 1]
	nop	
	mov	bl, sil
	lea	rsi, [rsi]
	and	bl, 0xfc
	lea	rsi, [rsi]
	movzx	edi, bl
	mov	rsp, rsp
	cmp	edi, 0x30
	jne	.label_1282
	nop	
	mov	dil, byte ptr [rdx + rbp + 2]
	mov	bl, dil
	and	bl, 0xf8
	lea	rsi, [rsi]
	movzx	ebx, bl
	cmp	ebx, 0x30
	jne	.label_1282
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rbp + rdx + 3]
	mov	bl, r8b
	mov	rsp, rsp
	and	bl, 0xf8
	movzx	ebx, bl
	cmp	ebx, 0x30
	lea	rsi, [rsi]
	jne	.label_1282
	mov	rbp, rbp
	add	rdx, 3
	nop	
	shl	sil, 6
	shl	dil, 3
	add	dil, sil
	mov	rbp, rbp
	add	dil, r8b
	mov	rbp, rbp
	add	dil, 0x50
	lea	rsi, [rsi]
	mov	byte ptr [rcx], dil
	jmp	.label_1295
	nop	dword ptr [rax]
.label_1282:
	mov	rsp, rsp
	mov	byte ptr [rcx], r9b
.label_1295:
	inc	rdx
	lea	rsi, [rsi]
	inc	rcx
	cmp	rdx, rax
	jb	.label_1300
.label_1307:
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x40]
	movsxd	rbp, dword ptr [rsp + 0x48]
	add	rbp, rbx
	mov	rdi, rbp
	mov	rsp, rsp
	call	strlen
	inc	rax
	je	.label_1304
	mov	rsp, rsp
	mov	rcx, rbp
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1306:
	mov	r9b, byte ptr [rbp + rdx]
	lea	rsi, [rdx + 4]
	mov	rbp, rbp
	cmp	rsi, rax
	jae	.label_1293
	movzx	esi, r9b
	lea	rsi, [rsi]
	cmp	esi, 0x5c
	nop	
	jne	.label_1293
	mov	sil, byte ptr [rdx + rbp + 1]
	nop	
	mov	bl, sil
	lea	rsi, [rsi]
	and	bl, 0xfc
	movzx	edi, bl
	cmp	edi, 0x30
	jne	.label_1293
	mov	dil, byte ptr [rdx + rbp + 2]
	mov	bl, dil
	and	bl, 0xf8
	mov	rsp, rsp
	movzx	ebx, bl
	cmp	ebx, 0x30
	mov	rbp, rbp
	jne	.label_1293
	mov	r8b, byte ptr [rbp + rdx + 3]
	mov	bl, r8b
	and	bl, 0xf8
	movzx	ebx, bl
	nop	
	cmp	ebx, 0x30
	jne	.label_1293
	mov	rsp, rsp
	add	rdx, 3
	lea	rsi, [rsi]
	shl	sil, 6
	shl	dil, 3
	mov	rsp, rsp
	add	dil, sil
	add	dil, r8b
	add	dil, 0x50
	mov	rsp, rsp
	mov	byte ptr [rcx], dil
	jmp	.label_1287
	nop	dword ptr [rax]
.label_1293:
	nop	
	mov	byte ptr [rcx], r9b
.label_1287:
	lea	rsi, [rsi]
	inc	rdx
	inc	rcx
	cmp	rdx, rax
	jb	.label_1306
	mov	rbx, qword ptr [rsp + 0x40]
.label_1304:
	movsxd	rbp, dword ptr [rsp + 0x34]
	add	rbp, rbx
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strlen
	mov	rsp, rsp
	inc	rax
	nop	
	je	.label_1305
	lea	rdi, [rdi]
	mov	rcx, rbp
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1294:
	mov	r9b, byte ptr [rbp + rdx]
	lea	rsi, [rdx + 4]
	cmp	rsi, rax
	jae	.label_1286
	lea	rsi, [rsi]
	movzx	esi, r9b
	nop	
	cmp	esi, 0x5c
	lea	rsi, [rsi]
	jne	.label_1286
	mov	sil, byte ptr [rdx + rbp + 1]
	lea	rdi, [rdi]
	mov	bl, sil
	lea	rdi, [rdi]
	and	bl, 0xfc
	mov	rbp, rbp
	movzx	edi, bl
	cmp	edi, 0x30
	jne	.label_1286
	mov	rsp, rsp
	mov	dil, byte ptr [rdx + rbp + 2]
	mov	rbp, rbp
	mov	bl, dil
	and	bl, 0xf8
	movzx	ebx, bl
	lea	rdi, [rdi]
	cmp	ebx, 0x30
	mov	rsp, rsp
	jne	.label_1286
	mov	r8b, byte ptr [rbp + rdx + 3]
	mov	bl, r8b
	and	bl, 0xf8
	movzx	ebx, bl
	cmp	ebx, 0x30
	lea	rsi, [rsi]
	jne	.label_1286
	add	rdx, 3
	shl	sil, 6
	nop	
	shl	dil, 3
	mov	rsp, rsp
	add	dil, sil
	add	dil, r8b
	add	dil, 0x50
	lea	rsi, [rsi]
	mov	byte ptr [rcx], dil
	mov	rbp, rbp
	jmp	.label_1284
	nop	dword ptr [rax]
.label_1286:
	mov	byte ptr [rcx], r9b
.label_1284:
	inc	rdx
	inc	rcx
	cmp	rdx, rax
	jb	.label_1294
.label_1305:
	mov	edi, 0x38
	call	xmalloc
	mov	rbp, rax
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rsp + 0x64]
	lea	rdi, [rdi]
	add	rdi, r13
	nop	
	call	xstrdup
	mov	qword ptr [rbp], rax
	movsxd	rdi, dword ptr [rsp + 0x48]
	add	rdi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	call	xstrdup
	mov	rsp, rsp
	mov	qword ptr [rbp + 8], rax
	movsxd	rdi, dword ptr [rsp + 0x34]
	add	rdi, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	call	xstrdup
	mov	qword ptr [rbp + 0x10], rax
	movsxd	rdi, dword ptr [rsp + 0x6c]
	mov	rbp, rbp
	add	rdi, r13
	lea	rdi, [rdi]
	call	xstrdup
	mov	r13, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x18], r13
	lea	rdi, [rdi]
	mov	bl, byte ptr [rbp + 0x28]
	or	bl, 4
	mov	byte ptr [rbp + 0x28], bl
	mov	eax, dword ptr [rsp + 0x60]
	mov	ecx, dword ptr [rsp + 0x2c]
	movzx	edx, cl
	mov	esi, eax
	nop	
	shl	esi, 8
	nop	
	and	esi, 0xfff00
	lea	rdi, [rdi]
	or	esi, edx
	nop	
	and	ecx, 0xffffff00
	shl	rcx, 0xc
	and	eax, 0xfffff000
	mov	rsp, rsp
	shl	rax, 0x20
	or	rax, rcx
	mov	rbp, rbp
	or	rax, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp + 0x20], rax
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.5_1
	mov	rsp, rsp
	mov	rdi, r13
	call	strcmp
	lea	rdi, [rdi]
	mov	r14b, 1
	lea	rdi, [rdi]
	test	eax, eax
	mov	al, 1
	lea	rsi, [rsi]
	je	.label_1283
	mov	esi, OFFSET FLAT:.str.6_0
	lea	rsi, [rsi]
	mov	rdi, r13
	call	strcmp
	nop	
	test	eax, eax
	mov	al, 1
	nop	
	je	.label_1283
	mov	esi, OFFSET FLAT:.str.7_3
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsp, rsp
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	je	.label_1283
	nop	
	mov	esi, OFFSET FLAT:.str.8_0
	nop	
	mov	rdi, r13
	lea	rdi, [rdi]
	call	strcmp
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	je	.label_1283
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.9_0
	mov	rdi, r13
	lea	rsi, [rsi]
	call	strcmp
	nop	
	test	eax, eax
	mov	al, 1
	mov	rbp, rbp
	je	.label_1283
	mov	esi, OFFSET FLAT:.str.10_0
	lea	rdi, [rdi]
	mov	rdi, r13
	call	strcmp
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	mov	al, 1
	je	.label_1283
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.11_0
	mov	rbp, rbp
	mov	rdi, r13
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	mov	al, 1
	nop	
	je	.label_1283
	mov	esi, OFFSET FLAT:.str.12_0
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	je	.label_1283
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.13_0
	mov	rsp, rsp
	mov	rdi, r13
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	lea	rdi, [rdi]
	mov	al, 1
	je	.label_1283
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.14_0
	mov	rdi, r13
	lea	rdi, [rdi]
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	mov	al, 1
	je	.label_1283
	mov	esi, OFFSET FLAT:.str.15_2
	nop	
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	mov	al, 1
	nop	
	je	.label_1283
	mov	esi, OFFSET FLAT:.str.16_1
	nop	
	mov	rdi, r13
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	je	.label_1283
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.17_1
	mov	rbp, rbp
	mov	rdi, r13
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	sete	al
	nop	
.label_1283:
	lea	rsi, [rsi]
	and	bl, 0xfe
	or	bl, al
	mov	rsp, rsp
	mov	byte ptr [rbp + 0x28], bl
	mov	r15, qword ptr [rbp]
	mov	esi, 0x3a
	lea	rdi, [rdi]
	mov	rdi, r15
	call	strchr
	test	rax, rax
	mov	rsp, rsp
	jne	.label_1291
	movzx	eax, byte ptr [r15]
	lea	rdi, [rdi]
	cmp	eax, 0x2f
	mov	rsp, rsp
	jne	.label_1288
	movzx	eax, byte ptr [r15 + 1]
	cmp	eax, 0x2f
	jne	.label_1288
	mov	esi, OFFSET FLAT:.str.18_2
	mov	rdi, r13
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	je	.label_1291
	mov	esi, OFFSET FLAT:.str.19_0
	mov	rbp, rbp
	mov	rdi, r13
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	je	.label_1291
.label_1288:
	mov	edi, OFFSET FLAT:.str.20
	nop	
	mov	rsi, r15
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	sete	r14b
.label_1291:
	lea	rdi, [rdi]
	add	r14b, r14b
	nop	
	and	bl, 0xfd
	mov	rsp, rsp
	or	bl, r14b
	mov	byte ptr [rbp + 0x28], bl
	mov	rsp, rsp
	mov	qword ptr [r12], rbp
	lea	rsi, [rsi]
	add	rbp, 0x30
	mov	r12, rbp
	mov	rbp, qword ptr [rsp + 0x38]
	lea	rbx, [rsp + 0x6b]
	lea	rsi, [rsi]
	lea	r14, [rsp + 0x30]
	lea	r15, [rsp + 0x48]
.label_1297:
	mov	edx, 0xa
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x40]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rcx, rbp
	call	__getdelim
	lea	rdi, [rdi]
	cmp	rax, -1
	lea	rsi, [rsi]
	jne	.label_1303
.label_1302:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	test	byte ptr [rbp], 0x20
	jne	.label_1308
	mov	rbp, rbp
	mov	rdi, rbp
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_1310
	jmp	.label_1285
.label_1290:
	mov	edi, OFFSET FLAT:.str.21_0
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_9
	call	setmntent
	mov	rbx, rax
	mov	qword ptr [rsp + 0x38], rbx
	xor	eax, eax
	nop	
	test	rbx, rbx
	nop	
	je	.label_1292
	lea	r13, [rsp + 0x50]
	mov	rdi, rbx
	call	getmntent
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_1313
	nop	dword ptr [rax]
.label_1311:
	mov	esi, OFFSET FLAT:.str.22_0
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbp, rbp
	call	hasmntopt
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	mov	rsp, rsp
	mov	edi, 0x38
	call	xmalloc
	lea	rdi, [rdi]
	mov	r12, rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp]
	nop	
	call	xstrdup
	mov	qword ptr [r12], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp + 8]
	nop	
	call	xstrdup
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x10], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp + 0x10]
	call	xstrdup
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x18], rbp
	mov	r14b, byte ptr [r12 + 0x28]
	or	r14b, 4
	mov	byte ptr [r12 + 0x28], r14b
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.5_1
	mov	rdi, rbp
	mov	rbp, rbp
	call	strcmp
	lea	rdi, [rdi]
	mov	r15b, 1
	test	eax, eax
	lea	rsi, [rsi]
	mov	bl, 1
	je	.label_1289
	mov	esi, OFFSET FLAT:.str.6_0
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	lea	rdi, [rdi]
	mov	bl, 1
	nop	
	je	.label_1289
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_3
	nop	
	mov	rdi, rbp
	nop	
	call	strcmp
	test	eax, eax
	mov	bl, 1
	je	.label_1289
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	mov	bl, 1
	je	.label_1289
	mov	esi, OFFSET FLAT:.str.9_0
	mov	rdi, rbp
	mov	rbp, rbp
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	mov	bl, 1
	je	.label_1289
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.10_0
	mov	rdi, rbp
	nop	
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	mov	bl, 1
	je	.label_1289
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.11_0
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	mov	bl, 1
	je	.label_1289
	mov	esi, OFFSET FLAT:.str.12_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	bl, 1
	mov	rbp, rbp
	je	.label_1289
	mov	esi, OFFSET FLAT:.str.13_0
	nop	
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	bl, 1
	je	.label_1289
	nop	
	mov	esi, OFFSET FLAT:.str.14_0
	mov	rdi, rbp
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	mov	bl, 1
	je	.label_1289
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.15_2
	nop	
	mov	rdi, rbp
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	mov	bl, 1
	je	.label_1289
	mov	esi, OFFSET FLAT:.str.16_1
	nop	
	mov	rdi, rbp
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	bl, 1
	je	.label_1289
	nop	
	cmp	qword ptr [rsp + 0x70], 0
	sete	bl
	mov	esi, OFFSET FLAT:.str.17_1
	mov	rbp, rbp
	mov	rdi, rbp
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1289
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1289:
	and	r14b, 0xfe
	or	r14b, bl
	mov	rsp, rsp
	mov	byte ptr [r12 + 0x28], r14b
	mov	rbx, qword ptr [r12]
	mov	esi, 0x3a
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strchr
	test	rax, rax
	jne	.label_1296
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2f
	mov	rbp, rbp
	jne	.label_1298
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx + 1]
	nop	
	cmp	eax, 0x2f
	lea	rdi, [rdi]
	jne	.label_1298
	mov	esi, OFFSET FLAT:.str.18_2
	mov	rsp, rsp
	mov	rdi, rbp
	nop	
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	je	.label_1296
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.19_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	nop	
	je	.label_1296
	nop	word ptr cs:[rax + rax]
.label_1298:
	mov	edi, OFFSET FLAT:.str.20
	mov	rsi, rbx
	nop	
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	sete	r15b
.label_1296:
	nop	
	add	r15b, r15b
	lea	rsi, [rsi]
	and	r14b, 0xfd
	lea	rdi, [rdi]
	or	r14b, r15b
	mov	byte ptr [r12 + 0x28], r14b
	mov	qword ptr [r12 + 0x20], -1
	mov	qword ptr [r13], r12
	lea	rdi, [rdi]
	add	r12, 0x30
	nop	
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rdi, rbx
	call	getmntent
	mov	rbp, rax
	test	rbp, rbp
	lea	rsi, [rsi]
	mov	r13, r12
	lea	rsi, [rsi]
	jne	.label_1311
	nop	
	jmp	.label_1312
.label_1308:
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	nop	
	mov	rdi, rbp
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbx], r14d
	lea	rsi, [rsi]
	jmp	.label_1285
.label_1313:
	mov	r12, r13
.label_1312:
	nop	
	mov	rdi, rbx
	call	endmntent
	test	eax, eax
	nop	
	je	.label_1285
.label_1310:
	mov	qword ptr [r12], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	jmp	.label_1292
.label_1285:
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	r15, rax
	mov	rbp, rbp
	mov	r14d, dword ptr [r15]
	mov	qword ptr [r12], 0
	mov	rbx, qword ptr [rsp + 0x50]
	test	rbx, rbx
	je	.label_1299
	nop	word ptr cs:[rax + rax]
.label_1309:
	mov	rdi, qword ptr [rbx]
	mov	rbp, qword ptr [rbx + 0x30]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	nop	
	test	byte ptr [rbx + 0x28], 4
	mov	rsp, rsp
	je	.label_1301
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
.label_1301:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rbp
	lea	rdi, [rdi]
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_1309
.label_1299:
	mov	rsp, rsp
	mov	dword ptr [r15], r14d
	xor	eax, eax
.label_1292:
	mov	rbp, rbp
	add	rsp, 0x78
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412cf0
	.globl free_mount_entry
	.type free_mount_entry, @function
free_mount_entry:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	test	byte ptr [rbx + 0x28], 4
	je	.label_1314
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
.label_1314:
	mov	rdi, rbx
	lea	rdi, [rdi]
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412d40

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
	je	.label_1315
	mov	rbp, rbp
	mov	rdi, r14
	call	strlen
	nop	
	mov	r15, rax
	inc	r15
.label_1315:
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
	je	.label_1316
	mov	rsp, rsp
	mov	qword ptr [rbx], 0
	test	r14, r14
	lea	rdi, [rdi]
	setne	byte ptr [rbx + 8]
	nop	
	mov	byte ptr [rbx + 9], 0
	lea	rsi, [rsi]
	je	.label_1316
	mov	r12, rbx
	mov	rbp, rbp
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	lea	rsi, [rsi]
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_1316:
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
	#Procedure 0x412df0
	.globl tzfree
	.type tzfree, @function
tzfree:

	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	cmp	rdi, 2
	jb	.label_1318
	nop	dword ptr [rax]
.label_1317:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	jne	.label_1317
.label_1318:
	mov	rsp, rsp
	pop	rbx
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412e20

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	nop	
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	r15, rdi
	mov	rsp, rsp
	test	r15, r15
	mov	rbp, rbp
	je	.label_1330
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rdx
	mov	edi, OFFSET FLAT:.str_2
	call	getenv
	mov	r13, rax
	test	r13, r13
	mov	bl, byte ptr [r15 + 8]
	nop	
	je	.label_1334
	nop	
	mov	qword ptr [rsp + 0x10], rbp
	mov	rbp, rbp
	test	bl, bl
	je	.label_1336
	nop	
	lea	rdi, [r15 + 9]
	lea	rdi, [rdi]
	mov	rsi, r13
	call	strcmp
	lea	rdi, [rdi]
	mov	r14d, 1
	test	eax, eax
	je	.label_1320
.label_1336:
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rbp, rbp
	call	strlen
	mov	rbp, rax
	mov	rbp, rbp
	inc	rbp
	nop	
	mov	r12b, 1
	lea	rsi, [rsi]
	jmp	.label_1326
.label_1330:
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rsi, rdx
	lea	rdi, [rdi]
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	jmp	gmtime_r
.label_1334:
	mov	qword ptr [rsp + 0x10], rbp
	nop	
	xor	r12d, r12d
	mov	r14d, 1
	nop	
	test	bl, bl
	mov	ebp, 0
	mov	rbp, rbp
	je	.label_1320
.label_1326:
	lea	rax, [rbp + 0x11]
	and	rax, 0xfffffffffffffff8
	lea	rsi, [rsi]
	cmp	rbp, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_1325
	mov	rsp, rsp
	mov	qword ptr [r14], 0
	mov	byte ptr [r14 + 8], r12b
	lea	rsi, [rsi]
	mov	byte ptr [r14 + 9], 0
	test	r12b, r12b
	lea	rdi, [rdi]
	je	.label_1329
	lea	rsi, [rsi]
	lea	r12, [r14 + 9]
	mov	rdi, r12
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	memcpy
	mov	rsp, rsp
	mov	byte ptr [r12 + rbp], 0
.label_1329:
	test	bl, bl
	je	.label_1337
	mov	rsp, rsp
	lea	rsi, [r15 + 9]
	mov	edi, OFFSET FLAT:.str_2
	mov	edx, 1
	mov	rsp, rsp
	call	setenv
	mov	rsp, rsp
	jmp	.label_1321
.label_1337:
	mov	edi, OFFSET FLAT:.str_2
	call	unsetenv
.label_1321:
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	je	.label_1324
	call	__errno_location
	nop	
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	cmp	r14, 2
	jb	.label_1327
	nop	dword ptr [rax + rax]
.label_1332:
	mov	rbx, qword ptr [r14]
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	test	rbx, rbx
	mov	r14, rbx
	lea	rdi, [rdi]
	jne	.label_1332
.label_1327:
	lea	rdi, [rdi]
	mov	dword ptr [rbp], r15d
.label_1325:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_1333
.label_1324:
	call	tzset
.label_1320:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 8]
	mov	rsi, rbx
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	mov	rbp, rbp
	mov	r12b, 1
	mov	rsp, rsp
	je	.label_1319
	mov	rdi, r15
	mov	rsi, rbx
	nop	
	call	save_abbr
	lea	rdi, [rdi]
	mov	r12b, al
	xor	r12b, 1
.label_1319:
	mov	rbp, rbp
	cmp	r14, 1
	je	.label_1328
	lea	rdi, [rdi]
	call	__errno_location
	mov	r15, rax
	lea	rsi, [rsi]
	mov	r13d, dword ptr [r15]
	cmp	byte ptr [r14 + 8], 0
	mov	rbp, rbp
	je	.label_1331
	lea	rsi, [r14 + 9]
	mov	edi, OFFSET FLAT:.str_2
	mov	edx, 1
	call	setenv
	jmp	.label_1335
.label_1331:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str_2
	call	unsetenv
.label_1335:
	test	eax, eax
	je	.label_1338
	lea	rdi, [rdi]
	mov	r13d, dword ptr [r15]
	xor	ebp, ebp
	mov	rsp, rsp
	jmp	.label_1339
.label_1338:
	nop	
	call	tzset
	mov	bpl, 1
.label_1339:
	mov	rsp, rsp
	cmp	r14, 2
	mov	rsp, rsp
	jb	.label_1322
	nop	
.label_1323:
	mov	rbp, rbp
	mov	rbx, qword ptr [r14]
	mov	rdi, r14
	call	free
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	mov	r14, rbx
	mov	rsp, rsp
	jne	.label_1323
.label_1322:
	mov	dword ptr [r15], r13d
	mov	rbx, qword ptr [rsp + 8]
.label_1328:
	xor	eax, eax
	nop	
	xor	bpl, 1
	cmovne	rbx, rax
	test	r12b, r12b
	mov	rsp, rsp
	cmovne	rbx, rax
	mov	rsp, rsp
	mov	rax, rbx
.label_1333:
	lea	rsi, [rsi]
	add	rsp, 0x18
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x413100

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
	je	.label_1340
	cmp	r15, rbx
	ja	.label_1351
	nop	
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	lea	rsi, [rsi]
	jb	.label_1340
.label_1351:
	mov	ebp, OFFSET FLAT:.str_0
	nop	
	cmp	byte ptr [rbx], 0
	je	.label_1342
	lea	rbp, [r12 + 9]
	jmp	.label_1344
.label_1343:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	mov	rbp, rbp
	cmovne	r12, rax
.label_1344:
	lea	r13, [r12 + 9]
.label_1341:
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_1342
	cmp	byte ptr [rbp], 0
	mov	rsp, rsp
	jne	.label_1345
	lea	rsi, [rsi]
	cmp	rbp, r13
	jne	.label_1346
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + 8], 0
	je	.label_1349
.label_1345:
	mov	rbp, rbp
	mov	rdi, rbp
	call	strlen
	nop	
	lea	rcx, [rax + rbp + 1]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + rbp + 1], 0
	mov	rbp, rcx
	jne	.label_1341
	lea	rdi, [rdi]
	jmp	.label_1343
.label_1349:
	lea	rdi, [rdi]
	mov	rbp, r13
.label_1346:
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
	jbe	.label_1350
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
.label_1348:
	xor	r14d, r14d
	jmp	.label_1340
.label_1350:
	add	rcx, rdx
	mov	rbp, rbp
	cmp	rcx, 0x76
	ja	.label_1347
	nop	
	mov	rdi, rbp
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	mov	qword ptr [r15 + 0x30], rbp
	jmp	.label_1340
.label_1347:
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
	je	.label_1352
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
.label_1342:
	mov	qword ptr [r15 + 0x30], rbp
.label_1340:
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
.label_1352:
	mov	qword ptr [r12], 0
	jmp	.label_1348
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413300

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	nop	
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	nop	
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x48
	mov	rbx, rdi
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1353
	mov	qword ptr [rsp + 0x40], rsi
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_2
	call	getenv
	mov	r13, rax
	lea	rsi, [rsi]
	test	r13, r13
	mov	rsp, rsp
	mov	r12b, byte ptr [rbx + 8]
	mov	rbp, rbp
	je	.label_1364
	test	r12b, r12b
	nop	
	je	.label_1367
	lea	rdi, [rbx + 9]
	mov	rsi, r13
	lea	rdi, [rdi]
	call	strcmp
	lea	rdi, [rdi]
	mov	r15d, 1
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1362
.label_1367:
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	mov	rbp, rax
	inc	rbp
	lea	rsi, [rsi]
	mov	r14b, 1
	jmp	.label_1355
.label_1353:
	nop	
	mov	rdi, rsi
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	jmp	timegm
.label_1364:
	nop	
	xor	r14d, r14d
	lea	rdi, [rdi]
	mov	r15d, 1
	lea	rsi, [rsi]
	test	r12b, r12b
	mov	ebp, 0
	mov	rsp, rsp
	je	.label_1362
.label_1355:
	lea	rdi, [rdi]
	lea	rax, [rbp + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	rbp, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	lea	rdi, [rdi]
	call	malloc
	mov	r15, rax
	lea	rdi, [rdi]
	mov	rax, -1
	lea	rdi, [rdi]
	test	r15, r15
	je	.label_1361
	nop	
	mov	qword ptr [r15], 0
	lea	rdi, [rdi]
	mov	byte ptr [r15 + 8], r14b
	mov	byte ptr [r15 + 9], 0
	test	r14b, r14b
	mov	rbp, rbp
	je	.label_1357
	lea	r14, [r15 + 9]
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r13
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	memcpy
	mov	byte ptr [r14 + rbp], 0
.label_1357:
	mov	rbp, rbp
	test	r12b, r12b
	nop	
	je	.label_1366
	lea	rsi, [rbx + 9]
	mov	edi, OFFSET FLAT:.str_2
	mov	edx, 1
	call	setenv
	jmp	.label_1371
.label_1366:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str_2
	call	unsetenv
.label_1371:
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1373
	call	__errno_location
	mov	rbp, rax
	mov	rbp, rbp
	mov	r14d, dword ptr [rbp]
	mov	rsp, rsp
	cmp	r15, 2
	jb	.label_1354
	nop	word ptr cs:[rax + rax]
.label_1363:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15]
	mov	rbp, rbp
	mov	rdi, r15
	nop	
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_1363
.label_1354:
	mov	dword ptr [rbp], r14d
	mov	rbp, rbp
	mov	rax, -1
	lea	rdi, [rdi]
	jmp	.label_1361
.label_1373:
	call	tzset
.label_1362:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rdi, rbp
	call	mktime
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rax
	cmp	rax, -1
	mov	rbp, rbp
	jne	.label_1372
	mov	rbp, rbp
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp]
	nop	
	call	localtime_r
	mov	rbp, rbp
	test	rax, rax
	je	.label_1358
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	xor	rax, qword ptr [rbp]
	mov	rsp, rsp
	xor	rcx, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	mov	edx, ecx
	nop	
	or	edx, eax
	shr	rax, 0x20
	mov	rbp, rbp
	or	edx, eax
	lea	rdi, [rdi]
	shr	rcx, 0x20
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	xor	rax, qword ptr [rbp + 0x10]
	nop	
	mov	esi, eax
	or	esi, ecx
	mov	rbp, rbp
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	rsp, rsp
	mov	edi, dword ptr [rbp + 0x20]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	test	edi, edi
	sete	sil
	test	edx, edx
	mov	rsp, rsp
	sete	cl
	xor	cl, sil
	or	edx, edi
	mov	rbp, rbp
	setns	dl
	and	dl, cl
	lea	rdi, [rdi]
	movzx	ecx, dl
	nop	
	or	ecx, eax
	jne	.label_1358
.label_1372:
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, rbp
	nop	
	call	save_abbr
	test	al, al
	jne	.label_1358
	mov	qword ptr [rsp + 0x38], -1
.label_1358:
	cmp	r15, 1
	je	.label_1365
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14, rax
	mov	rbp, rbp
	mov	r12d, dword ptr [r14]
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 8], 0
	lea	rsi, [rsi]
	je	.label_1360
	lea	rsi, [r15 + 9]
	mov	edi, OFFSET FLAT:.str_2
	mov	edx, 1
	call	setenv
	jmp	.label_1374
.label_1360:
	mov	edi, OFFSET FLAT:.str_2
	mov	rsp, rsp
	call	unsetenv
.label_1374:
	nop	
	test	eax, eax
	mov	rbp, rbp
	je	.label_1369
	mov	r12d, dword ptr [r14]
	xor	ebp, ebp
	lea	rsi, [rsi]
	jmp	.label_1356
.label_1369:
	call	tzset
	mov	bpl, 1
.label_1356:
	lea	rsi, [rsi]
	cmp	r15, 2
	jb	.label_1359
	nop	word ptr cs:[rax + rax]
.label_1370:
	mov	rsp, rsp
	mov	rbx, qword ptr [r15]
	mov	rsp, rsp
	mov	rdi, r15
	call	free
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_1370
.label_1359:
	mov	dword ptr [r14], r12d
	test	bpl, bpl
	je	.label_1368
.label_1365:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	jmp	.label_1361
.label_1368:
	nop	
	mov	rax, -1
.label_1361:
	mov	rbp, rbp
	add	rsp, 0x48
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413690

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
	jne	.label_1375
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_1376
	test	cl, cl
	mov	rsp, rsp
	jne	.label_1376
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_1376
.label_1375:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1376
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_1376:
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
	#Procedure 0x413720

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_1377
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x70], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1377:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_1378
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rsp, rsp
	lea	rax, [rsp + 0xd0]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], 0x10
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	lea	rdi, [rdi]
	ja	.label_1380
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1379
.label_1380:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1379:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_1378:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	call	open
	mov	edi, eax
	mov	rsp, rsp
	call	fd_safer
	mov	rbp, rbp
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413840

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
	je	.label_1382
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_1381
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_1383
.label_1381:
	nop	
	mov	esi, OFFSET FLAT:.str.1_10
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_1382
.label_1383:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_1382:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x413890

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
	mov	eax, OFFSET FLAT:.str.1_11
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_1384
	nop	
	mov	rax, rcx
.label_1384:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4138d0

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	mov	ebx, edi
	mov	rbp, rbp
	cmp	ebx, 2
	ja	.label_1385
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rax
	nop	
	mov	r15d, dword ptr [rbp]
	mov	rsp, rsp
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	rsp, rsp
	mov	eax, r14d
	jmp	.label_1386
.label_1385:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_1386:
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x413940

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15, rsi
	mov	rbp, rbp
	mov	rax, rdi
	xor	ebp, ebp
	jmp	.label_1387
	nop	word ptr cs:[rax + rax]
.label_1388:
	lea	rdi, [rdi]
	inc	rbp
.label_1387:
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + rbp*2]
	cmp	ecx, 0x25
	jne	.label_1400
	movzx	ecx, byte ptr [rax + rbp*2 + 1]
	nop	
	cmp	ecx, 0x73
	je	.label_1388
	jmp	.label_1392
.label_1400:
	mov	rbp, rbp
	test	cl, cl
	lea	rdi, [rdi]
	jne	.label_1392
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [r15]
	movaps	xmmword ptr [rsp], xmm0
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_1395
	mov	r14d, dword ptr [rsp]
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r12, rbp
	nop	dword ptr [rax]
.label_1391:
	mov	rsp, rsp
	cmp	r14d, 0x28
	lea	rsi, [rsi]
	ja	.label_1393
	movsxd	rax, r14d
	add	rax, qword ptr [rsp + 0x10]
	add	r14d, 8
	mov	dword ptr [rsp], r14d
	jmp	.label_1394
	nop	
.label_1393:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rcx
.label_1394:
	mov	rdi, qword ptr [rax]
	call	strlen
	add	rax, rbx
	lea	rdi, [rdi]
	cmp	rax, rbx
	mov	rbx, -1
	cmovae	rbx, rax
	lea	rdi, [rdi]
	dec	r12
	mov	rbp, rbp
	jne	.label_1391
	lea	rdi, [rdi]
	test	rbx, -0x80000000
	je	.label_1396
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x4b
	mov	rsp, rsp
	xor	r14d, r14d
	lea	rdi, [rdi]
	jmp	.label_1389
.label_1392:
	lea	rdi, [rsp + 0x20]
	mov	esi, 1
	mov	rdx, rax
	mov	rcx, r15
	call	__vasprintf_chk
	test	eax, eax
	js	.label_1397
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1389
.label_1397:
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	r14d, r14d
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0xc
	jne	.label_1389
	lea	rdi, [rdi]
	call	xalloc_die
.label_1395:
	nop	
	mov	edi, 1
	nop	
	call	xmalloc
	mov	rsp, rsp
	mov	r14, rax
	nop	
	mov	rbx, r14
	mov	rbp, rbp
	mov	byte ptr [rbx], 0
	jmp	.label_1389
.label_1396:
	lea	rsi, [rsi]
	inc	rax
	mov	rdi, rax
	call	xmalloc
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_1390:
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [r15]
	lea	rsi, [rsi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_1399
	nop	
	mov	rax, rcx
	add	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [r15], ecx
	jmp	.label_1398
	nop	word ptr cs:[rax + rax]
.label_1399:
	mov	rax, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [r15 + 8], rcx
.label_1398:
	mov	r12, qword ptr [rax]
	mov	rdi, r12
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	mov	r13, rax
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r13
	mov	rbp, rbp
	call	memcpy
	add	rbx, r13
	mov	rsp, rsp
	dec	rbp
	nop	
	jne	.label_1390
	mov	byte ptr [rbx], 0
.label_1389:
	mov	rax, r14
	add	rsp, 0x28
	nop	
	pop	rbx
	nop	
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413b80

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
	js	.label_1401
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_1403
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
	je	.label_1401
.label_1403:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1401
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_1402
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_1402:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_1401:
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
	#Procedure 0x413c30

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1404
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_1404
	test	byte ptr [rbx + 1], 1
	je	.label_1404
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_1404:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413c70

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
	jne	.label_1405
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1405
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1406
.label_1405:
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
.label_1406:
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
	je	.label_1407
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1407:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413d20

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
	.section	.text
	.align	16
	#Procedure 0x413d40

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 3
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	rpl_fcntl
	nop	word ptr cs:[rax + rax]
	nop	
	.section .text
	.align	16
	#Procedure 0x413d60

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0xd0
	mov	rsp, rsp
	mov	ebx, edi
	test	al, al
	je	.label_1425
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1425:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	nop	
	mov	qword ptr [rsp + 0x18], rcx
	nop	
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0xf0]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb0], 0x10
	lea	rsi, [rsi]
	cmp	esi, 0xb
	mov	rsp, rsp
	ja	.label_1418
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_1412
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_1410
	mov	rsp, rsp
	test	esi, esi
	jne	.label_1418
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_1419
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1424
.label_1418:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_1413
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_1410
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1420
.label_1412:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1416
.label_1410:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_1417
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1421
.label_1417:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1421:
	mov	edx, dword ptr [rax]
.label_1414:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_1416:
	mov	ebp, eax
.label_1409:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_1420:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_1413
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_1415
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1427
.label_1413:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_1423
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_1426
.label_1419:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1424:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_1414
.label_1415:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1427:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_1411
	mov	esi, 0x406
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, ebx
	mov	edx, r14d
	lea	rsi, [rsi]
	call	fcntl
	lea	rdi, [rdi]
	mov	ebp, eax
	lea	rsi, [rsi]
	test	ebp, ebp
	jns	.label_1408
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1408
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	nop	
	mov	edx, r14d
	lea	rdi, [rdi]
	call	fcntl
	nop	
	mov	ebp, eax
	lea	rdi, [rdi]
	test	ebp, ebp
	js	.label_1409
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_1428
.label_1408:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1409
.label_1423:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_1426:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_1416
.label_1411:
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, ebx
	nop	
	mov	edx, r14d
	lea	rsi, [rsi]
	call	fcntl
	mov	ebp, eax
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_1428:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_1409
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_1409
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1422
	or	ecx, 1
	mov	esi, 2
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	edi, ebp
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	call	fcntl
	lea	rdi, [rdi]
	cmp	eax, -1
	jne	.label_1409
.label_1422:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	nop	
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	mov	rsp, rsp
	jmp	.label_1409
	nop	word ptr cs:[rax + rax]
	nop
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]