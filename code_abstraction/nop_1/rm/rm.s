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
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ca0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.36
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.12
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
	mov	ebx, OFFSET FLAT:.str.12
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
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
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.12
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.12
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.50
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
	.align	16
	#Procedure 0x401dc0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x40
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.14
	mov	esi, OFFSET FLAT:.str.15
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.14
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	call	atexit
	lea	rdi, [rsp + 0x20]
	call	rm_option_init
	mov	r15b, 1
	jmp	.label_13
	nop	word ptr [rax + rax]
.label_11:
	mov	dword ptr [rsp + 0x24], 3
	mov	byte ptr [rsp + 0x20], 0
.label_13:
	xor	r14d, r14d
	jmp	.label_15
.label_29:
	mov	byte ptr [rsp + 0x29], 1
	nop	word ptr [rax + rax]
.label_15:
	mov	edx, OFFSET FLAT:.str.16
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x68
	jle	.label_19
	lea	ecx, [rax - 0x76]
	cmp	ecx, 0xe
	ja	.label_23
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_25]]
.label_873:
	mov	byte ptr [rsp + 0x3a], 1
	jmp	.label_15
	nop	word ptr cs:[rax + rax]
.label_19:
	cmp	eax, 0x51
	jle	.label_28
	cmp	eax, 0x52
	je	.label_29
	cmp	eax, 0x64
	jne	.label_30
	mov	byte ptr [rsp + 0x2a], 1
	jmp	.label_15
.label_28:
	cmp	eax, 0x48
	jle	.label_31
	cmp	eax, 0x49
	jne	.label_17
.label_14:
	mov	dword ptr [rsp + 0x24], 4
	mov	byte ptr [rsp + 0x20], 0
	mov	r14b, 1
	jmp	.label_15
.label_23:
	cmp	eax, 0x69
	je	.label_11
	cmp	eax, 0x72
	je	.label_29
	jmp	.label_17
.label_874:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	test	rsi, rsi
	je	.label_11
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.17_0
	mov	edx, OFFSET FLAT:interactive_args
	mov	ecx, OFFSET FLAT:interactive_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + interactive_types]]
	cmp	eax, 2
	je	.label_11
	cmp	eax, 1
	je	.label_14
	test	eax, eax
	jne	.label_15
	jmp	.label_18
.label_875:
	mov	byte ptr [rsp + 0x28], 1
	jmp	.label_15
.label_876:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [rbx + rax*8 - 8]
	mov	esi, OFFSET FLAT:.str.18_0
	call	strcmp
	xor	r15d, r15d
	test	eax, eax
	je	.label_15
	jmp	.label_21
.label_877:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	test	rax, rax
	mov	r15b, 1
	je	.label_15
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x61
	jne	.label_27
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x6c
	jne	.label_27
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x6c
	jne	.label_27
	cmp	byte ptr [rax + 3], 0
	jne	.label_27
	mov	byte ptr [rsp + 0x38], 1
	mov	r15b, 1
	jmp	.label_15
.label_878:
	mov	byte ptr [rsp + 0x39], 1
	jmp	.label_15
	nop	word ptr cs:[rax + rax]
.label_30:
	cmp	eax, 0x66
	jne	.label_17
	mov	dword ptr [rsp + 0x24], 5
	mov	byte ptr [rsp + 0x20], 1
	jmp	.label_13
.label_18:
	mov	dword ptr [rsp + 0x24], 5
	jmp	.label_13
.label_31:
	cmp	eax, -1
	jne	.label_33
	cmp	dword ptr [dword ptr [rip + optind]],  ebp
	jge	.label_35
	test	r15b, r15b
	je	.label_37
	mov	al, byte ptr [rsp + 0x29]
	test	al, al
	je	.label_37
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rsp + 0x30], rax
	test	rax, rax
	je	.label_12
.label_37:
	movsxd	r12,  dword ptr [dword ptr [rip + optind]]
	test	r14b, r14b
	je	.label_16
	movsxd	r15, ebp
	sub	r15, r12
	mov	bpl, byte ptr [rsp + 0x29]
	cmp	r15d, 3
	ja	.label_20
	test	bpl, bpl
	je	.label_16
.label_20:
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, r15
	call	select_plural
	xor	edi, edi
	test	bpl, bpl
	je	.label_22
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, OFFSET FLAT:.str.31
	jmp	.label_24
.label_35:
	xor	ebp, ebp
	cmp	byte ptr [rsp + 0x20], 0
	jne	.label_26
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
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
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, OFFSET FLAT:.str.33
.label_24:
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	xor	ebp, ebp
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	r8, r15
	call	__fprintf_chk
	call	yesno
	test	al, al
	je	.label_26
.label_16:
	lea	rdi, [rbx + r12*8]
	lea	rsi, [rsp + 0x20]
	call	rm
	cmp	eax, 4
	je	.label_34
	mov	ecx, eax
	or	ecx, 1
	cmp	ecx, 3
	jne	.label_36
.label_34:
	cmp	eax, 4
	sete	al
	movzx	ebp, al
.label_26:
	mov	eax, ebp
	add	rsp, 0x40
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_33:
	cmp	eax, 0xffffff7d
	je	.label_32
	cmp	eax, 0xffffff7e
	jne	.label_17
	xor	edi, edi
	call	usage
.label_32:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp + 0x10], 0
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str.26
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.23
	mov	r9d, OFFSET FLAT:.str.24
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_17:
	mov	edi, ebp
	mov	rsi, rbx
	call	diagnose_leading_hyphen
	mov	edi, 1
	call	usage
.label_27:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_21:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_36:
	mov	edi, OFFSET FLAT:.str.34
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 0x173
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_12:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str_1
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402250

	.globl rm_option_init
	.type rm_option_init, @function
rm_option_init:
	push	rbx
	mov	rbx, rdi
	mov	byte ptr [rbx], 0
	mov	dword ptr [rbx + 4], 4
	mov	byte ptr [rbx + 8], 0
	mov	byte ptr [rbx + 0xa], 0
	mov	byte ptr [rbx + 9], 0
	mov	qword ptr [rbx + 0x10], 0
	mov	byte ptr [rbx + 0x18], 0
	xor	edi, edi
	call	isatty
	test	eax, eax
	setne	byte ptr [rbx + 0x19]
	mov	byte ptr [rbx + 0x1a], 0
	mov	byte ptr [rbx + 0x1b], 0
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402290

	.globl diagnose_leading_hyphen
	.type diagnose_leading_hyphen, @function
diagnose_leading_hyphen:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r14, rsi
	cmp	edi, 2
	jl	.label_40
	movsxd	r12, edi
	mov	ebx, 1
	lea	r15, [rsp + 8]
	nop	word ptr [rax + rax]
.label_39:
	mov	rbp, qword ptr [r14 + rbx*8]
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2d
	jne	.label_38
	cmp	byte ptr [rbp + 1], 0
	je	.label_38
	mov	rdi, rbp
	mov	rsi, r15
	call	__lstat
	test	eax, eax
	je	.label_41
.label_38:
	inc	rbx
	cmp	rbx, r12
	jl	.label_39
	jmp	.label_40
.label_41:
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	r14, qword ptr [r14]
	mov	edi, 1
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r13, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rbx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, r14
	mov	r8, r13
	mov	r9, rbx
	call	__fprintf_chk
.label_40:
	add	rsp, 0x98
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
	#Procedure 0x402360

	.globl select_plural
	.type select_plural, @function
select_plural:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x402370

	.globl rm
	.type rm, @function
rm:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebp, 2
	cmp	qword ptr [rdi], 0
	je	.label_43
	mov	esi, 0x218
	cmp	byte ptr [r14 + 8], 0
	je	.label_44
	mov	esi, 0x258
.label_44:
	xor	edx, edx
	call	xfts_open
	mov	r15, rax
	mov	rdi, r15
	call	rpl_fts_read
	mov	ebx, 2
	test	rax, rax
	je	.label_48
	nop	word ptr cs:[rax + rax]
.label_49:
	mov	rdi, r15
	mov	rsi, rax
	mov	rdx, r14
	call	rm_fts
	cmp	eax, 4
	je	.label_45
	mov	ecx, eax
	or	ecx, 1
	cmp	ecx, 3
	jne	.label_47
.label_45:
	cmp	eax, 3
	mov	ebp, ebx
	cmove	ebp, eax
	cmp	ebx, 2
	cmovne	ebp, ebx
	cmp	eax, 4
	cmove	ebp, eax
	mov	rdi, r15
	call	rpl_fts_read
	test	rax, rax
	mov	ebx, ebp
	jne	.label_49
	jmp	.label_42
.label_48:
	mov	ebp, 2
.label_42:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	test	r14d, r14d
	je	.label_46
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rcx
	call	error
	mov	ebp, 4
.label_46:
	mov	rdi, r15
	call	rpl_fts_close
	test	eax, eax
	je	.label_43
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	mov	ebp, 4
.label_43:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_47:
	mov	edi, OFFSET FLAT:.str.1_0
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 0x261
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.rm
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x4024a0

	.globl rm_fts
	.type rm_fts, @function
rm_fts:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r13, rdx
	mov	r15, rsi
	mov	r14, rdi
	movzx	eax, word ptr [r15 + 0x70]
	lea	ecx, [rax - 1]
	cmp	ecx, 0xc
	ja	.label_67
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_68]]
.label_903:
	movzx	eax, ax
	cmp	eax, 6
	jne	.label_56
	cmp	byte ptr [r13 + 8], 0
	je	.label_56
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_56
	mov	rax, qword ptr [r15 + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_70
.label_56:
	movzx	ebx, word ptr [r15 + 0x70]
	or	ebx, 2
	cmp	ebx, 6
	sete	al
	movzx	edx, al
	mov	r8d, 3
	xor	r9d, r9d
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, r13
	call	prompt
	mov	ebp, eax
	cmp	ebp, 2
	jne	.label_52
	movzx	eax, bx
	cmp	eax, 6
	sete	al
	movzx	ecx, al
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	excise
.label_901:
	cmp	byte ptr [r13 + 9], 0
	jne	.label_58
	cmp	byte ptr [r13 + 0xa], 0
	je	.label_60
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	call	is_empty_dir
	test	al, al
	je	.label_60
.label_58:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_63
	mov	rdi, qword ptr [r15 + 0x30]
	call	last_component
	mov	rdi, rax
	call	dot_or_dotdot
	test	al, al
	je	.label_65
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp], rax
	mov	ebp, 4
	xor	edi, edi
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str_3
	call	quotearg_n_style
	mov	r13, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str.2_1
	call	quotearg_n_style
	mov	r12, rax
	mov	rdx, qword ptr [r15 + 0x38]
	mov	edi, 2
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp]
	mov	rcx, r13
	mov	r8, r12
	mov	r9, rbx
	call	error
	jmp	.label_51
.label_902:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_57
.label_904:
	mov	ebx, dword ptr [r15 + 0x40]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_57:
	mov	rdi, r14
	mov	rsi, r15
	call	fts_skip_tree
	mov	ebp, 4
	jmp	.label_52
.label_70:
	mov	rdi, r15
	call	mark_ancestor_dirs
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	ebp, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_52
.label_60:
	mov	r12d, 0x27
	cmp	byte ptr [r13 + 0xa], 0
	jne	.label_66
	mov	r12d, 0x15
.label_66:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	ebp, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbx
	call	error
	jmp	.label_54
.label_65:
	mov	rax, qword ptr [r13 + 0x10]
	test	rax, rax
	je	.label_55
	mov	rcx, qword ptr [r15 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_55
	mov	rcx, qword ptr [r15 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_55
	mov	rax, qword ptr [r15 + 0x38]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_59
	cmp	byte ptr [rax + 1], 0
	je	.label_61
.label_59:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_0
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str_1
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	jmp	.label_62
.label_55:
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_63
	mov	rdi, qword ptr [r15 + 0x30]
	mov	esi, OFFSET FLAT:.str.2_1
	xor	edx, edx
	call	file_name_concat
	mov	rbp, rax
	test	rbp, rbp
	je	.label_69
	lea	rsi, [rsp + 8]
	mov	rdi, rbp
	call	__lstat
	test	eax, eax
	je	.label_71
.label_69:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r13, rax
	mov	rdx, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	call	error
	mov	rdi, rbp
	call	free
	jmp	.label_57
.label_71:
	mov	rdi, rbp
	call	free
	mov	rax, qword ptr [r14 + 0x18]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_53
.label_63:
	lea	r9, [rsp + 8]
	mov	edx, 1
	mov	r8d, 2
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, r13
	call	prompt
	mov	ebp, eax
	cmp	ebp, 2
	jne	.label_64
	cmp	dword ptr [rsp + 8], 4
	jne	.label_64
	mov	ecx, 1
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	call	excise
	mov	ebp, eax
	mov	rdi, r14
	mov	rsi, r15
	call	fts_skip_tree
.label_64:
	cmp	ebp, 2
	je	.label_52
.label_54:
	mov	rdi, r15
	call	mark_ancestor_dirs
.label_51:
	mov	rdi, r14
	mov	rsi, r15
	call	fts_skip_tree
.label_52:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_53:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_0
	jmp	.label_50
.label_61:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_62:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_0
.label_50:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_57
.label_67:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_1
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movzx	ebp, word ptr [r15 + 0x70]
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	mov	r9d, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rdx, r14
	mov	ecx, ebp
	mov	r8, rbx
	call	error
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4029c0

	.globl is_empty_dir
	.type is_empty_dir, @function
is_empty_dir:
	push	rbp
	push	r14
	push	rbx
	xor	ebx, ebx
	mov	edx, 0x30900
	xor	eax, eax
	call	openat
	mov	ebp, eax
	test	ebp, ebp
	js	.label_73
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_74
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rdi, rbx
	call	readdir_ignoring_dot_and_dotdot
	mov	r14, rax
	mov	ebp, dword ptr [rbp]
	mov	rdi, rbx
	call	closedir
	test	r14, r14
	je	.label_72
	xor	ebx, ebx
	jmp	.label_73
.label_74:
	mov	edi, ebp
	call	close
	xor	ebx, ebx
	jmp	.label_73
.label_72:
	test	ebp, ebp
	sete	bl
.label_73:
	mov	al, bl
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402a30

	.globl mark_ancestor_dirs
	.type mark_ancestor_dirs, @function
mark_ancestor_dirs:
	mov	rax, qword ptr [rdi + 8]
	jmp	.label_75
	nop	word ptr cs:[rax + rax]
.label_76:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_75:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_77
	cmp	qword ptr [rax + 0x20], 0
	je	.label_76
.label_77:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a60

	.globl fts_skip_tree
	.type fts_skip_tree, @function
fts_skip_tree:
	push	rbx
	mov	rbx, rdi
	mov	edx, 4
	call	rpl_fts_set
	mov	rdi, rbx
	pop	rbx
	jmp	rpl_fts_read
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a80

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2e
	jne	.label_78
	movzx	ecx, byte ptr [rdi + 1]
	mov	eax, 2
	cmp	ecx, 0x2e
	je	.label_79
	mov	eax, 1
.label_79:
	movzx	eax, byte ptr [rdi + rax]
	test	al, al
	sete	cl
	cmp	eax, 0x2f
	sete	al
	or	al, cl
	ret	
.label_78:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ab0

	.globl prompt
	.type prompt, @function
prompt:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r13, r9
	mov	dword ptr [rsp + 0xc], r8d
	mov	r12, rcx
	mov	r15d, edx
	mov	r14, rsi
	mov	ebp, dword ptr [rdi + 0x2c]
	mov	rbx, qword ptr [r14 + 0x30]
	mov	rax, qword ptr [r14 + 0x38]
	mov	qword ptr [rsp + 0x10], rax
	test	r13, r13
	je	.label_92
	mov	dword ptr [r13], 2
.label_92:
	lea	rdi, [rsp + 0x28]
	call	cache_stat_init
	test	r13, r13
	je	.label_100
	mov	edi, ebp
	mov	dword ptr [rsp + 0x24], ebp
	mov	rsi, rbx
	mov	qword ptr [rsp + 0x18], rbx
	call	is_empty_dir
	mov	bl, al
	movzx	eax, bl
	add	eax, 3
	mov	dword ptr [r13], eax
	jmp	.label_98
.label_100:
	mov	qword ptr [rsp + 0x18], rbx
	mov	dword ptr [rsp + 0x24], ebp
	xor	ebx, ebx
.label_98:
	mov	ebp, 3
	cmp	qword ptr [r14 + 0x20], 0
	jne	.label_87
	mov	eax, dword ptr [r12 + 4]
	cmp	eax, 5
	je	.label_80
	xor	r14d, r14d
	cmp	byte ptr [r12], 0
	jne	.label_94
	cmp	eax, 3
	je	.label_96
	cmp	byte ptr [r12 + 0x19], 0
	je	.label_94
.label_96:
	lea	rdx, [rsp + 0x28]
	mov	edi, dword ptr [rsp + 0x24]
	mov	rsi, qword ptr [rsp + 0x18]
	call	write_protected_non_symlink
	mov	ebp, eax
	call	__errno_location
	mov	r14d, dword ptr [rax]
	test	ebp, ebp
	jne	.label_83
.label_94:
	cmp	dword ptr [r12 + 4], 3
	mov	ebp, 0
	jne	.label_80
.label_83:
	movzx	r13d, r15b
	shl	r13d, 2
	test	ebp, ebp
	js	.label_85
	xor	r15b, 1
	je	.label_85
	lea	rdx, [rsp + 0x28]
	mov	edi, dword ptr [rsp + 0x24]
	mov	rsi, qword ptr [rsp + 0x18]
	call	cache_fstatat
	test	eax, eax
	je	.label_93
	call	__errno_location
	mov	r15d, dword ptr [rax]
	jmp	.label_89
.label_85:
	mov	r15d, r14d
.label_84:
	mov	r14d, r13d
.label_99:
	test	ebp, ebp
	mov	r13d, ebp
	mov	ebp, 3
	js	.label_89
	cmp	r14d, 4
	je	.label_91
	cmp	r14d, 0xa
	jne	.label_88
	cmp	dword ptr [r12 + 4], 3
	jne	.label_80
	jmp	.label_88
.label_93:
	mov	r15d, r14d
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	mov	r14d, 0xa
	cmp	eax, 0xa000
	je	.label_99
	cmp	eax, 0x4000
	mov	eax, 4
	cmove	r13d, eax
	jmp	.label_84
.label_91:
	cmp	byte ptr [r12 + 9], 0
	jne	.label_88
	cmp	byte ptr [r12 + 0xa], 0
	mov	r15d, 0x15
	je	.label_89
	mov	al, bl
	xor	al, 1
	jne	.label_89
.label_88:
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x10]
	call	quotearg_style
	mov	r15, rax
	cmp	r14d, 4
	setne	al
	cmp	dword ptr [rsp + 0xc], 2
	setne	cl
	or	cl, al
	or	bl, cl
	je	.label_95
	lea	rdx, [rsp + 0x28]
	mov	edi, dword ptr [rsp + 0x24]
	mov	rsi, qword ptr [rsp + 0x18]
	call	cache_fstatat
	test	eax, eax
	je	.label_90
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	mov	rcx, r15
	call	error
	mov	ebp, 4
	jmp	.label_87
.label_89:
	mov	ebp, 4
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x10]
	call	quotearg_style
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	jmp	.label_87
.label_95:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	test	r13d, r13d
	je	.label_101
	mov	esi, OFFSET FLAT:.str.19_0
	jmp	.label_81
.label_90:
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	test	r13d, r13d
	je	.label_86
	mov	esi, OFFSET FLAT:.str.21_0
	jmp	.label_82
.label_101:
	mov	esi, OFFSET FLAT:.str.20
.label_81:
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	r8, r15
	call	__fprintf_chk
	jmp	.label_97
.label_86:
	mov	esi, OFFSET FLAT:.str.22
.label_82:
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	r12,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rsp + 0x28]
	call	file_type
	mov	rbx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r13
	mov	rcx, r12
	mov	r8, rbx
	mov	r9, r15
	call	__fprintf_chk
.label_97:
	call	yesno
	test	al, al
	je	.label_87
.label_80:
	mov	ebp, 2
.label_87:
	mov	eax, ebp
	add	rsp, 0xb8
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
	#Procedure 0x402dc0

	.globl excise
	.type excise, @function
excise:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	ebx, ecx
	mov	r12, rdx
	mov	r14, rsi
	mov	rbp, rdi
	movzx	edx, bl
	shl	edx, 9
	mov	edi, dword ptr [rbp + 0x2c]
	mov	rsi, qword ptr [r14 + 0x30]
	call	unlinkat
	test	eax, eax
	je	.label_109
	call	__errno_location
	mov	r13, rax
	mov	ebx, dword ptr [r13]
	cmp	ebx, 0x1e
	jne	.label_110
	mov	edi, dword ptr [rbp + 0x2c]
	mov	rsi, qword ptr [r14 + 0x30]
	lea	rdx, [rsp + 8]
	call	lstatat
	test	eax, eax
	je	.label_105
	cmp	dword ptr [r13], 2
	je	.label_107
.label_105:
	mov	dword ptr [r13], 0x1e
.label_107:
	mov	ebx, dword ptr [r13]
.label_110:
	mov	rdi, r12
	mov	esi, ebx
	call	ignorable_missing
	mov	r15d, 2
	test	al, al
	jne	.label_102
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 4
	jne	.label_103
	mov	eax, ebx
	cmp	ebx, 0x27
	ja	.label_103
	movabs	rcx, 0x8000320000
	bt	rcx, rax
	jae	.label_103
	mov	eax, dword ptr [r14 + 0x40]
	cmp	eax, 0xd
	je	.label_108
	cmp	eax, 1
	jne	.label_103
.label_108:
	mov	eax, dword ptr [r14 + 0x40]
	mov	dword ptr [r13], eax
.label_103:
	mov	ebx, dword ptr [r13]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	r15d, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	rdi, r14
	call	mark_ancestor_dirs
	jmp	.label_102
.label_109:
	mov	r15d, 2
	cmp	byte ptr [r12 + 0x1a], 0
	je	.label_102
	xor	edi, edi
	test	bl, bl
	je	.label_104
	mov	esi, OFFSET FLAT:.str.23_0
	jmp	.label_106
.label_104:
	mov	esi, OFFSET FLAT:.str.24_0
.label_106:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_102:
	mov	eax, r15d
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f30

	.globl readdir_ignoring_dot_and_dotdot
	.type readdir_ignoring_dot_and_dotdot, @function
readdir_ignoring_dot_and_dotdot:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	nop	word ptr [rax + rax]
.label_111:
	mov	rdi, r14
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	mov	eax, 0
	je	.label_112
	mov	rdi, rbx
	add	rdi, 0x13
	call	dot_or_dotdot
	test	al, al
	mov	rax, rbx
	jne	.label_111
.label_112:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f70

	.globl cache_stat_init
	.type cache_stat_init, @function
cache_stat_init:
	mov	qword ptr [rdi + 0x30], -1
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402f80

	.globl write_protected_non_symlink
	.type write_protected_non_symlink, @function
write_protected_non_symlink:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	mov	ebp, edi
	call	can_write_any_file
	test	al, al
	je	.label_115
	xor	eax, eax
	jmp	.label_113
.label_115:
	mov	edi, ebp
	mov	rsi, r14
	mov	rdx, rbx
	call	cache_fstatat
	mov	ecx, eax
	mov	eax, 0xffffffff
	test	ecx, ecx
	jne	.label_113
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_114
	xor	eax, eax
	jmp	.label_113
.label_114:
	mov	edx, 2
	mov	ecx, 0x200
	mov	edi, ebp
	mov	rsi, r14
	call	faccessat
	test	eax, eax
	mov	eax, 0
	je	.label_113
	call	__errno_location
	mov	rcx, rax
	mov	eax, 1
	cmp	dword ptr [rcx], 0xd
	je	.label_113
	mov	eax, 0xffffffff
.label_113:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403000

	.globl cache_fstatat
	.type cache_fstatat, @function
cache_fstatat:
	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rbx + 0x30]
	cmp	rcx, -1
	jne	.label_116
	mov	ecx, 0x100
	mov	rdx, rbx
	call	fstatat
	test	eax, eax
	je	.label_118
	mov	qword ptr [rbx + 0x30], -2
	call	__errno_location
	movsxd	rax, dword ptr [rax]
	mov	qword ptr [rbx + 8], rax
.label_118:
	mov	rcx, qword ptr [rbx + 0x30]
.label_116:
	xor	eax, eax
	test	rcx, rcx
	jns	.label_117
	mov	ebx, dword ptr [rbx + 8]
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	eax, 0xffffffff
.label_117:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403050

	.globl ignorable_missing
	.type ignorable_missing, @function
ignorable_missing:
	cmp	byte ptr [rdi], 0
	je	.label_119
	push	rax
	mov	edi, esi
	call	nonexistent_file_errno
	add	rsp, 8
	ret	
.label_119:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403070

	.globl nonexistent_file_errno
	.type nonexistent_file_errno, @function
nonexistent_file_errno:
	mov	al, 1
	cmp	edi, 0x16
	ja	.label_120
	mov	ecx, 0x500004
	bt	ecx, edi
	jb	.label_122
.label_120:
	cmp	edi, 0x54
	jne	.label_121
.label_122:
	ret	
.label_121:
	xor	eax, eax
	ret	
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403090

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030a0

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
	je	.label_124
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_123:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_129
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_126
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_128
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_127
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_129
.label_127:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_129
.label_128:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_129:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_123
	jmp	.label_125
.label_124:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_125:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_126:
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
	#Procedure 0x4031a0

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
	je	.label_130
	mov	esi, OFFSET FLAT:.str.1_1
	jmp	.label_131
.label_130:
	mov	esi, OFFSET FLAT:.str_4
.label_131:
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
	#Procedure 0x403210

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
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_134
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_133:
	test	rbp, rbp
	je	.label_132
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_135
.label_132:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_136
	nop	word ptr cs:[rax + rax]
.label_135:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_1
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_136:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_133
.label_134:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	putc_unlocked
	nop	
	.section	.text
	.align	16
	#Procedure 0x403310

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
	jns	.label_137
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
.label_137:
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
	#Procedure 0x403380
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
	je	.label_138
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_139:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_138
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_139
.label_138:
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
	#Procedure 0x4033f0
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403400

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	push	r14
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
	mov	rdi, rbx
	call	freadahead
	xor	ebp, ebp
	test	rax, rax
	je	.label_140
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_140
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_140:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	close_stream
	test	bpl, bpl
	jne	.label_141
	test	eax, eax
	jne	.label_141
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_141:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_6
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_142
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_143
.label_142:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_2
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_143:
	call	close_stdout
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034d0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name_0]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034e0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034f0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_144
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_146
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_146
.label_144:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_145
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_146:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_7
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name_0]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_147
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_145:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_147:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_2
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4035b0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_148:
	movzx	eax, byte ptr [rdi + 1]
	inc	rdi
	cmp	eax, 0x2f
	je	.label_148
	xor	ecx, ecx
	mov	rax, rdi
	jmp	.label_151
	nop	word ptr cs:[rax + rax]
.label_150:
	inc	rax
	mov	cl, dl
.label_151:
	movzx	esi, byte ptr [rax]
	mov	dl, 1
	cmp	esi, 0x2f
	je	.label_150
	test	sil, sil
	je	.label_152
	mov	dl, cl
	and	dl, 1
	je	.label_149
	xor	ecx, ecx
.label_149:
	test	dl, dl
	cmovne	rdi, rax
	mov	dl, cl
	jmp	.label_150
.label_152:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403610

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_153:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_154
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_153
.label_154:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403640

	.globl file_type
	.type file_type, @function
file_type:
	mov	eax, 0xf000
	and	eax, dword ptr [rdi + 0x18]
	cmp	eax, 0x5fff
	jle	.label_155
	cmp	eax, 0x9fff
	jg	.label_160
	cmp	eax, 0x6000
	je	.label_162
	cmp	eax, 0x8000
	jne	.label_161
	cmp	qword ptr [rdi + 0x30], 0
	je	.label_157
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 5
	jmp	dcgettext
.label_155:
	cmp	eax, 0x1000
	je	.label_156
	cmp	eax, 0x2000
	je	.label_159
	cmp	eax, 0x4000
	jne	.label_161
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_3
	mov	edx, 5
	jmp	dcgettext
.label_160:
	cmp	eax, 0xa000
	je	.label_158
	cmp	eax, 0xc000
	jne	.label_161
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	jmp	dcgettext
.label_162:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	jmp	dcgettext
.label_156:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	edx, 5
	jmp	dcgettext
.label_159:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	edx, 5
	jmp	dcgettext
.label_158:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_2
	mov	edx, 5
	jmp	dcgettext
.label_161:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	jmp	dcgettext
.label_157:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_8
	mov	edx, 5
	jmp	dcgettext
	nop	
	.section	.text
	.align	16
	#Procedure 0x403730

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_163
	pop	rcx
	ret	
.label_163:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403750

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdx
	mov	r14, rsi
	mov	r13, rdi
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	sub	rbx, r13
	add	rbx, rbp
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	test	rbp, rbp
	je	.label_167
	movzx	ecx, byte ptr [rbx + r13 - 1]
	cmp	ecx, 0x2f
	jne	.label_168
	mov	qword ptr [rsp + 8], r14
	xor	r12d, r12d
	jmp	.label_171
.label_167:
	movzx	ecx, byte ptr [r14]
	mov	r12b, 0x2e
	cmp	ecx, 0x2f
	je	.label_166
	jmp	.label_169
.label_168:
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2f
	jne	.label_170
.label_169:
	xor	r12d, r12d
	jmp	.label_166
.label_170:
	mov	r12b, 0x2f
.label_166:
	mov	qword ptr [rsp + 8], r14
.label_171:
	test	r12b, r12b
	setne	cl
	movzx	ebp, cl
	lea	rcx, [r15 + rbx]
	lea	rdi, [rbp + rcx + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_165
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_164
	mov	qword ptr [rax], rbp
.label_164:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r15
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_165:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403840

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_172
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_173
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_173
	mov	esi, OFFSET FLAT:.str.2_4
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_174
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_174:
	mov	rbx, r14
.label_173:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_172:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_9
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038f0
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
	#Procedure 0x403930
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
	#Procedure 0x403940
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
	#Procedure 0x403950

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
	#Procedure 0x403990
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
	#Procedure 0x4039b0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_175
	test	rdx, rdx
	je	.label_175
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_175:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039e0
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
	.align	16
	#Procedure 0x403a60

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
.label_218:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_246
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_251]]
.label_897:
	mov	r12d, r11d
	mov	edi, OFFSET FLAT:.str.11_2
	mov	esi, r13d
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	edi, OFFSET FLAT:.str.12_1
	mov	esi, r13d
	call	gettext_quote
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x88], rax
.label_898:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_191
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_191
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_295:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_285
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_285:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_295
.label_191:
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
	jmp	.label_185
.label_890:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_185
.label_893:
	mov	al, 1
.label_891:
	mov	r15b, 1
.label_894:
	test	r15b, 1
	mov	cl, 1
	je	.label_211
	mov	cl, al
.label_211:
	mov	al, cl
.label_892:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_238
	test	r10, r10
	je	.label_289
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_217
.label_238:
	xor	ecx, ecx
	jmp	.label_217
.label_895:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_221
	test	r10, r10
	je	.label_237
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_229
.label_896:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_2
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_185
.label_289:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_217:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_1
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_185
.label_221:
	xor	eax, eax
	jmp	.label_229
.label_237:
	mov	eax, 1
.label_229:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_2
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_185:
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
	jmp	.label_202
	nop	dword ptr [rax + rax]
.label_234:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_202:
	cmp	rbp, -1
	je	.label_190
	cmp	rsi, rbp
	jne	.label_193
	jmp	.label_196
	nop	dword ptr [rax]
.label_190:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_196
.label_193:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_200
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_201
	cmp	rbp, -1
	jne	.label_201
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
.label_201:
	cmp	rbx, rbp
	jbe	.label_226
.label_200:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_261:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_230
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_232]]
.label_819:
	test	rsi, rsi
	jne	.label_178
	jmp	.label_239
	nop	word ptr cs:[rax + rax]
.label_226:
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
	jne	.label_256
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_261
	jmp	.label_203
.label_256:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_261
.label_823:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_278
	test	rsi, rsi
	jne	.label_282
	cmp	rbp, 1
	je	.label_239
	xor	r15d, r15d
	jmp	.label_183
.label_812:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_243
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_203
	cmp	edi, 2
	jne	.label_290
	mov	al, r11b
	and	al, 1
	jne	.label_294
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_297
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_297:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_228
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_228:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_192
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_192:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_259
.label_813:
	mov	bl, 0x62
	jmp	.label_207
.label_814:
	mov	cl, 0x74
	jmp	.label_210
.label_815:
	mov	bl, 0x76
	jmp	.label_207
.label_816:
	mov	bl, 0x66
	jmp	.label_207
.label_817:
	mov	cl, 0x72
	jmp	.label_210
.label_820:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_215
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_214
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
	jae	.label_223
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_223:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_240
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_240:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_247
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_247:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_254
.label_821:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_260
	cmp	r14d, 2
	jne	.label_264
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_214
.label_264:
	mov	rdi, r14
	jmp	.label_178
.label_822:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_269
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_214
	mov	rdi, r14
	jmp	.label_270
.label_230:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_272
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
.label_195:
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
	ja	.label_180
	test	dl, dl
	je	.label_180
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_183
.label_278:
	test	rsi, rsi
	jne	.label_187
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_187
.label_239:
	mov	dl, 1
.label_818:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_203
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_183
.label_243:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_178
	mov	r14, rdi
	inc	rsi
	jmp	.label_202
.label_215:
	mov	rdi, r14
.label_254:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_183
.label_269:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_210
.label_270:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_213
.label_210:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_203
.label_207:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_183
	jmp	.label_225
.label_272:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_227
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_227:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_288:
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
	je	.label_250
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_255
	cmp	rbp, -2
	je	.label_266
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_268
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_280:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_274
	bt	rsi, rdx
	jb	.label_277
.label_274:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_280
.label_268:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_204
	xor	r15d, r15d
.label_204:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_288
	jmp	.label_195
.label_187:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_183
.label_260:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_178
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_178
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_178
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_194
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_283
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_203
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_208
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_208:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_184
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_184:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_222
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_222:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_231
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_231:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_183
.label_178:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_183:
	test	r12b, r12b
	je	.label_176
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_244
	jmp	.label_206
	nop	word ptr cs:[rax + rax]
.label_176:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_206
.label_244:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_252
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_213
	jmp	.label_225
	nop	word ptr cs:[rax + rax]
.label_206:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_225
	jmp	.label_213
.label_252:
	mov	bl, r13b
	mov	rsi, r14
.label_225:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_203
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_276
	mov	al, r11b
	and	al, 1
	jne	.label_276
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_281
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_281:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_262
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_262:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_291
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_291:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_276:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_179
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_179:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_189
.label_282:
	xor	r15d, r15d
	jmp	.label_183
.label_180:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_197
	nop	word ptr cs:[rax + rax]
.label_199:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_197:
	test	dl, dl
	je	.label_209
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_220
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_241
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_241:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_220
	nop	word ptr [rax + rax]
.label_209:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_214
	cmp	r14d, 2
	jne	.label_233
	mov	al, r11b
	and	al, 1
	jne	.label_233
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_235
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_235:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_242
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_242:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_248
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_248:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_233:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_279
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_279:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_245
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_245:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_271
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_271:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_220:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_213
	test	r11b, 1
	je	.label_287
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_188
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_293
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_293:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_258
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_258:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_188
	nop	word ptr cs:[rax + rax]
.label_287:
	mov	r14, rdi
.label_188:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_199
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_199
.label_213:
	test	r11b, 1
	je	.label_212
	and	al, 1
	jne	.label_212
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_236
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_236:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_219
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_219:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_189
	nop	dword ptr [rax + rax]
.label_212:
	mov	bl, r13b
	mov	r14, rdi
.label_189:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_234
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_234
.label_290:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_259
.label_294:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_259:
	cmp	rcx, r10
	jae	.label_296
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_296:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_249
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_257
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_275
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_265
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_265:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_273
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_273:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_183
.label_249:
	xor	r15d, r15d
	jmp	.label_183
.label_257:
	xor	r15d, r15d
	jmp	.label_183
.label_275:
	xor	r15d, r15d
	jmp	.label_183
.label_250:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_186
.label_255:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_286
.label_266:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_292
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_181:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_177
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_181
	xor	r15d, r15d
	jmp	.label_186
.label_292:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_286:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_186:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_195
.label_177:
	xor	r15d, r15d
	jmp	.label_186
.label_194:
	xor	r15d, r15d
	jmp	.label_183
.label_283:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_183
	nop	dword ptr [rax + rax]
.label_196:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_205
	or	dl, al
	je	.label_214
.label_205:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_216
	or	dl, al
	jne	.label_216
	test	r8b, 1
	jne	.label_284
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_216
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_218
.label_216:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_224
	test	cl, cl
	jne	.label_224
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_224
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_253:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_198
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_198:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_253
.label_224:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_263
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_263
.label_203:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_267:
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
.label_182:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_263:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_277:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_267
.label_214:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_267
.label_284:
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
	jmp	.label_182
.label_246:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c70
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c80

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
	je	.label_298
	mov	qword ptr [rax], rbx
.label_298:
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
	#Procedure 0x404d80
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_299
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_301:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_301
.label_299:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_302
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_303]], OFFSET FLAT:slot0
.label_302:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_300
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_300:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e20

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404e30

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
	js	.label_304
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_309
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_305
.label_309:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_308
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
	jne	.label_307
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_307:
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
.label_305:
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
	ja	.label_310
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_306
	mov	rdi, rbx
	call	free
.label_306:
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
.label_310:
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
.label_304:
	call	abort
.label_308:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405000

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405010
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405020
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
	.align	16
	#Procedure 0x405030

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
	.align	16
	#Procedure 0x405070

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
	je	.label_311
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
.label_311:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050d0

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
	.align	16
	#Procedure 0x405110

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
	.align	16
	#Procedure 0x405130
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
	.align	16
	#Procedure 0x405150

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
	mov	rcx,  qword ptr [word ptr [rip + label_312]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_313]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_314]]
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
	.align	16
	#Procedure 0x4051c0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4051d0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051e0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051f0

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
	.align	16
	#Procedure 0x405240

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405250

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
	mov	rax,  qword ptr [word ptr [rip + label_312]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_313]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_314]]
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
	.align	16
	#Procedure 0x4052c0
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
	.align	16
	#Procedure 0x4052e0
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
	.align	16
	#Procedure 0x405300

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405310
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
	.align	16
	#Procedure 0x405320

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405330

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405340

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
	jne	.label_316
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
	je	.label_315
	mov	eax, OFFSET FLAT:.str.14_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_316
	mov	eax, OFFSET FLAT:.str.15_2
	jmp	.label_316
.label_315:
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
	je	.label_317
	mov	eax, OFFSET FLAT:.str.17_2
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_316
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_316
.label_317:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_2
	mov	eax, OFFSET FLAT:.str.12_1
	cmove	rax, rcx
.label_316:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405420

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
	je	.label_319
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_320
	jmp	.label_318
.label_319:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_318
.label_320:
	mov	eax, 1
	test	bpl, bpl
	je	.label_318
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
.label_318:
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
	#Procedure 0x4054b0

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
	je	.label_323
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_321
	jmp	.label_322
.label_323:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_322
.label_321:
	mov	eax, 1
	test	bpl, bpl
	je	.label_322
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
.label_322:
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
	.align	16
	#Procedure 0x405540

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
	je	.label_324
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_326
	jmp	.label_325
.label_324:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_325
.label_326:
	mov	eax, 1
	test	bpl, bpl
	je	.label_325
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
.label_325:
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
	.align	16
	#Procedure 0x4055c0

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
	je	.label_329
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_328
	jmp	.label_327
.label_329:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_327
.label_328:
	mov	eax, 1
	test	bpl, bpl
	je	.label_327
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
.label_327:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405630

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
	je	.label_332
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_330
	jmp	.label_331
.label_332:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_331
.label_330:
	mov	eax, 1
	test	bpl, bpl
	je	.label_331
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_331:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056a0

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
	je	.label_333
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_335
	jmp	.label_334
.label_333:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_334
.label_335:
	mov	eax, 1
	test	bpl, bpl
	je	.label_334
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_334:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4056f0

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
	je	.label_338
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_337
	jmp	.label_336
.label_338:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_336
.label_337:
	mov	eax, 1
	test	bpl, bpl
	je	.label_336
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_336:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405740

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_341
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_340
	jmp	.label_339
.label_341:
	mov	eax, 1
	test	cl, cl
	je	.label_339
.label_340:
	xor	eax, eax
.label_339:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405770

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsp]
	mov	edi, OFFSET FLAT:.str_1
	call	__lstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_342
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_342:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4057b0
	.globl statat
	.type statat, @function
statat:

	xor	ecx, ecx
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057c0

	.globl lstatat
	.type lstatat, @function
lstatat:
	mov	ecx, 0x100
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057d0

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
	je	.label_345
	mov	edx, OFFSET FLAT:.str_10
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_344
.label_345:
	mov	edx, OFFSET FLAT:.str.1_5
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_344:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_5
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
	mov	esi, OFFSET FLAT:.str.3_3
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_350
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_351]]
.label_851:
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
.label_350:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_349
.label_852:
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
.label_853:
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
.label_854:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_348
.label_855:
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
	jmp	.label_347
.label_856:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_2
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_343
.label_857:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_3
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
.label_343:
	mov	qword ptr [rsp + 0x10], rdi
.label_347:
	mov	qword ptr [rsp + 8], rsi
.label_348:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_352
.label_859:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_349:
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
	jmp	.label_346
.label_858:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_3
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
.label_346:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_352:
	call	__fprintf_chk
.label_850:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ac0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_353:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_353
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405af0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_355:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_354
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_356
	nop	dword ptr [rax]
.label_354:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_356:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_357
	inc	r9
	cmp	r9, 0xa
	jb	.label_355
.label_357:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405b50

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_358
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_358:
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
	.align	16
	#Procedure 0x405be0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_2
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_1
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
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x405c60

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.initialized]]
	and	al, 1
	jne	.label_359
	push	rax
	call	geteuid
	test	eax, eax
	sete	byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	mov	byte ptr [byte ptr [rip + can_write_any_file.initialized]],  1
	add	rsp, 8
.label_359:
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c90
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_360
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_360:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405cc0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_361
	test	rax, rax
	je	.label_362
.label_361:
	pop	rbx
	ret	
.label_362:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ce0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_363
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_363:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d10

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_364
	test	rbx, rbx
	jne	.label_364
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_364:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_366
	test	rax, rax
	je	.label_365
.label_366:
	pop	rbx
	ret	
.label_365:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405d40

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_367
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_370
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_368
.label_367:
	test	rcx, rcx
	jne	.label_371
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_371:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_369
.label_368:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_370:
	call	xalloc_die
.label_369:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405dc0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405dd0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405de0
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
	.align	16
	#Procedure 0x405e10
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_372
	call	rpl_calloc
	test	rax, rax
	je	.label_372
	pop	rcx
	ret	
.label_372:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e40

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
	.align	16
	#Procedure 0x405e70
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
	.align	16
	#Procedure 0x405e90

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405ec0

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_374
	pop	rcx
	ret	
.label_374:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_373
	mov	edi, OFFSET FLAT:.str_11
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	call	__assert_fail
.label_373:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f00
	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:

	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_375
	cmp	ecx, 0x11
	jne	.label_376
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_375:
	ret	
.label_376:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405f20

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp], 0
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp]
	call	getline
	test	rax, rax
	jle	.label_378
	mov	rcx, qword ptr [rsp + 8]
	movzx	edx, byte ptr [rax + rcx - 1]
	cmp	edx, 0xa
	jne	.label_377
	mov	byte ptr [rcx + rax - 1], 0
.label_377:
	mov	rdi, qword ptr [rsp + 8]
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_379
.label_378:
	xor	ebx, ebx
.label_379:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	al, bl
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405f90

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_380
	test	rsi, rsi
	mov	ecx, 1
	je	.label_381
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_381
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_380:
	mov	ecx, 1
.label_381:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fe0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_382
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_382
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_382:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406010

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_383
	ret	
.label_383:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406030

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_384
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_385
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_385:
	add	rax, rcx
.label_384:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406060

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
	jne	.label_386
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_386
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_387
.label_386:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_387:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_388
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_388:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4060d0

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbp, rdx
	mov	r14d, esi
	mov	r15, rdi
	cmp	r14d, 0x1000
	jae	.label_391
	mov	eax, r14d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_391
	test	r14b, 0x12
	je	.label_391
	mov	edi, 0x80
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_389
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x70], xmm0
	movups	xmmword ptr [r13 + 0x60], xmm0
	movups	xmmword ptr [r13 + 0x50], xmm0
	movups	xmmword ptr [r13 + 0x40], xmm0
	movups	xmmword ptr [r13 + 0x30], xmm0
	movups	xmmword ptr [r13 + 0x20], xmm0
	movups	xmmword ptr [r13 + 0x10], xmm0
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x40], rbp
	mov	eax, r14d
	and	eax, 0xfffffdfb
	or	eax, 4
	test	r14b, 2
	cmove	eax, r14d
	mov	dword ptr [r13 + 0x48], eax
	mov	dword ptr [r13 + 0x2c], 0xffffff9c
	mov	rdi, r15
	call	fts_maxarglen
	cmp	rax, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rax
	mov	rdi, r13
	call	fts_palloc
	test	al, al
	je	.label_394
	xor	r12d, r12d
	cmp	qword ptr [r15], 0
	je	.label_395
	mov	esi, OFFSET FLAT:.str_0
	xor	edx, edx
	mov	rdi, r13
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_397
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_395:
	mov	byte ptr [rsp + 0x27], 1
	test	rbp, rbp
	je	.label_403
	mov	al, byte ptr [r13 + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0x27], al
.label_403:
	mov	qword ptr [rsp + 0x28], r13
	mov	r13, qword ptr [r15]
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	test	r13, r13
	je	.label_406
	mov	qword ptr [rsp + 0x18], r12
	mov	qword ptr [rsp + 0x10], rbp
	and	r14d, 0x800
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_400:
	mov	rdi, r13
	call	strlen
	test	r14d, r14d
	jne	.label_398
	cmp	rax, 3
	jb	.label_398
	cmp	rax, 2
	jb	.label_398
	movzx	ecx, byte ptr [rax + r13 - 1]
	cmp	ecx, 0x2f
	jne	.label_398
	nop	word ptr cs:[rax + rax]
.label_396:
	movzx	ecx, byte ptr [r13 + rax - 2]
	cmp	ecx, 0x2f
	jne	.label_398
	dec	rax
	cmp	rax, 1
	ja	.label_396
	nop	word ptr cs:[rax + rax]
.label_398:
	mov	rsi, qword ptr [r15]
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	mov	rdx, rax
	call	fts_alloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_393
	mov	qword ptr [rbp + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbp + 8], rax
	mov	rax, rbp
	add	rax, 0x108
	mov	qword ptr [rbp + 0x30], rax
	mov	rbx, qword ptr [rsp + 0x30]
	test	rbx, rbx
	setne	al
	and	al, byte ptr [rsp + 0x27]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_399
	mov	word ptr [rbp + 0x70], 0xb
	mov	esi, 1
	mov	rdi, rbp
	call	fts_set_stat_required
	jmp	.label_405
.label_399:
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
.label_405:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_408
	mov	qword ptr [rbp + 0x10], rbx
	mov	qword ptr [rsp + 0x30], rbp
	jmp	.label_390
.label_408:
	mov	qword ptr [rbp + 0x10], 0
	test	rbx, rbx
	je	.label_392
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + 0x10], rbp
	mov	qword ptr [rsp + 8], rbp
	jmp	.label_390
.label_392:
	mov	rax, rbp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x30], rbp
	nop	word ptr [rax + rax]
.label_390:
	inc	r12
	mov	r13, qword ptr [r15 + 8]
	add	r15, 8
	test	r13, r13
	jne	.label_400
	cmp	qword ptr [rsp + 0x10], 0
	mov	rdi, qword ptr [rsp + 0x28]
	je	.label_404
	cmp	r12, 2
	jb	.label_404
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, r12
	call	fts_sort
	mov	qword ptr [rsp + 0x30], rax
.label_404:
	mov	r12, qword ptr [rsp + 0x18]
.label_406:
	mov	esi, OFFSET FLAT:.str_0
	xor	edx, edx
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	call	fts_alloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_407
	mov	rbx, qword ptr [rsp + 0x30]
	mov	qword ptr [rax + 0x10], rbx
	mov	rax, qword ptr [r13]
	mov	word ptr [rax + 0x70], 9
	mov	rax, qword ptr [r13]
	mov	qword ptr [rax + 0x58], 1
	mov	rdi, r13
	call	setup_dir
	test	al, al
	je	.label_401
	movzx	eax, word ptr [r13 + 0x48]
	test	ax, 0x204
	jne	.label_402
	mov	esi, OFFSET FLAT:.str_3
	mov	rdi, r13
	call	diropen
	mov	dword ptr [r13 + 0x28], eax
	test	eax, eax
	jns	.label_402
	or	byte ptr [r13 + 0x48], 4
.label_402:
	mov	rdi, r13
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, r13
	jmp	.label_389
.label_391:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
.label_389:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_393:
	mov	r12, qword ptr [rsp + 0x18]
.label_407:
	mov	rbx, qword ptr [rsp + 0x30]
.label_401:
	mov	rdi, rbx
	call	fts_lfree
	mov	rdi, r12
	call	free
.label_397:
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
.label_394:
	mov	rdi, r13
	call	free
	xor	eax, eax
	jmp	.label_389
	.section	.text
	.align	16
	#Procedure 0x406450

	.globl fts_maxarglen
	.type fts_maxarglen, @function
fts_maxarglen:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	mov	r14d, 1
	test	rdi, rdi
	je	.label_409
	add	rbx, 8
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_410:
	call	strlen
	cmp	rax, r14
	cmova	r14, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_410
	inc	r14
.label_409:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064a0

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbx
	mov	rbx, rdi
	add	rsi, 0x100
	add	rsi, qword ptr [rbx + 0x30]
	jae	.label_411
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	call	__errno_location
	mov	dword ptr [rax], 0x24
	xor	eax, eax
	pop	rbx
	ret	
.label_411:
	mov	qword ptr [rbx + 0x30], rsi
	mov	rdi, qword ptr [rbx + 0x20]
	call	realloc
	test	rax, rax
	je	.label_412
	mov	qword ptr [rbx + 0x20], rax
	mov	al, 1
	pop	rbx
	ret	
.label_412:
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406500

	.globl fts_alloc
	.type fts_alloc, @function
fts_alloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	lea	rdi, [r15 + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_413
	mov	rdi, rbx
	add	rdi, 0x108
	mov	rsi, r12
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [rbx + r15 + 0x108], 0
	mov	qword ptr [rbx + 0x60], r15
	mov	qword ptr [rbx + 0x50], r14
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x72], 0
	mov	word ptr [rbx + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	rax, rbx
.label_413:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406590

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	movzx	eax, word ptr [rdi + 0x70]
	cmp	eax, 0xb
	jne	.label_414
	movzx	eax, sil
	inc	rax
	mov	qword ptr [rdi + 0xa8], rax
	ret	
.label_414:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4065b0

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_415
	test	byte ptr [r14 + 0x48], 1
	je	.label_415
	mov	dl, 1
.label_415:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_419
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 2
	jne	.label_419
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	mov	ecx, 0x100
	mov	rdx, rbx
	call	fstatat
	test	eax, eax
	je	.label_418
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_425
.label_419:
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	stat
	test	eax, eax
	je	.label_418
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 2
	jne	.label_421
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	__lstat
	test	eax, eax
	je	.label_424
.label_421:
	mov	eax, dword ptr [r14]
.label_425:
	mov	dword ptr [r15 + 0x40], eax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	ax, 0xa
.label_416:
	movzx	eax, ax
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_418:
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	mov	ax, 0xc
	cmp	ecx, 0xa000
	je	.label_416
	cmp	ecx, 0x8000
	je	.label_417
	cmp	ecx, 0x4000
	jne	.label_420
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_422
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_422
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_422:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ax, 1
	movzx	ecx, byte ptr [r15 + 0x108]
	cmp	ecx, 0x2e
	jne	.label_416
	mov	cl, byte ptr [r15 + 0x109]
	test	cl, cl
	je	.label_423
	movzx	ecx, cl
	cmp	ecx, 0x2e
	jne	.label_416
	cmp	byte ptr [r15 + 0x10a], 0
	jne	.label_416
.label_423:
	mov	ax, 1
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_416
	mov	ax, 5
	jmp	.label_416
.label_417:
	mov	ax, 8
	jmp	.label_416
.label_420:
	mov	ax, 3
	jmp	.label_416
.label_424:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_416
	nop	
	.section	.text
	.align	16
	#Procedure 0x406740

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	r12, qword ptr [r15 + 0x40]
	cmp	qword ptr [r15 + 0x38], r14
	jae	.label_426
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r15 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_432
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rsi, 3
	call	realloc
	test	rax, rax
	je	.label_432
	mov	qword ptr [r15 + 0x10], rax
.label_426:
	test	rbx, rbx
	je	.label_428
	mov	rax, qword ptr [r15 + 0x10]
	nop	
.label_430:
	mov	qword ptr [rax], rbx
	add	rax, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_430
.label_428:
	mov	rdi, qword ptr [r15 + 0x10]
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r12
	call	qsort
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbx, qword ptr [rax]
	cmp	r14, 1
	je	.label_431
	mov	ecx, 1
	sub	rcx, r14
	dec	r14
	lea	rdx, [rax + 8]
.label_427:
	mov	rsi, qword ptr [rdx - 8]
	mov	rdi, qword ptr [rdx]
	mov	qword ptr [rsi + 0x10], rdi
	add	rdx, 8
	inc	rcx
	jne	.label_427
	lea	rax, [rax + r14*8]
.label_431:
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_429
.label_432:
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x38], 0
.label_429:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406820

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_433
	xor	r14d, r14d
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_436
	jmp	.label_435
.label_433:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_434
	mov	rdi, rax
	call	cycle_check_init
.label_436:
	mov	r14b, 1
	jmp	.label_435
.label_434:
	xor	r14d, r14d
.label_435:
	mov	al, r14b
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406890

	.globl diropen
	.type diropen, @function
diropen:
	mov	eax, dword ptr [rdi + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_437
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	jmp	open_safer
.label_437:
	mov	edi, dword ptr [rdi + 0x2c]
	xor	eax, eax
	jmp	openat_safer
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4068c0

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_438
	nop	dword ptr [rax]
.label_440:
	mov	r14, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_439
	call	closedir
.label_439:
	mov	rdi, rbx
	call	free
	test	r14, r14
	mov	rbx, r14
	jne	.label_440
.label_438:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406900

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_441
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_445
	nop	word ptr cs:[rax + rax]
.label_451:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_450
	mov	rbx, qword ptr [rdi + 8]
.label_450:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_451
	jmp	.label_452
.label_445:
	mov	rbx, rdi
.label_452:
	mov	rdi, rbx
	call	free
.label_441:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_443
	call	fts_lfree
.label_443:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_449
	xor	ebx, ebx
	test	al, 4
	jne	.label_447
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebx, ebx
	test	eax, eax
	je	.label_442
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_442:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebx, ebx
	je	.label_444
	jmp	.label_447
.label_449:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebx, ebx
	test	edi, edi
	js	.label_447
	call	close
.label_444:
	test	eax, eax
	je	.label_447
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_447:
	lea	rdi, [r14 + 0x60]
	call	fd_ring_clear
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_446
	call	hash_free
.label_446:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebx, ebx
	je	.label_448
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	eax, 0xffffffff
.label_448:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a00

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbx
	mov	rbx, rdi
	jmp	.label_453
	nop	word ptr cs:[rax + rax]
.label_454:
	mov	edi, eax
	call	close
.label_453:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_455
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_454
	jmp	.label_453
.label_455:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a40

	.globl free_dir
	.type free_dir, @function
free_dir:
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_456
	mov	rdi, qword ptr [rdi + 0x58]
	test	rdi, rdi
	je	.label_457
	jmp	hash_free
.label_456:
	mov	rdi, qword ptr [rdi + 0x58]
	jmp	free
.label_457:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a70

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_466
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_466
	movzx	eax, word ptr [rbx + 0x74]
	mov	word ptr [rbx + 0x74], 3
	cmp	eax, 2
	je	.label_484
	movzx	ecx, ax
	cmp	ecx, 1
	jne	.label_485
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	mov	r15, rbx
	jmp	.label_466
.label_484:
	movzx	ecx, word ptr [rbx + 0x70]
	and	ecx, 0xfffe
	cmp	ecx, 0xc
	jne	.label_485
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_496
	test	byte ptr [r14 + 0x48], 4
	jne	.label_498
	mov	esi, OFFSET FLAT:.str_3
	mov	rdi, r14
	call	diropen
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_460
	or	byte ptr [rbx + 0x72], 2
	mov	r15, rbx
	jmp	.label_463
.label_485:
	movzx	ecx, word ptr [rbx + 0x70]
	cmp	ecx, 1
	jne	.label_465
	movzx	eax, ax
	cmp	eax, 4
	je	.label_467
	test	byte ptr [r14 + 0x48], 0x40
	je	.label_468
	mov	rax, qword ptr [rbx + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_467
.label_468:
	cmp	qword ptr [r14 + 8], 0
	je	.label_472
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 0x10
	jne	.label_475
	cmp	qword ptr [r14 + 8], 0
	je	.label_472
	mov	rcx, qword ptr [rbx + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_478
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [rbx + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_482
	nop	word ptr [rax + rax]
.label_465:
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	jne	.label_488
	mov	rax, qword ptr [rbx + 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_474
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	je	.label_491
.label_488:
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_494
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	rbx, r15
	je	.label_465
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_458
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_462
	test	byte ptr [r14 + 0x48], 4
	jne	.label_462
	mov	esi, OFFSET FLAT:.str_3
	mov	rdi, r14
	call	diropen
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_469
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_462
.label_476:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_482:
	test	rax, rax
	jne	.label_476
	jmp	.label_478
.label_467:
	test	byte ptr [rbx + 0x72], 2
	je	.label_479
	mov	edi, dword ptr [rbx + 0x44]
	call	close
.label_479:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_481
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_481:
	mov	word ptr [rbx + 0x70], 6
.label_480:
	mov	rdi, r14
	mov	rsi, rbx
	call	leave_dir
	mov	r15, rbx
	jmp	.label_466
.label_494:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	je	.label_489
	or	byte ptr [r14 + 0x49], 0x20
	xor	r15d, r15d
	jmp	.label_466
.label_496:
	mov	r15, rbx
	jmp	.label_463
.label_498:
	mov	r15, rbx
	jmp	.label_463
.label_474:
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_497
	mov	rdi, rbx
	call	free
	jmp	.label_458
.label_489:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	mov	rsi, r15
	call	fts_load
	mov	rdi, r14
	call	setup_dir
	jmp	.label_463
.label_475:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	mov	rdi, qword ptr [r14 + 8]
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_472:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_471
.label_478:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_458
.label_471:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_466
	cmp	dword ptr [rbx + 0x40], 0
	je	.label_480
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 4
	je	.label_480
	mov	word ptr [rbx + 0x70], 7
	jmp	.label_480
.label_460:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	mov	word ptr [rbx + 0x70], 7
	mov	r15, rbx
	jmp	.label_463
.label_497:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_466
.label_491:
	mov	r15, qword ptr [rbx + 8]
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_492
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_461
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_495
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_499
	test	al, 1
	jne	.label_470
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_1
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_487
.label_492:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_466
.label_495:
	mov	rdi, r14
	call	restore_initial_cwd
.label_487:
	test	eax, eax
	je	.label_470
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_470
.label_499:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_477
	test	ah, 2
	mov	esi, dword ptr [r15 + 0x44]
	jne	.label_486
	mov	edi, esi
	call	fchdir
	test	eax, eax
	je	.label_477
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_477
.label_469:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_462:
	mov	word ptr [r15 + 0x74], 3
.label_458:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	movzx	edx, byte ptr [rdx + rcx - 1]
	cmp	edx, 0x2f
	jne	.label_490
	dec	rcx
.label_490:
	lea	rdi, [rax + rcx + 1]
	mov	byte ptr [rax + rcx], 0x2f
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	inc	rdx
	call	memmove
.label_463:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_473
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_459
	cmp	rax, 2
	jne	.label_461
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_464
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_464
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	leaf_optimization
	cmp	eax, 2
	je	.label_459
.label_464:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_473
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_459
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_459
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_459:
	movzx	eax, word ptr [r15 + 0x70]
.label_473:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_466
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_483
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_483:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_466
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_466
.label_486:
	mov	edx, 1
	mov	rdi, r14
	call	cwd_advance_fd
.label_477:
	mov	edi, dword ptr [r15 + 0x44]
	call	close
.label_470:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_493
	mov	eax, dword ptr [r15 + 0x40]
	cmp	eax, 0
	setne	cl
	movzx	ecx, cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_493
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_493:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_466:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_461:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407020

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_500
	mov	rax, qword ptr [rsi + 0x78]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsi + 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_502
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_500:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_501
	cmp	qword ptr [rax + 0x58], 0
	js	.label_501
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_502
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_501
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_501
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rdi + 0x58]
	mov	qword ptr [rcx], rax
.label_501:
	add	rsp, 0x18
	ret	
.label_502:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070c0

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	r13d, edx
	mov	r14, rdi
	test	rbx, rbx
	je	.label_514
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_515
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_515
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_515:
	test	eax, eax
	sete	r15b
	jmp	.label_503
.label_514:
	xor	r15d, r15d
.label_503:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_506
	test	r13d, r13d
	jns	.label_517
	mov	cl, r15b
	xor	cl, 1
	jne	.label_508
	and	eax, 0x200
	je	.label_509
	mov	qword ptr [rsp], rsi
	lea	rbp, [r14 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_504
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r15b, 1
	jmp	.label_504
.label_506:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_507
	and	eax, 0x200
	je	.label_507
	mov	edi, r13d
	call	close
	jmp	.label_507
.label_509:
	mov	qword ptr [rsp], rsi
	jmp	.label_504
.label_517:
	mov	qword ptr [rsp], rsi
	jmp	.label_504
.label_508:
	mov	qword ptr [rsp], rsi
.label_504:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_505
	mov	rdi, r14
	mov	rsi, rbx
	call	diropen
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_507
.label_505:
	test	byte ptr [r14 + 0x48], 2
	jne	.label_510
	test	rbx, rbx
	je	.label_511
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2e
	jne	.label_511
	movzx	eax, byte ptr [rbx + 1]
	cmp	eax, 0x2e
	jne	.label_511
	cmp	byte ptr [rbx + 2], 0
	jne	.label_511
.label_510:
	lea	rsi, [rsp + 8]
	mov	edi, r12d
	call	__fstat
	test	eax, eax
	jne	.label_513
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_512
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_512
.label_511:
	test	byte ptr [r14 + 0x49], 2
	jne	.label_518
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_516
.label_518:
	test	r15b, r15b
	sete	al
	movzx	edx, al
	mov	rdi, r14
	mov	esi, r12d
	call	cwd_advance_fd
	xor	ebp, ebp
	jmp	.label_507
.label_512:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_513:
	mov	ebp, 0xffffffff
.label_516:
	test	r13d, r13d
	jns	.label_507
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
.label_507:
	mov	eax, ebp
	add	rsp, 0x98
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
	#Procedure 0x407270

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	r12d, esi
	mov	r14, rdi
	mov	rbp, qword ptr [r14]
	mov	qword ptr [rsp + 0x48], rbp
	mov	r15, qword ptr [rbp + 0x18]
	mov	qword ptr [rsp + 0x60], r15
	test	r15, r15
	je	.label_544
	mov	rdi, r15
	call	dirfd
	mov	dword ptr [rsp + 0x84], eax
	test	eax, eax
	js	.label_555
	mov	qword ptr [rsp + 0x38], -1
	cmp	qword ptr [r14 + 0x40], 0
	jne	.label_536
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x38], rax
.label_536:
	lea	rax, [r14 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x18], eax
	jmp	.label_539
.label_544:
	mov	eax, 0x204
	and	eax, dword ptr [r14 + 0x48]
	mov	edi, 0xffffff9c
	cmp	eax, 0x200
	jne	.label_571
	mov	edi, dword ptr [r14 + 0x2c]
.label_571:
	mov	rsi, qword ptr [rbp + 0x30]
	mov	eax, dword ptr [r14 + 0x48]
	xor	edx, edx
	test	al, 0x10
	je	.label_523
	test	al, 1
	je	.label_520
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_523
.label_520:
	mov	edx, 0x20000
.label_523:
	lea	rcx, [rsp + 0x84]
	call	opendirat
	mov	qword ptr [rbp + 0x18], rax
	test	rax, rax
	je	.label_531
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 0xb
	jne	.label_528
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
	jmp	.label_538
.label_555:
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
.label_531:
	xor	r13d, r13d
	cmp	r12d, 3
	jne	.label_519
	mov	word ptr [rbp + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp + 0x40], eax
	xor	r13d, r13d
	jmp	.label_519
.label_528:
	test	byte ptr [r14 + 0x49], 1
	je	.label_538
	mov	rdi, r14
	mov	rsi, rbp
	call	leave_dir
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbp
	call	fts_stat
	mov	rdi, r14
	mov	rsi, rbp
	call	enter_dir
	test	al, al
	je	.label_556
.label_538:
	mov	qword ptr [rsp + 0x38], -1
	cmp	qword ptr [r14 + 0x40], 0
	jne	.label_558
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x38], rax
.label_558:
	lea	rax, [r14 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x18], eax
	test	r15, r15
	jne	.label_539
	cmp	r12d, 2
	jne	.label_570
	mov	r13d, r12d
	xor	r12d, r12d
	jmp	.label_572
.label_570:
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_573
	cmp	qword ptr [rbp + 0x88], 2
	jne	.label_573
	mov	r13d, r12d
	mov	esi, dword ptr [rsp + 0x84]
	mov	rdi, rbp
	call	leaf_optimization
	test	eax, eax
	setne	r12b
	jmp	.label_526
.label_556:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	jmp	.label_519
.label_573:
	mov	r13d, r12d
	xor	r12d, r12d
.label_526:
	xor	r12b, 1
.label_572:
	cmp	r13d, 3
	je	.label_537
	test	r12b, r12b
	jne	.label_537
	mov	dword ptr [rsp + 0x18], r12d
	mov	r12d, r13d
	jmp	.label_539
.label_537:
	mov	qword ptr [rsp + 0x60], r15
	test	byte ptr [r14 + 0x49], 2
	mov	ebx, dword ptr [rsp + 0x84]
	je	.label_575
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	mov	ebx, eax
	mov	dword ptr [rsp + 0x84], ebx
.label_575:
	test	ebx, ebx
	js	.label_547
	xor	ecx, ecx
	mov	rdi, r14
	mov	rsi, rbp
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_552
.label_547:
	cmp	r13d, 3
	jne	.label_553
	test	r12b, r12b
	je	.label_553
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp + 0x40], eax
.label_553:
	or	byte ptr [rbp + 0x72], 1
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	je	.label_559
	mov	edi, dword ptr [rsp + 0x84]
	test	edi, edi
	js	.label_559
	call	close
.label_559:
	mov	qword ptr [rbp + 0x18], 0
	mov	dword ptr [rsp + 0x18], 0
.label_552:
	mov	r12d, r13d
	mov	r15, qword ptr [rsp + 0x60]
.label_539:
	mov	rax, qword ptr [rbp + 0x38]
	mov	rdx, qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rax + rdx - 1]
	cmp	eax, 0x2f
	jne	.label_574
	dec	rdx
.label_574:
	mov	dword ptr [rsp + 0x1c], r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	test	byte ptr [r14 + 0x48], 4
	je	.label_521
	mov	rax, qword ptr [r14 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x50], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_521:
	lea	rax, [rdx + 1]
	mov	qword ptr [rsp + 0x68], rax
	mov	rcx, qword ptr [r14 + 0x30]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x40], rcx
	mov	rax, qword ptr [rbp + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x28], rax
	add	rdx, 2
	mov	qword ptr [rsp + 8], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	r12d, r12d
	xor	ebx, ebx
	xor	r13d, r13d
.label_565:
	cmp	qword ptr [rbp + 0x18], 0
	je	.label_522
	mov	qword ptr [rsp + 0x70], rbx
	mov	qword ptr [rsp + 0x78], r13
	call	__errno_location
	mov	r13, rax
	nop	dword ptr [rax]
.label_567:
	mov	dword ptr [r13], 0
	mov	rdi, qword ptr [rbp + 0x18]
	call	readdir
	mov	r15, rax
	test	r15, r15
	je	.label_554
	test	byte ptr [r14 + 0x48], 0x20
	jne	.label_557
	movzx	eax, byte ptr [r15 + 0x13]
	cmp	eax, 0x2e
	jne	.label_557
	movzx	eax, byte ptr [r15 + 0x14]
	cmp	eax, 0x2e
	je	.label_560
	test	al, al
	je	.label_562
	jmp	.label_557
	nop	
.label_560:
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_557
.label_562:
	cmp	qword ptr [rbp + 0x18], 0
	jne	.label_567
	jmp	.label_568
	nop	word ptr cs:[rax + rax]
.label_557:
	mov	qword ptr [rsp + 0x20], r12
	mov	rbx, r15
	add	rbx, 0x13
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rbp
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_525
	cmp	rbp, qword ptr [rsp + 0x40]
	jae	.label_529
	mov	rbx, qword ptr [rsp + 0x68]
	jmp	.label_533
	nop	
.label_529:
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rax + rbp]
	mov	rdi, r14
	call	fts_palloc
	test	al, al
	je	.label_525
	mov	rax, qword ptr [r14 + 0x20]
	cmp	rbx, rax
	je	.label_566
	mov	rbx, qword ptr [rsp + 0x68]
	add	rax, rbx
	test	byte ptr [r14 + 0x48], 4
	mov	rcx, qword ptr [rsp + 0x50]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x50], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_542
.label_566:
	mov	rbx, qword ptr [rsp + 0x68]
.label_542:
	mov	rax, qword ptr [r14 + 0x30]
	sub	rax, rbx
	mov	qword ptr [rsp + 0x40], rax
.label_533:
	add	rbp, rbx
	jb	.label_549
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [r12 + 0x58], rax
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbp
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [r14 + 0x48], 4
	jne	.label_551
	lea	rax, [r12 + 0x108]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_524
	nop	dword ptr [rax]
.label_551:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	lea	rsi, [r12 + 0x108]
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x50]
	call	memmove
.label_524:
	mov	rbp, qword ptr [rsp + 0x48]
	mov	r13, qword ptr [rsp + 0x78]
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rax], 0
	je	.label_527
	test	byte ptr [r14 + 0x49], 4
	jne	.label_527
	mov	qword ptr [rsp + 0x68], rbx
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_530
	nop	word ptr [rax + rax]
.label_527:
	mov	qword ptr [rsp + 0x68], rbx
	mov	rdi, r12
	add	rdi, 0x78
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_543
	movzx	eax, byte ptr [r15 + 0x12]
	cmp	eax, 4
	setne	cl
	test	al, al
	setne	bl
	and	bl, cl
	jmp	.label_540
.label_543:
	xor	ebx, ebx
.label_540:
	mov	word ptr [r12 + 0x70], 0xb
	movzx	esi, byte ptr [r15 + 0x12]
	call	set_stat_type
	xor	bl, 1
	movzx	esi, bl
	mov	rdi, r12
	call	fts_set_stat_required
.label_530:
	mov	r15, qword ptr [rsp + 0x60]
	mov	qword ptr [r12 + 0x10], 0
	test	r13, r13
	mov	rax, r12
	je	.label_545
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, r13
.label_545:
	mov	r13, rax
	mov	rbx, qword ptr [rsp + 0x70]
	cmp	rbx, 0x2710
	jne	.label_532
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rax], 0
	jne	.label_532
	mov	esi, dword ptr [rsp + 0x84]
	mov	rdi, rbp
	call	dirent_inode_sort_may_be_useful
	mov	qword ptr [rsp + 0x10], rax
.label_532:
	inc	rbx
	cmp	qword ptr [rsp + 0x38], rbx
	ja	.label_565
	jmp	.label_522
.label_554:
	mov	eax, dword ptr [r13]
	test	eax, eax
	mov	r15, qword ptr [rsp + 0x60]
	mov	rbx, qword ptr [rsp + 0x70]
	je	.label_569
	mov	dword ptr [rbp + 0x40], eax
	mov	rax, r15
	or	rax, rbx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [rbp + 0x70], cx
.label_569:
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	mov	r13, qword ptr [rsp + 0x78]
	je	.label_522
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	jmp	.label_522
.label_568:
	mov	r15, qword ptr [rsp + 0x60]
	mov	r13, qword ptr [rsp + 0x78]
	mov	rbx, qword ptr [rsp + 0x70]
.label_522:
	mov	rax, qword ptr [rsp + 0x30]
	test	al, 1
	je	.label_535
	mov	rdi, r14
	mov	rsi, r13
	call	fts_padjust
.label_535:
	test	byte ptr [r14 + 0x48], 4
	mov	r12d, dword ptr [rsp + 0x1c]
	je	.label_561
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rsp + 0x68]
	cmp	rdx, qword ptr [r14 + 0x30]
	cmove	rcx, rax
	test	rbx, rbx
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_561:
	test	r15, r15
	jne	.label_546
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	je	.label_546
	cmp	r12d, 1
	je	.label_548
	test	rbx, rbx
	jne	.label_546
.label_548:
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_550
	mov	rsi, qword ptr [rbp + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_1
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_541
.label_550:
	mov	rdi, r14
	call	restore_initial_cwd
.label_541:
	test	eax, eax
	je	.label_546
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_534
.label_546:
	test	rbx, rbx
	je	.label_563
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	je	.label_564
	mov	rbp, qword ptr [rsp + 0x58]
	mov	qword ptr [word ptr [rbp]], OFFSET FLAT:fts_compare_ino
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	fts_sort
	mov	r13, rax
	mov	qword ptr [rbp], 0
.label_564:
	cmp	rbx, 2
	jb	.label_519
	mov	rax, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_519
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	fts_sort
	mov	r13, rax
	jmp	.label_519
.label_563:
	cmp	r12d, 3
	jne	.label_534
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 4
	je	.label_534
	movzx	eax, ax
	cmp	eax, 7
	je	.label_534
	mov	word ptr [rbp + 0x70], 6
.label_534:
	mov	rdi, r13
	call	fts_lfree
	xor	r13d, r13d
.label_519:
	mov	rax, r13
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_525:
	mov	ebx, dword ptr [r13]
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 0x78]
	call	fts_lfree
	mov	rbp, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	mov	dword ptr [r13], ebx
	xor	r13d, r13d
	jmp	.label_519
.label_549:
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 0x78]
	call	fts_lfree
	mov	rbx, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	mov	dword ptr [r13], 0x24
	xor	r13d, r13d
	jmp	.label_519
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4079f0

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_576
	test	ah, 2
	jne	.label_578
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_577
.label_576:
	xor	eax, eax
	jmp	.label_577
.label_578:
	mov	esi, 0xffffff9c
	mov	edx, 1
	mov	rdi, rbx
	call	cwd_advance_fd
	xor	eax, eax
.label_577:
	movzx	ebp, al
	add	rbx, 0x60
	mov	rdi, rbx
	call	fd_ring_clear
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a50

	.globl fts_load
	.type fts_load, @function
fts_load:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r12, rsi
	mov	r14, rdi
	mov	rdx, qword ptr [r12 + 0x60]
	mov	qword ptr [r12 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [r12 + 0x108]
	inc	rdx
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r15
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_580
	cmp	rbx, r15
	jne	.label_579
	cmp	byte ptr [rbx + 1], 0
	je	.label_580
.label_579:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r15
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r12 + 0x60], r13
.label_580:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	qword ptr [r12 + 0x30], rax
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ae0

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	push	rax
	call	filesystem_type
	cmp	rax, 0x52654972
	jle	.label_584
	mov	ecx, 2
	cmp	rax, 0x58465341
	jg	.label_585
	cmp	rax, 0x52654973
	je	.label_583
	cmp	rax, 0x5346414f
	je	.label_582
	jmp	.label_581
.label_584:
	test	rax, rax
	je	.label_582
	cmp	rax, 0x6969
	je	.label_582
	cmp	rax, 0x9fa0
	je	.label_582
	jmp	.label_581
.label_585:
	cmp	rax, 0x58465342
	je	.label_583
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	jne	.label_581
.label_582:
	xor	ecx, ecx
	jmp	.label_583
.label_581:
	mov	ecx, 1
.label_583:
	mov	eax, ecx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b50

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbp, rdi
	movzx	eax, word ptr [rbp + 0x48]
	test	ax, 0x102
	je	.label_588
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_589
	mov	rax, qword ptr [r14 + 0x78]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r14 + 0x80]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_586
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_587
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_590
.label_588:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_586
	mov	qword ptr [r14], r14
.label_590:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_586
.label_589:
	xor	ebp, ebp
	jmp	.label_586
.label_587:
	xor	ebp, ebp
.label_586:
	mov	al, bpl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407bf0

	.globl cwd_advance_fd
	.type cwd_advance_fd, @function
cwd_advance_fd:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	esi, dword ptr [rbx + 0x2c]
	cmp	esi, ebp
	jne	.label_592
	cmp	esi, -0x64
	jne	.label_595
.label_592:
	test	dl, dl
	je	.label_591
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_593
	mov	edi, eax
	jmp	.label_594
.label_591:
	test	esi, esi
	js	.label_593
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 4
	jne	.label_593
	mov	edi, esi
.label_594:
	call	close
.label_593:
	mov	dword ptr [rbx + 0x2c], ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_595:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c40

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_596
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_596:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c70
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	ebp, esi
	mov	rbx, rdi
	mov	eax, ebp
	or	eax, 0x1000
	cmp	eax, 0x1000
	jne	.label_605
	mov	r12, qword ptr [rbx]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 0x20
	jne	.label_597
	movzx	ecx, word ptr [r12 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_603
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_597
	mov	rax, qword ptr [r12 + 0x10]
	jmp	.label_597
.label_605:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_597
.label_603:
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	je	.label_602
	call	fts_lfree
.label_602:
	mov	r15d, 1
	cmp	ebp, 0x1000
	jne	.label_604
	or	byte ptr [rbx + 0x49], 0x10
	mov	r15d, 2
.label_604:
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_598
	mov	rax, qword ptr [r12 + 0x30]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	je	.label_598
	test	byte ptr [rbx + 0x48], 4
	jne	.label_598
	mov	esi, OFFSET FLAT:.str_3
	mov	rdi, rbx
	call	diropen
	mov	ebp, eax
	test	ebp, ebp
	js	.label_601
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
	test	byte ptr [rbx + 0x49], 2
	jne	.label_606
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_599
	mov	ebx, dword ptr [r14]
	mov	edi, ebp
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_597
.label_598:
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
.label_597:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_601:
	mov	qword ptr [rbx + 8], 0
	xor	eax, eax
	jmp	.label_597
.label_606:
	mov	edx, 1
	mov	rdi, rbx
	mov	esi, ebp
	call	cwd_advance_fd
	jmp	.label_600
.label_599:
	mov	edi, ebp
	call	close
.label_600:
	mov	rax, qword ptr [rbx + 8]
	jmp	.label_597
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407db0

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407dc0

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_607
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_607:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407de0

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	r15d, esi
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x50]
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 2
	je	.label_608
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_610
	xor	r12d, r12d
	mov	edi, 0xd
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_type_hash
	mov	ecx, OFFSET FLAT:dev_type_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbp, rax
	mov	qword ptr [rbx + 0x50], rbp
	test	rbp, rbp
	mov	r14d, 0
	je	.label_611
.label_610:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_612
	mov	rax, qword ptr [rax + 8]
	jmp	.label_608
.label_612:
	mov	r12b, 1
	mov	r14, rbp
.label_611:
	xor	eax, eax
	test	r15d, r15d
	js	.label_608
	lea	rsi, [rsp + 0x10]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_608
	test	r12b, r12b
	je	.label_609
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_609
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_613
	cmp	rax, rbp
	je	.label_609
	call	abort
.label_613:
	mov	rdi, rbp
	call	free
.label_609:
	mov	rax, qword ptr [rsp + 0x10]
.label_608:
	add	rsp, 0x88
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
	#Procedure 0x407ef0

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407f00

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f10

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	dec	esi
	xor	eax, eax
	cmp	esi, 0xb
	ja	.label_614
	movsxd	rax, esi
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + label_615]]
.label_614:
	mov	dword ptr [rdi + 0x18], eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f30

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	push	rax
	call	filesystem_type
	mov	rcx, rax
	xor	eax, eax
	cmp	rcx, 0x6969
	je	.label_616
	cmp	rcx, 0x1021994
	je	.label_616
	mov	edx, 0xff534d42
	cmp	rcx, rdx
	je	.label_616
	mov	al, 1
.label_616:
	pop	rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f60

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	mov	rcx, qword ptr [rdi + 8]
	mov	rax, qword ptr [rdi + 0x20]
	jmp	.label_617
	nop	word ptr [rax + rax]
.label_620:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_617:
	test	rcx, rcx
	je	.label_621
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rdi, [rcx + 0x108]
	cmp	rdx, rdi
	je	.label_620
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_620
.label_621:
	cmp	qword ptr [rsi + 0x58], 0
	js	.label_622
	nop	word ptr cs:[rax + rax]
.label_623:
	mov	rcx, qword ptr [rsi + 0x30]
	lea	rdx, [rsi + 0x108]
	cmp	rcx, rdx
	je	.label_618
	sub	rcx, qword ptr [rsi + 0x38]
	add	rcx, rax
	mov	qword ptr [rsi + 0x30], rcx
.label_618:
	mov	qword ptr [rsi + 0x38], rax
	mov	rcx, qword ptr [rsi + 0x10]
	test	rcx, rcx
	jne	.label_619
	mov	rcx, qword ptr [rsi + 8]
.label_619:
	cmp	qword ptr [rcx + 0x58], 0
	mov	rsi, rcx
	jns	.label_623
.label_622:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ff0

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	cmp	rcx, rax
	sbb	edx, edx
	and	edx, 1
	cmp	rax, rcx
	mov	eax, 0xffffffff
	cmovae	eax, edx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408020
	.globl fts_compar
	.type fts_compar, @function
fts_compar:

	push	rax
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x50]
	call	qword ptr [rax + 0x40]
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408030

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
	je	.label_624
	cmp	r15, -2
	jb	.label_624
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_624
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_624:
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
	#Procedure 0x408090
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
	#Procedure 0x4080c0
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
	#Procedure 0x4080e0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4080f0
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
	#Procedure 0x408100
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
	#Procedure 0x408120
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
	#Procedure 0x408130
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
	#Procedure 0x408140
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
	#Procedure 0x408150
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
	#Procedure 0x408160
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
	#Procedure 0x408190
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
	#Procedure 0x4081b0

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
	#Procedure 0x4081c0
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
	#Procedure 0x4081e0
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
	#Procedure 0x4081f0
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
	#Procedure 0x408200

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
	je	.label_634
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_635
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_635
.label_634:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_635
	test	cl, cl
	jne	.label_635
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_635:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408270

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	16
	#Procedure 0x408280

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	dword ptr [r15 + 0x18], 0x95f616
	jne	.label_636
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_638
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r15]
	jne	.label_638
	mov	rcx, qword ptr [r14]
	mov	al, 1
	cmp	rcx, qword ptr [r15 + 8]
	je	.label_639
.label_638:
	mov	rbx, qword ptr [r15 + 0x10]
	inc	rbx
	mov	qword ptr [r15 + 0x10], rbx
	mov	rdi, rbx
	call	is_zero_or_power_of_two
	test	al, al
	je	.label_637
	mov	al, 1
	test	rbx, rbx
	je	.label_639
	mov	rax, qword ptr [r14]
	mov	qword ptr [r15 + 8], rax
	mov	rax, qword ptr [r14 + 8]
	mov	qword ptr [r15], rax
.label_637:
	xor	eax, eax
.label_639:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_636:
	mov	edi, OFFSET FLAT:.str_12
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408300

	.globl is_zero_or_power_of_two
	.type is_zero_or_power_of_two, @function
is_zero_or_power_of_two:
	lea	rax, [rdi - 1]
	test	rax, rdi
	sete	al
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408310

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_640
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_640:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_643
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_642
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_641
.label_642:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_641:
	mov	edx, dword ptr [rax]
.label_643:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083f0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_645
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_646
	cmp	byte ptr [rax + 1], 0
	je	.label_644
.label_646:
	mov	esi, OFFSET FLAT:.str.1_9
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_645
.label_644:
	xor	ebx, ebx
.label_645:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x408430

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408440

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408450

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408460

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_647
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_649:
	cmp	qword ptr [rcx], 0
	mov	esi, 0
	mov	rdi, rcx
	je	.label_648
	nop	
.label_650:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_650
	cmp	rsi, rax
	cmova	rax, rsi
.label_648:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_649
.label_647:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4084b0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	ecx, ecx
	cmp	rsi, qword ptr [rdi + 8]
	mov	edx, 0
	jae	.label_651
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_656:
	cmp	qword ptr [rsi], 0
	mov	rax, rsi
	je	.label_653
	nop	dword ptr [rax]
.label_654:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_654
	inc	rdx
.label_653:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_656
.label_651:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_652
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_655
.label_652:
	xor	eax, eax
.label_655:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408510
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rsi
	mov	rbx, rdi
	call	hash_get_n_entries
	mov	rbp, rax
	mov	rdi, rbx
	call	hash_get_n_buckets
	mov	r12, rax
	mov	rdi, rbx
	call	hash_get_n_buckets_used
	mov	r15, rax
	mov	rdi, rbx
	call	hash_get_max_bucket_length
	mov	r14, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_13
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_10
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_657]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_658]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_659]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_6
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_4
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__fprintf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408600

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	xor	r15d, r15d
	cmp	qword ptr [rbx], 0
	je	.label_661
	test	rbx, rbx
	je	.label_661
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_660:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_662
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_662
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_660
	jmp	.label_661
.label_662:
	mov	r15, qword ptr [rbx]
.label_661:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x408660

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbx
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, rsi
	mov	rsi, rax
	call	qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_663
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_663:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408690
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_664
	mov	rcx, qword ptr [rdi]
	jmp	.label_666
	nop	
.label_667:
	add	rcx, 0x10
.label_666:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_665
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_667
.label_664:
	ret	
.label_665:
	push	rax
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4086c0
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rcx, rax
	nop	word ptr cs:[rax + rax]
.label_672:
	cmp	qword ptr [rcx], rbx
	jne	.label_668
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_669
.label_668:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_672
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_671:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_670
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_671
	jmp	.label_670
.label_669:
	mov	rcx, qword ptr [rdx]
.label_670:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408730
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	jmp	.label_673
	nop	word ptr [rax + rax]
.label_674:
	add	r8, 0x10
.label_673:
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_675
	cmp	qword ptr [r8], 0
	je	.label_674
	test	r8, r8
	mov	r9, r8
	je	.label_674
	nop	dword ptr [rax + rax]
.label_676:
	cmp	rax, rdx
	jae	.label_675
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_676
	jmp	.label_674
.label_675:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408780
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

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
	mov	r13, qword ptr [r12]
	xor	ebx, ebx
	jmp	.label_677
	nop	dword ptr [rax]
.label_678:
	add	r13, 0x10
.label_677:
	cmp	r13, qword ptr [r12 + 8]
	jae	.label_679
	cmp	qword ptr [r13], 0
	je	.label_678
	test	r13, r13
	mov	rbp, r13
	je	.label_678
	nop	word ptr [rax + rax]
.label_680:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_679
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
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
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4087f0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_681
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_682:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	mov	al, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_682
.label_681:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408830
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_683]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408850

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, r8
	mov	r12, rsi
	mov	r15, rdi
	test	rdx, rdx
	mov	ebp, OFFSET FLAT:raw_hasher
	cmovne	rbp, rdx
	test	rcx, rcx
	mov	r14d, OFFSET FLAT:raw_comparator
	cmovne	r14, rcx
	mov	edi, 0x50
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_685
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_684
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_684
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_684
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [r13 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x18], xmm0
	mov	qword ptr [r13 + 0x30], rbp
	mov	qword ptr [r13 + 0x38], r14
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r13 + 0x40], rax
	mov	qword ptr [r13 + 0x48], 0
	mov	rax, r13
	jmp	.label_685
.label_684:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_685:
	add	rsp, 8
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
	#Procedure 0x408930

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbx
	mov	rbx, rsi
	mov	esi, 3
	call	rotr_sz
	xor	edx, edx
	div	rbx
	mov	rax, rdx
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408950

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408960

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_686
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_687]]
	jbe	.label_688
	movss	xmm1,  dword ptr [dword ptr [rip + label_691]]
	ucomiss	xmm1, xmm0
	jbe	.label_688
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_690]]
	jbe	.label_688
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_688
	addss	xmm1,  dword ptr [dword ptr [rip + label_687]]
	ucomiss	xmm0, xmm1
	jbe	.label_688
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_689]]
	ucomiss	xmm2, xmm0
	jb	.label_688
	ucomiss	xmm0, xmm1
	ja	.label_686
.label_688:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_686:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4089e0

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_692
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_697
	cvtsi2ss	xmm0, rdi
	jmp	.label_693
.label_697:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_693:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_694]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_695]]
	jae	.label_696
.label_692:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_696:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408a60
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_698
	nop	dword ptr [rax]
.label_703:
	add	r14, 0x10
.label_698:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_701
	cmp	qword ptr [r14], 0
	je	.label_703
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_699
	nop	word ptr cs:[rax + rax]
.label_700:
	test	cl, 1
	je	.label_704
	mov	rdi, qword ptr [rbx]
	call	rax
.label_704:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [r15 + 0x48], rbx
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_700
.label_699:
	test	cl, cl
	je	.label_702
	mov	rdi, qword ptr [r14]
	call	rax
.label_702:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_703
.label_701:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b00

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_705
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_705
	mov	r14, qword ptr [r15]
	jmp	.label_712
	nop	dword ptr [rax + rax]
.label_708:
	add	r14, 0x10
.label_712:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_705
	cmp	qword ptr [r14], 0
	je	.label_708
	test	r14, r14
	mov	rbx, r14
	je	.label_708
	nop	dword ptr [rax + rax]
.label_706:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_706
	jmp	.label_708
.label_705:
	mov	r14, qword ptr [r15]
	jmp	.label_710
	nop	word ptr [rax + rax]
.label_709:
	add	r14, 0x10
.label_710:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_713
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_709
	nop	word ptr cs:[rax + rax]
.label_707:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_707
	jmp	.label_709
.label_713:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_711
	nop	dword ptr [rax]
.label_714:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_714
.label_711:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408bd0

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x50
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, rsi
	mov	rsi, rax
	call	compute_bucket_size
	mov	rbp, rax
	test	rbp, rbp
	je	.label_715
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_716
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_715
	mov	qword ptr [rsp + 0x10], rbp
	shl	rbp, 4
	add	rbp, qword ptr [rsp]
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	mov	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rbx + 0x38]
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rbx + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, rbx
	call	transfer_entries
	test	al, al
	je	.label_717
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x10], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_716
.label_717:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_718
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_718
	mov	rdi, qword ptr [rsp]
	call	free
.label_715:
	xor	r14d, r14d
.label_716:
	mov	al, r14b
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_718:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d00

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	mov	r15, qword ptr [r12]
	mov	al, 1
	cmp	r15, qword ptr [r12 + 8]
	jae	.label_719
	mov	dword ptr [rsp + 4], edx
	nop	word ptr cs:[rax + rax]
.label_725:
	cmp	qword ptr [r15], 0
	je	.label_723
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_728
	nop	word ptr cs:[rax + rax]
.label_721:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_726
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_724
	nop	word ptr cs:[rax + rax]
.label_726:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_724:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_721
.label_728:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_723
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_727
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_720
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_722
.label_727:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_722:
	mov	qword ptr [r15], 0
	dec	qword ptr [r12 + 0x18]
.label_723:
	add	r15, 0x10
	cmp	r15, qword ptr [r12 + 8]
	jb	.label_725
	mov	al, 1
	jmp	.label_719
.label_720:
	xor	eax, eax
.label_719:
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
	#Procedure 0x408e20

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_735
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_731
	test	rbx, rbx
	je	.label_738
	mov	qword ptr [rbx], rax
	jmp	.label_738
.label_731:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_737
	cvtsi2ss	xmm0, rcx
	jmp	.label_742
.label_737:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_742:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_730
	cvtsi2ss	xmm1, rax
	jmp	.label_734
.label_730:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_734:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_739
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_729
	cvtsi2ss	xmm2, rcx
	jmp	.label_733
.label_729:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_733:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_740
	cvtsi2ss	xmm0, rax
	jmp	.label_743
.label_740:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_743:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_739
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_736
	mulss	xmm0, xmm1
.label_736:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_695]]
	jae	.label_738
	movss	xmm1,  dword ptr [dword ptr [rip + label_694]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	je	.label_738
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_735
.label_739:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_732
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_738
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_741
.label_732:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_741:
	mov	ebp, 1
.label_738:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_735:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408ff0

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, ecx
	mov	rbp, rdx
	mov	r13, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rsi, qword ptr [rbx]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_747
	cmp	rsi, r13
	je	.label_745
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_748
.label_745:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_747
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_750
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_746
.label_748:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_747
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_749:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_744
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_744
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_749
	jmp	.label_747
.label_750:
	mov	qword ptr [rbx], 0
	jmp	.label_747
.label_744:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_747
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_746:
	mov	rdi, r14
	call	free_entry
.label_747:
	mov	rax, r15
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
	.align	16
	#Procedure 0x4090c0

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_751
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_751:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4090f0

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	xor	eax, eax
	cmp	ecx, -1
	je	.label_752
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_752:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409120

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdi
	lea	rdx, [rsp + 8]
	mov	ecx, 1
	call	hash_find_entry
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_765
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_757
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_760
	cvtsi2ss	xmm0, rax
	jmp	.label_762
.label_760:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_762:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_756
	cvtsi2ss	xmm1, rcx
	jmp	.label_758
.label_756:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_758:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_757
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_754
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_755
.label_754:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_755:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_763
	cvtsi2ss	xmm0, rax
	jmp	.label_753
.label_763:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_753:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_757
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_759
	mulss	xmm0, dword ptr [rcx + 8]
.label_759:
	movss	xmm1,  dword ptr [dword ptr [rip + label_694]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	jne	.label_757
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_761
	nop	word ptr cs:[rax + rax]
.label_764:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_764
.label_761:
	mov	qword ptr [r15 + 0x48], 0
.label_757:
	mov	rax, r14
.label_765:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4092b0

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	r14
	push	rbx
	push	rax
	cmp	rdi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rdi
	or	rbx, 1
	mov	r14, -1
	jmp	.label_766
	nop	
.label_767:
	add	rbx, 2
.label_766:
	cmp	rbx, -1
	je	.label_768
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_767
	mov	r14, rbx
.label_768:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409300

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	cmp	r8, 0xa
	jb	.label_769
	nop	dword ptr [rax + rax]
.label_770:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_769
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_770
.label_769:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409350

	.globl free_entry
	.type free_entry, @function
free_entry:
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rdi + 0x48]
	mov	qword ptr [rsi + 8], rax
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x409370

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	qword ptr [rdi + 0x14], 0
	xor	eax, eax
	nop	
.label_771:
	mov	dword ptr [rdi + rax*4], esi
	inc	rax
	cmp	rax, 4
	jne	.label_771
	mov	dword ptr [rdi + 0x10], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x409390

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4093a0

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	mov	al, byte ptr [rdi + 0x1c]
	xor	al, 1
	movzx	edx, al
	add	edx, dword ptr [rdi + 0x14]
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	mov	ecx, dword ptr [rdi + 0x18]
	cmp	edx, ecx
	jne	.label_772
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
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
	#Procedure 0x4093e0

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	push	rbx
	mov	rbx, rdi
	call	i_ring_empty
	test	al, al
	jne	.label_773
	mov	ecx, dword ptr [rbx + 0x10]
	mov	edx, dword ptr [rbx + 0x14]
	mov	eax, dword ptr [rbx + rdx*4]
	mov	dword ptr [rbx + rdx*4], ecx
	mov	ecx, dword ptr [rbx + 0x14]
	cmp	ecx, dword ptr [rbx + 0x18]
	jne	.label_774
	mov	byte ptr [rbx + 0x1c], 1
	pop	rbx
	ret	
.label_774:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rbx + 0x14], ecx
	pop	rbx
	ret	
.label_773:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409420

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_11
	cmp	byte ptr [rcx], 0
	je	.label_775
	mov	rax, rcx
.label_775:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409450

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_776
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_776:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_778
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x18
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_777
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_779
.label_777:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_779:
	mov	ecx, dword ptr [rax]
.label_778:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x409530

	.globl opendirat
	.type opendirat, @function
opendirat:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rcx
	or	edx, 0x90900
	xor	ebx, ebx
	xor	eax, eax
	call	openat_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_781
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_780
	mov	dword ptr [r14], ebp
	jmp	.label_781
.label_780:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_781:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409580

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	ebx, 2
	ja	.label_782
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_783
.label_782:
	mov	eax, ebx
.label_783:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4095d0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_784
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_786
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_784
.label_786:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_784
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_785
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_785:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_784:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409650

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	je	.label_793
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_793:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_790
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_789
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_796
	test	esi, esi
	jne	.label_790
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_798
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_788
.label_790:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_794
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_796
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_799
.label_789:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_796:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_791
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_797
.label_791:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_797:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_799:
	cmp	eax, 6
	jne	.label_794
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_795
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_800
.label_794:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_787
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_792
.label_798:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_788:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	ret	
.label_795:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_800:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	ret	
.label_787:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_792:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409860

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409870

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_803
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_805
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_805
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_802
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_801
.label_805:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_801
.label_803:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_801:
	test	ebx, ebx
	js	.label_802
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_802
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_804
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_802
.label_804:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_802:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409940

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409960
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	cl, sil
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409970
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	cl, sil
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409980
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	cl, sil
	rol	edi, cl
	mov	eax, edi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409990
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	cl, sil
	ror	edi, cl
	mov	eax, edi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4099a0
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	cl, sil
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4099b0

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	cl, sil
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4099c0
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	cl, sil
	shl	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	movzx	eax, di
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4099e0
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	eax, edi
	mov	cl, sil
	shr	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	movzx	eax, di
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a00
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	eax, edi
	mov	cl, sil
	shl	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	movzx	eax, dil
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a20
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	cl, sil
	shr	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	movzx	eax, dil
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a40

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409b00

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x409b10

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
	#Procedure 0x409b20

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section .text
	.align	16
	#Procedure 0x409b30

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
