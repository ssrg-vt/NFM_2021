	.section	.text
	.align	16
	#Procedure 0x401ad0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	lea	rsi, [rsi]
	test	ebp, ebp
	nop	
	jne	.label_7
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.5
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.6
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.10
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.11
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rsp, rsp
	call	emit_ancillary_info
	mov	rbp, rbp
	mov	edi, ebp
	lea	rsi, [rsi]
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	rsp, rsp
	mov	edi, ebp
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d20

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.36
	nop	word ptr [rax + rax]
.label_9:
	mov	edi, OFFSET FLAT:.str.12
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	je	.label_8
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	nop	
	test	rsi, rsi
	nop	
	jne	.label_9
.label_8:
	mov	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.12
	cmovne	rbx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	lea	rdi, [rdi]
	mov	edi, 5
	mov	rbp, rbp
	xor	esi, esi
	call	setlocale
	mov	rsp, rsp
	test	rax, rax
	je	.label_10
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_10
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
.label_10:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, rax
	nop	
	mov	r14d, OFFSET FLAT:.str.12
	nop	
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.12
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.50
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rcx, rax
	nop	
	mov	edi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rdx
	mov	rsp, rsp
	mov	rdx, rbx
	nop	
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	jmp	__printf_chk
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401eb0

	.globl main
	.type main, @function
main:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	mov	rbp, rbp
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x40
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	nop	
	call	set_program_name
	mov	rsp, rsp
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.14
	mov	esi, OFFSET FLAT:.str.15
	mov	rbp, rbp
	call	bindtextdomain
	nop	
	mov	edi, OFFSET FLAT:.str.14
	call	textdomain
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:close_stdin
	call	atexit
	mov	rsp, rsp
	lea	rdi, [rsp + 0x20]
	call	rm_option_init
	lea	rsi, [rsi]
	mov	r15b, 1
	jmp	.label_13
	nop	word ptr cs:[rax + rax]
.label_15:
	mov	dword ptr [rsp + 0x24], 3
	mov	byte ptr [rsp + 0x20], 0
.label_13:
	xor	r14d, r14d
	lea	rsi, [rsi]
	jmp	.label_11
.label_30:
	mov	byte ptr [rsp + 0x29], 1
	nop	word ptr [rax + rax]
.label_11:
	mov	edx, OFFSET FLAT:.str.16
	nop	
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	mov	rbp, rbp
	call	getopt_long
	lea	rdi, [rdi]
	cmp	eax, 0x68
	lea	rsi, [rsi]
	jle	.label_20
	lea	rsi, [rsi]
	lea	ecx, [rax - 0x76]
	lea	rdi, [rdi]
	cmp	ecx, 0xe
	ja	.label_22
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_25]]
.label_890:
	mov	byte ptr [rsp + 0x3a], 1
	lea	rsi, [rsi]
	jmp	.label_11
	nop	word ptr cs:[rax + rax]
.label_20:
	mov	rbp, rbp
	cmp	eax, 0x51
	jle	.label_29
	cmp	eax, 0x52
	lea	rdi, [rdi]
	je	.label_30
	cmp	eax, 0x64
	mov	rbp, rbp
	jne	.label_14
	nop	
	mov	byte ptr [rsp + 0x2a], 1
	jmp	.label_11
.label_29:
	cmp	eax, 0x48
	jle	.label_35
	cmp	eax, 0x49
	mov	rsp, rsp
	jne	.label_12
.label_18:
	mov	dword ptr [rsp + 0x24], 4
	mov	byte ptr [rsp + 0x20], 0
	nop	
	mov	r14b, 1
	mov	rbp, rbp
	jmp	.label_11
.label_22:
	mov	rsp, rsp
	cmp	eax, 0x69
	je	.label_15
	lea	rdi, [rdi]
	cmp	eax, 0x72
	je	.label_30
	jmp	.label_12
.label_891:
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_15
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.17_0
	mov	edx, OFFSET FLAT:interactive_args
	mov	ecx, OFFSET FLAT:interactive_types
	mov	r8d, 4
	lea	rsi, [rsi]
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + interactive_types]]
	lea	rsi, [rsi]
	cmp	eax, 2
	je	.label_15
	cmp	eax, 1
	je	.label_18
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_11
	nop	
	jmp	.label_21
.label_892:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x28], 1
	jmp	.label_11
.label_893:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [rbx + rax*8 - 8]
	mov	esi, OFFSET FLAT:.str.18_0
	call	strcmp
	xor	r15d, r15d
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_11
	nop	
	jmp	.label_31
.label_894:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	test	rax, rax
	mov	rbp, rbp
	mov	r15b, 1
	nop	
	je	.label_11
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x61
	jne	.label_24
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	cmp	ecx, 0x6c
	nop	
	jne	.label_24
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x6c
	jne	.label_24
	cmp	byte ptr [rax + 3], 0
	jne	.label_24
	mov	byte ptr [rsp + 0x38], 1
	mov	rsp, rsp
	mov	r15b, 1
	jmp	.label_11
.label_895:
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x39], 1
	jmp	.label_11
	nop	
.label_14:
	cmp	eax, 0x66
	jne	.label_12
	mov	dword ptr [rsp + 0x24], 5
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x20], 1
	jmp	.label_13
.label_21:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x24], 5
	jmp	.label_13
.label_35:
	nop	
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_16
	cmp	dword ptr [dword ptr [rip + optind]],  ebp
	mov	rsp, rsp
	jge	.label_17
	mov	rbp, rbp
	test	r15b, r15b
	mov	rbp, rbp
	je	.label_19
	nop	
	mov	al, byte ptr [rsp + 0x29]
	lea	rsi, [rsi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_19
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	lea	rdi, [rdi]
	call	get_root_dev_ino
	mov	qword ptr [rsp + 0x30], rax
	test	rax, rax
	je	.label_27
.label_19:
	movsxd	r12,  dword ptr [dword ptr [rip + optind]]
	test	r14b, r14b
	je	.label_28
	movsxd	r15, ebp
	sub	r15, r12
	mov	bpl, byte ptr [rsp + 0x29]
	lea	rdi, [rdi]
	cmp	r15d, 3
	ja	.label_32
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_28
.label_32:
	nop	
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, r15
	mov	rsp, rsp
	call	select_plural
	xor	edi, edi
	lea	rdi, [rdi]
	test	bpl, bpl
	je	.label_36
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, OFFSET FLAT:.str.31
	nop	
	jmp	.label_37
.label_17:
	lea	rdi, [rdi]
	xor	ebp, ebp
	cmp	byte ptr [rsp + 0x20], 0
	jne	.label_26
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_36:
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, OFFSET FLAT:.str.33
.label_37:
	mov	r8d, 5
	mov	rcx, rax
	lea	rsi, [rsi]
	call	dcngettext
	nop	
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	xor	ebp, ebp
	mov	esi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, r15
	call	__fprintf_chk
	mov	rsp, rsp
	call	yesno
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	je	.label_26
.label_28:
	mov	rbp, rbp
	lea	rdi, [rbx + r12*8]
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x20]
	mov	rbp, rbp
	call	rm
	cmp	eax, 4
	lea	rsi, [rsi]
	je	.label_33
	mov	ecx, eax
	mov	rbp, rbp
	or	ecx, 1
	lea	rdi, [rdi]
	cmp	ecx, 3
	mov	rbp, rbp
	jne	.label_34
.label_33:
	cmp	eax, 4
	mov	rbp, rbp
	sete	al
	lea	rsi, [rsi]
	movzx	ebp, al
.label_26:
	mov	eax, ebp
	add	rsp, 0x40
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_16:
	cmp	eax, 0xffffff7d
	je	.label_23
	nop	
	cmp	eax, 0xffffff7e
	jne	.label_12
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	call	usage
.label_23:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp + 0x10], 0
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str.26
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.25
	nop	
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, OFFSET FLAT:.str.17
	nop	
	mov	r8d, OFFSET FLAT:.str.23
	mov	r9d, OFFSET FLAT:.str.24
	lea	rdi, [rdi]
	xor	eax, eax
	call	version_etc
	nop	
	xor	edi, edi
	call	exit
.label_12:
	lea	rsi, [rsi]
	mov	edi, ebp
	mov	rsi, rbx
	mov	rsp, rsp
	call	diagnose_leading_hyphen
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_24:
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsp, rsp
	call	quotearg_style
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rsp, rsp
	call	error
.label_31:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	nop	
	call	error
.label_34:
	mov	edi, OFFSET FLAT:.str.34
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.35
	mov	rsp, rsp
	mov	edx, 0x173
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	lea	rdi, [rdi]
	call	__assert_fail
.label_27:
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.28
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	nop	
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str_1
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	lea	rsi, [rsi]
	mov	rdx, rbp
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402490

	.globl rm_option_init
	.type rm_option_init, @function
rm_option_init:
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	mov	byte ptr [rbx], 0
	mov	dword ptr [rbx + 4], 4
	mov	rbp, rbp
	mov	byte ptr [rbx + 8], 0
	mov	byte ptr [rbx + 0xa], 0
	mov	rbp, rbp
	mov	byte ptr [rbx + 9], 0
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x10], 0
	nop	
	mov	byte ptr [rbx + 0x18], 0
	lea	rsi, [rsi]
	xor	edi, edi
	call	isatty
	nop	
	test	eax, eax
	mov	rbp, rbp
	setne	byte ptr [rbx + 0x19]
	lea	rsi, [rsi]
	mov	byte ptr [rbx + 0x1a], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbx + 0x1b], 0
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024f0

	.globl diagnose_leading_hyphen
	.type diagnose_leading_hyphen, @function
diagnose_leading_hyphen:
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x98
	mov	r14, rsi
	nop	
	cmp	edi, 2
	mov	rsp, rsp
	jl	.label_39
	movsxd	r12, edi
	mov	ebx, 1
	lea	r15, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_41:
	mov	rbp, qword ptr [r14 + rbx*8]
	movzx	eax, byte ptr [rbp]
	nop	
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	jne	.label_38
	cmp	byte ptr [rbp + 1], 0
	mov	rsp, rsp
	je	.label_38
	mov	rdi, rbp
	mov	rsi, r15
	call	__lstat
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_40
.label_38:
	lea	rdi, [rdi]
	inc	rbx
	mov	rbp, rbp
	cmp	rbx, r12
	nop	
	jl	.label_41
	jmp	.label_39
.label_40:
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.68
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r12, rax
	nop	
	mov	r14, qword ptr [r14]
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r13, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	quotearg_style
	nop	
	mov	rbx, rax
	mov	esi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, r15
	nop	
	mov	rdx, r12
	mov	rcx, r14
	mov	r8, r13
	mov	rsp, rsp
	mov	r9, rbx
	call	__fprintf_chk
.label_39:
	add	rsp, 0x98
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402610

	.globl select_plural
	.type select_plural, @function
select_plural:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x402620

	.globl rm
	.type rm, @function
rm:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	nop	
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebp, 2
	cmp	qword ptr [rdi], 0
	je	.label_44
	lea	rsi, [rsi]
	mov	esi, 0x218
	cmp	byte ptr [r14 + 8], 0
	lea	rdi, [rdi]
	je	.label_49
	mov	esi, 0x258
.label_49:
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rsp, rsp
	call	xfts_open
	mov	r15, rax
	mov	rdi, r15
	mov	rbp, rbp
	call	rpl_fts_read
	mov	ebx, 2
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_45
	nop	
.label_42:
	mov	rdi, r15
	mov	rsi, rax
	nop	
	mov	rdx, r14
	call	rm_fts
	cmp	eax, 4
	je	.label_48
	lea	rsi, [rsi]
	mov	ecx, eax
	or	ecx, 1
	cmp	ecx, 3
	lea	rdi, [rdi]
	jne	.label_47
.label_48:
	cmp	eax, 3
	lea	rsi, [rsi]
	mov	ebp, ebx
	lea	rsi, [rsi]
	cmove	ebp, eax
	cmp	ebx, 2
	nop	
	cmovne	ebp, ebx
	cmp	eax, 4
	lea	rsi, [rsi]
	cmove	ebp, eax
	mov	rdi, r15
	lea	rdi, [rdi]
	call	rpl_fts_read
	test	rax, rax
	mov	ebx, ebp
	nop	
	jne	.label_42
	jmp	.label_43
.label_45:
	mov	ebp, 2
.label_43:
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	r14d, dword ptr [rax]
	test	r14d, r14d
	mov	rsp, rsp
	je	.label_46
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, r14d
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	error
	mov	rbp, rbp
	mov	ebp, 4
.label_46:
	mov	rdi, r15
	call	rpl_fts_close
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_44
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rcx
	call	error
	mov	ebp, 4
.label_44:
	lea	rsi, [rsi]
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_47:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.1_0
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 0x261
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.rm
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027c0

	.globl rm_fts
	.type rm_fts, @function
rm_fts:
	nop	
	push	rbp
	nop	
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	lea	rdi, [rdi]
	mov	r13, rdx
	nop	
	mov	r15, rsi
	mov	r14, rdi
	movzx	eax, word ptr [r15 + 0x70]
	lea	ecx, [rax - 1]
	cmp	ecx, 0xc
	ja	.label_67
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_70]]
.label_860:
	movzx	eax, ax
	mov	rsp, rsp
	cmp	eax, 6
	jne	.label_51
	cmp	byte ptr [r13 + 8], 0
	je	.label_51
	cmp	qword ptr [r15 + 0x58], 0
	lea	rdi, [rdi]
	jle	.label_51
	nop	
	mov	rax, qword ptr [r15 + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_55
.label_51:
	lea	rsi, [rsi]
	movzx	ebx, word ptr [r15 + 0x70]
	or	ebx, 2
	mov	rsp, rsp
	cmp	ebx, 6
	mov	rbp, rbp
	sete	al
	lea	rdi, [rdi]
	movzx	edx, al
	mov	r8d, 3
	mov	rbp, rbp
	xor	r9d, r9d
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, r13
	call	prompt
	lea	rdi, [rdi]
	mov	ebp, eax
	cmp	ebp, 2
	jne	.label_61
	movzx	eax, bx
	mov	rbp, rbp
	cmp	eax, 6
	sete	al
	movzx	ecx, al
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r15
	mov	rdx, r13
	lea	rdi, [rdi]
	add	rsp, 0x98
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	jmp	excise
.label_858:
	lea	rdi, [rdi]
	cmp	byte ptr [r13 + 9], 0
	jne	.label_64
	lea	rdi, [rdi]
	cmp	byte ptr [r13 + 0xa], 0
	je	.label_66
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rbp, rbp
	mov	rsi, qword ptr [r15 + 0x30]
	call	is_empty_dir
	test	al, al
	je	.label_66
.label_64:
	nop	
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_54
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 0x30]
	call	last_component
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	dot_or_dotdot
	lea	rdi, [rdi]
	test	al, al
	mov	rbp, rbp
	je	.label_52
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.5_0
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	ebp, 4
	xor	edi, edi
	mov	esi, 4
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_3
	call	quotearg_n_style
	mov	r13, rax
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, 4
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.2_1
	call	quotearg_n_style
	mov	rbp, rbp
	mov	r12, rax
	mov	rbp, rbp
	mov	rdx, qword ptr [r15 + 0x38]
	mov	edi, 2
	nop	
	mov	esi, 4
	nop	
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, qword ptr [rsp]
	mov	rcx, r13
	mov	rbp, rbp
	mov	r8, r12
	mov	r9, rbx
	lea	rsi, [rsi]
	call	error
	jmp	.label_65
.label_859:
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.15_0
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 3
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	nop	
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	nop	
	call	error
	jmp	.label_53
.label_861:
	lea	rdi, [rdi]
	mov	ebx, dword ptr [r15 + 0x40]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbp, rax
	nop	
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
.label_53:
	mov	rdi, r14
	mov	rsi, r15
	call	fts_skip_tree
	mov	rbp, rbp
	mov	ebp, 4
	jmp	.label_61
.label_55:
	mov	rdi, r15
	call	mark_ancestor_dirs
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	rsp, rsp
	mov	ebp, 4
	mov	rbp, rbp
	mov	edi, 4
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	error
	jmp	.label_61
.label_66:
	mov	r12d, 0x27
	cmp	byte ptr [r13 + 0xa], 0
	mov	rsp, rsp
	jne	.label_68
	mov	r12d, 0x15
.label_68:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	ebp, 4
	mov	rbp, rbp
	mov	edi, 4
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	esi, r12d
	mov	rbp, rbp
	mov	rdx, rbx
	call	error
	mov	rbp, rbp
	jmp	.label_58
.label_52:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0x10]
	mov	rsp, rsp
	test	rax, rax
	je	.label_59
	mov	rcx, qword ptr [r15 + 0x80]
	nop	
	cmp	rcx, qword ptr [rax]
	nop	
	jne	.label_59
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	nop	
	jne	.label_59
	nop	
	mov	rax, qword ptr [r15 + 0x38]
	movzx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2f
	nop	
	jne	.label_62
	cmp	byte ptr [rax + 1], 0
	lea	rdi, [rdi]
	je	.label_63
.label_62:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	r12, rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 4
	call	quotearg_n_style
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str_1
	call	quotearg_n_style
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, r12
	mov	rcx, rbp
	mov	r8, rbx
	mov	rbp, rbp
	call	error
	lea	rdi, [rdi]
	jmp	.label_50
.label_59:
	cmp	byte ptr [r13 + 0x18], 0
	mov	rbp, rbp
	je	.label_54
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.2_1
	mov	rbp, rbp
	xor	edx, edx
	call	file_name_concat
	mov	rbp, rax
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_57
	mov	rsp, rsp
	lea	rsi, [rsp + 8]
	mov	rdi, rbp
	call	__lstat
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_60
.label_57:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	r12, rax
	nop	
	xor	edi, edi
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, rbp
	mov	rsp, rsp
	call	quotearg_n_style
	lea	rsi, [rsi]
	mov	r13, rax
	mov	rdx, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, 4
	lea	rdi, [rdi]
	call	quotearg_n_style
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, r12
	mov	rcx, r13
	lea	rdi, [rdi]
	mov	r8, rbx
	lea	rdi, [rdi]
	call	error
	mov	rdi, rbp
	call	free
	jmp	.label_53
.label_60:
	mov	rdi, rbp
	mov	rbp, rbp
	call	free
	mov	rax, qword ptr [r14 + 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	jne	.label_69
.label_54:
	mov	rbp, rbp
	lea	r9, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 1
	mov	r8d, 2
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, r15
	mov	rcx, r13
	mov	rbp, rbp
	call	prompt
	mov	ebp, eax
	nop	
	cmp	ebp, 2
	jne	.label_56
	mov	rbp, rbp
	cmp	dword ptr [rsp + 8], 4
	jne	.label_56
	mov	ecx, 1
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, r13
	nop	
	call	excise
	mov	ebp, eax
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsi, r15
	mov	rbp, rbp
	call	fts_skip_tree
.label_56:
	lea	rsi, [rsi]
	cmp	ebp, 2
	lea	rdi, [rdi]
	je	.label_61
.label_58:
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsp, rsp
	call	mark_ancestor_dirs
.label_65:
	mov	rsp, rsp
	mov	rdi, r14
	nop	
	mov	rsi, r15
	lea	rsi, [rsi]
	call	fts_skip_tree
.label_61:
	mov	rsp, rsp
	mov	eax, ebp
	add	rsp, 0x98
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_69:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	nop	
	mov	rsi, qword ptr [r15 + 0x38]
	mov	edi, 4
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	rbp, rbp
	call	error
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.14_0
	lea	rsi, [rsi]
	jmp	.label_71
.label_63:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rbp, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbx
	call	error
.label_50:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_0
.label_71:
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	error
	jmp	.label_53
.label_67:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_1
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	r14, rax
	lea	rdi, [rdi]
	movzx	ebp, word ptr [r15 + 0x70]
	mov	rbp, rbp
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	nop	
	mov	esi, 3
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	nop	
	mov	r9d, OFFSET FLAT:.str.15_1
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	ecx, ebp
	mov	r8, rbx
	nop	
	call	error
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ef0

	.globl is_empty_dir
	.type is_empty_dir, @function
is_empty_dir:
	lea	rdi, [rdi]
	push	rbp
	push	r14
	push	rbx
	lea	rsi, [rsi]
	xor	ebx, ebx
	mov	edx, 0x30900
	lea	rsi, [rsi]
	xor	eax, eax
	call	openat
	nop	
	mov	ebp, eax
	test	ebp, ebp
	js	.label_72
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	mov	rbp, rbp
	test	rbx, rbx
	nop	
	je	.label_74
	call	__errno_location
	nop	
	mov	rbp, rax
	mov	rsp, rsp
	mov	dword ptr [rbp], 0
	mov	rsp, rsp
	mov	rdi, rbx
	nop	
	call	readdir_ignoring_dot_and_dotdot
	mov	rbp, rbp
	mov	r14, rax
	mov	ebp, dword ptr [rbp]
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	closedir
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_73
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_72
.label_74:
	mov	edi, ebp
	lea	rdi, [rdi]
	call	close
	xor	ebx, ebx
	jmp	.label_72
.label_73:
	mov	rbp, rbp
	test	ebp, ebp
	lea	rdi, [rdi]
	sete	bl
.label_72:
	mov	rsp, rsp
	mov	al, bl
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fa0

	.globl mark_ancestor_dirs
	.type mark_ancestor_dirs, @function
mark_ancestor_dirs:
	mov	rax, qword ptr [rdi + 8]
	jmp	.label_75
	nop	word ptr cs:[rax + rax]
.label_76:
	mov	qword ptr [rax + 0x20], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
.label_75:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_77
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x20], 0
	mov	rbp, rbp
	je	.label_76
.label_77:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fe0

	.globl fts_skip_tree
	.type fts_skip_tree, @function
fts_skip_tree:
	push	rbx
	mov	rbx, rdi
	mov	edx, 4
	mov	rsp, rsp
	call	rpl_fts_set
	lea	rdi, [rdi]
	mov	rdi, rbx
	pop	rbx
	jmp	rpl_fts_read
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403000

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi]
	mov	rbp, rbp
	cmp	eax, 0x2e
	lea	rsi, [rsi]
	jne	.label_78
	movzx	ecx, byte ptr [rdi + 1]
	mov	rbp, rbp
	mov	eax, 2
	mov	rbp, rbp
	cmp	ecx, 0x2e
	mov	rbp, rbp
	je	.label_79
	mov	eax, 1
.label_79:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rdi + rax]
	mov	rbp, rbp
	test	al, al
	sete	cl
	mov	rsp, rsp
	cmp	eax, 0x2f
	nop	
	sete	al
	mov	rbp, rbp
	or	al, cl
	lea	rdi, [rdi]
	ret	
.label_78:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403060

	.globl prompt
	.type prompt, @function
prompt:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	nop	
	push	r13
	nop	
	push	r12
	lea	rsi, [rsi]
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0xb8
	nop	
	mov	r13, r9
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xc], r8d
	lea	rsi, [rsi]
	mov	r12, rcx
	mov	r15d, edx
	mov	r14, rsi
	mov	ebp, dword ptr [rdi + 0x2c]
	nop	
	mov	rbx, qword ptr [r14 + 0x30]
	mov	rax, qword ptr [r14 + 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	test	r13, r13
	je	.label_93
	mov	dword ptr [r13], 2
.label_93:
	lea	rdi, [rsp + 0x28]
	mov	rbp, rbp
	call	cache_stat_init
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_94
	mov	edi, ebp
	mov	dword ptr [rsp + 0x24], ebp
	mov	rsi, rbx
	mov	qword ptr [rsp + 0x18], rbx
	lea	rdi, [rdi]
	call	is_empty_dir
	mov	bl, al
	movzx	eax, bl
	add	eax, 3
	mov	dword ptr [r13], eax
	nop	
	jmp	.label_98
.label_94:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rbx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x24], ebp
	xor	ebx, ebx
.label_98:
	mov	ebp, 3
	cmp	qword ptr [r14 + 0x20], 0
	jne	.label_80
	mov	eax, dword ptr [r12 + 4]
	nop	
	cmp	eax, 5
	je	.label_84
	lea	rdi, [rdi]
	xor	r14d, r14d
	cmp	byte ptr [r12], 0
	mov	rbp, rbp
	jne	.label_89
	cmp	eax, 3
	je	.label_90
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + 0x19], 0
	mov	rbp, rbp
	je	.label_89
.label_90:
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0x28]
	nop	
	mov	edi, dword ptr [rsp + 0x24]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	call	write_protected_non_symlink
	mov	ebp, eax
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rsp, rsp
	test	ebp, ebp
	jne	.label_99
.label_89:
	cmp	dword ptr [r12 + 4], 3
	mov	rsp, rsp
	mov	ebp, 0
	lea	rsi, [rsi]
	jne	.label_84
.label_99:
	mov	rsp, rsp
	movzx	r13d, r15b
	shl	r13d, 2
	lea	rdi, [rdi]
	test	ebp, ebp
	nop	
	js	.label_81
	lea	rsi, [rsi]
	xor	r15b, 1
	lea	rsi, [rsi]
	je	.label_81
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0x28]
	mov	edi, dword ptr [rsp + 0x24]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x18]
	call	cache_fstatat
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_92
	lea	rsi, [rsi]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	mov	rbp, rbp
	jmp	.label_96
.label_81:
	mov	r15d, r14d
.label_91:
	mov	rbp, rbp
	mov	r14d, r13d
.label_86:
	test	ebp, ebp
	mov	r13d, ebp
	mov	ebp, 3
	js	.label_96
	mov	rbp, rbp
	cmp	r14d, 4
	mov	rbp, rbp
	je	.label_88
	cmp	r14d, 0xa
	lea	rdi, [rdi]
	jne	.label_85
	mov	rbp, rbp
	cmp	dword ptr [r12 + 4], 3
	jne	.label_84
	jmp	.label_85
.label_92:
	lea	rdi, [rdi]
	mov	r15d, r14d
	mov	eax, 0xf000
	mov	rbp, rbp
	and	eax, dword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	r14d, 0xa
	lea	rsi, [rsi]
	cmp	eax, 0xa000
	je	.label_86
	cmp	eax, 0x4000
	mov	eax, 4
	lea	rsi, [rsi]
	cmove	r13d, eax
	jmp	.label_91
.label_88:
	mov	rbp, rbp
	cmp	byte ptr [r12 + 9], 0
	lea	rsi, [rsi]
	jne	.label_85
	nop	
	cmp	byte ptr [r12 + 0xa], 0
	mov	r15d, 0x15
	je	.label_96
	mov	al, bl
	mov	rsp, rsp
	xor	al, 1
	mov	rbp, rbp
	jne	.label_96
.label_85:
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x10]
	call	quotearg_style
	mov	r15, rax
	cmp	r14d, 4
	setne	al
	cmp	dword ptr [rsp + 0xc], 2
	setne	cl
	or	cl, al
	lea	rsi, [rsi]
	or	bl, cl
	mov	rbp, rbp
	je	.label_97
	lea	rdx, [rsp + 0x28]
	mov	edi, dword ptr [rsp + 0x24]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x18]
	call	cache_fstatat
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_95
	mov	rbp, rbp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, r15
	nop	
	call	error
	mov	ebp, 4
	nop	
	jmp	.label_80
.label_96:
	mov	ebp, 4
	mov	rbp, rbp
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x10]
	call	quotearg_style
	nop	
	mov	rbx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.4_0
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, r15d
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	jmp	.label_80
.label_97:
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_100
	mov	esi, OFFSET FLAT:.str.19_0
	lea	rsi, [rsi]
	jmp	.label_87
.label_95:
	nop	
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	test	r13d, r13d
	je	.label_83
	mov	esi, OFFSET FLAT:.str.21_0
	jmp	.label_82
.label_100:
	mov	esi, OFFSET FLAT:.str.20
.label_87:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	rsp, rsp
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	r8, r15
	lea	rdi, [rdi]
	call	__fprintf_chk
	lea	rsi, [rsi]
	jmp	.label_101
.label_83:
	mov	esi, OFFSET FLAT:.str.22
.label_82:
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	rbp, rbp
	mov	r12,  qword ptr [word ptr [rip + program_name]]
	mov	rsp, rsp
	lea	rdi, [rsp + 0x28]
	lea	rdi, [rdi]
	call	file_type
	mov	rbx, rax
	nop	
	mov	esi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, r14
	mov	rbp, rbp
	mov	rdx, r13
	lea	rdi, [rdi]
	mov	rcx, r12
	mov	r8, rbx
	mov	r9, r15
	mov	rsp, rsp
	call	__fprintf_chk
.label_101:
	lea	rsi, [rsi]
	call	yesno
	test	al, al
	lea	rdi, [rdi]
	je	.label_80
.label_84:
	mov	ebp, 2
.label_80:
	lea	rdi, [rdi]
	mov	eax, ebp
	mov	rbp, rbp
	add	rsp, 0xb8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	pop	r14
	nop	
	pop	r15
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403480

	.globl excise
	.type excise, @function
excise:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x98
	lea	rdi, [rdi]
	mov	ebx, ecx
	mov	r12, rdx
	mov	r14, rsi
	mov	rbp, rbp
	mov	rbp, rdi
	mov	rsp, rsp
	movzx	edx, bl
	lea	rdi, [rdi]
	shl	edx, 9
	mov	edi, dword ptr [rbp + 0x2c]
	mov	rsi, qword ptr [r14 + 0x30]
	lea	rsi, [rsi]
	call	unlinkat
	test	eax, eax
	je	.label_105
	lea	rsi, [rsi]
	call	__errno_location
	mov	r13, rax
	mov	ebx, dword ptr [r13]
	cmp	ebx, 0x1e
	jne	.label_104
	mov	edi, dword ptr [rbp + 0x2c]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r14 + 0x30]
	lea	rdx, [rsp + 8]
	lea	rsi, [rsi]
	call	lstatat
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	je	.label_109
	mov	rbp, rbp
	cmp	dword ptr [r13], 2
	nop	
	je	.label_102
.label_109:
	nop	
	mov	dword ptr [r13], 0x1e
.label_102:
	mov	ebx, dword ptr [r13]
.label_104:
	mov	rbp, rbp
	mov	rdi, r12
	mov	esi, ebx
	call	ignorable_missing
	mov	rbp, rbp
	mov	r15d, 2
	nop	
	test	al, al
	mov	rbp, rbp
	jne	.label_108
	mov	rbp, rbp
	movzx	eax, word ptr [r14 + 0x70]
	mov	rbp, rbp
	cmp	eax, 4
	jne	.label_107
	mov	eax, ebx
	cmp	ebx, 0x27
	ja	.label_107
	nop	
	movabs	rcx, 0x8000320000
	bt	rcx, rax
	mov	rsp, rsp
	jae	.label_107
	mov	rsp, rsp
	mov	eax, dword ptr [r14 + 0x40]
	lea	rdi, [rdi]
	cmp	eax, 0xd
	je	.label_106
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	jne	.label_107
.label_106:
	mov	eax, dword ptr [r14 + 0x40]
	mov	dword ptr [r13], eax
.label_107:
	mov	ebx, dword ptr [r13]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	r15d, 4
	mov	rsp, rsp
	mov	edi, 4
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	mov	rsp, rsp
	call	error
	mov	rdi, r14
	mov	rbp, rbp
	call	mark_ancestor_dirs
	lea	rsi, [rsi]
	jmp	.label_108
.label_105:
	mov	rbp, rbp
	mov	r15d, 2
	cmp	byte ptr [r12 + 0x1a], 0
	je	.label_108
	xor	edi, edi
	test	bl, bl
	mov	rbp, rbp
	je	.label_110
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.23_0
	mov	rsp, rsp
	jmp	.label_103
.label_110:
	nop	
	mov	esi, OFFSET FLAT:.str.24_0
.label_103:
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_108:
	mov	eax, r15d
	add	rsp, 0x98
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403670

	.globl readdir_ignoring_dot_and_dotdot
	.type readdir_ignoring_dot_and_dotdot, @function
readdir_ignoring_dot_and_dotdot:
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14, rdi
	nop	dword ptr [rax]
.label_112:
	mov	rdi, r14
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	mov	rbp, rbp
	mov	eax, 0
	lea	rdi, [rdi]
	je	.label_111
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	add	rdi, 0x13
	lea	rsi, [rsi]
	call	dot_or_dotdot
	nop	
	test	al, al
	mov	rax, rbx
	jne	.label_112
.label_111:
	mov	rbp, rbp
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036d0

	.globl cache_stat_init
	.type cache_stat_init, @function
cache_stat_init:
	mov	qword ptr [rdi + 0x30], -1
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4036e0

	.globl write_protected_non_symlink
	.type write_protected_non_symlink, @function
write_protected_non_symlink:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	ebp, edi
	call	can_write_any_file
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	je	.label_114
	xor	eax, eax
	jmp	.label_113
.label_114:
	mov	edi, ebp
	nop	
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	cache_fstatat
	mov	ecx, eax
	mov	eax, 0xffffffff
	test	ecx, ecx
	nop	
	jne	.label_113
	mov	rsp, rsp
	mov	eax, 0xf000
	lea	rdi, [rdi]
	and	eax, dword ptr [rbx + 0x18]
	mov	rbp, rbp
	cmp	eax, 0xa000
	mov	rsp, rsp
	jne	.label_115
	xor	eax, eax
	jmp	.label_113
.label_115:
	mov	edx, 2
	mov	ecx, 0x200
	mov	rbp, rbp
	mov	edi, ebp
	mov	rsi, r14
	mov	rsp, rsp
	call	faccessat
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	mov	eax, 0
	je	.label_113
	call	__errno_location
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	mov	eax, 1
	cmp	dword ptr [rcx], 0xd
	lea	rdi, [rdi]
	je	.label_113
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_113:
	mov	rsp, rsp
	pop	rbx
	pop	r14
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037a0

	.globl cache_fstatat
	.type cache_fstatat, @function
cache_fstatat:
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	mov	rbx, rdx
	mov	rcx, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	cmp	rcx, -1
	lea	rsi, [rsi]
	jne	.label_116
	mov	ecx, 0x100
	nop	
	mov	rdx, rbx
	call	fstatat
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_117
	mov	qword ptr [rbx + 0x30], -2
	nop	
	call	__errno_location
	movsxd	rax, dword ptr [rax]
	mov	qword ptr [rbx + 8], rax
.label_117:
	mov	rcx, qword ptr [rbx + 0x30]
.label_116:
	mov	rsp, rsp
	xor	eax, eax
	test	rcx, rcx
	mov	rbp, rbp
	jns	.label_118
	mov	ebx, dword ptr [rbx + 8]
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	rbp, rbp
	mov	eax, 0xffffffff
.label_118:
	pop	rbx
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403810

	.globl ignorable_missing
	.type ignorable_missing, @function
ignorable_missing:
	mov	rbp, rbp
	cmp	byte ptr [rdi], 0
	je	.label_119
	push	rax
	mov	rbp, rbp
	mov	edi, esi
	call	nonexistent_file_errno
	add	rsp, 8
	ret	
.label_119:
	xor	eax, eax
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403830

	.globl nonexistent_file_errno
	.type nonexistent_file_errno, @function
nonexistent_file_errno:
	mov	rsp, rsp
	mov	al, 1
	cmp	edi, 0x16
	ja	.label_120
	lea	rsi, [rsi]
	mov	ecx, 0x500004
	bt	ecx, edi
	jb	.label_121
.label_120:
	cmp	edi, 0x54
	mov	rbp, rbp
	jne	.label_122
.label_121:
	lea	rsi, [rsi]
	ret	
.label_122:
	xor	eax, eax
	nop	
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403860

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x403870

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
	je	.label_126
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
.label_123:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	jne	.label_125
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	je	.label_128
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_124
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rax, rax
	je	.label_127
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
	je	.label_125
.label_127:
	mov	rsp, rsp
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_125
.label_124:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbp
	nop	dword ptr [rax + rax]
.label_125:
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	lea	rsi, [rsi]
	inc	rbp
	add	r14, r13
	test	r15, r15
	nop	
	jne	.label_123
	lea	rsi, [rsi]
	jmp	.label_129
.label_126:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x10], rax
.label_129:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	mov	rsp, rsp
	cmove	rbp, qword ptr [rsp + 0x18]
.label_128:
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
	#Procedure 0x4039f0

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
	je	.label_130
	mov	esi, OFFSET FLAT:.str.1_1
	nop	
	jmp	.label_131
.label_130:
	nop	
	mov	esi, OFFSET FLAT:.str_4
.label_131:
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
	#Procedure 0x403a90

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
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.2_2
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	mov	rbx, qword ptr [r15]
	lea	rsi, [rsi]
	test	rbx, rbx
	nop	
	je	.label_134
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_133:
	test	rbp, rbp
	je	.label_132
	mov	rbp, rbp
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_136
.label_132:
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.3_1
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_135
	nop	
.label_136:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.4_1
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_135:
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	mov	rsp, rsp
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_133
.label_134:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	jmp	putc_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403be0

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
	push	rax
	mov	r14, r9
	lea	rsi, [rsi]
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r12
	mov	rcx, r15
	lea	rdi, [rdi]
	call	argmatch
	mov	rsp, rsp
	test	rax, rax
	jns	.label_137
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, r15
	call	argmatch_valid
	mov	rsp, rsp
	call	r14
	lea	rsi, [rsi]
	mov	rax, -1
.label_137:
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	nop	
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c80
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
	je	.label_138
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_139:
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
	je	.label_138
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_139
.label_138:
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
	#Procedure 0x403d10
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	nop
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d20

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	mov	rsp, rsp
	push	r14
	nop	
	push	rbx
	nop	
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	freadahead
	xor	ebp, ebp
	test	rax, rax
	mov	rbp, rbp
	je	.label_143
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fseeko
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	jne	.label_143
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	setne	bpl
.label_143:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	close_stream
	test	bpl, bpl
	nop	
	jne	.label_140
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_140
	pop	rbx
	pop	r14
	pop	rbp
	mov	rsp, rsp
	jmp	close_stdout
.label_140:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_6
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	lea	rsi, [rsi]
	jne	.label_141
	xor	edi, edi
	nop	
	mov	edx, OFFSET FLAT:.str_5
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_142
.label_141:
	nop	
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.1_2
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, r14
	call	error
.label_142:
	call	close_stdout
	nop	
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x403e30
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name_0]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403e40
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e50

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
	je	.label_145
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_144
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_144
.label_145:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_147
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_144:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_7
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name_0]]
	lea	rdi, [rdi]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_146
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_5
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
.label_147:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_146:
	mov	rbp, rbp
	mov	rdi, rbx
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
	mov	r8, r14
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f50

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_148:
	nop	
	movzx	eax, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	cmp	eax, 0x2f
	mov	rbp, rbp
	je	.label_148
	xor	ecx, ecx
	mov	rax, rdi
	jmp	.label_150
	nop	word ptr [rax + rax]
.label_151:
	inc	rax
	mov	rbp, rbp
	mov	cl, dl
.label_150:
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax]
	mov	dl, 1
	cmp	esi, 0x2f
	mov	rsp, rsp
	je	.label_151
	test	sil, sil
	mov	rsp, rsp
	je	.label_149
	mov	rbp, rbp
	mov	dl, cl
	and	dl, 1
	mov	rsp, rsp
	je	.label_152
	xor	ecx, ecx
.label_152:
	test	dl, dl
	lea	rsi, [rsi]
	cmovne	rdi, rax
	mov	dl, cl
	jmp	.label_151
.label_149:
	nop	
	mov	rax, rdi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fd0

	.globl base_len
	.type base_len, @function
base_len:
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rcx, rax
.label_154:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_153
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_154
.label_153:
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404010

	.globl file_type
	.type file_type, @function
file_type:
	mov	eax, 0xf000
	and	eax, dword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	cmp	eax, 0x5fff
	jle	.label_160
	mov	rsp, rsp
	cmp	eax, 0x9fff
	jg	.label_155
	cmp	eax, 0x6000
	je	.label_158
	lea	rdi, [rdi]
	cmp	eax, 0x8000
	jne	.label_159
	mov	rbp, rbp
	cmp	qword ptr [rdi + 0x30], 0
	lea	rsi, [rsi]
	je	.label_162
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 5
	nop	
	jmp	dcgettext
.label_160:
	lea	rsi, [rsi]
	cmp	eax, 0x1000
	mov	rsp, rsp
	je	.label_157
	cmp	eax, 0x2000
	mov	rsp, rsp
	je	.label_161
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_159
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_3
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	jmp	dcgettext
.label_155:
	mov	rsp, rsp
	cmp	eax, 0xa000
	je	.label_156
	lea	rsi, [rsi]
	cmp	eax, 0xc000
	jne	.label_159
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	jmp	dcgettext
.label_158:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	jmp	dcgettext
.label_157:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	jmp	dcgettext
.label_161:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	lea	rsi, [rsi]
	mov	edx, 5
	jmp	dcgettext
.label_156:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_2
	nop	
	mov	edx, 5
	jmp	dcgettext
.label_159:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	jmp	dcgettext
.label_162:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_8
	mov	edx, 5
	mov	rbp, rbp
	jmp	dcgettext
	nop	
	.section	.text
	.align	16
	#Procedure 0x404150

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_163
	lea	rsi, [rsi]
	pop	rcx
	ret	
.label_163:
	mov	rsp, rsp
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x404170

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	sub	rsp, 0x18
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdx
	mov	r14, rsi
	mov	r13, rdi
	call	last_component
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, rbx
	call	base_len
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	sub	rbx, r13
	add	rbx, rbp
	lea	rsi, [rsi]
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	test	rbp, rbp
	je	.label_165
	movzx	ecx, byte ptr [rbx + r13 - 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_170
	mov	qword ptr [rsp + 8], r14
	lea	rdi, [rdi]
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_169
.label_165:
	movzx	ecx, byte ptr [r14]
	mov	r12b, 0x2e
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	je	.label_166
	jmp	.label_167
.label_170:
	nop	
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_171
.label_167:
	xor	r12d, r12d
	jmp	.label_166
.label_171:
	mov	r12b, 0x2f
.label_166:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r14
.label_169:
	test	r12b, r12b
	nop	
	setne	cl
	movzx	ebp, cl
	nop	
	lea	rcx, [r15 + rbx]
	lea	rdi, [rbp + rcx + 1]
	lea	rdi, [rdi]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_168
	mov	rcx, -1
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	lea	rsi, [rsi]
	add	rbp, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_164
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
.label_164:
	nop	
	mov	rcx, -1
	mov	rdi, rbp
	nop	
	mov	rsi, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdx, r15
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	nop	
	mov	rax, r14
.label_168:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4042c0

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
	je	.label_172
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
	jl	.label_174
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_174
	mov	esi, OFFSET FLAT:.str.2_4
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_173
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_173:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_174:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_172:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_9
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
	#Procedure 0x4043b0
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
	#Procedure 0x404400
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
	#Procedure 0x404420
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
	#Procedure 0x404440

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
	#Procedure 0x4044b0
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
	#Procedure 0x4044d0

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
	je	.label_175
	test	rdx, rdx
	nop	
	je	.label_175
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_175:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404510
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
	.align	16
	#Procedure 0x4045b0

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
.label_266:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_272
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_264]]
.label_918:
	lea	rsi, [rsi]
	mov	r12d, r11d
	nop	
	mov	edi, OFFSET FLAT:.str.11_2
	mov	esi, r13d
	nop	
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, rbp
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.12_1
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
.label_919:
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
	jne	.label_256
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_256
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_287:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_268
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_268:
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
	jne	.label_287
.label_256:
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
	jmp	.label_190
.label_911:
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
	jmp	.label_190
.label_914:
	mov	rsp, rsp
	mov	al, 1
.label_912:
	mov	r15b, 1
.label_915:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_204
	mov	cl, al
.label_204:
	lea	rdi, [rdi]
	mov	al, cl
.label_913:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_205
	test	r10, r10
	je	.label_212
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_215
.label_205:
	xor	ecx, ecx
	jmp	.label_215
.label_916:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_224
	test	r10, r10
	je	.label_229
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_233
.label_917:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_2
	nop	
	mov	qword ptr [rsp + 0xa8], rax
	nop	
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	rbp, rbp
	mov	dil, 1
	jmp	.label_190
.label_212:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_215:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	mov	rbp, rbp
	jmp	.label_190
.label_224:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_233
.label_229:
	mov	rbp, rbp
	mov	eax, 1
.label_233:
	nop	
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_2
	mov	qword ptr [rsp + 0xa8], rax
	mov	rsp, rsp
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	lea	rsi, [rsi]
	mov	sil, 1
	mov	dil, r15b
	nop	word ptr cs:[rax + rax]
.label_190:
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
	jmp	.label_244
	nop	word ptr [rax + rax]
.label_196:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_244:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_219
	cmp	rsi, rbp
	jne	.label_297
	jmp	.label_222
	nop	word ptr cs:[rax + rax]
.label_219:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_222
.label_297:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_230
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_238
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_238
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
.label_238:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_267
.label_230:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_183:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_273
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_281]]
.label_846:
	test	rsi, rsi
	jne	.label_186
	jmp	.label_217
	nop	word ptr [rax + rax]
.label_267:
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
	jne	.label_177
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
	je	.label_183
	mov	rsp, rsp
	jmp	.label_187
.label_177:
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
	jmp	.label_183
.label_850:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_207
	test	rsi, rsi
	nop	
	jne	.label_278
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_217
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_182
.label_839:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_223
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_187
	cmp	edi, 2
	nop	
	jne	.label_232
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_236
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_241
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_241:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_253
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_253:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_258
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_258:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_226
.label_840:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_234
.label_841:
	mov	cl, 0x74
	jmp	.label_179
.label_842:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_234
.label_843:
	mov	bl, 0x66
	jmp	.label_234
.label_844:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_179
.label_847:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_292
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_208
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
	jae	.label_247
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_247:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_189
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_189:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_197
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_197:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_206
.label_848:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_213
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_221
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_208
.label_221:
	mov	rdi, r14
	jmp	.label_186
.label_849:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_228
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_208
	mov	rdi, r14
	jmp	.label_240
.label_273:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_243
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
.label_180:
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
	ja	.label_263
	test	dl, dl
	mov	rsp, rsp
	je	.label_263
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_182
.label_207:
	test	rsi, rsi
	jne	.label_285
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_285
.label_217:
	mov	rbp, rbp
	mov	dl, 1
.label_845:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_187
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_182
.label_223:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_186
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_244
.label_292:
	mov	rdi, r14
.label_206:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_182
.label_228:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_179
.label_240:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_185
.label_179:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_187
.label_234:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_182
	lea	rsi, [rsi]
	jmp	.label_200
.label_243:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_202
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
.label_202:
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
.label_293:
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
	je	.label_246
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
	je	.label_250
	cmp	rbp, -2
	nop	
	je	.label_261
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_291
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_290:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_282
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_276
.label_282:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_290
.label_291:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_203
	xor	r15d, r15d
.label_203:
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
	je	.label_293
	jmp	.label_180
.label_285:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_182
.label_213:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_186
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_186
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_186
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_198
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_214
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_187
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_220
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_220:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_265
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_265:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_275
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_275:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_199
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_199:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_182
.label_186:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_182:
	test	r12b, r12b
	je	.label_191
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_270
	jmp	.label_271
	nop	word ptr cs:[rax + rax]
.label_191:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_271
.label_270:
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
	jne	.label_280
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_185
	jmp	.label_200
	nop	word ptr cs:[rax + rax]
.label_271:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_200
	jmp	.label_185
.label_280:
	mov	bl, r13b
	mov	rsi, r14
.label_200:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_187
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_178
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_178
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_237
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_237:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_192
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_192:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_259
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_259:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_178:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_216
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_216:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_184
.label_278:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_182
.label_263:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_235
	nop	word ptr cs:[rax + rax]
.label_181:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_235:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_249
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_252
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_257
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_257:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_252
	nop	dword ptr [rax]
.label_249:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_208
	cmp	r14d, 2
	jne	.label_193
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_193
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_286
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_286:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_225
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_225:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_296
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_296:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_193:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_245
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_245:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_277
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
.label_277:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_209
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
.label_209:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_252:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_185
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_242
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_262
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_248
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_248:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_251
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_251:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_262
	nop	word ptr cs:[rax + rax]
.label_242:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_262:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_181
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_181
	nop	word ptr cs:[rax + rax]
.label_185:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_289
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_289
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_239
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_239:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_295
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_295:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_184
	nop	word ptr cs:[rax + rax]
.label_289:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_184:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_196
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_196
.label_232:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_226
.label_236:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_226:
	cmp	rcx, r10
	jae	.label_210
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_210:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_218
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_279
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_231
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_283
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_283:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_255
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_255:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_182
.label_218:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_182
.label_279:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_182
.label_231:
	xor	r15d, r15d
	jmp	.label_182
.label_246:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_188
.label_250:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_284
.label_261:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_288
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_294:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_176
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_294
	xor	r15d, r15d
	nop	
	jmp	.label_188
.label_288:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_284:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_188:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_180
.label_176:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_188
.label_198:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_182
.label_214:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_182
	nop	word ptr cs:[rax + rax]
.label_222:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_201
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_208
.label_201:
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
	je	.label_194
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_194
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_227
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_194
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
	je	.label_266
.label_194:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_254
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_254
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_254
	inc	rdx
	nop	dword ptr [rax + rax]
.label_269:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_260
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_260:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_269
.label_254:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_274
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_274
.label_187:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_195:
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
.label_211:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_274:
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
.label_276:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_195
.label_208:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_195
.label_227:
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
	jmp	.label_211
.label_272:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d00
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
	.align	16
	#Procedure 0x405d20

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
	je	.label_298
	mov	qword ptr [rax], rbx
.label_298:
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
	#Procedure 0x405e70
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_299
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_303:
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
	jl	.label_303
.label_299:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_302
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_300]], OFFSET FLAT:slot0
.label_302:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_301
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_301:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f30

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405f40

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
	js	.label_307
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_309
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_306
.label_309:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_310
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
	jne	.label_305
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_305:
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
.label_306:
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
	ja	.label_304
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
	je	.label_308
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_308:
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
.label_304:
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
.label_307:
	lea	rdi, [rdi]
	call	abort
.label_310:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4061b0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4061c0
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
	.align	16
	#Procedure 0x4061e0
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
	.align	16
	#Procedure 0x406200

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
	.align	16
	#Procedure 0x406260

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
	je	.label_311
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
.label_311:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4062d0

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
	.align	16
	#Procedure 0x406330

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
	.align	16
	#Procedure 0x406350
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
	.align	16
	#Procedure 0x406370

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
	mov	rcx,  qword ptr [word ptr [rip + label_312]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_313]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_314]]
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
	.align	16
	#Procedure 0x406410

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
	.align	16
	#Procedure 0x406430

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	mov	esi, 0x3a
	mov	rbp, rbp
	jmp	quotearg_char
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406440
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406450

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
	.align	16
	#Procedure 0x4064c0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	mov	r8, -1
	nop	
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4064d0

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
	mov	rax,  qword ptr [word ptr [rip + label_312]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_313]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_314]]
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
	.align	16
	#Procedure 0x406560
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
	.align	16
	#Procedure 0x406590
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
	.align	16
	#Procedure 0x4065c0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065d0
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
	.align	16
	#Procedure 0x4065f0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406600

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
	.align	16
	#Procedure 0x406610

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
	jne	.label_315
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
	je	.label_316
	mov	eax, OFFSET FLAT:.str.14_1
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_315
	nop	
	mov	eax, OFFSET FLAT:.str.15_2
	jmp	.label_315
.label_316:
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
	je	.label_317
	nop	
	mov	eax, OFFSET FLAT:.str.17_2
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_315
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_315
.label_317:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_2
	mov	eax, OFFSET FLAT:.str.12_1
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_315:
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
	.align	16
	#Procedure 0x406740

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
	je	.label_319
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_318
	jmp	.label_320
.label_319:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_320
.label_318:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_320
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
.label_320:
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
	.align	16
	#Procedure 0x406800

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
	je	.label_323
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_322
	lea	rsi, [rsi]
	jmp	.label_321
.label_323:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_321
.label_322:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_321
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
.label_321:
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
	.align	16
	#Procedure 0x4068f0

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
	je	.label_326
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_325
	jmp	.label_324
.label_326:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_324
.label_325:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_324
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
.label_324:
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
	.align	16
	#Procedure 0x4069c0

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
	je	.label_329
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_328
	jmp	.label_327
.label_329:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_327
.label_328:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_327
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
.label_327:
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
	.align	16
	#Procedure 0x406a60

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
	je	.label_332
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_331
	nop	
	jmp	.label_330
.label_332:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_330
.label_331:
	mov	eax, 1
	test	bpl, bpl
	je	.label_330
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
.label_330:
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
	.align	16
	#Procedure 0x406b00

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
	je	.label_335
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_334
	lea	rsi, [rsi]
	jmp	.label_333
.label_335:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_333
.label_334:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_333
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
.label_333:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b90

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
	je	.label_338
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_337
	jmp	.label_336
.label_338:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_336
.label_337:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_336
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_336:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406c00

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
	je	.label_339
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_341
	mov	rbp, rbp
	jmp	.label_340
.label_339:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_340
.label_341:
	xor	eax, eax
.label_340:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c50

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsi]
	lea	rsi, [rsp]
	mov	edi, OFFSET FLAT:.str_1
	mov	rsp, rsp
	call	__lstat
	lea	rdi, [rdi]
	mov	ecx, eax
	xor	eax, eax
	lea	rdi, [rdi]
	test	ecx, ecx
	jne	.label_342
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rbx + 8], rax
	lea	rsi, [rsi]
	mov	rax, rbx
.label_342:
	mov	rsp, rsp
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x406cb0
	.globl statat
	.type statat, @function
statat:

	lea	rsi, [rsi]
	xor	ecx, ecx
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406cc0

	.globl lstatat
	.type lstatat, @function
lstatat:
	mov	ecx, 0x100
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406cd0

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
	je	.label_348
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_10
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_347
.label_348:
	mov	edx, OFFSET FLAT:.str.1_5
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_347:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_5
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
	mov	esi, OFFSET FLAT:.str.3_3
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
	ja	.label_350
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_351]]
.label_879:
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
.label_350:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_344
.label_880:
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
.label_881:
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
.label_882:
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
	jmp	.label_346
.label_883:
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
	jmp	.label_343
.label_884:
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
	jmp	.label_352
.label_885:
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
.label_352:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_343:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_346:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_349
.label_887:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_344:
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
	jmp	.label_345
.label_886:
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
.label_345:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_349:
	mov	rbp, rbp
	call	__fprintf_chk
.label_878:
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
	#Procedure 0x4070c0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_353:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_353
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070f0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_356:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_354
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_357
	nop	word ptr cs:[rax + rax]
.label_354:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_357:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_355
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_356
.label_355:
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
	#Procedure 0x407180

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_358
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
.label_358:
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
	.align	16
	#Procedure 0x407230
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
	mov	esi, OFFSET FLAT:.str.16_1
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
	#Procedure 0x4072c0

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.initialized]]
	and	al, 1
	jne	.label_359
	lea	rdi, [rdi]
	push	rax
	mov	rbp, rbp
	call	geteuid
	lea	rsi, [rsi]
	test	eax, eax
	sete	byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + can_write_any_file.initialized]],  1
	add	rsp, 8
.label_359:
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407300
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
	jb	.label_360
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_360:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407340

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_361
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_362
.label_361:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_362:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407370
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
	jb	.label_363
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_363:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4073b0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_364
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_364
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_364:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_365
	test	rax, rax
	nop	
	je	.label_366
.label_365:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_366:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407400

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_367
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_368
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_369
.label_367:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_370
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_370:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_371
.label_369:
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
.label_368:
	call	xalloc_die
.label_371:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4074a0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4074b0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4074c0
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
	.align	16
	#Procedure 0x407500
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
	jb	.label_372
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_372
	pop	rcx
	ret	
.label_372:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x407530

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
	.align	16
	#Procedure 0x407580
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
	.align	16
	#Procedure 0x4075a0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_6
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4075f0

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_374
	mov	rsp, rsp
	pop	rcx
	ret	
.label_374:
	nop	
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x16
	lea	rdi, [rdi]
	jne	.label_373
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_11
	nop	
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	lea	rsi, [rsi]
	call	__assert_fail
.label_373:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407650
	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:

	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	mov	rbp, rbp
	je	.label_375
	cmp	ecx, 0x11
	lea	rdi, [rdi]
	jne	.label_376
	mov	rsp, rsp
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_375:
	lea	rsi, [rsi]
	ret	
.label_376:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407680

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp]
	call	getline
	test	rax, rax
	jle	.label_377
	mov	rcx, qword ptr [rsp + 8]
	movzx	edx, byte ptr [rax + rcx - 1]
	lea	rdi, [rdi]
	cmp	edx, 0xa
	jne	.label_378
	mov	rsp, rsp
	mov	byte ptr [rcx + rax - 1], 0
.label_378:
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	call	rpmatch
	test	eax, eax
	mov	rbp, rbp
	setg	bl
	jmp	.label_379
.label_377:
	mov	rsp, rsp
	xor	ebx, ebx
.label_379:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	al, bl
	add	rsp, 0x10
	nop	
	pop	rbx
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x407700

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_380
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_381
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
	je	.label_381
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
.label_380:
	mov	ecx, 1
.label_381:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407770

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_382
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_382
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_382:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	16
	#Procedure 0x4077a0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_383
	mov	rbp, rbp
	ret	
.label_383:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	16
	#Procedure 0x4077c0

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	nop	
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	nop	
	ja	.label_384
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	nop	
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	je	.label_385
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_385:
	lea	rdi, [rdi]
	add	rax, rcx
.label_384:
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407800

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
	jne	.label_386
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_386
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_387
.label_386:
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
.label_387:
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
	je	.label_388
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_388:
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
	#Procedure 0x4078b0

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	nop	
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x38
	mov	rbp, rdx
	mov	r14d, esi
	mov	r15, rdi
	cmp	r14d, 0x1000
	jae	.label_395
	mov	rbp, rbp
	mov	eax, r14d
	lea	rdi, [rdi]
	and	eax, 0x204
	nop	
	cmp	eax, 0x204
	je	.label_395
	mov	rsp, rsp
	test	r14b, 0x12
	nop	
	je	.label_395
	mov	rsp, rsp
	mov	edi, 0x80
	mov	rsp, rsp
	call	malloc
	mov	r13, rax
	xor	eax, eax
	nop	
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_394
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x70], xmm0
	movups	xmmword ptr [r13 + 0x60], xmm0
	movups	xmmword ptr [r13 + 0x50], xmm0
	movups	xmmword ptr [r13 + 0x40], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r13 + 0x30], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r13 + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r13 + 0x10], xmm0
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x40], rbp
	mov	eax, r14d
	and	eax, 0xfffffdfb
	mov	rsp, rsp
	or	eax, 4
	lea	rdi, [rdi]
	test	r14b, 2
	lea	rdi, [rdi]
	cmove	eax, r14d
	lea	rdi, [rdi]
	mov	dword ptr [r13 + 0x48], eax
	mov	rbp, rbp
	mov	dword ptr [r13 + 0x2c], 0xffffff9c
	mov	rdi, r15
	call	fts_maxarglen
	lea	rdi, [rdi]
	cmp	rax, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rax
	mov	rbp, rbp
	mov	rdi, r13
	call	fts_palloc
	nop	
	test	al, al
	je	.label_402
	mov	rsp, rsp
	xor	r12d, r12d
	mov	rsp, rsp
	cmp	qword ptr [r15], 0
	je	.label_399
	mov	esi, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rdi, r13
	mov	rsp, rsp
	call	fts_alloc
	mov	r12, rax
	lea	rsi, [rsi]
	test	r12, r12
	je	.label_403
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x58], -1
	nop	
	mov	qword ptr [r12 + 0x68], -1
.label_399:
	mov	byte ptr [rsp + 0x27], 1
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_392
	mov	al, byte ptr [r13 + 0x49]
	lea	rsi, [rsi]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0x27], al
.label_392:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r13
	mov	r13, qword ptr [r15]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rax
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_406
	mov	qword ptr [rsp + 0x18], r12
	mov	qword ptr [rsp + 0x10], rbp
	and	r14d, 0x800
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r12d, r12d
	nop	
.label_400:
	nop	
	mov	rdi, r13
	call	strlen
	mov	rbp, rbp
	test	r14d, r14d
	lea	rdi, [rdi]
	jne	.label_390
	mov	rsp, rsp
	cmp	rax, 3
	jb	.label_390
	mov	rbp, rbp
	cmp	rax, 2
	jb	.label_390
	movzx	ecx, byte ptr [rax + r13 - 1]
	mov	rbp, rbp
	cmp	ecx, 0x2f
	jne	.label_390
	nop	word ptr cs:[rax + rax]
.label_398:
	mov	rsp, rsp
	movzx	ecx, byte ptr [r13 + rax - 2]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_390
	lea	rsi, [rsi]
	dec	rax
	cmp	rax, 1
	lea	rdi, [rdi]
	ja	.label_398
.label_390:
	mov	rsp, rsp
	mov	rsi, qword ptr [r15]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rdx, rax
	call	fts_alloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_405
	mov	qword ptr [rbp + 0x58], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbp + 8], rax
	mov	rax, rbp
	add	rax, 0x108
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x30], rax
	mov	rbx, qword ptr [rsp + 0x30]
	test	rbx, rbx
	setne	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x27]
	movzx	eax, al
	cmp	eax, 1
	nop	
	jne	.label_407
	lea	rdi, [rdi]
	mov	word ptr [rbp + 0x70], 0xb
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rdi, rbp
	mov	rsp, rsp
	call	fts_set_stat_required
	lea	rsi, [rsi]
	jmp	.label_401
.label_407:
	xor	edx, edx
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	fts_stat
	lea	rsi, [rsi]
	mov	word ptr [rbp + 0x70], ax
.label_401:
	cmp	qword ptr [rsp + 0x10], 0
	mov	rbp, rbp
	je	.label_397
	mov	qword ptr [rbp + 0x10], rbx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rbp
	jmp	.label_389
.label_397:
	mov	rbp, rbp
	mov	qword ptr [rbp + 0x10], 0
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_393
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], rbp
	nop	
	mov	qword ptr [rsp + 8], rbp
	jmp	.label_389
.label_393:
	mov	rbp, rbp
	mov	rax, rbp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x30], rbp
	nop	word ptr cs:[rax + rax]
.label_389:
	lea	rsi, [rsi]
	inc	r12
	mov	r13, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	add	r15, 8
	test	r13, r13
	nop	
	jne	.label_400
	cmp	qword ptr [rsp + 0x10], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	je	.label_404
	cmp	r12, 2
	mov	rbp, rbp
	jb	.label_404
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, r12
	mov	rsp, rsp
	call	fts_sort
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
.label_404:
	mov	r12, qword ptr [rsp + 0x18]
.label_406:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_0
	xor	edx, edx
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	call	fts_alloc
	mov	rsp, rsp
	mov	qword ptr [r13], rax
	test	rax, rax
	nop	
	je	.label_396
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], rbx
	mov	rax, qword ptr [r13]
	mov	word ptr [rax + 0x70], 9
	mov	rax, qword ptr [r13]
	mov	qword ptr [rax + 0x58], 1
	mov	rdi, r13
	mov	rsp, rsp
	call	setup_dir
	test	al, al
	nop	
	je	.label_408
	movzx	eax, word ptr [r13 + 0x48]
	mov	rbp, rbp
	test	ax, 0x204
	mov	rsp, rsp
	jne	.label_391
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_3
	nop	
	mov	rdi, r13
	call	diropen
	mov	dword ptr [r13 + 0x28], eax
	mov	rbp, rbp
	test	eax, eax
	nop	
	jns	.label_391
	or	byte ptr [r13 + 0x48], 4
.label_391:
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsp, rsp
	add	rdi, 0x60
	lea	rdi, [rdi]
	mov	esi, 0xffffffff
	call	i_ring_init
	nop	
	mov	rax, r13
	nop	
	jmp	.label_394
.label_395:
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x16
	xor	eax, eax
.label_394:
	mov	rbp, rbp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_405:
	mov	r12, qword ptr [rsp + 0x18]
.label_396:
	mov	rbx, qword ptr [rsp + 0x30]
.label_408:
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rbp, rbp
	call	fts_lfree
	mov	rdi, r12
	lea	rsi, [rsi]
	call	free
.label_403:
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
.label_402:
	nop	
	mov	rdi, r13
	nop	
	call	free
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_394
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407d40

	.globl fts_maxarglen
	.type fts_maxarglen, @function
fts_maxarglen:
	mov	rsp, rsp
	push	r14
	push	rbx
	nop	
	push	rax
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	mov	r14d, 1
	test	rdi, rdi
	je	.label_409
	mov	rsp, rsp
	add	rbx, 8
	mov	rbp, rbp
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_410:
	lea	rdi, [rdi]
	call	strlen
	cmp	rax, r14
	lea	rsi, [rsi]
	cmova	r14, rax
	nop	
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_410
	inc	r14
.label_409:
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407db0

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbx
	mov	rbx, rdi
	nop	
	add	rsi, 0x100
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbx + 0x30]
	jae	.label_411
	mov	rdi, qword ptr [rbx + 0x20]
	lea	rdi, [rdi]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x24
	nop	
	xor	eax, eax
	nop	
	pop	rbx
	ret	
.label_411:
	mov	qword ptr [rbx + 0x30], rsi
	nop	
	mov	rdi, qword ptr [rbx + 0x20]
	call	realloc
	test	rax, rax
	je	.label_412
	mov	qword ptr [rbx + 0x20], rax
	mov	al, 1
	mov	rbp, rbp
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_412:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	xor	eax, eax
	pop	rbx
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e30

	.globl fts_alloc
	.type fts_alloc, @function
fts_alloc:
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	lea	rsi, [rsi]
	mov	r15, rdx
	nop	
	mov	r12, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	lea	rdi, [r15 + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	lea	rsi, [rsi]
	mov	rbx, rax
	xor	eax, eax
	nop	
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_413
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rdi, 0x108
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	memcpy
	mov	byte ptr [rbx + r15 + 0x108], 0
	mov	qword ptr [rbx + 0x60], r15
	mov	qword ptr [rbx + 0x50], r14
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	nop	
	mov	qword ptr [rbx + 0x18], 0
	nop	
	mov	word ptr [rbx + 0x72], 0
	lea	rsi, [rsi]
	mov	word ptr [rbx + 0x74], 3
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rbx + 0x20], xmm0
	lea	rsi, [rsi]
	mov	rax, rbx
.label_413:
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f00

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	lea	rdi, [rdi]
	movzx	eax, word ptr [rdi + 0x70]
	nop	
	cmp	eax, 0xb
	jne	.label_414
	movzx	eax, sil
	inc	rax
	nop	
	mov	qword ptr [rdi + 0xa8], rax
	ret	
.label_414:
	push	rax
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f30

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	nop	
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [r15 + 0x58], 0
	lea	rsi, [rsi]
	jne	.label_416
	test	byte ptr [r14 + 0x48], 1
	je	.label_416
	nop	
	mov	dl, 1
.label_416:
	lea	rsi, [rsi]
	lea	rbx, [r15 + 0x78]
	mov	rbp, rbp
	test	dl, dl
	lea	rdi, [rdi]
	jne	.label_419
	lea	rdi, [rdi]
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 2
	jne	.label_419
	mov	rbp, rbp
	mov	edi, dword ptr [r14 + 0x2c]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x30]
	nop	
	mov	ecx, 0x100
	mov	rdx, rbx
	mov	rsp, rsp
	call	fstatat
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_417
	call	__errno_location
	mov	rbp, rbp
	mov	eax, dword ptr [rax]
	lea	rdi, [rdi]
	jmp	.label_422
.label_419:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	call	stat
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_417
	lea	rdi, [rdi]
	call	__errno_location
	mov	r14, rax
	lea	rdi, [rdi]
	cmp	dword ptr [r14], 2
	jne	.label_418
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	__lstat
	test	eax, eax
	nop	
	je	.label_424
.label_418:
	mov	rsp, rsp
	mov	eax, dword ptr [r14]
.label_422:
	mov	rsp, rsp
	mov	dword ptr [r15 + 0x40], eax
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0x80], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0x50], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	ax, 0xa
.label_415:
	movzx	eax, ax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	ret	
.label_417:
	nop	
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	mov	ax, 0xc
	cmp	ecx, 0xa000
	mov	rbp, rbp
	je	.label_415
	cmp	ecx, 0x8000
	lea	rsi, [rsi]
	je	.label_425
	cmp	ecx, 0x4000
	jne	.label_421
	mov	rax, qword ptr [r15 + 0x88]
	nop	
	mov	rcx, -1
	cmp	rax, 2
	mov	rbp, rbp
	jb	.label_423
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_423
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r14 + 0x48]
	mov	rsp, rsp
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_423:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ax, 1
	movzx	ecx, byte ptr [r15 + 0x108]
	lea	rdi, [rdi]
	cmp	ecx, 0x2e
	mov	rsp, rsp
	jne	.label_415
	mov	cl, byte ptr [r15 + 0x109]
	test	cl, cl
	mov	rsp, rsp
	je	.label_420
	movzx	ecx, cl
	mov	rsp, rsp
	cmp	ecx, 0x2e
	jne	.label_415
	cmp	byte ptr [r15 + 0x10a], 0
	jne	.label_415
.label_420:
	mov	ax, 1
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x58], 0
	lea	rsi, [rsi]
	je	.label_415
	mov	ax, 5
	lea	rsi, [rsi]
	jmp	.label_415
.label_425:
	lea	rdi, [rdi]
	mov	ax, 8
	nop	
	jmp	.label_415
.label_421:
	mov	ax, 3
	mov	rsp, rsp
	jmp	.label_415
.label_424:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_415
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408150

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	r12, qword ptr [r15 + 0x40]
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 0x38], r14
	jae	.label_430
	lea	rsi, [r14 + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x38], rsi
	mov	rbp, rbp
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_428
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rsi, 3
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_428
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], rax
.label_430:
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_432
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x10]
	nop	word ptr [rax + rax]
.label_426:
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbx
	lea	rsi, [rsi]
	add	rax, 8
	mov	rbx, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_426
.label_432:
	mov	rdi, qword ptr [r15 + 0x10]
	mov	edx, 8
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rcx, r12
	mov	rbp, rbp
	call	qsort
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbx, qword ptr [rax]
	nop	
	cmp	r14, 1
	nop	
	je	.label_427
	nop	
	mov	ecx, 1
	sub	rcx, r14
	dec	r14
	mov	rsp, rsp
	lea	rdx, [rax + 8]
	nop	dword ptr [rax + rax]
.label_431:
	mov	rsi, qword ptr [rdx - 8]
	mov	rdi, qword ptr [rdx]
	nop	
	mov	qword ptr [rsi + 0x10], rdi
	add	rdx, 8
	mov	rsp, rsp
	inc	rcx
	jne	.label_431
	mov	rsp, rsp
	lea	rax, [rax + r14*8]
.label_427:
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	jmp	.label_429
.label_428:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x38], 0
.label_429:
	mov	rax, rbx
	add	rsp, 8
	nop	
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r14
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4082a0

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	mov	rsp, rsp
	push	r14
	push	rbx
	mov	rbp, rbp
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	mov	rbp, rbp
	je	.label_433
	nop	
	xor	r14d, r14d
	mov	rsp, rsp
	mov	edi, 0x1f
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_435
	jmp	.label_434
.label_433:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	nop	
	test	rax, rax
	mov	rsp, rsp
	je	.label_436
	mov	rdi, rax
	call	cycle_check_init
.label_435:
	mov	r14b, 1
	jmp	.label_434
.label_436:
	mov	rbp, rbp
	xor	r14d, r14d
.label_434:
	mov	al, r14b
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r14
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408340

	.globl diropen
	.type diropen, @function
diropen:
	nop	
	mov	eax, dword ptr [rdi + 0x48]
	mov	edx, eax
	nop	
	and	edx, 0x10
	lea	rdi, [rdi]
	shl	edx, 0xd
	mov	rsp, rsp
	or	edx, 0x90900
	test	ah, 2
	nop	
	jne	.label_437
	xor	eax, eax
	mov	rdi, rsi
	nop	
	mov	esi, edx
	mov	rbp, rbp
	jmp	open_safer
.label_437:
	mov	edi, dword ptr [rdi + 0x2c]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	openat_safer
	nop	
	.section	.text
	.align	16
	#Procedure 0x408380

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	nop	
	je	.label_438
.label_440:
	mov	r14, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_439
	call	closedir
.label_439:
	nop	
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	test	r14, r14
	mov	rbx, r14
	jne	.label_440
.label_438:
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083d0

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	nop	
	push	rax
	nop	
	mov	r14, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	mov	rsp, rsp
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_445
	lea	rsi, [rsi]
	cmp	qword ptr [rdi + 0x58], 0
	lea	rsi, [rsi]
	js	.label_451
	nop	word ptr [rax + rax]
.label_447:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rdi + 0x10]
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_441
	mov	rbx, qword ptr [rdi + 8]
.label_441:
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x58], 0
	lea	rsi, [rsi]
	mov	rdi, rbx
	jns	.label_447
	mov	rsp, rsp
	jmp	.label_450
.label_451:
	mov	rbx, rdi
.label_450:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	free
.label_445:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_442
	call	fts_lfree
.label_442:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	lea	rsi, [rsi]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_449
	lea	rdi, [rdi]
	xor	ebx, ebx
	test	al, 4
	jne	.label_448
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebx, ebx
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_443
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_443:
	mov	rbp, rbp
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	nop	
	test	ebx, ebx
	je	.label_444
	jmp	.label_448
.label_449:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebx, ebx
	test	edi, edi
	js	.label_448
	call	close
.label_444:
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_448
	nop	
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
.label_448:
	mov	rsp, rsp
	lea	rdi, [r14 + 0x60]
	lea	rsi, [rsi]
	call	fd_ring_clear
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	nop	
	je	.label_446
	nop	
	call	hash_free
.label_446:
	nop	
	mov	rdi, r14
	call	free_dir
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	xor	eax, eax
	test	ebx, ebx
	mov	rsp, rsp
	je	.label_452
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], ebx
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
.label_452:
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408530

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	jmp	.label_453
	nop	dword ptr [rax]
.label_455:
	mov	edi, eax
	mov	rsp, rsp
	call	close
.label_453:
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	i_ring_empty
	lea	rdi, [rdi]
	test	al, al
	nop	
	jne	.label_454
	nop	
	mov	rdi, rbx
	call	i_ring_pop
	nop	
	test	eax, eax
	jns	.label_455
	jmp	.label_453
.label_454:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408570

	.globl free_dir
	.type free_dir, @function
free_dir:
	mov	rbp, rbp
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	lea	rsi, [rsi]
	je	.label_456
	mov	rdi, qword ptr [rdi + 0x58]
	test	rdi, rdi
	nop	
	je	.label_457
	lea	rdi, [rdi]
	jmp	hash_free
.label_456:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi + 0x58]
	nop	
	jmp	free
.label_457:
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4085b0

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	nop	
	mov	r14, rdi
	mov	rsp, rsp
	mov	rbx, qword ptr [r14]
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	rbp, rbp
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_466
	nop	
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_466
	movzx	eax, word ptr [rbx + 0x74]
	mov	rsp, rsp
	mov	word ptr [rbx + 0x74], 3
	cmp	eax, 2
	mov	rbp, rbp
	je	.label_496
	mov	rsp, rsp
	movzx	ecx, ax
	lea	rdi, [rdi]
	cmp	ecx, 1
	nop	
	jne	.label_471
	mov	rsp, rsp
	xor	edx, edx
	nop	
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	rsp, rsp
	mov	word ptr [rbx + 0x70], ax
	lea	rdi, [rdi]
	mov	r15, rbx
	mov	rsp, rsp
	jmp	.label_466
.label_496:
	movzx	ecx, word ptr [rbx + 0x70]
	mov	rbp, rbp
	and	ecx, 0xfffe
	cmp	ecx, 0xc
	jne	.label_471
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_477
	mov	rbp, rbp
	test	byte ptr [r14 + 0x48], 4
	lea	rdi, [rdi]
	jne	.label_484
	mov	esi, OFFSET FLAT:.str_3
	nop	
	mov	rdi, r14
	call	diropen
	lea	rdi, [rdi]
	mov	dword ptr [rbx + 0x44], eax
	mov	rsp, rsp
	test	eax, eax
	js	.label_485
	nop	
	or	byte ptr [rbx + 0x72], 2
	nop	
	mov	r15, rbx
	lea	rsi, [rsi]
	jmp	.label_464
.label_471:
	movzx	ecx, word ptr [rbx + 0x70]
	nop	
	cmp	ecx, 1
	jne	.label_488
	movzx	eax, ax
	lea	rsi, [rsi]
	cmp	eax, 4
	je	.label_490
	mov	rbp, rbp
	test	byte ptr [r14 + 0x48], 0x40
	je	.label_493
	mov	rax, qword ptr [rbx + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_490
.label_493:
	cmp	qword ptr [r14 + 8], 0
	mov	rbp, rbp
	je	.label_495
	mov	eax, dword ptr [r14 + 0x48]
	mov	rsp, rsp
	test	ah, 0x10
	jne	.label_498
	cmp	qword ptr [r14 + 8], 0
	je	.label_495
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x30]
	mov	edx, 0xffffffff
	lea	rsi, [rsi]
	mov	rdi, r14
	nop	
	mov	rsi, rbx
	call	fts_safe_changedir
	test	eax, eax
	mov	rbp, rbp
	je	.label_472
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	nop	
	or	byte ptr [rbx + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	jmp	.label_470
	nop	dword ptr [rax]
.label_488:
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	jne	.label_476
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_479
	lea	rdi, [rdi]
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	mov	rsp, rsp
	je	.label_494
.label_476:
	lea	rdi, [rdi]
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	mov	rsp, rsp
	je	.label_486
	mov	rbp, rbp
	movzx	eax, word ptr [r15 + 0x74]
	lea	rdi, [rdi]
	cmp	eax, 4
	nop	
	mov	rbx, r15
	je	.label_488
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_461
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	nop	
	jne	.label_482
	lea	rsi, [rsi]
	test	byte ptr [r14 + 0x48], 4
	jne	.label_482
	nop	
	mov	esi, OFFSET FLAT:.str_3
	lea	rdi, [rdi]
	mov	rdi, r14
	call	diropen
	nop	
	mov	dword ptr [r15 + 0x44], eax
	mov	rbp, rbp
	test	eax, eax
	js	.label_459
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_482
.label_468:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_470:
	lea	rdi, [rdi]
	test	rax, rax
	jne	.label_468
	lea	rdi, [rdi]
	jmp	.label_472
.label_490:
	lea	rsi, [rsi]
	test	byte ptr [rbx + 0x72], 2
	lea	rsi, [rsi]
	je	.label_474
	mov	edi, dword ptr [rbx + 0x44]
	mov	rbp, rbp
	call	close
.label_474:
	mov	rdi, qword ptr [r14 + 8]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_478
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_478:
	mov	word ptr [rbx + 0x70], 6
.label_473:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, rbx
	nop	
	call	leave_dir
	mov	r15, rbx
	jmp	.label_466
.label_486:
	nop	
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_489
	or	byte ptr [r14 + 0x49], 0x20
	xor	r15d, r15d
	jmp	.label_466
.label_477:
	nop	
	mov	r15, rbx
	jmp	.label_464
.label_484:
	mov	r15, rbx
	mov	rbp, rbp
	jmp	.label_464
.label_479:
	nop	
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	rsp, rsp
	mov	esi, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	fts_build
	lea	rsi, [rsi]
	mov	r15, rax
	test	r15, r15
	je	.label_497
	mov	rdi, rbx
	mov	rsp, rsp
	call	free
	jmp	.label_461
.label_489:
	mov	rdi, r14
	call	free_dir
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, r15
	call	fts_load
	nop	
	mov	rdi, r14
	call	setup_dir
	jmp	.label_464
.label_498:
	nop	
	and	eax, 0xffffefff
	mov	rbp, rbp
	mov	dword ptr [r14 + 0x48], eax
	mov	rdi, qword ptr [r14 + 8]
	lea	rdi, [rdi]
	call	fts_lfree
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], 0
.label_495:
	mov	rbp, rbp
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_481
.label_472:
	nop	
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	mov	rbp, rbp
	jmp	.label_461
.label_481:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_466
	nop	
	cmp	dword ptr [rbx + 0x40], 0
	je	.label_473
	mov	rbp, rbp
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 4
	nop	
	je	.label_473
	mov	word ptr [rbx + 0x70], 7
	jmp	.label_473
.label_485:
	call	__errno_location
	nop	
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	nop	
	mov	word ptr [rbx + 0x70], 7
	mov	r15, rbx
	jmp	.label_464
.label_497:
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_466
.label_494:
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x58], -1
	mov	rsp, rsp
	je	.label_499
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	mov	rsp, rsp
	je	.label_487
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x58], 0
	lea	rsi, [rsi]
	je	.label_463
	lea	rdi, [rdi]
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	nop	
	jne	.label_467
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_475
	nop	
	mov	rsi, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	edx, 0xffffffff
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.2_1
	lea	rdi, [rdi]
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_483
.label_499:
	mov	rsp, rsp
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_466
.label_463:
	mov	rdi, r14
	mov	rsp, rsp
	call	restore_initial_cwd
.label_483:
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_475
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	eax, dword ptr [rax]
	nop	
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_475
.label_467:
	nop	
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_458
	lea	rsi, [rsi]
	test	ah, 2
	lea	rsi, [rsi]
	mov	esi, dword ptr [r15 + 0x44]
	jne	.label_462
	mov	edi, esi
	call	fchdir
	nop	
	test	eax, eax
	je	.label_458
	call	__errno_location
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_458
.label_459:
	call	__errno_location
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	rsp, rsp
	mov	word ptr [r15 + 0x70], 7
.label_482:
	mov	word ptr [r15 + 0x74], 3
.label_461:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x48]
	movzx	edx, byte ptr [rdx + rcx - 1]
	lea	rsi, [rsi]
	cmp	edx, 0x2f
	jne	.label_469
	lea	rdi, [rdi]
	dec	rcx
.label_469:
	mov	rsp, rsp
	lea	rdi, [rax + rcx + 1]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x2f
	lea	rsi, [r15 + 0x108]
	mov	rsp, rsp
	mov	rdx, qword ptr [r15 + 0x60]
	nop	
	inc	rdx
	call	memmove
.label_464:
	mov	qword ptr [r14], r15
	lea	rdi, [rdi]
	movzx	eax, word ptr [r15 + 0x70]
	lea	rdi, [rdi]
	cmp	eax, 0xb
	jne	.label_460
	mov	rax, qword ptr [r15 + 0xa8]
	lea	rsi, [rsi]
	cmp	rax, 1
	je	.label_465
	mov	rsp, rsp
	cmp	rax, 2
	jne	.label_487
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	lea	rsi, [rsi]
	jne	.label_491
	nop	
	mov	eax, dword ptr [r14 + 0x48]
	nop	
	and	eax, 0x18
	cmp	eax, 0x18
	mov	rbp, rbp
	jne	.label_491
	mov	esi, dword ptr [r14 + 0x2c]
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	call	leaf_optimization
	mov	rsp, rsp
	cmp	eax, 2
	je	.label_465
.label_491:
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r15
	lea	rdi, [rdi]
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	mov	rbp, rbp
	cmp	ecx, 0x4000
	jne	.label_460
	cmp	qword ptr [r15 + 0x58], 0
	mov	rsp, rsp
	je	.label_465
	mov	rax, qword ptr [rbx + 0x68]
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	lea	rdi, [rdi]
	jb	.label_465
	dec	rax
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x68], rax
.label_465:
	movzx	eax, word ptr [r15 + 0x70]
.label_460:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_466
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x58], 0
	lea	rsi, [rsi]
	jne	.label_480
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_480:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_466
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_466
.label_462:
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rdi, r14
	call	cwd_advance_fd
.label_458:
	nop	
	mov	edi, dword ptr [r15 + 0x44]
	mov	rbp, rbp
	call	close
.label_475:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_492
	mov	eax, dword ptr [r15 + 0x40]
	mov	rsp, rsp
	cmp	eax, 0
	setne	cl
	nop	
	movzx	ecx, cl
	or	ecx, 6
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_492
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	call	leave_dir
.label_492:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_466:
	mov	rax, r15
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	nop	
	ret	
.label_487:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d20

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_500
	mov	rax, qword ptr [rsi + 0x78]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsi + 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rdi, [rdi]
	lea	rsi, [rsp]
	lea	rdi, [rdi]
	call	hash_delete
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_502
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	add	rsp, 0x18
	mov	rsp, rsp
	ret	
.label_500:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_501
	cmp	qword ptr [rax + 0x58], 0
	js	.label_501
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	lea	rdi, [rdi]
	je	.label_502
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx]
	nop	
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_501
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	lea	rdi, [rdi]
	jne	.label_501
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rdi + 0x58]
	mov	qword ptr [rcx], rax
.label_501:
	add	rsp, 0x18
	mov	rsp, rsp
	ret	
.label_502:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408df0

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x98
	mov	rsp, rsp
	mov	rbx, rcx
	lea	rsi, [rsi]
	mov	r13d, edx
	mov	r14, rdi
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_518
	mov	rbp, rbp
	movzx	edx, byte ptr [rbx]
	lea	rsi, [rsi]
	mov	ecx, 0x2e
	lea	rsi, [rsi]
	mov	eax, 0x2e
	sub	eax, edx
	lea	rsi, [rsi]
	jne	.label_509
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + 1]
	lea	rsi, [rsi]
	sub	ecx, eax
	lea	rsi, [rsi]
	mov	eax, ecx
	jne	.label_509
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_509:
	test	eax, eax
	lea	rsi, [rsi]
	sete	r15b
	lea	rdi, [rdi]
	jmp	.label_515
.label_518:
	xor	r15d, r15d
.label_515:
	lea	rsi, [rsi]
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	mov	rsp, rsp
	jne	.label_517
	nop	
	test	r13d, r13d
	jns	.label_510
	mov	rbp, rbp
	mov	cl, r15b
	mov	rbp, rbp
	xor	cl, 1
	jne	.label_516
	nop	
	and	eax, 0x200
	je	.label_505
	mov	rbp, rbp
	mov	qword ptr [rsp], rsi
	lea	rbp, [r14 + 0x60]
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	i_ring_empty
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	jne	.label_503
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	mov	rsp, rsp
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r15b, 1
	nop	
	jmp	.label_503
.label_517:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_504
	and	eax, 0x200
	je	.label_504
	lea	rdi, [rdi]
	mov	edi, r13d
	mov	rsp, rsp
	call	close
	nop	
	jmp	.label_504
.label_505:
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rsi
	nop	
	jmp	.label_503
.label_510:
	mov	qword ptr [rsp], rsi
	jmp	.label_503
.label_516:
	mov	rbp, rbp
	mov	qword ptr [rsp], rsi
.label_503:
	test	r13d, r13d
	mov	rbp, rbp
	mov	r12d, r13d
	jns	.label_507
	mov	rdi, r14
	mov	rsi, rbx
	mov	rsp, rsp
	call	diropen
	nop	
	mov	r12d, eax
	mov	rbp, rbp
	mov	ebp, 0xffffffff
	mov	rbp, rbp
	test	r12d, r12d
	mov	rbp, rbp
	js	.label_504
.label_507:
	lea	rsi, [rsi]
	test	byte ptr [r14 + 0x48], 2
	jne	.label_512
	mov	rbp, rbp
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_514
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2e
	nop	
	jne	.label_514
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx + 1]
	cmp	eax, 0x2e
	lea	rsi, [rsi]
	jne	.label_514
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 2], 0
	lea	rsi, [rsi]
	jne	.label_514
.label_512:
	lea	rsi, [rsp + 8]
	nop	
	mov	edi, r12d
	call	__fstat
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_506
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_508
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	jne	.label_508
.label_514:
	test	byte ptr [r14 + 0x49], 2
	lea	rsi, [rsi]
	jne	.label_511
	mov	edi, r12d
	lea	rdi, [rdi]
	call	fchdir
	mov	ebp, eax
	jmp	.label_513
.label_511:
	lea	rdi, [rdi]
	test	r15b, r15b
	sete	al
	movzx	edx, al
	lea	rsi, [rsi]
	mov	rdi, r14
	nop	
	mov	esi, r12d
	lea	rdi, [rdi]
	call	cwd_advance_fd
	nop	
	xor	ebp, ebp
	jmp	.label_504
.label_508:
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 2
.label_506:
	nop	
	mov	ebp, 0xffffffff
.label_513:
	test	r13d, r13d
	jns	.label_504
	mov	rbp, rbp
	call	__errno_location
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
.label_504:
	lea	rdi, [rdi]
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	nop	
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409050

	.globl fts_build
	.type fts_build, @function
fts_build:
	nop	
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x88
	lea	rsi, [rsi]
	mov	r12d, esi
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rbp, qword ptr [r14]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rbp
	nop	
	mov	r15, qword ptr [rbp + 0x18]
	mov	qword ptr [rsp + 0x60], r15
	mov	rbp, rbp
	test	r15, r15
	mov	rsp, rsp
	je	.label_538
	mov	rdi, r15
	call	dirfd
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x84], eax
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_557
	mov	qword ptr [rsp + 0x38], -1
	nop	
	cmp	qword ptr [r14 + 0x40], 0
	nop	
	jne	.label_561
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x38], rax
.label_561:
	lea	rax, [r14 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x18], eax
	jmp	.label_526
.label_538:
	mov	rsp, rsp
	mov	eax, 0x204
	and	eax, dword ptr [r14 + 0x48]
	mov	edi, 0xffffff9c
	mov	rsp, rsp
	cmp	eax, 0x200
	jne	.label_570
	mov	rsp, rsp
	mov	edi, dword ptr [r14 + 0x2c]
.label_570:
	mov	rsi, qword ptr [rbp + 0x30]
	nop	
	mov	eax, dword ptr [r14 + 0x48]
	mov	rsp, rsp
	xor	edx, edx
	test	al, 0x10
	mov	rbp, rbp
	je	.label_521
	test	al, 1
	mov	rsp, rsp
	je	.label_524
	mov	rbp, rbp
	cmp	qword ptr [rbp + 0x58], 0
	nop	
	je	.label_521
.label_524:
	nop	
	mov	edx, 0x20000
.label_521:
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0x84]
	mov	rbp, rbp
	call	opendirat
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 0x18], rax
	nop	
	test	rax, rax
	je	.label_536
	movzx	eax, word ptr [rbp + 0x70]
	mov	rsp, rsp
	cmp	eax, 0xb
	lea	rsi, [rsi]
	jne	.label_542
	nop	
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, r14
	nop	
	mov	rsi, rbp
	mov	rsp, rsp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
	jmp	.label_550
.label_557:
	mov	rdi, qword ptr [rbp + 0x18]
	lea	rdi, [rdi]
	call	closedir
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x18], 0
.label_536:
	xor	r13d, r13d
	cmp	r12d, 3
	jne	.label_525
	mov	word ptr [rbp + 0x70], 4
	call	__errno_location
	mov	rsp, rsp
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp + 0x40], eax
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_525
.label_542:
	test	byte ptr [r14 + 0x49], 1
	je	.label_550
	nop	
	mov	rdi, r14
	mov	rsi, rbp
	call	leave_dir
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsi, rbp
	call	fts_stat
	nop	
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	enter_dir
	test	al, al
	je	.label_574
.label_550:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], -1
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 0x40], 0
	jne	.label_519
	mov	rsp, rsp
	mov	eax, 0x186a0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rax
.label_519:
	mov	rsp, rsp
	lea	rax, [r14 + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x58], rax
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x18], eax
	test	r15, r15
	mov	rbp, rbp
	jne	.label_526
	cmp	r12d, 2
	jne	.label_537
	mov	r13d, r12d
	nop	
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_540
.label_537:
	mov	rsp, rsp
	mov	eax, dword ptr [r14 + 0x48]
	nop	
	and	eax, 0x38
	cmp	eax, 0x18
	mov	rbp, rbp
	jne	.label_534
	mov	rbp, rbp
	cmp	qword ptr [rbp + 0x88], 2
	jne	.label_534
	mov	r13d, r12d
	mov	esi, dword ptr [rsp + 0x84]
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	leaf_optimization
	nop	
	test	eax, eax
	setne	r12b
	lea	rsi, [rsi]
	jmp	.label_554
.label_574:
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_525
.label_534:
	mov	r13d, r12d
	lea	rsi, [rsi]
	xor	r12d, r12d
.label_554:
	mov	rbp, rbp
	xor	r12b, 1
.label_540:
	cmp	r13d, 3
	lea	rdi, [rdi]
	je	.label_564
	test	r12b, r12b
	jne	.label_564
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x18], r12d
	mov	rbp, rbp
	mov	r12d, r13d
	jmp	.label_526
.label_564:
	mov	qword ptr [rsp + 0x60], r15
	nop	
	test	byte ptr [r14 + 0x49], 2
	mov	rbp, rbp
	mov	ebx, dword ptr [rsp + 0x84]
	je	.label_571
	mov	esi, 0x406
	lea	rsi, [rsi]
	mov	edx, 3
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	edi, ebx
	mov	rsp, rsp
	call	rpl_fcntl
	mov	ebx, eax
	nop	
	mov	dword ptr [rsp + 0x84], ebx
.label_571:
	test	ebx, ebx
	lea	rdi, [rdi]
	js	.label_528
	nop	
	xor	ecx, ecx
	nop	
	mov	rdi, r14
	mov	rsi, rbp
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_559
.label_528:
	nop	
	cmp	r13d, 3
	nop	
	jne	.label_535
	test	r12b, r12b
	mov	rbp, rbp
	je	.label_535
	lea	rsi, [rsi]
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp + 0x40], eax
.label_535:
	or	byte ptr [rbp + 0x72], 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x18], 0
	mov	eax, dword ptr [r14 + 0x48]
	lea	rdi, [rdi]
	test	ah, 2
	lea	rsi, [rsi]
	je	.label_549
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0x84]
	lea	rdi, [rdi]
	test	edi, edi
	js	.label_549
	call	close
.label_549:
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x18], 0
	mov	dword ptr [rsp + 0x18], 0
.label_559:
	lea	rdi, [rdi]
	mov	r12d, r13d
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0x60]
.label_526:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rax + rdx - 1]
	cmp	eax, 0x2f
	jne	.label_563
	dec	rdx
.label_563:
	mov	dword ptr [rsp + 0x1c], r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	lea	rdi, [rdi]
	test	byte ptr [r14 + 0x48], 4
	nop	
	je	.label_568
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x50], rcx
	mov	rsp, rsp
	mov	byte ptr [rax + rdx], 0x2f
.label_568:
	mov	rsp, rsp
	lea	rax, [rdx + 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x68], rax
	mov	rcx, qword ptr [r14 + 0x30]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x40], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x58]
	inc	rax
	nop	
	mov	qword ptr [rsp + 0x28], rax
	add	rdx, 2
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	r12d, r12d
	xor	ebx, ebx
	xor	r13d, r13d
.label_560:
	cmp	qword ptr [rbp + 0x18], 0
	je	.label_522
	mov	qword ptr [rsp + 0x70], rbx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], r13
	call	__errno_location
	mov	rsp, rsp
	mov	r13, rax
	nop	dword ptr [rax]
.label_573:
	mov	rsp, rsp
	mov	dword ptr [r13], 0
	mov	rdi, qword ptr [rbp + 0x18]
	mov	rbp, rbp
	call	readdir
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	test	r15, r15
	mov	rsp, rsp
	je	.label_530
	test	byte ptr [r14 + 0x48], 0x20
	jne	.label_523
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r15 + 0x13]
	cmp	eax, 0x2e
	mov	rsp, rsp
	jne	.label_523
	mov	rsp, rsp
	movzx	eax, byte ptr [r15 + 0x14]
	cmp	eax, 0x2e
	je	.label_566
	test	al, al
	je	.label_567
	mov	rbp, rbp
	jmp	.label_523
	nop	dword ptr [rax]
.label_566:
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_523
.label_567:
	mov	rsp, rsp
	cmp	qword ptr [rbp + 0x18], 0
	mov	rsp, rsp
	jne	.label_573
	jmp	.label_520
	nop	dword ptr [rax]
.label_523:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], r12
	lea	rdi, [rdi]
	mov	rbx, r15
	add	rbx, 0x13
	mov	rsp, rsp
	mov	rdi, rbx
	call	strlen
	nop	
	mov	rbp, rax
	mov	rdi, r14
	mov	rsi, rbx
	mov	rsp, rsp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	fts_alloc
	nop	
	mov	r12, rax
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_533
	cmp	rbp, qword ptr [rsp + 0x40]
	jae	.label_558
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	jmp	.label_547
	nop	dword ptr [rax]
.label_558:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r14 + 0x20]
	nop	
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rax + rbp]
	nop	
	mov	rdi, r14
	call	fts_palloc
	test	al, al
	mov	rsp, rsp
	je	.label_533
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x20]
	cmp	rbx, rax
	lea	rsi, [rsi]
	je	.label_551
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x68]
	add	rax, rbx
	test	byte ptr [r14 + 0x48], 4
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x50]
	nop	
	cmovne	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rcx
	nop	
	mov	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_556
.label_551:
	nop	
	mov	rbx, qword ptr [rsp + 0x68]
.label_556:
	mov	rax, qword ptr [r14 + 0x30]
	sub	rax, rbx
	mov	qword ptr [rsp + 0x40], rax
.label_547:
	add	rbp, rbx
	lea	rdi, [rdi]
	jb	.label_531
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x58], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 8], rax
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x48], rbp
	mov	rbp, rbp
	mov	rax, qword ptr [r15]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [r14 + 0x48], 4
	mov	rbp, rbp
	jne	.label_546
	mov	rbp, rbp
	lea	rax, [r12 + 0x108]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_529
	nop	dword ptr [rax]
.label_546:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	lea	rdi, [rdi]
	lea	rsi, [r12 + 0x108]
	mov	rdx, qword ptr [r12 + 0x60]
	lea	rdi, [rdi]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x50]
	call	memmove
.label_529:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x48]
	nop	
	mov	r13, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_545
	test	byte ptr [r14 + 0x49], 4
	mov	rbp, rbp
	jne	.label_545
	mov	qword ptr [rsp + 0x68], rbx
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, r12
	call	fts_stat
	mov	rbp, rbp
	mov	word ptr [r12 + 0x70], ax
	mov	rbp, rbp
	jmp	.label_552
	nop	
.label_545:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x68], rbx
	mov	rdi, r12
	add	rdi, 0x78
	mov	eax, dword ptr [r14 + 0x48]
	mov	rsp, rsp
	and	eax, 0x18
	cmp	eax, 0x18
	lea	rdi, [rdi]
	jne	.label_565
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r15 + 0x12]
	mov	rbp, rbp
	cmp	eax, 4
	mov	rbp, rbp
	setne	cl
	mov	rbp, rbp
	test	al, al
	setne	bl
	lea	rdi, [rdi]
	and	bl, cl
	lea	rdi, [rdi]
	jmp	.label_575
.label_565:
	mov	rsp, rsp
	xor	ebx, ebx
.label_575:
	mov	word ptr [r12 + 0x70], 0xb
	lea	rdi, [rdi]
	movzx	esi, byte ptr [r15 + 0x12]
	call	set_stat_type
	xor	bl, 1
	movzx	esi, bl
	lea	rsi, [rsi]
	mov	rdi, r12
	lea	rdi, [rdi]
	call	fts_set_stat_required
.label_552:
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x60]
	mov	qword ptr [r12 + 0x10], 0
	test	r13, r13
	mov	rsp, rsp
	mov	rax, r12
	je	.label_539
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], r12
	mov	rax, r13
.label_539:
	mov	r13, rax
	nop	
	mov	rbx, qword ptr [rsp + 0x70]
	cmp	rbx, 0x2710
	mov	rbp, rbp
	jne	.label_541
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	jne	.label_541
	mov	esi, dword ptr [rsp + 0x84]
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rsp, rsp
	call	dirent_inode_sort_may_be_useful
	mov	qword ptr [rsp + 0x10], rax
	nop	dword ptr [rax]
.label_541:
	inc	rbx
	cmp	qword ptr [rsp + 0x38], rbx
	ja	.label_560
	jmp	.label_522
.label_530:
	mov	eax, dword ptr [r13]
	test	eax, eax
	mov	r15, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	je	.label_562
	nop	
	mov	dword ptr [rbp + 0x40], eax
	mov	rax, r15
	or	rax, rbx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	rsp, rsp
	mov	word ptr [rbp + 0x70], cx
.label_562:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x18]
	mov	rbp, rbp
	test	rdi, rdi
	mov	r13, qword ptr [rsp + 0x78]
	je	.label_522
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	jmp	.label_522
.label_520:
	mov	r15, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x78]
	mov	rbx, qword ptr [rsp + 0x70]
.label_522:
	mov	rax, qword ptr [rsp + 0x30]
	nop	
	test	al, 1
	je	.label_527
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r13
	call	fts_padjust
.label_527:
	mov	rbp, rbp
	test	byte ptr [r14 + 0x48], 4
	mov	r12d, dword ptr [rsp + 0x1c]
	je	.label_532
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, rax
	nop	
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rsp + 0x68]
	cmp	rdx, qword ptr [r14 + 0x30]
	nop	
	cmove	rcx, rax
	test	rbx, rbx
	cmove	rcx, rax
	mov	rbp, rbp
	mov	byte ptr [rcx], 0
.label_532:
	mov	rsp, rsp
	test	r15, r15
	jne	.label_548
	mov	eax, dword ptr [rsp + 0x18]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	je	.label_548
	mov	rsp, rsp
	cmp	r12d, 1
	je	.label_543
	mov	rbp, rbp
	test	rbx, rbx
	jne	.label_548
.label_543:
	mov	rbp, rbp
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_555
	mov	rsi, qword ptr [rbp + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_1
	mov	rdi, r14
	mov	rsp, rsp
	call	fts_safe_changedir
	jmp	.label_553
.label_555:
	mov	rdi, r14
	nop	
	call	restore_initial_cwd
.label_553:
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_548
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	mov	rbp, rbp
	jmp	.label_544
.label_548:
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_569
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	test	al, 1
	je	.label_572
	mov	rbp, qword ptr [rsp + 0x58]
	mov	qword ptr [word ptr [rbp]], OFFSET FLAT:fts_compare_ino
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	nop	
	call	fts_sort
	mov	r13, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp], 0
.label_572:
	cmp	rbx, 2
	mov	rbp, rbp
	jb	.label_525
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_525
	mov	rdi, r14
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, rbx
	call	fts_sort
	mov	r13, rax
	jmp	.label_525
.label_569:
	cmp	r12d, 3
	lea	rdi, [rdi]
	jne	.label_544
	mov	rsp, rsp
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 4
	mov	rsp, rsp
	je	.label_544
	movzx	eax, ax
	cmp	eax, 7
	je	.label_544
	mov	word ptr [rbp + 0x70], 6
.label_544:
	lea	rsi, [rsi]
	mov	rdi, r13
	call	fts_lfree
	xor	r13d, r13d
.label_525:
	lea	rdi, [rdi]
	mov	rax, r13
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_533:
	nop	
	mov	ebx, dword ptr [r13]
	mov	rdi, r12
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x78]
	call	fts_lfree
	mov	rbp, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	rsp, rsp
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	mov	dword ptr [r13], ebx
	xor	r13d, r13d
	jmp	.label_525
.label_531:
	mov	rsp, rsp
	mov	rdi, r12
	nop	
	call	free
	mov	rdi, qword ptr [rsp + 0x78]
	call	fts_lfree
	mov	rbx, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	lea	rdi, [rdi]
	or	byte ptr [r14 + 0x49], 0x20
	mov	dword ptr [r13], 0x24
	xor	r13d, r13d
	nop	
	jmp	.label_525
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409a50

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_576
	nop	
	test	ah, 2
	lea	rsi, [rsi]
	jne	.label_577
	mov	edi, dword ptr [rbx + 0x28]
	mov	rsp, rsp
	call	fchdir
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	setne	al
	jmp	.label_578
.label_576:
	xor	eax, eax
	jmp	.label_578
.label_577:
	lea	rdi, [rdi]
	mov	esi, 0xffffff9c
	mov	edx, 1
	mov	rbp, rbp
	mov	rdi, rbx
	call	cwd_advance_fd
	mov	rbp, rbp
	xor	eax, eax
.label_578:
	mov	rsp, rsp
	movzx	ebp, al
	lea	rdi, [rdi]
	add	rbx, 0x60
	nop	
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fd_ring_clear
	mov	rsp, rsp
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ae0

	.globl fts_load
	.type fts_load, @function
fts_load:
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	push	rbx
	mov	r12, rsi
	mov	r14, rdi
	mov	rbp, rbp
	mov	rdx, qword ptr [r12 + 0x60]
	mov	qword ptr [r12 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [r12 + 0x108]
	inc	rdx
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	mov	rsp, rsp
	mov	rdi, r15
	call	strrchr
	mov	rsp, rsp
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_580
	cmp	rbx, r15
	mov	rbp, rbp
	jne	.label_579
	cmp	byte ptr [rbx + 1], 0
	mov	rbp, rbp
	je	.label_580
.label_579:
	lea	rdi, [rdi]
	inc	rbx
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strlen
	lea	rdi, [rdi]
	mov	r13, rax
	lea	rdx, [r13 + 1]
	nop	
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, rbx
	call	memmove
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x60], r13
.label_580:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x38], rax
	mov	qword ptr [r12 + 0x30], rax
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	nop	
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409ba0

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	nop	
	push	rax
	call	filesystem_type
	lea	rsi, [rsi]
	cmp	rax, 0x52654972
	jle	.label_581
	lea	rsi, [rsi]
	mov	ecx, 2
	cmp	rax, 0x58465341
	jg	.label_585
	cmp	rax, 0x52654973
	mov	rsp, rsp
	je	.label_584
	cmp	rax, 0x5346414f
	mov	rbp, rbp
	je	.label_583
	jmp	.label_582
.label_581:
	test	rax, rax
	je	.label_583
	nop	
	cmp	rax, 0x6969
	mov	rbp, rbp
	je	.label_583
	lea	rdi, [rdi]
	cmp	rax, 0x9fa0
	lea	rsi, [rsi]
	je	.label_583
	jmp	.label_582
.label_585:
	mov	rbp, rbp
	cmp	rax, 0x58465342
	lea	rsi, [rsi]
	je	.label_584
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	jne	.label_582
.label_583:
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_584
.label_582:
	mov	rsp, rsp
	mov	ecx, 1
.label_584:
	mov	rsp, rsp
	mov	eax, ecx
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409c30

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rsp, rsp
	mov	rbp, rdi
	movzx	eax, word ptr [rbp + 0x48]
	test	ax, 0x102
	je	.label_588
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	nop	
	je	.label_590
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x78]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r14 + 0x80]
	nop	
	mov	qword ptr [rbx + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x10], r14
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	hash_insert
	mov	r15, rax
	mov	rsp, rsp
	mov	bpl, 1
	mov	rsp, rsp
	cmp	r15, rbx
	je	.label_586
	nop	
	mov	rdi, rbx
	call	free
	nop	
	test	r15, r15
	je	.label_589
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [r14], rax
	mov	rsp, rsp
	jmp	.label_587
.label_588:
	mov	rdi, qword ptr [rbp + 0x58]
	nop	
	lea	rsi, [r14 + 0x78]
	lea	rsi, [rsi]
	call	cycle_check
	mov	rsp, rsp
	mov	bpl, 1
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_586
	lea	rsi, [rsi]
	mov	qword ptr [r14], r14
.label_587:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_586
.label_590:
	xor	ebp, ebp
	nop	
	jmp	.label_586
.label_589:
	xor	ebp, ebp
.label_586:
	mov	al, bpl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d20

	.globl cwd_advance_fd
	.type cwd_advance_fd, @function
cwd_advance_fd:
	mov	rbp, rbp
	push	rbp
	push	rbx
	lea	rdi, [rdi]
	push	rax
	nop	
	mov	ebp, esi
	mov	rsp, rsp
	mov	rbx, rdi
	mov	esi, dword ptr [rbx + 0x2c]
	mov	rsp, rsp
	cmp	esi, ebp
	jne	.label_591
	mov	rbp, rbp
	cmp	esi, -0x64
	nop	
	jne	.label_595
.label_591:
	mov	rbp, rbp
	test	dl, dl
	lea	rsi, [rsi]
	je	.label_593
	lea	rdi, [rbx + 0x60]
	mov	rsp, rsp
	call	i_ring_push
	test	eax, eax
	mov	rsp, rsp
	js	.label_594
	mov	edi, eax
	mov	rsp, rsp
	jmp	.label_592
.label_593:
	nop	
	test	esi, esi
	js	.label_594
	mov	rbp, rbp
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 4
	lea	rdi, [rdi]
	jne	.label_594
	mov	edi, esi
.label_592:
	call	close
.label_594:
	mov	dword ptr [rbx + 0x2c], ebp
	add	rsp, 8
	nop	
	pop	rbx
	pop	rbp
	ret	
.label_595:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409da0

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	mov	rsp, rsp
	cmp	edx, 5
	jb	.label_596
	nop	
	push	rax
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	mov	rbp, rbp
	add	rsp, 8
	ret	
.label_596:
	mov	rsp, rsp
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409dd0
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rdi, [rdi]
	mov	ebp, esi
	mov	rsp, rsp
	mov	rbx, rdi
	nop	
	mov	eax, ebp
	mov	rbp, rbp
	or	eax, 0x1000
	nop	
	cmp	eax, 0x1000
	jne	.label_599
	mov	r12, qword ptr [rbx]
	lea	rsi, [rsi]
	call	__errno_location
	mov	r14, rax
	lea	rdi, [rdi]
	mov	dword ptr [r14], 0
	xor	eax, eax
	lea	rdi, [rdi]
	test	byte ptr [rbx + 0x49], 0x20
	mov	rsp, rsp
	jne	.label_597
	nop	
	movzx	ecx, word ptr [r12 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	mov	rbp, rbp
	je	.label_604
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_597
	mov	rax, qword ptr [r12 + 0x10]
	nop	
	jmp	.label_597
.label_599:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_597
.label_604:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 8]
	nop	
	test	rdi, rdi
	je	.label_602
	call	fts_lfree
.label_602:
	nop	
	mov	r15d, 1
	cmp	ebp, 0x1000
	jne	.label_605
	mov	rbp, rbp
	or	byte ptr [rbx + 0x49], 0x10
	mov	r15d, 2
.label_605:
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_600
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x30]
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rax]
	nop	
	cmp	eax, 0x2f
	je	.label_600
	test	byte ptr [rbx + 0x48], 4
	lea	rsi, [rsi]
	jne	.label_600
	mov	esi, OFFSET FLAT:.str_3
	mov	rdi, rbx
	mov	rsp, rsp
	call	diropen
	mov	rbp, rbp
	mov	ebp, eax
	nop	
	test	ebp, ebp
	mov	rsp, rsp
	js	.label_598
	mov	rsp, rsp
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
	test	byte ptr [rbx + 0x49], 2
	lea	rdi, [rdi]
	jne	.label_603
	mov	edi, ebp
	call	fchdir
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_606
	mov	rsp, rsp
	mov	ebx, dword ptr [r14]
	mov	edi, ebp
	lea	rsi, [rsi]
	call	close
	mov	dword ptr [r14], ebx
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_597
.label_600:
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], rax
.label_597:
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
.label_598:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 8], 0
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_597
.label_603:
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, rbx
	mov	esi, ebp
	call	cwd_advance_fd
	jmp	.label_601
.label_606:
	mov	edi, ebp
	mov	rbp, rbp
	call	close
.label_601:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	jmp	.label_597
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f80

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	lea	rdi, [rdi]
	mov	rax, rdx
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409fa0

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	mov	rbp, rbp
	jne	.label_607
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	mov	rsp, rsp
	ret	
.label_607:
	mov	rsp, rsp
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409fd0

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x88
	mov	r15d, esi
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x50]
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	test	byte ptr [rbx + 0x49], 2
	je	.label_608
	mov	rbp, qword ptr [rbx + 0x50]
	mov	rbp, rbp
	test	rbp, rbp
	jne	.label_613
	xor	r12d, r12d
	lea	rsi, [rsi]
	mov	edi, 0xd
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_type_hash
	mov	ecx, OFFSET FLAT:dev_type_compare
	mov	r8d, OFFSET FLAT:free
	lea	rdi, [rdi]
	call	hash_initialize
	mov	rsp, rsp
	mov	rbp, rax
	mov	qword ptr [rbx + 0x50], rbp
	test	rbp, rbp
	lea	rdi, [rdi]
	mov	r14d, 0
	mov	rbp, rbp
	je	.label_611
.label_613:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	lea	rsi, [rsp]
	mov	rdi, rbp
	mov	rsp, rsp
	call	hash_lookup
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_610
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	jmp	.label_608
.label_610:
	mov	r12b, 1
	mov	r14, rbp
.label_611:
	xor	eax, eax
	nop	
	test	r15d, r15d
	js	.label_608
	lea	rsi, [rsp + 0x10]
	mov	edi, r15d
	mov	rbp, rbp
	call	fstatfs
	mov	ecx, eax
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	test	ecx, ecx
	jne	.label_608
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_609
	mov	edi, 0x10
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rax
	nop	
	test	rbp, rbp
	je	.label_609
	mov	rax, qword ptr [r13 + 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rbp], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbp + 8], rax
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_612
	nop	
	cmp	rax, rbp
	lea	rsi, [rsi]
	je	.label_609
	lea	rdi, [rdi]
	call	abort
.label_612:
	mov	rdi, rbp
	call	free
.label_609:
	mov	rax, qword ptr [rsp + 0x10]
.label_608:
	lea	rsi, [rsi]
	add	rsp, 0x88
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a140

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	mov	rsp, rsp
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a160

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	lea	rdi, [rdi]
	sete	al
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a170

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	lea	rdi, [rdi]
	dec	esi
	mov	rbp, rbp
	xor	eax, eax
	cmp	esi, 0xb
	nop	
	ja	.label_614
	mov	rsp, rsp
	movsxd	rax, esi
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + label_615]]
.label_614:
	mov	dword ptr [rdi + 0x18], eax
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a1a0

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	nop	
	push	rax
	call	filesystem_type
	mov	rcx, rax
	xor	eax, eax
	cmp	rcx, 0x6969
	lea	rdi, [rdi]
	je	.label_616
	mov	rbp, rbp
	cmp	rcx, 0x1021994
	je	.label_616
	mov	edx, 0xff534d42
	nop	
	cmp	rcx, rdx
	je	.label_616
	mov	rsp, rsp
	mov	al, 1
.label_616:
	lea	rdi, [rdi]
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a1e0

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 8]
	mov	rax, qword ptr [rdi + 0x20]
	mov	rbp, rbp
	jmp	.label_617
.label_619:
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x38], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
.label_617:
	test	rcx, rcx
	je	.label_622
	nop	
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rdi, [rcx + 0x108]
	cmp	rdx, rdi
	mov	rsp, rsp
	je	.label_619
	nop	
	sub	rdx, qword ptr [rcx + 0x38]
	nop	
	add	rdx, rax
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_619
.label_622:
	cmp	qword ptr [rsi + 0x58], 0
	nop	
	js	.label_621
	nop	word ptr cs:[rax + rax]
.label_623:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsi + 0x30]
	lea	rsi, [rsi]
	lea	rdx, [rsi + 0x108]
	cmp	rcx, rdx
	je	.label_618
	mov	rsp, rsp
	sub	rcx, qword ptr [rsi + 0x38]
	mov	rbp, rbp
	add	rcx, rax
	nop	
	mov	qword ptr [rsi + 0x30], rcx
.label_618:
	mov	qword ptr [rsi + 0x38], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi + 0x10]
	test	rcx, rcx
	jne	.label_620
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi + 8]
.label_620:
	cmp	qword ptr [rcx + 0x58], 0
	mov	rsi, rcx
	lea	rsi, [rsi]
	jns	.label_623
.label_621:
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a290

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	mov	rax, qword ptr [rdi]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	lea	rdi, [rdi]
	cmp	rcx, rax
	sbb	edx, edx
	lea	rdi, [rdi]
	and	edx, 1
	mov	rsp, rsp
	cmp	rax, rcx
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	cmovae	eax, edx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a2d0
	.globl fts_compar
	.type fts_compar, @function
fts_compar:

	push	rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x50]
	call	qword ptr [rax + 0x40]
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a2e0

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
	je	.label_624
	nop	
	cmp	r15, -2
	jb	.label_624
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_624
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_624:
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
	#Procedure 0x40a370
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_625
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_625
.label_626:
	ret	
.label_625:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_626
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a3a0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_627
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_627:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a3c0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a3d0
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
	.align	16
	#Procedure 0x40a3e0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_628
.label_629:
	ret	
.label_628:
	cmp	edi, 0x7f
	je	.label_629
	xor	eax, eax
	jmp	.label_629
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a400
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a410
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a420
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a430
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a440
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_630
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_630
.label_631:
	ret	
.label_630:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_631
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a470
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_632
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_632:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a490

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a4a0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_633
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_633:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a4c0
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
	.align	16
	#Procedure 0x40a4d0
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
	.align	16
	#Procedure 0x40a4e0

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
	je	.label_635
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_634
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_634
.label_635:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_634
	test	cl, cl
	jne	.label_634
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_634:
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
	.align	16
	#Procedure 0x40a580

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a5a0

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	nop	
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	dword ptr [r15 + 0x18], 0x95f616
	jne	.label_636
	nop	
	cmp	qword ptr [r15 + 0x10], 0
	mov	rsp, rsp
	je	.label_638
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r15]
	lea	rsi, [rsi]
	jne	.label_638
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r14]
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	cmp	rcx, qword ptr [r15 + 8]
	je	.label_637
.label_638:
	mov	rbx, qword ptr [r15 + 0x10]
	inc	rbx
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x10], rbx
	mov	rdi, rbx
	nop	
	call	is_zero_or_power_of_two
	lea	rdi, [rdi]
	test	al, al
	je	.label_639
	mov	rsp, rsp
	mov	al, 1
	test	rbx, rbx
	je	.label_637
	mov	rax, qword ptr [r14]
	mov	qword ptr [r15 + 8], rax
	mov	rax, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	qword ptr [r15], rax
.label_639:
	nop	
	xor	eax, eax
.label_637:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_636:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_12
	mov	esi, OFFSET FLAT:.str.1_8
	mov	rsp, rsp
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a650

	.globl is_zero_or_power_of_two
	.type is_zero_or_power_of_two, @function
is_zero_or_power_of_two:
	lea	rax, [rdi - 1]
	test	rax, rdi
	sete	al
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a660

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_640
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
.label_640:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_641
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
	ja	.label_643
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_642
.label_643:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_642:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_641:
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
	#Procedure 0x40a780

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
	je	.label_645
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_644
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_646
.label_644:
	nop	
	mov	esi, OFFSET FLAT:.str.1_9
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_645
.label_646:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_645:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a7d0

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a7e0

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a7f0

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a800

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdi + 8]
	nop	
	jae	.label_647
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_650:
	cmp	qword ptr [rcx], 0
	nop	
	mov	esi, 0
	mov	rdi, rcx
	mov	rbp, rbp
	je	.label_648
	nop	word ptr cs:[rax + rax]
.label_649:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	inc	rsi
	test	rdi, rdi
	jne	.label_649
	nop	
	cmp	rsi, rax
	mov	rsp, rsp
	cmova	rax, rsi
.label_648:
	mov	rbp, rbp
	add	rcx, 0x10
	nop	
	cmp	rcx, rdx
	jb	.label_650
.label_647:
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a870
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rbp, rbp
	mov	rsi, qword ptr [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	rsi, qword ptr [rdi + 8]
	mov	rsp, rsp
	mov	edx, 0
	jae	.label_651
	mov	r8, qword ptr [rdi + 8]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_653:
	lea	rdi, [rdi]
	cmp	qword ptr [rsi], 0
	mov	rbp, rbp
	mov	rax, rsi
	je	.label_652
	nop	
.label_655:
	lea	rdi, [rdi]
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_655
	inc	rdx
.label_652:
	mov	rsp, rsp
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_653
.label_651:
	mov	rbp, rbp
	cmp	rdx, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	jne	.label_656
	lea	rsi, [rsi]
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	mov	rsp, rsp
	je	.label_654
.label_656:
	mov	rbp, rbp
	xor	eax, eax
.label_654:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a8f0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r13, rsi
	mov	rbx, rdi
	mov	rsp, rsp
	call	hash_get_n_entries
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	hash_get_n_buckets
	lea	rdi, [rdi]
	mov	r12, rax
	mov	rsp, rsp
	mov	rdi, rbx
	call	hash_get_n_buckets_used
	mov	rbp, rbp
	mov	r15, rax
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	hash_get_max_bucket_length
	mov	rsp, rsp
	mov	r14, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_13
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	rsp, rsp
	call	__fprintf_chk
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_10
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_657]]
	punpckldq	xmm1, xmm2
	mov	rsp, rsp
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_658]]
	mov	rbp, rbp
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	lea	rsi, [rsi]
	addpd	xmm0, xmm1
	nop	
	mulsd	xmm0,  qword ptr [word ptr [rip + label_659]]
	movq	xmm1, r12
	mov	rbp, rbp
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_6
	mov	rsp, rsp
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	mov	rbp, rbp
	call	__fprintf_chk
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_4
	nop	
	xor	eax, eax
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	__fprintf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40aa40

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r12, rsi
	mov	rsp, rsp
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	xor	r15d, r15d
	lea	rsi, [rsi]
	cmp	qword ptr [rbx], 0
	je	.label_660
	test	rbx, rbx
	nop	
	je	.label_660
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_661:
	mov	rsi, qword ptr [rbx]
	mov	rsp, rsp
	cmp	rsi, r12
	je	.label_662
	lea	rsi, [rsi]
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_662
	mov	rbx, qword ptr [rbx + 8]
	nop	
	test	rbx, rbx
	jne	.label_661
	jmp	.label_660
.label_662:
	mov	r15, qword ptr [rbx]
.label_660:
	nop	
	mov	rax, r15
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aad0

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbx
	mov	rbx, rdi
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, rax
	call	qword ptr [rbx + 0x30]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_663
	lea	rdi, [rdi]
	shl	rax, 4
	add	rax, qword ptr [rbx]
	lea	rsi, [rsi]
	pop	rbx
	nop	
	ret	
.label_663:
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ab10
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	mov	rbp, rbp
	je	.label_664
	nop	
	mov	rcx, qword ptr [rdi]
	lea	rdi, [rdi]
	jmp	.label_666
	nop	word ptr cs:[rax + rax]
.label_667:
	mov	rbp, rbp
	add	rcx, 0x10
.label_666:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_665
	mov	rax, qword ptr [rcx]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_667
.label_664:
	ret	
.label_665:
	mov	rsp, rsp
	push	rax
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ab60
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	lea	rdi, [rdi]
	call	safe_hasher
	mov	rbp, rbp
	mov	rcx, rax
	nop	dword ptr [rax + rax]
.label_669:
	cmp	qword ptr [rcx], rbx
	jne	.label_668
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 8]
	nop	
	test	rdx, rdx
	lea	rdi, [rdi]
	jne	.label_670
.label_668:
	nop	
	mov	rcx, qword ptr [rcx + 8]
	nop	
	test	rcx, rcx
	jne	.label_669
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	dword ptr [rax + rax]
.label_672:
	cmp	rax, rdx
	lea	rdi, [rdi]
	mov	ecx, 0
	jae	.label_671
	mov	rbp, rbp
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_672
	jmp	.label_671
.label_670:
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx]
.label_671:
	mov	rax, rcx
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40abf0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	mov	r8, qword ptr [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_673
	nop	dword ptr [rax + rax]
.label_676:
	mov	rbp, rbp
	add	r8, 0x10
.label_673:
	cmp	r8, qword ptr [rdi + 8]
	nop	
	jae	.label_675
	lea	rdi, [rdi]
	cmp	qword ptr [r8], 0
	lea	rsi, [rsi]
	je	.label_676
	test	r8, r8
	mov	r9, r8
	mov	rbp, rbp
	je	.label_676
	nop	word ptr cs:[rax + rax]
.label_674:
	mov	rbp, rbp
	cmp	rax, rdx
	mov	rsp, rsp
	jae	.label_675
	mov	rcx, qword ptr [r9]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rax*8], rcx
	nop	
	inc	rax
	lea	rdi, [rdi]
	mov	r9, qword ptr [r9 + 8]
	mov	rsp, rsp
	test	r9, r9
	jne	.label_674
	nop	
	jmp	.label_676
.label_675:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ac60
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	xor	ebx, ebx
	jmp	.label_677
	nop	word ptr cs:[rax + rax]
.label_678:
	mov	rsp, rsp
	add	r13, 0x10
.label_677:
	lea	rsi, [rsi]
	cmp	r13, qword ptr [r12 + 8]
	nop	
	jae	.label_679
	lea	rsi, [rsi]
	cmp	qword ptr [r13], 0
	je	.label_678
	mov	rbp, rbp
	test	r13, r13
	mov	rbp, r13
	je	.label_678
	nop	word ptr [rax + rax]
.label_680:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	r15
	mov	rbp, rbp
	test	al, al
	je	.label_679
	mov	rsp, rsp
	inc	rbx
	mov	rsp, rsp
	mov	rbp, qword ptr [rbp + 8]
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsi]
	jne	.label_680
	jmp	.label_678
.label_679:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ad10
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	mov	al, byte ptr [rdi]
	nop	
	xor	edx, edx
	test	al, al
	je	.label_682
	inc	rdi
	nop	
	xor	edx, edx
.label_681:
	mov	rcx, rdx
	nop	
	shl	rcx, 5
	sub	rcx, rdx
	nop	
	movzx	eax, al
	add	rax, rcx
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	mov	al, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_681
.label_682:
	mov	rax, rdx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ad50
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	mov	eax,  dword ptr [dword ptr [rip + label_683]]
	mov	dword ptr [rdi + 0x10], eax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ad70

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	rbx, r8
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	ebp, OFFSET FLAT:raw_hasher
	lea	rdi, [rdi]
	cmovne	rbp, rdx
	test	rcx, rcx
	mov	rsp, rsp
	mov	r14d, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	cmovne	r14, rcx
	mov	edi, 0x50
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	r13, rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	test	r13, r13
	je	.label_684
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	mov	rsp, rsp
	test	al, al
	je	.label_685
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_685
	mov	esi, 0x10
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_685
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [r13 + 8], rax
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [r13 + 0x18], xmm0
	mov	rsp, rsp
	mov	qword ptr [r13 + 0x30], rbp
	mov	qword ptr [r13 + 0x38], r14
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x40], rax
	mov	qword ptr [r13 + 0x48], 0
	nop	
	mov	rax, r13
	jmp	.label_684
.label_685:
	mov	rbp, rbp
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_684:
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aeb0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rsp, rsp
	mov	esi, 3
	mov	rsp, rsp
	call	rotr_sz
	lea	rdi, [rdi]
	xor	edx, edx
	div	rbx
	mov	rax, rdx
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aee0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	lea	rsi, [rsi]
	cmp	rdi, rsi
	sete	al
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40aef0

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	nop	
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	mov	rsp, rsp
	je	.label_686
	lea	rsi, [rsi]
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_689]]
	nop	
	jbe	.label_687
	movss	xmm1,  dword ptr [dword ptr [rip + label_690]]
	ucomiss	xmm1, xmm0
	jbe	.label_687
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_688]]
	jbe	.label_687
	movss	xmm1, dword ptr [rcx]
	lea	rdi, [rdi]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_687
	mov	rsp, rsp
	addss	xmm1,  dword ptr [dword ptr [rip + label_689]]
	ucomiss	xmm0, xmm1
	jbe	.label_687
	mov	rsp, rsp
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_691]]
	ucomiss	xmm2, xmm0
	nop	
	jb	.label_687
	ucomiss	xmm0, xmm1
	ja	.label_686
.label_687:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_686:
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40af80

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_692
	mov	eax, edi
	nop	
	and	eax, 1
	lea	rsi, [rsi]
	test	rdi, rdi
	js	.label_694
	mov	rsp, rsp
	cvtsi2ss	xmm0, rdi
	mov	rbp, rbp
	jmp	.label_693
.label_694:
	lea	rsi, [rsi]
	shr	rdi, 1
	or	rax, rdi
	mov	rsp, rsp
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_693:
	divss	xmm0, dword ptr [rsi + 8]
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_695]]
	nop	
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	mov	rsp, rsp
	cvttss2si	rax, xmm2
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	mov	rsp, rsp
	xor	rcx, rax
	mov	rsp, rsp
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_696]]
	jae	.label_697
.label_692:
	push	rax
	mov	rbp, rbp
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	lea	rsi, [rsi]
	add	rsp, 8
.label_697:
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b030
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r15, rdi
	mov	rsp, rsp
	mov	r14, qword ptr [r15]
	mov	rsp, rsp
	jmp	.label_700
	nop	dword ptr [rax]
.label_698:
	add	r14, 0x10
.label_700:
	mov	rsp, rsp
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_701
	cmp	qword ptr [r14], 0
	lea	rdi, [rdi]
	je	.label_698
	nop	
	mov	rbx, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x40]
	lea	rsi, [rsi]
	test	rax, rax
	setne	cl
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_703
	nop	dword ptr [rax + rax]
.label_704:
	test	cl, 1
	nop	
	je	.label_699
	mov	rdi, qword ptr [rbx]
	mov	rsp, rsp
	call	rax
.label_699:
	lea	rdi, [rdi]
	mov	qword ptr [rbx], 0
	nop	
	mov	rdx, qword ptr [rbx + 8]
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rax
	nop	
	mov	qword ptr [r15 + 0x48], rbx
	mov	rax, qword ptr [r15 + 0x40]
	lea	rsi, [rsi]
	test	rax, rax
	setne	cl
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	rbp, rbp
	jne	.label_704
.label_703:
	lea	rdi, [rdi]
	test	cl, cl
	je	.label_702
	mov	rdi, qword ptr [r14]
	call	rax
.label_702:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_698
.label_701:
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b100

	.globl hash_free
	.type hash_free, @function
hash_free:
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	r15, rdi
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_705
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 0x20], 0
	lea	rdi, [rdi]
	je	.label_705
	mov	r14, qword ptr [r15]
	lea	rsi, [rsi]
	jmp	.label_712
	nop	word ptr cs:[rax + rax]
.label_706:
	mov	rbp, rbp
	add	r14, 0x10
.label_712:
	mov	rsp, rsp
	cmp	r14, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	jae	.label_705
	cmp	qword ptr [r14], 0
	je	.label_706
	test	r14, r14
	mov	rbp, rbp
	mov	rbx, r14
	je	.label_706
	nop	word ptr cs:[rax + rax]
.label_713:
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_713
	jmp	.label_706
.label_705:
	mov	r14, qword ptr [r15]
	jmp	.label_707
	nop	word ptr [rax + rax]
.label_710:
	mov	rbp, rbp
	add	r14, 0x10
.label_707:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_709
	mov	rdi, qword ptr [r14 + 8]
	mov	rsp, rsp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_710
	nop	dword ptr [rax]
.label_714:
	mov	rbp, rbp
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	lea	rdi, [rdi]
	mov	rdi, rbx
	jne	.label_714
	lea	rdi, [rdi]
	jmp	.label_710
.label_709:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_708
	nop	word ptr cs:[rax + rax]
.label_711:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rdi, rbx
	lea	rdi, [rdi]
	jne	.label_711
.label_708:
	mov	rdi, qword ptr [r15]
	call	free
	nop	
	mov	rdi, r15
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b220

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, rsi
	mov	rsp, rsp
	mov	rsi, rax
	mov	rsp, rsp
	call	compute_bucket_size
	mov	rbp, rax
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	je	.label_716
	lea	rsi, [rsi]
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	je	.label_718
	lea	rdi, [rdi]
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	rsp, rsp
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_716
	mov	qword ptr [rsp + 0x10], rbp
	mov	rsp, rsp
	shl	rbp, 4
	add	rbp, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rsp + 0x18], xmm0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x38]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rbx + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, rbx
	call	transfer_entries
	mov	rbp, rbp
	test	al, al
	nop	
	je	.label_717
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx], rax
	nop	
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x10], rax
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	mov	rsp, rsp
	jmp	.label_718
.label_717:
	nop	
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	mov	rsp, rsp
	lea	rsi, [rsp]
	mov	edx, 1
	nop	
	mov	rdi, rbx
	call	transfer_entries
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_715
	lea	rsi, [rsp]
	mov	rbp, rbp
	xor	edx, edx
	mov	rdi, rbx
	nop	
	call	transfer_entries
	test	al, al
	lea	rdi, [rdi]
	je	.label_715
	mov	rdi, qword ptr [rsp]
	call	free
.label_716:
	mov	rbp, rbp
	xor	r14d, r14d
.label_718:
	lea	rsi, [rsi]
	mov	al, r14b
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
.label_715:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b3d0

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rbp, rbp
	mov	r12, rsi
	mov	r14, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [r12]
	mov	rbp, rbp
	mov	al, 1
	nop	
	cmp	r15, qword ptr [r12 + 8]
	nop	
	jae	.label_719
	nop	
	mov	dword ptr [rsp + 4], edx
	nop	word ptr cs:[rax + rax]
.label_722:
	cmp	qword ptr [r15], 0
	nop	
	je	.label_723
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_726
	nop	word ptr [rax + rax]
.label_721:
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, r13
	call	safe_hasher
	nop	
	mov	rbp, qword ptr [rbx + 8]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_720
	mov	rcx, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	nop	
	jmp	.label_724
	nop	word ptr [rax + rax]
.label_720:
	mov	rsp, rsp
	mov	qword ptr [rax], r13
	lea	rsi, [rsi]
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	mov	rsp, rsp
	call	free_entry
.label_724:
	nop	
	test	rbp, rbp
	mov	rbp, rbp
	mov	rbx, rbp
	jne	.label_721
.label_726:
	mov	r13, qword ptr [r15]
	nop	
	mov	qword ptr [r15 + 8], 0
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	nop	
	jne	.label_723
	mov	rdi, r14
	mov	rsi, r13
	mov	rsp, rsp
	call	safe_hasher
	mov	rbx, rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbx], 0
	mov	rsp, rsp
	je	.label_728
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	allocate_entry
	test	rax, rax
	je	.label_725
	mov	rbp, rbp
	mov	qword ptr [rax], r13
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 8], rax
	jmp	.label_727
.label_728:
	mov	qword ptr [rbx], r13
	nop	
	inc	qword ptr [r14 + 0x18]
.label_727:
	mov	qword ptr [r15], 0
	dec	qword ptr [r12 + 0x18]
.label_723:
	nop	
	add	r15, 0x10
	cmp	r15, qword ptr [r12 + 8]
	mov	rbp, rbp
	jb	.label_722
	mov	al, 1
	jmp	.label_719
.label_725:
	nop	
	xor	eax, eax
.label_719:
	nop	
	add	rsp, 8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b550

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	lea	rsi, [rsi]
	test	r14, r14
	mov	rbp, rbp
	je	.label_730
	lea	rdx, [rsp]
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	mov	rsi, r14
	mov	rsp, rsp
	call	hash_find_entry
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_743
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_729
	mov	rbp, rbp
	mov	qword ptr [rbx], rax
	jmp	.label_729
.label_743:
	nop	
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	nop	
	js	.label_739
	cvtsi2ss	xmm0, rcx
	lea	rdi, [rdi]
	jmp	.label_734
.label_739:
	shr	rcx, 1
	lea	rdi, [rdi]
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_734:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	mov	edx, eax
	lea	rsi, [rsi]
	and	edx, 1
	test	rax, rax
	js	.label_736
	cvtsi2ss	xmm1, rax
	mov	rsp, rsp
	jmp	.label_742
.label_736:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	mov	rsp, rsp
	addss	xmm1, xmm1
.label_742:
	mulss	xmm1, dword ptr [rcx + 8]
	lea	rdi, [rdi]
	ucomiss	xmm0, xmm1
	jbe	.label_735
	mov	rdi, r15
	call	check_tuning
	nop	
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	lea	rdi, [rdi]
	and	edx, 1
	mov	rsp, rsp
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_738
	lea	rdi, [rdi]
	cvtsi2ss	xmm2, rcx
	jmp	.label_733
.label_738:
	shr	rcx, 1
	lea	rsi, [rsi]
	or	rdx, rcx
	mov	rsp, rsp
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_733:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	nop	
	and	edx, 1
	mov	rbp, rbp
	test	rax, rax
	js	.label_737
	cvtsi2ss	xmm0, rax
	jmp	.label_731
.label_737:
	shr	rax, 1
	or	rdx, rax
	lea	rdi, [rdi]
	cvtsi2ss	xmm0, rdx
	mov	rsp, rsp
	addss	xmm0, xmm0
.label_731:
	movaps	xmm3, xmm1
	lea	rsi, [rsi]
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	mov	rbp, rbp
	jbe	.label_735
	mov	rbp, rbp
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_741
	mulss	xmm0, xmm1
.label_741:
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_696]]
	lea	rdi, [rdi]
	jae	.label_729
	lea	rdi, [rdi]
	movss	xmm1,  dword ptr [dword ptr [rip + label_695]]
	movaps	xmm2, xmm0
	lea	rdi, [rdi]
	subss	xmm2, xmm1
	nop	
	cvttss2si	rax, xmm2
	nop	
	movabs	rcx, 0x8000000000000000
	mov	rsp, rsp
	xor	rcx, rax
	mov	rbp, rbp
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	nop	
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	mov	rbp, rbp
	je	.label_729
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, r14
	call	hash_find_entry
	lea	rdi, [rdi]
	test	rax, rax
	jne	.label_730
.label_735:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_732
	mov	rdi, r15
	call	allocate_entry
	mov	rbp, rbp
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_729
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	inc	qword ptr [r15 + 0x20]
	lea	rsi, [rsi]
	jmp	.label_740
.label_732:
	mov	qword ptr [rax], r14
	nop	
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_740:
	mov	rbp, rbp
	mov	ebp, 1
.label_729:
	mov	rbp, rbp
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_730:
	lea	rdi, [rdi]
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b7d0

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r12d, ecx
	mov	rbp, rdx
	nop	
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rbp, rbp
	call	safe_hasher
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx]
	xor	r15d, r15d
	nop	
	test	rsi, rsi
	je	.label_744
	cmp	rsi, r13
	nop	
	je	.label_748
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_750
.label_748:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	mov	rsp, rsp
	je	.label_744
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_746
	nop	
	movups	xmm0, xmmword ptr [rsi]
	mov	rsp, rsp
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_749
.label_750:
	mov	rax, qword ptr [rbx + 8]
	nop	
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_744
	lea	rsi, [rsi]
	add	rbx, 8
	mov	rsp, rsp
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_747:
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	nop	
	cmp	rsi, r13
	mov	rsp, rsp
	je	.label_745
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	mov	rsp, rsp
	test	al, al
	jne	.label_745
	nop	
	mov	rbx, qword ptr [rbx]
	nop	
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_747
	jmp	.label_744
.label_746:
	mov	rbp, rbp
	mov	qword ptr [rbx], 0
	lea	rsi, [rsi]
	jmp	.label_744
.label_745:
	nop	
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_744
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_749:
	mov	rdi, r14
	mov	rbp, rbp
	call	free_entry
.label_744:
	mov	rax, r15
	mov	rbp, rbp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b8f0

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	nop	
	je	.label_751
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_751:
	push	rax
	mov	edi, 0x10
	mov	rsp, rsp
	call	malloc
	add	rsp, 8
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b920

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	ecx, -1
	je	.label_752
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rax, rbx
.label_752:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b970

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	mov	rsp, rsp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	nop	
	mov	r15, rdi
	lea	rdi, [rdi]
	lea	rdx, [rsp + 8]
	mov	ecx, 1
	call	hash_find_entry
	mov	r14, rax
	mov	rbp, rbp
	xor	eax, eax
	test	r14, r14
	mov	rbp, rbp
	je	.label_761
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_756
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	nop	
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_759
	cvtsi2ss	xmm0, rax
	jmp	.label_757
.label_759:
	shr	rax, 1
	mov	rsp, rsp
	or	rcx, rax
	nop	
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_757:
	nop	
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	mov	rsp, rsp
	and	edx, 1
	lea	rsi, [rsi]
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_760
	mov	rbp, rbp
	cvtsi2ss	xmm1, rcx
	mov	rsp, rsp
	jmp	.label_753
.label_760:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_753:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	lea	rsi, [rsi]
	jbe	.label_756
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_765
	mov	rsp, rsp
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	lea	rsi, [rsi]
	jmp	.label_755
.label_765:
	shr	rcx, 1
	or	rdx, rcx
	lea	rsi, [rsi]
	xorps	xmm1, xmm1
	lea	rsi, [rsi]
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_755:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_762
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, rax
	jmp	.label_754
.label_762:
	shr	rax, 1
	or	rdx, rax
	mov	rsp, rsp
	cvtsi2ss	xmm0, rdx
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_754:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_756
	mov	rbp, rbp
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	mov	rsp, rsp
	jne	.label_764
	mulss	xmm0, dword ptr [rcx + 8]
.label_764:
	movss	xmm1,  dword ptr [dword ptr [rip + label_695]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	lea	rdi, [rdi]
	cvttss2si	rax, xmm2
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	mov	rsp, rsp
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	lea	rsi, [rsi]
	test	al, al
	jne	.label_756
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	nop	
	je	.label_758
	nop	word ptr cs:[rax + rax]
.label_763:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	mov	rsp, rsp
	test	rbx, rbx
	mov	rbp, rbp
	mov	rdi, rbx
	jne	.label_763
.label_758:
	nop	
	mov	qword ptr [r15 + 0x48], 0
.label_756:
	mov	rax, r14
.label_761:
	add	rsp, 0x10
	nop	
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40bb60

	.globl next_prime
	.type next_prime, @function
next_prime:
	nop	
	push	r14
	lea	rdi, [rdi]
	push	rbx
	push	rax
	nop	
	cmp	rdi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rdi
	lea	rsi, [rsi]
	or	rbx, 1
	mov	r14, -1
	jmp	.label_766
	nop	word ptr cs:[rax + rax]
.label_767:
	lea	rsi, [rsi]
	add	rbx, 2
.label_766:
	mov	rbp, rbp
	cmp	rbx, -1
	nop	
	je	.label_768
	nop	
	mov	rdi, rbx
	call	is_prime
	test	al, al
	mov	rbp, rbp
	je	.label_767
	mov	rsp, rsp
	mov	r14, rbx
.label_768:
	nop	
	mov	rax, r14
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bbd0

	.globl is_prime
	.type is_prime, @function
is_prime:
	lea	rdi, [rdi]
	mov	r8, rdi
	nop	
	mov	esi, 3
	nop	
	mov	edi, 9
	nop	
	mov	ecx, 0x10
	cmp	r8, 0xa
	jb	.label_769
	nop	
.label_770:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_769
	add	rdi, rcx
	mov	rbp, rbp
	add	rsi, 2
	lea	rdi, [rdi]
	add	rcx, 8
	mov	rbp, rbp
	cmp	rdi, r8
	jb	.label_770
.label_769:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r8
	div	rsi
	lea	rsi, [rsi]
	test	rdx, rdx
	setne	al
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bc30

	.globl free_entry
	.type free_entry, @function
free_entry:
	lea	rsi, [rsi]
	mov	qword ptr [rsi], 0
	nop	
	mov	rax, qword ptr [rdi + 0x48]
	nop	
	mov	qword ptr [rsi + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bc50

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	rsp, rsp
	mov	byte ptr [rdi + 0x1c], 1
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x14], 0
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_771:
	lea	rdi, [rdi]
	mov	dword ptr [rdi + rax*4], esi
	lea	rsi, [rsi]
	inc	rax
	cmp	rax, 4
	mov	rbp, rbp
	jne	.label_771
	mov	rbp, rbp
	mov	dword ptr [rdi + 0x10], esi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bc90

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bca0

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	mov	al, byte ptr [rdi + 0x1c]
	lea	rsi, [rsi]
	xor	al, 1
	movzx	edx, al
	add	edx, dword ptr [rdi + 0x14]
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	mov	rbp, rbp
	mov	ecx, dword ptr [rdi + 0x18]
	cmp	edx, ecx
	lea	rsi, [rsi]
	jne	.label_772
	mov	rbp, rbp
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	mov	rbp, rbp
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_772:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bcf0

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	nop	
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	i_ring_empty
	mov	rbp, rbp
	test	al, al
	mov	rbp, rbp
	jne	.label_773
	mov	rbp, rbp
	mov	ecx, dword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbx + 0x14]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbx + rdx*4]
	mov	rsp, rsp
	mov	dword ptr [rbx + rdx*4], ecx
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbx + 0x14]
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbx + 0x18]
	jne	.label_774
	mov	byte ptr [rbx + 0x1c], 1
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_774:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rbx + 0x14], ecx
	mov	rbp, rbp
	pop	rbx
	ret	
.label_773:
	mov	rbp, rbp
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40bd50

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
	je	.label_775
	nop	
	mov	rax, rcx
.label_775:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bd90

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	nop	
	sub	rsp, 0xc8
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_776
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x60], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x70], xmm4
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x80], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_776:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	dl, 0x40
	je	.label_777
	lea	rdi, [rdi]
	lea	rax, [rsp]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xc0], rax
	lea	rsi, [rsi]
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x18
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_779
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_778
.label_779:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xb8], rcx
.label_778:
	mov	ecx, dword ptr [rax]
.label_777:
	xor	eax, eax
	call	openat
	lea	rsi, [rsi]
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40beb0

	.globl opendirat
	.type opendirat, @function
opendirat:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	push	r14
	push	rbx
	mov	r14, rcx
	mov	rsp, rsp
	or	edx, 0x90900
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rsp, rsp
	xor	eax, eax
	call	openat_safer
	lea	rsi, [rsi]
	mov	ebp, eax
	test	ebp, ebp
	js	.label_780
	mov	rsp, rsp
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_781
	mov	dword ptr [r14], ebp
	mov	rsp, rsp
	jmp	.label_780
.label_781:
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	mov	rsp, rsp
	call	close
	lea	rsi, [rsi]
	mov	dword ptr [rbx], r14d
	lea	rsi, [rsi]
	xor	ebx, ebx
.label_780:
	nop	
	mov	rax, rbx
	mov	rsp, rsp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40bf30

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
	ja	.label_782
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
	jmp	.label_783
.label_782:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_783:
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
	#Procedure 0x40bfa0

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
	js	.label_784
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_785
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
	je	.label_784
.label_785:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_784
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_786
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_786:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_784:
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
	.align	16
	#Procedure 0x40c060

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	mov	rbp, rbp
	je	.label_795
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_795:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0xd0]
	nop	
	mov	qword ptr [rsp + 0xb8], rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x10
	nop	
	cmp	esi, 0xb
	mov	rsp, rsp
	ja	.label_797
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	lea	rsi, [rsi]
	jb	.label_787
	mov	rsp, rsp
	mov	eax, 0x514
	lea	rsi, [rsi]
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_790
	mov	rbp, rbp
	test	esi, esi
	jne	.label_797
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_800
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	lea	ecx, [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rdi, [rdi]
	jmp	.label_798
.label_797:
	lea	eax, [rsi - 0x400]
	lea	rdi, [rdi]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_791
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_790
	lea	rdi, [rdi]
	mov	ecx, 0x102
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_794
.label_787:
	lea	rsi, [rsi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_790:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_799
	mov	rax, rcx
	mov	rbp, rbp
	add	rax, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_789
.label_799:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_789:
	mov	edx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_794:
	nop	
	cmp	eax, 6
	jne	.label_791
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_793
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rsi, [rsi]
	jmp	.label_796
.label_791:
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_788
	mov	rbp, rbp
	mov	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_792
.label_800:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_798:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_793:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_796:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_788:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_792:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	rsp, rsp
	call	fcntl
	lea	rsi, [rsi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c300

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	lea	rdi, [rdi]
	mov	ecx, esi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	edx, ecx
	jmp	fcntl
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c320

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	lea	rsi, [rsi]
	js	.label_801
	mov	esi, 0x406
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	nop	
	jns	.label_802
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_802
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_803
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_804
.label_802:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	mov	rbp, rbp
	jmp	.label_804
.label_801:
	mov	rbp, rbp
	mov	edi, ebp
	mov	rbp, rbp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_804:
	test	ebx, ebx
	js	.label_803
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_803
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_805
	or	ecx, 1
	nop	
	mov	esi, 2
	mov	rbp, rbp
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	mov	rsp, rsp
	call	fcntl
	mov	rbp, rbp
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_803
.label_805:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	lea	rdi, [rdi]
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_803:
	lea	rdi, [rdi]
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c430

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
	#Procedure 0x40c450
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	rsp, rsp
	mov	cl, sil
	rol	rdi, cl
	mov	rax, rdi
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c460
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	cl, sil
	ror	rdi, cl
	lea	rdi, [rdi]
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c470
	.globl rotl32
	.type rotl32, @function
rotl32:

	lea	rdi, [rdi]
	mov	cl, sil
	rol	edi, cl
	mov	eax, edi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c480
	.globl rotr32
	.type rotr32, @function
rotr32:

	nop
	mov	cl, sil
	ror	edi, cl
	mov	eax, edi
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c490
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	cl, sil
	mov	rbp, rbp
	rol	rdi, cl
	mov	rax, rdi
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c4a0

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	cl, sil
	ror	rdi, cl
	mov	rax, rdi
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c4b0
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	cl, sil
	shl	eax, cl
	lea	rsi, [rsi]
	mov	ecx, 0x10
	mov	rsp, rsp
	sub	ecx, esi
	mov	rbp, rbp
	shr	edi, cl
	or	edi, eax
	mov	rbp, rbp
	movzx	eax, di
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c4e0
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	rbp, rbp
	mov	eax, edi
	mov	cl, sil
	shr	eax, cl
	lea	rdi, [rdi]
	mov	ecx, 0x10
	mov	rsp, rsp
	sub	ecx, esi
	shl	edi, cl
	lea	rsi, [rsi]
	or	edi, eax
	movzx	eax, di
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c510
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	rbp, rbp
	mov	eax, edi
	nop	
	mov	cl, sil
	mov	rsp, rsp
	shl	eax, cl
	mov	rsp, rsp
	mov	ecx, 8
	sub	ecx, esi
	nop	
	shr	edi, cl
	lea	rdi, [rdi]
	or	edi, eax
	movzx	eax, dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c540
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	rsp, rsp
	mov	cl, sil
	nop	
	shr	eax, cl
	mov	rsp, rsp
	mov	ecx, 8
	lea	rsi, [rsi]
	sub	ecx, esi
	lea	rdi, [rdi]
	shl	edi, cl
	or	edi, eax
	movzx	eax, dil
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c570

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
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c640

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x40c650

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c660

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section .text
	.align	16
	#Procedure 0x40c670

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
