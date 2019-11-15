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
	#Procedure 0x401760

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
	.align	32
	#Procedure 0x401860

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.22
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.6
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
	mov	ebx, OFFSET FLAT:.str.6
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
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
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.6
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.6
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.36
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
	#Procedure 0x401980

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.8
	mov	esi, OFFSET FLAT:.str.9
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.8
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r12d, 2
	xor	ecx, ecx
.label_14:
	mov	r15b, cl
	mov	ebp, r12d
	jmp	.label_12
.label_20:
	mov	ebp, 1
.label_12:
	mov	r12d, ebp
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:.str.10
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_35
	cmp	eax, 0x62
	je	.label_12
	mov	cl, 1
	cmp	eax, 0x70
	je	.label_14
	cmp	eax, 0x63
	je	.label_20
	jmp	.label_22
.label_35:
	cmp	eax, -1
	jne	.label_21
	movsxd	rbp,  dword ptr [dword ptr [rip + optind]]
	test	r15b, r15b
	je	.label_23
	cmp	r12d, 2
	jne	.label_26
.label_23:
	lea	r13, [rbx + rbp*8]
	mov	eax, r14d
	sub	eax, ebp
	movzx	ebx, r15b
	xor	ebx, 1
	cmp	ebx, eax
	jl	.label_34
	mov	ebx, OFFSET FLAT:G_line
	test	r15b, r15b
	je	.label_27
	mov	r14d, OFFSET FLAT:G_line
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_11:
	mov	rdi, rbx
	call	puts
	mov	rdi, rbx
	call	strlen
	lea	rbx, [rax + rbx + 1]
	mov	rax, rbx
	sub	rax, r14
	cmp	rax, 0x10c4
	jb	.label_11
	jmp	.label_31
.label_27:
	cmp	r12d, 2
	jne	.label_25
	call	guess_shell_syntax
	mov	r12d, eax
	cmp	r12d, 2
	je	.label_24
.label_25:
	mov	edi, OFFSET FLAT:lsc_obstack
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	cmp	ebp, r14d
	jne	.label_32
	xor	edi, edi
	xor	esi, esi
	call	dc_parse_stream
	jmp	.label_29
.label_32:
	mov	rdi, qword ptr [r13]
	call	dc_parse_file
.label_29:
	mov	ebp, 1
	test	al, al
	je	.label_31
	movzx	ebp, al
	mov	r14,  qword ptr [word ptr [rip + label_16]]
	mov	r15,  qword ptr [word ptr [rip + label_19]]
	sub	r14, r15
	jne	.label_33
	or	byte ptr [byte ptr [rip + label_13]],  2
.label_33:
	mov	rax,  qword ptr [word ptr [rip + label_15]]
	mov	rcx,  qword ptr [word ptr [rip + label_16]]
	add	rcx, rax
	not	rax
	and	rax, rcx
	mov	rcx,  qword ptr [word ptr [rip + label_17]]
	mov	rdx, rax
	sub	rdx, rcx
	mov	rsi,  qword ptr [word ptr [rip + label_18]]
	mov	rdi, rsi
	sub	rdi, rcx
	cmp	rdx, rdi
	cmova	rax, rsi
	mov	qword ptr [word ptr [rip + label_16]],  rax
	mov	qword ptr [word ptr [rip + label_19]],  rax
	test	r12d, r12d
	mov	eax, OFFSET FLAT:.str.18_0
	mov	edi, OFFSET FLAT:.str.20
	cmove	rdi, rax
	mov	eax, OFFSET FLAT:.str.19
	mov	ebx, OFFSET FLAT:.str.21
	cmove	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, r14
	call	fwrite_unlocked
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rbx
	call	fputs_unlocked
	xor	ebp, 1
.label_31:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_21:
	cmp	eax, 0xffffff7d
	je	.label_28
	cmp	eax, 0xffffff7e
	jne	.label_22
	xor	edi, edi
	call	usage
.label_28:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.12
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_26:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
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
.label_34:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [r13 + rbx*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	test	r15b, r15b
	je	.label_30
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_30:
	mov	edi, 1
	call	usage
.label_22:
	mov	edi, 1
	call	usage
.label_24:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cd0

	.globl guess_shell_syntax
	.type guess_shell_syntax, @function
guess_shell_syntax:
	push	rax
	mov	edi, OFFSET FLAT:.str.44
	call	getenv
	mov	ecx, 2
	test	rax, rax
	je	.label_37
	cmp	byte ptr [rax], 0
	je	.label_37
	mov	rdi, rax
	call	last_component
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x63
	jne	.label_36
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x73
	jne	.label_36
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x68
	jne	.label_36
	mov	ecx, 1
	cmp	byte ptr [rax + 3], 0
	je	.label_37
.label_36:
	mov	esi, OFFSET FLAT:.str.45
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	pop	rcx
	ret	
.label_37:
	mov	eax, ecx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d40

	.globl dc_parse_stream
	.type dc_parse_stream, @function
dc_parse_stream:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbx, rsi
	mov	r12, rdi
	mov	qword ptr [rsp + 0x30], 0
	mov	qword ptr [rsp + 0x28], 0
	mov	edi, OFFSET FLAT:.str.46
	call	getenv
	test	rax, rax
	je	.label_66
	cmp	byte ptr [rax], 0
	jne	.label_52
.label_66:
	mov	eax, OFFSET FLAT:.str.47
.label_52:
	mov	qword ptr [rsp], rax
	mov	r13d, OFFSET FLAT:G_line
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
	mov	eax, 3
	mov	qword ptr [rsp + 0x10], rax
	xor	r15d, r15d
	jmp	.label_39
	nop	
.label_38:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
.label_39:
	test	r12, r12
	je	.label_48
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 0x28]
	mov	rdx, r12
	call	getline
	mov	rdi, qword ptr [rsp + 0x30]
	test	rax, rax
	jg	.label_56
	jmp	.label_59
	nop	word ptr [rax + rax]
.label_48:
	mov	eax, OFFSET FLAT:label_62
	cmp	r13, rax
	je	.label_63
	mov	rdi, r13
	call	strlen
	mov	rdi, r13
	lea	r13, [rax + r13 + 1]
.label_56:
	inc	r15
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x18]
	call	parse_line
	mov	r14, qword ptr [rsp + 0x20]
	test	r14, r14
	je	.label_39
	mov	rbp, qword ptr [rsp + 0x18]
	test	rbp, rbp
	je	.label_42
	mov	esi, OFFSET FLAT:.str.46
	mov	rdi, r14
	call	c_strcasecmp
	test	eax, eax
	je	.label_49
	mov	rax, qword ptr [rsp + 0x10]
	cmp	eax, 2
	mov	ecx, 1
	cmove	eax, ecx
	mov	qword ptr [rsp + 0x10], rax
	test	eax, eax
	je	.label_51
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2a
	je	.label_60
	movzx	eax, al
	cmp	eax, 0x2e
	jne	.label_65
	mov	rax,  qword ptr [word ptr [rip + label_18]]
	cmp	rax,  qword ptr [word ptr [rip + label_16]]
	jne	.label_67
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_67:
	mov	rax,  qword ptr [word ptr [rip + label_16]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_16]],  rcx
	mov	byte ptr [rax], 0x2a
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_40
	nop	word ptr cs:[rax + rax]
.label_42:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	r8, r15
	call	error
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_39
.label_49:
	xor	edx, edx
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp]
	call	fnmatch
	test	eax, eax
	je	.label_43
	mov	rax, qword ptr [rsp + 0x10]
	cmp	eax, 2
	sete	al
	movzx	eax, al
	add	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_38
.label_51:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_38
.label_43:
	mov	eax, 2
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_38
.label_60:
	mov	rdi, r14
.label_40:
	call	append_quoted
	mov	rax,  qword ptr [word ptr [rip + label_18]]
	cmp	rax,  qword ptr [word ptr [rip + label_16]]
	jne	.label_61
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_61:
	mov	rax,  qword ptr [word ptr [rip + label_16]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_16]],  rcx
	mov	byte ptr [rax], 0x3d
	mov	rdi, qword ptr [rsp + 0x18]
	call	append_quoted
	mov	rax,  qword ptr [word ptr [rip + label_18]]
	cmp	rax,  qword ptr [word ptr [rip + label_16]]
	jne	.label_44
	jmp	.label_47
.label_65:
	mov	esi, OFFSET FLAT:.str.49
	mov	rdi, r14
	call	c_strcasecmp
	test	eax, eax
	je	.label_38
	mov	esi, OFFSET FLAT:.str.50
	mov	rdi, r14
	call	c_strcasecmp
	test	eax, eax
	je	.label_38
	mov	esi, OFFSET FLAT:.str.51
	mov	rdi, r14
	call	c_strcasecmp
	test	eax, eax
	je	.label_38
	mov	r14, rbx
	mov	rbx, -0x128
	mov	rbp, qword ptr [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_45:
	mov	rsi,  qword ptr [word ptr [rbx + label_64]]
	mov	rdi, rbp
	call	c_strcasecmp
	test	eax, eax
	je	.label_58
	add	rbx, 8
	jne	.label_45
	mov	rax, qword ptr [rsp + 0x10]
	lea	eax, [rax - 1]
	cmp	eax, 1
	ja	.label_46
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rbx, r14
	test	rbx, rbx
	je	.label_53
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	jmp	.label_50
.label_58:
	mov	rax,  qword ptr [word ptr [rip + label_18]]
	cmp	rax,  qword ptr [word ptr [rip + label_16]]
	jne	.label_41
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_41:
	mov	rax,  qword ptr [word ptr [rbx + label_54]]
	mov	al, byte ptr [rax]
	mov	rcx,  qword ptr [word ptr [rip + label_16]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + label_16]],  rdx
	mov	byte ptr [rcx], al
	mov	rax,  qword ptr [word ptr [rip + label_18]]
	cmp	rax,  qword ptr [word ptr [rip + label_16]]
	jne	.label_57
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_57:
	mov	rax,  qword ptr [word ptr [rbx + label_54]]
	mov	al, byte ptr [rax + 1]
	mov	rcx,  qword ptr [word ptr [rip + label_16]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + label_16]],  rdx
	mov	byte ptr [rcx], al
	mov	rax,  qword ptr [word ptr [rip + label_18]]
	cmp	rax,  qword ptr [word ptr [rip + label_16]]
	jne	.label_55
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_55:
	mov	rax,  qword ptr [word ptr [rip + label_16]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_16]],  rcx
	mov	byte ptr [rax], 0x3d
	mov	rdi, qword ptr [rsp + 0x18]
	call	append_quoted
	mov	rax,  qword ptr [word ptr [rip + label_18]]
	cmp	rax,  qword ptr [word ptr [rip + label_16]]
	mov	rbx, r14
	jne	.label_44
.label_47:
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_44:
	mov	rax,  qword ptr [word ptr [rip + label_16]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_16]],  rcx
	mov	byte ptr [rax], 0x3a
	jmp	.label_38
.label_46:
	mov	rbx, r14
	jmp	.label_38
.label_53:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
.label_50:
	mov	rcx, rax
	mov	r9, qword ptr [rsp + 0x20]
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	r8, r15
	call	error
	jmp	.label_38
.label_59:
	call	free
.label_63:
	mov	rax, qword ptr [rsp + 8]
	and	al, 1
	add	rsp, 0x38
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
	#Procedure 0x4021c0

	.globl dc_parse_file
	.type dc_parse_file, @function
dc_parse_file:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_68
	cmp	byte ptr [rbx + 1], 0
	je	.label_71
.label_68:
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	mov	esi, OFFSET FLAT:.str.116
	mov	rdi, rbx
	call	freopen_safer
	test	rax, rax
	je	.label_69
.label_71:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	mov	rsi, rbx
	call	dc_parse_stream
	mov	bpl, al
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	test	eax, eax
	je	.label_70
.label_69:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, r14d
	call	error
.label_70:
	mov	al, bpl
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402250

	.globl parse_line
	.type parse_line, @function
parse_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	qword ptr [r12], 0
	mov	qword ptr [r14], 0
	call	__ctype_b_loc
	mov	qword ptr [rsp], rax
	mov	rbp, qword ptr [rax]
	dec	r15
	nop	word ptr cs:[rax + rax]
.label_77:
	mov	bl, byte ptr [r15 + 1]
	inc	r15
	movsx	edi, bl
	call	to_uchar
	movzx	eax, al
	test	byte ptr [rbp + rax*2 + 1], 0x20
	jne	.label_77
	test	bl, bl
	je	.label_72
	movzx	eax, bl
	cmp	eax, 0x23
	je	.label_72
	mov	rbx, r14
	mov	rax, qword ptr [rsp]
	mov	r14, qword ptr [rax]
	mov	r13, r15
	nop	word ptr [rax + rax]
.label_78:
	movsx	ebp, byte ptr [r13]
	mov	edi, ebp
	call	to_uchar
	movzx	eax, al
	inc	r13
	test	ebp, ebp
	je	.label_75
	movzx	eax, word ptr [r14 + rax*2]
	and	eax, 0x2000
	test	ax, ax
	je	.label_78
.label_75:
	lea	rsi, [r13 - 1]
	sub	rsi, r15
	mov	rdi, r15
	call	xstrndup
	mov	qword ptr [r12], rax
	cmp	byte ptr [r13 - 1], 0
	mov	r14, rbx
	je	.label_72
	mov	rax, qword ptr [rsp]
	mov	rbp, qword ptr [rax]
	nop	dword ptr [rax]
.label_79:
	mov	bl, byte ptr [r13]
	movsx	edi, bl
	call	to_uchar
	movzx	eax, al
	inc	r13
	test	byte ptr [rbp + rax*2 + 1], 0x20
	jne	.label_79
	test	bl, bl
	je	.label_72
	movzx	eax, bl
	cmp	eax, 0x23
	je	.label_72
	lea	rbx, [r13 - 1]
	jmp	.label_73
	nop	dword ptr [rax + rax]
.label_76:
	inc	r13
.label_73:
	movzx	eax, byte ptr [r13 - 1]
	cmp	eax, 0x23
	je	.label_74
	test	al, al
	jne	.label_76
.label_74:
	mov	rax, qword ptr [rsp]
	mov	rbp, qword ptr [rax]
	nop	dword ptr [rax + rax]
.label_80:
	movsx	edi, byte ptr [r13 - 2]
	call	to_uchar
	movzx	eax, al
	dec	r13
	test	byte ptr [rbp + rax*2 + 1], 0x20
	jne	.label_80
	sub	r13, rbx
	mov	rdi, rbx
	mov	rsi, r13
	call	xstrndup
	mov	qword ptr [r14], rax
.label_72:
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
	.align	32
	#Procedure 0x4023b0

	.globl append_quoted
	.type append_quoted, @function
append_quoted:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	cl, byte ptr [rbx]
	test	cl, cl
	je	.label_90
	inc	rbx
	mov	al, 1
	nop	word ptr cs:[rax + rax]
.label_84:
	movsx	ecx, cl
	cmp	ecx, 0x3c
	jle	.label_83
	cmp	ecx, 0x3d
	je	.label_86
	cmp	ecx, 0x5c
	je	.label_88
	cmp	ecx, 0x5e
	mov	bpl, 1
	jne	.label_82
.label_88:
	not	al
	and	al, 1
	mov	bpl, al
	jmp	.label_82
	nop	word ptr [rax + rax]
.label_83:
	cmp	ecx, 0x27
	je	.label_81
	cmp	ecx, 0x3a
	mov	bpl, 1
	jne	.label_82
.label_86:
	test	al, 1
	mov	bpl, 1
	je	.label_82
	mov	rax,  qword ptr [word ptr [rip + label_18]]
	cmp	rax,  qword ptr [word ptr [rip + label_16]]
	jne	.label_87
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_87:
	mov	rax,  qword ptr [word ptr [rip + label_16]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_16]],  rcx
	mov	byte ptr [rax], 0x5c
	jmp	.label_93
.label_81:
	mov	rax,  qword ptr [word ptr [rip + label_18]]
	cmp	rax,  qword ptr [word ptr [rip + label_16]]
	jne	.label_85
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_85:
	mov	rax,  qword ptr [word ptr [rip + label_16]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_16]],  rcx
	mov	byte ptr [rax], 0x27
	mov	rax,  qword ptr [word ptr [rip + label_18]]
	cmp	rax,  qword ptr [word ptr [rip + label_16]]
	jne	.label_92
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_92:
	mov	rax,  qword ptr [word ptr [rip + label_16]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_16]],  rcx
	mov	byte ptr [rax], 0x5c
	mov	rax,  qword ptr [word ptr [rip + label_18]]
	cmp	rax,  qword ptr [word ptr [rip + label_16]]
	jne	.label_89
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_89:
	mov	rax,  qword ptr [word ptr [rip + label_16]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_16]],  rcx
	mov	byte ptr [rax], 0x27
.label_93:
	mov	bpl, 1
.label_82:
	mov	rax,  qword ptr [word ptr [rip + label_18]]
	cmp	rax,  qword ptr [word ptr [rip + label_16]]
	jne	.label_91
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_91:
	mov	al, byte ptr [rbx - 1]
	mov	rcx,  qword ptr [word ptr [rip + label_16]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + label_16]],  rdx
	mov	byte ptr [rcx], al
	mov	cl, byte ptr [rbx]
	inc	rbx
	test	cl, cl
	mov	al, bpl
	jne	.label_84
.label_90:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402550

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	movzx	eax, dil
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402560

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	xor	ebp, ebp
	cmp	rbx, r14
	je	.label_94
	nop	word ptr cs:[rax + rax]
.label_96:
	movzx	edi, byte ptr [rbx]
	call	c_tolower
	mov	ebp, eax
	movzx	edi, byte ptr [r14]
	call	c_tolower
	and	ebp, 0xff
	je	.label_95
	inc	rbx
	inc	r14
	movzx	ecx, al
	cmp	ebp, ecx
	je	.label_96
.label_95:
	movzx	eax, al
	sub	ebp, eax
.label_94:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4025c0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025d0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025e0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_99
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_97
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_97
.label_99:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_100
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_97:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_98
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_100:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_98:
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
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4026a0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_101:
	movzx	eax, byte ptr [rdi + 1]
	inc	rdi
	cmp	eax, 0x2f
	je	.label_101
	xor	ecx, ecx
	mov	rax, rdi
	jmp	.label_104
	nop	word ptr cs:[rax + rax]
.label_103:
	inc	rax
	mov	cl, dl
.label_104:
	movzx	esi, byte ptr [rax]
	mov	dl, 1
	cmp	esi, 0x2f
	je	.label_103
	test	sil, sil
	je	.label_105
	mov	dl, cl
	and	dl, 1
	je	.label_102
	xor	ecx, ecx
.label_102:
	test	dl, dl
	cmovne	rdi, rax
	mov	dl, cl
	jmp	.label_103
.label_105:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402700
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_106:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_107
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_106
.label_107:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402730

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rdi, r12
	call	fileno
	xor	r14d, r14d
	test	eax, eax
	je	.label_112
	cmp	eax, 1
	je	.label_114
	cmp	eax, 2
	je	.label_116
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r14b
.label_116:
	mov	dword ptr [rsp + 4], r14d
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r14b
	jmp	.label_110
.label_112:
	mov	dword ptr [rsp + 4], 0
	xor	r15d, r15d
	jmp	.label_113
.label_114:
	mov	dword ptr [rsp + 4], 0
.label_110:
	xor	r15d, r15d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_118
	xor	r13d, r13d
	xor	edi, edi
	call	protect_fd
	mov	r15b, 1
	test	al, al
	je	.label_115
.label_118:
	test	r14b, r14b
	je	.label_109
	mov	edi, 1
	call	protect_fd
	xor	r13d, r13d
	test	al, al
	je	.label_115
.label_109:
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_113
	mov	edi, 2
	call	protect_fd
	xor	r13d, r13d
	test	al, al
	je	.label_115
.label_113:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r12
	call	rpl_freopen
	mov	r13, rax
.label_115:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_111
	mov	edi, 2
	call	close
.label_111:
	test	r14b, r14b
	je	.label_117
	mov	edi, 1
	call	close
.label_117:
	test	r15b, r15b
	je	.label_108
	xor	edi, edi
	call	close
.label_108:
	test	r13, r13
	jne	.label_119
	mov	dword ptr [rbx], ebp
.label_119:
	mov	rax, r13
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
	#Procedure 0x402860

	.globl protect_fd
	.type protect_fd, @function
protect_fd:
	push	rbx
	mov	ebx, edi
	mov	edi, OFFSET FLAT:.str_4
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ecx, eax
	mov	al, 1
	cmp	ecx, ebx
	je	.label_120
	test	ecx, ecx
	js	.label_121
	mov	edi, ecx
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
.label_121:
	xor	eax, eax
.label_120:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4028a0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_122
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_123
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_123
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_124
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_124:
	mov	rbx, r14
.label_123:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_122:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_5
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402950
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
	#Procedure 0x402990
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
	#Procedure 0x4029a0
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
	#Procedure 0x4029b0

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
	#Procedure 0x4029f0
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
	#Procedure 0x402a10

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_125
	test	rdx, rdx
	je	.label_125
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_125:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a40
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
	#Procedure 0x402ac0

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
.label_208:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_219
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_226]]
.label_416:
	mov	r12d, r11d
	mov	edi, OFFSET FLAT:.str.11
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
.label_417:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_132
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_132
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_151:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_138
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_138:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_151
.label_132:
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
	jmp	.label_165
.label_409:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_165
.label_412:
	mov	al, 1
.label_410:
	mov	r15b, 1
.label_413:
	test	r15b, 1
	mov	cl, 1
	je	.label_183
	mov	cl, al
.label_183:
	mov	al, cl
.label_411:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_209
	test	r10, r10
	je	.label_190
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_191
.label_209:
	xor	ecx, ecx
	jmp	.label_191
.label_414:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_195
	test	r10, r10
	je	.label_203
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_205
.label_415:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_165
.label_190:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_191:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_165
.label_195:
	xor	eax, eax
	jmp	.label_205
.label_203:
	mov	eax, 1
.label_205:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_165:
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
	jmp	.label_179
	nop	dword ptr [rax + rax]
.label_212:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_179:
	cmp	rbp, -1
	je	.label_169
	cmp	rsi, rbp
	jne	.label_171
	jmp	.label_174
	nop	dword ptr [rax]
.label_169:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_174
.label_171:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_175
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_145
	cmp	rbp, -1
	jne	.label_145
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
.label_145:
	cmp	rbx, rbp
	jbe	.label_201
.label_175:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_197:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_207
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_210]]
.label_396:
	test	rsi, rsi
	jne	.label_158
	jmp	.label_161
	nop	word ptr cs:[rax + rax]
.label_201:
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
	jne	.label_231
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_197
	jmp	.label_139
.label_231:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_197
.label_400:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_247
	test	rsi, rsi
	jne	.label_131
	cmp	rbp, 1
	je	.label_161
	xor	r15d, r15d
	jmp	.label_127
.label_389:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_135
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_139
	cmp	edi, 2
	jne	.label_146
	mov	al, r11b
	and	al, 1
	jne	.label_150
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_153
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_153:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_176
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_176:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_170
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_170:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_128
.label_390:
	mov	bl, 0x62
	jmp	.label_149
.label_391:
	mov	cl, 0x74
	jmp	.label_182
.label_392:
	mov	bl, 0x76
	jmp	.label_149
.label_393:
	mov	bl, 0x66
	jmp	.label_149
.label_394:
	mov	cl, 0x72
	jmp	.label_182
.label_397:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_189
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_188
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
	jae	.label_198
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_198:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_215
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_215:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_221
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_221:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_229
.label_398:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_234
	cmp	r14d, 2
	jne	.label_236
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_188
.label_236:
	mov	rdi, r14
	jmp	.label_158
.label_399:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_240
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_188
	mov	rdi, r14
	jmp	.label_242
.label_207:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_244
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
.label_152:
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
	ja	.label_141
	test	dl, dl
	je	.label_141
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_127
.label_247:
	test	rsi, rsi
	jne	.label_166
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_166
.label_161:
	mov	dl, 1
.label_395:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_139
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_127
.label_135:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_158
	mov	r14, rdi
	inc	rsi
	jmp	.label_179
.label_189:
	mov	rdi, r14
.label_229:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_127
.label_240:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_182
.label_242:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_137
.label_182:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_139
.label_149:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_127
	jmp	.label_200
.label_244:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_202
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_202:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_143:
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
	je	.label_224
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_230
	cmp	rbp, -2
	je	.label_237
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_238
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_129:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_245
	bt	rsi, rdx
	jb	.label_246
.label_245:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_129
.label_238:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_177
	xor	r15d, r15d
.label_177:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_143
	jmp	.label_152
.label_166:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_127
.label_234:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_158
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_158
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_158
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_172
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_239
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_139
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_180
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_180:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_186
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_186:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_196
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_196:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_241
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_241:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_127
.label_158:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_127:
	test	r12b, r12b
	je	.label_192
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_217
	jmp	.label_184
	nop	word ptr cs:[rax + rax]
.label_192:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_184
.label_217:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_227
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_137
	jmp	.label_200
	nop	word ptr cs:[rax + rax]
.label_184:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_200
	jmp	.label_137
.label_227:
	mov	bl, r13b
	mov	rsi, r14
.label_200:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_139
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_126
	mov	al, r11b
	and	al, 1
	jne	.label_126
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_130
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_130:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_187
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_187:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_225
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_225:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_126:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_160
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_160:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_168
.label_131:
	xor	r15d, r15d
	jmp	.label_127
.label_141:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_173
	nop	word ptr cs:[rax + rax]
.label_136:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_173:
	test	dl, dl
	je	.label_181
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_194
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_211
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_211:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_194
	nop	word ptr [rax + rax]
.label_181:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_188
	cmp	r14d, 2
	jne	.label_204
	mov	al, r11b
	and	al, 1
	jne	.label_204
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_213
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_213:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_216
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_216:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_222
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_222:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_204:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_218
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_218:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_159
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_159:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_243
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_243:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_194:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_137
	test	r11b, 1
	je	.label_142
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_144
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_148
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_148:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_163
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_163:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_144
	nop	word ptr cs:[rax + rax]
.label_142:
	mov	r14, rdi
.label_144:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_136
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_136
.label_137:
	test	r11b, 1
	je	.label_185
	and	al, 1
	jne	.label_185
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_206
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_206:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_193
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_193:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_168
	nop	dword ptr [rax + rax]
.label_185:
	mov	bl, r13b
	mov	r14, rdi
.label_168:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_212
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_212
.label_146:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_128
.label_150:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_128:
	cmp	rcx, r10
	jae	.label_178
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_178:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_223
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_232
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_155
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_134
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_134:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_235
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_235:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_127
.label_223:
	xor	r15d, r15d
	jmp	.label_127
.label_232:
	xor	r15d, r15d
	jmp	.label_127
.label_155:
	xor	r15d, r15d
	jmp	.label_127
.label_224:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_133
.label_230:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_140
.label_237:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_147
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_162:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_157
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_162
	xor	r15d, r15d
	jmp	.label_133
.label_147:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_140:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_133:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_152
.label_157:
	xor	r15d, r15d
	jmp	.label_133
.label_172:
	xor	r15d, r15d
	jmp	.label_127
.label_239:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_127
	nop	dword ptr [rax + rax]
.label_174:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_167
	or	dl, al
	je	.label_188
.label_167:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_199
	or	dl, al
	jne	.label_199
	test	r8b, 1
	jne	.label_154
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_199
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_208
.label_199:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_214
	test	cl, cl
	jne	.label_214
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_214
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_228:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_220
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_220:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_228
.label_214:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_233
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_233
.label_139:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_156:
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
.label_164:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_233:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_246:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_156
.label_188:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_156
.label_154:
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
	jmp	.label_164
.label_219:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cd0
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
	#Procedure 0x403ce0

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
	je	.label_248
	mov	qword ptr [rax], rbx
.label_248:
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
	#Procedure 0x403de0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_249
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_251:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_251
.label_249:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_253
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_252]], OFFSET FLAT:slot0
.label_253:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_250
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_250:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e80

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x403e90

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
	js	.label_254
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_259
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_255
.label_259:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_258
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
	jne	.label_257
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_257:
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
.label_255:
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
	ja	.label_260
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_256
	mov	rdi, rbx
	call	free
.label_256:
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
.label_260:
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
.label_254:
	call	abort
.label_258:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404060

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404070
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
	#Procedure 0x404080
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
	#Procedure 0x404090

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
	#Procedure 0x4040d0

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
	je	.label_261
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
.label_261:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404130

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
	#Procedure 0x404170
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
	#Procedure 0x404190
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
	#Procedure 0x4041b0

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
	mov	rcx,  qword ptr [word ptr [rip + label_262]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_263]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_264]]
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
	#Procedure 0x404220

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
	#Procedure 0x404230

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404240
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404250

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
	#Procedure 0x4042a0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4042b0

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
	mov	rax,  qword ptr [word ptr [rip + label_262]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_263]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_264]]
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
	#Procedure 0x404320
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
	#Procedure 0x404340
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
	#Procedure 0x404360

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404370
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
	#Procedure 0x404380

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404390

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
	#Procedure 0x4043a0

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
	jne	.label_266
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
	je	.label_265
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_266
	mov	eax, OFFSET FLAT:.str.15
	jmp	.label_266
.label_265:
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
	je	.label_267
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_266
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_266
.label_267:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_266:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404480

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
	je	.label_269
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_270
	jmp	.label_268
.label_269:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_268
.label_270:
	mov	eax, 1
	test	bpl, bpl
	je	.label_268
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
.label_268:
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
	#Procedure 0x404510

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
	je	.label_272
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_271
	jmp	.label_273
.label_272:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_273
.label_271:
	mov	eax, 1
	test	bpl, bpl
	je	.label_273
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
.label_273:
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
	#Procedure 0x4045a0

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
	je	.label_274
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_276
	jmp	.label_275
.label_274:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_275
.label_276:
	mov	eax, 1
	test	bpl, bpl
	je	.label_275
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
.label_275:
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
	#Procedure 0x404620

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
	je	.label_279
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_278
	jmp	.label_277
.label_279:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_277
.label_278:
	mov	eax, 1
	test	bpl, bpl
	je	.label_277
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
.label_277:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404690

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
	je	.label_282
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_280
	jmp	.label_281
.label_282:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_281
.label_280:
	mov	eax, 1
	test	bpl, bpl
	je	.label_281
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_281:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404700

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
	je	.label_284
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_285
	jmp	.label_283
.label_284:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_283
.label_285:
	mov	eax, 1
	test	bpl, bpl
	je	.label_283
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_283:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404750

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
	je	.label_288
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_287
	jmp	.label_286
.label_288:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_286
.label_287:
	mov	eax, 1
	test	bpl, bpl
	je	.label_286
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_286:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047a0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_291
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_290
	jmp	.label_289
.label_291:
	mov	eax, 1
	test	cl, cl
	je	.label_289
.label_290:
	xor	eax, eax
.label_289:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4047d0

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
	je	.label_294
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_293
.label_294:
	mov	edx, OFFSET FLAT:.str.1_2
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_293:
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
	ja	.label_299
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_300]]
.label_426:
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
.label_299:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_298
.label_427:
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
.label_428:
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
.label_429:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_297
.label_430:
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
	jmp	.label_296
.label_431:
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
	jmp	.label_292
.label_432:
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
.label_292:
	mov	qword ptr [rsp + 0x10], rdi
.label_296:
	mov	qword ptr [rsp + 8], rsi
.label_297:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_301
.label_434:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_298:
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
	jmp	.label_295
.label_433:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_0
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
.label_295:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_301:
	call	__fprintf_chk
.label_425:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ac0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_302:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_302
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404af0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_304:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_303
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_305
	nop	dword ptr [rax]
.label_303:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_305:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_306
	inc	r9
	cmp	r9, 0xa
	jb	.label_304
.label_306:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404b50

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_307
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_307:
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
	#Procedure 0x404be0
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
	mov	edx, OFFSET FLAT:.str.15_0
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
	#Procedure 0x404c60
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_308
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_308:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c90

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_309
	test	rax, rax
	je	.label_310
.label_309:
	pop	rbx
	ret	
.label_310:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cb0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_311
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_311:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ce0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_312
	test	rbx, rbx
	jne	.label_312
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_312:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_314
	test	rax, rax
	je	.label_313
.label_314:
	pop	rbx
	ret	
.label_313:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404d10

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_315
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_318
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_316
.label_315:
	test	rcx, rcx
	jne	.label_319
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_319:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_317
.label_316:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_318:
	call	xalloc_die
.label_317:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d90

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404da0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404db0
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
	#Procedure 0x404de0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_320
	call	rpl_calloc
	test	rax, rax
	je	.label_320
	pop	rcx
	ret	
.label_320:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e10

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
	#Procedure 0x404e40
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
	#Procedure 0x404e60

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_3
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
	.align	32
	#Procedure 0x404e90

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	call	__strndup
	test	rax, rax
	je	.label_321
	pop	rcx
	ret	
.label_321:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404eb0

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
	.align	32
	#Procedure 0x404f00

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_324
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_325
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_324
.label_325:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_324
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_326
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_326:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_324:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f80

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_327
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_327
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_327:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fb0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_328
	ret	
.label_328:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404fd0

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	call	orig_freopen
	mov	rbx, rax
	test	r15, r15
	je	.label_330
	test	rbx, rbx
	je	.label_330
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_330
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_330
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_329
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_330
.label_329:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	orig_freopen
.label_330:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405070

	.globl orig_freopen
	.type orig_freopen, @function
orig_freopen:
	jmp	freopen
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x405080

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
	jne	.label_331
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_331
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_332
.label_331:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_332:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_333
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_333:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4050f0

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
	je	.label_334
	cmp	r15, -2
	jb	.label_334
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_334
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_334:
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
	#Procedure 0x405150

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	rax
	mov	qword ptr [rdi + 0x38], rcx
	mov	qword ptr [rdi + 0x40], r8
	and	byte ptr [rdi + 0x50], 0xfe
	call	_obstack_begin_worker
	mov	eax, 1
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405170

	.globl _obstack_begin_worker
	.type _obstack_begin_worker, @function
_obstack_begin_worker:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	test	rdx, rdx
	mov	ebx, 0x10
	cmovne	rbx, rdx
	test	rsi, rsi
	mov	eax, 0xfe0
	cmovne	rax, rsi
	mov	qword ptr [r14], rax
	lea	r15, [rbx - 1]
	mov	qword ptr [r14 + 0x30], r15
	mov	rsi, rax
	call	call_chunkfun
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_335
	lea	rcx, [rax + r15 + 0x10]
	neg	rbx
	and	rbx, rcx
	mov	qword ptr [r14 + 0x10], rbx
	mov	qword ptr [r14 + 0x18], rbx
	mov	rcx, qword ptr [r14]
	add	rcx, rax
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x20], rcx
	mov	qword ptr [rax + 8], 0
	and	byte ptr [r14 + 0x50], 0xf9
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_335:
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051f0

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	rax
	mov	qword ptr [rdi + 0x38], rcx
	mov	qword ptr [rdi + 0x40], r8
	mov	qword ptr [rdi + 0x48], r9
	or	byte ptr [rdi + 0x50], 1
	call	_obstack_begin_worker
	mov	eax, 1
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405210

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdi
	mov	rcx, qword ptr [r13]
	mov	r14, qword ptr [r13 + 0x18]
	sub	r14, qword ptr [r13 + 0x10]
	lea	rdx, [r14 + rsi]
	add	rdx, qword ptr [r13 + 0x30]
	setb	al
	mov	rbx, r14
	shr	rbx, 3
	add	rbx, 0x64
	add	rbx, rdx
	cmovb	rbx, rdx
	cmp	rbx, rcx
	cmovb	rbx, rcx
	add	rsi, r14
	jb	.label_336
	test	al, al
	jne	.label_336
	mov	r15, qword ptr [r13 + 8]
	mov	rdi, r13
	mov	rsi, rbx
	call	call_chunkfun
	mov	r12, rax
	test	r12, r12
	je	.label_336
	mov	qword ptr [r13 + 8], r12
	mov	qword ptr [r12 + 8], r15
	add	rbx, r12
	mov	qword ptr [r13 + 0x20], rbx
	mov	qword ptr [r12], rbx
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rbx, qword ptr [r13 + 0x30]
	lea	rax, [r12 + rbx + 0x10]
	not	rbx
	and	rbx, rax
	mov	rdi, rbx
	mov	rdx, r14
	call	memcpy
	test	byte ptr [r13 + 0x50], 2
	jne	.label_337
	mov	rax, qword ptr [r13 + 0x30]
	lea	rcx, [r15 + rax + 0x10]
	not	rax
	and	rax, rcx
	cmp	qword ptr [r13 + 0x10], rax
	jne	.label_337
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r12 + 8], rax
	mov	rdi, r13
	mov	rsi, r15
	call	call_freefun
.label_337:
	mov	qword ptr [r13 + 0x10], rbx
	add	r14, rbx
	mov	qword ptr [r13 + 0x18], r14
	and	byte ptr [r13 + 0x50], 0xfd
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_336:
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405300

	.globl call_chunkfun
	.type call_chunkfun, @function
call_chunkfun:
	mov	rax, rdi
	test	byte ptr [rax + 0x50], 1
	jne	.label_338
	mov	rdi, rsi
	jmp	qword ptr [rax + 0x38]
.label_338:
	mov	rcx, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rax + 0x48]
	jmp	rcx
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405320

	.globl call_freefun
	.type call_freefun, @function
call_freefun:
	mov	rax, rdi
	test	byte ptr [rax + 0x50], 1
	jne	.label_339
	mov	rdi, rsi
	jmp	qword ptr [rax + 0x40]
.label_339:
	mov	rcx, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rax + 0x48]
	jmp	rcx
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405340

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	mov	rcx, qword ptr [rdi + 8]
	jmp	.label_340
	nop	word ptr cs:[rax + rax]
.label_343:
	mov	rcx, qword ptr [rcx + 8]
.label_340:
	test	rcx, rcx
	je	.label_341
	cmp	rcx, rsi
	jae	.label_343
	mov	eax, 1
	cmp	qword ptr [rcx], rsi
	jb	.label_343
	jmp	.label_342
.label_341:
	xor	eax, eax
.label_342:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405370

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 8]
	test	rsi, rsi
	je	.label_344
	nop	word ptr cs:[rax + rax]
.label_348:
	cmp	rsi, r14
	jae	.label_345
	cmp	qword ptr [rsi], r14
	jae	.label_347
.label_345:
	mov	rbx, qword ptr [rsi + 8]
	mov	rdi, r15
	call	call_freefun
	or	byte ptr [r15 + 0x50], 2
	test	rbx, rbx
	mov	rsi, rbx
	jne	.label_348
.label_344:
	test	r14, r14
	je	.label_346
	call	abort
.label_347:
	mov	qword ptr [r15 + 0x18], r14
	mov	qword ptr [r15 + 0x10], r14
	mov	rax, qword ptr [rsi]
	mov	qword ptr [r15 + 0x20], rax
	mov	qword ptr [r15 + 8], rsi
.label_346:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053e0

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rcx, qword ptr [rdi + 8]
	xor	eax, eax
	jmp	.label_349
	nop	dword ptr [rax + rax]
.label_350:
	sub	rax, rcx
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
.label_349:
	test	rcx, rcx
	jne	.label_350
	ret	
	.section	.text
	.align	32
	#Procedure 0x405400

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405440
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_351
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_351
.label_352:
	ret	
.label_351:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_352
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405470
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_353
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_353:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405490
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054a0
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
	#Procedure 0x4054b0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_354
.label_355:
	ret	
.label_354:
	cmp	edi, 0x7f
	je	.label_355
	xor	eax, eax
	jmp	.label_355
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054d0
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
	#Procedure 0x4054e0
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
	#Procedure 0x4054f0
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
	#Procedure 0x405500
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
	#Procedure 0x405510
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_356
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_356
.label_357:
	ret	
.label_356:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_357
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405540
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_358
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_358:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405560

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
	#Procedure 0x405570
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_359
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_359:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405590

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
	#Procedure 0x4055a0
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
	#Procedure 0x4055b0

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
	je	.label_361
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_360
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_360
.label_361:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_360
	test	cl, cl
	jne	.label_360
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_360:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405620

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_363
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_364
	cmp	byte ptr [rax + 1], 0
	je	.label_362
.label_364:
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_363
.label_362:
	xor	ebx, ebx
.label_363:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x405660

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
	je	.label_365
	mov	rax, rcx
.label_365:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x405690

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