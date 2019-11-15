	.section	.text
	.align	16
	#Procedure 0x402230

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
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.3
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.6
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	rsp, rsp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.11
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:fmt_terse_regular
	nop	
	xor	eax, eax
	nop	
	mov	rsi, rcx
	call	__printf_chk
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:fmt_terse_fs
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.16
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	__printf_chk
	nop	
	call	emit_ancillary_info
	mov	edi, ebp
	lea	rsi, [rsi]
	call	exit
.label_8:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	__fprintf_chk
	mov	edi, ebp
	mov	rbp, rbp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402550

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	mov	rbp, rbp
	push	rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.27
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	pop	rax
	mov	rsp, rsp
	jmp	fputs_unlocked
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402590

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.28
	nop	word ptr cs:[rax + rax]
.label_10:
	mov	edi, OFFSET FLAT:.str.16
	call	strcmp
	test	eax, eax
	je	.label_11
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	lea	rsi, [rsi]
	jne	.label_10
.label_11:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:.str.16
	mov	rsp, rsp
	cmovne	rbx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	nop	
	mov	ecx, OFFSET FLAT:.str.18
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	mov	rbp, rbp
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_9
	mov	esi, OFFSET FLAT:.str.38
	mov	rsp, rsp
	mov	edx, 3
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strncmp
	nop	
	test	eax, eax
	nop	
	je	.label_9
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
.label_9:
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.40
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	rsp, rsp
	mov	r14d, OFFSET FLAT:.str.16
	lea	rdi, [rdi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.16
	xor	eax, eax
	call	__printf_chk
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.42
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	jmp	__printf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402710

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
	push	rax
	mov	rbp, rsi
	mov	r13d, edi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp]
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
	je	.label_29
	lea	rdi, [rdi]
	mov	rdi, rax
.label_29:
	mov	qword ptr [word ptr [rip + decimal_point]],  rdi
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [word ptr [rip + decimal_point_len]],  rax
	mov	edi, OFFSET FLAT:close_stdout
	mov	rsp, rsp
	call	atexit
	xor	r14d, r14d
	xor	r12d, r12d
	mov	rsp, rsp
	xor	r15d, r15d
	lea	rsi, [rsi]
	jmp	.label_27
	nop	word ptr cs:[rax + rax]
.label_23:
	lea	rdi, [rdi]
	mov	r14b, 1
.label_27:
	nop	
	mov	cl, r12b
.label_25:
	lea	rdi, [rdi]
	mov	r12b, cl
	jmp	.label_24
	nop	word ptr cs:[rax + rax]
.label_20:
	mov	rsp, rsp
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	mov	byte ptr [byte ptr [rip + interpret_backslash_escapes]],  bl
	mov	qword ptr [word ptr [rip + trailing_delim]],  rax
.label_24:
	xor	ebx, ebx
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.21
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r13d
	lea	rdi, [rdi]
	mov	rsi, rbp
	lea	rsi, [rsi]
	call	getopt_long
	cmp	eax, 0x65
	jg	.label_15
	cmp	eax, 0x4b
	jle	.label_17
	cmp	eax, 0x4c
	je	.label_19
	cmp	eax, 0x63
	nop	
	mov	eax, OFFSET FLAT:.str.22
	je	.label_20
	lea	rsi, [rsi]
	jmp	.label_18
	nop	dword ptr [rax]
.label_15:
	mov	cl, 1
	cmp	eax, 0x66
	je	.label_23
	cmp	eax, 0x74
	je	.label_25
	cmp	eax, 0x80
	lea	rdi, [rdi]
	jne	.label_18
	mov	bl, 1
	mov	eax, OFFSET FLAT:.str_0
	mov	rsp, rsp
	jmp	.label_20
.label_19:
	mov	byte ptr [byte ptr [rip + follow_links]],  1
	mov	rsp, rsp
	jmp	.label_24
.label_17:
	lea	rdi, [rdi]
	cmp	eax, -1
	mov	rsp, rsp
	jne	.label_31
	cmp	dword ptr [dword ptr [rip + optind]],  r13d
	mov	rsp, rsp
	je	.label_13
	lea	rsi, [rsi]
	test	r15, r15
	je	.label_22
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.26
	mov	rdi, r15
	call	strstr
	lea	rsi, [rsi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_21
	call	getenv_quoting_style
	mov	r12, r15
	jmp	.label_12
.label_22:
	test	r14b, r14b
	nop	
	setne	al
	mov	rsp, rsp
	test	r12b, r12b
	setne	cl
	movzx	r12d, al
	movzx	ebx, cl
	nop	
	xor	edx, edx
	mov	edi, r12d
	mov	esi, ebx
	mov	rbp, rbp
	call	default_format
	mov	r15, rax
	mov	edx, 1
	mov	rbp, rbp
	mov	edi, r12d
	nop	
	mov	esi, ebx
	call	default_format
	mov	rsp, rsp
	mov	r12, rax
	jmp	.label_12
.label_21:
	mov	rsp, rsp
	mov	r12, r15
.label_12:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	bl, 1
	lea	rsi, [rsi]
	cmp	eax, r13d
	mov	rsp, rsp
	jge	.label_14
	mov	rsp, rsp
	lea	rbp, [rbp + rax*8]
	sub	r13d, eax
	nop	
	mov	bl, 1
	nop	dword ptr [rax]
.label_28:
	test	r14b, r14b
	mov	rdi, qword ptr [rbp]
	mov	rsi, r15
	lea	rsi, [rsi]
	je	.label_26
	call	do_statfs
	jmp	.label_30
	nop	word ptr cs:[rax + rax]
.label_26:
	nop	
	mov	rdx, r12
	call	do_stat
.label_30:
	lea	rdi, [rdi]
	and	bl, al
	add	rbp, 8
	mov	rbp, rbp
	dec	r13d
	jne	.label_28
.label_14:
	nop	
	movzx	eax, bl
	mov	rbp, rbp
	xor	eax, 1
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	nop	
	pop	r15
	nop	
	pop	rbp
	ret	
.label_31:
	cmp	eax, 0xffffff7d
	je	.label_16
	cmp	eax, 0xffffff7e
	nop	
	jne	.label_18
	xor	edi, edi
	call	usage
.label_16:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, OFFSET FLAT:.str.17
	lea	rdi, [rdi]
	mov	r8d, OFFSET FLAT:.str.24
	xor	r9d, r9d
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	call	version_etc
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	call	exit
.label_18:
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_13:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	nop	
	xor	eax, eax
	nop	
	mov	rdx, rcx
	call	error
	lea	rdi, [rdi]
	mov	edi, 1
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a40

	.globl getenv_quoting_style
	.type getenv_quoting_style, @function
getenv_quoting_style:
	push	r14
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.50
	mov	rsp, rsp
	call	getenv
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_32
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:quoting_style_args
	mov	edx, OFFSET FLAT:quoting_style_vals
	mov	ecx, 4
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	argmatch
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	js	.label_34
	cdqe	
	nop	
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + quoting_style_vals]]
	xor	edi, edi
	jmp	.label_33
.label_32:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 4
.label_33:
	lea	rdi, [rdi]
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	jmp	set_quoting_style
.label_34:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 4
	nop	
	call	set_quoting_style
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.51
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, r14
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	jmp	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402b20

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
	je	.label_37
	test	sil, sil
	nop	
	je	.label_39
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:fmt_terse_fs
	jmp	.label_35
.label_37:
	test	sil, sil
	je	.label_40
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:fmt_terse_regular
	jmp	.label_35
.label_39:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdi, rax
.label_35:
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	r15
	jmp	xstrdup
.label_40:
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
	je	.label_36
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.55
	jmp	.label_38
.label_36:
	mov	esi, OFFSET FLAT:.str.56
.label_38:
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
	#Procedure 0x402c90

	.globl do_statfs
	.type do_statfs, @function
do_statfs:
	push	rbp
	push	r15
	push	r14
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x78
	mov	r14, rsi
	nop	
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	mov	rsp, rsp
	jne	.label_44
	nop	
	cmp	byte ptr [rbx + 1], 0
	je	.label_43
.label_44:
	nop	
	lea	rsi, [rsp]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	statfs
	test	eax, eax
	je	.label_42
	call	__errno_location
	lea	rdi, [rdi]
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, rbx
	nop	
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	eax, eax
	nop	
	mov	esi, r15d
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rsp, rsp
	call	error
	jmp	.label_41
.label_42:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	lea	rdi, [rdi]
	mov	esi, 0xffffffff
	mov	ecx, OFFSET FLAT:print_statfs
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rdx, rbx
	call	print_it
	mov	rbp, rbp
	mov	r14b, al
	nop	
	xor	r14b, 1
	jmp	.label_41
.label_43:
	lea	rdi, [rdi]
	xor	r14d, r14d
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	r15, rax
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	call	error
.label_41:
	mov	al, r14b
	add	rsp, 0x78
	nop	
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402dc0

	.globl do_stat
	.type do_stat, @function
do_stat:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x90
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	nop	
	mov	rbx, rdi
	mov	rsp, rsp
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	jne	.label_45
	mov	al, byte ptr [rbx + 1]
	mov	cl, al
	lea	rsi, [rsi]
	neg	cl
	sbb	r12d, r12d
	lea	rbp, [rsp]
	nop	
	test	al, al
	jne	.label_48
	lea	rdi, [rdi]
	mov	edi, r12d
	nop	
	mov	rsi, rbp
	call	__fstat
	test	eax, eax
	mov	rbp, rbp
	je	.label_46
	mov	rbp, rbp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	xor	ebp, ebp
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.192
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	lea	rsi, [rsi]
	jmp	.label_50
.label_45:
	lea	rdi, [rdi]
	lea	rbp, [rsp]
	mov	r12d, 0xffffffff
.label_48:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + follow_links]]
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsp]
	nop	
	mov	rdi, rbx
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_49
	call	stat
	jmp	.label_47
.label_49:
	call	__lstat
.label_47:
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_46
	call	__errno_location
	mov	r14d, dword ptr [rax]
	lea	rdi, [rdi]
	xor	ebp, ebp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	r15, rax
	mov	rsp, rsp
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, rbx
	nop	
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, r14d
	mov	rdx, r15
	lea	rsi, [rsi]
	call	error
	jmp	.label_50
.label_46:
	mov	eax, 0x4000
	lea	rdi, [rdi]
	or	eax, dword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	and	eax, 0xf000
	cmp	eax, 0x6000
	nop	
	jne	.label_51
	mov	r14, r15
.label_51:
	mov	ecx, OFFSET FLAT:print_stat
	mov	rsp, rsp
	mov	rdi, r14
	mov	esi, r12d
	nop	
	mov	rdx, rbx
	mov	r8, rbp
	mov	rbp, rbp
	call	print_it
	mov	rbp, rbp
	mov	bpl, al
	lea	rdi, [rdi]
	xor	bpl, 1
.label_50:
	mov	al, bpl
	lea	rdi, [rdi]
	add	rsp, 0x90
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f70

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
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	nop	
	mov	dword ptr [rsp + 0xc], esi
	mov	r14, rdi
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rsi]
	lea	rdi, [rax + 3]
	call	xmalloc
	mov	qword ptr [rsp + 0x30], rax
	mov	al, byte ptr [r14]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x2c], 0
	mov	rbp, rbp
	jmp	.label_65
	nop	dword ptr [rax]
.label_57:
	mov	rsp, rsp
	mov	al, byte ptr [r14 + 1]
	lea	rdi, [rdi]
	inc	r14
.label_65:
	mov	rbp, rbp
	test	al, al
	je	.label_72
	movsx	edi, al
	cmp	edi, 0x5c
	je	.label_73
	cmp	edi, 0x25
	lea	rsi, [rsi]
	jne	.label_75
	lea	r15, [r14 + 1]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:printf_flags
	mov	rdi, r15
	call	strspn
	lea	rdi, [rdi]
	lea	rbp, [r14 + rax]
	lea	rdi, [r14 + rax + 1]
	mov	esi, OFFSET FLAT:digits
	lea	rsi, [rsi]
	call	strspn
	lea	rbx, [rax + rbp + 1]
	movzx	eax, byte ptr [rax + rbp + 1]
	cmp	eax, 0x2e
	jne	.label_63
	mov	rbp, rbp
	lea	rdi, [rbx + 1]
	mov	esi, OFFSET FLAT:digits
	call	strspn
	lea	rbx, [rax + rbx + 1]
.label_63:
	mov	r12, rbx
	sub	r12, r15
	nop	
	movsx	ebp, byte ptr [rbx]
	mov	rbp, rbp
	lea	r13, [r12 + 1]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rdx, r13
	call	memcpy
	lea	rdi, [rdi]
	cmp	ebp, 0x25
	mov	r14, rbx
	je	.label_76
	mov	rsp, rsp
	test	ebp, ebp
	jne	.label_54
	lea	rdi, [rdi]
	lea	r14, [rbx - 1]
.label_76:
	lea	rdi, [rdi]
	cmp	rbx, r15
	mov	rbp, rbp
	jne	.label_58
	nop	
	mov	edi, 0x25
	lea	rdi, [rdi]
	call	putchar_unlocked
	mov	rbp, rbp
	jmp	.label_57
	nop	dword ptr [rax]
.label_73:
	nop	
	mov	al,  byte ptr [byte ptr [rip + interpret_backslash_escapes]]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	je	.label_53
	movsx	edi, byte ptr [r14 + 1]
	lea	rsi, [rsi]
	mov	eax, edi
	and	eax, 0xf8
	lea	rsi, [rsi]
	cmp	eax, 0x30
	jne	.label_69
	lea	rdi, [rdi]
	add	edi, -0x30
	mov	eax, 2
	nop	word ptr [rax + rax]
.label_60:
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [r14 + rax]
	mov	rbp, rbp
	mov	edx, ecx
	mov	rsp, rsp
	and	edx, 0xf8
	mov	rsp, rsp
	cmp	edx, 0x30
	nop	
	jne	.label_52
	lea	edi, [rcx + rdi*8 - 0x30]
	inc	rax
	lea	rsi, [rsi]
	lea	ecx, [rax - 1]
	cmp	ecx, 3
	jl	.label_60
.label_52:
	add	r14, rax
	nop	
	call	putchar_unlocked
	nop	
	dec	r14
	mov	rbp, rbp
	jmp	.label_57
.label_53:
	mov	rsp, rsp
	mov	edi, 0x5c
	mov	rbp, rbp
	call	putchar_unlocked
	jmp	.label_57
.label_54:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, r13
	mov	edx, ebp
	mov	ecx, dword ptr [rsp + 0xc]
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	call	qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x2c]
	mov	rbp, rbp
	and	cl, 1
	lea	rdi, [rdi]
	or	cl, al
	mov	dword ptr [rsp + 0x2c], ecx
	jmp	.label_55
.label_69:
	lea	rsi, [rsi]
	movzx	eax, dil
	mov	rbp, rbp
	cmp	eax, 0x78
	nop	
	jne	.label_59
	movsx	r15d, byte ptr [r14 + 2]
	lea	rdi, [rdi]
	mov	edi, r15d
	lea	rdi, [rdi]
	call	to_uchar
	movzx	ebx, al
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	r13, rax
	mov	rax, qword ptr [r13]
	mov	rsp, rsp
	test	byte ptr [rax + rbx*2 + 1], 0x10
	lea	rsi, [rsi]
	jne	.label_62
.label_59:
	lea	rbx, [r14 + 1]
	nop	
	mov	al, byte ptr [rbx]
	mov	rsp, rsp
	test	al, al
	mov	rbp, rbp
	je	.label_71
	movsx	edi, al
	call	print_esc_char
.label_55:
	mov	r14, rbx
	lea	rsi, [rsi]
	jmp	.label_57
.label_71:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rcx
	call	error
	lea	rsi, [rsi]
	mov	edi, 0x5c
	call	putchar_unlocked
	nop	
	jmp	.label_57
.label_62:
	mov	al, r15b
	add	al, 0x9f
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 5
	ja	.label_66
	add	r15d, -0x57
	lea	rsi, [rsi]
	jmp	.label_74
.label_66:
	lea	rdi, [rdi]
	mov	al, r15b
	add	al, 0xbf
	mov	rsp, rsp
	movzx	eax, al
	cmp	eax, 5
	ja	.label_61
	lea	rdi, [rdi]
	add	r15d, -0x37
	mov	rbp, rbp
	jmp	.label_74
.label_61:
	lea	rdi, [rdi]
	add	r15d, -0x30
.label_74:
	mov	rbp, rbp
	movsx	ebx, byte ptr [r14 + 3]
	lea	rsi, [rsi]
	mov	edi, ebx
	call	to_uchar
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r13]
	test	byte ptr [rcx + rax*2 + 1], 0x10
	jne	.label_56
	mov	rbp, rbp
	add	r14, 2
	mov	rsp, rsp
	jmp	.label_67
.label_56:
	mov	rbp, rbp
	shl	r15d, 4
	mov	al, bl
	lea	rsi, [rsi]
	add	al, 0x9f
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 5
	ja	.label_64
	lea	rsi, [rsi]
	add	ebx, -0x57
	jmp	.label_68
.label_64:
	mov	rsp, rsp
	mov	al, bl
	nop	
	add	al, 0xbf
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 5
	ja	.label_70
	mov	rsp, rsp
	add	ebx, -0x37
	lea	rsi, [rsi]
	jmp	.label_68
.label_70:
	nop	
	add	ebx, -0x30
.label_68:
	add	r14, 3
	add	r15d, ebx
.label_67:
	mov	rsp, rsp
	mov	edi, r15d
	nop	word ptr cs:[rax + rax]
.label_75:
	call	putchar_unlocked
	lea	rdi, [rdi]
	jmp	.label_57
.label_72:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + trailing_delim]]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x2c]
	and	al, 1
	lea	rdi, [rdi]
	add	rsp, 0x38
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_58:
	mov	rsp, rsp
	mov	al, byte ptr [rbx]
	mov	rbp, qword ptr [rsp + 0x30]
	mov	byte ptr [rbp + r12 + 1], al
	mov	byte ptr [rbp + r12 + 2], 0
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	mov	rdi, rbp
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033c0

	.globl print_statfs
	.type print_statfs, @function
print_statfs:
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r14, rsi
	mov	rbx, rdi
	lea	eax, [rdx - 0x61]
	mov	rbp, rbp
	cmp	eax, 0x13
	mov	rsp, rsp
	ja	.label_77
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_81]]
.label_972:
	mov	rsp, rsp
	mov	rdx, qword ptr [r9 + 0x20]
	nop	
	jmp	.label_79
.label_77:
	cmp	edx, 0x53
	mov	rsp, rsp
	je	.label_84
	cmp	edx, 0x54
	mov	rsp, rsp
	jne	.label_85
	mov	rdi, r9
	call	human_fstype
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r14
	mov	rdx, rax
	lea	rdi, [rdi]
	call	out_string
	lea	rdi, [rdi]
	jmp	.label_78
.label_85:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	edi, 0x3f
	lea	rdi, [rdi]
	call	fputc_unlocked
	lea	rsi, [rsi]
	jmp	.label_78
.label_973:
	nop	
	mov	rdx, qword ptr [r9 + 0x10]
	jmp	.label_79
.label_974:
	mov	rdx, qword ptr [r9 + 0x28]
	jmp	.label_80
.label_975:
	mov	rsp, rsp
	mov	rdx, qword ptr [r9 + 0x30]
	lea	rdi, [rdi]
	jmp	.label_79
.label_976:
	nop	
	mov	rdx, qword ptr [r9 + 0x18]
.label_79:
	mov	rdi, rbx
	nop	
	mov	rsi, r14
	mov	rsp, rsp
	call	out_int
	mov	rsp, rsp
	jmp	.label_78
.label_977:
	add	r9, 0x3c
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax]
.label_82:
	lea	rsi, [rsi]
	mov	eax, dword ptr [r9]
	nop	
	shl	rax, cl
	or	rdx, rax
	lea	rsi, [rsi]
	add	r9, -4
	add	rcx, 0x20
	cmp	rcx, 0x40
	jne	.label_82
	nop	
	jmp	.label_83
.label_978:
	mov	rdx, qword ptr [r9 + 0x40]
	mov	rbp, rbp
	jmp	.label_80
.label_979:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rdx, r8
	mov	rbp, rbp
	call	out_string
	lea	rsi, [rsi]
	jmp	.label_78
.label_981:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r9]
.label_83:
	mov	rdi, rbx
	mov	rsi, r14
	call	out_uint_x
	lea	rdi, [rdi]
	jmp	.label_78
.label_84:
	mov	rdx, qword ptr [r9 + 0x48]
	test	rdx, rdx
	nop	
	jne	.label_80
.label_980:
	mov	rdx, qword ptr [r9 + 8]
.label_80:
	mov	rdi, rbx
	mov	rsi, r14
	call	out_uint
.label_78:
	xor	eax, eax
	nop	
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x403510

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	lea	rdi, [rdi]
	movzx	eax, dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403520

	.globl print_esc_char
	.type print_esc_char, @function
print_esc_char:
	nop	
	push	rbx
	lea	rdi, [rdi]
	mov	ebx, edi
	lea	rsi, [rsi]
	lea	eax, [rbx - 0x5c]
	mov	rsp, rsp
	cmp	eax, 0xa
	mov	rbp, rbp
	jbe	.label_86
	lea	eax, [rbx - 0x6e]
	cmp	eax, 8
	lea	rsi, [rsi]
	ja	.label_90
	mov	rsp, rsp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_88]]
.label_994:
	lea	rdi, [rdi]
	mov	bl, 0xa
	nop	
	jmp	.label_87
.label_86:
	jmp	qword ptr [word ptr [+ (rax * 8) + label_89]]
.label_988:
	mov	bl, 7
	nop	
	jmp	.label_87
.label_90:
	cmp	ebx, 0x22
	mov	rbp, rbp
	je	.label_87
.label_987:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	ecx, ebx
	call	error
	mov	rbp, rbp
	jmp	.label_87
.label_995:
	mov	rbp, rbp
	mov	bl, 0xd
	jmp	.label_87
.label_996:
	mov	bl, 9
	mov	rsp, rsp
	jmp	.label_87
.label_997:
	mov	bl, 0xb
	jmp	.label_87
.label_989:
	lea	rsi, [rsi]
	mov	bl, 8
	jmp	.label_87
.label_990:
	mov	bl, 0x1b
	lea	rsi, [rsi]
	jmp	.label_87
.label_991:
	mov	bl, 0xc
.label_87:
	mov	rbp, rbp
	movsx	edi, bl
	nop	
	pop	rbx
	jmp	putchar_unlocked
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035e0

	.globl out_string
	.type out_string, @function
out_string:
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbp, rbp
	push	rax
	lea	rsi, [rsi]
	mov	r14, rdx
	mov	rbx, rdi
	nop	
	mov	edx, OFFSET FLAT:.str.59
	mov	ecx, OFFSET FLAT:.str.65
	call	make_format
	lea	rsi, [rsi]
	mov	edi, 1
	xor	eax, eax
	nop	
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	jmp	__printf_chk
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403630

	.globl out_uint_x
	.type out_uint_x, @function
out_uint_x:
	push	r14
	nop	
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r14, rdx
	nop	
	mov	rbx, rdi
	mov	edx, OFFSET FLAT:.str.66
	mov	ecx, OFFSET FLAT:.str.67
	call	make_format
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	jmp	__printf_chk
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403680

	.globl out_uint
	.type out_uint, @function
out_uint:
	push	r14
	mov	rsp, rsp
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	edx, OFFSET FLAT:.str.68
	mov	ecx, OFFSET FLAT:.str.69
	call	make_format
	mov	rsp, rsp
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rdx, r14
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	jmp	__printf_chk
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036d0

	.globl human_fstype
	.type human_fstype, @function
human_fstype:
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:.str.70
	lea	rdi, [rdi]
	mov	r8, qword ptr [rdi]
	cmp	r8, 0x2fc12fc0
	lea	rsi, [rsi]
	jg	.label_141
	cmp	r8, 0xef50
	mov	rsp, rsp
	jg	.label_151
	cmp	r8, 0x482a
	lea	rsi, [rsi]
	jle	.label_155
	cmp	r8, 0x7274
	lea	rdi, [rdi]
	jg	.label_159
	nop	
	cmp	r8, 0x517a
	nop	
	jg	.label_163
	cmp	r8, 0x4d43
	nop	
	jg	.label_168
	cmp	r8, 0x482b
	lea	rsi, [rsi]
	je	.label_170
	mov	rbp, rbp
	cmp	r8, 0x4858
	lea	rdi, [rdi]
	jne	.label_95
	mov	ebx, OFFSET FLAT:.str.117
	jmp	.label_94
.label_141:
	lea	rdi, [rdi]
	cmp	r8, 0x65735542
	jle	.label_178
	mov	eax, 0x858458f5
	nop	
	cmp	r8, rax
	nop	
	jle	.label_181
	nop	
	mov	eax, 0xc97e8167
	cmp	r8, rax
	nop	
	jg	.label_196
	lea	rdi, [rdi]
	mov	eax, 0xaad7aae9
	cmp	r8, rax
	nop	
	jg	.label_190
	lea	rdi, [rdi]
	mov	eax, 0x958458f5
	cmp	r8, rax
	lea	rsi, [rsi]
	jg	.label_194
	mov	eax, 0x858458f6
	lea	rdi, [rdi]
	cmp	r8, rax
	je	.label_198
	nop	
	mov	eax, 0x9123683e
	cmp	r8, rax
	jne	.label_95
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:.str.84
	lea	rsi, [rsi]
	jmp	.label_94
.label_151:
	lea	rsi, [rsi]
	cmp	r8, 0x13111a7
	jg	.label_208
	cmp	r8, 0x1021993
	lea	rdi, [rdi]
	jg	.label_211
	nop	
	cmp	r8, 0x27e0ea
	lea	rsi, [rsi]
	jg	.label_97
	cmp	r8, 0xf15e
	mov	rsp, rsp
	jg	.label_103
	cmp	r8, 0xef51
	lea	rsi, [rsi]
	je	.label_106
	cmp	r8, 0xef53
	mov	rbp, rbp
	jne	.label_95
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:.str.105
	mov	rsp, rsp
	jmp	.label_94
.label_178:
	cmp	r8, 0x541900ff
	jg	.label_117
	cmp	r8, 0x47504652
	jle	.label_120
	cmp	r8, 0x5346414e
	mov	rbp, rbp
	jg	.label_123
	nop	
	cmp	r8, 0x52654972
	lea	rsi, [rsi]
	jg	.label_126
	lea	rsi, [rsi]
	cmp	r8, 0x47504653
	je	.label_130
	lea	rsi, [rsi]
	cmp	r8, 0x50495045
	mov	rbp, rbp
	jne	.label_95
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:.str.149
	jmp	.label_94
.label_155:
	lea	rdi, [rdi]
	cmp	r8, 0x1cd0
	jle	.label_139
	cmp	r8, 0x3fff
	jg	.label_145
	cmp	r8, 0x2477
	lea	rdi, [rdi]
	jg	.label_147
	cmp	r8, 0x1cd1
	mov	rsp, rsp
	je	.label_153
	lea	rsi, [rsi]
	cmp	r8, 0x2468
	jne	.label_95
	mov	ebx, OFFSET FLAT:.str.134
	jmp	.label_94
.label_181:
	lea	rsi, [rsi]
	cmp	r8, 0x73636672
	jle	.label_165
	lea	rdi, [rdi]
	cmp	r8, 0x7461636e
	jg	.label_169
	cmp	r8, 0x73727278
	mov	rbp, rbp
	jg	.label_171
	cmp	r8, 0x73636673
	je	.label_174
	lea	rdi, [rdi]
	cmp	r8, 0x73717368
	jne	.label_95
	mov	ebx, OFFSET FLAT:.str.168
	jmp	.label_94
.label_117:
	lea	rdi, [rdi]
	cmp	r8, 0x6165676b
	jle	.label_142
	cmp	r8, 0x62656571
	jg	.label_187
	mov	rbp, rbp
	cmp	r8, 0x62646575
	jg	.label_189
	mov	rbp, rbp
	cmp	r8, 0x6165676c
	je	.label_193
	nop	
	cmp	r8, 0x61756673
	jne	.label_95
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:.str.76
	lea	rdi, [rdi]
	jmp	.label_94
.label_208:
	mov	rbp, rbp
	cmp	r8, 0x15013345
	jg	.label_204
	cmp	r8, 0xbad1de9
	jle	.label_207
	mov	rbp, rbp
	cmp	r8, 0x11307853
	lea	rdi, [rdi]
	jg	.label_192
	cmp	r8, 0xbad1dea
	je	.label_100
	mov	rsp, rsp
	cmp	r8, 0xbd00bd0
	lea	rsi, [rsi]
	jne	.label_95
	mov	ebx, OFFSET FLAT:.str.130
	jmp	.label_94
.label_159:
	cmp	r8, 0x9fa0
	mov	rbp, rbp
	jg	.label_105
	cmp	r8, 0x965f
	mov	rsp, rsp
	jg	.label_109
	cmp	r8, 0x7275
	je	.label_114
	cmp	r8, 0x72b6
	jne	.label_95
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:.str.126
	jmp	.label_94
.label_196:
	mov	eax, 0xf97cff8b
	cmp	r8, rax
	jg	.label_122
	mov	eax, 0xde5e81e3
	cmp	r8, rax
	jg	.label_158
	mov	eax, 0xc97e8168
	lea	rsi, [rsi]
	cmp	r8, rax
	mov	rsp, rsp
	je	.label_127
	lea	rdi, [rdi]
	mov	eax, 0xcafe4a11
	cmp	r8, rax
	mov	rbp, rbp
	jne	.label_95
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:.str.82
	lea	rsi, [rsi]
	jmp	.label_94
.label_211:
	mov	rbp, rbp
	cmp	r8, 0x12fd16c
	jg	.label_138
	cmp	r8, 0x1021994
	lea	rdi, [rdi]
	je	.label_144
	cmp	r8, 0x1021997
	nop	
	je	.label_149
	cmp	r8, 0x1161970
	jne	.label_95
	mov	ebx, OFFSET FLAT:.str.113
	mov	rbp, rbp
	jmp	.label_94
.label_120:
	cmp	r8, 0x42494e4c
	lea	rsi, [rsi]
	jle	.label_160
	lea	rdi, [rdi]
	cmp	r8, 0x453dcd27
	mov	rbp, rbp
	jg	.label_164
	nop	
	cmp	r8, 0x42494e4d
	je	.label_206
	cmp	r8, 0x43415d53
	lea	rdi, [rdi]
	jne	.label_95
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:.str.163
	jmp	.label_94
.label_139:
	mov	rsp, rsp
	cmp	r8, 0x1372
	lea	rsi, [rsi]
	jle	.label_177
	mov	rsp, rsp
	cmp	r8, 0x137e
	jg	.label_180
	mov	rbp, rbp
	cmp	r8, 0x1373
	mov	rbp, rbp
	je	.label_183
	nop	
	cmp	r8, 0x137d
	jne	.label_95
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:.str.104
	mov	rsp, rsp
	jmp	.label_94
.label_165:
	cmp	r8, 0x68191121
	mov	rsp, rsp
	jle	.label_136
	mov	rbp, rbp
	cmp	r8, 0x6e667363
	jg	.label_199
	lea	rdi, [rdi]
	cmp	r8, 0x68191122
	mov	rsp, rsp
	je	.label_203
	lea	rsi, [rsi]
	cmp	r8, 0x6b414653
	nop	
	jne	.label_95
	mov	ebx, OFFSET FLAT:.str.128
	nop	
	jmp	.label_94
.label_142:
	mov	rbp, rbp
	cmp	r8, 0x58465341
	jle	.label_91
	cmp	r8, 0x5dca2df4
	mov	rbp, rbp
	jg	.label_99
	lea	rdi, [rdi]
	cmp	r8, 0x58465342
	mov	rbp, rbp
	je	.label_104
	mov	rbp, rbp
	cmp	r8, 0x5a3c69f0
	lea	rdi, [rdi]
	je	.label_94
	jmp	.label_95
.label_204:
	lea	rsi, [rsi]
	cmp	r8, 0x1badfacd
	jle	.label_113
	cmp	r8, 0x28cd3d44
	jg	.label_115
	cmp	r8, 0x1badface
	je	.label_118
	lea	rdi, [rdi]
	cmp	r8, 0x24051905
	jne	.label_95
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:.str.174
	lea	rsi, [rsi]
	jmp	.label_94
.label_163:
	mov	rbp, rbp
	cmp	r8, 0x5df4
	jg	.label_129
	cmp	r8, 0x517b
	mov	rsp, rsp
	je	.label_132
	cmp	r8, 0x564c
	jne	.label_95
	mov	ebx, OFFSET FLAT:.str.139
	jmp	.label_94
.label_190:
	mov	eax, 0xbacbacbb
	mov	rsp, rsp
	cmp	r8, rax
	mov	rbp, rbp
	jg	.label_140
	mov	eax, 0xaad7aaea
	cmp	r8, rax
	je	.label_148
	mov	eax, 0xabba1974
	cmp	r8, rax
	nop	
	jne	.label_95
	nop	
	mov	ebx, OFFSET FLAT:.str.183
	jmp	.label_94
.label_97:
	lea	rsi, [rsi]
	cmp	r8, 0xc0ffed
	jg	.label_157
	cmp	r8, 0x27e0eb
	mov	rsp, rsp
	je	.label_162
	mov	rbp, rbp
	cmp	r8, 0x414a53
	lea	rsi, [rsi]
	jne	.label_95
	mov	ebx, OFFSET FLAT:.str.101
	jmp	.label_94
.label_123:
	lea	rdi, [rdi]
	cmp	r8, 0x5346544d
	nop	
	jg	.label_172
	mov	rbp, rbp
	cmp	r8, 0x5346414f
	je	.label_176
	mov	rbp, rbp
	cmp	r8, 0x53464846
	mov	rsp, rsp
	jne	.label_95
	mov	ebx, OFFSET FLAT:.str.182
	jmp	.label_94
.label_145:
	mov	rsp, rsp
	cmp	r8, 0x4005
	nop	
	jg	.label_185
	cmp	r8, 0x4000
	nop	
	je	.label_182
	cmp	r8, 0x4004
	mov	rsp, rsp
	jne	.label_95
.label_182:
	nop	
	mov	ebx, OFFSET FLAT:.str.124
	jmp	.label_94
.label_169:
	lea	rsi, [rsi]
	cmp	r8, 0x794c762f
	nop	
	jg	.label_197
	lea	rsi, [rsi]
	cmp	r8, 0x7461636f
	je	.label_201
	lea	rdi, [rdi]
	cmp	r8, 0x74726163
	jne	.label_95
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:.str.173
	jmp	.label_94
.label_187:
	lea	rdi, [rdi]
	cmp	r8, 0x6462671f
	mov	rbp, rbp
	jg	.label_202
	cmp	r8, 0x62656572
	je	.label_96
	lea	rdi, [rdi]
	cmp	r8, 0x63677270
	jne	.label_95
	nop	
	mov	ebx, OFFSET FLAT:.str.88
	nop	
	jmp	.label_94
.label_105:
	cmp	r8, 0xadf4
	lea	rsi, [rsi]
	jg	.label_108
	lea	rdi, [rdi]
	cmp	r8, 0x9fa1
	mov	rbp, rbp
	je	.label_111
	cmp	r8, 0x9fa2
	nop	
	jne	.label_95
	mov	ebx, OFFSET FLAT:.str.177
	nop	
	jmp	.label_94
.label_122:
	nop	
	mov	eax, 0xfe534d41
	mov	rsp, rsp
	cmp	r8, rax
	jg	.label_121
	lea	rdi, [rdi]
	mov	eax, 0xf97cff8c
	cmp	r8, rax
	je	.label_124
	mov	eax, 0xf995e849
	lea	rdi, [rdi]
	cmp	r8, rax
	jne	.label_95
	mov	ebx, OFFSET FLAT:.str.119
	nop	
	jmp	.label_94
.label_138:
	lea	rdi, [rdi]
	lea	rax, [r8 - 0x12ff7b4]
	cmp	rax, 3
	ja	.label_134
	mov	rsp, rsp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_137]]
.label_1002:
	mov	ebx, OFFSET FLAT:.str.184
	jmp	.label_94
.label_207:
	lea	rdi, [rdi]
	cmp	r8, 0x13111a8
	mov	rbp, rbp
	je	.label_143
	cmp	r8, 0x7655821
	nop	
	je	.label_150
	cmp	r8, 0x9041934
	jne	.label_95
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:.str.75
	mov	rsp, rsp
	jmp	.label_94
.label_160:
	cmp	r8, 0x2fc12fc1
	je	.label_161
	cmp	r8, 0x3153464a
	je	.label_166
	cmp	r8, 0x42465331
	mov	rsp, rsp
	jne	.label_95
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:.str.79
	lea	rsi, [rsi]
	jmp	.label_94
.label_177:
	nop	
	cmp	r8, 0x2f
	je	.label_173
	nop	
	cmp	r8, 0x187
	lea	rdi, [rdi]
	je	.label_101
	mov	rsp, rsp
	cmp	r8, 0x7c0
	jne	.label_95
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:.str.125
	jmp	.label_94
.label_136:
	lea	rsi, [rsi]
	cmp	r8, 0x65735543
	nop	
	je	.label_210
	mov	rbp, rbp
	cmp	r8, 0x65735546
	je	.label_191
	lea	rdi, [rdi]
	cmp	r8, 0x67596969
	jne	.label_95
	mov	ebx, OFFSET FLAT:.str.12_0
	jmp	.label_94
.label_91:
	cmp	r8, 0x54190100
	mov	rsp, rsp
	je	.label_128
	lea	rsi, [rsi]
	cmp	r8, 0x565a4653
	je	.label_152
	mov	rsp, rsp
	cmp	r8, 0x58295829
	mov	rsp, rsp
	jne	.label_95
	mov	ebx, OFFSET FLAT:.str.188
	mov	rbp, rbp
	jmp	.label_94
.label_113:
	cmp	r8, 0x15013346
	je	.label_92
	nop	
	cmp	r8, 0x19800202
	je	.label_98
	cmp	r8, 0x19830326
	lea	rdi, [rdi]
	jne	.label_95
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:.str.109
	lea	rdi, [rdi]
	jmp	.label_94
.label_168:
	nop	
	cmp	r8, 0x4d44
	mov	rbp, rbp
	je	.label_110
	cmp	r8, 0x4d5a
	lea	rdi, [rdi]
	jne	.label_95
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:.str.136
	jmp	.label_94
.label_194:
	mov	rbp, rbp
	mov	eax, 0x958458f6
	lea	rsi, [rsi]
	cmp	r8, rax
	nop	
	je	.label_135
	mov	eax, 0xa501fcf5
	lea	rdi, [rdi]
	cmp	r8, rax
	jne	.label_95
	nop	
	mov	ebx, OFFSET FLAT:.str.180
	jmp	.label_94
.label_103:
	lea	rsi, [rsi]
	cmp	r8, 0xf15f
	lea	rdi, [rdi]
	je	.label_131
	lea	rdi, [rdi]
	cmp	r8, 0x11954
	jne	.label_95
.label_128:
	mov	ebx, OFFSET FLAT:.str.176
	lea	rsi, [rsi]
	jmp	.label_94
.label_126:
	lea	rdi, [rdi]
	cmp	r8, 0x52654973
	mov	rsp, rsp
	je	.label_119
	cmp	r8, 0x5346314d
	jne	.label_95
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:.str.131
	jmp	.label_94
.label_147:
	mov	rsp, rsp
	cmp	r8, 0x2478
	je	.label_154
	cmp	r8, 0x3434
	lea	rsi, [rsi]
	jne	.label_95
	nop	
	mov	ebx, OFFSET FLAT:.str.142
	lea	rdi, [rdi]
	jmp	.label_94
.label_171:
	mov	rsp, rsp
	cmp	r8, 0x73727279
	je	.label_167
	cmp	r8, 0x73757245
	mov	rbp, rbp
	jne	.label_95
	mov	ebx, OFFSET FLAT:.str.90
	jmp	.label_94
.label_189:
	mov	rbp, rbp
	cmp	r8, 0x62646576
	lea	rdi, [rdi]
	je	.label_175
	lea	rsi, [rsi]
	cmp	r8, 0x62656570
	jne	.label_95
	mov	ebx, OFFSET FLAT:.str.92
	mov	rsp, rsp
	jmp	.label_94
.label_192:
	cmp	r8, 0x11307854
	lea	rdi, [rdi]
	je	.label_184
	cmp	r8, 0x13661366
	mov	rbp, rbp
	jne	.label_95
	mov	ebx, OFFSET FLAT:.str.78
	jmp	.label_94
.label_109:
	cmp	r8, 0x9660
	lea	rsi, [rsi]
	je	.label_195
	cmp	r8, 0x9fa0
	mov	rbp, rbp
	jne	.label_95
	mov	ebx, OFFSET FLAT:.str.6_0
	jmp	.label_94
.label_158:
	mov	eax, 0xde5e81e4
	cmp	r8, rax
	nop	
	je	.label_205
	lea	rsi, [rsi]
	mov	eax, 0xf2f52010
	lea	rdi, [rdi]
	cmp	r8, rax
	jne	.label_95
	nop	
	mov	ebx, OFFSET FLAT:.str.107
	jmp	.label_94
.label_164:
	mov	rbp, rbp
	cmp	r8, 0x453dcd28
	mov	rsp, rsp
	je	.label_93
	mov	rbp, rbp
	cmp	r8, 0x45584653
	jne	.label_95
	mov	ebx, OFFSET FLAT:.str.102
	jmp	.label_94
.label_180:
	cmp	r8, 0x137f
	mov	rsp, rsp
	je	.label_107
	mov	rsp, rsp
	cmp	r8, 0x138f
	lea	rdi, [rdi]
	jne	.label_95
	mov	ebx, OFFSET FLAT:.str.133
	jmp	.label_94
.label_199:
	cmp	r8, 0x6e667364
	mov	rsp, rsp
	je	.label_116
	nop	
	cmp	r8, 0x6e736673
	jne	.label_95
	mov	ebx, OFFSET FLAT:.str.143
	jmp	.label_94
.label_99:
	nop	
	cmp	r8, 0x5dca2df5
	je	.label_125
	cmp	r8, 0x61636673
	mov	rsp, rsp
	jne	.label_95
	mov	ebx, OFFSET FLAT:.str.71
	jmp	.label_94
.label_115:
	cmp	r8, 0x28cd3d45
	mov	rbp, rbp
	je	.label_133
	mov	rbp, rbp
	cmp	r8, 0x2bad1dea
	jne	.label_95
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:.str.123
	jmp	.label_94
.label_129:
	cmp	r8, 0x5df5
	mov	rbp, rbp
	je	.label_146
	lea	rsi, [rsi]
	cmp	r8, 0x6969
	lea	rsi, [rsi]
	jne	.label_95
	mov	ebx, OFFSET FLAT:.str.140
	jmp	.label_94
.label_140:
	lea	rsi, [rsi]
	mov	eax, 0xbacbacbc
	lea	rdi, [rdi]
	cmp	r8, rax
	nop	
	je	.label_156
	mov	rbp, rbp
	mov	eax, 0xbeefdead
	lea	rsi, [rsi]
	cmp	r8, rax
	mov	rsp, rsp
	jne	.label_95
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:.str.166
	jmp	.label_94
.label_157:
	lea	rsi, [rsi]
	cmp	r8, 0xc0ffee
	je	.label_186
	cmp	r8, 0xc36400
	jne	.label_95
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:.str.86
	nop	
	jmp	.label_94
.label_172:
	cmp	r8, 0x5346544e
	je	.label_179
	cmp	r8, 0x534f434b
	lea	rsi, [rsi]
	jne	.label_95
	mov	ebx, OFFSET FLAT:.str.167
	jmp	.label_94
.label_185:
	mov	rsp, rsp
	cmp	r8, 0x4006
	je	.label_188
	mov	rsp, rsp
	cmp	r8, 0x4244
	jne	.label_95
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:.str.115
	lea	rsi, [rsi]
	jmp	.label_94
.label_197:
	lea	rsi, [rsi]
	cmp	r8, 0x794c7630
	je	.label_200
	cmp	r8, 0x7c7c6673
	jne	.label_95
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:.str.150
	mov	rbp, rbp
	jmp	.label_94
.label_202:
	nop	
	cmp	r8, 0x64626720
	je	.label_209
	lea	rsi, [rsi]
	cmp	r8, 0x64646178
	jne	.label_95
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:.str.95
	lea	rsi, [rsi]
	jmp	.label_94
.label_108:
	cmp	r8, 0xadf5
	je	.label_102
	nop	
	cmp	r8, 0xadff
	nop	
	jne	.label_95
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:.str.73
	lea	rdi, [rdi]
	jmp	.label_94
.label_121:
	mov	eax, 0xfe534d42
	mov	rbp, rbp
	cmp	r8, rax
	je	.label_112
	nop	
	mov	eax, 0xff534d42
	mov	rbp, rbp
	cmp	r8, rax
	lea	rsi, [rsi]
	jne	.label_95
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:.str.19_0
	mov	rsp, rsp
	jmp	.label_94
.label_144:
	nop	
	mov	ebx, OFFSET FLAT:.str.172
	lea	rsi, [rsi]
	jmp	.label_94
.label_149:
	mov	ebx, OFFSET FLAT:.str.178
	mov	rsp, rsp
	jmp	.label_94
.label_170:
	mov	ebx, OFFSET FLAT:.str.116
	lea	rsi, [rsi]
	jmp	.label_94
.label_198:
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:.str.155
	lea	rdi, [rdi]
	jmp	.label_94
.label_106:
	nop	
	mov	ebx, OFFSET FLAT:.str.106
	mov	rsp, rsp
	jmp	.label_94
.label_130:
	nop	
	mov	ebx, OFFSET FLAT:.str.114
	lea	rsi, [rsi]
	jmp	.label_94
.label_153:
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:.str.9_0
	nop	
	jmp	.label_94
.label_174:
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:.str.161
	lea	rsi, [rsi]
	jmp	.label_94
.label_193:
	mov	ebx, OFFSET FLAT:.str.152
	mov	rsp, rsp
	jmp	.label_94
.label_100:
	mov	ebx, OFFSET FLAT:.str.112
	lea	rdi, [rdi]
	jmp	.label_94
.label_114:
	mov	ebx, OFFSET FLAT:.str.158
	jmp	.label_94
.label_127:
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:.str.129
	mov	rsp, rsp
	jmp	.label_94
.label_206:
	mov	ebx, OFFSET FLAT:.str.83
	mov	rsp, rsp
	jmp	.label_94
.label_183:
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:.str.14_0
	jmp	.label_94
.label_203:
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:.str.154
	jmp	.label_94
.label_104:
	mov	ebx, OFFSET FLAT:.str.185
	jmp	.label_94
.label_118:
	nop	
	mov	ebx, OFFSET FLAT:.str.81
	jmp	.label_94
.label_132:
	mov	ebx, OFFSET FLAT:.str.164
	jmp	.label_94
.label_148:
	mov	ebx, OFFSET FLAT:.str.148
	jmp	.label_94
.label_162:
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:.str.87
	lea	rdi, [rdi]
	jmp	.label_94
.label_176:
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:.str.74
	jmp	.label_94
.label_201:
	mov	ebx, OFFSET FLAT:.str.146
	mov	rsp, rsp
	jmp	.label_94
.label_96:
	mov	ebx, OFFSET FLAT:.str.13_0
	jmp	.label_94
.label_111:
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:.str.145
	jmp	.label_94
.label_124:
	nop	
	mov	ebx, OFFSET FLAT:.str.162
	lea	rdi, [rdi]
	jmp	.label_94
.label_143:
	mov	ebx, OFFSET FLAT:.str.122
	jmp	.label_94
.label_150:
	nop	
	mov	ebx, OFFSET FLAT:.str.156
	nop	
	jmp	.label_94
.label_161:
	mov	ebx, OFFSET FLAT:.str.187
	lea	rsi, [rsi]
	jmp	.label_94
.label_166:
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:.str.127
	lea	rdi, [rdi]
	jmp	.label_94
.label_173:
	mov	ebx, OFFSET FLAT:.str.153
	mov	rsp, rsp
	jmp	.label_94
.label_101:
	mov	ebx, OFFSET FLAT:.str.5_1
	lea	rdi, [rdi]
	jmp	.label_94
.label_210:
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:.str.10_0
	lea	rdi, [rdi]
	jmp	.label_94
.label_191:
	mov	ebx, OFFSET FLAT:.str.110
	jmp	.label_94
.label_152:
	mov	ebx, OFFSET FLAT:.str.181
	jmp	.label_94
.label_92:
	mov	ebx, OFFSET FLAT:.str.175
	jmp	.label_94
.label_98:
	mov	ebx, OFFSET FLAT:.str.11_0
	jmp	.label_94
.label_110:
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:.str.138
	nop	
	jmp	.label_94
.label_135:
	mov	ebx, OFFSET FLAT:.str.120
	lea	rdi, [rdi]
	jmp	.label_94
.label_131:
	mov	ebx, OFFSET FLAT:.str.99
	jmp	.label_94
.label_119:
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:.str.157
	jmp	.label_94
.label_154:
	mov	ebx, OFFSET FLAT:.str.135
	jmp	.label_94
.label_167:
	mov	ebx, OFFSET FLAT:.str.85
	lea	rdi, [rdi]
	jmp	.label_94
.label_175:
	mov	ebx, OFFSET FLAT:.str.80
	jmp	.label_94
.label_184:
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:.str.121
	jmp	.label_94
.label_195:
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:.str.124
	jmp	.label_94
.label_205:
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:.str.100
	lea	rsi, [rsi]
	jmp	.label_94
.label_93:
	mov	ebx, OFFSET FLAT:.str.94
	jmp	.label_94
.label_107:
	mov	ebx, OFFSET FLAT:.str.132
	jmp	.label_94
.label_116:
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:.str.141
	jmp	.label_94
.label_125:
	mov	ebx, OFFSET FLAT:.str.160
	jmp	.label_94
.label_133:
	mov	ebx, OFFSET FLAT:.str.93
	mov	rbp, rbp
	jmp	.label_94
.label_146:
	mov	ebx, OFFSET FLAT:.str.103
	jmp	.label_94
.label_156:
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:.str.179
	jmp	.label_94
.label_186:
	mov	ebx, OFFSET FLAT:.str.118
	jmp	.label_94
.label_179:
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:.str.144
	lea	rdi, [rdi]
	jmp	.label_94
.label_188:
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:.str.108
	nop	
	jmp	.label_94
.label_200:
	mov	ebx, OFFSET FLAT:.str.147
	nop	
	jmp	.label_94
.label_209:
	mov	ebx, OFFSET FLAT:.str.8_0
	jmp	.label_94
.label_102:
	nop	
	mov	ebx, OFFSET FLAT:.str.72
	nop	
	jmp	.label_94
.label_112:
	mov	ebx, OFFSET FLAT:.str.165
	jmp	.label_94
.label_134:
	cmp	r8, 0x12fd16d
	nop	
	jne	.label_95
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:.str.186
	lea	rdi, [rdi]
	jmp	.label_94
.label_95:
	nop	
	mov	ebx, OFFSET FLAT:human_fstype.buf
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:human_fstype.buf
	mov	esi, 1
	mov	edx, 0x1d
	mov	ecx, OFFSET FLAT:.str.189
	mov	rsp, rsp
	xor	eax, eax
	call	__sprintf_chk
	nop	
	jmp	.label_94
.label_1003:
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:.str.171
	jmp	.label_94
.label_1004:
	mov	ebx, OFFSET FLAT:.str.170
	nop	
	jmp	.label_94
.label_1005:
	nop	
	mov	ebx, OFFSET FLAT:.str.91
.label_94:
	lea	rdi, [rdi]
	mov	rax, rbx
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047c0

	.globl out_int
	.type out_int, @function
out_int:
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.190
	nop	
	mov	ecx, OFFSET FLAT:.str.191
	lea	rdi, [rdi]
	call	make_format
	nop	
	mov	edi, 1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rdx, r14
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404810

	.globl make_format
	.type make_format, @function
make_format:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rdx
	lea	r15, [rdi + 1]
	lea	r14, [rdi + rsi]
	mov	rbp, rbp
	cmp	rsi, 2
	jl	.label_216
	mov	rsp, rsp
	mov	qword ptr [rsp], rsi
	mov	qword ptr [rsp + 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rsp, rsp
	mov	rbx, r15
	nop	dword ptr [rax + rax]
.label_214:
	mov	r12b, byte ptr [rbx]
	movsx	ebp, r12b
	mov	edi, OFFSET FLAT:printf_flags
	mov	rsp, rsp
	mov	edx, 8
	mov	esi, ebp
	call	memchr
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_215
	mov	rbp, rbp
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	esi, ebp
	call	strchr
	test	rax, rax
	je	.label_217
	lea	rsi, [rsi]
	mov	byte ptr [r15], r12b
	inc	r15
.label_217:
	lea	rsi, [rsi]
	inc	rbx
	mov	rbp, rbp
	cmp	rbx, r14
	jb	.label_214
	jmp	.label_215
.label_216:
	mov	qword ptr [rsp], rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbx, r15
.label_215:
	cmp	rbx, r14
	mov	rbp, rbp
	jae	.label_213
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	sub	rax, rbx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	add	rdx, rax
	mov	rax, r15
	nop	dword ptr [rax + rax]
.label_212:
	nop	
	mov	cl, byte ptr [rbx]
	inc	rbx
	mov	byte ptr [rax], cl
	inc	rax
	mov	rsp, rsp
	cmp	r14, rbx
	nop	
	jne	.label_212
	mov	rbp, rbp
	add	r15, rdx
.label_213:
	mov	rsi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	strcpy
	lea	rsi, [rsi]
	add	rsp, 0x18
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	nop	
	pop	r15
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404940

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
	push	rax
	mov	rbx, r9
	mov	r13, r8
	mov	rbp, rbp
	mov	r14, rsi
	mov	r15, rdi
	mov	rbp, rbp
	add	edx, -0x41
	cmp	edx, 0x39
	ja	.label_227
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_229]]
.label_862:
	mov	rdi, rbx
	mov	rbp, rbp
	call	human_access
	mov	edx, OFFSET FLAT:human_access.modebuf
	nop	
	jmp	.label_218
.label_863:
	mov	edx, 0x200
	lea	rsi, [rsi]
	jmp	.label_220
.label_864:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r14
	nop	
	mov	rdx, r13
	call	out_file_context
	mov	rbp, rbp
	mov	r12b, 1
	nop	
	jmp	.label_224
.label_865:
	mov	rdx, qword ptr [rbx]
	mov	rbp, rbp
	jmp	.label_225
.label_227:
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	edi, 0x3f
	mov	rsp, rsp
	call	fputc_unlocked
	mov	rbp, rbp
	jmp	.label_219
.label_866:
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	file_type
	mov	rbp, rbp
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, rax
	mov	rbp, rbp
	call	out_string
	lea	rsi, [rsi]
	jmp	.label_219
.label_867:
	mov	rbp, rbp
	mov	edi, dword ptr [rbx + 0x20]
	lea	rdi, [rdi]
	call	getgrgid
	lea	rsi, [rsi]
	jmp	.label_222
.label_868:
	xor	r12d, r12d
	xor	edi, edi
	call	get_quoting_style
	mov	edi, eax
	mov	rsi, r13
	call	quotearg_style
	mov	rdi, r15
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, rax
	call	out_string
	nop	
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_224
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + 0x30]
	mov	rbp, rbp
	mov	rdi, r13
	lea	rdi, [rdi]
	call	areadlink_with_size
	mov	rbx, rax
	test	rbx, rbx
	nop	
	je	.label_221
	xor	r12d, r12d
	nop	
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.195
	xor	eax, eax
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	call	get_quoting_style
	mov	edi, eax
	mov	rsp, rsp
	mov	rsi, rbx
	call	quotearg_style
	nop	
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, rax
	call	out_string
	mov	rdi, rbx
	call	free
	jmp	.label_224
.label_869:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x28]
	call	gnu_dev_minor
	jmp	.label_228
.label_870:
	mov	edi, dword ptr [rbx + 0x1c]
	lea	rdi, [rdi]
	call	getpwuid
.label_222:
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.196
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_218
	mov	rdx, qword ptr [rax]
	jmp	.label_218
.label_871:
	mov	rbp, rbp
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rdi, r15
	nop	
	mov	rsi, r14
	call	out_epoch_sec
	mov	rsp, rsp
	jmp	.label_224
.label_872:
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	call	get_stat_atime
	mov	rsp, rsp
	jmp	.label_226
.label_873:
	mov	rdi, rbx
	call	get_stat_mtime
	lea	rdi, [rdi]
	jmp	.label_226
.label_874:
	nop	
	mov	rdi, rbx
	call	get_stat_ctime
.label_226:
	mov	rcx, rdx
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	call	out_epoch_sec
	jmp	.label_219
.label_875:
	mov	rbp, rbp
	mov	edx, dword ptr [rbx + 0x18]
	and	edx, 0xfff
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, r14
	lea	rdi, [rdi]
	call	out_uint_o
	jmp	.label_219
.label_876:
	mov	rdx, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	jmp	.label_220
.label_877:
	mov	rdx, qword ptr [rbx]
	lea	rdi, [rdi]
	jmp	.label_220
.label_878:
	mov	edx, dword ptr [rbx + 0x18]
	jmp	.label_225
.label_879:
	nop	
	mov	edx, dword ptr [rbx + 0x20]
	jmp	.label_220
.label_880:
	mov	rdx, qword ptr [rbx + 0x10]
	jmp	.label_220
.label_881:
	mov	rdx, qword ptr [rbx + 8]
	jmp	.label_220
.label_882:
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	rsp, rsp
	mov	rcx, rbx
	lea	rdi, [rdi]
	call	out_mount_point
	lea	rsi, [rsi]
	mov	r12b, al
	jmp	.label_224
.label_883:
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rdx, r13
	lea	rsi, [rsi]
	call	out_string
	lea	rdi, [rdi]
	jmp	.label_219
.label_884:
	mov	rax, qword ptr [rbx + 0x38]
	movabs	rcx, 0x2000000000000001
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	ecx, 0x200
	nop	
	mov	edx, 0x200
	cmovb	rdx, rax
	test	rax, rax
	cmovle	rdx, rcx
	jmp	.label_220
.label_885:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, r14
	lea	rdi, [rdi]
	call	out_int
	mov	rsp, rsp
	jmp	.label_219
.label_886:
	nop	
	mov	rdi, qword ptr [rbx + 0x28]
	nop	
	call	gnu_dev_major
.label_228:
	mov	edx, eax
.label_225:
	mov	rdi, r15
	mov	rsi, r14
	mov	rsp, rsp
	call	out_uint_x
	mov	rsp, rsp
	jmp	.label_219
.label_887:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbx + 0x1c]
.label_220:
	mov	rdi, r15
	nop	
	mov	rsi, r14
	call	out_uint
	mov	rbp, rbp
	jmp	.label_219
.label_888:
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.59
	jmp	.label_218
.label_889:
	mov	rdi, rbx
	nop	
	call	get_stat_atime
	mov	rbp, rbp
	jmp	.label_223
.label_890:
	mov	rdi, rbx
	call	get_stat_mtime
	lea	rdi, [rdi]
	jmp	.label_223
.label_891:
	mov	rbp, rbp
	mov	rdi, rbx
	call	get_stat_ctime
.label_223:
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, rdx
	call	human_time
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:human_time.str
.label_218:
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, r14
	call	out_string
.label_219:
	xor	r12d, r12d
.label_224:
	lea	rdi, [rdi]
	mov	al, r12b
	mov	rsp, rsp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	pop	rbp
	ret	
.label_221:
	nop	
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.194
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, r13
	nop	
	call	quotearg_style
	nop	
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	nop	
	mov	r12b, 1
	mov	rbp, rbp
	jmp	.label_224
	nop	
	.section	.text
	.align	16
	#Procedure 0x404d60

	.globl out_uint_o
	.type out_uint_o, @function
out_uint_o:
	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r14, rdx
	mov	rsp, rsp
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.66
	mov	ecx, OFFSET FLAT:.str.197
	call	make_format
	nop	
	mov	edi, 1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rdx, r14
	nop	
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	jmp	__printf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404db0

	.globl human_access
	.type human_access, @function
human_access:
	push	rax
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:human_access.modebuf
	mov	rbp, rbp
	call	filemodestring
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + label_230]],  0
	mov	rsp, rsp
	pop	rax
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404de0

	.globl out_mount_point
	.type out_mount_point, @function
out_mount_point:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r13, rcx
	nop	
	mov	r14, rdx
	nop	
	mov	r15, rsi
	mov	r12, rdi
	mov	al,  byte ptr [byte ptr [rip + follow_links]]
	and	al, 1
	lea	rsi, [rsi]
	jne	.label_231
	mov	eax, 0xf000
	and	eax, dword ptr [r13 + 0x18]
	cmp	eax, 0xa000
	je	.label_232
.label_231:
	nop	
	mov	rdi, r12
	mov	rbp, rbp
	call	canonicalize_file_name
	mov	rbp, rbp
	mov	rbp, rax
	test	rbp, rbp
	nop	
	je	.label_234
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	find_bind_mount
	mov	rsp, rsp
	mov	rbx, rax
	mov	rdi, rbp
	call	free
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_232
	xor	r12d, r12d
	mov	rsp, rsp
	jmp	.label_233
.label_232:
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rbp, rbp
	call	find_mount_point
	mov	r13, rax
	mov	rsp, rsp
	mov	r12b, 1
	xor	ebx, ebx
	lea	rdi, [rdi]
	test	r13, r13
	mov	ebp, 0
	mov	rsp, rsp
	je	.label_233
	mov	rbp, rbp
	mov	rdi, r13
	lea	rdi, [rdi]
	call	find_bind_mount
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	xor	r12d, r12d
	mov	rbp, r13
	jmp	.label_233
.label_234:
	lea	rsi, [rsi]
	call	__errno_location
	mov	r13d, dword ptr [rax]
	lea	rsi, [rsi]
	xor	ebx, ebx
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.199
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, r12
	nop	
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbp
	call	error
	mov	r12b, 1
	xor	ebp, ebp
.label_233:
	test	rbp, rbp
	mov	edx, OFFSET FLAT:.str.198
	cmovne	rdx, rbp
	test	rbx, rbx
	mov	rsp, rsp
	cmovne	rdx, rbx
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, r14
	call	out_string
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbp, rbp
	call	free
	mov	al, r12b
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404f60

	.globl human_time
	.type human_time, @function
human_time:
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x60
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rdi
	mov	qword ptr [rsp + 0x58], rsi
	cmp	qword ptr [word ptr [rip + human_time.tz]],  0
	nop	
	jne	.label_235
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str_2
	lea	rsi, [rsi]
	call	getenv
	mov	rdi, rax
	nop	
	call	tzalloc
	mov	qword ptr [word ptr [rip + human_time.tz]],  rax
.label_235:
	nop	
	mov	ebx, dword ptr [rsp + 0x58]
	mov	rdi,  qword ptr [word ptr [rip + human_time.tz]]
	lea	rsi, [rsp + 0x50]
	lea	rdx, [rsp + 0x18]
	mov	rsp, rsp
	call	localtime_rz
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_237
	mov	r8,  qword ptr [word ptr [rip + human_time.tz]]
	lea	rcx, [rsp + 0x18]
	mov	edi, OFFSET FLAT:human_time.str
	mov	esi, 0x3d
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.203
	mov	r9d, ebx
	call	nstrftime
	jmp	.label_236
.label_237:
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	lea	rsi, [rsp]
	call	timetostr
	nop	
	mov	r8, rax
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:human_time.str
	mov	esi, 1
	mov	edx, 0x3d
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.204
	xor	eax, eax
	mov	r9d, ebx
	call	__sprintf_chk
.label_236:
	add	rsp, 0x60
	pop	rbx
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x405030

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
	sub	rsp, 0x28
	nop	
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rdx
	mov	r12, rsi
	mov	rbp, rbp
	mov	r13, rdi
	mov	esi, 0x2e
	mov	rdx, r12
	mov	rbp, rbp
	call	memchr
	mov	rbx, rax
	mov	rsp, rsp
	xor	r14d, r14d
	mov	rbp, rbp
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_251
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rbp
	mov	rbp, rbx
	sub	rbp, r13
	mov	byte ptr [r13 + r12], 0
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rbx + 1]
	lea	rdi, [rdi]
	add	eax, -0x30
	mov	r15d, 9
	cmp	eax, 9
	ja	.label_257
	mov	rbp, rbp
	lea	rdi, [rbx + 1]
	xor	r14d, r14d
	nop	
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, 0xa
	call	strtol
	cmp	rax, 0x7fffffff
	mov	r15d, 0x7fffffff
	nop	
	cmovle	r15d, eax
	lea	rsi, [rsi]
	test	r15d, r15d
	mov	rsp, rsp
	je	.label_241
.label_257:
	mov	rbp, rbp
	movsx	eax, byte ptr [rbx - 1]
	nop	
	add	eax, -0x30
	xor	r14d, r14d
	nop	
	cmp	eax, 9
	ja	.label_250
	nop	
	mov	qword ptr [rsp + 0x10], r13
	mov	byte ptr [rbx], 0
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_243:
	nop	
	movsx	eax, byte ptr [rbx + r12 - 2]
	add	eax, -0x30
	mov	rsp, rsp
	dec	r12
	cmp	eax, 0xa
	lea	rsi, [rsi]
	jb	.label_243
	mov	rbp, rbp
	lea	r13, [rbx + r12]
	xor	esi, esi
	mov	edx, 0xa
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	call	strtol
	lea	rsi, [rsi]
	cmp	rax, 0x7fffffff
	mov	ecx, 0x7fffffff
	lea	rsi, [rsi]
	cmovle	rcx, rax
	mov	rsp, rsp
	mov	r14d, 0x7fffffff
	cmovle	r14d, eax
	mov	rbp, rbp
	cmp	r14d, 2
	jl	.label_240
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + r12]
	cmp	eax, 0x30
	sete	dl
	lea	rdi, [rdi]
	movzx	edx, dl
	lea	rsi, [rsi]
	add	r13, rdx
	mov	rsp, rsp
	mov	rbp, r13
	mov	rsp, rsp
	sub	rbp, qword ptr [rsp + 0x10]
	mov	rdx,  qword ptr [word ptr [rip + decimal_point_len]]
	movsxd	rcx, ecx
	mov	esi, ecx
	lea	rdi, [rdi]
	sub	esi, edx
	cmp	rcx, rdx
	mov	r8d, 0
	cmova	r8d, esi
	lea	rsi, [rsi]
	cmp	r8d, 2
	nop	
	jl	.label_240
	mov	rsp, rsp
	sub	r8d, r15d
	cmp	r8d, 2
	nop	
	jl	.label_240
	xor	ebp, ebp
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	r13, rcx
	lea	rsi, [rsi]
	mov	r13, rcx
	lea	rsi, [rsi]
	mov	rdi, r13
	jbe	.label_247
	movzx	eax, al
	nop	
	cmp	eax, 0x30
	sete	al
	nop	
	movzx	eax, al
	dec	rax
	sub	rax, r13
	mov	rsp, rsp
	add	rbx, rax
	lea	rcx, [r12 + rbx + 1]
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	rdx, r13
	mov	rdi, r13
	nop	word ptr cs:[rax + rax]
.label_254:
	nop	
	movzx	esi, byte ptr [rdx]
	mov	rsp, rsp
	cmp	esi, 0x2d
	lea	rdi, [rdi]
	jne	.label_249
	lea	rsi, [rsi]
	mov	al, 1
	jmp	.label_253
	nop	word ptr cs:[rax + rax]
.label_249:
	mov	byte ptr [rdi], sil
	inc	rdi
.label_253:
	nop	
	inc	rdx
	lea	rsi, [rsi]
	dec	rcx
	mov	rsp, rsp
	jne	.label_254
	mov	rbp, rbp
	mov	rbp, rdi
	mov	rsp, rsp
	sub	rbp, r13
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	test	al, 1
	jne	.label_239
.label_247:
	nop	
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.205
	nop	
	xor	eax, eax
	call	__sprintf_chk
	movsxd	rcx, eax
.label_239:
	lea	rdi, [rdi]
	add	rbp, rcx
.label_250:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	jmp	.label_248
.label_251:
	xor	r15d, r15d
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_246
.label_240:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rsp + 0x10]
.label_248:
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rsp, rsp
	cmp	r15d, 8
	mov	r12, rbp
	mov	rbp, qword ptr [rsp + 0x18]
	jg	.label_256
	lea	rdi, [rdi]
	jmp	.label_246
.label_241:
	lea	rdi, [rdi]
	mov	r12, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
.label_246:
	mov	eax, 1
	mov	ecx, 9
	nop	dword ptr [rax]
.label_238:
	lea	rdi, [rdi]
	add	eax, eax
	lea	eax, [rax + rax*4]
	dec	ecx
	lea	rdi, [rdi]
	cmp	r15d, ecx
	mov	rsp, rsp
	jne	.label_238
.label_256:
	movsxd	rsi, eax
	mov	rax, rdi
	cqo	
	lea	rsi, [rsi]
	idiv	rsi
	mov	rbx, rax
	test	rbp, rbp
	mov	rsp, rsp
	jns	.label_245
	mov	rsp, rsp
	test	rdi, rdi
	nop	
	je	.label_245
	mov	eax, 0x3b9aca00
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rbp, rbp
	idiv	esi
	nop	
	mov	ecx, eax
	sub	ecx, ebx
	mov	rax, rdi
	cqo	
	nop	
	idiv	rsi
	lea	rsi, [rsi]
	test	rdx, rdx
	lea	rdi, [rdi]
	setne	al
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	mov	ebx, ecx
	sub	ebx, eax
	mov	rbp, rbp
	setne	al
	movzx	eax, al
	add	rbp, rax
	je	.label_255
.label_245:
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, rbp
	mov	rbp, rbp
	call	out_int
	jmp	.label_242
.label_255:
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsi, r12
	call	out_minus_zero
.label_242:
	test	r15d, r15d
	je	.label_252
	cmp	r15d, 0xa
	mov	ecx, 9
	lea	rsi, [rsi]
	cmovl	ecx, r15d
	nop	
	sub	r15d, ecx
	lea	rdi, [rdi]
	xor	r9d, r9d
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	cmovs	eax, r9d
	sub	r14d, eax
	nop	
	jle	.label_244
	mov	rax,  qword ptr [word ptr [rip + decimal_point_len]]
	lea	rsi, [rsi]
	movsxd	rdx, r14d
	cmp	rdx, rax
	lea	rsi, [rsi]
	jbe	.label_244
	sub	r14d, ecx
	mov	rsp, rsp
	sub	r14d, eax
	mov	rbp, rbp
	mov	r9d, r14d
.label_244:
	mov	rdx,  qword ptr [word ptr [rip + decimal_point]]
	mov	rsp, rsp
	mov	dword ptr [rsp], r15d
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], 0
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	mov	esi, OFFSET FLAT:.str.206
	xor	eax, eax
	mov	r8d, ebx
	nop	
	call	__printf_chk
.label_252:
	lea	rdi, [rdi]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	nop	
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405450

	.globl out_file_context
	.type out_file_context, @function
out_file_context:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x10
	nop	
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	r15, rdi
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + follow_links]]
	nop	
	and	eax, 1
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	nop	
	cmp	eax, 1
	jne	.label_258
	call	getfilecon
	jmp	.label_259
.label_258:
	call	lgetfilecon
.label_259:
	lea	rsi, [rsi]
	call	__errno_location
	mov	r12d, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.208
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rsp, rsp
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rsp, rsp
	call	error
	nop	
	mov	word ptr [r15 + r14], 0x73
	lea	rdi, [rdi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.198
	nop	
	xor	eax, eax
	mov	rsi, r15
	nop	
	call	__printf_chk
	add	rsp, 0x10
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405530

	.globl find_bind_mount
	.type find_bind_mount, @function
find_bind_mount:
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	r14, rdi
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + find_bind_mount.tried_mount_list]]
	nop	
	and	al, 1
	jne	.label_265
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	call	read_file_system_list
	mov	qword ptr [word ptr [rip + find_bind_mount.mount_list]],  rax
	test	rax, rax
	jne	.label_263
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.201
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	nop	
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, ebx
	lea	rsi, [rsi]
	call	error
.label_263:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + find_bind_mount.tried_mount_list]],  1
.label_265:
	lea	rsi, [rsp + 0x98]
	mov	rdi, r14
	call	stat
	lea	rdi, [rdi]
	xor	r12d, r12d
	mov	rbp, rbp
	test	eax, eax
	jne	.label_261
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + find_bind_mount.mount_list]]
	xor	r12d, r12d
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_261
	xor	r12d, r12d
	lea	r15, [rsp + 8]
	nop	dword ptr [rax]
.label_264:
	lea	rsi, [rsi]
	test	byte ptr [rbx + 0x28], 1
	je	.label_262
	mov	rax, qword ptr [rbx]
	mov	rsp, rsp
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	lea	rsi, [rsi]
	jne	.label_262
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	strcmp
	nop	
	test	eax, eax
	jne	.label_262
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	rsi, r15
	call	stat
	nop	
	test	eax, eax
	jne	.label_262
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xa0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_262
	mov	rax, qword ptr [rsp + 0x98]
	cmp	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	je	.label_260
	nop	dword ptr [rax + rax]
.label_262:
	mov	rbx, qword ptr [rbx + 0x30]
	test	rbx, rbx
	jne	.label_264
.label_261:
	lea	rsi, [rsi]
	mov	rax, r12
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	ret	
.label_260:
	mov	r12, qword ptr [rbx]
	jmp	.label_261
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405690

	.globl timetostr
	.type timetostr, @function
timetostr:
	mov	rbp, rbp
	jmp	imaxtostr
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056a0

	.globl out_minus_zero
	.type out_minus_zero, @function
out_minus_zero:
	nop	
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.190
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.207
	call	make_format
	mov	rbp, rbp
	movsd	xmm0,  qword ptr [word ptr [rip + label_266]]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	al, 1
	mov	rsi, rbx
	pop	rbx
	lea	rsi, [rsi]
	jmp	__printf_chk
	nop	
	.section	.text
	.align	16
	#Procedure 0x4056e0

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
	je	.label_269
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
	jmp	.label_274
.label_269:
	mov	eax, 0xf000
	nop	
	and	eax, dword ptr [rbx + 0x18]
	nop	
	cmp	eax, 0x4000
	jne	.label_277
	lea	rdi, [rbp - 0xc0]
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
	jns	.label_267
	nop	
	jmp	.label_270
.label_277:
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
	js	.label_270
	mov	rbp, rbp
	lea	rsi, [rbp - 0xc0]
	nop	
	mov	edi, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	call	stat
	mov	rbp, rbp
	test	eax, eax
	js	.label_268
.label_267:
	lea	rsi, [rbp - 0x150]
	mov	edi, OFFSET FLAT:.str.4_0
	call	stat
	test	eax, eax
	js	.label_275
	lea	r14, [rbp - 0xc0]
	lea	rbx, [rbp - 0x150]
	nop	
.label_276:
	nop	
	mov	rax, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	jne	.label_279
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x148]
	cmp	rax, qword ptr [rbp - 0xb8]
	je	.label_279
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.4_0
	mov	rbp, rbp
	call	chdir
	test	eax, eax
	mov	rsp, rsp
	js	.label_272
	mov	edx, 0x90
	mov	rdi, r14
	mov	rsi, rbx
	nop	
	call	memcpy
	mov	edi, OFFSET FLAT:.str.4_0
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	stat
	test	eax, eax
	jns	.label_276
.label_275:
	mov	rsp, rsp
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.5_0
	jmp	.label_278
.label_270:
	mov	rsp, rsp
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, r14
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	rsp, rsp
	call	error
	lea	rdi, [rdi]
	jmp	.label_274
.label_279:
	lea	rsi, [rsi]
	call	xgetcwd
	mov	r15, rax
	jmp	.label_273
.label_268:
	lea	rsi, [rsi]
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	mov	rbp, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r12d
	mov	rdx, rbx
	call	error
	jmp	.label_273
.label_272:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_0
.label_278:
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str.4_0
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rbp, rbp
	mov	rdx, rbx
	call	error
	lea	rsi, [rsi]
	xor	r15d, r15d
.label_273:
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	rbp, rbp
	lea	rdi, [rbp - 0x30]
	lea	rdi, [rdi]
	call	restore_cwd
	test	eax, eax
	nop	
	jne	.label_271
	nop	
	lea	rdi, [rbp - 0x30]
	call	free_cwd
	lea	rsi, [rsi]
	mov	dword ptr [rbx], r14d
.label_274:
	lea	rsi, [rsi]
	mov	rax, r15
	lea	rsp, [rbp - 0x20]
	mov	rbp, rbp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_271:
	mov	ebx, dword ptr [rbx]
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_1
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	mov	edi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rcx
	nop	
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x405a90

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
	mov	qword ptr [rsp + 0x10], rdi
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
	mov	qword ptr [rsp + 8], rax
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_283
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	movabs	r15, 0x7fffffffffffffff
	nop	word ptr cs:[rax + rax]
.label_284:
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rdx, r12
	lea	rsi, [rsi]
	call	readlink
	mov	r13, rax
	nop	
	test	r13, r13
	mov	rbp, rbp
	jns	.label_286
	call	__errno_location
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	mov	rsp, rsp
	jne	.label_288
.label_286:
	mov	rsp, rsp
	cmp	r13, r12
	nop	
	jb	.label_282
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rax, r12
	mov	rsp, rsp
	shr	rax, 0x3e
	mov	rbp, rbp
	jne	.label_285
	add	r12, r12
	nop	
	jmp	.label_287
	nop	dword ptr [rax + rax]
.label_285:
	cmp	r12, r15
	mov	rsp, rsp
	mov	r12, r15
	jae	.label_280
.label_287:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	call	malloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_284
	mov	rsp, rsp
	jmp	.label_283
.label_282:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp + 8], rbx
	jmp	.label_283
.label_280:
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	jmp	.label_281
.label_288:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	free
	mov	dword ptr [rbp], r14d
.label_281:
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
.label_283:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
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
	#Procedure 0x405c10

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x405c20

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
	je	.label_295
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
.label_292:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	jne	.label_294
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	je	.label_289
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_293
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rax, rax
	je	.label_290
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
	je	.label_294
.label_290:
	mov	rsp, rsp
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_294
.label_293:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbp
	nop	dword ptr [rax + rax]
.label_294:
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	lea	rsi, [rsi]
	inc	rbp
	add	r14, r13
	test	r15, r15
	nop	
	jne	.label_292
	lea	rsi, [rsi]
	jmp	.label_291
.label_295:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x10], rax
.label_291:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	mov	rsp, rsp
	cmove	rbp, qword ptr [rsp + 0x18]
.label_289:
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
	#Procedure 0x405da0

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
	je	.label_296
	mov	esi, OFFSET FLAT:.str.1_1
	nop	
	jmp	.label_297
.label_296:
	nop	
	mov	esi, OFFSET FLAT:.str_5
.label_297:
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
	#Procedure 0x405e40

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
	mov	esi, OFFSET FLAT:.str.2_0
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
	je	.label_298
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_299:
	test	rbp, rbp
	je	.label_301
	mov	rbp, rbp
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_300
.label_301:
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
	jmp	.label_302
	nop	
.label_300:
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
.label_302:
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	mov	rsp, rsp
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_299
.label_298:
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
	#Procedure 0x405f90
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
	jns	.label_303
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
.label_303:
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
	#Procedure 0x406030
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
	je	.label_304
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_305:
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
	je	.label_304
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_305
.label_304:
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
	#Procedure 0x4060c0
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
	#Procedure 0x4060d0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060e0

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
	je	.label_309
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_306
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_306
.label_309:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_307
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_306:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_6
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
	jne	.label_308
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_3
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
.label_307:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_308:
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
	#Procedure 0x4061e0

	.globl dir_name
	.type dir_name, @function
dir_name:
	lea	rsi, [rsi]
	push	rax
	mov	rbp, rbp
	call	mdir_name
	mov	rbp, rbp
	test	rax, rax
	je	.label_310
	pop	rcx
	ret	
.label_310:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x406200

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
.label_311:
	lea	rdi, [rdi]
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	r14, rax
	mov	rsp, rsp
	jae	.label_312
	lea	rcx, [rax - 1]
	nop	
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	lea	rdi, [rdi]
	je	.label_311
.label_312:
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
	#Procedure 0x406270

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	r15, rdi
	call	dir_len
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	mov	rbp, rbp
	sete	al
	nop	
	movzx	eax, al
	nop	
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	rsp, rsp
	mov	r14, rax
	mov	rsp, rsp
	xor	eax, eax
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_314
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_313
	mov	rsp, rsp
	mov	byte ptr [r14 + rbx], 0x2e
	nop	
	mov	ebx, 1
.label_313:
	nop	
	mov	byte ptr [r14 + rbx], 0
	mov	rsp, rsp
	mov	rax, r14
.label_314:
	pop	rbx
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406300

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_315:
	nop	
	movzx	eax, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	cmp	eax, 0x2f
	mov	rbp, rbp
	je	.label_315
	xor	ecx, ecx
	mov	rax, rdi
	jmp	.label_316
	nop	word ptr [rax + rax]
.label_319:
	inc	rax
	mov	rbp, rbp
	mov	cl, dl
.label_316:
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax]
	mov	dl, 1
	cmp	esi, 0x2f
	mov	rsp, rsp
	je	.label_319
	test	sil, sil
	mov	rsp, rsp
	je	.label_317
	mov	rbp, rbp
	mov	dl, cl
	and	dl, 1
	mov	rsp, rsp
	je	.label_318
	xor	ecx, ecx
.label_318:
	test	dl, dl
	lea	rsi, [rsi]
	cmovne	rdi, rax
	mov	dl, cl
	jmp	.label_319
.label_317:
	nop	
	mov	rax, rdi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406380
	.globl base_len
	.type base_len, @function
base_len:

	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rcx, rax
.label_321:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_320
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_321
.label_320:
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063c0

	.globl file_type
	.type file_type, @function
file_type:
	mov	eax, 0xf000
	and	eax, dword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	cmp	eax, 0x5fff
	jle	.label_322
	mov	rsp, rsp
	cmp	eax, 0x9fff
	jg	.label_325
	cmp	eax, 0x6000
	je	.label_329
	lea	rdi, [rdi]
	cmp	eax, 0x8000
	jne	.label_324
	mov	rbp, rbp
	cmp	qword ptr [rdi + 0x30], 0
	lea	rsi, [rsi]
	je	.label_328
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 5
	nop	
	jmp	dcgettext
.label_322:
	lea	rsi, [rsi]
	cmp	eax, 0x1000
	mov	rsp, rsp
	je	.label_327
	cmp	eax, 0x2000
	mov	rsp, rsp
	je	.label_323
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_324
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	jmp	dcgettext
.label_325:
	mov	rsp, rsp
	cmp	eax, 0xa000
	je	.label_326
	lea	rsi, [rsi]
	cmp	eax, 0xc000
	jne	.label_324
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	jmp	dcgettext
.label_329:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	jmp	dcgettext
.label_327:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	jmp	dcgettext
.label_323:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_1
	lea	rsi, [rsi]
	mov	edx, 5
	jmp	dcgettext
.label_326:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_2
	nop	
	mov	edx, 5
	jmp	dcgettext
.label_324:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	jmp	dcgettext
.label_328:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_7
	mov	edx, 5
	mov	rbp, rbp
	jmp	dcgettext
	nop	
	.section	.text
	.align	16
	#Procedure 0x406500

	.globl strmode
	.type strmode, @function
strmode:
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbp, rbp
	mov	ebx, edi
	lea	rdi, [rdi]
	call	ftypelet
	mov	rbp, rbp
	mov	byte ptr [r14], al
	mov	al, bh
	test	al, 1
	lea	rdi, [rdi]
	mov	sil, 0x72
	mov	rsp, rsp
	mov	cl, 0x72
	lea	rsi, [rsi]
	jne	.label_334
	mov	rbp, rbp
	mov	cl, 0x2d
.label_334:
	mov	byte ptr [r14 + 1], cl
	mov	cl, bl
	nop	
	sar	cl, 7
	and	cl, 0x4a
	add	cl, 0x2d
	mov	byte ptr [r14 + 2], cl
	mov	ecx, ebx
	mov	rbp, rbp
	and	ecx, 0x40
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rbp, rbp
	shr	edx, 1
	lea	rdi, [rdi]
	or	edx, 0x53
	test	ecx, ecx
	nop	
	mov	r8b, 0x78
	mov	cl, 0x78
	lea	rsi, [rsi]
	jne	.label_339
	mov	cl, 0x2d
.label_339:
	mov	rbp, rbp
	test	al, 8
	mov	rbp, rbp
	jne	.label_338
	mov	dl, cl
.label_338:
	mov	byte ptr [r14 + 3], dl
	test	bl, 0x20
	mov	rsp, rsp
	mov	cl, 0x72
	mov	rbp, rbp
	jne	.label_340
	nop	
	mov	cl, 0x2d
.label_340:
	mov	byte ptr [r14 + 4], cl
	lea	rsi, [rsi]
	test	bl, 0x10
	lea	rsi, [rsi]
	mov	dl, 0x77
	mov	cl, 0x77
	mov	rbp, rbp
	jne	.label_333
	mov	cl, 0x2d
.label_333:
	mov	byte ptr [r14 + 5], cl
	mov	ecx, ebx
	nop	
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	lea	rsi, [rsi]
	jne	.label_336
	mov	cl, 0x2d
.label_336:
	test	al, 4
	jne	.label_331
	mov	dil, cl
.label_331:
	mov	rbp, rbp
	mov	byte ptr [r14 + 6], dil
	lea	rsi, [rsi]
	test	bl, 4
	lea	rsi, [rsi]
	jne	.label_332
	mov	rbp, rbp
	mov	sil, 0x2d
.label_332:
	lea	rdi, [rdi]
	mov	byte ptr [r14 + 7], sil
	test	bl, 2
	jne	.label_335
	mov	dl, 0x2d
.label_335:
	mov	byte ptr [r14 + 8], dl
	mov	rsp, rsp
	and	ebx, 1
	lea	rdi, [rdi]
	jne	.label_337
	mov	r8b, 0x2d
.label_337:
	test	al, 2
	nop	
	je	.label_330
	shl	ebx, 5
	or	ebx, 0x54
	mov	r8b, bl
.label_330:
	mov	byte ptr [r14 + 9], r8b
	mov	byte ptr [r14 + 0xa], 0x20
	mov	byte ptr [r14 + 0xb], 0
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	r14
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406630

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	and	edi, 0xf000
	nop	
	cmp	edi, 0x5fff
	nop	
	jle	.label_345
	lea	rdi, [rdi]
	cmp	edi, 0x9fff
	jg	.label_341
	lea	rdi, [rdi]
	cmp	edi, 0x6000
	je	.label_344
	lea	rsi, [rsi]
	mov	al, 0x2d
	cmp	edi, 0x8000
	je	.label_348
	nop	
	jmp	.label_347
.label_345:
	cmp	edi, 0x1000
	lea	rsi, [rsi]
	je	.label_342
	mov	rbp, rbp
	cmp	edi, 0x2000
	nop	
	je	.label_346
	cmp	edi, 0x4000
	mov	rbp, rbp
	jne	.label_347
	mov	al, 0x64
	movsx	eax, al
	mov	rbp, rbp
	ret	
.label_341:
	nop	
	cmp	edi, 0xa000
	je	.label_343
	mov	rbp, rbp
	cmp	edi, 0xc000
	jne	.label_347
	mov	al, 0x73
	movsx	eax, al
	ret	
.label_344:
	lea	rdi, [rdi]
	mov	al, 0x62
	movsx	eax, al
	mov	rbp, rbp
	ret	
.label_342:
	nop	
	mov	al, 0x70
.label_348:
	mov	rsp, rsp
	movsx	eax, al
	ret	
.label_343:
	mov	rbp, rbp
	mov	al, 0x6c
	nop	
	movsx	eax, al
	lea	rsi, [rsi]
	ret	
.label_347:
	mov	al, 0x3f
	movsx	eax, al
	mov	rbp, rbp
	ret	
.label_346:
	lea	rdi, [rdi]
	mov	al, 0x63
	lea	rsi, [rsi]
	movsx	eax, al
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066f0

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
	#Procedure 0x406700

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	lea	rsi, [rsi]
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	lea	rsi, [rsi]
	js	.label_351
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
.label_350:
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
	ja	.label_350
	mov	rbp, rbp
	jmp	.label_352
.label_351:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
.label_349:
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
	ja	.label_349
	mov	rbp, rbp
	mov	byte ptr [rsi], 0x2d
.label_352:
	mov	rsp, rsp
	mov	rax, rsi
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4067e0

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
	#Procedure 0x406820

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
	mov	dword ptr [rsp + 0x44], r8d
	mov	rbp, rbp
	mov	r8, rcx
	mov	qword ptr [rsp + 0x58], r8
	mov	rbp, rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], rsi
	mov	eax, dword ptr [r8 + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [r8 + 0x30]
	test	rcx, rcx
	nop	
	mov	edx, OFFSET FLAT:.str_0
	cmovne	rdx, rcx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	rbp, rbp
	mov	esi, 0xc
	cmovne	esi, eax
	cmp	eax, 0xc
	cmovg	esi, ecx
	mov	rsp, rsp
	cmp	byte ptr [rbp], 0
	lea	rsi, [rsi]
	je	.label_361
	mov	dword ptr [rsp + 0x28], esi
	mov	qword ptr [rsp + 0x30], rdx
	mov	dword ptr [rsp + 0x2c], r9d
	mov	r14d, dword ptr [rsp + 0x4e0]
	movabs	r13, 0x1000000000002500
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_387
.label_361:
	xor	esi, esi
	nop	
	jmp	.label_389
.label_376:
	mov	rbp, rbp
	mov	ecx, 3
	jmp	.label_381
	nop	dword ptr [rax]
.label_387:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp]
	xor	r12d, r12d
	cmp	eax, 0x25
	jne	.label_396
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x44]
	nop	
	mov	bl, al
	mov	rbp, rbp
	xor	r15d, r15d
	lea	rdi, [rdi]
	mov	bl, al
	nop	
	jmp	.label_399
	nop	dword ptr [rax + rax]
.label_475:
	mov	rbp, rbp
	movsx	r15d, byte ptr [rbp]
.label_399:
	mov	rsp, rsp
	inc	rbp
	mov	rsp, rsp
	movsx	ecx, byte ptr [rbp]
	nop	
	lea	edx, [rcx - 0x23]
	nop	
	cmp	edx, 0x3c
	lea	rdi, [rdi]
	ja	.label_401
	bt	r13, rdx
	nop	
	jb	.label_475
	lea	rdi, [rdi]
	mov	al, 1
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_406
	mov	rbp, rbp
	cmp	rdx, 0x3b
	mov	rsp, rsp
	jne	.label_401
	nop	
	mov	bl, al
	mov	rsp, rsp
	jmp	.label_399
.label_406:
	lea	rsi, [rsi]
	mov	r12b, 1
	mov	rsp, rsp
	mov	al, bl
	nop	
	jmp	.label_399
.label_396:
	lea	rsi, [rsi]
	test	r14d, r14d
	mov	eax, r14d
	mov	ecx, 0
	cmovs	eax, ecx
	nop	
	movsxd	rbx, eax
	cmp	ebx, 1
	mov	ecx, 1
	lea	rsi, [rsi]
	cmovbe	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	sub	rcx, rsi
	cmp	rbx, rcx
	mov	rsp, rsp
	jae	.label_365
	test	rdi, rdi
	mov	ecx, 0
	nop	
	je	.label_418
	lea	rdi, [rdi]
	cmp	eax, 2
	mov	rsp, rsp
	jb	.label_420
	nop	
	movsxd	r14, r14d
	lea	rdx, [r14 - 1]
	nop	
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x20
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	r15, r8
	call	memset
	lea	rsi, [rsi]
	mov	r8, r15
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x78]
	lea	rdi, [rdi + r14 - 1]
.label_420:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp]
	nop	
	mov	byte ptr [rdi], al
	mov	rbp, rbp
	inc	rdi
	mov	rbp, rbp
	mov	rcx, rdi
.label_418:
	lea	rsi, [rsi]
	add	rsi, rbx
.label_373:
	lea	rdi, [rdi]
	mov	rdi, rcx
	jmp	.label_380
	nop	dword ptr [rax + rax]
.label_401:
	nop	
	add	ecx, -0x30
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, 9
	lea	rdi, [rdi]
	ja	.label_439
	nop	word ptr cs:[rax + rax]
.label_453:
	nop	
	mov	r14d, 0x7fffffff
	lea	rsi, [rsi]
	cmp	eax, 0xccccccc
	mov	rbp, rbp
	jg	.label_446
	lea	rdi, [rdi]
	jne	.label_448
	movsx	ecx, byte ptr [rbp]
	add	ecx, -0x30
	cmp	ecx, 7
	mov	rsp, rsp
	jg	.label_446
.label_448:
	lea	rdi, [rdi]
	lea	eax, [rax + rax*4]
	movsx	ecx, byte ptr [rbp]
	lea	r14d, [rcx + rax*2 - 0x30]
.label_446:
	movsx	eax, byte ptr [rbp + 1]
	lea	rsi, [rsi]
	inc	rbp
	nop	
	add	eax, -0x30
	cmp	eax, 0xa
	mov	rbp, rbp
	mov	eax, r14d
	mov	rbp, rbp
	jb	.label_453
.label_439:
	mov	rsp, rsp
	movsx	eax, byte ptr [rbp]
	lea	rdi, [rdi]
	cmp	eax, 0x4f
	mov	rbp, rbp
	je	.label_458
	cmp	eax, 0x45
	lea	rsi, [rsi]
	jne	.label_460
.label_458:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x78], rsi
	movsx	eax, byte ptr [rbp]
	mov	dword ptr [rsp + 0x68], eax
	nop	
	inc	rbp
	lea	rdi, [rdi]
	jmp	.label_497
.label_460:
	mov	dword ptr [rsp + 0x68], 0
	nop	
	mov	qword ptr [rsp + 0x78], rsi
.label_497:
	mov	r8b, byte ptr [rbp]
	mov	r9d, OFFSET FLAT:.str.3_3
	movsx	eax, r8b
	xor	r11d, r11d
	lea	rdi, [rdi]
	mov	ecx, 1
	mov	rsp, rsp
	lea	esi, [rax - 0x25]
	lea	rsi, [rsi]
	cmp	esi, 0x55
	lea	rsi, [rsi]
	ja	.label_470
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rdi
	nop	
	mov	qword ptr [rsp + 0x50], rbx
	mov	al, 0x72
	lea	rdi, [rdi]
	mov	r10d, 0xffffffff
	mov	rsp, rsp
	xor	edi, edi
	xor	edx, edx
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_477]]
.label_916:
	mov	eax, dword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	cmp	eax, 0x45
	je	.label_363
	mov	byte ptr [rsp + 0x38], r8b
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	eax, dword ptr [rdx + 0x14]
	mov	rsp, rsp
	mov	esi, dword ptr [rdx + 0x18]
	mov	ecx, eax
	nop	
	sar	ecx, 0x1f
	lea	rsi, [rsi]
	and	ecx, 0x190
	mov	rbp, rbp
	lea	ebx, [rax + rcx - 0x64]
	mov	edi, dword ptr [rdx + 0x1c]
	mov	dword ptr [rsp + 0x48], edi
	mov	rbp, rbp
	call	iso_week_days
	mov	r12d, eax
	test	r12d, r12d
	js	.label_491
	mov	rbp, rbp
	mov	eax, 0x16d
	test	bl, 3
	lea	rsi, [rsi]
	jne	.label_493
	movsxd	rax, ebx
	mov	rsp, rsp
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	sar	rcx, 0x25
	mov	rdx, rax
	shr	rdx, 0x3f
	add	ecx, edx
	nop	
	imul	ecx, ecx, 0x64
	nop	
	sar	rax, 0x27
	mov	rbp, rbp
	add	eax, edx
	lea	rsi, [rsi]
	imul	eax, eax, 0x190
	lea	rdi, [rdi]
	cmp	ebx, eax
	sete	al
	lea	rdi, [rdi]
	movzx	edx, al
	mov	rbp, rbp
	add	edx, 0x16d
	cmp	ebx, ecx
	mov	eax, 0x16e
	cmove	eax, edx
.label_493:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0x48]
	sub	edi, eax
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax + 0x18]
	call	iso_week_days
	mov	ecx, eax
	nop	
	shr	ecx, 0x1f
	xor	ecx, 1
	test	eax, eax
	cmovns	r12d, eax
	jmp	.label_502
	nop	word ptr cs:[rax + rax]
.label_358:
	lea	rsi, [rsi]
	inc	rcx
.label_910:
	nop	
	movzx	eax, byte ptr [rbp + rcx]
	cmp	eax, 0x3a
	nop	
	je	.label_358
	movzx	eax, al
	nop	
	cmp	eax, 0x7a
	mov	rbp, rbp
	jne	.label_363
	lea	rsi, [rsi]
	add	rbp, rcx
	mov	rsp, rsp
	mov	r11, rcx
.label_947:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	dword ptr [rax + 0x20], 0
	mov	rbp, rbp
	js	.label_372
	nop	
	mov	byte ptr [rsp + 0x38], r8b
	mov	r8d, dword ptr [rax + 0x28]
	mov	sil, 1
	nop	
	test	r8d, r8d
	js	.label_375
	mov	rbp, rbp
	test	r8d, r8d
	je	.label_454
	lea	rsi, [rsi]
	xor	esi, esi
	jmp	.label_375
.label_930:
	test	r12b, r12b
	je	.label_383
	mov	al, 1
	mov	qword ptr [rsp + 0x50], rax
.label_383:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	eax, dword ptr [rsp + 0x68]
	nop	
	cmp	eax, 0x45
	je	.label_363
	mov	al, r8b
	jmp	.label_388
.label_470:
	mov	qword ptr [rsp + 0x60], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rbx
	mov	rsp, rsp
	test	eax, eax
	jne	.label_363
	nop	
	dec	rbp
	mov	rsp, rsp
	jmp	.label_363
.label_909:
	cmp	dword ptr [rsp + 0x68], 0
	jne	.label_363
	mov	r12, r13
	mov	r13, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	ecx, 1
	mov	rsp, rsp
	mov	ebx, 1
	lea	rsi, [rsi]
	cmova	rbx, rcx
	nop	
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	sub	rcx, rsi
	mov	rbp, rbp
	cmp	rbx, rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x60]
	jae	.label_365
	xor	ecx, ecx
	nop	
	test	rdi, rdi
	je	.label_370
	cmp	eax, 2
	mov	rsp, rsp
	jb	.label_407
	nop	
	movsxd	r14, r14d
	dec	r14
	cmp	r15d, 0x30
	je	.label_408
	nop	
	cmp	r15d, 0x2b
	jne	.label_410
.label_408:
	lea	rsi, [rsi]
	mov	esi, 0x30
	jmp	.label_412
.label_911:
	mov	eax, dword ptr [rsp + 0x68]
	test	eax, eax
	jne	.label_363
	mov	rbp, rbp
	test	r12b, r12b
	je	.label_413
	mov	al, 1
	mov	qword ptr [rsp + 0x50], rax
.label_413:
	xor	edi, edi
	mov	al, 0x41
	mov	rsp, rsp
	jmp	.label_388
.label_912:
	mov	eax, dword ptr [rsp + 0x68]
	cmp	eax, 0x45
	je	.label_363
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_417
	lea	rdi, [rdi]
	mov	al, 1
	mov	qword ptr [rsp + 0x50], rax
.label_417:
	xor	edi, edi
	mov	rsp, rsp
	mov	al, 0x42
	jmp	.label_388
.label_913:
	mov	ebx, dword ptr [rsp + 0x68]
	nop	
	cmp	ebx, 0x45
	jne	.label_422
	xor	edi, edi
	nop	
	mov	al, 0x43
	jmp	.label_388
.label_914:
	cmp	dword ptr [rsp + 0x68], 0
	lea	rdi, [rdi]
	jne	.label_363
	mov	r9d, OFFSET FLAT:.str.1_4
	mov	r10d, 0xffffffff
	nop	
	jmp	.label_426
.label_915:
	mov	rsp, rsp
	cmp	dword ptr [rsp + 0x68], 0
	jne	.label_363
	test	r15d, r15d
	mov	rbp, rbp
	jne	.label_434
	mov	rsp, rsp
	test	r14d, r14d
	jns	.label_434
	mov	r9d, OFFSET FLAT:.str.2_2
	mov	r15d, 0x2b
	nop	
	mov	r10d, 4
	nop	
	jmp	.label_426
.label_917:
	mov	ebx, dword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	cmp	ebx, 0x45
	lea	rdi, [rdi]
	je	.label_363
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax + 8]
	jmp	.label_402
.label_918:
	mov	ebx, dword ptr [rsp + 0x68]
	mov	rbp, rbp
	cmp	ebx, 0x45
	je	.label_363
	mov	byte ptr [rsp + 0x38], r8b
	mov	rbp, rbp
	mov	eax, 2
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x28]
	mov	rbp, rbp
	jmp	.label_435
.label_919:
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_363
	mov	byte ptr [rsp + 0x38], r8b
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	mov	eax, dword ptr [rax + 4]
	jmp	.label_402
.label_920:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	lea	rdi, [rdi]
	je	.label_363
	cmp	r14d, -1
	lea	rsi, [rsi]
	je	.label_467
	mov	byte ptr [rsp + 0x38], r8b
	mov	ecx, 9
	lea	rsi, [rsi]
	cmp	r14d, 8
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x4f0]
	jg	.label_392
	nop	dword ptr [rax + rax]
.label_476:
	cdqe	
	imul	rax, rax, 0x66666667
	lea	rsi, [rsi]
	mov	rdx, rax
	nop	
	shr	rdx, 0x3f
	lea	rsi, [rsi]
	sar	rax, 0x22
	add	eax, edx
	lea	rsi, [rsi]
	dec	ecx
	cmp	r14d, ecx
	jne	.label_476
	mov	ecx, r14d
	nop	
	jmp	.label_457
.label_921:
	lea	rdi, [rdi]
	mov	dl, 1
.label_939:
	nop	
	xor	r11d, r11d
	test	r12b, r12b
	lea	rdi, [rdi]
	je	.label_481
	mov	rbp, rbp
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
.label_481:
	je	.label_485
	mov	dl, 1
.label_485:
	lea	rdi, [rdi]
	mov	al, 0x70
	mov	dil, dl
	jmp	.label_421
.label_922:
	mov	ebx, dword ptr [rsp + 0x68]
	mov	rbp, rbp
	cmp	ebx, 0x45
	lea	rdi, [rdi]
	je	.label_363
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax]
	lea	rdi, [rdi]
	jmp	.label_402
.label_923:
	mov	r9d, OFFSET FLAT:.str.4_2
.label_426:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x68], r10d
	mov	rax, qword ptr [rsp + 0x50]
	test	al, al
	mov	rsp, rsp
	setne	al
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], ecx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x4e8]
	mov	qword ptr [rsp + 8], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rsp], r10d
	movzx	r8d, al
	mov	rbp, rbp
	xor	r12d, r12d
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, -1
	mov	rsp, rsp
	mov	rbx, r9
	mov	rdx, rbx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r9d, r15d
	call	__strftime_internal
	mov	rdi, qword ptr [rsp + 0x60]
	test	r14d, r14d
	lea	rdi, [rdi]
	cmovns	r12d, r14d
	nop	
	movsxd	rdx, r12d
	cmp	rax, rdx
	mov	r13, rax
	lea	rdi, [rdi]
	cmovb	r13, rdx
	mov	r12, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	r12, rsi
	lea	rdi, [rdi]
	cmp	r13, r12
	mov	rbp, rbp
	jae	.label_365
	mov	rsp, rsp
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_362
	cmp	rax, rdx
	nop	
	jae	.label_368
	mov	rbp, rbp
	movsxd	rcx, r14d
	sub	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rax
	cmp	r15d, 0x30
	je	.label_371
	mov	rbp, rbp
	cmp	r15d, 0x2b
	lea	rdi, [rdi]
	jne	.label_428
.label_371:
	mov	rbp, rbp
	mov	esi, 0x30
	mov	rsp, rsp
	jmp	.label_379
.label_924:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	lea	rsi, [rsi]
	je	.label_363
	mov	byte ptr [rsp + 0x38], r8b
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rcx + 0x1c]
	add	eax, 7
	sub	eax, dword ptr [rcx + 0x18]
	cdqe	
	jmp	.label_385
.label_925:
	mov	ebx, dword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	cmp	ebx, 0x45
	je	.label_363
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x38], r8b
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	eax, dword ptr [rcx + 0x18]
	mov	ecx, dword ptr [rcx + 0x1c]
	lea	rsi, [rsi]
	lea	edx, [rax + 6]
	mov	rbp, rbp
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	lea	eax, [rsi + rax + 6]
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rsp, rsp
	shr	esi, 0x1f
	sar	eax, 2
	nop	
	add	eax, esi
	lea	esi, [rax*8]
	sub	esi, eax
	lea	rsi, [rsi]
	sub	edx, esi
	lea	rsi, [rsi]
	add	ecx, 7
	mov	rbp, rbp
	sub	ecx, edx
	movsxd	rax, ecx
.label_385:
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	nop	
	add	eax, ecx
	lea	rdi, [rdi]
	mov	ecx, eax
	shr	ecx, 0x1f
	sar	eax, 2
	lea	rsi, [rsi]
	add	eax, ecx
	jmp	.label_402
.label_926:
	mov	eax, dword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	cmp	eax, 0x4f
	lea	rsi, [rsi]
	je	.label_363
	xor	edi, edi
	mov	al, 0x58
	lea	rsi, [rsi]
	jmp	.label_388
.label_927:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	lea	rdi, [rdi]
	je	.label_411
	mov	rsp, rsp
	cmp	ebx, 0x4f
	je	.label_363
	mov	byte ptr [rsp + 0x38], r8b
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 0x14]
	mov	rsp, rsp
	cmp	eax, 0xfffff894
	setl	sil
	lea	rdi, [rdi]
	add	eax, 0x76c
	mov	rsp, rsp
	mov	ecx, 4
	jmp	.label_367
.label_928:
	mov	r13, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	call	strlen
	nop	
	mov	rdi, qword ptr [rsp + 0x60]
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	r14d, r14d
	cmovns	ecx, r14d
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rax, rdx
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	cmovb	rbx, rdx
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	nop	
	cmp	rbx, rcx
	nop	
	jae	.label_365
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	rdi, rdi
	nop	
	je	.label_433
	cmp	rax, rdx
	jae	.label_437
	movsxd	r14, r14d
	sub	r14, rax
	mov	qword ptr [rsp + 0x68], rax
	mov	rsp, rsp
	cmp	r15d, 0x30
	lea	rsi, [rsi]
	je	.label_438
	cmp	r15d, 0x2b
	jne	.label_397
.label_438:
	lea	rsi, [rsi]
	mov	esi, 0x30
	jmp	.label_445
.label_929:
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x68]
	mov	rsp, rsp
	test	eax, eax
	jne	.label_363
	mov	rbp, rbp
	test	r12b, r12b
	mov	rbp, rbp
	je	.label_449
	mov	al, 1
	nop	
	mov	qword ptr [rsp + 0x50], rax
.label_449:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	al, 0x61
	lea	rsi, [rsi]
	jmp	.label_388
.label_931:
	mov	eax, dword ptr [rsp + 0x68]
	cmp	eax, 0x4f
	lea	rsi, [rsi]
	je	.label_363
	xor	edi, edi
	lea	rdi, [rdi]
	mov	al, 0x63
	jmp	.label_388
.label_932:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	lea	rsi, [rsi]
	je	.label_363
	nop	
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 0xc]
	mov	rbp, rbp
	jmp	.label_402
.label_933:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_363
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 0xc]
	jmp	.label_469
.label_934:
	nop	
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_363
	nop	
	mov	byte ptr [rsp + 0x38], r8b
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax + 0x1c]
	nop	
	cmp	eax, -1
	lea	rsi, [rsi]
	setl	sil
	inc	eax
	mov	rbp, rbp
	mov	ecx, 3
	mov	qword ptr [rsp + 0x48], rcx
	jmp	.label_472
.label_935:
	mov	ebx, dword ptr [rsp + 0x68]
	mov	rbp, rbp
	cmp	ebx, 0x45
	mov	rsp, rsp
	je	.label_363
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 8]
	jmp	.label_469
.label_936:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	mov	eax, dword ptr [rsp + 0x28]
	mov	rsp, rsp
	je	.label_363
.label_469:
	mov	byte ptr [rsp + 0x38], r8b
	test	r15d, r15d
	nop	
	mov	ecx, 0x5f
	nop	
	cmove	r15d, ecx
	jmp	.label_402
.label_937:
	mov	rsp, rsp
	mov	ebx, dword ptr [rsp + 0x68]
	mov	rbp, rbp
	cmp	ebx, 0x45
	nop	
	je	.label_363
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 0x10]
	nop	
	cmp	eax, -1
	lea	rdi, [rdi]
	setl	sil
	inc	eax
	mov	ecx, 2
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x48], rcx
	lea	rdi, [rdi]
	jmp	.label_472
.label_938:
	mov	rbp, rbp
	mov	r12, r13
	mov	r13, qword ptr [rsp + 0x58]
	xor	eax, eax
	lea	rsi, [rsi]
	test	r14d, r14d
	nop	
	cmovns	eax, r14d
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	ecx, 1
	mov	ebx, 1
	lea	rsi, [rsi]
	cmova	rbx, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	nop	
	sub	rcx, rsi
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x60]
	jae	.label_365
	lea	rdi, [rdi]
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_370
	nop	
	cmp	eax, 2
	nop	
	jb	.label_503
	movsxd	r14, r14d
	lea	rdi, [rdi]
	dec	r14
	mov	rsp, rsp
	cmp	r15d, 0x30
	lea	rsi, [rsi]
	je	.label_353
	cmp	r15d, 0x2b
	jne	.label_359
.label_353:
	mov	esi, 0x30
	jmp	.label_393
.label_940:
	mov	byte ptr [rsp + 0x38], r8b
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	imul	eax, dword ptr [rax + 0x10], 0xb
	sar	eax, 5
	inc	eax
	mov	ecx, 1
	nop	
	mov	qword ptr [rsp + 0x48], rcx
	xor	edx, edx
	xor	r8d, r8d
	mov	rbp, rbp
	xor	esi, esi
	nop	
	mov	ebx, dword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	jmp	.label_366
.label_941:
	mov	r13, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xb0], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0x90], xmm1
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x80], xmm0
	mov	rsp, rsp
	lea	rsi, [rsp + 0x80]
	nop	
	mov	rdi, qword ptr [rsp + 0x4e8]
	call	mktime_z
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	rsi, rcx
	shr	rsi, 0x3f
	mov	rbp, rbp
	lea	r12, [rsp + 0x4a7]
	nop	
.label_398:
	lea	rsi, [rsi]
	movabs	rdx, 0x6666666666666667
	lea	rdi, [rdi]
	mov	rax, rcx
	lea	rsi, [rsi]
	imul	rdx
	mov	rsp, rsp
	mov	rax, rdx
	shr	rax, 0x3f
	mov	rbp, rbp
	sar	rdx, 2
	nop	
	lea	edi, [rdx + rax]
	add	edi, edi
	mov	rsp, rsp
	lea	edi, [rdi + rdi*4]
	lea	rsi, [rsi]
	mov	ebx, ecx
	mov	rbp, rbp
	sub	ebx, edi
	lea	rdi, [rdi]
	add	rdx, rax
	mov	eax, ebx
	lea	rdi, [rdi]
	neg	eax
	test	rsi, rsi
	cmove	eax, ebx
	add	eax, 0x30
	mov	byte ptr [r12 - 1], al
	dec	r12
	lea	rdi, [rdi]
	add	rcx, 9
	mov	rsp, rsp
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_398
	lea	rdi, [rdi]
	mov	eax, 1
	mov	qword ptr [rsp + 0x48], rax
	mov	rsp, rsp
	xor	r8d, r8d
	mov	rdi, r13
	lea	rdi, [rdi]
	jmp	.label_483
.label_942:
	mov	r12, r13
	mov	r13, qword ptr [rsp + 0x58]
	nop	
	xor	eax, eax
	mov	rsp, rsp
	test	r14d, r14d
	cmovns	eax, r14d
	mov	rsp, rsp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	rbp, rbp
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	mov	rbp, rbp
	cmp	rbx, rcx
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	jae	.label_365
	xor	ecx, ecx
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_370
	cmp	eax, 2
	jb	.label_424
	lea	rsi, [rsi]
	movsxd	r14, r14d
	dec	r14
	cmp	r15d, 0x30
	lea	rsi, [rsi]
	je	.label_425
	nop	
	cmp	r15d, 0x2b
	jne	.label_430
.label_425:
	mov	esi, 0x30
	jmp	.label_432
.label_943:
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	lea	eax, [rcx + 6]
	cdqe	
	imul	rdx, rax, -0x6db6db6d
	mov	rbp, rbp
	shr	rdx, 0x20
	lea	rsi, [rsi]
	lea	ecx, [rdx + rcx + 6]
	mov	rbp, rbp
	mov	edx, ecx
	mov	rbp, rbp
	shr	edx, 0x1f
	sar	ecx, 2
	add	ecx, edx
	lea	edx, [rcx*8]
	sub	edx, ecx
	sub	eax, edx
	inc	eax
	nop	
	mov	ecx, 1
	mov	qword ptr [rsp + 0x48], rcx
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp + 0x68]
	mov	rbp, rbp
	jmp	.label_435
.label_944:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_363
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 0x18]
	mov	ecx, 1
	lea	rsi, [rsi]
	jmp	.label_457
.label_945:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	cmp	eax, 0x4f
	mov	rsp, rsp
	je	.label_363
	xor	edi, edi
	mov	rbp, rbp
	mov	al, 0x78
	lea	rdi, [rdi]
	jmp	.label_388
.label_946:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	jne	.label_464
	xor	edi, edi
	lea	rdi, [rdi]
	mov	al, 0x79
	lea	rsi, [rsi]
	jmp	.label_388
.label_368:
	nop	
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rdi]
	jmp	.label_471
.label_491:
	dec	ebx
	mov	edi, 0x16d
	test	bl, 3
	jne	.label_474
	mov	rsp, rsp
	movsxd	rax, ebx
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	sar	rcx, 0x25
	mov	rdx, rax
	shr	rdx, 0x3f
	mov	rbp, rbp
	add	ecx, edx
	mov	rbp, rbp
	imul	ecx, ecx, 0x64
	sar	rax, 0x27
	add	eax, edx
	imul	eax, eax, 0x190
	lea	rsi, [rsi]
	cmp	ebx, eax
	sete	al
	movzx	eax, al
	nop	
	add	eax, 0x16d
	cmp	ebx, ecx
	mov	edi, 0x16e
	lea	rsi, [rsi]
	cmove	edi, eax
.label_474:
	add	edi, dword ptr [rsp + 0x48]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax + 0x18]
	mov	rsp, rsp
	call	iso_week_days
	mov	r12d, eax
	lea	rsi, [rsi]
	mov	ecx, 0xffffffff
.label_502:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rbp]
	cmp	eax, 0x47
	je	.label_489
	nop	
	cmp	eax, 0x67
	nop	
	jne	.label_494
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rax + 0x14]
	imul	rax, rdx, 0x51eb851f
	mov	rsi, rax
	mov	rbp, rbp
	shr	rsi, 0x3f
	sar	rax, 0x25
	add	eax, esi
	imul	eax, eax, 0x64
	lea	rdi, [rdi]
	mov	esi, edx
	nop	
	sub	esi, eax
	lea	rdi, [rdi]
	add	esi, ecx
	lea	rsi, [rsi]
	movsxd	rax, esi
	nop	
	imul	rsi, rax, 0x51eb851f
	mov	rdi, rsi
	nop	
	shr	rdi, 0x3f
	sar	rsi, 0x25
	lea	rdi, [rdi]
	add	esi, edi
	imul	esi, esi, 0x64
	mov	rbp, rbp
	sub	eax, esi
	jns	.label_495
	mov	rbp, rbp
	mov	esi, 2
	mov	qword ptr [rsp + 0x48], rsi
	mov	esi, 0xfffff894
	lea	rdi, [rdi]
	sub	esi, ecx
	nop	
	mov	ecx, eax
	neg	ecx
	add	eax, 0x64
	cmp	edx, esi
	cmovl	eax, ecx
	mov	rsp, rsp
	xor	esi, esi
	jmp	.label_391
.label_372:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rbp, rbp
	mov	r8, rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x60]
	nop	
	jmp	.label_380
.label_422:
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	movsxd	rcx, dword ptr [rax + 0x14]
	cmp	rcx, -0x76c
	setl	sil
	setg	dl
	imul	rax, rcx, 0x51eb851f
	mov	rdi, rax
	nop	
	shr	rdi, 0x3f
	lea	rsi, [rsi]
	sar	rax, 0x25
	add	eax, edi
	imul	edi, eax, 0x64
	mov	rsp, rsp
	cmp	ecx, edi
	sets	cl
	and	cl, dl
	nop	
	movzx	ecx, cl
	sub	eax, ecx
	add	eax, 0x13
	mov	ecx, 2
	jmp	.label_367
.label_464:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rax + 0x14]
	imul	rax, rcx, 0x51eb851f
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x25
	add	eax, edx
	imul	edx, eax, 0x64
	mov	rbp, rbp
	mov	eax, ecx
	mov	rsp, rsp
	sub	eax, edx
	js	.label_384
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x38], r8b
.label_495:
	mov	rsp, rsp
	mov	ecx, 2
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x48], rcx
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	jmp	.label_391
.label_489:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax + 0x14]
	mov	edx, 0xfffff894
	sub	edx, ecx
	mov	rsp, rsp
	cmp	eax, edx
	setl	sil
	mov	rsp, rsp
	lea	eax, [rcx + rax + 0x76c]
	lea	rdi, [rdi]
	mov	ecx, 4
.label_367:
	nop	
	mov	qword ptr [rsp + 0x48], rcx
.label_391:
	test	r15d, r15d
	cmove	r15d, dword ptr [rsp + 0x2c]
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rbp, rbp
	cmp	r15d, 0x2b
	lea	rsi, [rsi]
	mov	r8d, 0
	jne	.label_366
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	ecx, 2
	mov	r8d, 0x63
	mov	edi, 0x270f
	cmove	edi, r8d
	cmp	edi, eax
	setb	dil
	cmp	ecx, r14d
	mov	rbp, rbp
	setl	r8b
	mov	rsp, rsp
	or	r8b, dil
	jmp	.label_366
.label_494:
	mov	rsp, rsp
	movsxd	rax, r12d
	lea	rdi, [rdi]
	imul	rcx, rax, -0x6db6db6d
	nop	
	shr	rcx, 0x20
	lea	rsi, [rsi]
	add	eax, ecx
	lea	rdi, [rdi]
	mov	ecx, eax
	sar	ecx, 2
	shr	eax, 0x1f
	mov	rsp, rsp
	lea	eax, [rcx + rax + 1]
.label_402:
	lea	rdi, [rdi]
	mov	ecx, 2
.label_457:
	mov	qword ptr [rsp + 0x48], rcx
.label_435:
	mov	rsp, rsp
	mov	esi, eax
	lea	rsi, [rsi]
	shr	esi, 0x1f
.label_472:
	lea	rdi, [rdi]
	xor	edx, edx
	xor	r8d, r8d
.label_366:
	cmp	ebx, 0x4f
	mov	rbp, rbp
	jne	.label_419
	test	sil, sil
	jne	.label_419
	mov	dword ptr [rsp + 0x68], ebx
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	al, byte ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x48]
	nop	
	jmp	.label_421
.label_419:
	lea	rdi, [rdi]
	mov	ecx, eax
	neg	ecx
	test	sil, sil
	cmove	ecx, eax
	lea	r12, [rsp + 0x4a7]
	nop	word ptr cs:[rax + rax]
.label_360:
	lea	rsi, [rsi]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_431
	mov	byte ptr [r12 - 1], 0x3a
	nop	
	dec	r12
.label_431:
	sar	edx, 1
	mov	ebx, ecx
	lea	rsi, [rsi]
	mov	eax, 0xcccccccd
	mov	rsp, rsp
	imul	rax, rbx
	shr	rax, 0x23
	lea	ebx, [rax + rax]
	mov	rsp, rsp
	lea	ebx, [rbx + rbx*4]
	mov	edi, ecx
	lea	rdi, [rdi]
	sub	edi, ebx
	or	edi, 0x30
	mov	byte ptr [r12 - 1], dil
	dec	r12
	mov	rsp, rsp
	cmp	ecx, 9
	mov	ecx, eax
	ja	.label_360
	test	edx, edx
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	jne	.label_360
	nop	
	mov	rdi, qword ptr [rsp + 0x60]
.label_483:
	mov	rax, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	cmp	eax, r14d
	cmovl	eax, r14d
	lea	rsi, [rsi]
	test	r8b, r8b
	je	.label_450
	mov	r8b, 0x2b
.label_450:
	test	sil, sil
	mov	r9b, 0x2d
	lea	rsi, [rsi]
	jne	.label_455
	lea	rdi, [rdi]
	mov	r9b, r8b
.label_455:
	nop	
	cmp	r15d, 0x2d
	mov	rsi, qword ptr [rsp + 0x78]
	jne	.label_478
	nop	
	test	r9b, r9b
	mov	r8, rax
	je	.label_394
	nop	
	xor	eax, eax
	test	r14d, r14d
	lea	rdi, [rdi]
	cmovns	eax, r14d
	mov	rbp, rbp
	movsxd	rcx, eax
	cmp	ecx, 1
	lea	rdi, [rdi]
	mov	ebx, 1
	lea	rdi, [rdi]
	cmova	rbx, rcx
	nop	
	mov	rcx, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	sub	rcx, rsi
	mov	rbp, rbp
	cmp	rbx, rcx
	jae	.label_365
	lea	rdi, [rdi]
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_403
	mov	rsp, rsp
	cmp	eax, 2
	lea	rdi, [rdi]
	setb	al
	test	r8d, r8d
	jne	.label_405
	lea	rsi, [rsi]
	test	al, al
	jne	.label_405
	movsxd	r13, r14d
	mov	rbp, rbp
	lea	rdx, [r13 - 1]
	mov	rbp, rbp
	mov	esi, 0x20
	mov	byte ptr [rsp + 0x68], r9b
	mov	qword ptr [rsp + 0x60], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], r8
	lea	rsi, [rsi]
	call	memset
	mov	r9b, byte ptr [rsp + 0x68]
	mov	r8, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rsp + 0x60]
	nop	
	mov	rsi, qword ptr [rsp + 0x78]
	lea	rdi, [rdi + r13 - 1]
	lea	rdi, [rdi]
	jmp	.label_405
.label_478:
	mov	r8, rax
	mov	rsp, rsp
	movsxd	rax, r8d
	mov	rbp, rbp
	mov	rcx, r12
	lea	rsi, [rsi]
	lea	rdx, [rsp + 0x4a7]
	mov	rsp, rsp
	sub	rcx, rdx
	mov	rbp, rbp
	mov	dl, r9b
	neg	dl
	sbb	rbx, rbx
	mov	rsp, rsp
	add	rbx, rcx
	add	rbx, rax
	test	ebx, ebx
	mov	rsp, rsp
	jle	.label_487
	mov	rbp, rbp
	cmp	r15d, 0x5f
	jne	.label_496
	lea	rdi, [rdi]
	movsxd	rdx, ebx
	nop	
	mov	rax, qword ptr [rsp + 0x70]
	sub	rax, rsi
	cmp	rdx, rax
	jae	.label_365
	xor	r11d, r11d
	test	rdi, rdi
	mov	r13d, 0
	je	.label_498
	mov	esi, 0x20
	nop	
	mov	byte ptr [rsp + 0x68], r9b
	mov	r13, rdi
	mov	qword ptr [rsp + 0x48], r8
	nop	
	mov	qword ptr [rsp + 0x38], rdx
	call	memset
	nop	
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	xor	r11d, r11d
	lea	rsi, [rsi]
	mov	r9b, byte ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x48]
	nop	
	mov	rsi, qword ptr [rsp + 0x78]
	add	r13, rdx
.label_498:
	mov	rsp, rsp
	add	rsi, rdx
	sub	r14d, ebx
	mov	rbp, rbp
	cmovg	r11d, r14d
	test	r9b, r9b
	lea	rdi, [rdi]
	je	.label_355
	xor	eax, eax
	mov	rbp, rbp
	test	r11d, r11d
	nop	
	cmovns	eax, r11d
	mov	rsp, rsp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	rbp, rbp
	mov	ebx, 1
	nop	
	cmova	rbx, rcx
	nop	
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	nop	
	cmp	rbx, rcx
	lea	rdi, [rdi]
	jae	.label_365
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	test	r13, r13
	je	.label_378
	cmp	eax, 2
	lea	rsi, [rsi]
	setb	al
	test	r8d, r8d
	jne	.label_382
	mov	rbp, rbp
	test	al, al
	jne	.label_382
	mov	byte ptr [rsp + 0x68], r9b
	nop	
	mov	qword ptr [rsp + 0x48], r8
	mov	qword ptr [rsp + 0x78], rsi
	mov	rsp, rsp
	movsxd	r14, r11d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x60], r11
	dec	r14
	cmp	r15d, 0x30
	je	.label_386
	cmp	r15d, 0x2b
	jne	.label_369
.label_386:
	lea	rdi, [rdi]
	mov	esi, 0x30
	nop	
	jmp	.label_440
.label_487:
	lea	rdi, [rdi]
	test	r9b, r9b
	mov	rsp, rsp
	je	.label_394
	mov	rbp, rbp
	xor	eax, eax
	test	r14d, r14d
	nop	
	cmovns	eax, r14d
	lea	rdi, [rdi]
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	nop	
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	sub	rcx, rsi
	mov	rbp, rbp
	cmp	rbx, rcx
	lea	rsi, [rsi]
	jae	.label_365
	xor	ecx, ecx
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_403
	nop	
	cmp	eax, 2
	nop	
	setb	al
	nop	
	test	r8d, r8d
	nop	
	jne	.label_405
	mov	rsp, rsp
	test	al, al
	jne	.label_405
	mov	byte ptr [rsp + 0x68], r9b
	mov	qword ptr [rsp + 0x48], r8
	nop	
	movsxd	rax, r14d
	dec	rax
	cmp	r15d, 0x30
	je	.label_409
	cmp	r15d, 0x2b
	mov	rbp, rbp
	jne	.label_356
.label_409:
	mov	rbp, rbp
	mov	esi, 0x30
	lea	rsi, [rsi]
	jmp	.label_377
.label_496:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rax, rcx
	lea	rdi, [rdi]
	jae	.label_365
	mov	rbp, rbp
	test	r9b, r9b
	lea	rsi, [rsi]
	je	.label_415
	xor	eax, eax
	mov	rsp, rsp
	test	r14d, r14d
	mov	rsp, rsp
	cmovns	eax, r14d
	movsxd	rdx, eax
	lea	rsi, [rsi]
	cmp	edx, 1
	lea	rdi, [rdi]
	mov	r13d, 1
	nop	
	cmova	r13, rdx
	mov	rbp, rbp
	cmp	r13, rcx
	lea	rsi, [rsi]
	jae	.label_365
	xor	ecx, ecx
	nop	
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_473
	mov	rsp, rsp
	cmp	eax, 2
	setb	al
	test	r8d, r8d
	mov	rbp, rbp
	jne	.label_427
	lea	rsi, [rsi]
	test	al, al
	nop	
	jne	.label_427
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x68], r9b
	mov	qword ptr [rsp + 0x48], r8
	lea	rdi, [rdi]
	movsxd	rax, r14d
	dec	rax
	cmp	r15d, 0x30
	mov	rsp, rsp
	je	.label_436
	cmp	r15d, 0x2b
	lea	rdi, [rdi]
	jne	.label_441
.label_436:
	mov	esi, 0x30
	mov	rsp, rsp
	jmp	.label_443
.label_355:
	mov	rbp, rbp
	mov	rdi, r13
	mov	r14d, r11d
	mov	rbp, rbp
	jmp	.label_394
.label_411:
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	al, 0x59
.label_388:
	xor	r11d, r11d
.label_421:
	mov	dword ptr [rsp + 0x38], edi
	nop	
	mov	qword ptr [rsp + 0x48], r11
	mov	word ptr [rsp + 0x48b], 0x2520
	nop	
	mov	r11d, dword ptr [rsp + 0x68]
	test	r11d, r11d
	mov	rbp, rbp
	lea	rcx, [rsp + 0x48d]
	je	.label_451
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x48d], r11b
	lea	rcx, [rsp + 0x48e]
.label_451:
	mov	byte ptr [rcx], al
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0x80]
	mov	rsp, rsp
	lea	rdx, [rsp + 0x48b]
	lea	rdi, [rdi]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x58]
	call	strftime
	lea	rsi, [rsi]
	mov	rbx, rax
	test	rbx, rbx
	je	.label_468
	mov	rbp, rbp
	dec	rbx
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	test	r14d, r14d
	nop	
	cmovns	eax, r14d
	cdqe	
	cmp	rbx, rax
	mov	r12, rbx
	cmovb	r12, rax
	nop	
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	nop	
	sub	rcx, rsi
	nop	
	cmp	r12, rcx
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x48]
	jae	.label_365
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	test	rdi, rdi
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0x58]
	je	.label_480
	cmp	rbx, rax
	lea	rdi, [rdi]
	setae	al
	lea	rdi, [rdi]
	test	edx, edx
	lea	rsi, [rsi]
	jne	.label_484
	test	al, al
	mov	rbp, rbp
	jne	.label_484
	mov	r13, rsi
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r15d, 0x30
	lea	rsi, [rsi]
	je	.label_486
	lea	rsi, [rsi]
	cmp	r15d, 0x2b
	jne	.label_488
.label_486:
	lea	rsi, [rsi]
	mov	esi, 0x30
	nop	
	jmp	.label_490
.label_468:
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	jmp	.label_380
.label_488:
	mov	rsp, rsp
	mov	esi, 0x20
.label_490:
	mov	rdx, r14
	mov	r15, rdi
	nop	
	call	memset
	mov	rbp, rbp
	add	r15, r14
	mov	rsp, rsp
	mov	rsi, r13
	movabs	r13, 0x1000000000002500
	mov	rbp, rbp
	mov	rdi, r15
	mov	r8, qword ptr [rsp + 0x58]
.label_484:
	mov	qword ptr [rsp + 0x78], rsi
	mov	r14, r8
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x38]
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_499
	mov	rax, qword ptr [rsp + 0x50]
	mov	rbp, rbp
	lea	rsi, [rsp + 0x81]
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rbp, rbp
	mov	r15, rdi
	test	al, 1
	nop	
	jne	.label_500
	call	memcpy
	lea	rsi, [rsi]
	jmp	.label_395
.label_499:
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x81]
	mov	rbp, rbp
	mov	rdx, rbx
	mov	rsp, rsp
	mov	r15, rdi
	mov	rbp, rbp
	call	memcpy_lowcase
	jmp	.label_395
.label_500:
	lea	rdi, [rdi]
	call	memcpy_uppcase
.label_395:
	mov	rcx, r15
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	r8, r14
	mov	rbp, rbp
	add	rcx, rbx
.label_480:
	add	rsi, r12
	mov	rbp, rbp
	jmp	.label_373
.label_437:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	jmp	.label_374
.label_428:
	mov	rsp, rsp
	mov	esi, 0x20
.label_379:
	mov	rdx, rcx
	mov	qword ptr [rsp + 0x38], rdx
	lea	rsi, [rsi]
	mov	r14, rdi
	call	memset
	add	r14, qword ptr [rsp + 0x38]
	mov	rdi, r14
.label_471:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rsp + 0x68]
	nop	
	mov	rax, qword ptr [rsp + 0x50]
	test	al, al
	setne	al
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], ecx
	nop	
	mov	rcx, qword ptr [rsp + 0x4e8]
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], edx
	nop	
	movzx	r8d, al
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 0x58]
	nop	
	mov	r9d, r15d
	mov	rbx, rdi
	mov	rsp, rsp
	call	__strftime_internal
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	add	rax, rbx
	mov	rcx, rax
	mov	rsi, qword ptr [rsp + 0x78]
.label_362:
	mov	rsp, rsp
	add	rsi, r13
	mov	rdi, rcx
	jmp	.label_400
.label_454:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2d
	sete	sil
.label_375:
	mov	rsp, rsp
	cmp	r11, 3
	mov	ebx, dword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	ja	.label_363
	nop	
	movsxd	rax, r8d
	imul	rdx, rax, -0x77777777
	shr	rdx, 0x20
	add	edx, r8d
	lea	rdi, [rdi]
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	lea	rsi, [rsi]
	imul	rax, rax, -0x6e5d4c3b
	lea	rsi, [rsi]
	shr	rax, 0x20
	add	eax, r8d
	mov	edi, eax
	shr	edi, 0x1f
	sar	eax, 0xb
	add	eax, edi
	movsxd	rdx, edx
	nop	
	imul	rdi, rdx, -0x77777777
	shr	rdi, 0x20
	add	edi, edx
	lea	rdi, [rdi]
	mov	ecx, edi
	nop	
	shr	ecx, 0x1f
	sar	edi, 5
	add	edi, ecx
	imul	edi, edi, 0x3c
	imul	ecx, edx, 0x3c
	sub	edx, edi
	nop	
	sub	r8d, ecx
	jmp	qword ptr [word ptr [+ (r11 * 8) + label_404]]
.label_892:
	imul	eax, eax, 0x64
	add	eax, edx
	mov	ecx, 5
.label_381:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rcx
	mov	r8b, 1
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	jmp	.label_366
.label_363:
	xor	r13d, r13d
	xor	ebx, ebx
	movabs	rcx, 0x100000000
	nop	dword ptr [rax]
.label_423:
	lea	rsi, [rsi]
	add	rbx, rcx
	movzx	eax, byte ptr [rbp + r13]
	dec	r13
	cmp	eax, 0x25
	lea	rsi, [rsi]
	jne	.label_423
	nop	
	mov	rax, r13
	neg	rax
	test	r14d, r14d
	mov	ecx, r14d
	lea	rdi, [rdi]
	mov	edx, 0
	cmovs	ecx, edx
	cmp	eax, ecx
	mov	rbp, rbp
	mov	edx, ecx
	cmova	edx, eax
	nop	
	movsxd	r12, edx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	sub	rdx, rsi
	mov	rsp, rsp
	cmp	r12, rdx
	nop	
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	jae	.label_365
	test	rdi, rdi
	mov	rbp, rbp
	mov	edx, 0
	je	.label_442
	sar	rbx, 0x20
	mov	rbp, rbp
	cmp	eax, ecx
	jae	.label_447
	mov	rsp, rsp
	movsxd	r14, r14d
	mov	rsp, rsp
	sub	r14, rbx
	cmp	r15d, 0x30
	mov	rbp, rbp
	je	.label_414
	lea	rsi, [rsi]
	cmp	r15d, 0x2b
	jne	.label_444
.label_414:
	mov	rsp, rsp
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	esi, 0x30
	jmp	.label_452
.label_447:
	mov	r15, rsi
	jmp	.label_456
.label_444:
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	esi, 0x20
.label_452:
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memset
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	add	rdi, r14
.label_456:
	lea	rsi, [rbp + r13 + 1]
	mov	rax, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	r14, rdi
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_416
	lea	rsi, [rsi]
	call	memcpy
	lea	rdi, [rdi]
	jmp	.label_465
.label_416:
	mov	rbp, rbp
	call	memcpy_uppcase
.label_465:
	mov	rdx, r14
	mov	rsi, r15
	mov	rbp, rbp
	add	rdx, rbx
.label_442:
	mov	rbp, rbp
	add	rsi, r12
	mov	rbp, rbp
	mov	rdi, rdx
.label_400:
	nop	
	mov	r8, qword ptr [rsp + 0x58]
	movabs	r13, 0x1000000000002500
	jmp	.label_380
.label_434:
	xor	eax, eax
	mov	r10d, r14d
	nop	
	add	r10d, -6
	mov	rbp, rbp
	cmovs	r10d, eax
	mov	rbp, rbp
	mov	r9d, OFFSET FLAT:.str.2_2
	jmp	.label_426
.label_467:
	nop	
	mov	byte ptr [rsp + 0x38], r8b
	mov	eax, 9
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	r14d, 9
	jmp	.label_435
.label_384:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x38], r8b
	lea	rdi, [rdi]
	mov	edx, 2
	mov	qword ptr [rsp + 0x48], rdx
	mov	edx, eax
	mov	rbp, rbp
	neg	edx
	add	eax, 0x64
	cmp	ecx, 0xfffff894
	lea	rdi, [rdi]
	cmovl	eax, edx
	lea	rdi, [rdi]
	xor	esi, esi
	jmp	.label_391
.label_895:
	lea	rdi, [rdi]
	test	r8d, r8d
	je	.label_492
.label_894:
	imul	eax, eax, 0x2710
	mov	rsp, rsp
	imul	edx, edx, 0x64
	add	eax, r8d
	add	eax, edx
	lea	rsi, [rsi]
	mov	ecx, 9
	nop	
	mov	qword ptr [rsp + 0x48], rcx
	lea	rsi, [rsi]
	mov	r8b, 1
	mov	edx, 0x14
	mov	rbp, rbp
	jmp	.label_366
.label_392:
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	rsp, rsp
	mov	ecx, r14d
	nop	
	jmp	.label_457
.label_397:
	mov	esi, 0x20
.label_445:
	lea	rsi, [rsi]
	mov	rdx, r14
	lea	rsi, [rsi]
	mov	r15, rdi
	call	memset
	add	r15, r14
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rax, qword ptr [rsp + 0x68]
.label_374:
	lea	rdi, [rdi]
	test	r12b, r12b
	lea	rsi, [rsi]
	je	.label_501
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	mov	r15, rax
	nop	
	mov	rdx, r15
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rsp, rsp
	call	memcpy_lowcase
	jmp	.label_357
.label_501:
	lea	rsi, [rsi]
	setne	dl
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x50]
	test	cl, cl
	je	.label_364
	test	dl, dl
	jne	.label_364
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rsi
	mov	rsp, rsp
	mov	r15, rax
	mov	rdx, r15
	mov	r14, rdi
	lea	rsi, [rsi]
	call	memcpy_uppcase
	nop	
	jmp	.label_357
.label_364:
	mov	qword ptr [rsp + 0x30], rsi
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	mov	rdx, r15
	mov	rbp, rbp
	mov	r14, rdi
	lea	rsi, [rsi]
	call	memcpy
.label_357:
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x78]
	add	rcx, r15
.label_433:
	lea	rsi, [rsi]
	add	rsi, rbx
	mov	rdi, rcx
	nop	
	mov	r8, r13
	movabs	r13, 0x1000000000002500
	mov	rsp, rsp
	jmp	.label_380
.label_359:
	mov	esi, 0x20
.label_393:
	mov	rdx, r14
	mov	r15, rdi
	mov	rbp, rbp
	call	memset
	mov	rsp, rsp
	add	r15, r14
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x78]
	nop	
	mov	rdi, r15
.label_503:
	lea	rsi, [rsi]
	mov	byte ptr [rdi], 0xa
	jmp	.label_390
.label_430:
	nop	
	mov	esi, 0x20
.label_432:
	mov	rdx, r14
	mov	rsp, rsp
	mov	r15, rdi
	lea	rdi, [rdi]
	call	memset
	add	r15, r14
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rbp, rbp
	mov	rdi, r15
.label_424:
	mov	byte ptr [rdi], 9
	jmp	.label_390
.label_356:
	mov	esi, 0x20
.label_377:
	mov	rdx, rax
	nop	
	mov	qword ptr [rsp + 0x38], rdx
	mov	rsp, rsp
	mov	r13, rdi
	call	memset
	add	r13, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, r13
	mov	r8, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	r9b, byte ptr [rsp + 0x68]
.label_405:
	mov	rsp, rsp
	mov	byte ptr [rdi], r9b
	inc	rdi
	mov	rcx, rdi
.label_403:
	mov	rsp, rsp
	add	rsi, rbx
	nop	
	mov	rdi, rcx
	mov	rbp, rbp
	jmp	.label_394
.label_369:
	mov	esi, 0x20
.label_440:
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rdx, r14
	call	memset
	mov	rsp, rsp
	add	r13, r14
	nop	
	mov	rsi, qword ptr [rsp + 0x78]
	mov	r8, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	r9b, byte ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x60]
.label_382:
	mov	byte ptr [r13], r9b
	lea	rdi, [rdi]
	inc	r13
	lea	rdi, [rdi]
	mov	rdi, r13
.label_378:
	add	rsi, rbx
	mov	r14d, r11d
	jmp	.label_394
.label_441:
	mov	esi, 0x20
.label_443:
	mov	rdx, rax
	mov	qword ptr [rsp + 0x38], rdx
	mov	r14, rdi
	lea	rsi, [rsi]
	call	memset
	add	r14, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	rdi, r14
	nop	
	mov	r8, qword ptr [rsp + 0x48]
	mov	r9b, byte ptr [rsp + 0x68]
.label_427:
	mov	rsp, rsp
	mov	byte ptr [rdi], r9b
	lea	rdi, [rdi]
	inc	rdi
	mov	rsp, rsp
	mov	rcx, rdi
.label_473:
	lea	rsi, [rsi]
	add	rsi, r13
	lea	rsi, [rsi]
	mov	rdi, rcx
.label_415:
	lea	rsi, [rsi]
	xor	r14d, r14d
	nop	
	test	rdi, rdi
	lea	rdi, [rdi]
	mov	r13d, 0
	lea	rdi, [rdi]
	je	.label_429
	lea	rsi, [rsi]
	movsxd	rdx, ebx
	nop	
	mov	qword ptr [rsp + 0x68], rdx
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x30
	mov	r13, rdi
	nop	
	mov	qword ptr [rsp + 0x48], r8
	call	memset
	mov	r8, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	add	r13, qword ptr [rsp + 0x68]
.label_429:
	movsxd	rcx, ebx
	add	rsi, rcx
	mov	rdi, r13
.label_394:
	lea	rbx, [rsp + 0x4a7]
	sub	rbx, r12
	xor	eax, eax
	nop	
	test	r14d, r14d
	cmovns	eax, r14d
	mov	rsp, rsp
	cdqe	
	nop	
	cmp	rbx, rax
	mov	rdx, rbx
	cmovb	rdx, rax
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rdx, rcx
	jae	.label_365
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	rdi, rdi
	mov	rbp, rbp
	movabs	r13, 0x1000000000002500
	je	.label_462
	cmp	rbx, rax
	setae	al
	test	r8d, r8d
	nop	
	jne	.label_459
	lea	rdi, [rdi]
	test	al, al
	jne	.label_459
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r15d, 0x30
	nop	
	je	.label_461
	lea	rsi, [rsi]
	cmp	r15d, 0x2b
	lea	rdi, [rdi]
	jne	.label_463
.label_461:
	mov	qword ptr [rsp + 0x78], rsi
	mov	rbp, rbp
	mov	esi, 0x30
	jmp	.label_466
.label_463:
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x20
.label_466:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rdx
	mov	rdx, r14
	lea	rdi, [rdi]
	mov	r15, rdi
	call	memset
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	add	rdi, r14
.label_459:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x68], rdx
	mov	rsp, rsp
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x50]
	mov	rbp, rbp
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	r15, rdi
	test	al, al
	lea	rsi, [rsi]
	je	.label_479
	lea	rdi, [rdi]
	call	memcpy_uppcase
	jmp	.label_482
.label_479:
	mov	rsp, rsp
	call	memcpy
.label_482:
	mov	rcx, r15
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	add	rcx, rbx
.label_462:
	mov	rsp, rsp
	add	rsi, rdx
	nop	
	mov	rdi, rcx
	mov	r8, qword ptr [rsp + 0x58]
	jmp	.label_380
.label_492:
	test	edx, edx
	je	.label_376
.label_893:
	imul	eax, eax, 0x64
	nop	
	add	eax, edx
	mov	ecx, 6
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rcx
	mov	rbp, rbp
	mov	r8b, 1
	mov	edx, 4
	jmp	.label_366
.label_410:
	mov	esi, 0x20
.label_412:
	mov	rdx, r14
	mov	rbp, rbp
	mov	r15, rdi
	lea	rdi, [rdi]
	call	memset
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	add	rdi, r14
.label_407:
	nop	
	mov	al, byte ptr [rbp]
	mov	rbp, rbp
	mov	byte ptr [rdi], al
.label_390:
	inc	rdi
	lea	rdi, [rdi]
	mov	rcx, rdi
.label_370:
	lea	rsi, [rsi]
	add	rsi, rbx
	mov	rsp, rsp
	mov	rdi, rcx
	lea	rsi, [rsi]
	mov	r8, r13
	lea	rsi, [rsi]
	mov	r13, r12
	nop	dword ptr [rax]
.label_380:
	mov	r14d, 0xffffffff
	cmp	byte ptr [rbp + 1], 0
	lea	rbp, [rbp + 1]
	jne	.label_387
.label_389:
	cmp	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	je	.label_354
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_354
	mov	byte ptr [rdi], 0
	jmp	.label_354
.label_365:
	mov	rsp, rsp
	xor	esi, esi
.label_354:
	mov	rbp, rbp
	mov	rax, rsi
	add	rsp, 0x4a8
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408830

	.globl memcpy_lowcase
	.type memcpy_lowcase, @function
memcpy_lowcase:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	r15, rdi
	test	rbx, rbx
	je	.label_504
	lea	rdi, [rdi]
	call	__ctype_tolower_loc
	nop	
.label_505:
	mov	rbp, rbp
	movzx	ecx, byte ptr [r14 + rbx - 1]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax]
	mov	cl, byte ptr [rdx + rcx*4]
	mov	rsp, rsp
	mov	byte ptr [r15 + rbx - 1], cl
	dec	rbx
	jne	.label_505
.label_504:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408880

	.globl memcpy_uppcase
	.type memcpy_uppcase, @function
memcpy_uppcase:
	nop	
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	rbx
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_506
	mov	rsp, rsp
	call	__ctype_toupper_loc
	nop	dword ptr [rax]
.label_507:
	movzx	ecx, byte ptr [r14 + rbx - 1]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	mov	cl, byte ptr [rdx + rcx*4]
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rbx - 1], cl
	dec	rbx
	jne	.label_507
.label_506:
	mov	rsp, rsp
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4088e0

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	nop	
	lea	eax, [rdi + 0x17e]
	nop	
	sub	eax, esi
	cdqe	
	lea	rdi, [rdi]
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	ecx, eax
	mov	edx, ecx
	lea	rdi, [rdi]
	shr	edx, 0x1f
	sar	ecx, 2
	add	ecx, edx
	lea	rsi, [rsi]
	lea	edx, [rcx*8]
	lea	rsi, [rsi]
	sub	edx, ecx
	sub	eax, edx
	lea	rdi, [rdi]
	neg	eax
	lea	eax, [rdi + rax + 3]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x408930

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
	je	.label_508
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
	jl	.label_510
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_510
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
	jne	.label_509
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_509:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_510:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_508:
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
	#Procedure 0x408a20
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
	#Procedure 0x408a70

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
	#Procedure 0x408a90

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
	#Procedure 0x408ab0

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
	#Procedure 0x408b20
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
	#Procedure 0x408b40

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
	je	.label_511
	test	rdx, rdx
	nop	
	je	.label_511
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_511:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408b80
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
	#Procedure 0x408c20

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
.label_601:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_579
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_591]]
.label_970:
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
.label_971:
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
	jne	.label_540
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_540
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_527:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_512
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_512:
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
	jne	.label_527
.label_540:
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
	jmp	.label_530
.label_963:
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
	jmp	.label_530
.label_966:
	mov	rsp, rsp
	mov	al, 1
.label_964:
	mov	r15b, 1
.label_967:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_588
	mov	cl, al
.label_588:
	lea	rdi, [rdi]
	mov	al, cl
.label_965:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_571
	test	r10, r10
	je	.label_577
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_580
.label_571:
	xor	ecx, ecx
	jmp	.label_580
.label_968:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_592
	test	r10, r10
	je	.label_594
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_598
.label_969:
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
	jmp	.label_530
.label_577:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_580:
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
	jmp	.label_530
.label_592:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_598
.label_594:
	mov	rbp, rbp
	mov	eax, 1
.label_598:
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
.label_530:
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
	jmp	.label_525
	nop	word ptr [rax + rax]
.label_537:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_525:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_584
	cmp	rsi, rbp
	jne	.label_587
	jmp	.label_589
	nop	word ptr cs:[rax + rax]
.label_584:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_589
.label_587:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_595
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_539
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_539
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
.label_539:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_628
.label_595:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_556:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_631
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_513]]
.label_904:
	test	rsi, rsi
	jne	.label_523
	jmp	.label_526
	nop	word ptr [rax + rax]
.label_628:
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
	jne	.label_544
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
	je	.label_556
	mov	rsp, rsp
	jmp	.label_532
.label_544:
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
	jmp	.label_556
.label_908:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_573
	test	rsi, rsi
	nop	
	jne	.label_565
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_526
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_516
.label_897:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_564
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_532
	cmp	edi, 2
	nop	
	jne	.label_597
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_600
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_604
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_604:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_618
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_618:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_627
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_627:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_570
.label_898:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_515
.label_899:
	mov	cl, 0x74
	jmp	.label_517
.label_900:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_515
.label_901:
	mov	bl, 0x66
	jmp	.label_515
.label_902:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_517
.label_905:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_519
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_533
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
	jae	.label_553
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_553:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_554
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_554:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_558
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_558:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_572
.label_906:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_578
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_586
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_533
.label_586:
	mov	rdi, r14
	jmp	.label_523
.label_907:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_593
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_533
	mov	rdi, r14
	jmp	.label_602
.label_631:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_606
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
.label_548:
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
	ja	.label_514
	test	dl, dl
	mov	rsp, rsp
	je	.label_514
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_516
.label_573:
	test	rsi, rsi
	jne	.label_520
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_520
.label_526:
	mov	rbp, rbp
	mov	dl, 1
.label_903:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_532
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_516
.label_564:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_523
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_525
.label_519:
	mov	rdi, r14
.label_572:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_516
.label_593:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_517
.label_602:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_528
.label_517:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_532
.label_515:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_516
	lea	rsi, [rsi]
	jmp	.label_535
.label_606:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_582
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
.label_582:
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
.label_538:
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
	je	.label_608
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
	je	.label_613
	cmp	rbp, -2
	nop	
	je	.label_626
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_545
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_518:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_552
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_524
.label_552:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_518
.label_545:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_633
	xor	r15d, r15d
.label_633:
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
	je	.label_538
	jmp	.label_548
.label_520:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_516
.label_578:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_523
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_523
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_523
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_559
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_567
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_532
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_534
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_534:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_614
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_614:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_603
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_603:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_569
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_569:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_516
.label_523:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_516:
	test	r12b, r12b
	je	.label_568
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_630
	jmp	.label_599
	nop	word ptr cs:[rax + rax]
.label_568:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_599
.label_630:
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
	jne	.label_562
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_528
	jmp	.label_535
	nop	word ptr cs:[rax + rax]
.label_599:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_535
	jmp	.label_528
.label_562:
	mov	bl, r13b
	mov	rsi, r14
.label_535:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_532
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_547
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_547
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_615
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_615:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_555
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_555:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_590
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_590:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_547:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_581
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_581:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_550
.label_565:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_516
.label_514:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_625
	nop	word ptr cs:[rax + rax]
.label_623:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_625:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_612
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_617
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_621
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_621:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_617
	nop	dword ptr [rax]
.label_612:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_533
	cmp	r14d, 2
	jne	.label_536
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_536
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_522
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_522:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_610
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_610:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_542
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_542:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_536:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_563
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_563:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_561
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
.label_561:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_574
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
.label_574:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_617:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_528
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_605
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_546
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_611
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_611:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_622
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_622:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_546
	nop	word ptr cs:[rax + rax]
.label_605:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_546:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_623
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_623
	nop	word ptr cs:[rax + rax]
.label_528:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_531
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_531
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_616
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_616:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_541
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_541:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_550
	nop	word ptr cs:[rax + rax]
.label_531:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_550:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_537
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_537
.label_597:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_570
.label_600:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_570:
	cmp	rcx, r10
	jae	.label_575
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_575:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_583
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_566
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_596
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_609
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_609:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_620
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_620:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_516
.label_583:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_516
.label_566:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_516
.label_596:
	xor	r15d, r15d
	jmp	.label_516
.label_608:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_551
.label_613:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_549
.label_626:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_529
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_585:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_543
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_585
	xor	r15d, r15d
	nop	
	jmp	.label_551
.label_529:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_549:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_551:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_548
.label_543:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_551
.label_559:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_516
.label_567:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_516
	nop	word ptr cs:[rax + rax]
.label_589:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_560
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_533
.label_560:
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
	je	.label_521
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_521
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_607
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_521
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
	je	.label_601
.label_521:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_619
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_619
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_619
	inc	rdx
	nop	dword ptr [rax + rax]
.label_629:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_624
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_624:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_629
.label_619:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_632
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_632
.label_532:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_557:
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
.label_576:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_632:
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
.label_524:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_557
.label_533:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_557
.label_607:
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
	jmp	.label_576
.label_579:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a370
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
	#Procedure 0x40a390

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
	je	.label_634
	mov	qword ptr [rax], rbx
.label_634:
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
	#Procedure 0x40a4e0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_635
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_639:
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
	jl	.label_639
.label_635:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_638
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_636]], OFFSET FLAT:slot0
.label_638:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_637
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_637:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a5a0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a5b0

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
	js	.label_646
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_642
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_644
.label_642:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_640
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
	jne	.label_645
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_645:
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
.label_644:
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
	ja	.label_643
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
	je	.label_641
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_641:
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
.label_643:
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
.label_646:
	lea	rdi, [rdi]
	call	abort
.label_640:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a820

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a830
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
	#Procedure 0x40a850
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
	#Procedure 0x40a870

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
	#Procedure 0x40a8d0

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
	je	.label_647
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
.label_647:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a940

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
	#Procedure 0x40a9a0

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
	#Procedure 0x40a9c0
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
	#Procedure 0x40a9e0

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
	mov	rcx,  qword ptr [word ptr [rip + label_648]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_649]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_650]]
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
	#Procedure 0x40aa80

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
	#Procedure 0x40aaa0

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
	#Procedure 0x40aab0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aac0
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
	#Procedure 0x40ab30

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
	#Procedure 0x40ab40

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
	mov	rax,  qword ptr [word ptr [rip + label_648]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_649]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_650]]
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
	#Procedure 0x40abd0
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
	#Procedure 0x40ac00
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
	#Procedure 0x40ac30

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ac40
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
	#Procedure 0x40ac60

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ac70

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
	#Procedure 0x40ac80

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
	jne	.label_651
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
	je	.label_652
	mov	eax, OFFSET FLAT:.str.14_1
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_651
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_651
.label_652:
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
	je	.label_653
	nop	
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_651
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_651
.label_653:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_2
	mov	eax, OFFSET FLAT:.str.12_1
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_651:
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
	#Procedure 0x40adb0

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
	je	.label_656
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_654
	jmp	.label_655
.label_656:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_655
.label_654:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_655
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
.label_655:
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
	#Procedure 0x40ae70

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
	je	.label_659
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_658
	lea	rsi, [rsi]
	jmp	.label_657
.label_659:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_657
.label_658:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_657
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
.label_657:
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
	#Procedure 0x40af60

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
	je	.label_662
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_661
	jmp	.label_660
.label_662:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_660
.label_661:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_660
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
.label_660:
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
	#Procedure 0x40b030

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
	je	.label_665
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_664
	jmp	.label_663
.label_665:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_663
.label_664:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_663
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
.label_663:
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
	#Procedure 0x40b0d0

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
	je	.label_668
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_667
	nop	
	jmp	.label_666
.label_668:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_666
.label_667:
	mov	eax, 1
	test	bpl, bpl
	je	.label_666
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
.label_666:
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
	#Procedure 0x40b170

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
	je	.label_671
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_670
	lea	rsi, [rsi]
	jmp	.label_669
.label_671:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_669
.label_670:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_669
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
.label_669:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b200

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
	je	.label_674
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_673
	jmp	.label_672
.label_674:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_672
.label_673:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_672
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_672:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b270

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
	je	.label_675
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_677
	mov	rbp, rbp
	jmp	.label_676
.label_675:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_676
.label_677:
	xor	eax, eax
.label_676:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b2c0

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
	jns	.label_678
	nop	
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	qword ptr [rbx + 8], rax
	cmp	rax, 1
	sbb	ebp, ebp
.label_678:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b320

	.globl restore_cwd
	.type restore_cwd, @function
restore_cwd:
	mov	eax, dword ptr [rdi]
	test	eax, eax
	lea	rsi, [rsi]
	js	.label_679
	mov	rbp, rbp
	mov	edi, eax
	jmp	fchdir
.label_679:
	mov	rdi, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	jmp	chdir_long
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b340

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
	js	.label_680
	call	close
.label_680:
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	mov	rbp, rbp
	jmp	free
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b370
	.globl getcon
	.type getcon, @function
getcon:

	push	rax
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b390
	.globl freecon
	.type freecon, @function
freecon:

	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b3a0
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	rsp, rsp
	mov	eax, 0xffffffff
	mov	rbp, rbp
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b3c0
	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:

	mov	rbp, rbp
	push	rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b3e0
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b400

	.globl getfilecon
	.type getfilecon, @function
getfilecon:
	push	rax
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	mov	rsp, rsp
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b420

	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:
	push	rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b440
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	rbp, rbp
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b460
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rax
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b480
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	nop
	push	rax
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b4a0
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	lea	rsi, [rsi]
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b4c0
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	lea	rsi, [rsi]
	push	rax
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x5f
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b4e0
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	mov	rbp, rbp
	pop	rcx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b500
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rax
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	nop	
	pop	rcx
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b520
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rax
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	nop	
	pop	rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b540
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	mov	rbp, rbp
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b560
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rax
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b580
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x50]
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b590
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x70]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b5a0
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	mov	rax, qword ptr [rdi + 0x60]
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b5b0
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	xor	eax, eax
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b5c0

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x48]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi + 0x50]
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b5e0

	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x68]
	mov	rdx, qword ptr [rdi + 0x70]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b5f0

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	mov	rax, qword ptr [rdi + 0x58]
	mov	rdx, qword ptr [rdi + 0x60]
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b600
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	lea	rdi, [rdi]
	mov	rax, -1
	mov	rsp, rsp
	mov	rdx, -1
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b620
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	rbp, rbp
	mov	eax, edi
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b630

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
	je	.label_688
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
	jmp	.label_690
.label_688:
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
.label_690:
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
	ja	.label_686
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_683]]
.label_1067:
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
.label_686:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_1
	jmp	.label_682
.label_1068:
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
.label_1069:
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
.label_1070:
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
	jmp	.label_687
.label_1071:
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
	jmp	.label_685
.label_1072:
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
	jmp	.label_684
.label_1073:
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
.label_684:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_685:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_687:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_681
.label_1075:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_682:
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
	jmp	.label_689
.label_1074:
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
.label_689:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_681:
	mov	rbp, rbp
	call	__fprintf_chk
.label_1066:
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
	#Procedure 0x40ba20
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_691:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_691
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ba50

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_695:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_692
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_694
	nop	word ptr cs:[rax + rax]
.label_692:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_694:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_693
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_695
.label_693:
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
	#Procedure 0x40bae0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_696
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
.label_696:
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
	#Procedure 0x40bb90
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
	#Procedure 0x40bc20
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
	jb	.label_697
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_697:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bc60

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_698
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_699
.label_698:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_699:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bc90
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
	jb	.label_700
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_700:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bcd0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_701
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_701
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_701:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_702
	test	rax, rax
	nop	
	je	.label_703
.label_702:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_703:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bd20

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_704
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_705
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_707
.label_704:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_706
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_706:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_708
.label_707:
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
.label_705:
	call	xalloc_die
.label_708:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bdc0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bdd0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bde0
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
	#Procedure 0x40be20
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
	jb	.label_709
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_709
	pop	rcx
	ret	
.label_709:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40be50

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
	#Procedure 0x40bea0

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
	#Procedure 0x40bec0

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
	#Procedure 0x40bf10

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
	jne	.label_710
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	mov	rsp, rsp
	je	.label_711
.label_710:
	mov	rbp, rbp
	mov	rax, rbx
	nop	
	pop	rbx
	mov	rbp, rbp
	ret	
.label_711:
	mov	rbp, rbp
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40bf60

	.globl xasprintf
	.type xasprintf, @function
xasprintf:
	sub	rsp, 0xc8
	test	al, al
	je	.label_712
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_712:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rsi
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 8
	lea	rsi, [rsp + 0xb0]
	call	xvasprintf
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c000

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_713
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_714
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
	je	.label_714
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
.label_713:
	mov	ecx, 1
.label_714:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c070

	.globl chdir_long
	.type chdir_long, @function
chdir_long:
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x10
	nop	
	mov	r13, rdi
	call	chdir
	mov	ebx, eax
	xor	eax, eax
	test	ebx, ebx
	lea	rsi, [rsi]
	je	.label_716
	mov	rbp, rbp
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 0x24
	nop	
	mov	eax, ebx
	lea	rdi, [rdi]
	jne	.label_716
	mov	rdi, r13
	call	strlen
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	call	cdb_init
	nop	
	test	r15, r15
	mov	rsp, rsp
	je	.label_726
	mov	rsp, rsp
	cmp	r15, 0xfff
	jbe	.label_727
	lea	rdi, [rdi]
	add	r15, r13
	lea	rdi, [rdi]
	mov	esi, 0x2f
	nop	
	mov	rdi, r13
	call	__strspn_c1
	nop	
	mov	rbx, rax
	test	rbx, rbx
	je	.label_715
	nop	
	cmp	rbx, 2
	lea	rsi, [rsi]
	jne	.label_718
	lea	rdi, [rdi]
	lea	rdi, [r13 + 3]
	mov	rbp, rbp
	mov	rdx, r15
	lea	rdi, [rdi]
	sub	rdx, rdi
	nop	
	mov	esi, 0x2f
	call	memchr
	lea	rsi, [rsi]
	mov	rbx, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_720
	mov	rsp, rsp
	mov	byte ptr [rbx], 0
	lea	rdi, [rsp + 8]
	mov	rsi, r13
	call	cdb_advance_fd
	mov	rbp, rbp
	mov	byte ptr [rbx], 0x2f
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_717
	nop	
	inc	rbx
	mov	rsp, rsp
	mov	rdi, rbx
	call	find_non_slash
	mov	rsp, rsp
	mov	r13, rax
	jmp	.label_715
.label_718:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	esi, OFFSET FLAT:.str.3_5
	call	cdb_advance_fd
	test	eax, eax
	jne	.label_717
	mov	rsp, rsp
	add	r13, rbx
.label_715:
	mov	rsp, rsp
	movzx	eax, byte ptr [r13]
	nop	
	cmp	eax, 0x2f
	je	.label_729
	mov	rsp, rsp
	cmp	r13, r15
	lea	rsi, [rsi]
	ja	.label_724
	mov	rax, r15
	sub	rax, r13
	cmp	rax, 0xfff
	lea	rsi, [rsi]
	jle	.label_725
	mov	rsp, rsp
	lea	r12, [rsp + 8]
	nop	dword ptr [rax + rax]
.label_722:
	lea	rsi, [rsi]
	mov	esi, 0x2f
	mov	edx, 0x1000
	mov	rdi, r13
	call	memrchr
	mov	rbx, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_720
	mov	rsp, rsp
	mov	byte ptr [rbx], 0
	mov	rax, rbx
	lea	rsi, [rsi]
	sub	rax, r13
	lea	rdi, [rdi]
	cmp	rax, 0x1000
	mov	rsp, rsp
	jge	.label_719
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, r13
	lea	rsi, [rsi]
	call	cdb_advance_fd
	mov	byte ptr [rbx], 0x2f
	test	eax, eax
	jne	.label_717
	mov	rsp, rsp
	inc	rbx
	mov	rdi, rbx
	call	find_non_slash
	mov	r13, rax
	mov	rax, r15
	lea	rdi, [rdi]
	sub	rax, r13
	cmp	rax, 0xfff
	lea	rsi, [rsi]
	jg	.label_722
.label_725:
	cmp	r13, r15
	mov	rsp, rsp
	jae	.label_728
	lea	rdi, [rsp + 8]
	mov	rsi, r13
	lea	rdi, [rdi]
	call	cdb_advance_fd
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_717
.label_728:
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	call	cdb_fchdir
	test	eax, eax
	je	.label_721
.label_717:
	mov	ebx, dword ptr [r14]
	lea	rdi, [rsp + 8]
	nop	
	call	cdb_free
	mov	dword ptr [r14], ebx
	jmp	.label_723
.label_720:
	mov	rbp, rbp
	mov	dword ptr [r14], 0x24
.label_723:
	mov	eax, 0xffffffff
.label_716:
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	ret	
.label_721:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	call	cdb_free
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_716
.label_719:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.6_3
	mov	esi, OFFSET FLAT:.str.1_8
	nop	
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_726:
	mov	edi, OFFSET FLAT:.str_10
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_727:
	mov	edi, OFFSET FLAT:.str.2_5
	nop	
	mov	esi, OFFSET FLAT:.str.1_8
	lea	rdi, [rdi]
	mov	edx, 0x7f
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_729:
	mov	edi, OFFSET FLAT:.str.4_4
	nop	
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0xa2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_724:
	mov	edi, OFFSET FLAT:.str.5_3
	mov	esi, OFFSET FLAT:.str.1_8
	lea	rdi, [rdi]
	mov	edx, 0xa3
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	lea	rdi, [rdi]
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c390

	.globl cdb_init
	.type cdb_init, @function
cdb_init:
	mov	rsp, rsp
	mov	dword ptr [rdi], 0xffffff9c
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c3a0

	.globl cdb_advance_fd
	.type cdb_advance_fd, @function
cdb_advance_fd:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	edi, dword ptr [rbx]
	nop	
	mov	edx, 0x10900
	xor	eax, eax
	call	openat
	lea	rdi, [rdi]
	mov	ebp, eax
	mov	rsp, rsp
	mov	eax, 0xffffffff
	test	ebp, ebp
	nop	
	js	.label_730
	mov	rdi, rbx
	call	cdb_free
	mov	rbp, rbp
	mov	dword ptr [rbx], ebp
	mov	rbp, rbp
	xor	eax, eax
.label_730:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c400

	.globl find_non_slash
	.type find_non_slash, @function
find_non_slash:
	nop	
	push	rbx
	mov	rbx, rdi
	mov	esi, 0x2f
	call	__strspn_c1
	add	rax, rbx
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c420

	.globl cdb_fchdir
	.type cdb_fchdir, @function
cdb_fchdir:
	mov	rbp, rbp
	mov	edi, dword ptr [rdi]
	jmp	fchdir
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c430

	.globl cdb_free
	.type cdb_free, @function
cdb_free:
	mov	rsp, rsp
	push	rax
	nop	
	mov	edi, dword ptr [rdi]
	test	edi, edi
	lea	rdi, [rdi]
	js	.label_731
	mov	rbp, rbp
	call	close
	test	eax, eax
	jne	.label_732
.label_731:
	lea	rdi, [rdi]
	pop	rax
	mov	rsp, rsp
	ret	
.label_732:
	mov	edi, OFFSET FLAT:.str.7_2
	mov	esi, OFFSET FLAT:.str.1_8
	nop	
	mov	edx, 0x40
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cdb_free
	lea	rdi, [rdi]
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c470

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
	je	.label_733
	nop	
	cmp	r15, -2
	jb	.label_733
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_733
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_733:
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
	#Procedure 0x40c500

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
	sub	rsp, 0x68
	mov	edi, OFFSET FLAT:.str_11
	mov	esi, OFFSET FLAT:.str.1_9
	call	fopen
	lea	rsi, [rsi]
	mov	r14, rax
	nop	
	test	r14, r14
	mov	rsp, rsp
	je	.label_738
	nop	
	mov	qword ptr [rsp + 0x58], 0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], 0
	nop	
	lea	rdi, [rsp + 0x58]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x50]
	mov	rdx, r14
	lea	rsi, [rsi]
	call	getline
	lea	r12, [rsp + 0x60]
	cmp	rax, -1
	je	.label_744
	lea	rbx, [rsp + 0x27]
	lea	r15, [rsp + 0x40]
	mov	rsp, rsp
	lea	r13, [rsp + 0x44]
	nop	word ptr cs:[rax + rax]
.label_749:
	mov	rdi, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	nop	
	mov	qword ptr [rsp], r13
	mov	esi, OFFSET FLAT:.str.2_6
	xor	eax, eax
	mov	rbp, rbp
	lea	rdx, [rsp + 0x4c]
	lea	rcx, [rsp + 0x48]
	mov	rbp, rbp
	lea	r8, [rsp + 0x2c]
	lea	r9, [rsp + 0x28]
	lea	rdi, [rdi]
	call	sscanf
	lea	rsi, [rsi]
	or	eax, 4
	nop	
	cmp	eax, 7
	jne	.label_740
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rsp + 0x40]
	nop	
	add	rdi, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.3_6
	mov	rbp, rbp
	call	strstr
	mov	rbp, rax
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	je	.label_740
	mov	qword ptr [rsp], rbx
	mov	esi, OFFSET FLAT:.str.4_5
	mov	rsp, rsp
	xor	eax, eax
	mov	rdi, rbp
	lea	rdx, [rsp + 0x3c]
	lea	rcx, [rsp + 0x38]
	mov	rsp, rsp
	lea	r8, [rsp + 0x34]
	lea	r9, [rsp + 0x30]
	call	sscanf
	or	eax, 4
	cmp	eax, 5
	jne	.label_740
	movsxd	rax, dword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0
	mov	rsp, rsp
	movsxd	rax, dword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rax], 0
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rsp + 0x38]
	mov	byte ptr [rbp + rax], 0
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rsp + 0x30]
	mov	byte ptr [rbp + rax], 0
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rsp + 0x34]
	lea	rdi, [rdi]
	add	rdi, rbp
	call	unescape_tab
	nop	
	movsxd	rdi, dword ptr [rsp + 0x44]
	mov	rsp, rsp
	add	rdi, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	unescape_tab
	nop	
	movsxd	rdi, dword ptr [rsp + 0x2c]
	add	rdi, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	call	unescape_tab
	lea	rsi, [rsi]
	mov	edi, 0x38
	mov	rbp, rbp
	call	xmalloc
	mov	r13, rax
	movsxd	rdi, dword ptr [rsp + 0x34]
	lea	rsi, [rsi]
	add	rdi, rbp
	call	xstrdup
	mov	qword ptr [r13], rax
	movsxd	rdi, dword ptr [rsp + 0x44]
	add	rdi, qword ptr [rsp + 0x58]
	nop	
	call	xstrdup
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 8], rax
	lea	rsi, [rsi]
	movsxd	rdi, dword ptr [rsp + 0x2c]
	mov	rsp, rsp
	add	rdi, qword ptr [rsp + 0x58]
	call	xstrdup
	nop	
	mov	qword ptr [r13 + 0x10], rax
	movsxd	rdi, dword ptr [rsp + 0x3c]
	add	rdi, rbp
	lea	rsi, [rsi]
	call	xstrdup
	mov	qword ptr [r13 + 0x18], rax
	or	byte ptr [r13 + 0x28], 4
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0x4c]
	mov	esi, dword ptr [rsp + 0x48]
	mov	rsp, rsp
	call	gnu_dev_makedev
	mov	qword ptr [r13 + 0x20], rax
	mov	rbp, qword ptr [r13 + 0x18]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.5_1
	mov	rbp, rbp
	mov	rdi, rbp
	nop	
	call	strcmp
	mov	bl, 1
	test	eax, eax
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	je	.label_735
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.6_0
	mov	rdi, rbp
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	lea	rsi, [rsi]
	mov	al, 1
	je	.label_735
	mov	esi, OFFSET FLAT:.str.7_3
	mov	rbp, rbp
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	mov	rsp, rsp
	je	.label_735
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rdi, rbp
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_735
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.9_0
	mov	rdi, rbp
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	mov	al, 1
	je	.label_735
	nop	
	mov	esi, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_735
	mov	esi, OFFSET FLAT:.str.11_0
	mov	rdi, rbp
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	mov	al, 1
	je	.label_735
	mov	esi, OFFSET FLAT:.str.12_0
	mov	rdi, rbp
	call	strcmp
	nop	
	test	eax, eax
	mov	al, 1
	mov	rsp, rsp
	je	.label_735
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.13_0
	mov	rdi, rbp
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	mov	al, 1
	mov	rsp, rsp
	je	.label_735
	mov	esi, OFFSET FLAT:.str.14_0
	nop	
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_735
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	je	.label_735
	nop	
	mov	esi, OFFSET FLAT:.str.16_1
	lea	rdi, [rdi]
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_735
	mov	esi, OFFSET FLAT:.str.17_1
	lea	rsi, [rsi]
	mov	rdi, rbp
	nop	
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	sete	al
	nop	word ptr cs:[rax + rax]
.label_735:
	lea	rdi, [rdi]
	mov	cl, byte ptr [r13 + 0x28]
	lea	rdi, [rdi]
	and	cl, 0xfe
	mov	rbp, rbp
	or	cl, al
	mov	byte ptr [r13 + 0x28], cl
	mov	rbp, qword ptr [r13]
	mov	rsp, rsp
	mov	esi, 0x3a
	mov	rbp, rbp
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_737
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2f
	jne	.label_734
	movzx	eax, byte ptr [rbp + 1]
	cmp	eax, 0x2f
	jne	.label_734
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r13 + 0x18]
	mov	esi, OFFSET FLAT:.str.18_2
	mov	rdi, rbp
	nop	
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	je	.label_737
	mov	esi, OFFSET FLAT:.str.19_0
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	je	.label_737
.label_734:
	mov	rsi, qword ptr [r13]
	mov	edi, OFFSET FLAT:.str.20
	call	strcmp
	test	eax, eax
	sete	bl
.label_737:
	mov	al, byte ptr [r13 + 0x28]
	lea	rdi, [rdi]
	add	bl, bl
	lea	rdi, [rdi]
	and	al, 0xfd
	nop	
	or	al, bl
	mov	byte ptr [r13 + 0x28], al
	mov	qword ptr [r12], r13
	add	r13, 0x30
	mov	rsp, rsp
	mov	r12, r13
	mov	rsp, rsp
	lea	rbx, [rsp + 0x27]
	lea	r13, [rsp + 0x44]
.label_740:
	lea	rdi, [rsp + 0x58]
	mov	rbp, rbp
	lea	rsi, [rsp + 0x50]
	mov	rdx, r14
	call	getline
	mov	rbp, rbp
	cmp	rax, -1
	lea	rdi, [rdi]
	jne	.label_749
.label_744:
	mov	rdi, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rdi, r14
	call	ferror_unlocked
	test	eax, eax
	je	.label_751
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	nop	
	mov	rdi, r14
	nop	
	call	rpl_fclose
	lea	rdi, [rdi]
	mov	dword ptr [rbp], r15d
	nop	
	jmp	.label_745
.label_738:
	mov	edi, OFFSET FLAT:.str.21_0
	mov	esi, OFFSET FLAT:.str.1_9
	mov	rsp, rsp
	call	setmntent
	mov	rbx, rax
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_746
	mov	rsp, rsp
	lea	r15, [rsp + 0x60]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	getmntent
	lea	rdi, [rdi]
	mov	rbp, rax
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_739
	nop	word ptr cs:[rax + rax]
.label_741:
	mov	esi, OFFSET FLAT:.str.22_0
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	hasmntopt
	nop	
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, 0x38
	nop	
	call	xmalloc
	mov	r12, rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp]
	mov	rsp, rsp
	call	xstrdup
	mov	rbp, rbp
	mov	qword ptr [r12], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	call	xstrdup
	nop	
	mov	qword ptr [r12 + 8], rax
	nop	
	mov	qword ptr [r12 + 0x10], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp + 0x10]
	nop	
	call	xstrdup
	lea	rdi, [rdi]
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x18], rbp
	lea	rsi, [rsi]
	or	byte ptr [r12 + 0x28], 4
	mov	esi, OFFSET FLAT:.str.5_1
	lea	rsi, [rsi]
	mov	rdi, rbp
	nop	
	call	strcmp
	mov	r13b, 1
	mov	rbp, rbp
	test	eax, eax
	mov	r14b, 1
	lea	rdi, [rdi]
	je	.label_736
	mov	esi, OFFSET FLAT:.str.6_0
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	mov	r14b, 1
	mov	rbp, rbp
	je	.label_736
	mov	esi, OFFSET FLAT:.str.7_3
	lea	rdi, [rdi]
	mov	rdi, rbp
	call	strcmp
	nop	
	test	eax, eax
	mov	r14b, 1
	lea	rdi, [rdi]
	je	.label_736
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rdi, rbp
	mov	rbp, rbp
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	mov	r14b, 1
	mov	rsp, rsp
	je	.label_736
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.9_0
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	mov	r14b, 1
	je	.label_736
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.10_0
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	nop	
	je	.label_736
	mov	esi, OFFSET FLAT:.str.11_0
	mov	rdi, rbp
	call	strcmp
	nop	
	test	eax, eax
	mov	r14b, 1
	nop	
	je	.label_736
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.12_0
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	mov	r14b, 1
	mov	rbp, rbp
	je	.label_736
	mov	esi, OFFSET FLAT:.str.13_0
	mov	rbp, rbp
	mov	rdi, rbp
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	r14b, 1
	mov	rsp, rsp
	je	.label_736
	mov	esi, OFFSET FLAT:.str.14_0
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	mov	rsp, rsp
	je	.label_736
	mov	esi, OFFSET FLAT:.str.15_2
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_736
	mov	esi, OFFSET FLAT:.str.16_1
	mov	rdi, rbp
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	mov	r14b, 1
	je	.label_736
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x18], 0
	sete	r14b
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.17_1
	mov	rdi, rbp
	call	strcmp
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_736
	xor	r14d, r14d
	nop	
.label_736:
	mov	al, byte ptr [r12 + 0x28]
	lea	rdi, [rdi]
	and	al, 0xfe
	nop	
	or	al, r14b
	mov	rsp, rsp
	mov	byte ptr [r12 + 0x28], al
	mov	rbp, qword ptr [r12]
	mov	rsp, rsp
	mov	esi, 0x3a
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	jne	.label_747
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2f
	jne	.label_748
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp + 1]
	lea	rsi, [rsi]
	cmp	eax, 0x2f
	lea	rsi, [rsi]
	jne	.label_748
	mov	rbp, qword ptr [r12 + 0x18]
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.18_2
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbp, rbp
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	je	.label_747
	mov	esi, OFFSET FLAT:.str.19_0
	mov	rbp, rbp
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_747
	nop	dword ptr [rax]
.label_748:
	mov	rsi, qword ptr [r12]
	mov	edi, OFFSET FLAT:.str.20
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	sete	r13b
.label_747:
	mov	al, byte ptr [r12 + 0x28]
	add	r13b, r13b
	nop	
	and	al, 0xfd
	nop	
	or	al, r13b
	mov	byte ptr [r12 + 0x28], al
	mov	qword ptr [r12 + 0x20], -1
	mov	qword ptr [r15], r12
	add	r12, 0x30
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsp, rsp
	call	getmntent
	mov	rbp, rax
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rbp, rbp
	mov	r15, r12
	lea	rsi, [rsi]
	jne	.label_741
	mov	rsp, rsp
	jmp	.label_742
.label_751:
	mov	rdi, r14
	lea	rdi, [rdi]
	call	rpl_fclose
	mov	rsp, rsp
	cmp	eax, -1
	nop	
	jne	.label_743
	jmp	.label_745
.label_739:
	mov	rbp, rbp
	mov	r12, r15
.label_742:
	nop	
	mov	rdi, rbx
	call	endmntent
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_745
.label_743:
	mov	qword ptr [r12], 0
	mov	rax, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	jmp	.label_746
.label_745:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rsp, rsp
	mov	qword ptr [r12], 0
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_750
	nop	dword ptr [rax + rax]
.label_752:
	mov	rbx, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	call	free_mount_entry
	mov	qword ptr [rsp + 0x60], rbx
	test	rbx, rbx
	mov	rdi, rbx
	lea	rdi, [rdi]
	jne	.label_752
.label_750:
	mov	dword ptr [rbp], r14d
	lea	rdi, [rdi]
	xor	eax, eax
.label_746:
	nop	
	add	rsp, 0x68
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ce00

	.globl unescape_tab
	.type unescape_tab, @function
unescape_tab:
	push	r14
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	r14, rdi
	call	strlen
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	je	.label_756
	mov	rdx, r14
	nop	word ptr cs:[rax + rax]
.label_754:
	nop	
	lea	rsi, [rcx + 4]
	cmp	rsi, rax
	lea	rdi, [rdi]
	jae	.label_753
	mov	rsp, rsp
	movzx	esi, byte ptr [r14 + rcx]
	nop	
	cmp	esi, 0x5c
	mov	rsp, rsp
	jne	.label_753
	mov	rsp, rsp
	mov	sil, byte ptr [rcx + r14 + 1]
	mov	bl, sil
	lea	rdi, [rdi]
	and	bl, 0xfc
	nop	
	movzx	edi, bl
	lea	rsi, [rsi]
	cmp	edi, 0x30
	lea	rsi, [rsi]
	jne	.label_753
	mov	dil, byte ptr [rcx + r14 + 2]
	lea	rsi, [rsi]
	mov	bl, dil
	nop	
	and	bl, 0xf8
	nop	
	movzx	ebx, bl
	nop	
	cmp	ebx, 0x30
	jne	.label_753
	mov	r8b, byte ptr [r14 + rcx + 3]
	lea	rsi, [rsi]
	mov	bl, r8b
	mov	rsp, rsp
	and	bl, 0xf8
	lea	rsi, [rsi]
	movzx	ebx, bl
	cmp	ebx, 0x30
	jne	.label_753
	lea	rsi, [rsi]
	add	rcx, 3
	shl	sil, 6
	shl	dil, 3
	lea	rdi, [rdi]
	add	dil, sil
	lea	rsi, [rsi]
	add	dil, r8b
	lea	rsi, [rsi]
	add	dil, 0x50
	mov	byte ptr [rdx], dil
	jmp	.label_755
	nop	word ptr cs:[rax + rax]
.label_753:
	mov	bl, byte ptr [r14 + rcx]
	mov	byte ptr [rdx], bl
.label_755:
	lea	rsi, [rsi]
	inc	rcx
	inc	rdx
	lea	rsi, [rsi]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jb	.label_754
.label_756:
	add	rsp, 8
	pop	rbx
	pop	r14
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cf10

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
	je	.label_757
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
.label_757:
	mov	rdi, rbx
	lea	rdi, [rdi]
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cf60

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rsp, rsp
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_758
	mov	rdi, r14
	mov	rbp, rbp
	call	strlen
	mov	rbp, rbp
	mov	r15, rax
	inc	r15
.label_758:
	nop	
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	lea	rdi, [rdi]
	cmp	r15, 0x77
	nop	
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	nop	
	mov	rbx, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_759
	mov	qword ptr [rbx], 0
	test	r14, r14
	mov	rsp, rsp
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	lea	rdi, [rdi]
	je	.label_759
	nop	
	mov	rdi, rbx
	lea	rsi, [rsi]
	add	rdi, 9
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r15
	call	extend_abbrs
.label_759:
	mov	rax, rbx
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d000

	.globl extend_abbrs
	.type extend_abbrs, @function
extend_abbrs:
	mov	rsp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r14, rdx
	mov	rbx, rdi
	call	memcpy
	lea	rsi, [rsi]
	mov	byte ptr [rbx + r14], 0
	nop	
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d030

	.globl tzfree
	.type tzfree, @function
tzfree:
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	cmp	rdi, 2
	jb	.label_760
	nop	dword ptr [rax]
.label_761:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	jne	.label_761
.label_760:
	mov	rsp, rsp
	pop	rbx
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d060

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
	je	.label_762
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_764
	mov	rdi, rbp
	mov	rsi, r15
	nop	
	call	localtime_r
	nop	
	mov	bpl, 1
	mov	rbp, rbp
	test	rax, rax
	je	.label_763
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r15
	call	save_abbr
	lea	rdi, [rdi]
	mov	bpl, al
	xor	bpl, 1
.label_763:
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
	jmp	.label_765
.label_762:
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
.label_764:
	xor	eax, eax
.label_765:
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
	#Procedure 0x40d140

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	mov	rsp, rsp
	push	r14
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rbp, rbp
	call	getenv_TZ
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	cl, byte ptr [r14 + 8]
	je	.label_768
	test	cl, cl
	je	.label_766
	lea	rdi, [r14 + 9]
	mov	rsi, rbx
	call	strcmp
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rdi, [rdi]
	test	ecx, ecx
	lea	rsi, [rsi]
	jne	.label_766
	jmp	.label_767
.label_768:
	mov	eax, 1
	mov	rsp, rsp
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_767
.label_766:
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	tzalloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_767
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	change_env
	test	al, al
	nop	
	je	.label_769
	nop	
	mov	rax, rbx
	mov	rbp, rbp
	jmp	.label_767
.label_769:
	lea	rsi, [rsi]
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	tzfree
	mov	rsp, rsp
	mov	dword ptr [r14], ebp
	nop	
	xor	eax, eax
.label_767:
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d200

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
	mov	r13b, 1
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_770
	cmp	r15, rbx
	ja	.label_776
	nop	
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	lea	rsi, [rsi]
	jb	.label_770
.label_776:
	mov	r14d, OFFSET FLAT:.str_0
	nop	
	cmp	byte ptr [rbx], 0
	je	.label_774
	lea	r14, [r12 + 9]
	jmp	.label_777
.label_781:
	mov	rax, qword ptr [r12]
	lea	r14, [rax + 9]
	test	rax, rax
	cmove	r14, rcx
	mov	rbp, rbp
	cmovne	r12, rax
.label_777:
	lea	r13, [r12 + 9]
	nop	word ptr cs:[rax + rax]
.label_775:
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_778
	cmp	byte ptr [r14], 0
	mov	rsp, rsp
	jne	.label_780
	lea	rsi, [rsi]
	mov	rbp, r14
	sub	rbp, r13
	lea	rdi, [rdi]
	jne	.label_771
	cmp	byte ptr [r12 + 8], 0
	mov	rbp, rbp
	je	.label_771
.label_780:
	mov	rdi, r14
	nop	
	call	strlen
	lea	rsi, [rsi]
	lea	rcx, [rax + r14 + 1]
	cmp	byte ptr [rax + r14 + 1], 0
	mov	r14, rcx
	lea	rdi, [rdi]
	jne	.label_775
	lea	rdi, [rdi]
	jmp	.label_781
.label_778:
	mov	r13b, 1
.label_774:
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x30], r14
.label_770:
	mov	al, r13b
	nop	
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_771:
	mov	rdi, rbx
	call	strlen
	inc	rax
	mov	rbp, rbp
	mov	rcx, rbp
	not	rcx
	nop	
	cmp	rax, rcx
	mov	r13b, 1
	lea	rdi, [rdi]
	jbe	.label_779
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	jmp	.label_770
.label_779:
	add	rbp, rax
	lea	rdi, [rdi]
	cmp	rbp, 0x76
	lea	rsi, [rsi]
	ja	.label_773
	mov	rsp, rsp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rdx, rax
	mov	rsp, rsp
	call	extend_abbrs
	mov	rbp, rbp
	jmp	.label_774
.label_773:
	mov	rdi, rbx
	nop	
	call	tzalloc
	mov	r14, rax
	lea	rsi, [rsi]
	mov	qword ptr [r12], r14
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_772
	mov	rsp, rsp
	mov	byte ptr [r14 + 8], 0
	lea	rsi, [rsi]
	add	r14, 9
	jmp	.label_774
.label_772:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_770
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d3c0

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rbp, rbp
	mov	r14, rdi
	mov	bl, 1
	cmp	r14, 1
	je	.label_782
	nop	
	call	__errno_location
	mov	r15, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsi]
	mov	rdi, r14
	call	change_env
	mov	bl, al
	test	bl, bl
	jne	.label_783
	mov	ebp, dword ptr [r15]
.label_783:
	mov	rdi, r14
	call	tzfree
	mov	dword ptr [r15], ebp
.label_782:
	mov	al, bl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d420

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
	je	.label_784
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	set_tz
	mov	r14, rax
	mov	rbp, rbp
	test	r14, r14
	je	.label_787
	mov	rdi, r15
	lea	rsi, [rsi]
	call	mktime
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, rbp
	cmp	rax, -1
	jne	.label_786
	nop	
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp]
	call	localtime_r
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_785
	mov	rsp, rsp
	lea	rsi, [rsp]
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rsi, [rsi]
	call	equal_tm
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	je	.label_785
.label_786:
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r15
	call	save_abbr
	nop	
	test	al, al
	jne	.label_785
	mov	qword ptr [rsp + 0x38], -1
.label_785:
	mov	rdi, r14
	call	revert_tz
	lea	rsi, [rsi]
	test	al, al
	je	.label_787
	mov	rax, qword ptr [rsp + 0x38]
	jmp	.label_788
.label_787:
	nop	
	mov	rax, -1
.label_788:
	lea	rdi, [rdi]
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	ret	
.label_784:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	jmp	timegm
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d520

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	lea	rsi, [rsi]
	push	rbx
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsi]
	mov	ecx, dword ptr [rsi + 4]
	xor	eax, dword ptr [rdi]
	xor	ecx, dword ptr [rdi + 4]
	or	ecx, eax
	nop	
	mov	eax, dword ptr [rsi + 8]
	xor	eax, dword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rsi + 0xc]
	xor	edx, dword ptr [rdi + 0xc]
	nop	
	or	edx, eax
	or	edx, ecx
	mov	rbp, rbp
	mov	eax, dword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	xor	eax, dword ptr [rdi + 0x10]
	mov	rsp, rsp
	mov	ebx, dword ptr [rsi + 0x14]
	lea	rsi, [rsi]
	xor	ebx, dword ptr [rdi + 0x14]
	or	ebx, eax
	nop	
	or	ebx, edx
	lea	rsi, [rsi]
	mov	edi, dword ptr [rdi + 0x20]
	mov	rsp, rsp
	mov	esi, dword ptr [rsi + 0x20]
	lea	rsi, [rsi]
	call	isdst_differ
	mov	rsp, rsp
	movzx	eax, al
	lea	rdi, [rdi]
	or	eax, ebx
	sete	al
	nop	
	movzx	eax, al
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d590

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str_2
	jmp	getenv
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d5a0

	.globl change_env
	.type change_env, @function
change_env:
	cmp	byte ptr [rdi + 8], 0
	je	.label_789
	add	rdi, 9
	nop	
	jmp	.label_790
.label_789:
	mov	rsp, rsp
	xor	edi, edi
.label_790:
	push	rax
	call	setenv_TZ
	mov	rbp, rbp
	test	eax, eax
	je	.label_791
	xor	eax, eax
	pop	rcx
	ret	
.label_791:
	call	tzset
	mov	al, 1
	nop	
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d5d0

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	edi, OFFSET FLAT:.str_2
	mov	rbp, rbp
	test	rax, rax
	je	.label_792
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	setenv
.label_792:
	lea	rdi, [rdi]
	jmp	unsetenv
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d600

	.globl isdst_differ
	.type isdst_differ, @function
isdst_differ:
	nop	
	test	edi, edi
	nop	
	sete	al
	lea	rsi, [rsi]
	test	esi, esi
	nop	
	sete	cl
	xor	cl, al
	or	esi, edi
	setns	al
	and	al, cl
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d620
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_793
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_793
.label_794:
	ret	
.label_793:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_794
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d650
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_795
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_795:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d670
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d680
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
	#Procedure 0x40d690
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_796
.label_797:
	ret	
.label_796:
	cmp	edi, 0x7f
	je	.label_797
	xor	eax, eax
	jmp	.label_797
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d6b0
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
	#Procedure 0x40d6c0
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
	#Procedure 0x40d6d0
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
	#Procedure 0x40d6e0
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
	#Procedure 0x40d6f0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_798
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_798
.label_799:
	ret	
.label_798:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_799
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d720
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_800
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_800:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d740

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
	#Procedure 0x40d750
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_801
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_801:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d770
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
	#Procedure 0x40d780
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
	#Procedure 0x40d790

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
	je	.label_803
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_802
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_802
.label_803:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_802
	test	cl, cl
	jne	.label_802
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_802:
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
	#Procedure 0x40d830

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_804
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
.label_804:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_805
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
	ja	.label_807
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_806
.label_807:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_806:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_805:
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
	#Procedure 0x40d950

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
	je	.label_809
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_808
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_810
.label_808:
	nop	
	mov	esi, OFFSET FLAT:.str.1_10
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_809
.label_810:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_809:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d9a0

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
	je	.label_811
	nop	
	mov	rax, rcx
.label_811:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d9e0

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
	ja	.label_812
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
	jmp	.label_813
.label_812:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_813:
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
	#Procedure 0x40da50

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	nop	
	push	rax
	mov	rbp, rbp
	mov	rax, rsi
	lea	rsi, [rsi]
	mov	rcx, rdi
	xor	edi, edi
	mov	rbp, rbp
	jmp	.label_817
	nop	word ptr cs:[rax + rax]
.label_820:
	inc	rdi
.label_817:
	movzx	edx, byte ptr [rcx + rdi*2]
	cmp	edx, 0x25
	mov	rbp, rbp
	jne	.label_818
	movzx	edx, byte ptr [rcx + rdi*2 + 1]
	cmp	edx, 0x73
	lea	rdi, [rdi]
	je	.label_820
	lea	rdi, [rdi]
	jmp	.label_815
.label_818:
	test	dl, dl
	jne	.label_815
	mov	rsi, rax
	nop	
	call	xstrcat
	pop	rcx
	ret	
.label_815:
	mov	rbp, rbp
	lea	rdi, [rsp]
	lea	rdi, [rdi]
	mov	esi, 1
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rcx, rax
	call	__vasprintf_chk
	test	eax, eax
	mov	rsp, rsp
	js	.label_819
	mov	rax, qword ptr [rsp]
	jmp	.label_814
.label_819:
	call	__errno_location
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	dword ptr [rcx], 0xc
	je	.label_816
.label_814:
	pop	rcx
	ret	
.label_816:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40daf0

	.globl xstrcat
	.type xstrcat, @function
xstrcat:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	r12, rdi
	mov	rax, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	movups	xmm0, xmmword ptr [r14]
	movaps	xmmword ptr [rsp], xmm0
	test	r12, r12
	mov	rbp, rbp
	je	.label_827
	xor	ebx, ebx
	mov	rbp, r12
	nop	dword ptr [rax]
.label_825:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp]
	mov	rsp, rsp
	cmp	rcx, 0x28
	lea	rdi, [rdi]
	ja	.label_821
	mov	rbp, rbp
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp], ecx
	mov	rsp, rsp
	jmp	.label_823
	nop	
.label_821:
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	lea	rcx, [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rcx
.label_823:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rsi]
	call	strlen
	mov	rdi, rbx
	mov	rsi, rax
	call	xsum
	mov	rbx, rax
	dec	rbp
	jne	.label_825
	nop	
	test	rbx, -0x80000000
	lea	rsi, [rsi]
	je	.label_828
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	lea	rsi, [rsi]
	xor	r15d, r15d
	lea	rsi, [rsi]
	jmp	.label_830
.label_827:
	lea	rsi, [rsi]
	mov	edi, 1
	call	xmalloc
	mov	r15, rax
	mov	rbx, r15
	jmp	.label_824
.label_828:
	nop	
	inc	rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	xmalloc
	mov	r15, rax
	nop	
	mov	rbx, r15
	test	r12, r12
	je	.label_824
	nop	dword ptr [rax + rax]
.label_829:
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [r14]
	lea	rsi, [rsi]
	cmp	rcx, 0x28
	nop	
	ja	.label_822
	mov	rax, rcx
	add	rax, qword ptr [r14 + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [r14], ecx
	lea	rdi, [rdi]
	jmp	.label_826
	nop	word ptr cs:[rax + rax]
.label_822:
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [r14 + 8], rcx
.label_826:
	mov	r13, qword ptr [rax]
	mov	rbp, rbp
	mov	rdi, r13
	lea	rsi, [rsi]
	call	strlen
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	memcpy
	lea	rdi, [rdi]
	add	rbx, rbp
	dec	r12
	jne	.label_829
.label_824:
	lea	rsi, [rsi]
	mov	byte ptr [rbx], 0
.label_830:
	mov	rsp, rsp
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dcb0

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
	js	.label_831
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_833
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
	je	.label_831
.label_833:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_831
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_832
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_832:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_831:
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
	#Procedure 0x40dd70

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_834
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_834
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_834:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	16
	#Procedure 0x40dda0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_835
	mov	rbp, rbp
	ret	
.label_835:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ddc0

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
	jne	.label_836
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_836
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_838
.label_836:
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
.label_838:
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
	je	.label_837
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_837:
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
	#Procedure 0x40de70

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
	#Procedure 0x40de90

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
	.section	.text
	.align	16
	#Procedure 0x40deb0

	.globl xsum
	.type xsum, @function
xsum:
	add	rsi, rdi
	cmp	rsi, rdi
	lea	rsi, [rsi]
	mov	rax, -1
	cmovae	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ded0
	.globl xsum3
	.type xsum3, @function
xsum3:

	nop
	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	call	xsum
	nop	
	mov	rdi, rax
	mov	rsi, rbx
	mov	rbp, rbp
	pop	rbx
	jmp	xsum
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40def0
	.globl xsum4
	.type xsum4, @function
xsum4:

	mov	rsp, rsp
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rbp, rbp
	mov	r14, rcx
	mov	rsp, rsp
	mov	rbx, rdx
	call	xsum
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rbx
	call	xsum
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, r14
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	xsum
	nop	
	.section	.text
	.align	16
	#Procedure 0x40df30
	.globl xmax
	.type xmax, @function
xmax:

	lea	rsi, [rsi]
	cmp	rdi, rsi
	lea	rdi, [rdi]
	cmovae	rsi, rdi
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40df50

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	mov	rbp, rbp
	je	.label_845
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
.label_845:
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
	ja	.label_848
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	lea	rsi, [rsi]
	jb	.label_847
	mov	rsp, rsp
	mov	eax, 0x514
	lea	rsi, [rsi]
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_839
	mov	rbp, rbp
	test	esi, esi
	jne	.label_848
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_850
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	lea	ecx, [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rdi, [rdi]
	jmp	.label_843
.label_848:
	lea	eax, [rsi - 0x400]
	lea	rdi, [rdi]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_840
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_839
	lea	rdi, [rdi]
	mov	ecx, 0x102
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_844
.label_847:
	lea	rsi, [rsi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_839:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_849
	mov	rax, rcx
	mov	rbp, rbp
	add	rax, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_851
.label_849:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_851:
	mov	edx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_844:
	nop	
	cmp	eax, 6
	jne	.label_840
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_842
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rsi, [rsi]
	jmp	.label_846
.label_840:
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_852
	mov	rbp, rbp
	mov	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_841
.label_850:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_843:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_842:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_846:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_852:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_841:
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
	#Procedure 0x40e1f0

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
	#Procedure 0x40e210

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
	js	.label_857
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
	jns	.label_854
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_854
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_853
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_856
.label_854:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	mov	rbp, rbp
	jmp	.label_856
.label_857:
	mov	rbp, rbp
	mov	edi, ebp
	mov	rbp, rbp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_856:
	test	ebx, ebx
	js	.label_853
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_853
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_855
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
	jne	.label_853
.label_855:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	lea	rdi, [rdi]
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_853:
	lea	rdi, [rdi]
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e3d0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x40e3e0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	nop	
